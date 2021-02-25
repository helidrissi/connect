package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Doctecext;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class DoctecextHandler extends AbstractDataHandler<Doctecext> implements IDataHandler {

	/**
	 * cobol: ACT-MDTEX, NIT-MDTEX, INO-MDTEX, CLE-MDTEX, LIG-MDTEX
	 * db:    act_mdtex, nit_mdtex, ino_mdtex, cle_doc, lig_mdtex
	 */
	private static final String CLE1_MDTEX = "CLE1-MDTEX";
	/**
	 * cobol: ACT-MDTEX, NIT-MDTEX, INO-MDTEX, CLE-MDTEX
	 * db:    act_mdtex, nit_mdtex, ino_mdtex, cle_doc
	 */
	private static final String CLE2_MDTEX = "CLE2-MDTEX";

	/** act_mdtex - Module: A=achats D=distribution J=LSD M=vente matériel R=réparation  L=location F=LLD E=Contrat entretien B=Fichiers de base P=Parc V=Fiche Mat (type cobol: X) */
	private static final String ACT_MDTEX = "ACT-MDTEX";
	/** nit_mdtex - Stade: A=Articles M=Catalogue matériel  P=Prestations  D=devis (type cobol: X) */
	private static final String NIT_MDTEX = "NIT-MDTEX";
	/** ino_mdtex - Indicateur composition:  E=si entête (type cobol: X) */
	private static final String INO_MDTEX = "INO-MDTEX";
	/** cle_doc - Clé du fichier concerné (article (type cobol: X(30)) */
	private static final String CLE_MDTEX = "CLE-MDTEX";
	/** lig_mdtex (type cobol: 999) */
	private static final String LIG_MDTEX = "LIG-MDTEX";
	/** valeur (type cobol: X(400)) */
	private static final String VAL_MDTEX = "VAL-MDTEX";

	public DoctecextHandler() throws IOException {
		super("mx/fd/MXDOCTECEXT.fd", "MXDOCTECEXT", fr.mistral.dataserver.model.mx.Doctecext.class,
				"CLE1-MDTEX",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MDTEX, ImmutableList.<String>builder().add(ACT_MDTEX, NIT_MDTEX, INO_MDTEX, CLE_MDTEX, LIG_MDTEX).build())
					.put(CLE2_MDTEX, ImmutableList.<String>builder().add(ACT_MDTEX, NIT_MDTEX, INO_MDTEX, CLE_MDTEX).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Doctecext>>builder()
					.put(ACT_MDTEX, new EntityFieldMapper<>(ACT_MDTEX, "act_mdtex", Doctecext::get_act_mdtex))
					.put(NIT_MDTEX, new EntityFieldMapper<>(NIT_MDTEX, "nit_mdtex", Doctecext::get_nit_mdtex))
					.put(INO_MDTEX, new EntityFieldMapper<>(INO_MDTEX, "ino_mdtex", Doctecext::get_ino_mdtex))
					.put(CLE_MDTEX, new EntityFieldMapper<>(CLE_MDTEX, "cle_doc", Doctecext::get_cle_doc))
					.put(LIG_MDTEX, new EntityFieldMapper<>(LIG_MDTEX, "lig_mdtex", Doctecext::get_lig_mdtex))
					.build());
	}

	@Override
	public String getName() {
		return "MXDOCTECEXT";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXDOCTECEXT2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Doctecext entity) {
		stringCobolToJava(line.getFieldValue(ACT_MDTEX), entity::set_act_mdtex);
		stringCobolToJava(line.getFieldValue(NIT_MDTEX), entity::set_nit_mdtex);
		stringCobolToJava(line.getFieldValue(INO_MDTEX), entity::set_ino_mdtex);
		stringCobolToJava(line.getFieldValue(CLE_MDTEX), entity::set_cle_doc);
		integerCobolToJava(line.getFieldValue(LIG_MDTEX), entity::set_lig_mdtex);
		stringCobolToJava(line.getFieldValue(VAL_MDTEX), entity::set_valeur);
	}

	@Override
	protected void mapJavaToCobol(Doctecext entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(ACT_MDTEX), entity::get_act_mdtex);
		stringJavaToCobol(line.getFieldValue(NIT_MDTEX), entity::get_nit_mdtex);
		stringJavaToCobol(line.getFieldValue(INO_MDTEX), entity::get_ino_mdtex);
		stringJavaToCobol(line.getFieldValue(CLE_MDTEX), entity::get_cle_doc);
		integerJavaToCobol(line.getFieldValue(LIG_MDTEX), entity::get_lig_mdtex);
		stringJavaToCobol(line.getFieldValue(VAL_MDTEX), entity::get_valeur);
	}

}
