package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Marque;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class MarqueHandler extends AbstractDataHandler<Marque> implements IDataHandler {

	/**
	 * cobol: COD-MMAR
	 * db:    code_marque
	 */
	private static final String CLE1_MMAR = "CLE1-MMAR";
	/**
	 * cobol: LIB-MMAR
	 * db:    libelle_marque
	 */
	private static final String CLE2_MMAR = "CLE2-MMAR";
	/**
	 * cobol: ABR-MMAR
	 * db:    abrege_marque
	 */
	private static final String CLE3_MMAR = "CLE3-MMAR";

	/** code_marque - Code Marque (type cobol: X(4)) */
	private static final String COD_MMAR = "COD-MMAR";
	/** libelle_marque - Libellé (type cobol: X(20)) */
	private static final String LIB_MMAR = "LIB-MMAR";
	/** abrege_marque - Abrégé (type cobol: X(8)) */
	private static final String ABR_MMAR = "ABR-MMAR";
	/** tvh_mmar - Code Marque chez TVH (nécessaire pour le transfert des commandes) (type cobol: X(4)) */
	private static final String TVH_MMAR = "TVH-MMAR";

	public MarqueHandler() throws IOException {
		super("mx/fd/MXMARQUE.fd", "MXMARQUE", fr.mistral.dataserver.model.mx.Marque.class,
				"CLE1-MMAR",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MMAR, ImmutableList.<String>builder().add(COD_MMAR).build())
					.put(CLE2_MMAR, ImmutableList.<String>builder().add(LIB_MMAR).build())
					.put(CLE3_MMAR, ImmutableList.<String>builder().add(ABR_MMAR).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Marque>>builder()
					.put(COD_MMAR, new EntityFieldMapper<>(COD_MMAR, "code_marque", Marque::get_code_marque))
					.put(LIB_MMAR, new EntityFieldMapper<>(LIB_MMAR, "libelle_marque", Marque::get_libelle_marque))
					.put(ABR_MMAR, new EntityFieldMapper<>(ABR_MMAR, "abrege_marque", Marque::get_abrege_marque))
					.build());
	}

	@Override
	public String getName() {
		return "MXMARQUE";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXMARQUE2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Marque entity) {
		stringCobolToJava(line.getFieldValue(COD_MMAR), entity::set_code_marque);
		stringCobolToJava(line.getFieldValue(LIB_MMAR), entity::set_libelle_marque);
		stringCobolToJava(line.getFieldValue(ABR_MMAR), entity::set_abrege_marque);
		stringCobolToJava(line.getFieldValue(TVH_MMAR), entity::set_tvh_mmar);
	}

	@Override
	protected void mapJavaToCobol(Marque entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(COD_MMAR), entity::get_code_marque);
		stringJavaToCobol(line.getFieldValue(LIB_MMAR), entity::get_libelle_marque);
		stringJavaToCobol(line.getFieldValue(ABR_MMAR), entity::get_abrege_marque);
		stringJavaToCobol(line.getFieldValue(TVH_MMAR), entity::get_tvh_mmar);
	}

}
