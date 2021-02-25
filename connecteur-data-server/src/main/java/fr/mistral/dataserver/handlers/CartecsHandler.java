package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Cartecs;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class CartecsHandler extends AbstractDataHandler<Cartecs> implements IDataHandler {

	/**
	 * cobol: COD-MCTCS, ORD-MCTCS
	 * db:    code_cte, no_ordre
	 */
	private static final String CLE1_MCTCS = "CLE1-MCTCS";
	/**
	 * cobol: LIB-MCTCS
	 * db:    libelle
	 */
	private static final String CLE2_MCTCS = "CLE2-MCTCS";

	/** code_cte - Code caractéristique technique (type cobol: X(3)) */
	private static final String COD_MCTCS = "COD-MCTCS";
	/** no_ordre - N° (type cobol: 9(3)) */
	private static final String ORD_MCTCS = "ORD-MCTCS";
	/** libelle - Libellé (type cobol: X(30)) */
	private static final String LIB_MCTCS = "LIB-MCTCS";

	public CartecsHandler() throws IOException {
		super("mx/fd/MXCARTECS.fd", "MXCARTECS", fr.mistral.dataserver.model.mx.Cartecs.class,
				"CLE1-MCTCS",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MCTCS, ImmutableList.<String>builder().add(COD_MCTCS, ORD_MCTCS).build())
					.put(CLE2_MCTCS, ImmutableList.<String>builder().add(LIB_MCTCS).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Cartecs>>builder()
					.put(COD_MCTCS, new EntityFieldMapper<>(COD_MCTCS, "code_cte", Cartecs::get_code_cte))
					.put(ORD_MCTCS, new EntityFieldMapper<>(ORD_MCTCS, "no_ordre", Cartecs::get_no_ordre))
					.put(LIB_MCTCS, new EntityFieldMapper<>(LIB_MCTCS, "libelle", Cartecs::get_libelle))
					.build());
	}

	@Override
	public String getName() {
		return "MXCARTECS";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Cartecs entity) {
		stringCobolToJava(line.getFieldValue(COD_MCTCS), entity::set_code_cte);
		integerCobolToJava(line.getFieldValue(ORD_MCTCS), entity::set_no_ordre);
		stringCobolToJava(line.getFieldValue(LIB_MCTCS), entity::set_libelle);
	}

	@Override
	protected void mapJavaToCobol(Cartecs entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(COD_MCTCS), entity::get_code_cte);
		integerJavaToCobol(line.getFieldValue(ORD_MCTCS), entity::get_no_ordre);
		stringJavaToCobol(line.getFieldValue(LIB_MCTCS), entity::get_libelle);
	}

}
