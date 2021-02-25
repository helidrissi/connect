package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Article;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class ArticleHandler extends AbstractDataHandler<Article> implements IDataHandler {

	/**
	 * cobol: CO1-MART, CO2-MART
	 * db:    co1_mart, code_article_ss_id
	 */
	private static final String CLE1_MART = "CLE1-MART";
	/**
	 * cobol: DES-MART
	 * db:    designation_art
	 */
	private static final String CLE2_MART = "CLE2-MART";
	/**
	 * cobol: FOU-MART, REF-MART
	 * db:    code_fournisseur, reference_fou
	 */
	private static final String CLE3_MART = "CLE3-MART";
	/**
	 * cobol: REF-MART
	 * db:    reference_fou
	 */
	private static final String CLE8_MART = "CLE8-MART";
	/**
	 * cobol: GRA-MART, FAM-MART
	 * db:    code_famille_art, code_sous_fam_art
	 */
	private static final String CLE4_MART = "CLE4-MART";
	/**
	 * cobol: RFI-MART
	 * db:    reference_interne
	 */
	private static final String CLE6_MART = "CLE6-MART";
	/**
	 * cobol: RFN-MART
	 * db:    ref_normalisee
	 */
	private static final String CLE7_MART = "CLE7-MART";
	/**
	 * cobol: GCOD-MART
	 * db:    gencod
	 */
	private static final String CLE9_MART = "CLE9-MART";
	/**
	 * cobol: CO2-MART
	 * db:    code_article_ss_id
	 */
	private static final String CLE5_MART = "CLE5-MART";

	/** co1_mart - Identifiant (type cobol: X(4)) */
	private static final String CO1_MART = "CO1-MART";
	/** code_article_ss_id - Référence article (2ème partie du code (type cobol: X(16)) */
	private static final String CO2_MART = "CO2-MART";
	/** designation_art - Désignation (type cobol: X(40)) */
	private static final String DES_MART = "DES-MART";
	/** designation2_art - Complément désignation (type cobol: X(20)) */
	private static final String DE2_MART = "DE2-MART";
	/** indic_lib_modif - Désignation modifiable: 0=non 1=oui (type cobol: 9) */
	private static final String MOD_MART = "MOD-MART";
	/** code_fournisseur - Code fournisseur (type cobol: 9(6)) */
	private static final String FOU_MART = "FOU-MART";
	/** reference_fou - Référence fournisseur (type cobol: X(21)) */
	private static final String REF_MART = "REF-MART";
	/** code_remise_frn - Code remise fournisseur (type cobol: 99) */
	private static final String CRF_MART = "CRF-MART";
	/** code_famille_art - Code famille (type cobol: 99) */
	private static final String GRA_MART = "GRA-MART";
	/** code_sous_fam_art - Code sous-famille (type cobol: 99) */
	private static final String FAM_MART = "FAM-MART";
	/** reference_interne - Référence interne (type cobol: X(8)) */
	private static final String RFI_MART = "RFI-MART";
	/** ref_normalisee - Référence normalisée (type cobol: X(16)) */
	private static final String RFN_MART = "RFN-MART";
	/** gencod - Code Gencod (Code Barre (type cobol: 9(13)) */
	private static final String GCOD_MART = "GCOD-MART";
	/** code_politique_px - Politique de prix: 1=Coef/PA   2=Coef/PTF  3=PV - remise   4=PA et PV   5=PR x TxM   6=PxTarif + PA (type cobol: 9) */
	private static final String POL_MART = "POL-MART";
	/** code_devise - Code devise (type cobol: XXX) */
	private static final String DEV_MART = "DEV-MART";
	/** prix_tarif_devise - Prix tarif fournisseur en devise (sauf politique 4 PA + PV : prix achat en devise) (type cobol: 9(8)V99) */
	private static final String PDE_MART = "PDE-MART";
	/** tarif_fournisseur - Prix tarif fournisseu (type cobol: 9(7)V99) */
	private static final String PTF_MART = "PTF-MART";
	/** remise_fournisseur - Remise fournisseur (type cobol: S99V99) */
	private static final String REM_MART = "REM-MART";
	/** prix_achat_fou - Prix d'achat net (type cobol: 9(7)V99) */
	private static final String PAC_MART = "PAC-MART";
	/** prix_revient_indus - Prix de revient industriel (spécif FWK (type cobol: 9(7)V99) */
	private static final String PRI_MART = "PRI-MART";
	/** prix_achat_tarif - Prix d'achat tarif (si Politique de prix 6 (type cobol: 9(7)V99) */
	private static final String PAT_MART = "PAT-MART";
	/** coefficient - Coefficient multiplicateur (type cobol: 99V999) */
	private static final String COE_MART = "COE-MART";
	/** prix_vente_ht - Prix de vente HT (type cobol: 9(7)V99) */
	private static final String PVT_MART = "PVT-MART";
	/** prix_vente_ttc - Prix de vente TTC (type cobol: 9(7)V99) */
	private static final String TTC_MART = "TTC-MART";
	/** indic_fua - Indicateur FUA:  0= Sans    1=Montant   2=% sur PA (type cobol: 9) */
	private static final String IFA_MART = "IFA-MART";
	/** pourcentage_fua - % FUA (IFA = 2 (type cobol: 99V99) */
	private static final String PFA_MART = "PFA-MART";
	/** coef_sur_fua - Coefficient sur FUA (type cobol: 9V999) */
	private static final String CFU_MART = "CFU-MART";
	/** montant_fua - Montant frais unitaires d'approche (FUA (type cobol: 9(6)V99) */
	private static final String FUA_MART = "FUA-MART";
	/** prix_au_xxx - Unité de prix (Exemple: Prix au 100  UPR=100 (type cobol: 9(5)) */
	private static final String UPR_MART = "UPR-MART";
	/** coeff_sur_px_rev - Coeff PR / PA (si pol = 5 (type cobol: 9V999) */
	private static final String CPR_MART = "CPR-MART";
	/** taux_de_marque - Taux de marque (Pol. Prix = 5 (type cobol: 99V99) */
	private static final String TXM_MART = "TXM-MART";
	/** code_remise_client - Code remise client (type cobol: 999) */
	private static final String CRC_MART = "CRC-MART";
	/** indic_saisonnier - Indicateur saisonnier: 0=non 1=oui (type cobol: 9) */
	private static final String SAI_MART = "SAI-MART";
	/** conditiont_achat - Conditionnement Achat (type cobol: 9(5)) */
	private static final String UAC_MART = "UAC-MART";
	/** date_maj_tarif - Date mise à jour tarif (type cobol: 9(8)) */
	private static final String DAT_MART = "DAT-MART";
	/** indic_multi_appro - Indicateur multi-appro: 0=non 1=oui (type cobol: 9) */
	private static final String MUL_MART = "MUL-MART";
	/** poids - Poids unitaire (type cobol: 9(5)V999) */
	private static final String POI_MART = "POI-MART";
	/** code_politique_vte - Politique Vente: 0=non concerné 1=avec concurrence 9 (ou 2)=sans concurrence (type cobol: 9) */
	private static final String ICO_MART = "ICO-MART";
	/** indic_document - Indicateur documentation: 0=non 1oui (type cobol: 9) */
	private static final String DOC_MART = "DOC-MART";
	/** indic_edit_tarif - Indicateur tarif: 0=édité sur tarif    1=non édité    2=interdit à la vente (type cobol: 9) */
	private static final String TAR_MART = "TAR-MART";
	/** indic_tarif_col - Indicateur tarif Vente à colonnes: 0=non 1=remise sur tarif général 2=prix net (type cobol: 9) */
	private static final String ITC_MART = "ITC-MART";
	/** borne_tarif_col - Borne supérieure TC (type cobol: 9(5)) */
	private static final String BSU_MART = "BSU-MART";
	/** remise_tarif_col - Remise TC (type cobol: 99V99) */
	private static final String RTG_MART = "RTG-MART";
	/** pv_tarif_col - Prix de vente net TC (type cobol: 9(7)V99) */
	private static final String PVN_MART = "PVN-MART";
	/** unite_achat - Code unité d'achat (type cobol: 99) */
	private static final String CUA_MART = "CUA-MART";
	/** unite_vente - Code unité de vente (type cobol: 99) */
	private static final String CUV_MART = "CUV-MART";
	/** nombre_uv_par_ua - Nombre d'unités de vente par unité d'achat (type cobol: 9(4)V9(4)) */
	private static final String NUU_MART = "NUU-MART";
	/** indic_composition - Indicateur composition: 0=non 1=ensemble fixe 2=ensemble variable 3=kit (type cobol: 9) */
	private static final String INO_MART = "INO-MART";
	/** code_marque - Code marque (type cobol: XXXX) */
	private static final String MAR_MART = "MAR-MART";
	/** type - Type (type cobol: X(16)) */
	private static final String TYP_MART = "TYP-MART";
	/** volume - Volume (type cobol: 9(4)V99) */
	private static final String VOL_MART = "VOL-MART";
	/** indic_moteur - Indicateur existence moteur : 0=non 1=oui (type cobol: 9) */
	private static final String IMO_MART = "IMO-MART";
	/** marque_moteur - Marque moteur (type cobol: XXXX) */
	private static final String MARM_MART = "MARM-MART";
	/** modele_moteur - Modèle moteur (type cobol: X(14)) */
	private static final String MODM_MART = "MODM-MART";
	/** type_moteur - Type moteur (type cobol: X(16)) */
	private static final String TYPM_MART = "TYPM-MART";
	/** edition_compo_bl - Indicateur édition composition sur BL: 1=oui 2=non (type cobol: 9) */
	private static final String EDB_MART = "EDB-MART";
	/** edition_compo_fact - Indicateur édition composition sur facture: 1=oui 2=non (type cobol: 9) */
	private static final String EDF_MART = "EDF-MART";
	/** dest_loc_ou_vte - Destination: 0=vente  1=location   2=vente + location (type cobol: 9) */
	private static final String ILV_MART = "ILV-MART";
	/** code_nature_ori - Nature: 0=origine 1=adaptable  2=occasion (type cobol: 9) */
	private static final String NAT_MART = "NAT-MART";
	/** date_creation - Date création (type cobol: 9(8)) */
	private static final String DCR_MART = "DCR-MART";
	/** code_suppression - Code annulation: 0=non  1oui (type cobol: 9) */
	private static final String CANN_MART = "CANN-MART";
	/** auteur_suppression - Auteur annulation (initiales (type cobol: X(4)) */
	private static final String IANN_MART = "IANN-MART";
	/** date_suppression - Date  Annulation (type cobol: 9(8)) */
	private static final String DANN_MART = "DANN-MART";
	/** no_identif_cee - N  identification CEE (type cobol: X(10)) */
	private static final String TVA_MART = "TVA-MART";
	/** mode_calcul_px_ens - Pour les ensembles, Mode calcul Prix = 0=Total composant  1=Prix fixe (type cobol: 9) */
	private static final String MOP_MART = "MOP-MART";
	/** code_caract_gras - Gras sur export Word ou indic nouvel article Landa (type cobol: 9) */
	private static final String STGRA_MART = "STGRA-MART";
	/** code_caract_italic - Italique sur export Word ou indice article LLLL Landa (type cobol: 9) */
	private static final String STITA_MART = "STITA-MART";
	/** code_caract_soulig - Souligné sur export Word (type cobol: 9) */
	private static final String STSOU_MART = "STSOU-MART";
	/** auteur_modif - Auteur modification (type cobol: X(4)) */
	private static final String IMOD_MART = "IMOD-MART";
	/** date_modif - Date modification (type cobol: 9(8)) */
	private static final String DMOD_MART = "DMOD-MART";
	/** here_modif - Heure modification (type cobol: 99V99) */
	private static final String HMOD_MART = "HMOD-MART";
	/** auteur_creation - Auteur création (type cobol: X(4)) */
	private static final String ICR_MART = "ICR-MART";
	/** achat_interdit - Achat Interdit: 0=Non 1=Oui (type cobol: 9) */
	private static final String ACHI_MART = "ACHI-MART";
	/** indic_pv_saisi - Indicateur Prix de Vente saisi 0=Non 1=H.T 2=TTC (type cobol: 9) */
	private static final String ISPV_MART = "ISPV-MART";
	/** pays - Code pays d'origine (/déclaration DEB) (type cobol: XXX) */
	private static final String PAY_MART = "PAY-MART";
	/** no_societe - Société d'appartenance de la pièce (ICA avec Réf) (type cobol: 9(4)) */
	private static final String SOC_MART = "SOC-MART";
	/** webtop - Autorisé sur Webtop (1=non) (type cobol: 9) */
	private static final String WEB_MART = "WEB-MART";
	/** conditiont_vente - Conditionnement Vente (type cobol: 9(5)) */
	private static final String UVE_MART = "UVE-MART";

	public ArticleHandler() throws IOException {
		super("mx/fd/MXART.fd", "MXART", fr.mistral.dataserver.model.mx.Article.class,
				"CLE1-MART",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MART, ImmutableList.<String>builder().add(CO1_MART, CO2_MART).build())
					.put(CLE2_MART, ImmutableList.<String>builder().add(DES_MART).build())
					.put(CLE3_MART, ImmutableList.<String>builder().add(FOU_MART, REF_MART).build())
					.put(CLE8_MART, ImmutableList.<String>builder().add(REF_MART).build())
					.put(CLE4_MART, ImmutableList.<String>builder().add(GRA_MART, FAM_MART).build())
					.put(CLE6_MART, ImmutableList.<String>builder().add(RFI_MART).build())
					.put(CLE7_MART, ImmutableList.<String>builder().add(RFN_MART).build())
					.put(CLE9_MART, ImmutableList.<String>builder().add(GCOD_MART).build())
					.put(CLE5_MART, ImmutableList.<String>builder().add(CO2_MART).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Article>>builder()
					.put(CO1_MART, new EntityFieldMapper<>(CO1_MART, "co1_mart", Article::get_co1_mart))
					.put(CO2_MART, new EntityFieldMapper<>(CO2_MART, "code_article_ss_id", Article::get_code_article_ss_id))
					.put(DES_MART, new EntityFieldMapper<>(DES_MART, "designation_art", Article::get_designation_art))
					.put(FOU_MART, new EntityFieldMapper<>(FOU_MART, "code_fournisseur", Article::get_code_fournisseur))
					.put(REF_MART, new EntityFieldMapper<>(REF_MART, "reference_fou", Article::get_reference_fou))
					.put(GRA_MART, new EntityFieldMapper<>(GRA_MART, "code_famille_art", Article::get_code_famille_art))
					.put(FAM_MART, new EntityFieldMapper<>(FAM_MART, "code_sous_fam_art", Article::get_code_sous_fam_art))
					.put(RFI_MART, new EntityFieldMapper<>(RFI_MART, "reference_interne", Article::get_reference_interne))
					.put(RFN_MART, new EntityFieldMapper<>(RFN_MART, "ref_normalisee", Article::get_ref_normalisee))
					.put(GCOD_MART, new EntityFieldMapper<>(GCOD_MART, "gencod", Article::get_gencod))
					.build());
	}

	@Override
	public String getName() {
		return "MXART";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXART2", "MXART3");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Article entity) {
		stringCobolToJava(line.getFieldValue(CO1_MART), entity::set_co1_mart);
		stringCobolToJava(line.getFieldValue(CO2_MART), entity::set_code_article_ss_id);
		stringCobolToJava(line.getFieldValue(DES_MART), entity::set_designation_art);
		stringCobolToJava(line.getFieldValue(DE2_MART), entity::set_designation2_art);
		integerCobolToJava(line.getFieldValue(MOD_MART), entity::set_indic_lib_modif);
		longCobolToJava(line.getFieldValue(FOU_MART), entity::set_code_fournisseur);
		stringCobolToJava(line.getFieldValue(REF_MART), entity::set_reference_fou);
		integerCobolToJava(line.getFieldValue(CRF_MART), entity::set_code_remise_frn);
		integerCobolToJava(line.getFieldValue(GRA_MART), entity::set_code_famille_art);
		integerCobolToJava(line.getFieldValue(FAM_MART), entity::set_code_sous_fam_art);
		stringCobolToJava(line.getFieldValue(RFI_MART), entity::set_reference_interne);
		stringCobolToJava(line.getFieldValue(RFN_MART), entity::set_ref_normalisee);
		longCobolToJava(line.getFieldValue(GCOD_MART), entity::set_gencod);
		integerCobolToJava(line.getFieldValue(POL_MART), entity::set_code_politique_px);
		stringCobolToJava(line.getFieldValue(DEV_MART), entity::set_code_devise);
		bigDecimalCobolToJava(line.getFieldValue(PDE_MART), entity::set_prix_tarif_devise);
		bigDecimalCobolToJava(line.getFieldValue(PTF_MART), entity::set_tarif_fournisseur);
		bigDecimalCobolToJava(line.getFieldValue(REM_MART), entity::set_remise_fournisseur);
		bigDecimalCobolToJava(line.getFieldValue(PAC_MART), entity::set_prix_achat_fou);
		bigDecimalCobolToJava(line.getFieldValue(PRI_MART), entity::set_prix_revient_indus);
		bigDecimalCobolToJava(line.getFieldValue(PAT_MART), entity::set_prix_achat_tarif);
		bigDecimalCobolToJava(line.getFieldValue(COE_MART), entity::set_coefficient);
		bigDecimalCobolToJava(line.getFieldValue(PVT_MART), entity::set_prix_vente_ht);
		bigDecimalCobolToJava(line.getFieldValue(TTC_MART), entity::set_prix_vente_ttc);
		integerCobolToJava(line.getFieldValue(IFA_MART), entity::set_indic_fua);
		bigDecimalCobolToJava(line.getFieldValue(PFA_MART), entity::set_pourcentage_fua);
		bigDecimalCobolToJava(line.getFieldValue(CFU_MART), entity::set_coef_sur_fua);
		bigDecimalCobolToJava(line.getFieldValue(FUA_MART), entity::set_montant_fua);
		integerCobolToJava(line.getFieldValue(UPR_MART), entity::set_prix_au_xxx);
		bigDecimalCobolToJava(line.getFieldValue(CPR_MART), entity::set_coeff_sur_px_rev);
		bigDecimalCobolToJava(line.getFieldValue(TXM_MART), entity::set_taux_de_marque);
		integerCobolToJava(line.getFieldValue(CRC_MART), entity::set_code_remise_client);
		integerCobolToJava(line.getFieldValue(SAI_MART), entity::set_indic_saisonnier);
		integerCobolToJava(line.getFieldValue(UAC_MART), entity::set_conditiont_achat);
		dateCobolToJava(line.getFieldValue(DAT_MART), entity::set_date_maj_tarif);
		integerCobolToJava(line.getFieldValue(MUL_MART), entity::set_indic_multi_appro);
		bigDecimalCobolToJava(line.getFieldValue(POI_MART), entity::set_poids);
		integerCobolToJava(line.getFieldValue(ICO_MART), entity::set_code_politique_vte);
		integerCobolToJava(line.getFieldValue(DOC_MART), entity::set_indic_document);
		integerCobolToJava(line.getFieldValue(TAR_MART), entity::set_indic_edit_tarif);
		integerCobolToJava(line.getFieldValue(ITC_MART), entity::set_indic_tarif_col);
		integerCobolToJava(line.getFieldValue(BSU_MART + " (0)"), entity::set_borne_tarif_col_1);
		integerCobolToJava(line.getFieldValue(BSU_MART + " (1)"), entity::set_borne_tarif_col_2);
		integerCobolToJava(line.getFieldValue(BSU_MART + " (2)"), entity::set_borne_tarif_col_3);
		integerCobolToJava(line.getFieldValue(BSU_MART + " (3)"), entity::set_borne_tarif_col_4);
		integerCobolToJava(line.getFieldValue(BSU_MART + " (4)"), entity::set_borne_tarif_col_5);
		integerCobolToJava(line.getFieldValue(BSU_MART + " (5)"), entity::set_borne_tarif_col_6);
		bigDecimalCobolToJava(line.getFieldValue(RTG_MART + " (0)"), entity::set_remise_tarif_col_1);
		bigDecimalCobolToJava(line.getFieldValue(RTG_MART + " (1)"), entity::set_remise_tarif_col_2);
		bigDecimalCobolToJava(line.getFieldValue(RTG_MART + " (2)"), entity::set_remise_tarif_col_3);
		bigDecimalCobolToJava(line.getFieldValue(RTG_MART + " (3)"), entity::set_remise_tarif_col_4);
		bigDecimalCobolToJava(line.getFieldValue(RTG_MART + " (4)"), entity::set_remise_tarif_col_5);
		bigDecimalCobolToJava(line.getFieldValue(RTG_MART + " (5)"), entity::set_remise_tarif_col_6);
		bigDecimalCobolToJava(line.getFieldValue(PVN_MART + " (0)"), entity::set_pv_tarif_col_1);
		bigDecimalCobolToJava(line.getFieldValue(PVN_MART + " (1)"), entity::set_pv_tarif_col_2);
		bigDecimalCobolToJava(line.getFieldValue(PVN_MART + " (2)"), entity::set_pv_tarif_col_3);
		bigDecimalCobolToJava(line.getFieldValue(PVN_MART + " (3)"), entity::set_pv_tarif_col_4);
		bigDecimalCobolToJava(line.getFieldValue(PVN_MART + " (4)"), entity::set_pv_tarif_col_5);
		bigDecimalCobolToJava(line.getFieldValue(PVN_MART + " (5)"), entity::set_pv_tarif_col_6);
		integerCobolToJava(line.getFieldValue(CUA_MART), entity::set_unite_achat);
		integerCobolToJava(line.getFieldValue(CUV_MART), entity::set_unite_vente);
		bigDecimalCobolToJava(line.getFieldValue(NUU_MART), entity::set_nombre_uv_par_ua);
		integerCobolToJava(line.getFieldValue(INO_MART), entity::set_indic_composition);
		stringCobolToJava(line.getFieldValue(MAR_MART), entity::set_code_marque);
		stringCobolToJava(line.getFieldValue(TYP_MART), entity::set_type);
		bigDecimalCobolToJava(line.getFieldValue(VOL_MART), entity::set_volume);
		integerCobolToJava(line.getFieldValue(IMO_MART), entity::set_indic_moteur);
		stringCobolToJava(line.getFieldValue(MARM_MART), entity::set_marque_moteur);
		stringCobolToJava(line.getFieldValue(MODM_MART), entity::set_modele_moteur);
		stringCobolToJava(line.getFieldValue(TYPM_MART), entity::set_type_moteur);
		integerCobolToJava(line.getFieldValue(EDB_MART), entity::set_edition_compo_bl);
		integerCobolToJava(line.getFieldValue(EDF_MART), entity::set_edition_compo_fact);
		integerCobolToJava(line.getFieldValue(ILV_MART), entity::set_dest_loc_ou_vte);
		integerCobolToJava(line.getFieldValue(NAT_MART), entity::set_code_nature_ori);
		dateCobolToJava(line.getFieldValue(DCR_MART), entity::set_date_creation);
		integerCobolToJava(line.getFieldValue(CANN_MART), entity::set_code_suppression);
		stringCobolToJava(line.getFieldValue(IANN_MART), entity::set_auteur_suppression);
		dateCobolToJava(line.getFieldValue(DANN_MART), entity::set_date_suppression);
		stringCobolToJava(line.getFieldValue(TVA_MART), entity::set_no_identif_cee);
		integerCobolToJava(line.getFieldValue(MOP_MART), entity::set_mode_calcul_px_ens);
		integerCobolToJava(line.getFieldValue(STGRA_MART), entity::set_code_caract_gras);
		integerCobolToJava(line.getFieldValue(STITA_MART), entity::set_code_caract_italic);
		integerCobolToJava(line.getFieldValue(STSOU_MART), entity::set_code_caract_soulig);
		stringCobolToJava(line.getFieldValue(IMOD_MART), entity::set_auteur_modif);
		dateCobolToJava(line.getFieldValue(DMOD_MART), entity::set_date_modif);
		bigDecimalCobolToJava(line.getFieldValue(HMOD_MART), entity::set_here_modif);
		stringCobolToJava(line.getFieldValue(ICR_MART), entity::set_auteur_creation);
		integerCobolToJava(line.getFieldValue(ACHI_MART), entity::set_achat_interdit);
		integerCobolToJava(line.getFieldValue(ISPV_MART), entity::set_indic_pv_saisi);
		stringCobolToJava(line.getFieldValue(PAY_MART), entity::set_pays);
		integerCobolToJava(line.getFieldValue(SOC_MART), entity::set_no_societe);
		integerCobolToJava(line.getFieldValue(WEB_MART), entity::set_webtop);
		integerCobolToJava(line.getFieldValue(UVE_MART), entity::set_conditiont_vente);
	}

	@Override
	protected void mapJavaToCobol(Article entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(CO1_MART), entity::get_co1_mart);
		stringJavaToCobol(line.getFieldValue(CO2_MART), entity::get_code_article_ss_id);
		stringJavaToCobol(line.getFieldValue(DES_MART), entity::get_designation_art);
		stringJavaToCobol(line.getFieldValue(DE2_MART), entity::get_designation2_art);
		integerJavaToCobol(line.getFieldValue(MOD_MART), entity::get_indic_lib_modif);
		longJavaToCobol(line.getFieldValue(FOU_MART), entity::get_code_fournisseur);
		stringJavaToCobol(line.getFieldValue(REF_MART), entity::get_reference_fou);
		integerJavaToCobol(line.getFieldValue(CRF_MART), entity::get_code_remise_frn);
		integerJavaToCobol(line.getFieldValue(GRA_MART), entity::get_code_famille_art);
		integerJavaToCobol(line.getFieldValue(FAM_MART), entity::get_code_sous_fam_art);
		stringJavaToCobol(line.getFieldValue(RFI_MART), entity::get_reference_interne);
		stringJavaToCobol(line.getFieldValue(RFN_MART), entity::get_ref_normalisee);
		longJavaToCobol(line.getFieldValue(GCOD_MART), entity::get_gencod);
		integerJavaToCobol(line.getFieldValue(POL_MART), entity::get_code_politique_px);
		stringJavaToCobol(line.getFieldValue(DEV_MART), entity::get_code_devise);
		bigDecimalJavaToCobol(line.getFieldValue(PDE_MART), entity::get_prix_tarif_devise);
		bigDecimalJavaToCobol(line.getFieldValue(PTF_MART), entity::get_tarif_fournisseur);
		bigDecimalJavaToCobol(line.getFieldValue(REM_MART), entity::get_remise_fournisseur);
		bigDecimalJavaToCobol(line.getFieldValue(PAC_MART), entity::get_prix_achat_fou);
		bigDecimalJavaToCobol(line.getFieldValue(PRI_MART), entity::get_prix_revient_indus);
		bigDecimalJavaToCobol(line.getFieldValue(PAT_MART), entity::get_prix_achat_tarif);
		bigDecimalJavaToCobol(line.getFieldValue(COE_MART), entity::get_coefficient);
		bigDecimalJavaToCobol(line.getFieldValue(PVT_MART), entity::get_prix_vente_ht);
		bigDecimalJavaToCobol(line.getFieldValue(TTC_MART), entity::get_prix_vente_ttc);
		integerJavaToCobol(line.getFieldValue(IFA_MART), entity::get_indic_fua);
		bigDecimalJavaToCobol(line.getFieldValue(PFA_MART), entity::get_pourcentage_fua);
		bigDecimalJavaToCobol(line.getFieldValue(CFU_MART), entity::get_coef_sur_fua);
		bigDecimalJavaToCobol(line.getFieldValue(FUA_MART), entity::get_montant_fua);
		integerJavaToCobol(line.getFieldValue(UPR_MART), entity::get_prix_au_xxx);
		bigDecimalJavaToCobol(line.getFieldValue(CPR_MART), entity::get_coeff_sur_px_rev);
		bigDecimalJavaToCobol(line.getFieldValue(TXM_MART), entity::get_taux_de_marque);
		integerJavaToCobol(line.getFieldValue(CRC_MART), entity::get_code_remise_client);
		integerJavaToCobol(line.getFieldValue(SAI_MART), entity::get_indic_saisonnier);
		integerJavaToCobol(line.getFieldValue(UAC_MART), entity::get_conditiont_achat);
		dateJavaToCobol(line.getFieldValue(DAT_MART), entity::get_date_maj_tarif);
		integerJavaToCobol(line.getFieldValue(MUL_MART), entity::get_indic_multi_appro);
		bigDecimalJavaToCobol(line.getFieldValue(POI_MART), entity::get_poids);
		integerJavaToCobol(line.getFieldValue(ICO_MART), entity::get_code_politique_vte);
		integerJavaToCobol(line.getFieldValue(DOC_MART), entity::get_indic_document);
		integerJavaToCobol(line.getFieldValue(TAR_MART), entity::get_indic_edit_tarif);
		integerJavaToCobol(line.getFieldValue(ITC_MART), entity::get_indic_tarif_col);
		integerJavaToCobol(line.getFieldValue(BSU_MART + " (0)"), entity::get_borne_tarif_col_1);
		integerJavaToCobol(line.getFieldValue(BSU_MART + " (1)"), entity::get_borne_tarif_col_2);
		integerJavaToCobol(line.getFieldValue(BSU_MART + " (2)"), entity::get_borne_tarif_col_3);
		integerJavaToCobol(line.getFieldValue(BSU_MART + " (3)"), entity::get_borne_tarif_col_4);
		integerJavaToCobol(line.getFieldValue(BSU_MART + " (4)"), entity::get_borne_tarif_col_5);
		integerJavaToCobol(line.getFieldValue(BSU_MART + " (5)"), entity::get_borne_tarif_col_6);
		bigDecimalJavaToCobol(line.getFieldValue(RTG_MART + " (0)"), entity::get_remise_tarif_col_1);
		bigDecimalJavaToCobol(line.getFieldValue(RTG_MART + " (1)"), entity::get_remise_tarif_col_2);
		bigDecimalJavaToCobol(line.getFieldValue(RTG_MART + " (2)"), entity::get_remise_tarif_col_3);
		bigDecimalJavaToCobol(line.getFieldValue(RTG_MART + " (3)"), entity::get_remise_tarif_col_4);
		bigDecimalJavaToCobol(line.getFieldValue(RTG_MART + " (4)"), entity::get_remise_tarif_col_5);
		bigDecimalJavaToCobol(line.getFieldValue(RTG_MART + " (5)"), entity::get_remise_tarif_col_6);
		bigDecimalJavaToCobol(line.getFieldValue(PVN_MART + " (0)"), entity::get_pv_tarif_col_1);
		bigDecimalJavaToCobol(line.getFieldValue(PVN_MART + " (1)"), entity::get_pv_tarif_col_2);
		bigDecimalJavaToCobol(line.getFieldValue(PVN_MART + " (2)"), entity::get_pv_tarif_col_3);
		bigDecimalJavaToCobol(line.getFieldValue(PVN_MART + " (3)"), entity::get_pv_tarif_col_4);
		bigDecimalJavaToCobol(line.getFieldValue(PVN_MART + " (4)"), entity::get_pv_tarif_col_5);
		bigDecimalJavaToCobol(line.getFieldValue(PVN_MART + " (5)"), entity::get_pv_tarif_col_6);
		integerJavaToCobol(line.getFieldValue(CUA_MART), entity::get_unite_achat);
		integerJavaToCobol(line.getFieldValue(CUV_MART), entity::get_unite_vente);
		bigDecimalJavaToCobol(line.getFieldValue(NUU_MART), entity::get_nombre_uv_par_ua);
		integerJavaToCobol(line.getFieldValue(INO_MART), entity::get_indic_composition);
		stringJavaToCobol(line.getFieldValue(MAR_MART), entity::get_code_marque);
		stringJavaToCobol(line.getFieldValue(TYP_MART), entity::get_type);
		bigDecimalJavaToCobol(line.getFieldValue(VOL_MART), entity::get_volume);
		integerJavaToCobol(line.getFieldValue(IMO_MART), entity::get_indic_moteur);
		stringJavaToCobol(line.getFieldValue(MARM_MART), entity::get_marque_moteur);
		stringJavaToCobol(line.getFieldValue(MODM_MART), entity::get_modele_moteur);
		stringJavaToCobol(line.getFieldValue(TYPM_MART), entity::get_type_moteur);
		integerJavaToCobol(line.getFieldValue(EDB_MART), entity::get_edition_compo_bl);
		integerJavaToCobol(line.getFieldValue(EDF_MART), entity::get_edition_compo_fact);
		integerJavaToCobol(line.getFieldValue(ILV_MART), entity::get_dest_loc_ou_vte);
		integerJavaToCobol(line.getFieldValue(NAT_MART), entity::get_code_nature_ori);
		dateJavaToCobol(line.getFieldValue(DCR_MART), entity::get_date_creation);
		integerJavaToCobol(line.getFieldValue(CANN_MART), entity::get_code_suppression);
		stringJavaToCobol(line.getFieldValue(IANN_MART), entity::get_auteur_suppression);
		dateJavaToCobol(line.getFieldValue(DANN_MART), entity::get_date_suppression);
		stringJavaToCobol(line.getFieldValue(TVA_MART), entity::get_no_identif_cee);
		integerJavaToCobol(line.getFieldValue(MOP_MART), entity::get_mode_calcul_px_ens);
		integerJavaToCobol(line.getFieldValue(STGRA_MART), entity::get_code_caract_gras);
		integerJavaToCobol(line.getFieldValue(STITA_MART), entity::get_code_caract_italic);
		integerJavaToCobol(line.getFieldValue(STSOU_MART), entity::get_code_caract_soulig);
		stringJavaToCobol(line.getFieldValue(IMOD_MART), entity::get_auteur_modif);
		dateJavaToCobol(line.getFieldValue(DMOD_MART), entity::get_date_modif);
		bigDecimalJavaToCobol(line.getFieldValue(HMOD_MART), entity::get_here_modif);
		stringJavaToCobol(line.getFieldValue(ICR_MART), entity::get_auteur_creation);
		integerJavaToCobol(line.getFieldValue(ACHI_MART), entity::get_achat_interdit);
		integerJavaToCobol(line.getFieldValue(ISPV_MART), entity::get_indic_pv_saisi);
		stringJavaToCobol(line.getFieldValue(PAY_MART), entity::get_pays);
		integerJavaToCobol(line.getFieldValue(SOC_MART), entity::get_no_societe);
		integerJavaToCobol(line.getFieldValue(WEB_MART), entity::get_webtop);
		integerJavaToCobol(line.getFieldValue(UVE_MART), entity::get_conditiont_vente);
	}

}
