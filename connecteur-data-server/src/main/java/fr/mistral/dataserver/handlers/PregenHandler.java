package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Pregen;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class PregenHandler extends AbstractDataHandler<Pregen> implements IDataHandler {

	/**
	 * cobol: COD-MPGE
	 * db:    code_prestation
	 */
	private static final String CLE1_MPGE = "CLE1-MPGE";
	/**
	 * cobol: LIB-MPGE
	 * db:    libelle_prestation
	 */
	private static final String CLE2_MPGE = "CLE2-MPGE";

	/** code_prestation - Code (type cobol: XXXX) */
	private static final String COD_MPGE = "COD-MPGE";
	/** libelle_prestation - Libellé (type cobol: X(35)) */
	private static final String LIB_MPGE = "LIB-MPGE";
	/** indic_lib_modif - Indicateur libellé modifiable (0=non (type cobol: 9) */
	private static final String INL_MPGE = "INL-MPGE";
	/** abrege_prestation - Abrégé (type cobol: X(8)) */
	private static final String ABR_MPGE = "ABR-MPGE";
	/** code_nature - Nature (1=MO 2=transport 3=divers 4=sous-traitance 5=éléments supplétifs (type cobol: 9) */
	private static final String NAT_MPGE = "NAT-MPGE";
	/** taux_tva - Taux de TVA (type cobol: 9) */
	private static final String TVA_MPGE = "TVA-MPGE";
	/** taux_tva2 - Taux de TVA base 2 (type cobol: 9) */
	private static final String TVA2_MPGE = "TVA2-MPGE";
	/** taux_tva3 - Taux de TVA base 3 (type cobol: 9) */
	private static final String TVA3_MPGE = "TVA3-MPGE";
	/** code_suppression - Code annulation (type cobol: 9) */
	private static final String CANN_MPGE = "CANN-MPGE";
	/** date_suppression - Date annulation (type cobol: 9(8)) */
	private static final String DANN_MPGE = "DANN-MPGE";
	/** auteur_suppression - Utilisateur annulation (type cobol: XXXX) */
	private static final String IANN_MPGE = "IANN-MPGE";
	/** depart_retour_domi - 1=Départ/Retour Domicile (SFA (type cobol: 9) */
	private static final String DRD_MPGE = "DRD-MPGE";
	/** code_regrpt_stats - code regroupement statistiques (type cobol: XX) */
	private static final String RGS_MPGE = "RGS-MPGE";
	/** imprime_gras - Style d'impression dans les docs office : gras 0=non 1=oui (type cobol: 9) */
	private static final String STGRA_MPGE = "STGRA-MPGE";
	/** imprime_italique - Style d'impression dans les docs office : itlaique 0=non 1=oui (type cobol: 9) */
	private static final String STITA_MPGE = "STITA-MPGE";
	/** imprime_souligne - Style d'impression dans les docs office : souligné 0=non 1=oui (type cobol: 9) */
	private static final String STSOU_MPGE = "STSOU-MPGE";
	/** code_fournisseur - Style d'impression dans les docs office : souligné 0=non 1=oui (type cobol: 9(6)) */
	private static final String FOU_MPGE = "FOU-MPGE";
	/** exclus_workflow - 1 = prestation exclue du workflow (type cobol: 9) */
	private static final String WKFL_MPGE = "WKFL-MPGE";
	/** presta_reservee - 1 = prestation réservée (type cobol: 9) */
	private static final String IRS_MPGE = "IRS-MPGE";
	/** motif_activite - Motif d'Activité GTI (type cobol: 99) */
	private static final String MAB_MPGE = "MAB-MPGE";
	/** autoliquidation - 1 = soumise auto-liquidation (type cobol: 9) */
	private static final String ALQ_MPGE = "ALQ-MPGE";

	public PregenHandler() throws IOException {
		super("mx/fd/MXPREGEN.fd", "MXPREGEN", fr.mistral.dataserver.model.mx.Pregen.class,
				"CLE1-MPGE",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MPGE, ImmutableList.<String>builder().add(COD_MPGE).build())
					.put(CLE2_MPGE, ImmutableList.<String>builder().add(LIB_MPGE).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Pregen>>builder()
					.put(COD_MPGE, new EntityFieldMapper<>(COD_MPGE, "code_prestation", Pregen::get_code_prestation))
					.put(LIB_MPGE, new EntityFieldMapper<>(LIB_MPGE, "libelle_prestation", Pregen::get_libelle_prestation))
					.build());
	}

	@Override
	public String getName() {
		return "MXPREGEN";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Pregen entity) {
		stringCobolToJava(line.getFieldValue(COD_MPGE), entity::set_code_prestation);
		stringCobolToJava(line.getFieldValue(LIB_MPGE), entity::set_libelle_prestation);
		integerCobolToJava(line.getFieldValue(INL_MPGE), entity::set_indic_lib_modif);
		stringCobolToJava(line.getFieldValue(ABR_MPGE), entity::set_abrege_prestation);
		integerCobolToJava(line.getFieldValue(NAT_MPGE), entity::set_code_nature);
		integerCobolToJava(line.getFieldValue(TVA_MPGE), entity::set_taux_tva);
		integerCobolToJava(line.getFieldValue(TVA2_MPGE), entity::set_taux_tva2);
		integerCobolToJava(line.getFieldValue(TVA3_MPGE), entity::set_taux_tva3);
		integerCobolToJava(line.getFieldValue(CANN_MPGE), entity::set_code_suppression);
		dateCobolToJava(line.getFieldValue(DANN_MPGE), entity::set_date_suppression);
		stringCobolToJava(line.getFieldValue(IANN_MPGE), entity::set_auteur_suppression);
		integerCobolToJava(line.getFieldValue(DRD_MPGE), entity::set_depart_retour_domi);
		stringCobolToJava(line.getFieldValue(RGS_MPGE), entity::set_code_regrpt_stats);
		integerCobolToJava(line.getFieldValue(STGRA_MPGE), entity::set_imprime_gras);
		integerCobolToJava(line.getFieldValue(STITA_MPGE), entity::set_imprime_italique);
		integerCobolToJava(line.getFieldValue(STSOU_MPGE), entity::set_imprime_souligne);
		longCobolToJava(line.getFieldValue(FOU_MPGE), entity::set_code_fournisseur);
		integerCobolToJava(line.getFieldValue(WKFL_MPGE), entity::set_exclus_workflow);
		integerCobolToJava(line.getFieldValue(IRS_MPGE), entity::set_presta_reservee);
		integerCobolToJava(line.getFieldValue(MAB_MPGE), entity::set_motif_activite);
		integerCobolToJava(line.getFieldValue(ALQ_MPGE), entity::set_autoliquidation);
	}

	@Override
	protected void mapJavaToCobol(Pregen entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(COD_MPGE), entity::get_code_prestation);
		stringJavaToCobol(line.getFieldValue(LIB_MPGE), entity::get_libelle_prestation);
		integerJavaToCobol(line.getFieldValue(INL_MPGE), entity::get_indic_lib_modif);
		stringJavaToCobol(line.getFieldValue(ABR_MPGE), entity::get_abrege_prestation);
		integerJavaToCobol(line.getFieldValue(NAT_MPGE), entity::get_code_nature);
		integerJavaToCobol(line.getFieldValue(TVA_MPGE), entity::get_taux_tva);
		integerJavaToCobol(line.getFieldValue(TVA2_MPGE), entity::get_taux_tva2);
		integerJavaToCobol(line.getFieldValue(TVA3_MPGE), entity::get_taux_tva3);
		integerJavaToCobol(line.getFieldValue(CANN_MPGE), entity::get_code_suppression);
		dateJavaToCobol(line.getFieldValue(DANN_MPGE), entity::get_date_suppression);
		stringJavaToCobol(line.getFieldValue(IANN_MPGE), entity::get_auteur_suppression);
		integerJavaToCobol(line.getFieldValue(DRD_MPGE), entity::get_depart_retour_domi);
		stringJavaToCobol(line.getFieldValue(RGS_MPGE), entity::get_code_regrpt_stats);
		integerJavaToCobol(line.getFieldValue(STGRA_MPGE), entity::get_imprime_gras);
		integerJavaToCobol(line.getFieldValue(STITA_MPGE), entity::get_imprime_italique);
		integerJavaToCobol(line.getFieldValue(STSOU_MPGE), entity::get_imprime_souligne);
		longJavaToCobol(line.getFieldValue(FOU_MPGE), entity::get_code_fournisseur);
		integerJavaToCobol(line.getFieldValue(WKFL_MPGE), entity::get_exclus_workflow);
		integerJavaToCobol(line.getFieldValue(IRS_MPGE), entity::get_presta_reservee);
		integerJavaToCobol(line.getFieldValue(MAB_MPGE), entity::get_motif_activite);
		integerJavaToCobol(line.getFieldValue(ALQ_MPGE), entity::get_autoliquidation);
	}

}
