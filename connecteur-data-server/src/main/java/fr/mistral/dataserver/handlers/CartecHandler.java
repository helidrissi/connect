package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;

import fr.mistral.dataserver.model.mx.Cartec;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class CartecHandler extends AbstractDataHandler<Cartec> implements IDataHandler {

	/**
	 * cobol: COD-MCTC
	 * db:    code_cte
	 */
	private static final String CLE1_MCTC = "CLE1-MCTC";
	/**
	 * cobol: LIB-MCTC
	 * db:    libelle_cte
	 */
	private static final String CLE2_MCTC = "CLE2-MCTC";

	/** code_cte - Code caractéristique technique : si commence par | = pipe : critère TBA (type cobol: X(3)) */
	private static final String COD_MCTC = "COD-MCTC";
	/** libelle_cte - Libellé (type cobol: X(30)) */
	private static final String LIB_MCTC = "LIB-MCTC";
	/** abrege_cte - Abrégé (type cobol: X(10)) */
	private static final String ABR_MCTC = "ABR-MCTC";
	/** type_zone - Type de zone (1=alpha 2=numérique 3=binaire 4=choix 5=date 6=texte étendu (type cobol: 9) */
	private static final String TDZ_MCTC = "TDZ-MCTC";
	/** longueur_zone - Longueur zone (type cobol: 99) */
	private static final String LDZ_MCTC = "LDZ-MCTC";
	/** nb_decimales - Nombre de décimales (0 à 5 + contrôle > LDZ - 1 (type cobol: 9) */
	private static final String DEC_MCTC = "DEC-MCTC";
	/** usage_interne_exte - Usage (0=externe 1=interne 2=fournisseur 3=client (type cobol: 9) */
	private static final String USA_MCTC = "USA-MCTC";
	/** gras (type cobol: 9) */
	private static final String STGRA_MCTC = "STGRA-MCTC";
	/** italique (type cobol: 9) */
	private static final String STITA_MCTC = "STITA-MCTC";
	/** souligne (type cobol: 9) */
	private static final String STSOU_MCTC = "STSOU-MCTC";
	/** regroupement - Code regroupement (type cobol: X(3)) */
	private static final String REG_MCTC = "REG-MCTC";
	/** publiable - Publication web: 1=non (type cobol: 9) */
	private static final String WEB_MCTC = "WEB-MCTC";

	public CartecHandler() throws IOException {
		super("mx/fd/MXCARTEC.fd", "MXCARTEC", fr.mistral.dataserver.model.mx.Cartec.class,
				"CLE1-MCTC",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MCTC, ImmutableList.<String>builder().add(COD_MCTC).build())
					.put(CLE2_MCTC, ImmutableList.<String>builder().add(LIB_MCTC).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Cartec>>builder()
					.put(COD_MCTC, new EntityFieldMapper<>(COD_MCTC, "code_cte", Cartec::get_code_cte))
					.put(LIB_MCTC, new EntityFieldMapper<>(LIB_MCTC, "libelle_cte", Cartec::get_libelle_cte))
					.build());
	}

	@Override
	public String getName() {
		return "MXCARTEC";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Cartec entity) {
		stringCobolToJava(line.getFieldValue(COD_MCTC), entity::set_code_cte);
		stringCobolToJava(line.getFieldValue(LIB_MCTC), entity::set_libelle_cte);
		stringCobolToJava(line.getFieldValue(ABR_MCTC), entity::set_abrege_cte);
		integerCobolToJava(line.getFieldValue(TDZ_MCTC), entity::set_type_zone);
		integerCobolToJava(line.getFieldValue(LDZ_MCTC), entity::set_longueur_zone);
		integerCobolToJava(line.getFieldValue(DEC_MCTC), entity::set_nb_decimales);
		integerCobolToJava(line.getFieldValue(USA_MCTC), entity::set_usage_interne_exte);
		integerCobolToJava(line.getFieldValue(STGRA_MCTC), entity::set_gras);
		integerCobolToJava(line.getFieldValue(STITA_MCTC), entity::set_italique);
		integerCobolToJava(line.getFieldValue(STSOU_MCTC), entity::set_souligne);
		stringCobolToJava(line.getFieldValue(REG_MCTC), entity::set_regroupement);
		integerCobolToJava(line.getFieldValue(WEB_MCTC), entity::set_publiable);
	}

	@Override
	protected void mapJavaToCobol(Cartec entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(COD_MCTC), entity::get_code_cte);
		stringJavaToCobol(line.getFieldValue(LIB_MCTC), entity::get_libelle_cte);
		stringJavaToCobol(line.getFieldValue(ABR_MCTC), entity::get_abrege_cte);
		integerJavaToCobol(line.getFieldValue(TDZ_MCTC), entity::get_type_zone);
		integerJavaToCobol(line.getFieldValue(LDZ_MCTC), entity::get_longueur_zone);
		integerJavaToCobol(line.getFieldValue(DEC_MCTC), entity::get_nb_decimales);
		integerJavaToCobol(line.getFieldValue(USA_MCTC), entity::get_usage_interne_exte);
		integerJavaToCobol(line.getFieldValue(STGRA_MCTC), entity::get_gras);
		integerJavaToCobol(line.getFieldValue(STITA_MCTC), entity::get_italique);
		integerJavaToCobol(line.getFieldValue(STSOU_MCTC), entity::get_souligne);
		stringJavaToCobol(line.getFieldValue(REG_MCTC), entity::get_regroupement);
		integerJavaToCobol(line.getFieldValue(WEB_MCTC), entity::get_publiable);
	}

}
