#! /bin/env python3
# vim: cursorline tabstop=8 expandtab shiftwidth=4 softtabstop=4 ai

import argparse
from collections import OrderedDict
from collections import Counter
import os.path
import sys
import re
import json

FD_REGEXP = '^ *FD *([^ \r\n]*)'
FD_COMMENT = '^ *\*\(\( *XFD *COMMENT *(.*)\)\) *'
FD_XFD_NAME = '^ *\*\(\( *XFD *NAME *= *([^ ]*) *\)\) *'
FD_END = '.*\. *$'
# parse une ligne de déclaration de champ
# LEVEL : le niveau de la variable, permet de détecter les groupes
# NAME : le nom du champ
# TYPE : le PIC et le REDEFINES
# SIGN : pour les valeurs décimales, la déclaration du séparateur
# OCCURS : le nombre de répétition
# Seuls LEVEL et NAME sont obligatoires ; les autres blocs sont facultatifs
FD_GROUP = '^ *(?P<LEVEL>[0-9]{2}) *(?P<NAME>[^ \r\n.]*)(?: *(?P<TYPE>(PIC|REDEFINES) +[^ \r\n.]*)?(?: *(?P<SIGN>SIGN [^\r\n.]* CHARACTER) *)?(?: *OCCURS +(?P<OCCURS>[0-9]*) +TIMES *)?\\.?)? *$'
# parse les déclarations de clés du fichier .sl
SL_RECORD_KEY = '(?P<ALTERNATE>ALTERNATE)? *RECORD +KEY +IS +(?P<KEY_NAME>[^ \r\n.]*)( *= *(?P<FIELDS>((?! WITH )(?! ALTERNATE )[^.])*))?(?P<DUPLICATES> WITH *(NO|) *DUPLICATES)?'

TYPES = {
        'Integer': ['^9{1,5}$' , '^9\([1-5]\)$'],
        'Long': ['^9{6,12}$', '^9\((?:6|7|8|9|10|11|12|13|14|15|16|17|18)\)$'],
        'String': ['^X+$', '^X\([0-9]{1,4}\)$'],
        # le S est conditionnel, puis
        # la partie entière : 9(4) ou 9999
        # puis V
        # puis la partie décimale 9(3) ou 999
        'BigDecimal': ['^S?(9\([0-9]{1,2}\)|9{1,9})V(9\([1-5]\)|9{1,5})$']
}

class Field:
    def __init__(self):
        # nom: COL_FIC, exemple COD-ART
        self.name = None
        # niveau cobol, principalement utilisé pour détecter les groupes
        self.level = None
        # parent du champ (pour gérer les groupes)
        self.parent = None
        # type cobol (sans le SIGN)
        self.pic = None
        # sign le cas échéant
        self.sign = None
        # indique s'il s'agit d'une redéfinition
        self.redefines = False
        # commentaire xfd
        self.comment = None
        # nom xfd, utilisé car plus explicites que les noms Cobol
        self.xfd_name = None
        # réciproque de la relation parent
        self.children = []
        # type java à utiliser
        self.java_type = None
        # occurs : utiliser getOccurs pour avoir le occurs effectif
        # (pour le cas des champs à l'intérieur d'un groupe avec occurs)
        self.occurs = None
        # pour les BigDecimal
        self.precision = None
        self.scale = None
        # pour les date / les attributs temporels
        self.temporal = None
        self.ignore = False
        # si champ de clé, pointe vers les champs
        # constituant la clé
        self.key_fields = []
        # si champ de clé, true
        self.key = False
        # si champ de clé issu de sl et non défini dans fd
        self.sl_key = False
        # les clés auxquelles appartient le champ
        self.parent_keys = []
        # si champ de clé, true si duplicates autorisé, false sinon
        self.duplicates = None
        # si record key, true
        self.record_key = False

    def __repr__(self):
        return '{}'.format(self.name)

    def getJavaName(self, index):
        if self.xfd_name:
            return get_name_indexed(self.xfd_name.lower().replace('-', '_'), index)
        else:
            return get_name_indexed(self.getJavaConstant().lower().replace('-', '_'), index)

    def getJavaType(self):
        return self.java_type

    def getSetterName(self, index):
        return 'set_' + self.getJavaName(index)

    def getGetterName(self, index):
        return 'get_' + self.getJavaName(index)

    def getJavaConstant(self):
        return self.name.replace('-', '_')

    def getJavaMethodPrefix(self):
        lowerType = self.java_type[0].lower() + self.java_type[1:]
        return lowerType

    def getGetFieldValue(self, index=1):
        if self.getOccurs():
            return '{} + " ({})"'.format(self.getJavaConstant(), index)
        else:
            return self.getJavaConstant()

    def isDbField(self):
        # les redefines sont ignorés SAUF si le champ redéfini est ignoré
        # les champs avec des enfants sont ignorés, car ce sont les enfants qui
        # sont traités
        return not self.sl_key and not self.isIgnore() and not is_redefines(self) and not self.children

    def getOccurs(self):
        """Détermination du occurs sur l'élément ou sur le groupe parent"""
        if self.occurs:
            return self.occurs
        else:
            parent = self.parent
            if parent:
                return parent.getOccurs()

    def isIgnore(self):
        """Détermination du occurs sur l'élément ou sur le groupe parent"""
        if self.ignore:
            return self.ignore
        else:
            parent = self.parent
            if parent:
                return parent.isIgnore()


