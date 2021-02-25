      * Assignation d'un nom de fichier temporaire.
      * XMLOut-Id doit contenir l'identifiant de base du fichier.
       XMLOut-Assign-Tmp.
           MOVE SPACE TO XMLOut-Assign
           MOVE FUNCTION CURRENT-DATE TO DATHEU-SYS-M
           STRING XMLOut-DIR DELIMITED BY " "
                  "/ft/" DELIMITED BY SIZE
                  XMLOut-Id DELIMITED BY " "
                  IDE-PALM DELIMITED BY " "                  
                  DATHEU-SYS-M DELIMITED BY SIZE
                  ".xml" DELIMITED BY SIZE INTO XMLOut-Assign
           .

      * Création et ouverture du fichier en sortie
       XMLOut-Open.
           CLOSE XMLOut-File
           DELETE FILE XMLOut-File
           MOVE SPACES TO XMLOut-Record XMLOut-ItemToAdd
           MOVE 0 TO XMLOut-Count
           OPEN OUTPUT XMLOut-File
           PERFORM STAT
           MOVE SPACES TO XMLOut-ItemToAdd
           IF XMLOut-encoding = SPACES
              MOVE "<?xml version=""1.0"" encoding=""ISO-8859-15""?>"
              TO XMLOut-ItemToAdd
           ELSE
              STRING "<?xml version=""1.0"" encoding="""
                     XMLOut-encoding 
                     """?>" DELIMITED BY "   "
                     INTO XMLOut-ItemToAdd 
           END-IF
           STRING XMLOut-ItemToAdd DELIMITED BY "  "
                  X"0D0A"
                  INTO XMLOut-ItemToAdd  | pb traitement xml sous Unix par SED sinon
           PERFORM XMLOut-Append-Tag
           MOVE "<mistral>" TO XMLOut-ItemToAdd
           STRING XMLOut-ItemToAdd DELIMITED BY "  "
                  X"0D0A"
            INTO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           MOVE 0 TO WCLOSE-XMLOut-File
           IF XMLOut-SsCoul NOT = 1 
              PERFORM Xml-Genere-Couleurs-de-Base
           END-IF
           .

      * Création et ouverture du fichier en sortie
       XMLOut-Open-Light.
           MOVE SPACES TO XMLOut-Record XMLOut-ItemToAdd
           MOVE 0 TO XMLOut-Count
           OPEN OUTPUT XMLOut-File
           MOVE SPACES TO XMLOut-ItemToAdd
           IF XMLOut-encoding = SPACES
              MOVE "<?xml version=""1.0"" encoding=""ISO-8859-15""?>"
              TO XMLOut-ItemToAdd
           ELSE
              STRING "<?xml version=""1.0"" encoding="""
                     XMLOut-encoding 
                     """?>" DELIMITED BY "   "
                     INTO XMLOut-ItemToAdd 
           END-IF
           PERFORM XMLOut-Append-Tag
           MOVE 0 TO WCLOSE-XMLOut-File
           .
020617* Création et ouverture du fichier en sortie en UTF-8
       XMLOut-Open-Light-UTF8.
           MOVE SPACES TO XMLOut-Record XMLOut-ItemToAdd
           MOVE 0 TO XMLOut-Count
           OPEN OUTPUT XMLOut-File
           MOVE SPACES TO XMLOut-ItemToAdd
           IF XMLOut-encoding = SPACES
              MOVE "<?xml version=""1.0"" encoding=""UTF-8""?>"
              TO XMLOut-ItemToAdd
           ELSE
              STRING "<?xml version=""1.0"" encoding="""
                     XMLOut-encoding 
                     """?>" DELIMITED BY "   "
                     INTO XMLOut-ItemToAdd 
           END-IF
           PERFORM XMLOut-Append-Tag
           MOVE 0 TO WCLOSE-XMLOut-File
           .

      * Recherche le début et la fin des données à ajouter.
       XMLOut-Trim.
           MOVE 1 TO XMLOut-Start
           PERFORM UNTIL (XMLOut-Start > LENGTH OF XMLOut-ItemToAdd) 
                      OR (XMLOut-ItemToAdd(XMLOut-Start:1) NOT = SPACE)
               ADD 1 TO XMLOut-Start
           END-PERFORM
           MOVE ZERO TO XMLOut-I
           INSPECT XMLOut-ItemToAdd TALLYING XMLOut-I
           FOR TRAILING SPACES
           SUBTRACT XMLOut-I FROM LENGTH OF XMLOut-ItemToAdd
           GIVING XMLOut-End
           COMPUTE XMLOut-Length = XMLOut-End - XMLOut-Start + 1
           IF XMLOut-ItemToAdd = SPACES
              MOVE 1    TO XMLOut-Start XMLOut-End
              MOVE ZERO TO XMLOut-Length
           END-IF
           .

      * Ajoute des données, filtrées, à la suite du fichier.
      * Les données sont attendues dans XMLOut-ItemToAdd
       XMLOut-Append-Data.
           PERFORM XMLOut-Trim
      * Attention : le principe de ce filtre est bancale et fonctionne
      * surtout si l'on vise en document HTML en sortie (&lt;, &gt;, 
      * etc... n'ont un sens qu'en HTML)
      * Pour rester purement XML, il faudrait plutôt englober les 
      * données comportant des caractères spéciaux dans des tags PCDATA.
         
           IF XMLOut-Length = 0
              MOVE SPACES TO XMLOut-ItemToAdd
              EXIT PARAGRAPH
           END-IF
           MOVE ZERO TO XMLOut-I
           IF LAN-PALM = "lcz" then
             INSPECT XMLOut-ItemToAdd(XMLOut-Start:XMLOut-length) 
             TALLYING XMLOut-I FOR ALL CLCARON CUCARON
                                       DLCARON DUCARON
                                       ELCARON EUCARON
                                       NLCARON NUCARON
                                       RLCARON RUCARON
                                       SLCARON SUCARON
                                       TLCARON TUCARON
                                       ZLCARON ZUCARON
                                       "<" ">" "€" "&" """"
           else
             INSPECT XMLOut-ItemToAdd(XMLOut-Start:XMLOut-length) 
             TALLYING XMLOut-I FOR ALL "<" ">" "€" "&" """" "¼"
           end-if

           | pas de cryptage
           IF XMLOut-NoScript = 1 OR 2
              MOVE 0 TO XMLOut-I
           END-IF
           |on remplace quand même les < et > sinon fait planter le xml
           IF XMLOut-NoScript = 2
              INSPECT XMLOut-ItemToAdd REPLACING ALL "<" BY "("
              INSPECT XMLOut-ItemToAdd REPLACING ALL ">" BY ")"
              INSPECT XMLOut-ItemToAdd REPLACING ALL "&" BY "+"
           END-IF

           if XMLOut-Length  <= (256 - XMLOut-Count) and XMLOut-I = 0   | si place disponible dans enreg. suffisante et pas de caractères spéciaux: ecriture directe
              ADD 1 TO XMLOut-Count
              MOVE XMLOut-ItemToAdd(XMLOut-Start:XMLOut-length) TO
                   XMLOut-Record(XMLOut-Count:XMLOut-length)
              COMPUTE XMLOut-Count = XMLOut-Count + XMLOut-length - 1
              IF XMLOut-Count = 256 THEN
                 PERFORM XMLOut-Flush
              END-IF
              MOVE SPACES TO XMLOut-ItemToAdd
              EXIT PARAGRAPH
           END-IF

           PERFORM VARYING XMLOut-I FROM XMLOut-Start BY 1              | si place disponible dans enreg. insuffisante: ecriture caractère par caractère
                     UNTIL (XMLOut-I > XMLOut-End)
               IF XMLOut-NoScript = 2
                  MOVE XMLOut-ItemToAdd(XMLOut-I:1)
                         TO XMLOut-Char
                  PERFORM XMLOut-Append-Char
                  EXIT PERFORM CYCLE
               END-IF
               EVALUATE XMLOut-ItemToAdd(XMLOut-I:1)
                   WHEN "<"
                       IF XMLOut-NoScript = 1 
                          MOVE XMLOut-ItemToAdd(XMLOut-I:1)
                            TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                       ELSE
                          MOVE "&lt;" TO XMLOut-Cspe
                          PERFORM XMLOut-Char-Special   
                       END-IF
                   WHEN ">"
                       IF XMLOut-NoScript = 1 
                          MOVE XMLOut-ItemToAdd(XMLOut-I:1)
                            TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                       ELSE
                          MOVE "&gt;" TO XMLOut-Cspe
                          PERFORM XMLOut-Char-Special   
                       END-IF
                   WHEN CUCARON
                       MOVE "&#x10C;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ   
                   WHEN CLCARON
                       MOVE "&#x10D;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN DUCARON
                       MOVE "&#x10E;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN DLCARON
                       MOVE "&#x10F;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN EUCARON
                       MOVE "&#x11A;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN ELCARON
                       MOVE "&#x11B;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN NUCARON
                       MOVE "&#x147;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN NLCARON
                       MOVE "&#x148;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN RUCARON
                       MOVE "&#x158;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN RLCARON
                       MOVE "&#x159;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN SUCARON
                       MOVE "&#x160;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN SLCARON
                       MOVE "&#x161;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN TUCARON
                       MOVE "&#x164;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN TLCARON
                       MOVE "&#x165;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN ZUCARON
                       MOVE "&#x17D;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
                   WHEN ZLCARON
                       MOVE "&#x17E;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special-LCZ  
      *             WHEN "/"
      *                 MOVE "&#x2044;" TO XMLOut-Cspe
      *                 PERFORM XMLOut-Char-Special
                   WHEN "€"
                       MOVE "&#x20AC;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special   
                   WHEN "&"
                       IF XMLOut-ItemToAdd(XMLOut-I + 1 :1) NOT = "#"
                          MOVE "&amp;" TO XMLOut-Cspe
                          PERFORM XMLOut-Char-Special   
                       ELSE
                          MOVE "&" TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                       END-IF
                   WHEN """"
                       MOVE "&quot;" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special 
                   WHEN "¼"
                       MOVE "1/4" TO XMLOut-Cspe
                       PERFORM XMLOut-Char-Special
                   WHEN OTHER                       
                       MOVE XMLOut-ItemToAdd(XMLOut-I:1)
                         TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
               END-EVALUATE
           END-PERFORM
           MOVE SPACES TO XMLOut-ItemToAdd
           .

       XMLOut-Char-Special.
           PERFORM VARYING XMLOut-ISPE FROM 1 BY 1 
                   UNTIL XMLOut-ISPE > 8 OR
                        XMLOut-CSPE(XMLOut-ISPE:1) = SPACE
              MOVE XMLOut-CSPE(XMLOut-ISPE:1) TO XMLOut-Char
              PERFORM XMLOut-Append-Char
           END-PERFORM.

       XMLOut-Char-Special-LCZ.
           IF LAN-PALM = "lcz" then
               PERFORM XMLOut-Char-Special  
           ELSE
               MOVE XMLOut-ItemToAdd(XMLOut-I:1) TO XMLOut-Char
               PERFORM XMLOut-Append-Char
           END-IF.

      * Ajoute des données, filtrées, à la suite du fichier.
      * Les données sont attendues dans XMLOut-ItemToAdd
      * Spécial pour les zones dont on veut conserver les blancs
      * significatifs
       XMLOut-Append-Data-Blank.
           PERFORM XMLOut-Trim
           PERFORM VARYING XMLOut-I FROM 1 BY 1
                     UNTIL (XMLOut-I > XMLOut-End)
               EVALUATE XMLOut-ItemToAdd(XMLOut-I:1)
                   WHEN "<"
                       MOVE "&" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "l" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "t" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE ";" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                   WHEN ">"
                       MOVE "&" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "g" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "t" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE ";" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                   WHEN " "
                       MOVE "&" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "#" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "1" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "6" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "0" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE ";" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                   WHEN "€"
                       MOVE "&" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "#" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "x" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "2" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "0" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "A" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "C" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE ";" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                   WHEN "&"
                       IF XMLOut-ItemToAdd(XMLOut-I + 1 :1) NOT = "#"
                          MOVE "&" TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                          MOVE "a" TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                          MOVE "m" TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                          MOVE "p" TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                          MOVE ";" TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                       ELSE
                          MOVE "&" TO XMLOut-Char
                          PERFORM XMLOut-Append-Char
                       END-IF
                   WHEN """"
                       MOVE "&" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "q" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "u" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "o" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "t" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE ";" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                   WHEN "¼"
                       MOVE "1" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "/" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
                       MOVE "4" TO XMLOut-Char
                       PERFORM XMLOut-Append-Char    
                   WHEN OTHER                       
                       MOVE XMLOut-ItemToAdd(XMLOut-I:1)
                         TO XMLOut-Char
                       PERFORM XMLOut-Append-Char
               END-EVALUATE
           END-PERFORM
           MOVE SPACES TO XMLOut-ItemToAdd
           .

      * Ajoute un tag XML (non filtré) à la suite du fichier...
      * Le tag complet est attendu dans XMLOut-ItemToAdd
       XMLOut-Append-Tag.
           PERFORM XMLOut-Trim
           if XMLOut-Length  <= (256 - XMLOut-Count)                   | si place disponible dans enreg. suffisante: ecriture directe
              ADD 1 TO XMLOut-Count
  .           MOVE XMLOut-ItemToAdd(XMLOut-Start:XMLOut-length) TO
                   XMLOut-Record(XMLOut-Count:XMLOut-length)
              COMPUTE XMLOut-Count = XMLOut-Count + XMLOut-length - 1
  .           IF XMLOut-Count = 256 THEN
                 PERFORM XMLOut-Flush
              END-IF
           ELSE                                                        | si place disponible dans enreg. insuffisante: ecriture caractère par caractère
              PERFORM VARYING XMLOut-I FROM XMLOut-Start BY 1
                        UNTIL (XMLOut-I > XMLOut-End)
                  MOVE XMLOut-ItemToAdd(XMLOut-I:1) TO XMLOut-Char
                  PERFORM XMLOut-Append-Char
              END-PERFORM
           END-IF
           IF XMLOut-ItemToAdd(1:2) = "</"
160611*         MOVE X"0D0A" TO XMLOut-Char  | seul 0D est ajouté vu qu'on ajoute un seul caractère...
      *         PERFORM XMLOut-Append-Char
160611         
               MOVE X"0D" TO XMLOut-Char 
               PERFORM XMLOut-Append-Char
               MOVE X"0A" TO XMLOut-Char 
               PERFORM XMLOut-Append-Char
160611
           END-IF
           MOVE SPACES TO XMLOut-ItemToAdd
           .

      * Ajoute une séquence <tag>données</tag> à la suite du fichier...
      * L'identifiant du tag est attendu dans XMLOut-TagToAdd
      * Les données sont attendues dans XMLOut-DataToAdd
       XMLOut-Append-TaggedData.
           IF XMLOUT-CodeAttr <> SPACE THEN
              IF XMLOUT-LanAttr <> SPACE THEN
      *          Tag avec attribut CODE NOM et LAN
                 STRING "<" 
                        XMLOut-TagToAdd DELIMITED BY " "
                        ' CODE="'       DELIMITED BY SIZE    
                        XMLOut-CodeAttr DELIMITED BY "  "
                        '" NOM="'       DELIMITED BY SIZE    
                        XMLOut-NomAttr  DELIMITED BY "  "
                        '" LAN="'       DELIMITED BY SIZE    
                        XMLOut-LanAttr  DELIMITED BY "  "
                        '">'            DELIMITED BY SIZE
                   INTO XMLOut-ItemToAdd
                 MOVE SPACE TO XMLOut-Attributs
              ELSE
      *          Tag avec attributs CODE et NOM
                 STRING "<" 
                        XMLOut-TagToAdd DELIMITED BY " "
                        ' CODE="'       DELIMITED BY SIZE    
                        XMLOut-CodeAttr DELIMITED BY "  "
                        '" NOM="'       DELIMITED BY SIZE    
                        XMLOut-NomAttr  DELIMITED BY "  "
                        '">'            DELIMITED BY SIZE
                   INTO XMLOut-ItemToAdd
                 MOVE SPACE TO XMLOut-Attributs
               END-IF
           ELSE
              IF XMLOUT-LanAttr <> SPACE THEN
      *          Tag avec attribut LAN
                 STRING "<" 
                        XMLOut-TagToAdd DELIMITED BY " "
                        ' LAN="'       DELIMITED BY SIZE    
                        XMLOut-LanAttr DELIMITED BY "  "
                        '">'            DELIMITED BY SIZE
                   INTO XMLOut-ItemToAdd
                 MOVE SPACE TO XMLOut-Attributs
              ELSE
                 STRING "<" XMLOut-TagToAdd ">" DELIMITED BY " "
                   INTO XMLOut-ItemToAdd
               END-IF
           END-IF

           PERFORM XMLOut-Append-Tag
           MOVE XMLOut-DataToAdd TO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Data
           MOVE SPACES TO XMLOut-DataToAdd
           STRING "</" XMLOut-TagToAdd ">" DELIMITED BY " "
                                           INTO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           MOVE SPACES TO XMLOut-TagToAdd
           .

      * Ajoute une séquence <tag>données</tag> à la suite du fichier...
      * L'identifiant du tag est attendu dans XMLOut-TagToAdd
      * Les données sont attendues dans XMLOut-DataToAdd
      * Spécial pour les zones où les blancs sont à conserver
       XMLOut-Append-TaggedData-Blank.
           STRING "<" XMLOut-TagToAdd ">" DELIMITED BY " "
                                          INTO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           MOVE XMLOut-DataToAdd TO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Data-Blank
           MOVE SPACES TO XMLOut-DataToAdd
           STRING "</" XMLOut-TagToAdd ">" DELIMITED BY " "
                                           INTO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           MOVE SPACES TO XMLOut-TagToAdd
           .

      * Ouvre une séquence "<tag>" à la suite du fichier
      * L'identifiant du tag est attendu dans XMLOut-TagToAdd
       XMLOut-Open-Tag.
           string "<" XMLOut-TagToAdd ">" delimited by " "
             into XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           move spaces to XMLOut-TagToAdd
           .


      * Ouvre une séquence "<tag>" à la suite du fichier
      * L'identifiant du tag est attendu dans XMLOut-TagToAdd
       XMLOut-Open-BeginTag.
           string "<" XMLOut-TagToAdd delimited by " "
             into XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           move spaces to XMLOut-TagToAdd
           .

      * Fin de l'ouverture d'une séquence ">" à la suite du fichier
       XMLOut-Open-EndTag.
           move ">" to XMLOut-Char
           PERFORM XMLOut-Append-Char
           .

      * Ferme une séquence "</tag>" ou "/>" à la suite du fichier
      * L'identifiant du tag est attendu dans XMLOut-TagToAdd
       XMLOut-Close-Tag.
           if XMLOut-TagToAdd = spaces
             move "/>" to XMLOut-ItemToAdd
           else
             string "</" XMLOut-TagToAdd ">" delimited by " "
               into XMLOut-ItemToAdd
             move spaces to XMLOut-TagToAdd
           end-if
           PERFORM XMLOut-Append-Tag
           .

      * Ajoute un attribut à la suite du fichier. Pour que ça ait un sens, il faut qu'un tag ait été
      * ouvert.
      * att-name="att-value"
      * Le nom de l'attribut est attendu dans XMLOut-TagToAdd
      * La valeur de l'attribut est attendu dans XMLOut-DataToAdd
       XMLOut-Append-Attribute.
           move " " to XMLOut-Char
           perform XMLOut-Append-Char
           string XMLOut-TagToAdd "=""" delimited by "  "
               into XMLOut-ItemToAdd
           perform XMLOut-Append-Tag
           move spaces to XMLOut-TagToAdd
           
