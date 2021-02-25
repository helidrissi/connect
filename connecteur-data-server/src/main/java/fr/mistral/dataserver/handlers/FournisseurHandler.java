package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Fournisseur;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class FournisseurHandler extends AbstractDataHandler<Fournisseur> implements IDataHandler {

	/**
	 * cobol: COD-MFOU
	 * db:    code_fournisseur
	 */
	private static final String CLE1_MFOU = "CLE1-MFOU";
	/**
	 * cobol: RAI-MFOU
	 * db:    raison_sociale_fou
	 */
	private static final String CLE2_MFOU = "CLE2-MFOU";
	/**
	 * cobol: TEL-MFOU
	 * db:    no_tel_fou
	 */
	private static final String CLE4_MFOU = "CLE4-MFOU";
	/**
	 * cobol: CPT-MFOU
	 * db:    no_cpte_comptable
	 */
	private static final String CLE5_MFOU = "CLE5-MFOU";
	/**
	 * cobol: IDE-MFOU
	 * db:    identifiant_art
	 */
	private static final String CLE3_MFOU = "CLE3-MFOU";

	/** code_fournisseur - Code fournisseur (type cobol: 9(6)) */
	private static final String COD_MFOU = "COD-MFOU";
	/** indic_type_fou - Type: 0=national  1=export (type cobol: 9(1)) */
	private static final String TYP_MFOU = "TYP-MFOU";
	/** type_fournisseur - Type client (type cobol: 9(1)) */
	private static final String IDV_MFOU = "IDV-MFOU";
	/** code_pays - code pays (type cobol: X(3)) */
	private static final String PAY_MFOU = "PAY-MFOU";
	/** code_devise - Code devise (type cobol: X(3)) */
	private static final String DEV_MFOU = "DEV-MFOU";
	/** code_langue - Code langue (type cobol: 9(2)) */
	private static final String LAN_MFOU = "LAN-MFOU";
	/** titre_social - Titre social (type cobol: 9(2)) */
	private static final String TIT_MFOU = "TIT-MFOU";
	/** raison_sociale_fou - Raison sociale (type cobol: X(30)) */
	private static final String RAI_MFOU = "RAI-MFOU";
	/** adresse_fou - Nom (type cobol: X(75)) */
	private static final String ADR_MFOU = "ADR-MFOU";
	/** code_postal_fou - Code postal (type cobol: X(8)) */
	private static final String POS_MFOU = "POS-MFOU";
	/** ville_fou - Ville (type cobol: X(25)) */
	private static final String VIL_MFOU = "VIL-MFOU";
	/** no_tel_fou - N° téléphone (type cobol: X(12)) */
	private static final String TEL_MFOU = "TEL-MFOU";
	/** no_tel2_fou (type cobol: X(12)) */
	private static final String TE2_MFOU = "TE2-MFOU";
	/** no_fax_fou - N° fax (type cobol: X(12)) */
	private static final String FAX_MFOU = "FAX-MFOU";
	/** code_agence - Agence de relation (type cobol: X(3)) */
	private static final String AGE_MFOU = "AGE-MFOU";
	/** code_activite - Code activité (type cobol: X(2)) */
	private static final String ACT_MFOU = "ACT-MFOU";
	/** no_cpte_comptable - N° de compte comptable (type cobol: 9(6)) */
	private static final String CPT_MFOU = "CPT-MFOU";
	/** notre_no_compte - Notre n° de compte (type cobol: X(15)) */
	private static final String NNC_MFOU = "NNC-MFOU";
	/** identifiant_art - Identifiant articles (type cobol: X(4)) */
	private static final String IDE_MFOU = "IDE-MFOU";
	/** code_nature_fou - Nature: 0=articles 1=matériels 2=articles et matériels 9=divers (type cobol: 9(1)) */
	private static final String NTF_MFOU = "NTF-MFOU";
	/** no_societe_liee - N° société liée (type cobol: 9(4)) */
	private static final String STE_MFOU = "STE-MFOU";
	/** no_client_lie - N° client lié (type cobol: 9(6)) */
	private static final String CLI_MFOU = "CLI-MFOU";
	/** cnuf - CNUF (type cobol: 9(9)) */
	private static final String CNUF_MFOU = "CNUF-MFOU";
	/** cours_de_reference - Cours devise (type cobol: 9(5)V99999) */
	private static final String CRS_MFOU = "CRS-MFOU";
	/** indic_conf_loueur - Si activité location: confrère loueur: 0=non 1=oui (type cobol: 9) */
	private static final String CSL_MFOU = "CSL-MFOU";
	/** der_no_mat_sousloc - Dernier n° matériel de sous-location (type cobol: 9(5)) */
	private static final String MSL_MFOU = "MSL-MFOU";
	/** code_cli_facture - N° client facturé/refacturation remises  - ou bien Code client facturé/Ganrantie (type cobol: 9(6)) */
	private static final String CLF_MFOU = "CLF-MFOU";
	/** pourcent_frais_deb - % frais/DEB (si module DEB (type cobol: S99V99) */
	private static final String PFT_MFOU = "PFT-MFOU";
	/** code_poltq_px_art - Politique de prix: 1=PA x Coef 2=PTF x Coef 3=PV - R 4=PA et PV 5=PR / TxM 6=P Tarif+PA (type cobol: 9) */
	private static final String POP_MFOU = "POP-MFOU";
	/** code_grille_remise - Indicateur grille de remise: 0=non 1=oui (type cobol: 9) */
	private static final String GRI_MFOU = "GRI-MFOU";
	/** code_type_cde_stan - Type de commande standard (fichier TYPCDF (type cobol: X) */
	private static final String TCR_MFOU = "TCR-MFOU";
	/** code_paie_fou_div - Mode paiement / Frn Divers (type cobol: 99) */
	private static final String PAD_MFOU = "PAD-MFOU";
	/** code_ech_fou_div - Code échéance / Frn Divers (type cobol: 9) */
	private static final String ECD_MFOU = "ECD-MFOU";
	/** code_terme_fou_div - Code terme /Frn divers (type cobol: 9) */
	private static final String TED_MFOU = "TED-MFOU";
	/** indic_etiquetage - Etiquetage: 0=non 1=oui (type cobol: 9) */
	private static final String ETI_MFOU = "ETI-MFOU";
	/** object_art_an_n - Objectif /Achat articles année N (type cobol: 9(9)) */
	private static final String OAA_MFOU = "OAA-MFOU";
	/** object_art_an_n_1 - Objectif /Achats Articles  année N-1 (type cobol: 9(9)) */
	private static final String OA1_MFOU = "OA1-MFOU";
	/** periodicite_cde - Périodicité de commande en jours (type cobol: 999) */
	private static final String PCD_MFOU = "PCD-MFOU";
	/** observation1 - Observation 1 (type cobol: X(60)) */
	private static final String OBS_MFOU = "OBS-MFOU";
	/** observation2 - Observation 2 (type cobol: X(60)) */
	private static final String OB2_MFOU = "OB2-MFOU";
	/** code_confidentiel - Code confidentiel fournisseur (type cobol: X(15)) */
	private static final String ISP_MFOU = "ISP-MFOU";
	/** code_poltq_px_mat - Politique de prix matériels: 1=PA x Coef 2=PTF x Coef 3=PV - R 4=PA et PV 5=PR / TxM 6=P Tarif+PA (type cobol: 9) */
	private static final String PPM_MFOU = "PPM-MFOU";
	/** rem_standard_mat - Remise standard matériels (type cobol: 99V99) */
	private static final String RSM_MFOU = "RSM-MFOU";
	/** delai_livr_moyen - Délai livraison moyen matériels (type cobol: 9(3)) */
	private static final String DLM_MFOU = "DLM-MFOU";
	/** code_base_franco - Base du franco: 1=en monnaie interne 2=en devise 3=en kg 4=en quantité (type cobol: 9) */
	private static final String BFM_MFOU = "BFM-MFOU";
	/** cde_mini_franco - Montant minimum commande pour franco (type cobol: 9(6)) */
	private static final String MFM_MFOU = "MFM-MFOU";
	/** code_port - Port: 0=franco 1=avancé 2=dû (type cobol: 9) */
	private static final String CPM_MFOU = "CPM-MFOU";
	/** pourcent_port_fact - % port sur facture (type cobol: 99V99) */
	private static final String PMA_MFOU = "PMA-MFOU";
	/** mode_paiement_mat - Mode paiement matériel (type cobol: 99) */
	private static final String PAM_MFOU = "PAM-MFOU";
	/** code_echeance_mat - Code échéance matériel (type cobol: 9) */
	private static final String ECM_MFOU = "ECM-MFOU";
	/** code_terme_mat - Code terme matériel (type cobol: 9) */
	private static final String TEM_MFOU = "TEM-MFOU";
	/** observation_mat - Observation matériel (type cobol: X(60)) */
	private static final String OBM_MFOU = "OBM-MFOU";
	/** object_mat_an_n - Objectif matériel année N (type cobol: 9(9)) */
	private static final String OMA_MFOU = "OMA-MFOU";
	/** object_mat_an_n_1 - Objectif matériel année N-1 (type cobol: 9(9)) */
	private static final String OM1_MFOU = "OM1-MFOU";
	/** code_numero_dg - Garantie: 0=sans 1=numérotation manuelle 2=numérotation automatique (type cobol: 9) */
	private static final String NDG_MFOU = "NDG-MFOU";
	/** delai_stand_accord - Délai standard accord garantie (type cobol: 999) */
	private static final String DLA_MFOU = "DLA-MFOU";
	/** code_model_bord_dg - Model bordereau DG (type cobol: 99) */
	private static final String MBG_MFOU = "MBG-MFOU";
	/** code_base_pieces - Base remboursement pièces: 1=PTF 2=PA 3=PV 4=PR 5=PRI 6= (type cobol: 9) */
	private static final String BRP_MFOU = "BRP-MFOU";
	/** remboursement_mo - Montant remboursement MO (type cobol: 999V99) */
	private static final String BRM_MFOU = "BRM-MFOU";
	/** commentaire_dg - Commentaire/DG (type cobol: X(60)) */
	private static final String COM_MFOU = "COM-MFOU";
	/** code_type_rembours - Type remboursement pièces: 0=échange ou avoir  1=avoir  2=échange  3=facture manuelle  4=Facture générée après l'accord (type cobol: 9) */
	private static final String TRB_MFOU = "TRB-MFOU";
	/** no_concessionnaire - N° concessionnaire / DG (type cobol: X(10)) */
	private static final String CON_MFOU = "CON-MFOU";
	/** indi_justif_no_fac - Justification du n° facture sur DG: 1=oui 2=non (type cobol: 9) */
	private static final String FDG_MFOU = "FDG-MFOU";
	/** pa_seuil_fac_oblig - PA à partir duquel le n° de facture est obligatoire (type cobol: 9(5)) */
	private static final String MDG_MFOU = "MDG-MFOU";
	/** pourcent_dg - Si Garantie MOXY(04): % DG (type cobol: 99) */
	private static final String PDG_MFOU = "PDG-MFOU";
	/** der_no_imprime - Dernier n° imprimé (type cobol: 999999) */
	private static final String NIG_MFOU = "NIG-MFOU";
	/** coefficient_pieces - Coef appliqué sur les pièces (type cobol: S9V99) */
	private static final String COE_MFOU = "COE-MFOU";
	/** code_reg_rem_piece - Régime remise : 1=Aucun 2=Fixe 3=Type de commande (cf REG (type cobol: 9(1)) */
	private static final String IREG_MFOU = "IREG-MFOU";
	/** code_type_cde_piec - Code type de commande (TYPCDF) pièces (type cobol: X) */
	private static final String REG_MFOU = "REG-MFOU";
	/** pourcent_rem_piece - % remise si  REG=9 (type cobol: S99V99) */
	private static final String REM_MFOU = "REM-MFOU";
	/** indic_infos_specif - Info spécifique DG (type cobol: 9) */
	private static final String IDG_MFOU = "IDG-MFOU";
	/** lib_infos_specif - Libellé info spécifique (type cobol: X(11)) */
	private static final String LDG_MFOU = "LDG-MFOU";
	/** indic_accord_gtie - Accord de garantie: 0=à saisir 1=direct (type cobol: 9) */
	private static final String ACA_MFOU = "ACA-MFOU";
	/** code_base_divers - Barème remboursement divers: 0=saisi 1=PV 2=PR (type cobol: 9) */
	private static final String BRD_MFOU = "BRD-MFOU";
	/** code_reg_rem_div - Régime remise : 1=Aucun 2=Fixe 3=Type de commande (cf RGD (type cobol: 9(1)) */
	private static final String IRGD_MFOU = "IRGD-MFOU";
	/** code_type_cde_div - Code type de commande (TYPCDF) divers (type cobol: X) */
	private static final String RGD_MFOU = "RGD-MFOU";
	/** pourcent_rem_div - % remise si  RGD=9 (type cobol: S99V99) */
	private static final String RMD_MFOU = "RMD-MFOU";
	/** coefficient_divers - Coef appliqué sur le divers (type cobol: S9V99) */
	private static final String CED_MFOU = "CED-MFOU";
	/** code_acheteur - Code prestation sous-traitance si confrère (type cobol: X(4)) */
	private static final String PST_MFOU = "PST-MFOU";
	/** indic_fournisseur - Indicateur Fournisseur: 0=non concerné 1=Promodis 2=Centradis 3=Socodicor (type cobol: 9) */
	private static final String IPR_MFOU = "IPR-MFOU";
	/** no_fou_article - N° de fournisseur articles chez Promodis/Centradis/Soco (type cobol: 9(6)) */
	private static final String FOP_MFOU = "FOP-MFOU";
	/** no_fou_materiel - N° de fournisseur matériel chez Promodis/Centradis/Soco (type cobol: 9(6)) */
	private static final String FMP_MFOU = "FMP-MFOU";
	/** code_suppression - Indicateur fournisseur annulé (type cobol: 9(1)) */
	private static final String CANN_MFOU = "CANN-MFOU";
	/** date_suppression - Date d'annulation (type cobol: 9(8)) */
	private static final String DANN_MFOU = "DANN-MFOU";
	/** auteur_suppression - Initiales de l'utilisateur qui a annulé (type cobol: X(4)) */
	private static final String IANN_MFOU = "IANN-MFOU";
	/** forf_port_materiel - Forfait Port / Achat Matériel (type cobol: 9(5)) */
	private static final String FPO_MFOU = "FPO-MFOU";
	/** code_ape_old - Code APE (type cobol: X(4)) */
	private static final String OLDAPE_MFOU = "OLDAPE-MFOU";
	/** code_siret (type cobol: X(14)) */
	private static final String SIR_MFOU = "SIR-MFOU";
	/** code_rubriq_specif - Préfixe code rubrique VOLVO (type cobol: X(5)) */
	private static final String PRUB_MFOU = "PRUB-MFOU";
	/** code_ape - Code APE (type cobol: X(5)) */
	private static final String APE_MFOU = "APE-MFOU";
	/** auteur_creation - Identifiant Création Fournisseur (type cobol: X(4)) */
	private static final String ICRE_MFOU = "ICRE-MFOU";
	/** date_creation - Date Création Fournisseur (type cobol: 9(8)) */
	private static final String DCRE_MFOU = "DCRE-MFOU";
	/** auteur_modif - Identifiant Modification Fournisseur (type cobol: X(4)) */
	private static final String IMOD_MFOU = "IMOD-MFOU";
	/** date_modif - Date Modification Fournisseur (type cobol: 9(8)) */
	private static final String DME_MFOU = "DME-MFOU";
	/** chiffrage_bc_art - Bon de commande article chiffré  (1=Avec prix   2=Sans Prix  3=Avec Prix Brut) (type cobol: 9) */
	private static final String CHF_MFOU = "CHF-MFOU";
	/** chiffrage_bc_mat - Bon de commande matériel chiffré  (1=Avec prix   2=Sans Prix  3=Avec Prix Brut) (type cobol: 9) */
	private static final String CHFM_MFOU = "CHFM-MFOU";
	/** affect_fiscale - Affectation fiscale : comptes 1 à 4 (1 à 3 Soumis 1 à 3, 4 = Exonéré) (type cobol: 9) */
	private static final String AFC_MFOU = "AFC-MFOU";
	/** env_mfou - Envoi commande article (type cobol: X) */
	private static final String ENV_MFOU = "ENV-MFOU";
	/** exp_mfou - Transport commande article (type cobol: X) */
	private static final String EXP_MFOU = "EXP-MFOU";
	/** envm_mfou - Envoi commande matériel (type cobol: X) */
	private static final String ENVM_MFOU = "ENVM-MFOU";
	/** expm_mfou - Transport commande matériel (type cobol: X) */
	private static final String EXPM_MFOU = "EXPM-MFOU";
	/** typcnh_mfou - Type de commande affecté au fournisseur : D ou N (PRIM CNH) (type cobol: X) */
	private static final String TYPCNH_MFOU = "TYPCNH-MFOU";
	/** typmdi_mfou - = M si Fournisseur affecté à MDI AGCO  / = V si Fournisseur affecté à MMI VOLVO  /  = m si Fournisseur affecté à MDI TEREX (type cobol: X) */
	private static final String TYPMDI_MFOU = "TYPMDI-MFOU";
	/** indic_fournisseur_materiel - Indicateur Fournisseur Matériel: 0=non concerné 1=Promodis 2=Centradis 3=Socodicor (type cobol: 9) */
	private static final String IPRM_MFOU = "IPRM-MFOU";
	/** clr_mfou - Classement articles édition commande par référence (type cobol: 9) */
	private static final String CLR_MFOU = "CLR-MFOU";
	/** ccw_mfou - Commande client Web séparée (Agrizone) (type cobol: 9) */
	private static final String CCW_MFOU = "CCW-MFOU";
	/** pow_mfou - Poids mini pour commande client Web séparée (Agrizone) (type cobol: 9(3)) */
	private static final String POW_MFOU = "POW-MFOU";
	/** livw_mfou - Livraison obligatoire chez Agrizone (type cobol: 9) */
	private static final String LIVW_MFOU = "LIVW-MFOU";
	/** numa_mfou - Numérotation automatique des articles (déconstruction) (type cobol: 9) */
	private static final String NUMA_MFOU = "NUMA-MFOU";
	/** srp_mfou - Sans référencement produit (type cobol: 9) */
	private static final String SRP_MFOU = "SRP-MFOU";
	/** rgpd_mfou - Statut RGPD : 0 = Consentement, 1 = Droit à la portabilité, 2 = Retrait consentement, 3 = Droit à l'oubli (type cobol: 9) */
	private static final String RGPD_MFOU = "RGPD-MFOU";
	/** dvt_mfou - Date validité du tarif (suite MTF) (type cobol: 9(8)) */
	private static final String DVT_MFOU = "DVT-MFOU";

	public FournisseurHandler() throws IOException {
		super("mx/fd/MXFOU.fd", "MXFOU", fr.mistral.dataserver.model.mx.Fournisseur.class,
				"CLE1-MFOU",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MFOU, ImmutableList.<String>builder().add(COD_MFOU).build())
					.put(CLE2_MFOU, ImmutableList.<String>builder().add(RAI_MFOU).build())
					.put(CLE4_MFOU, ImmutableList.<String>builder().add(TEL_MFOU).build())
					.put(CLE5_MFOU, ImmutableList.<String>builder().add(CPT_MFOU).build())
					.put(CLE3_MFOU, ImmutableList.<String>builder().add(IDE_MFOU).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Fournisseur>>builder()
					.put(COD_MFOU, new EntityFieldMapper<>(COD_MFOU, "code_fournisseur", Fournisseur::get_code_fournisseur))
					.put(RAI_MFOU, new EntityFieldMapper<>(RAI_MFOU, "raison_sociale_fou", Fournisseur::get_raison_sociale_fou))
					.put(TEL_MFOU, new EntityFieldMapper<>(TEL_MFOU, "no_tel_fou", Fournisseur::get_no_tel_fou))
					.put(CPT_MFOU, new EntityFieldMapper<>(CPT_MFOU, "no_cpte_comptable", Fournisseur::get_no_cpte_comptable))
					.put(IDE_MFOU, new EntityFieldMapper<>(IDE_MFOU, "identifiant_art", Fournisseur::get_identifiant_art))
					.build());
	}

	@Override
	public String getName() {
		return "MXFOU";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Fournisseur entity) {
		longCobolToJava(line.getFieldValue(COD_MFOU), entity::set_code_fournisseur);
		integerCobolToJava(line.getFieldValue(TYP_MFOU), entity::set_indic_type_fou);
		integerCobolToJava(line.getFieldValue(IDV_MFOU), entity::set_type_fournisseur);
		stringCobolToJava(line.getFieldValue(PAY_MFOU), entity::set_code_pays);
		stringCobolToJava(line.getFieldValue(DEV_MFOU), entity::set_code_devise);
		integerCobolToJava(line.getFieldValue(LAN_MFOU), entity::set_code_langue);
		integerCobolToJava(line.getFieldValue(TIT_MFOU), entity::set_titre_social);
		stringCobolToJava(line.getFieldValue(RAI_MFOU), entity::set_raison_sociale_fou);
		stringCobolToJava(line.getFieldValue(ADR_MFOU), entity::set_adresse_fou);
		stringCobolToJava(line.getFieldValue(POS_MFOU), entity::set_code_postal_fou);
		stringCobolToJava(line.getFieldValue(VIL_MFOU), entity::set_ville_fou);
		stringCobolToJava(line.getFieldValue(TEL_MFOU), entity::set_no_tel_fou);
		stringCobolToJava(line.getFieldValue(TE2_MFOU), entity::set_no_tel2_fou);
		stringCobolToJava(line.getFieldValue(FAX_MFOU), entity::set_no_fax_fou);
		stringCobolToJava(line.getFieldValue(AGE_MFOU), entity::set_code_agence);
		stringCobolToJava(line.getFieldValue(ACT_MFOU), entity::set_code_activite);
		longCobolToJava(line.getFieldValue(CPT_MFOU), entity::set_no_cpte_comptable);
		stringCobolToJava(line.getFieldValue(NNC_MFOU), entity::set_notre_no_compte);
		stringCobolToJava(line.getFieldValue(IDE_MFOU), entity::set_identifiant_art);
		integerCobolToJava(line.getFieldValue(NTF_MFOU), entity::set_code_nature_fou);
		integerCobolToJava(line.getFieldValue(STE_MFOU), entity::set_no_societe_liee);
		longCobolToJava(line.getFieldValue(CLI_MFOU), entity::set_no_client_lie);
		longCobolToJava(line.getFieldValue(CNUF_MFOU), entity::set_cnuf);
		bigDecimalCobolToJava(line.getFieldValue(CRS_MFOU), entity::set_cours_de_reference);
		booleanCobolToJava(line.getFieldValue(CSL_MFOU), entity::set_indic_conf_loueur);
		integerCobolToJava(line.getFieldValue(MSL_MFOU), entity::set_der_no_mat_sousloc);
		longCobolToJava(line.getFieldValue(CLF_MFOU), entity::set_code_cli_facture);
		bigDecimalCobolToJava(line.getFieldValue(PFT_MFOU), entity::set_pourcent_frais_deb);
		integerCobolToJava(line.getFieldValue(POP_MFOU), entity::set_code_poltq_px_art);
		booleanCobolToJava(line.getFieldValue(GRI_MFOU), entity::set_code_grille_remise);
		stringCobolToJava(line.getFieldValue(TCR_MFOU), entity::set_code_type_cde_stan);
		integerCobolToJava(line.getFieldValue(PAD_MFOU), entity::set_code_paie_fou_div);
		integerCobolToJava(line.getFieldValue(ECD_MFOU), entity::set_code_ech_fou_div);
		integerCobolToJava(line.getFieldValue(TED_MFOU), entity::set_code_terme_fou_div);
		booleanCobolToJava(line.getFieldValue(ETI_MFOU), entity::set_indic_etiquetage);
		longCobolToJava(line.getFieldValue(OAA_MFOU), entity::set_object_art_an_n);
		longCobolToJava(line.getFieldValue(OA1_MFOU), entity::set_object_art_an_n_1);
		integerCobolToJava(line.getFieldValue(PCD_MFOU), entity::set_periodicite_cde);
		stringCobolToJava(line.getFieldValue(OBS_MFOU), entity::set_observation1);
		stringCobolToJava(line.getFieldValue(OB2_MFOU), entity::set_observation2);
		stringCobolToJava(line.getFieldValue(ISP_MFOU), entity::set_code_confidentiel);
		integerCobolToJava(line.getFieldValue(PPM_MFOU), entity::set_code_poltq_px_mat);
		bigDecimalCobolToJava(line.getFieldValue(RSM_MFOU), entity::set_rem_standard_mat);
		integerCobolToJava(line.getFieldValue(DLM_MFOU), entity::set_delai_livr_moyen);
		integerCobolToJava(line.getFieldValue(BFM_MFOU), entity::set_code_base_franco);
		longCobolToJava(line.getFieldValue(MFM_MFOU), entity::set_cde_mini_franco);
		integerCobolToJava(line.getFieldValue(CPM_MFOU), entity::set_code_port);
		bigDecimalCobolToJava(line.getFieldValue(PMA_MFOU), entity::set_pourcent_port_fact);
		integerCobolToJava(line.getFieldValue(PAM_MFOU), entity::set_mode_paiement_mat);
		integerCobolToJava(line.getFieldValue(ECM_MFOU), entity::set_code_echeance_mat);
		integerCobolToJava(line.getFieldValue(TEM_MFOU), entity::set_code_terme_mat);
		stringCobolToJava(line.getFieldValue(OBM_MFOU + " (0)"), entity::set_observation_mat_1);
		stringCobolToJava(line.getFieldValue(OBM_MFOU + " (1)"), entity::set_observation_mat_2);
		longCobolToJava(line.getFieldValue(OMA_MFOU), entity::set_object_mat_an_n);
		longCobolToJava(line.getFieldValue(OM1_MFOU), entity::set_object_mat_an_n_1);
		integerCobolToJava(line.getFieldValue(NDG_MFOU), entity::set_code_numero_dg);
		integerCobolToJava(line.getFieldValue(DLA_MFOU), entity::set_delai_stand_accord);
		integerCobolToJava(line.getFieldValue(MBG_MFOU), entity::set_code_model_bord_dg);
		integerCobolToJava(line.getFieldValue(BRP_MFOU), entity::set_code_base_pieces);
		bigDecimalCobolToJava(line.getFieldValue(BRM_MFOU), entity::set_remboursement_mo);
		stringCobolToJava(line.getFieldValue(COM_MFOU), entity::set_commentaire_dg);
		integerCobolToJava(line.getFieldValue(TRB_MFOU), entity::set_code_type_rembours);
		stringCobolToJava(line.getFieldValue(CON_MFOU), entity::set_no_concessionnaire);
		integerCobolToJava(line.getFieldValue(FDG_MFOU), entity::set_indi_justif_no_fac);
		integerCobolToJava(line.getFieldValue(MDG_MFOU), entity::set_pa_seuil_fac_oblig);
		integerCobolToJava(line.getFieldValue(PDG_MFOU), entity::set_pourcent_dg);
		longCobolToJava(line.getFieldValue(NIG_MFOU), entity::set_der_no_imprime);
		bigDecimalCobolToJava(line.getFieldValue(COE_MFOU), entity::set_coefficient_pieces);
		integerCobolToJava(line.getFieldValue(IREG_MFOU), entity::set_code_reg_rem_piece);
		stringCobolToJava(line.getFieldValue(REG_MFOU), entity::set_code_type_cde_piec);
		bigDecimalCobolToJava(line.getFieldValue(REM_MFOU), entity::set_pourcent_rem_piece);
		integerCobolToJava(line.getFieldValue(IDG_MFOU), entity::set_indic_infos_specif);
		stringCobolToJava(line.getFieldValue(LDG_MFOU), entity::set_lib_infos_specif);
		integerCobolToJava(line.getFieldValue(ACA_MFOU), entity::set_indic_accord_gtie);
		integerCobolToJava(line.getFieldValue(BRD_MFOU), entity::set_code_base_divers);
		integerCobolToJava(line.getFieldValue(IRGD_MFOU), entity::set_code_reg_rem_div);
		stringCobolToJava(line.getFieldValue(RGD_MFOU), entity::set_code_type_cde_div);
		bigDecimalCobolToJava(line.getFieldValue(RMD_MFOU), entity::set_pourcent_rem_div);
		bigDecimalCobolToJava(line.getFieldValue(CED_MFOU), entity::set_coefficient_divers);
		stringCobolToJava(line.getFieldValue(PST_MFOU), entity::set_code_acheteur);
		integerCobolToJava(line.getFieldValue(IPR_MFOU), entity::set_indic_fournisseur);
		longCobolToJava(line.getFieldValue(FOP_MFOU), entity::set_no_fou_article);
		longCobolToJava(line.getFieldValue(FMP_MFOU), entity::set_no_fou_materiel);
		integerCobolToJava(line.getFieldValue(CANN_MFOU), entity::set_code_suppression);
		dateCobolToJava(line.getFieldValue(DANN_MFOU), entity::set_date_suppression);
		stringCobolToJava(line.getFieldValue(IANN_MFOU), entity::set_auteur_suppression);
		integerCobolToJava(line.getFieldValue(FPO_MFOU), entity::set_forf_port_materiel);
		stringCobolToJava(line.getFieldValue(OLDAPE_MFOU), entity::set_code_ape_old);
		stringCobolToJava(line.getFieldValue(SIR_MFOU), entity::set_code_siret);
		stringCobolToJava(line.getFieldValue(PRUB_MFOU), entity::set_code_rubriq_specif);
		stringCobolToJava(line.getFieldValue(APE_MFOU), entity::set_code_ape);
		stringCobolToJava(line.getFieldValue(ICRE_MFOU), entity::set_auteur_creation);
		dateCobolToJava(line.getFieldValue(DCRE_MFOU), entity::set_date_creation);
		stringCobolToJava(line.getFieldValue(IMOD_MFOU), entity::set_auteur_modif);
		dateCobolToJava(line.getFieldValue(DME_MFOU), entity::set_date_modif);
		integerCobolToJava(line.getFieldValue(CHF_MFOU), entity::set_chiffrage_bc_art);
		integerCobolToJava(line.getFieldValue(CHFM_MFOU), entity::set_chiffrage_bc_mat);
		integerCobolToJava(line.getFieldValue(AFC_MFOU), entity::set_affect_fiscale);
		stringCobolToJava(line.getFieldValue(ENV_MFOU), entity::set_env_mfou);
		stringCobolToJava(line.getFieldValue(EXP_MFOU), entity::set_exp_mfou);
		stringCobolToJava(line.getFieldValue(ENVM_MFOU), entity::set_envm_mfou);
		stringCobolToJava(line.getFieldValue(EXPM_MFOU), entity::set_expm_mfou);
		stringCobolToJava(line.getFieldValue(TYPCNH_MFOU), entity::set_typcnh_mfou);
		stringCobolToJava(line.getFieldValue(TYPMDI_MFOU), entity::set_typmdi_mfou);
		integerCobolToJava(line.getFieldValue(IPRM_MFOU), entity::set_indic_fournisseur_materiel);
		integerCobolToJava(line.getFieldValue(CLR_MFOU), entity::set_clr_mfou);
		integerCobolToJava(line.getFieldValue(CCW_MFOU), entity::set_ccw_mfou);
		integerCobolToJava(line.getFieldValue(POW_MFOU), entity::set_pow_mfou);
		integerCobolToJava(line.getFieldValue(LIVW_MFOU), entity::set_livw_mfou);
		integerCobolToJava(line.getFieldValue(NUMA_MFOU), entity::set_numa_mfou);
		integerCobolToJava(line.getFieldValue(SRP_MFOU), entity::set_srp_mfou);
		integerCobolToJava(line.getFieldValue(RGPD_MFOU), entity::set_rgpd_mfou);
		dateCobolToJava(line.getFieldValue(DVT_MFOU), entity::set_dvt_mfou);
	}

	@Override
	protected void mapJavaToCobol(Fournisseur entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(COD_MFOU), entity::get_code_fournisseur);
		integerJavaToCobol(line.getFieldValue(TYP_MFOU), entity::get_indic_type_fou);
		integerJavaToCobol(line.getFieldValue(IDV_MFOU), entity::get_type_fournisseur);
		stringJavaToCobol(line.getFieldValue(PAY_MFOU), entity::get_code_pays);
		stringJavaToCobol(line.getFieldValue(DEV_MFOU), entity::get_code_devise);
		integerJavaToCobol(line.getFieldValue(LAN_MFOU), entity::get_code_langue);
		integerJavaToCobol(line.getFieldValue(TIT_MFOU), entity::get_titre_social);
		stringJavaToCobol(line.getFieldValue(RAI_MFOU), entity::get_raison_sociale_fou);
		stringJavaToCobol(line.getFieldValue(ADR_MFOU), entity::get_adresse_fou);
		stringJavaToCobol(line.getFieldValue(POS_MFOU), entity::get_code_postal_fou);
		stringJavaToCobol(line.getFieldValue(VIL_MFOU), entity::get_ville_fou);
		stringJavaToCobol(line.getFieldValue(TEL_MFOU), entity::get_no_tel_fou);
		stringJavaToCobol(line.getFieldValue(TE2_MFOU), entity::get_no_tel2_fou);
		stringJavaToCobol(line.getFieldValue(FAX_MFOU), entity::get_no_fax_fou);
		stringJavaToCobol(line.getFieldValue(AGE_MFOU), entity::get_code_agence);
		stringJavaToCobol(line.getFieldValue(ACT_MFOU), entity::get_code_activite);
		longJavaToCobol(line.getFieldValue(CPT_MFOU), entity::get_no_cpte_comptable);
		stringJavaToCobol(line.getFieldValue(NNC_MFOU), entity::get_notre_no_compte);
		stringJavaToCobol(line.getFieldValue(IDE_MFOU), entity::get_identifiant_art);
		integerJavaToCobol(line.getFieldValue(NTF_MFOU), entity::get_code_nature_fou);
		integerJavaToCobol(line.getFieldValue(STE_MFOU), entity::get_no_societe_liee);
		longJavaToCobol(line.getFieldValue(CLI_MFOU), entity::get_no_client_lie);
		longJavaToCobol(line.getFieldValue(CNUF_MFOU), entity::get_cnuf);
		bigDecimalJavaToCobol(line.getFieldValue(CRS_MFOU), entity::get_cours_de_reference);
		booleanJavaToCobol(line.getFieldValue(CSL_MFOU), entity::get_indic_conf_loueur);
		integerJavaToCobol(line.getFieldValue(MSL_MFOU), entity::get_der_no_mat_sousloc);
		longJavaToCobol(line.getFieldValue(CLF_MFOU), entity::get_code_cli_facture);
		bigDecimalJavaToCobol(line.getFieldValue(PFT_MFOU), entity::get_pourcent_frais_deb);
		integerJavaToCobol(line.getFieldValue(POP_MFOU), entity::get_code_poltq_px_art);
		booleanJavaToCobol(line.getFieldValue(GRI_MFOU), entity::get_code_grille_remise);
		stringJavaToCobol(line.getFieldValue(TCR_MFOU), entity::get_code_type_cde_stan);
		integerJavaToCobol(line.getFieldValue(PAD_MFOU), entity::get_code_paie_fou_div);
		integerJavaToCobol(line.getFieldValue(ECD_MFOU), entity::get_code_ech_fou_div);
		integerJavaToCobol(line.getFieldValue(TED_MFOU), entity::get_code_terme_fou_div);
		booleanJavaToCobol(line.getFieldValue(ETI_MFOU), entity::get_indic_etiquetage);
		longJavaToCobol(line.getFieldValue(OAA_MFOU), entity::get_object_art_an_n);
		longJavaToCobol(line.getFieldValue(OA1_MFOU), entity::get_object_art_an_n_1);
		integerJavaToCobol(line.getFieldValue(PCD_MFOU), entity::get_periodicite_cde);
		stringJavaToCobol(line.getFieldValue(OBS_MFOU), entity::get_observation1);
		stringJavaToCobol(line.getFieldValue(OB2_MFOU), entity::get_observation2);
		stringJavaToCobol(line.getFieldValue(ISP_MFOU), entity::get_code_confidentiel);
		integerJavaToCobol(line.getFieldValue(PPM_MFOU), entity::get_code_poltq_px_mat);
		bigDecimalJavaToCobol(line.getFieldValue(RSM_MFOU), entity::get_rem_standard_mat);
		integerJavaToCobol(line.getFieldValue(DLM_MFOU), entity::get_delai_livr_moyen);
		integerJavaToCobol(line.getFieldValue(BFM_MFOU), entity::get_code_base_franco);
		longJavaToCobol(line.getFieldValue(MFM_MFOU), entity::get_cde_mini_franco);
		integerJavaToCobol(line.getFieldValue(CPM_MFOU), entity::get_code_port);
		bigDecimalJavaToCobol(line.getFieldValue(PMA_MFOU), entity::get_pourcent_port_fact);
		integerJavaToCobol(line.getFieldValue(PAM_MFOU), entity::get_mode_paiement_mat);
		integerJavaToCobol(line.getFieldValue(ECM_MFOU), entity::get_code_echeance_mat);
		integerJavaToCobol(line.getFieldValue(TEM_MFOU), entity::get_code_terme_mat);
		stringJavaToCobol(line.getFieldValue(OBM_MFOU + " (0)"), entity::get_observation_mat_1);
		stringJavaToCobol(line.getFieldValue(OBM_MFOU + " (1)"), entity::get_observation_mat_2);
		longJavaToCobol(line.getFieldValue(OMA_MFOU), entity::get_object_mat_an_n);
		longJavaToCobol(line.getFieldValue(OM1_MFOU), entity::get_object_mat_an_n_1);
		integerJavaToCobol(line.getFieldValue(NDG_MFOU), entity::get_code_numero_dg);
		integerJavaToCobol(line.getFieldValue(DLA_MFOU), entity::get_delai_stand_accord);
		integerJavaToCobol(line.getFieldValue(MBG_MFOU), entity::get_code_model_bord_dg);
		integerJavaToCobol(line.getFieldValue(BRP_MFOU), entity::get_code_base_pieces);
		bigDecimalJavaToCobol(line.getFieldValue(BRM_MFOU), entity::get_remboursement_mo);
		stringJavaToCobol(line.getFieldValue(COM_MFOU), entity::get_commentaire_dg);
		integerJavaToCobol(line.getFieldValue(TRB_MFOU), entity::get_code_type_rembours);
		stringJavaToCobol(line.getFieldValue(CON_MFOU), entity::get_no_concessionnaire);
		integerJavaToCobol(line.getFieldValue(FDG_MFOU), entity::get_indi_justif_no_fac);
		integerJavaToCobol(line.getFieldValue(MDG_MFOU), entity::get_pa_seuil_fac_oblig);
		integerJavaToCobol(line.getFieldValue(PDG_MFOU), entity::get_pourcent_dg);
		longJavaToCobol(line.getFieldValue(NIG_MFOU), entity::get_der_no_imprime);
		bigDecimalJavaToCobol(line.getFieldValue(COE_MFOU), entity::get_coefficient_pieces);
		integerJavaToCobol(line.getFieldValue(IREG_MFOU), entity::get_code_reg_rem_piece);
		stringJavaToCobol(line.getFieldValue(REG_MFOU), entity::get_code_type_cde_piec);
		bigDecimalJavaToCobol(line.getFieldValue(REM_MFOU), entity::get_pourcent_rem_piece);
		integerJavaToCobol(line.getFieldValue(IDG_MFOU), entity::get_indic_infos_specif);
		stringJavaToCobol(line.getFieldValue(LDG_MFOU), entity::get_lib_infos_specif);
		integerJavaToCobol(line.getFieldValue(ACA_MFOU), entity::get_indic_accord_gtie);
		integerJavaToCobol(line.getFieldValue(BRD_MFOU), entity::get_code_base_divers);
		integerJavaToCobol(line.getFieldValue(IRGD_MFOU), entity::get_code_reg_rem_div);
		stringJavaToCobol(line.getFieldValue(RGD_MFOU), entity::get_code_type_cde_div);
		bigDecimalJavaToCobol(line.getFieldValue(RMD_MFOU), entity::get_pourcent_rem_div);
		bigDecimalJavaToCobol(line.getFieldValue(CED_MFOU), entity::get_coefficient_divers);
		stringJavaToCobol(line.getFieldValue(PST_MFOU), entity::get_code_acheteur);
		integerJavaToCobol(line.getFieldValue(IPR_MFOU), entity::get_indic_fournisseur);
		longJavaToCobol(line.getFieldValue(FOP_MFOU), entity::get_no_fou_article);
		longJavaToCobol(line.getFieldValue(FMP_MFOU), entity::get_no_fou_materiel);
		integerJavaToCobol(line.getFieldValue(CANN_MFOU), entity::get_code_suppression);
		dateJavaToCobol(line.getFieldValue(DANN_MFOU), entity::get_date_suppression);
		stringJavaToCobol(line.getFieldValue(IANN_MFOU), entity::get_auteur_suppression);
		integerJavaToCobol(line.getFieldValue(FPO_MFOU), entity::get_forf_port_materiel);
		stringJavaToCobol(line.getFieldValue(OLDAPE_MFOU), entity::get_code_ape_old);
		stringJavaToCobol(line.getFieldValue(SIR_MFOU), entity::get_code_siret);
		stringJavaToCobol(line.getFieldValue(PRUB_MFOU), entity::get_code_rubriq_specif);
		stringJavaToCobol(line.getFieldValue(APE_MFOU), entity::get_code_ape);
		stringJavaToCobol(line.getFieldValue(ICRE_MFOU), entity::get_auteur_creation);
		dateJavaToCobol(line.getFieldValue(DCRE_MFOU), entity::get_date_creation);
		stringJavaToCobol(line.getFieldValue(IMOD_MFOU), entity::get_auteur_modif);
		dateJavaToCobol(line.getFieldValue(DME_MFOU), entity::get_date_modif);
		integerJavaToCobol(line.getFieldValue(CHF_MFOU), entity::get_chiffrage_bc_art);
		integerJavaToCobol(line.getFieldValue(CHFM_MFOU), entity::get_chiffrage_bc_mat);
		integerJavaToCobol(line.getFieldValue(AFC_MFOU), entity::get_affect_fiscale);
		stringJavaToCobol(line.getFieldValue(ENV_MFOU), entity::get_env_mfou);
		stringJavaToCobol(line.getFieldValue(EXP_MFOU), entity::get_exp_mfou);
		stringJavaToCobol(line.getFieldValue(ENVM_MFOU), entity::get_envm_mfou);
		stringJavaToCobol(line.getFieldValue(EXPM_MFOU), entity::get_expm_mfou);
		stringJavaToCobol(line.getFieldValue(TYPCNH_MFOU), entity::get_typcnh_mfou);
		stringJavaToCobol(line.getFieldValue(TYPMDI_MFOU), entity::get_typmdi_mfou);
		integerJavaToCobol(line.getFieldValue(IPRM_MFOU), entity::get_indic_fournisseur_materiel);
		integerJavaToCobol(line.getFieldValue(CLR_MFOU), entity::get_clr_mfou);
		integerJavaToCobol(line.getFieldValue(CCW_MFOU), entity::get_ccw_mfou);
		integerJavaToCobol(line.getFieldValue(POW_MFOU), entity::get_pow_mfou);
		integerJavaToCobol(line.getFieldValue(LIVW_MFOU), entity::get_livw_mfou);
		integerJavaToCobol(line.getFieldValue(NUMA_MFOU), entity::get_numa_mfou);
		integerJavaToCobol(line.getFieldValue(SRP_MFOU), entity::get_srp_mfou);
		integerJavaToCobol(line.getFieldValue(RGPD_MFOU), entity::get_rgpd_mfou);
		dateJavaToCobol(line.getFieldValue(DVT_MFOU), entity::get_dvt_mfou);
	}

}