def list_key_fields_from(field, fields):
    """détermine la liste des champs qui constitue une clé ; on cherche les champs
    de base de données non ignorés, dans l'ordre de déclaration"""

    key_fields = None
    # Le champ est un champ de base
    if field.isDbField():
        key_fields = [field]
    # Le champ est ignoré, on essaie les redéfinitions
    elif field.isIgnore():
        redefines = list([i for i in fields if i.redefines == field])
        for redefinition in redefines:
            key_fields = list_key_fields_from(redefinition, fields)
            if key_fields:
                break
    else:
        key_fields = []
        # Sinon on cherche dans les enfants
        for f in field.children:
            if not f.redefines:
                key_fields.extend(list_key_fields_from(f, fields))
    if not key_fields:
        raise Exception("Le champ {} n'a pas pu être décomposé en champs BDD".format(field.name))
    else:
        return key_fields


def map_big_decimal(field, pic, match):
    partie_entiere = match.group(1)
    partie_decimale = match.group(2)
    if '(' in partie_entiere:
        partie_entiere_l = int(re.match('.*\(([0-9]*)\).*', partie_entiere).group(1))
    else:
        partie_entiere_l = len(partie_entiere)
    if '(' in partie_decimale:
        partie_decimale_l = int(re.match('.*\(([0-9]*)\).*', partie_decimale).group(1))
    else:
        partie_decimale_l = len(partie_decimale)
    field.scale = partie_decimale_l
    field.precision = partie_decimale_l + partie_entiere_l


def map_java_type(field, pic):
    for _type, regexpes in TYPES.items():
        for regexp in regexpes:
            match = re.match(regexp, pic)
            if match:
                field.java_type = _type
                if _type == 'BigDecimal':
                    map_big_decimal(field, pic, match)
                return
    raise Exception('Pas de type Java pour {} - {}'.format(field.name, pic))


def check_keys(fields):
    key_failures = []
    for field in fields:
        if field.key:
            for subfield in field.key_fields:        
                if not subfield.isDbField():
                    key_failures.append((field, subfield))
    for couple in key_failures:
        print("{} est composé d'un champ non BDD {}".format(couple[0].name, couple[1].name))
    if key_failures:
        raise Exception("Une ou plusieurs clés ciblant un champ non BDD")


def check_sign(fields):
    sign_failures = []
    for field in fields:
        if field.isDbField():
            if field.sign and not 'S' in field.pic:
                sign_failures.append(field)
    for field in sign_failures:
        print("{} de PIC <{}> déclare un SIGN <{}>".format(field.name, field.pic, field.sign))
    if sign_failures:
        raise Exception("Un ou plusieurs champs avec un déclaration SIGN invalide")