030912* si le dernier caractère est un " ou un ' cela pose problème donc on remplace par blanc
           MOVE 0 TO XMLOut-Indice
           INSPECT XMLOut-DataToAdd TALLYING XMLOut-Indice 
                   FOR TRAILING SPACES
           COMPUTE XMLOut-Indice = 990 - XMLOut-Indice
           IF XMLOut-DataToAdd(XMLOut-Indice:1) = """" OR "'" 
              MOVE SPACE TO XMLOut-DataToAdd(XMLOut-Indice:1)
           END-IF
030912
           move XMLOut-DataToAdd to XMLOut-ItemToAdd
           perform XMLOut-Append-Data
           move spaces to XMLOut-DataToAdd
           
           move """" to XMLOut-ItemToAdd
           perform XMLOut-Append-Tag
           .

      * Ajout d'un caractére dans le buffer.
       XMLOut-Append-Char.
           ADD 1 TO XMLOut-Count
           MOVE XMLOut-Char TO XMLOut-Record(XMLOut-Count:1)
           IF XMLOut-Count = 256 THEN
               PERFORM XMLOut-Flush
           END-IF
           .

      * Vide le buffer vers le fichier.       
       XMLOut-Flush.
           WRITE XMLOut-Record
           PERFORM STAT
           MOVE SPACES TO XMLOut-Record
           MOVE 0 TO XMLOut-Count
           .
       
      * Ferme le fichier en sortie.
       XMLOut-Close.
           MOVE "</mistral>" TO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           PERFORM XMLOut-Flush 
           CLOSE XMLOut-File
           MOVE 1 TO WCLOSE-XMLOut-File
           .

       XMLOut-Close-Light.
           PERFORM XMLOut-Flush 
           CLOSE XMLOut-File
           MOVE 1 TO WCLOSE-XMLOut-File
           .

      * Détruit le fichier.
       XMLOut-Delete.
           DELETE FILE XMLOut-File
           .
       
       XMLOut-EnteteListe.
           IF XMLOut-Format = "P" THEN
             MOVE "format" TO XMLOut-TagToAdd
             MOVE "P" TO XMLOut-DataToAdd
             PERFORM XMLOut-Append-TaggedData
           ELSE
             MOVE "format" TO XMLOut-TagToAdd
             MOVE "N" TO XMLOut-DataToAdd
             PERFORM XMLOut-Append-TaggedData
           END-IF

      * 07/02/2008 pour possibilité de ne pas éditer les grisés
      *     PERFORM Xml-Genere-Couleurs-de-Base
      * fin 07/02/2008

           IF XMLOut-Format = "P"
                MOVE "<entetelistepaysage>" TO XMLOut-ItemToAdd
           ELSE MOVE "<enteteliste>" TO XMLOut-ItemToAdd
           END-IF
           PERFORM XMLOut-Append-Tag
           
           IF XMLOut-NUMSOC = ZERO
              IF LOG-PALM = 25 AND CAS-PALM = 1
                   CONTINUE
              ELSE 
                   MOVE NSO-PALM TO XMLOut-NUMSOC
              END-IF
           END-IF
           IF XMLOut-NUMSOC NOT = ZERO
              MOVE "titsoc" TO XMLOut-TagToAdd
              MOVE "Société n°" TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "numsoc" TO XMLOut-TagToAdd
              MOVE XMLOut-NUMSOC TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
           END-IF
           MOVE "raipar" TO XMLOut-TagToAdd
           MOVE XMLOut-NOMSOC TO XMLOut-DataToAdd
           PERFORM XMLOut-Append-TaggedData
           IF XMLOut-CODAGC NOT = SPACE
              MOVE "titagc" TO XMLOut-TagToAdd
              MOVE "Agence:" TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "codagc" TO XMLOut-TagToAdd
              MOVE XMLOut-CODAGC TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "nomagc" TO XMLOut-TagToAdd
              MOVE XMLOut-NOMAGC TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
           END-IF
           IF XMLOut-CODREG NOT = 0
              MOVE "titreg" TO XMLOut-TagToAdd
              MOVE "Région:" TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "codreg" TO XMLOut-TagToAdd
              MOVE XMLOut-CODREG TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "nomreg" TO XMLOut-TagToAdd
              MOVE XMLOut-NOMREG TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
           END-IF
           IF XMLOut-CODETS NOT = SPACE
              MOVE "titets" TO XMLOut-TagToAdd
              MOVE "Etablissement:" TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "codets" TO XMLOut-TagToAdd
              MOVE XMLOut-CODETS TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "nomets" TO XMLOut-TagToAdd
              MOVE XMLOut-NOMETS TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
           END-IF
           MOVE "titre" TO XMLOut-TagToAdd   
           MOVE XMLOut-TITRE TO XMLOut-DataToAdd
           perform XMLOut-Append-TaggedData.            
           MOVE "periode" TO XMLOut-TagToAdd   
           MOVE XMLOut-PERIODE TO XMLOut-DataToAdd
           perform XMLOut-Append-TaggedData.
           PERFORM VARYING XMLOut-Indice FROM 1 BY 1 
