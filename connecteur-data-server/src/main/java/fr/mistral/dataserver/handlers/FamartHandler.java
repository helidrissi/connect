package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Famart;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class FamartHandler extends AbstractDataHandler<Famart> implements IDataHandler {

	/**
	 * cobol: GRA-MFAM, FAM-MFAM
	 * db:    code_famille_art, code_sous_fam_art
	 */
	private static final String CLE1_MFAM = "CLE1-MFAM";

	/** code_famille_art - Code famille (type cobol: 99) */
	private static final String GRA_MFAM = "GRA-MFAM";
	/** code_sous_fam_art - Code sous-famille (type cobol: 99) */
	private static final String FAM_MFAM = "FAM-MFAM";
	/** coefficient_famart - Coefficient (type cobol: 99V999) */
	private static final String COE_MFAM = "COE-MFAM";
	/** taux_marque - Taux de marque (type cobol: 99V99) */
	private static final String TXM_MFAM = "TXM-MFAM";
	/** indic_taux_marque - Indicateur taux de marque (0=non 1=oui (type cobol: 9) */
	private static final String CTM_MFAM = "CTM-MFAM";
	/** code_tva_famart - Code TVA (type cobol: 9) */
	private static final String TVA_MFAM = "TVA-MFAM";
	/** code_tva2_famart (type cobol: 9) */
	private static final String TVA2_MFAM = "TVA2-MFAM";
	/** code_tva3_famart (type cobol: 9) */
	private static final String TVA3_MFAM = "TVA3-MFAM";
	/** indic_poids - Indicateur poids:  0=non   1=kg    2=tonnes (type cobol: 9) */
	private static final String IPO_MFAM = "IPO-MFAM";
	/** indic_volume - Indicateur volume:  0=non   1=Litre   2=M3 (type cobol: 9) */
	private static final String VOL_MFAM = "VOL-MFAM";
	/** indic_fua - Indicateur FUA (0=non 1=montant 2=% (type cobol: 9) */
	private static final String FUA_MFAM = "FUA-MFAM";
	/** valeur_fua - Valeur FUA (type cobol: 9(4)V99) */
	private static final String VAL_MFAM = "VAL-MFAM";
	/** indic_tarif_cols - Tarif à colonnes (0=non 1=remise 2=prix net (type cobol: 9) */
	private static final String ITC_MFAM = "ITC-MFAM";
	/** coefficient_fua - Coef FUA (0=standard 1=coef de l'article (type cobol: 9) */
	private static final String TCF_MFAM = "TCF-MFAM";
	/** coeff_standard_fua - Coef standard FUA (type cobol: 9V999) */
	private static final String CFU_MFAM = "CFU-MFAM";
	/** referenct_famart - Référencement (0=libre  1=GENCOD (type cobol: 9) */
	private static final String REF_MFAM = "REF-MFAM";
	/** indic_gest_stock - Gestion de stock  (1=oui   2=non (type cobol: 9) */
	private static final String STO_MFAM = "STO-MFAM";
	/** indic_post_usine - Post usine (0=oui 1=non (type cobol: 9) */
	private static final String PUS_MFAM = "PUS-MFAM";
	/** code_etiquette - Code étiquette (type cobol: 99) */
	private static final String ETI_MFAM = "ETI-MFAM";
	/** indic_remise_compl - Calcul remise complémentaire (0=oui 1=non (type cobol: 9) */
	private static final String IRE_MFAM = "IRE-MFAM";
	/** indic_soumis_agent - Indicateur soumis calcul agents (SIREFI (type cobol: 9) */
	private static final String TAG_MFAM = "TAG-MFAM";
	/** indic_prix - Indicateur Prix: Indication Prix au Kg ou au Litre sur étiquette de marquage: 0=Non   1=Oui (type cobol: 9) */
	private static final String IPX_MFAM = "IPX-MFAM";
	/** type_etiquette - Type Etiquette: Blanc=Laser (Classique)   B=Code Barre (type cobol: X) */
	private static final String TETI_MFAM = "TETI-MFAM";
	/** indic_gestion_lots - Gestion des lots - Spécial CIME DENTAIRE (type cobol: 9) */
	private static final String LOT_MFAM = "LOT-MFAM";
	/** no_poste_gest_vte - N° poste de gestion (module location (type cobol: 9) */
	private static final String PGV_MFAM = "PGV-MFAM";
	/** total_sur_facture - Indic totalisation sur facture (type cobol: 9) */
	private static final String TOT_MFAM = "TOT-MFAM";
	/** taxe_specif - Indicateur Taxe spécifique: 0 = Non concerné 1=eco-taxe (type cobol: 9) */
	private static final String ITS_MFAM = "ITS-MFAM";
	/** code_remise_client - Code remise clients (type cobol: 999) */
	private static final String CRC_MFAM = "CRC-MFAM";
	/** pct_marge_mini - % marge mini (type cobol: 99V99) */
	private static final String MMI_MFAM = "MMI-MFAM";
	/** pct_marge_maxi - % marge maxi (type cobol: 99V99) */
	private static final String MMX_MFAM = "MMX-MFAM";
	/** pct_marge_plancher - % marge plancher (type cobol: 99V99) */
	private static final String MMP_MFAM = "MMP-MFAM";
	/** minoration_av_conc - Minoration marge articles avec concurrence (type cobol: 9V99) */
	private static final String MIB_MFAM = "MIB-MFAM";
	/** majoration_ss_conc - Majoration marge articles sans concurrence (type cobol: 9V99) */
	private static final String MAB_MFAM = "MAB-MFAM";
	/** indic_web - Masqué webtop (type cobol: 9) */
	private static final String WEB_MFAM = "WEB-MFAM";
	/** coet_mfam - Coefficient de vente TOPAZ (type cobol: 99V999) */
	private static final String COET_MFAM = "COET-MFAM";

	public FamartHandler() throws IOException {
		super("mx/fd/MXFAMART.fd", "MXFAMART", fr.mistral.dataserver.model.mx.Famart.class,
				"CLE1-MFAM",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MFAM, ImmutableList.<String>builder().add(GRA_MFAM, FAM_MFAM).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Famart>>builder()
					.put(GRA_MFAM, new EntityFieldMapper<>(GRA_MFAM, "code_famille_art", Famart::get_code_famille_art))
					.put(FAM_MFAM, new EntityFieldMapper<>(FAM_MFAM, "code_sous_fam_art", Famart::get_code_sous_fam_art))
					.build());
	}

	@Override
	public String getName() {
		return "MXFAMART";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Famart entity) {
		integerCobolToJava(line.getFieldValue(GRA_MFAM), entity::set_code_famille_art);
		integerCobolToJava(line.getFieldValue(FAM_MFAM), entity::set_code_sous_fam_art);
		bigDecimalCobolToJava(line.getFieldValue(COE_MFAM), entity::set_coefficient_famart);
		bigDecimalCobolToJava(line.getFieldValue(TXM_MFAM), entity::set_taux_marque);
		integerCobolToJava(line.getFieldValue(CTM_MFAM), entity::set_indic_taux_marque);
		integerCobolToJava(line.getFieldValue(TVA_MFAM), entity::set_code_tva_famart);
		integerCobolToJava(line.getFieldValue(TVA2_MFAM), entity::set_code_tva2_famart);
		integerCobolToJava(line.getFieldValue(TVA3_MFAM), entity::set_code_tva3_famart);
		integerCobolToJava(line.getFieldValue(IPO_MFAM), entity::set_indic_poids);
		integerCobolToJava(line.getFieldValue(VOL_MFAM), entity::set_indic_volume);
		integerCobolToJava(line.getFieldValue(FUA_MFAM), entity::set_indic_fua);
		bigDecimalCobolToJava(line.getFieldValue(VAL_MFAM), entity::set_valeur_fua);
		integerCobolToJava(line.getFieldValue(ITC_MFAM), entity::set_indic_tarif_cols);
		integerCobolToJava(line.getFieldValue(TCF_MFAM), entity::set_coefficient_fua);
		bigDecimalCobolToJava(line.getFieldValue(CFU_MFAM), entity::set_coeff_standard_fua);
		integerCobolToJava(line.getFieldValue(REF_MFAM), entity::set_referenct_famart);
		integerCobolToJava(line.getFieldValue(STO_MFAM), entity::set_indic_gest_stock);
		integerCobolToJava(line.getFieldValue(PUS_MFAM), entity::set_indic_post_usine);
		integerCobolToJava(line.getFieldValue(ETI_MFAM), entity::set_code_etiquette);
		integerCobolToJava(line.getFieldValue(IRE_MFAM), entity::set_indic_remise_compl);
		integerCobolToJava(line.getFieldValue(TAG_MFAM), entity::set_indic_soumis_agent);
		integerCobolToJava(line.getFieldValue(IPX_MFAM), entity::set_indic_prix);
		stringCobolToJava(line.getFieldValue(TETI_MFAM), entity::set_type_etiquette);
		integerCobolToJava(line.getFieldValue(LOT_MFAM), entity::set_indic_gestion_lots);
		integerCobolToJava(line.getFieldValue(PGV_MFAM), entity::set_no_poste_gest_vte);
		integerCobolToJava(line.getFieldValue(TOT_MFAM), entity::set_total_sur_facture);
		integerCobolToJava(line.getFieldValue(ITS_MFAM), entity::set_taxe_specif);
		integerCobolToJava(line.getFieldValue(CRC_MFAM), entity::set_code_remise_client);
		bigDecimalCobolToJava(line.getFieldValue(MMI_MFAM), entity::set_pct_marge_mini);
		bigDecimalCobolToJava(line.getFieldValue(MMX_MFAM), entity::set_pct_marge_maxi);
		bigDecimalCobolToJava(line.getFieldValue(MMP_MFAM), entity::set_pct_marge_plancher);
		bigDecimalCobolToJava(line.getFieldValue(MIB_MFAM), entity::set_minoration_av_conc);
		bigDecimalCobolToJava(line.getFieldValue(MAB_MFAM), entity::set_majoration_ss_conc);
		integerCobolToJava(line.getFieldValue(WEB_MFAM), entity::set_indic_web);
		bigDecimalCobolToJava(line.getFieldValue(COET_MFAM), entity::set_coet_mfam);
	}

	@Override
	protected void mapJavaToCobol(Famart entity, AbstractLine line) {
		integerJavaToCobol(line.getFieldValue(GRA_MFAM), entity::get_code_famille_art);
		integerJavaToCobol(line.getFieldValue(FAM_MFAM), entity::get_code_sous_fam_art);
		bigDecimalJavaToCobol(line.getFieldValue(COE_MFAM), entity::get_coefficient_famart);
		bigDecimalJavaToCobol(line.getFieldValue(TXM_MFAM), entity::get_taux_marque);
		integerJavaToCobol(line.getFieldValue(CTM_MFAM), entity::get_indic_taux_marque);
		integerJavaToCobol(line.getFieldValue(TVA_MFAM), entity::get_code_tva_famart);
		integerJavaToCobol(line.getFieldValue(TVA2_MFAM), entity::get_code_tva2_famart);
		integerJavaToCobol(line.getFieldValue(TVA3_MFAM), entity::get_code_tva3_famart);
		integerJavaToCobol(line.getFieldValue(IPO_MFAM), entity::get_indic_poids);
		integerJavaToCobol(line.getFieldValue(VOL_MFAM), entity::get_indic_volume);
		integerJavaToCobol(line.getFieldValue(FUA_MFAM), entity::get_indic_fua);
		bigDecimalJavaToCobol(line.getFieldValue(VAL_MFAM), entity::get_valeur_fua);
		integerJavaToCobol(line.getFieldValue(ITC_MFAM), entity::get_indic_tarif_cols);
		integerJavaToCobol(line.getFieldValue(TCF_MFAM), entity::get_coefficient_fua);
		bigDecimalJavaToCobol(line.getFieldValue(CFU_MFAM), entity::get_coeff_standard_fua);
		integerJavaToCobol(line.getFieldValue(REF_MFAM), entity::get_referenct_famart);
		integerJavaToCobol(line.getFieldValue(STO_MFAM), entity::get_indic_gest_stock);
		integerJavaToCobol(line.getFieldValue(PUS_MFAM), entity::get_indic_post_usine);
		integerJavaToCobol(line.getFieldValue(ETI_MFAM), entity::get_code_etiquette);
		integerJavaToCobol(line.getFieldValue(IRE_MFAM), entity::get_indic_remise_compl);
		integerJavaToCobol(line.getFieldValue(TAG_MFAM), entity::get_indic_soumis_agent);
		integerJavaToCobol(line.getFieldValue(IPX_MFAM), entity::get_indic_prix);
		stringJavaToCobol(line.getFieldValue(TETI_MFAM), entity::get_type_etiquette);
		integerJavaToCobol(line.getFieldValue(LOT_MFAM), entity::get_indic_gestion_lots);
		integerJavaToCobol(line.getFieldValue(PGV_MFAM), entity::get_no_poste_gest_vte);
		integerJavaToCobol(line.getFieldValue(TOT_MFAM), entity::get_total_sur_facture);
		integerJavaToCobol(line.getFieldValue(ITS_MFAM), entity::get_taxe_specif);
		integerJavaToCobol(line.getFieldValue(CRC_MFAM), entity::get_code_remise_client);
		bigDecimalJavaToCobol(line.getFieldValue(MMI_MFAM), entity::get_pct_marge_mini);
		bigDecimalJavaToCobol(line.getFieldValue(MMX_MFAM), entity::get_pct_marge_maxi);
		bigDecimalJavaToCobol(line.getFieldValue(MMP_MFAM), entity::get_pct_marge_plancher);
		bigDecimalJavaToCobol(line.getFieldValue(MIB_MFAM), entity::get_minoration_av_conc);
		bigDecimalJavaToCobol(line.getFieldValue(MAB_MFAM), entity::get_majoration_ss_conc);
		integerJavaToCobol(line.getFieldValue(WEB_MFAM), entity::get_indic_web);
		bigDecimalJavaToCobol(line.getFieldValue(COET_MFAM), entity::get_coet_mfam);
	}

}