def check_duplicates(fields):
    db_names = []
    for field in fields:
        if field.isDbField():
            db_names.append(field.getJavaName(None))
    duplicates = dict(filter(lambda a: a[1]>1, Counter(db_names).items()))
    if duplicates:
        print(duplicates)
        raise Exception("Un ou plusieurs noms de champs dupliqués")


def check_warns(fields):
    for field in fields:
        date_warn = False
        boolean_warn = False
        if field.isDbField():
            if field.java_type != 'Date':
                if field.xfd_name and 'date' in field.getJavaName(None):
                    date_warn = True
                if field.comment and 'date' in field.comment.lower():
                    date_warn = True
            if field.java_type != 'Boolean':
               if field.pic == '9' and field.comment and '1=oui' in field.comment.lower():
                    boolean_warn = True
            if date_warn:
                print("{}: ce champ pourrait être une date: {} / {} / {}".format(field.name, field.getJavaName(None), field.comment, field.pic))
            if boolean_warn:
                print("{}: ce champ pourrait être un booléen: {}".format(field.name, field.comment))


def check_redefines(fields):
    redefines_fields = list(filter(lambda i: i.redefines, fields))
    redefines_fields_names = list([i.redefines for i in redefines_fields])
    redefined_fields = list(filter(lambda i: i in redefines_fields_names, fields))
    for f in redefines_fields:
        redefined_field = f.redefines
        print('** Ce champ est redéfini: ')
        print_field(f.redefines, print_children=True)
        print('-- redéfini par: ')
        print_field(f, print_children=True)
        print()


def print_field(field, print_children=False):
    print('{}\t{}{}{}{}{}{}{}{}{}'.format(
        field,
        '<type: {}>'.format(field.pic) if field.pic else '<group>' if not field.redefines else '<redefines: {}>'.format(field.redefines),
        ' <java: {}>'.format(field.java_type) if field.java_type and field.pic else '',
        ' <occurs: {}>'.format(field.getOccurs()) if field.getOccurs() and field.getOccurs() else '',
        ' <parent: {}>'.format(field.parent.name) if field.parent else '',
        ' <ignore: {}>'.format(field.isIgnore()),
        ' <sign: {}>'.format(field.sign),
        ' <key: {}>'.format(", ".join([f.name for f in field.key_fields])) if field.key else '',
        ' <in key: {}>'.format(", ".join([f.name for f in field.parent_keys])) if field.parent_keys else '',
        '\n\t\t<xfd: {} - {}>'.format(field.xfd_name, field.comment) if field.xfd_name else ''
    ))
    if print_children and field.children:
        for f in field.children:
            print_field(f, print_children=print_children)


def parse_sl(sl_lines, debug_sl_keys):
    # séparateur nouvelle ligne remplacé par des espaces
    # sl_lines : liste de lignes terminées par un retour à la ligne
    # i.strip() : on enlève les espaces / retours à la ligne à chaque ligne
    # " ".join(...) : on concatène avec un espace
    declarations = re.finditer(SL_RECORD_KEY, " ".join([i.strip() for i in sl_lines]))
    keys = {}
    for match in declarations:
        d = match.groupdict()
        keys[d["KEY_NAME"]] = {
            "name": d["KEY_NAME"],
            "record_key": False if d["ALTERNATE"] in d else True,
            "fields": list([i.strip() for i in d["FIELDS"].split(",")] if d["FIELDS"] else []),
            "duplicates": True if (d["DUPLICATES"] and " NO " not in d["DUPLICATES"]) else False,
        }
    if debug_sl_keys:
        import pprint
        pprint.pprint(keys)
    return keys