180219*          UNTIL XMLOut-Indice > 100
180219          UNTIL XMLOut-Indice > 150
                OR XMLOut-ZonTit(XMLOut-Indice) = SPACE
              IF XMLOut-NomTit(XMLOut-Indice) = SPACE
                 STRING "zontit" XMLOut-Indice INTO XMLOut-TagToAdd   
              ELSE
                 STRING "zontit" XMLOut-NomTit(XMLOut-Indice)
                        INTO XMLOut-TagToAdd   
              END-IF
              MOVE XMLOut-ZonTit(XMLOut-Indice) TO XMLOut-DataToAdd
              perform XMLOut-Append-TaggedData 
           END-PERFORM.
       F-XMLOut-EnteteListe.
           IF XMLOut-Format = "P"
                MOVE "</entetelistepaysage>" TO XMLOut-ItemToAdd
           ELSE MOVE "</enteteliste>" TO XMLOut-ItemToAdd
           END-IF
      *     MOVE "</enteteliste>" TO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag.

       XMLOut-PiedListe.
           MOVE SPACE TO XMLOut-PiedListe.
           MOVE PRO-PALM TO XMLOut-PROC
           EVALUATE LOG-PALM
           WHEN 01 MOVE "PALME" TO XMLOut-LOG
           WHEN 03 MOVE "C3G" TO XMLOut-LOG
           WHEN 04 MOVE "P3G" TO XMLOut-LOG
           WHEN 05 MOVE "IMAM" TO XMLOut-LOG
           WHEN 06 MOVE "MOMIX" TO XMLOut-LOG
           WHEN 07 MOVE "CLEO" TO XMLOut-LOG
           WHEN 08 MOVE "GT3G" TO XMLOut-LOG
           WHEN 09 MOVE "REMBO" TO XMLOut-LOG
           WHEN 10 MOVE "ANA" TO XMLOut-LOG
           WHEN 11 MOVE "MIAMI" TO XMLOut-LOG
           WHEN 12 MOVE "CAMI" TO XMLOut-LOG
           WHEN 15 MOVE "CB" TO XMLOut-LOG
           WHEN 25 MOVE "M3G" TO XMLOut-LOG
           WHEN 99 MOVE "UTI" TO XMLOut-LOG   
           END-EVALUATE
           ACCEPT DAT-SYS-M FROM CENTURY-DATE
           ACCEPT HEURE-SYS-M FROM TIME
           MOVE DAT-SYS-M TO D-SAMJ
           PERFORM CONVDAT-SAMJ-JMSA
           MOVE D-JMSA TO XMLOut-Dat
           MOVE HEU-SYS-M TO XMLOut-Heu
           MOVE ":" TO XMLOut-H
           MOVE MIN-SYS-M TO XMLOut-Min
           MOVE IDE-PALM TO XMLOut-Ide
      *     OPEN I-O PMELICEN 
      *     PERFORM STAT
      *     READ PMELICEN NEXT END MOVE SPACE TO ENR-PMELC.
      *     PERFORM STAT
      *     CLOSE PMELICEN.
      *     MOVE RAI-PMELC TO XMLOut-Rai.
           MOVE "PROTOTYPE NOUVEL ERP" TO XMLOut-Rai.

           IF XMLOut-Format = "P"
                MOVE "<piedlistepaysage>" TO XMLOut-ItemToAdd
           ELSE MOVE "<piedliste>" TO XMLOut-ItemToAdd
           END-IF
      *     MOVE "<piedliste>" TO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag
           MOVE "piedliste-l" TO XMLOut-TagToAdd
           MOVE XMLOut-PiedListe TO XMLOut-DataToAdd
           perform XMLOut-Append-TaggedData.
           MOVE "proc" TO XMLOut-TagToAdd
           MOVE XMLOut-Proc TO XMLOut-DataToAdd
           perform XMLOut-Append-TaggedData
           MOVE "log" TO XMLOut-TagToAdd
           MOVE XMLOut-Log TO XMLOut-DataToAdd
           perform XMLOut-Append-TaggedData
