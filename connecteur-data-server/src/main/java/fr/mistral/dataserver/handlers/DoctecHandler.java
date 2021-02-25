package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Doctec;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class DoctecHandler extends AbstractDataHandler<Doctec> implements IDataHandler {

	/**
	 * cobol: ORI-MDTE, CLE-MDTE, LIG-MDTE
	 * db:    origine, cle_fichier, no_ligne
	 */
	private static final String CLE1_MDTE = "CLE1-MDTE";
	/**
	 * cobol: ORI-MDTE, CLE-MDTE, RAN-MDTE
	 * db:    origine, cle_fichier, rang
	 */
	private static final String CLE2_MDTE = "CLE2-MDTE";

	/** origine (type cobol: XXX) */
	private static final String ORI_MDTE = "ORI-MDTE";
	/** cle_fichier (type cobol: X(30)) */
	private static final String CLE_MDTE = "CLE-MDTE";
	/** no_ligne (type cobol: 999) */
	private static final String LIG_MDTE = "LIG-MDTE";
	/** rang (type cobol: 9(3)) */
	private static final String RAN_MDTE = "RAN-MDTE";
	/** code_cte - Code caractéristique technique (type cobol: X(3)) */
	private static final String CTE_MDTE = "CTE-MDTE";
	/** valeur (type cobol: X(40)) */
	private static final String VAL_MDTE = "VAL-MDTE";

	public DoctecHandler() throws IOException {
		super("mx/fd/MXDOCTEC.fd", "MXDOCTEC", fr.mistral.dataserver.model.mx.Doctec.class,
				"CLE1-MDTE",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MDTE, ImmutableList.<String>builder().add(ORI_MDTE, CLE_MDTE, LIG_MDTE).build())
					.put(CLE2_MDTE, ImmutableList.<String>builder().add(ORI_MDTE, CLE_MDTE, RAN_MDTE).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Doctec>>builder()
					.put(ORI_MDTE, new EntityFieldMapper<>(ORI_MDTE, "origine", Doctec::get_origine))
					.put(CLE_MDTE, new EntityFieldMapper<>(CLE_MDTE, "cle_fichier", Doctec::get_cle_fichier))
					.put(LIG_MDTE, new EntityFieldMapper<>(LIG_MDTE, "no_ligne", Doctec::get_no_ligne))
					.put(RAN_MDTE, new EntityFieldMapper<>(RAN_MDTE, "rang", Doctec::get_rang))
					.build());
	}

	@Override
	public String getName() {
		return "MXDOCTEC";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXDOCTEC2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Doctec entity) {
		stringCobolToJava(line.getFieldValue(ORI_MDTE), entity::set_origine);
		stringCobolToJava(line.getFieldValue(CLE_MDTE), entity::set_cle_fichier);
		integerCobolToJava(line.getFieldValue(LIG_MDTE), entity::set_no_ligne);
		integerCobolToJava(line.getFieldValue(RAN_MDTE), entity::set_rang);
		stringCobolToJava(line.getFieldValue(CTE_MDTE), entity::set_code_cte);
		stringCobolToJava(line.getFieldValue(VAL_MDTE), entity::set_valeur);
	}

	@Override
	protected void mapJavaToCobol(Doctec entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(ORI_MDTE), entity::get_origine);
		stringJavaToCobol(line.getFieldValue(CLE_MDTE), entity::get_cle_fichier);
		integerJavaToCobol(line.getFieldValue(LIG_MDTE), entity::get_no_ligne);
		integerJavaToCobol(line.getFieldValue(RAN_MDTE), entity::get_rang);
		stringJavaToCobol(line.getFieldValue(CTE_MDTE), entity::get_code_cte);
		stringJavaToCobol(line.getFieldValue(VAL_MDTE), entity::get_valeur);
	}

}