def parse(args, name, fd_lines, sl_lines, overrides):
    g_fd = None
    g_fields = []
    g_parents = []
    fdfound = False
    fdend = False
    cur_comment = None
    cur_xfd_name = None
    fieldlines = []
    # buffer pour concaténer les lignes
    currline = ''
    # cette boucle regroupe les lignes de déclaration
    # d'un champ en se basant sur le point dans la liste
    # fieldlines
    # les commentaires restent indépendants (un item par
    # ligne de commentaire dans fieldlines)
    for line in fd_lines:
        # on ignore les lignes sans contenu
        if len(line) <= 6 or not line.strip():
            continue
        # on ajoute la ligne au buffer courant
        currline = currline + ' ' + line.strip()
        # si la ligne est une ligne de commentaire ou une ligne avec
        # un point, on l'ajoute à fieldlines et on vide le buffer
        if line[6] == '*' or re.match('.*\. *$', line):
            fieldlines.append(currline)
            currline = ''

    # parsing des informations de clés
    keys = parse_sl(sl_lines, args.debug_parse)

    # parsing des champs
    for line in fieldlines:
        if re.match(FD_COMMENT, line):
            cur_comment = re.match(FD_COMMENT, line).group(1)
        if re.match(FD_XFD_NAME, line):
            cur_xfd_name = re.match(FD_XFD_NAME, line).group(1)
        if not fdfound and re.match(FD_REGEXP, line):
            g_fd = re.match(FD_REGEXP, line).group(1)
            fdfound = True
            continue
        if not fdfound:
            continue
        if not fdend and re.match(FD_END, line):
            fdend = True
            continue
        if not fdend:
            continue
        if re.match(FD_GROUP, line):
            match = re.match(FD_GROUP, line)
            # on ignore ENR-*
            if '01' == match.group('LEVEL'):
                continue
            # on ignore les filler
            if 'FILLER' == match.group('NAME').upper():
                continue
            field = Field()
            field.name = match.group('NAME')
            field.level = match.group('LEVEL')
            field.comment = cur_comment
            field.xfd_name = cur_xfd_name
            # les valeurs ne peuvent être utilisées qu'une seule fois
            # et certains champs ne définissent pas de valeur
            cur_comment = None
            cur_xfd_name = None
            type_pic = match.group('TYPE').strip() if match.group('TYPE') else None
            if match.group('SIGN'):
                field.sign = match.group('SIGN').strip()
            if match.group('OCCURS'):
                field.occurs = int(match.group('OCCURS'))
            if type_pic:
                if 'REDEFINES' in type_pic.upper():
                    redefined_field_name = re.match('REDEFINES ([^ \r\n]*)', type_pic.upper()).group(1)
                    field_dict = dict([[i.name, i] for i in g_fields])
                    field.redefines = field_dict[redefined_field_name]
                elif 'PIC' in type_pic.upper():
                    field.pic = match.group('TYPE').strip()
                    field.pic = re.sub(' *PIC *', '', field.pic).strip()
                    map_java_type(field, field.pic)
            if g_parents and field.level > g_parents[-1].level:
                # si le champ est de niveau supérieur au parent enregistré
                # c'est un champ enfant -> on renseigne son champ parent
                if len(g_parents) != 0:
                    field.parent = g_parents[-1]
                    g_parents[-1].children.append(field)
            else:
                # si le champ est de niveau strictement inférieur,
                # on dépile les parents
                while g_parents and field.level < g_parents[-1].level:
                   g_parents.pop()
                if g_parents and field.level == g_parents[-1].level:
                    # le champ est de niveau équivalent; il est dans le même parent
                    field.parent = g_parents[-1].parent
                    if field.parent:
                        field.parent.children.append(field)
            g_parents.append(field)
            g_fields.append(field)

    # on ajoute les déclarations de clé qui sont uniquement
    # dans le fichier sl
    for pure_key in keys.values():
        if pure_key["name"] not in [i.name for i in g_fields]:
            f = Field()
            f.name = pure_key["name"]
            f.sl_key = True
            g_fields.append(f)

    # surcharge des valeurs
    if name in overrides:
        for field in g_fields:
            if field.name in overrides[name]:
                for fname, value in overrides[name][field.name].items():
                    setattr(field, fname, value)

    # ajout des informations de clé issues du fichier sl
    for field in g_fields:
        if field.name in keys:
            key = keys[field.name]
            field.key = True
            field.record_key = key["record_key"]
            field.duplicates = key["duplicates"]
            # on met dans key_fields les champs ciblés par la clé
            key_fields = []
            if key["fields"]:
                # f_name: nom du champ de clé
                for f_name in key["fields"]:
                    try:
                        subfield = [i for i in g_fields if i.name == f_name][0]
                    except IndexError:
                        raise Exception("Champ {} non trouvé pour la clé {}".format(f_name, key["name"]))
                    key_fields.extend(list_key_fields_from(subfield, g_fields))
            else:
                # si les champs ne sont pas présents dans le sl, alors
                # le champ est lui-même la clé, ou ses enfants
                key_fields = list_key_fields_from(field, g_fields)
            for f in key_fields:
                f.parent_keys.append(field)
                field.key_fields = key_fields
    check_keys(g_fields)
    check_duplicates(g_fields)
    # Si on a un SIGN sur un PIC 9... Java ne définit pas correctement
    # la taille de ligne
    check_sign(g_fields)
    if args.advice:
        check_warns(g_fields)
    if args.redefines:
        check_redefines(g_fields)
    if args.debug_parse:
        print("All fields: ")
        for field in g_fields:
            print_field(field)
        print("")
        print("Keys: ")
        for field in g_fields:
            if field.key:
                print("{} : {}".format(field.name, ", ".join(["{} ({})".format(i.name, i.getJavaName(None)) for i in field.key_fields])))
    return g_fields


