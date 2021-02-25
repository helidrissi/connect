package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.ArticleStock;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class ArticleStockHandler extends AbstractDataHandler<ArticleStock> implements IDataHandler {

	/**
	 * cobol: AGE-MASA, COD-MASA
	 * db:    code_agence, code_article
	 */
	private static final String CLE1_MASA = "CLE1-MASA";
	/**
	 * cobol: COD-MASA
	 * db:    code_article
	 */
	private static final String CLE3_MASA = "CLE3-MASA";
	/**
	 * cobol: AGE-MASA, CAS-MASA, COD-MASA
	 * db:    code_agence, casier, code_article
	 */
	private static final String CLE2_MASA = "CLE2-MASA";

	/** code_agence - Code agence (type cobol: XXX) */
	private static final String AGE_MASA = "AGE-MASA";
	/** code_article - Code article (type cobol: X(20)) */
	private static final String COD_MASA = "COD-MASA";
	/** casier - N° casier (type cobol: X(7)) */
	private static final String CAS_MASA = "CAS-MASA";
	/** gestion_stock - Gestion Stock : 1=oui   2=Non   9=Dépot-Vente (type cobol: 9) */
	private static final String STO_MASA = "STO-MASA";
	/** stock_mini - Mini (type cobol: 9(4)) */
	private static final String MIN_MASA = "MIN-MASA";
	/** stock_maxi - Maxi (type cobol: 9(5)) */
	private static final String MAX_MASA = "MAX-MASA";
	/** date_maj_minmax - Date actualisation Mini & Maxi (type cobol: 9(8)) */
	private static final String DAM_MASA = "DAM-MASA";
	/** observations - Observations (type cobol: X(60)) */
	private static final String OBS_MASA = "OBS-MASA";
	/** stock_initial - Stock initial en quantité (type cobol: S9(7)V99) */
	private static final String SIQ_MASA = "SIQ-MASA";
	/** stock_ini_valeur - Prix unitaire stock initial (type cobol: S9(7)V99) */
	private static final String SIP_MASA = "SIP-MASA";
	/** en_cde_cli - Qté en commande client (type cobol: S9(7)V99) */
	private static final String QCC_MASA = "QCC-MASA";
	/** en_cde_frn - Qté en commande fournisseur (type cobol: S9(7)V99) */
	private static final String QCF_MASA = "QCF-MASA";
	/** entrees_mois - Qtés entrées mois (type cobol: S9(7)V99) */
	private static final String EQM_MASA = "EQM-MASA";
	/** entrees_exercice - Qtés entrées exercice (type cobol: S9(7)V99) */
	private static final String EQE_MASA = "EQE-MASA";
	/** transferts_mois - Qtés entrées intenes mois (type cobol: S9(7)V99) */
	private static final String TQM_MASA = "TQM-MASA";
	/** transfert_exercice - Qtés entrées intenes exercice (type cobol: S9(7)V99) */
	private static final String TQE_MASA = "TQE-MASA";
	/** retroc_mois - Qtés sorties rétrocessions mois (type cobol: S9(7)V99) */
	private static final String RSQM_MASA = "RSQM-MASA";
	/** retroc_exercice - Qtés sorties rétrocessions exercice (type cobol: S9(7)V99) */
	private static final String RSQE_MASA = "RSQE-MASA";
	/** sorties_mois - Qtés sorties mois (type cobol: S9(7)V99) */
	private static final String SQM_MASA = "SQM-MASA";
	/** sorties_exercice - Qtés sorties exercice (type cobol: S9(7)V99) */
	private static final String SQE_MASA = "SQE-MASA";
	/** sorties_int_mois - Qtés sorties internes mois (type cobol: S9(7)V99) */
	private static final String IQM_MASA = "IQM-MASA";
	/** sorties_int_exo - Qtés sorties internes exercice (type cobol: S9(7)V99) */
	private static final String IQE_MASA = "IQE-MASA";
	/** ventes_manquees - Ventes manquées exercice (type cobol: 9(6)V99) */
	private static final String VTM_MASA = "VTM-MASA";
	/** stock_central - Stock central actuel (type cobol: S9(7)V99) */
	private static final String STC_MASA = "STC-MASA";
	/** stock_mois - Stock mois x 12 (1=M (type cobol: S9(7)V99) */
	private static final String QSTM_MASA = "QSTM-MASA";
	/** pamp_mois - PAMP ou PRMP selon valorisation stock x 12 mois (1&2 non utilisé) (type cobol: S9(7)V99) */
	private static final String PMPM_MASA = "PMPM-MASA";
	/** delai_livraison - Délai livraison x 5 dernières réception (type cobol: 999) */
	private static final String DEL_MASA = "DEL-MASA";
	/** date_1ere_entree - Date 1ère entrée en stock (type cobol: 9(8)) */
	private static final String DEN_MASA = "DEN-MASA";
	/** date_der_inventair - Date dernier inventaire (type cobol: 9(8)) */
	private static final String DDI_MASA = "DDI-MASA";
	/** pamp_actuel - PAMP actuel (type cobol: 9(7)V99) */
	private static final String PAMP_MASA = "PAMP-MASA";
	/** pamp_1 - PAMP mois -1 (type cobol: 9(7)V99) */
	private static final String PAMP1_MASA = "PAMP1-MASA";
	/** prmp_actuel - PRMP actuel (type cobol: 9(7)V99) */
	private static final String PRMP_MASA = "PRMP-MASA";
	/** prmp_1 - PRMP mois -1 (type cobol: 9(7)V99) */
	private static final String PRMP1_MASA = "PRMP1-MASA";
	/** depreciation - Montant dépréciation x 5 ans (type cobol: 9(8)V99) */
	private static final String DPV_MASA = "DPV-MASA";
	/** pourcent_deprec - % dépréciation x 5 ans (type cobol: 9(3)V99) */
	private static final String DPP_MASA = "DPP-MASA";
	/** indic_invtaire_sai - Indicateur inventaire initial saisi (1=oui (type cobol: 9) */
	private static final String IOE_MASA = "IOE-MASA";
	/** indic_reappro - Indicateur réapprovisionnement automatique:  0=Oui   1=Non   2=/Min Max/Formule Wilson  3=/Mini si Réappro sur conso (type cobol: 9) */
	private static final String REA_MASA = "REA-MASA";
	/** modele_etiquette - Modèle étiquettes (type cobol: 99) */
	private static final String ETI_MASA = "ETI-MASA";
	/** type_etiquette - Type Etiquette: Blanc= /Imprimante Laser   B= Imprimante Code Barre (type cobol: X) */
	private static final String TETI_MASA = "TETI-MASA";
	/** date_modif (type cobol: 9(8)) */
	private static final String DME_MASA = "DME-MASA";
	/** pinv_masa - Périodicité inventaire (Cf TABDIV) (type cobol: X) */
	private static final String PINV_MASA = "PINV-MASA";

	public ArticleStockHandler() throws IOException {
		super("mx/fd/MXARTSA.fd", "MXARTSA", fr.mistral.dataserver.model.mx.ArticleStock.class,
				"CLE1-MASA",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MASA, ImmutableList.<String>builder().add(AGE_MASA, COD_MASA).build())
					.put(CLE3_MASA, ImmutableList.<String>builder().add(COD_MASA).build())
					.put(CLE2_MASA, ImmutableList.<String>builder().add(AGE_MASA, CAS_MASA, COD_MASA).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<ArticleStock>>builder()
					.put(AGE_MASA, new EntityFieldMapper<>(AGE_MASA, "code_agence", ArticleStock::get_code_agence))
					.put(COD_MASA, new EntityFieldMapper<>(COD_MASA, "code_article", ArticleStock::get_code_article))
					.put(CAS_MASA, new EntityFieldMapper<>(CAS_MASA, "casier", ArticleStock::get_casier))
					.build());
	}

	@Override
	public String getName() {
		return "MXARTSA";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXARTSA2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, ArticleStock entity) {
		stringCobolToJava(line.getFieldValue(AGE_MASA), entity::set_code_agence);
		stringCobolToJava(line.getFieldValue(COD_MASA), entity::set_code_article);
		stringCobolToJava(line.getFieldValue(CAS_MASA), entity::set_casier);
		integerCobolToJava(line.getFieldValue(STO_MASA), entity::set_gestion_stock);
		integerCobolToJava(line.getFieldValue(MIN_MASA), entity::set_stock_mini);
		integerCobolToJava(line.getFieldValue(MAX_MASA), entity::set_stock_maxi);
		dateCobolToJava(line.getFieldValue(DAM_MASA), entity::set_date_maj_minmax);
		stringCobolToJava(line.getFieldValue(OBS_MASA), entity::set_observations);
		bigDecimalCobolToJava(line.getFieldValue(SIQ_MASA), entity::set_stock_initial);
		bigDecimalCobolToJava(line.getFieldValue(SIP_MASA), entity::set_stock_ini_valeur);
		bigDecimalCobolToJava(line.getFieldValue(QCC_MASA), entity::set_en_cde_cli);
		bigDecimalCobolToJava(line.getFieldValue(QCF_MASA), entity::set_en_cde_frn);
		bigDecimalCobolToJava(line.getFieldValue(EQM_MASA), entity::set_entrees_mois);
		bigDecimalCobolToJava(line.getFieldValue(EQE_MASA), entity::set_entrees_exercice);
		bigDecimalCobolToJava(line.getFieldValue(TQM_MASA), entity::set_transferts_mois);
		bigDecimalCobolToJava(line.getFieldValue(TQE_MASA), entity::set_transfert_exercice);
		bigDecimalCobolToJava(line.getFieldValue(RSQM_MASA), entity::set_retroc_mois);
		bigDecimalCobolToJava(line.getFieldValue(RSQE_MASA), entity::set_retroc_exercice);
		bigDecimalCobolToJava(line.getFieldValue(SQM_MASA), entity::set_sorties_mois);
		bigDecimalCobolToJava(line.getFieldValue(SQE_MASA), entity::set_sorties_exercice);
		bigDecimalCobolToJava(line.getFieldValue(IQM_MASA), entity::set_sorties_int_mois);
		bigDecimalCobolToJava(line.getFieldValue(IQE_MASA), entity::set_sorties_int_exo);
		bigDecimalCobolToJava(line.getFieldValue(VTM_MASA), entity::set_ventes_manquees);
		bigDecimalCobolToJava(line.getFieldValue(STC_MASA), entity::set_stock_central);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (0)"), entity::set_stock_mois_1);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (1)"), entity::set_stock_mois_2);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (2)"), entity::set_stock_mois_3);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (3)"), entity::set_stock_mois_4);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (4)"), entity::set_stock_mois_5);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (5)"), entity::set_stock_mois_6);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (6)"), entity::set_stock_mois_7);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (7)"), entity::set_stock_mois_8);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (8)"), entity::set_stock_mois_9);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (9)"), entity::set_stock_mois_10);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (10)"), entity::set_stock_mois_11);
		bigDecimalCobolToJava(line.getFieldValue(QSTM_MASA + " (11)"), entity::set_stock_mois_12);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (0)"), entity::set_pamp_mois_1);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (1)"), entity::set_pamp_mois_2);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (2)"), entity::set_pamp_mois_3);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (3)"), entity::set_pamp_mois_4);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (4)"), entity::set_pamp_mois_5);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (5)"), entity::set_pamp_mois_6);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (6)"), entity::set_pamp_mois_7);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (7)"), entity::set_pamp_mois_8);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (8)"), entity::set_pamp_mois_9);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (9)"), entity::set_pamp_mois_10);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (10)"), entity::set_pamp_mois_11);
		bigDecimalCobolToJava(line.getFieldValue(PMPM_MASA + " (11)"), entity::set_pamp_mois_12);
		integerCobolToJava(line.getFieldValue(DEL_MASA + " (0)"), entity::set_delai_livraison_1);
		integerCobolToJava(line.getFieldValue(DEL_MASA + " (1)"), entity::set_delai_livraison_2);
		integerCobolToJava(line.getFieldValue(DEL_MASA + " (2)"), entity::set_delai_livraison_3);
		integerCobolToJava(line.getFieldValue(DEL_MASA + " (3)"), entity::set_delai_livraison_4);
		integerCobolToJava(line.getFieldValue(DEL_MASA + " (4)"), entity::set_delai_livraison_5);
		dateCobolToJava(line.getFieldValue(DEN_MASA), entity::set_date_1ere_entree);
		dateCobolToJava(line.getFieldValue(DDI_MASA), entity::set_date_der_inventair);
		bigDecimalCobolToJava(line.getFieldValue(PAMP_MASA), entity::set_pamp_actuel);
		bigDecimalCobolToJava(line.getFieldValue(PAMP1_MASA), entity::set_pamp_1);
		bigDecimalCobolToJava(line.getFieldValue(PRMP_MASA), entity::set_prmp_actuel);
		bigDecimalCobolToJava(line.getFieldValue(PRMP1_MASA), entity::set_prmp_1);
		bigDecimalCobolToJava(line.getFieldValue(DPV_MASA + " (0)"), entity::set_depreciation_1);
		bigDecimalCobolToJava(line.getFieldValue(DPV_MASA + " (1)"), entity::set_depreciation_2);
		bigDecimalCobolToJava(line.getFieldValue(DPV_MASA + " (2)"), entity::set_depreciation_3);
		bigDecimalCobolToJava(line.getFieldValue(DPV_MASA + " (3)"), entity::set_depreciation_4);
		bigDecimalCobolToJava(line.getFieldValue(DPV_MASA + " (4)"), entity::set_depreciation_5);
		bigDecimalCobolToJava(line.getFieldValue(DPP_MASA + " (0)"), entity::set_pourcent_deprec_1);
		bigDecimalCobolToJava(line.getFieldValue(DPP_MASA + " (1)"), entity::set_pourcent_deprec_2);
		bigDecimalCobolToJava(line.getFieldValue(DPP_MASA + " (2)"), entity::set_pourcent_deprec_3);
		bigDecimalCobolToJava(line.getFieldValue(DPP_MASA + " (3)"), entity::set_pourcent_deprec_4);
		bigDecimalCobolToJava(line.getFieldValue(DPP_MASA + " (4)"), entity::set_pourcent_deprec_5);
		booleanCobolToJava(line.getFieldValue(IOE_MASA), entity::set_indic_invtaire_sai);
		integerCobolToJava(line.getFieldValue(REA_MASA), entity::set_indic_reappro);
		integerCobolToJava(line.getFieldValue(ETI_MASA), entity::set_modele_etiquette);
		stringCobolToJava(line.getFieldValue(TETI_MASA), entity::set_type_etiquette);
		dateCobolToJava(line.getFieldValue(DME_MASA), entity::set_date_modif);
		stringCobolToJava(line.getFieldValue(PINV_MASA), entity::set_pinv_masa);
	}

	@Override
	protected void mapJavaToCobol(ArticleStock entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(AGE_MASA), entity::get_code_agence);
		stringJavaToCobol(line.getFieldValue(COD_MASA), entity::get_code_article);
		stringJavaToCobol(line.getFieldValue(CAS_MASA), entity::get_casier);
		integerJavaToCobol(line.getFieldValue(STO_MASA), entity::get_gestion_stock);
		integerJavaToCobol(line.getFieldValue(MIN_MASA), entity::get_stock_mini);
		integerJavaToCobol(line.getFieldValue(MAX_MASA), entity::get_stock_maxi);
		dateJavaToCobol(line.getFieldValue(DAM_MASA), entity::get_date_maj_minmax);
		stringJavaToCobol(line.getFieldValue(OBS_MASA), entity::get_observations);
		bigDecimalJavaToCobol(line.getFieldValue(SIQ_MASA), entity::get_stock_initial);
		bigDecimalJavaToCobol(line.getFieldValue(SIP_MASA), entity::get_stock_ini_valeur);
		bigDecimalJavaToCobol(line.getFieldValue(QCC_MASA), entity::get_en_cde_cli);
		bigDecimalJavaToCobol(line.getFieldValue(QCF_MASA), entity::get_en_cde_frn);
		bigDecimalJavaToCobol(line.getFieldValue(EQM_MASA), entity::get_entrees_mois);
		bigDecimalJavaToCobol(line.getFieldValue(EQE_MASA), entity::get_entrees_exercice);
		bigDecimalJavaToCobol(line.getFieldValue(TQM_MASA), entity::get_transferts_mois);
		bigDecimalJavaToCobol(line.getFieldValue(TQE_MASA), entity::get_transfert_exercice);
		bigDecimalJavaToCobol(line.getFieldValue(RSQM_MASA), entity::get_retroc_mois);
		bigDecimalJavaToCobol(line.getFieldValue(RSQE_MASA), entity::get_retroc_exercice);
		bigDecimalJavaToCobol(line.getFieldValue(SQM_MASA), entity::get_sorties_mois);
		bigDecimalJavaToCobol(line.getFieldValue(SQE_MASA), entity::get_sorties_exercice);
		bigDecimalJavaToCobol(line.getFieldValue(IQM_MASA), entity::get_sorties_int_mois);
		bigDecimalJavaToCobol(line.getFieldValue(IQE_MASA), entity::get_sorties_int_exo);
		bigDecimalJavaToCobol(line.getFieldValue(VTM_MASA), entity::get_ventes_manquees);
		bigDecimalJavaToCobol(line.getFieldValue(STC_MASA), entity::get_stock_central);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (0)"), entity::get_stock_mois_1);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (1)"), entity::get_stock_mois_2);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (2)"), entity::get_stock_mois_3);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (3)"), entity::get_stock_mois_4);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (4)"), entity::get_stock_mois_5);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (5)"), entity::get_stock_mois_6);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (6)"), entity::get_stock_mois_7);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (7)"), entity::get_stock_mois_8);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (8)"), entity::get_stock_mois_9);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (9)"), entity::get_stock_mois_10);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (10)"), entity::get_stock_mois_11);
		bigDecimalJavaToCobol(line.getFieldValue(QSTM_MASA + " (11)"), entity::get_stock_mois_12);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (0)"), entity::get_pamp_mois_1);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (1)"), entity::get_pamp_mois_2);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (2)"), entity::get_pamp_mois_3);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (3)"), entity::get_pamp_mois_4);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (4)"), entity::get_pamp_mois_5);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (5)"), entity::get_pamp_mois_6);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (6)"), entity::get_pamp_mois_7);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (7)"), entity::get_pamp_mois_8);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (8)"), entity::get_pamp_mois_9);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (9)"), entity::get_pamp_mois_10);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (10)"), entity::get_pamp_mois_11);
		bigDecimalJavaToCobol(line.getFieldValue(PMPM_MASA + " (11)"), entity::get_pamp_mois_12);
		integerJavaToCobol(line.getFieldValue(DEL_MASA + " (0)"), entity::get_delai_livraison_1);
		integerJavaToCobol(line.getFieldValue(DEL_MASA + " (1)"), entity::get_delai_livraison_2);
		integerJavaToCobol(line.getFieldValue(DEL_MASA + " (2)"), entity::get_delai_livraison_3);
		integerJavaToCobol(line.getFieldValue(DEL_MASA + " (3)"), entity::get_delai_livraison_4);
		integerJavaToCobol(line.getFieldValue(DEL_MASA + " (4)"), entity::get_delai_livraison_5);
		dateJavaToCobol(line.getFieldValue(DEN_MASA), entity::get_date_1ere_entree);
		dateJavaToCobol(line.getFieldValue(DDI_MASA), entity::get_date_der_inventair);
		bigDecimalJavaToCobol(line.getFieldValue(PAMP_MASA), entity::get_pamp_actuel);
		bigDecimalJavaToCobol(line.getFieldValue(PAMP1_MASA), entity::get_pamp_1);
		bigDecimalJavaToCobol(line.getFieldValue(PRMP_MASA), entity::get_prmp_actuel);
		bigDecimalJavaToCobol(line.getFieldValue(PRMP1_MASA), entity::get_prmp_1);
		bigDecimalJavaToCobol(line.getFieldValue(DPV_MASA + " (0)"), entity::get_depreciation_1);
		bigDecimalJavaToCobol(line.getFieldValue(DPV_MASA + " (1)"), entity::get_depreciation_2);
		bigDecimalJavaToCobol(line.getFieldValue(DPV_MASA + " (2)"), entity::get_depreciation_3);
		bigDecimalJavaToCobol(line.getFieldValue(DPV_MASA + " (3)"), entity::get_depreciation_4);
		bigDecimalJavaToCobol(line.getFieldValue(DPV_MASA + " (4)"), entity::get_depreciation_5);
		bigDecimalJavaToCobol(line.getFieldValue(DPP_MASA + " (0)"), entity::get_pourcent_deprec_1);
		bigDecimalJavaToCobol(line.getFieldValue(DPP_MASA + " (1)"), entity::get_pourcent_deprec_2);
		bigDecimalJavaToCobol(line.getFieldValue(DPP_MASA + " (2)"), entity::get_pourcent_deprec_3);
		bigDecimalJavaToCobol(line.getFieldValue(DPP_MASA + " (3)"), entity::get_pourcent_deprec_4);
		bigDecimalJavaToCobol(line.getFieldValue(DPP_MASA + " (4)"), entity::get_pourcent_deprec_5);
		booleanJavaToCobol(line.getFieldValue(IOE_MASA), entity::get_indic_invtaire_sai);
		integerJavaToCobol(line.getFieldValue(REA_MASA), entity::get_indic_reappro);
		integerJavaToCobol(line.getFieldValue(ETI_MASA), entity::get_modele_etiquette);
		stringJavaToCobol(line.getFieldValue(TETI_MASA), entity::get_type_etiquette);
		dateJavaToCobol(line.getFieldValue(DME_MASA), entity::get_date_modif);
		stringJavaToCobol(line.getFieldValue(PINV_MASA), entity::get_pinv_masa);
	}

}