170212*    
           MOVE "nomsel" TO XMLOut-TagToAdd
           MOVE XMLOut-Nomsel TO XMLOut-DataToAdd
           perform XMLOut-Append-TaggedData
            
170212
           .
       F-XMLOut-PiedListe.
           IF XMLOut-Format = "P"
                MOVE "</piedlistepaysage>" TO XMLOut-ItemToAdd
           ELSE MOVE "</piedliste>" TO XMLOut-ItemToAdd
           END-IF
      *     MOVE "</piedliste>" TO XMLOut-ItemToAdd
           PERFORM XMLOut-Append-Tag.
           IF XMLOut-Dev NOT = SPACE
              MOVE "titdev" TO XMLOut-TagToAdd   
              MOVE "Montants en" TO XMLOut-DataToAdd
              perform XMLOut-Append-TaggedData
              MOVE "dev" TO XMLOut-TagToAdd
              MOVE XMLOut-Dev TO XMLOut-DataToAdd
              perform XMLOut-Append-TaggedData.

       XMLOut-Stop.
      *     MOVE "<incomplet>" TO XMLOut-ItemToAdd
      *     PERFORM XMLOut-Append-Tag
      *     MOVE "incomplet-l" TO XMLOut-TagToAdd
      *     MOVE "Traitement Incomplet - Arrêté par l'Utilisateur" 
           MOVE "incomplet" TO XMLOut-TagToAdd
           MOVE "Résultats Partiels"
           TO XMLOut-DataToAdd
           perform XMLOut-Append-TaggedData.
      *     MOVE "</incomplet>" TO XMLOut-ItemToAdd
      *     PERFORM XMLOut-Append-Tag.
      

       Xml-Genere-Couleurs-de-Base.
      * 07/02/2008 pour possibilité de ne pas éditer les grisés
           MOVE "colorbleu" TO XMLOut-TagToAdd
           IF LK-IMPRIME-GRISE = "N"
                MOVE "#FFFFFF" TO XMLOut-DataToAdd
           ELSE MOVE "#C0D9FE" TO XMLOut-DataToAdd
           END-IF
           PERFORM XMLOut-Append-TaggedData
           MOVE "colorjaune" TO XMLOut-TagToAdd
           IF LK-IMPRIME-GRISE = "N"
                MOVE "#FFFFFF" TO XMLOut-DataToAdd
           ELSE MOVE "#FFFFB0" TO XMLOut-DataToAdd
           END-IF
           PERFORM XMLOut-Append-TaggedData
           MOVE "colorgris" TO XMLOut-TagToAdd
           IF LK-IMPRIME-GRISE = "N"
                MOVE "#FFFFFF" TO XMLOut-DataToAdd
           ELSE MOVE "#DFDFDF" TO XMLOut-DataToAdd
           END-IF
           PERFORM XMLOut-Append-TaggedData
           .