def is_redefines(field):
    if field.redefines and field.redefines.isIgnore():
        return False
    if field.redefines:
        return True
    while field.parent:
        if is_redefines(field.parent):
            return True
        field = field.parent
    return False


def gen_attribute(field, imports, index):
    """Ecriture d'un attribut d'entité. Si index != None, on est en train de traiter
    un champ avec un Occurs -> on génère le index-nième attribut"""
    # la chaine qui contient la déclaration de champ
    declaration = ""
    # détermination du type, traitement des cas BigDecimal et Date
    column_attributes = OrderedDict()
    # Pour BigDecimal, on détermine la précision et le scale
    if field.java_type == 'BigDecimal':
        imports.add('java.math.BigDecimal')
        column_attributes['precision'] = field.precision
        column_attributes['scale'] = field.scale
    # Pour les dates, on détermine la granularité
    if field.java_type == 'Date':
        declaration += "\t@Temporal({})\n".format(field.temporal)
        imports.add("java.util.Date")
        imports.add("javax.persistence.Temporal")
        imports.add("javax.persistence.TemporalType")
    # écriture des paramètres de l'annotation @Column :cle1 = valeur1, cle2 = valeur2, ...
    column_str = ', '.join(['{} = {}'.format(name, value) for name, value in column_attributes.items()])
    if column_str:
        column_str = '(' + column_str + ')'
    # écriture de l'annotation et de ses paramètres
    declaration += "\t@Column{}\n".format(column_str)
    # écriture du champ
    declaration += "\tprivate {} {};\n".format(
        field.getJavaType(),
        field.getJavaName(index)
    )
    return declaration


def gen_getter(field, index):
    return '\tpublic {} {}() {{\n\t\treturn {};\n\t}}\n'.format(
        field.getJavaType(),
        field.getGetterName(index),
        field.getJavaName(index)
    )


def gen_setter(field, index):
    return '\tpublic void {}({} {}) {{\n\t\tthis.{} = {};\n\t}}\n'.format(
        field.getSetterName(index),
        field.getJavaType(),
        field.getJavaName(index),
        field.getJavaName(index),
        field.getJavaName(index)
    )


def get_name_indexed(name, index):
    if index != None:
        return name + "_" + str(index + 1)
    else:
        return name


def extractEntityName(entity):
    return entity.split(".")[-1]


def gen_handler(fields, override):
    # nom de l'entité sans le nom de package
    entityName = extractEntityName(override["entity"])
    # nom de la classe handler (complet)
    className = "{}Handler".format(entityName)

    # imports
    imports = set()
    imports.add("java.io.IOException")
    imports.add("java.util.List")
    imports.add("com.google.common.collect.ImmutableList")
    imports.add("com.google.common.collect.ImmutableMap")
    imports.add(override["entity"])
    imports.add("fr.mistral.dataserver.server.IDataHandler")
    imports.add("net.sf.JRecord.Details.AbstractLine")

    # déclaration de classe
    buf = ""
    buf += "public class {} extends AbstractDataHandler<{}> implements IDataHandler {{\n".format(className, entityName)
    buf += "\n"
    keys = [i for i in fields if i.key and not i.isDbField()]

    # constantes des clés
    for key in keys:
        buf += '\t/**\n'
        buf += '\t * cobol: {}\n'.format(", ".join([i.name for i in key.key_fields]))
        buf += '\t * db:    {}\n'.format(", ".join([i.getJavaName(None) for i in key.key_fields]))
        buf += '\t */\n'
        buf += '\tprivate static final String {} = "{}";\n'.format(key.getJavaConstant(), key.name)

    buf += "\n"

    # constantes des champs
    for field in fields:
        if field.isDbField():
            buf += '\t/** {}{} (type cobol: {}) */\n'.format(
                field.getJavaName(None),
                ' - {}'.format(field.comment.strip()) if field.comment else '',
                field.pic)
            buf += '\tprivate static final String {} = "{}";\n'.format(
                field.getJavaConstant(),
                field.name
            )
    buf += "\n"

    # constructeur (déclaration des relations clés et champs)
    buf += '\tpublic {}() throws IOException {{\n'.format(className)
    buf += '\t\tsuper("{}", "{}", {}.class,\n'.format(override["fd"], override["name"], override["entity"])
    # record key
    buf += '\t\t\t\t"{}",\n'.format([i.name for i in fields if i.record_key][0])
    # liste des clés
    buf += '\t\t\t\tImmutableMap.<String, List<String>>builder()\n'
    for key in [i for i in fields if i.key]:
        buf += '\t\t\t\t\t.put({}, ImmutableList.<String>builder().add({}).build())\n'.format(key.getJavaConstant(), ", ".join([i.getJavaConstant() for i in key.key_fields]))
    buf += '\t\t\t\t\t.build(),\n'
    # liste des champs de clé
    buf += '\t\t\t\tImmutableMap.<String, IEntityFieldMapper<{}>>builder()\n'.format(entityName)
    for field in [i for i in fields if i.parent_keys]:
        buf += '\t\t\t\t\t.put({}, new EntityFieldMapper<>({}, "{}", {}::{}))\n'.format(field.getJavaConstant(), field.getJavaConstant(), field.getJavaName(None), entityName, field.getGetterName(None))
    buf += '\t\t\t\t\t.build());\n'
    # fin du constructeur
    buf += '\t}\n'
    buf += '\n'

    # déclaration aliases
    buf += '\t@Override\n'
    buf += '\tpublic String getName() {\n'
    buf += '\t\treturn "{}";\n'.format(override["name"])
    buf += '\t}\n'
    buf += '\n'
    buf += '\t@Override\n'
    buf += '\tpublic List<String> getAliases() {\n'
    if "aliases" in override:
        buf += '\t\treturn ImmutableList.of({});\n'.format(", ".join(['"{}"'.format(i) for i in override["aliases"]]))
    else:
        imports.add("java.util.Collections")
        buf += '\t\treturn Collections.emptyList();\n'
    buf += '\t}\n'
    buf += '\n'

    # déclaration mapper cobolToJava
    buf += '\t@Override\n'
    buf += '\tprotected void mapCobolToJava(AbstractLine line, {} entity) {{\n'.format(entityName)
    buf += gen_handler_getters(fields, indent=True)
    buf += '\t}\n'
    buf += '\n'

    # déclaration mapper JavaToCobol
    buf += '\t@Override\n'
    buf += '\tprotected void mapJavaToCobol({} entity, AbstractLine line) {{\n'.format(entityName)
    buf += gen_handler_setters(fields, indent=True)
    buf += '\t}\n'
    buf += '\n'

    buf += '}\n'

    # on préfixe par la déclaration de package et les imports
    ordered_imports = list(imports)
    ordered_imports.sort()
    buf = "\n".join(map(lambda a: "import {};".format(a), ordered_imports)) + "\n\n" + buf
    buf = "package {};\n\n".format(".".join(override["handler"].split(".")[0:-1])) + buf
    return buf


def gen_entity(fields, override):
    entityName = extractEntityName(override["entity"])
    # définition des champs pour le fichier <Entity>
    imports = set()
    imports.add("javax.persistence.Column")
    imports.add("javax.persistence.Entity")
    imports.add("javax.persistence.GeneratedValue")
    imports.add("javax.persistence.Id")
    imports.add("javax.persistence.Index")
    imports.add("javax.persistence.Table")
    buf = ""
    buf += "@Entity\n"
    buf += "@Table(\nindexes={\n"
    indexes = []
    for key in [i for i in fields if i.key]:
        indexes.append('\t\t@Index(name="idx_{}_{}", columnList="{}", unique={})'.format(
            entityName.lower(),
            key.getJavaConstant().lower(),
            ",".join(f.getJavaName(None) for f in key.key_fields),
            "true" if not key.duplicates else "false"
        ))
    buf += ",\n".join(indexes)
    buf += "\n})\n"
    buf += "public class {} implements IDataServerEntity {{\n".format(entityName)
    buf += "\n"
    buf += "\t@Id\n"
    buf += "\t@GeneratedValue\n"
    buf += "\tprivate Long recordNumber;\n"
    buf += "\n"
    for field in fields:
        if field.isDbField():
            if field.getOccurs():
                for index in range(0, field.getOccurs()):
                    buf += gen_attribute(field, imports, index)
            else:
                buf += gen_attribute(field, imports, None)
    # getter des champs
    for field in fields:
        if field.isDbField():
            if field.getOccurs():
                for index in range(0, field.getOccurs()):
                    buf += gen_getter(field, index)
            else:
                buf += gen_getter(field, None)
    # setter des champs
    for field in fields:
        if field.isDbField():
            if field.getOccurs():
                for index in range(0, field.getOccurs()):
                    buf += gen_setter(field, index)
            else:
                buf += gen_setter(field, None)
    buf += "\n"
    # getter/setter pour le champ recordNumber
    buf += "\t@Override\n\tpublic Long getRecordNumber() {\n\t\treturn recordNumber;\n\t}\n"
    buf += "\tpublic void setRecordNumber(Long recordNumber) {\n\t\tthis.recordNumber = recordNumber;\n\t}\n"
    # fermeture du bloc class
    buf += "}\n"

    # on préfixe par la déclaration de package et les imports
    ordered_imports = list(imports)
    ordered_imports.sort()
    buf = "\n".join(map(lambda a: "import {};".format(a), ordered_imports)) + "\n\n" + buf
    buf = "package {};\n\n".format(".".join(override["entity"].split(".")[0:-1])) + buf
    return buf


def gen_handler_getters(fields, indent=False):
    indentation = '\t\t' if indent else ''
    getters = ""
    for field in fields:
        if field.isDbField():
            indexes = [None] if not field.getOccurs() else range(0, field.getOccurs())
            for index in indexes:
                getters += '{}{}CobolToJava(line.getFieldValue({}), entity::{});\n'.format(
                    indentation,
                    field.getJavaMethodPrefix(),
                    field.getGetFieldValue(index),
                    field.getSetterName(index)
                )
    return getters


def gen_handler_setters(fields, indent=False):
    indentation = '\t\t' if indent else ''
    setters = ""
    for field in fields:
        if field.isDbField():
            indexes = [None] if not field.getOccurs() else range(0, field.getOccurs())
            for index in indexes:
                setters += '{}{}JavaToCobol(line.getFieldValue({}), entity::{});\n'.format(
                    indentation,
                    field.getJavaMethodPrefix(),
                    field.getGetFieldValue(index),
                    field.getGetterName(index)
                )
    return setters


def rewrite_file(src_path, java_name, content):
    file_name = java_name.replace('.', '/') + '.java'
    full_path = os.path.join(src_path, file_name)
    if not os.path.exists(os.path.dirname(full_path)):
        os.makedirs(os.path.dirname(full_path))
    with open(full_path, 'w', encoding='utf-8') as target:
        target.write(content)


def gen_code(args, fields, override, model_src, handler_src):
    if args.entity:
        code = gen_entity(fields, override)
        if args.print_code:
            print(code)
        if args.write_code:
            rewrite_file(model_src, override['entity'], code)
    if args.handler:
        code = gen_handler(fields, override)
        if args.print_code:
            print(code)
        if args.write_code:
            rewrite_file(handler_src, override['handler'], code)


def main():
    parser = argparse.ArgumentParser(description='Génération de code à partir des fichiers fd/sl')
    parser.add_argument('files', metavar='FILES',
            help='la liste des champs à traiter, séparés par une virgule (MXART,MXAGENCE) ; @all pour tous les fichiers listés dans overrides.json')
    parser.add_argument('override', metavar='OVERRIDE', type=argparse.FileType('r'),
            help='path to a override file (json format)')
    parser.add_argument('--debug-parse', action='store_true', default=False, help='debug: affichage du résultat de parsing des fichiers')
    parser.add_argument('--advice', action='store_true', default=False, help='Affichage de conseils (champs booléens, ...)')
    parser.add_argument('--redefines', action='store_true', default=False, help='Affichage des redéfinitions de champs')
    parser.add_argument('--entity', action='store_true', default=False, help='Génération de l\'entité')
    parser.add_argument('--handler', action='store_true', default=False, help='Génération du handler')
    parser.add_argument('--print-code', action='store_true', default=False, help='Affichage du code sur la console')
    parser.add_argument('--write-code', action='store_true', default=False, help='Modification des fichiers')
    model_src = "../../prototypage-model/src/main/java"
    handler_src = "../../prototypage-data-server/src/main/java"
    args = parser.parse_args()
    overrides = json.load(args.override)
    files = None
    if args.files == '@all':
        files = overrides.keys()
    else:
        files = args.files.split(",")
    for name in files:
        print(">> Fichier {}".format(name))
        override = overrides[name]
        override["name"] = name
        entityName = extractEntityName(override["entity"])
        # détermination automatique de configuration
        if "fd" not in override:
            override["fd"] = "mx/fd/{}.fd".format(name)
        if "sl" not in override:
            override["sl"] = "mx/fd/{}.sl".format(name)
        if "handler" not in override:
            override["handler"] = "fr.mistral.dataserver.handlers.{}Handler".format(entityName)
        if "aliases" not in override:
            override["aliases"] = []
            for i in range(2,9):
                basename = os.path.basename(override["fd"])
                dirname = os.path.dirname(override["fd"])
                basename = basename.split(".")
                basename[0] = basename[0] + str(i)
                if os.path.exists(os.path.join(dirname, '.'.join(basename))):
                        override["aliases"].append(basename[0])
        try:
            with open(override['fd'], 'r', encoding='iso-8859-15') as fd, open(override['sl'], 'r', encoding='iso-8859-15') as sl:
                fields = parse(args, name, fd.readlines(), sl.readlines(), overrides)
                gen_code(args, fields, override, model_src, handler_src)
            print("<< Fichier {} terminé".format(name))
        except Exception as e:
            raise Exception('Erreur de parsing de {}: {}'.format(name, str(e))) from e

if __name__ == '__main__':
    main()

