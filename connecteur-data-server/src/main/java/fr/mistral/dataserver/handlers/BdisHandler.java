package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Bdis;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class BdisHandler extends AbstractDataHandler<Bdis> implements IDataHandler {

	/**
	 * cobol: AGE-MBDI, BON-MBDI
	 * db:    code_agence, no_bon
	 */
	private static final String CLE1_MBDI = "CLE1-MBDI";
	/**
	 * cobol: AGE-MBDI, CLI-MBDI, TFA-MBDI, CHC-MBDI
	 * db:    code_agence, code_client, type_facturation, no_lieu
	 */
	private static final String CLE2_MBDI = "CLE2-MBDI";
	/**
	 * cobol: AGE-MBDI, DAT-MBDI
	 * db:    code_agence, date_creation
	 */
	private static final String CLE3_MBDI = "CLE3-MBDI";
	/**
	 * cobol: CLI-MBDI
	 * db:    code_client
	 */
	private static final String CLE4_MBDI = "CLE4-MBDI";
	/**
	 * cobol: TRA-MBDI, AGE-MBDI, DAT-MBDI
	 * db:    indic_traitement, code_agence, date_creation
	 */
	private static final String CLE5_MBDI = "CLE5-MBDI";

	/** code_agence (type cobol: XXX) */
	private static final String AGE_MBDI = "AGE-MBDI";
	/** no_bon (type cobol: 9(8)) */
	private static final String BON_MBDI = "BON-MBDI";
	/** type_bon - 0=Commande    1=Livraison    3=Bon de retour   8=Devis (type cobol: 9) */
	private static final String TYP_MBDI = "TYP-MBDI";
	/** tyc_mbdi (type cobol: 9) */
	private static final String TYC_MBDI = "TYC-MBDI";
	/** ivr_mbdi (type cobol: 9) */
	private static final String IVR_MBDI = "IVR-MBDI";
	/** ifo_mbdi (type cobol: 9) */
	private static final String IFO_MBDI = "IFO-MBDI";
	/** code_client (type cobol: 9(6)) */
	private static final String CLI_MBDI = "CLI-MBDI";
	/** type_facturation (type cobol: 9) */
	private static final String TFA_MBDI = "TFA-MBDI";
	/** no_lieu (type cobol: 9(9)) */
	private static final String CHC_MBDI = "CHC-MBDI";
	/** titre_lieu (type cobol: 99) */
	private static final String TIT_MBDI = "TIT-MBDI";
	/** indic_adresse_lieu (type cobol: 9) */
	private static final String IAF_MBDI = "IAF-MBDI";
	/** nom_lieu (type cobol: X(25)) */
	private static final String RAI_MBDI = "RAI-MBDI";
	/** adresse_lieu (type cobol: X(75)) */
	private static final String ADR_MBDI = "ADR-MBDI";
	/** code_postal_lieu (type cobol: X(8)) */
	private static final String POS_MBDI = "POS-MBDI";
	/** ville_lieu (type cobol: X(25)) */
	private static final String VIL_MBDI = "VIL-MBDI";
	/** date_creation (type cobol: 9(8)) */
	private static final String DAT_MBDI = "DAT-MBDI";
	/** mode_paiement (type cobol: 99) */
	private static final String PAI_MBDI = "PAI-MBDI";
	/** code_echeance (type cobol: 9) */
	private static final String ECH_MBDI = "ECH-MBDI";
	/** code_terme (type cobol: 9) */
	private static final String TER_MBDI = "TER-MBDI";
	/** nb_jours_echeance (type cobol: 999) */
	private static final String NJE_MBDI = "NJE-MBDI";
	/** montant_echeance (type cobol: S9(7)V99) */
	private static final String MON_MBDI = "MON-MBDI";
	/** pct_paiement (type cobol: 999V99) */
	private static final String POU_MBDI = "POU-MBDI";
	/** libelle_paiement (type cobol: X(20)) */
	private static final String LPA_MBDI = "LPA-MBDI";
	/** reference_client (type cobol: X(30)) */
	private static final String REF_MBDI = "REF-MBDI";
	/** no_facture (type cobol: 9(6)) */
	private static final String FAC_MBDI = "FAC-MBDI";
	/** indic_traitement - Pour les devis: 0=Encours 1=Transformé en Cde ou B/L  - Pour les B/L: 0=en-cours  1=Facturé (type cobol: 9) */
	private static final String TRA_MBDI = "TRA-MBDI";
	/** code_vendeur (type cobol: X(4)) */
	private static final String REP_MBDI = "REP-MBDI";
	/** reserve (type cobol: 9) */
	private static final String IPR_MBDI = "IPR-MBDI";
	/** indic_a_facturer - Stade: 0=En attente  1=A facturer (type cobol: 9) */
	private static final String IFA_MBDI = "IFA-MBDI";
	/** date_facture (type cobol: 9(8)) */
	private static final String DFA_MBDI = "DFA-MBDI";
	/** mt_frais_fac (type cobol: S999V99) */
	private static final String FFA_MBDI = "FFA-MBDI";
	/** bon_cde_genere (type cobol: 9(8)) */
	private static final String BCG_MBDI = "BCG-MBDI";
	/** total_ht - Montant Total HT (type cobol: S9(7)V99) */
	private static final String TAT_MBDI = "TAT-MBDI";
	/** total_ttc - Montant Total TTC (type cobol: S9(7)V99) */
	private static final String TAC_MBDI = "TAC-MBDI";
	/** reference_interne (type cobol: X(20)) */
	private static final String NRF_MBDI = "NRF-MBDI";
	/** periode_facture (type cobol: 9(4)) */
	private static final String PER_MBDI = "PER-MBDI";
	/** dom_bancaire (type cobol: X(24)) */
	private static final String DOM_MBDI = "DOM-MBDI";
	/** adresse_banque (type cobol: X(24)) */
	private static final String ADB_MBDI = "ADB-MBDI";
	/** code_banque (type cobol: 9(5)) */
	private static final String BQE_MBDI = "BQE-MBDI";
	/** code_guichet (type cobol: 9(5)) */
	private static final String GUI_MBDI = "GUI-MBDI";
	/** no_cpt_banque (type cobol: X(11)) */
	private static final String CPT_MBDI = "CPT-MBDI";
	/** cle_rib (type cobol: 99) */
	private static final String RIB_MBDI = "RIB-MBDI";
	/** cle_rib_iso (type cobol: XX) */
	private static final String RIBISO_MBDI = "RIBISO-MBDI";
	/** paiement_sur_relev (type cobol: 9) */
	private static final String MPA_MBDI = "MPA-MBDI";
	/** indic_transport (type cobol: 9) */
	private static final String TTR_MBDI = "TTR-MBDI";
	/** pct_escompte (type cobol: 99V99) */
	private static final String ESC_MBDI = "ESC-MBDI";
	/** agence_sortie_piec (type cobol: X(3)) */
	private static final String AGS_MBDI = "AGS-MBDI";
	/** depot_sortie_piece (type cobol: 9(3)) */
	private static final String DEP_MBDI = "DEP-MBDI";
	/** total_pr (type cobol: S9(7)V99) */
	private static final String TPR_MBDI = "TPR-MBDI";
	/** mt_marge_plancher (type cobol: S9(7)V99) */
	private static final String MBP_MBDI = "MBP-MBDI";
	/** mt_marge_mini (type cobol: S9(7)V99) */
	private static final String MMI_MBDI = "MMI-MBDI";
	/** mt_marge_maxi (type cobol: S9(7)V99) */
	private static final String MMX_MBDI = "MMX-MBDI";
	/** affec_fiscale (type cobol: 9) */
	private static final String AFC_MBDI = "AFC-MBDI";
	/** indic_edition (type cobol: 9) */
	private static final String EDI_MBDI = "EDI-MBDI";
	/** auteur_creation (type cobol: X(4)) */
	private static final String SAL_MBDI = "SAL-MBDI";
	/** origine (type cobol: 9) */
	private static final String ORI_MBDI = "ORI-MBDI";
	/** code_client_divers (type cobol: 9(6)) */
	private static final String CDV_MBDI = "CDV-MBDI";
	/** niveau_commande (type cobol: 9) */
	private static final String ACA_MBDI = "ACA-MBDI";
	/** no_agence_blf (type cobol: XXX) */
	private static final String ABLF_MBDI = "ABLF-MBDI";
	/** no_blf (type cobol: 9(6)) */
	private static final String LBLF_MBDI = "LBLF-MBDI";
	/** mt_acompte (type cobol: S9(7)V99) */
	private static final String ACO_MBDI = "ACO-MBDI";
	/** type_commande_cli (type cobol: X) */
	private static final String TCC_MBDI = "TCC-MBDI";
	/** no_client_divers_l (type cobol: 9(6)) */
	private static final String CDL_MBDI = "CDL-MBDI";
	/** date_liv_prevue (type cobol: 9(8)) */
	private static final String DLP_MBDI = "DLP-MBDI";
	/** nb_parts_copro (type cobol: 9(5)) */
	private static final String NPT_MBDI = "NPT-MBDI";
	/** emsg_mbdi - Message pour validation avoir envoyé (type cobol: 9) */
	private static final String EMSG_MBDI = "EMSG-MBDI";
	/** liv_partielle - Livraison partielle autorisée (m3) (type cobol: 9) */
	private static final String LIP_MBDI = "LIP-MBDI";
	/** trs_par_nous - Transport par nos soins (type cobol: 9) */
	private static final String ILI_MBDI = "ILI-MBDI";
	/** type_materiel (type cobol: X(16)) */
	private static final String TYM_MBDI = "TYM-MBDI";
	/** no_ordre_materiel (type cobol: 9(10)) */
	private static final String MAT_MBDI = "MAT-MBDI";
	/** reserve2 - Type de livraison (spécifique M3) (type cobol: 9) */
	private static final String TBP_MBDI = "TBP-MBDI";
	/** delai_devis (type cobol: 99) */
	private static final String DEL_MBDI = "DEL-MBDI";
	/** validite_devis (type cobol: 99) */
	private static final String VAO_MBDI = "VAO-MBDI";
	/** no_prospect - N° de Prospect (type cobol: 9(8)) */
	private static final String FCO_MBDI = "FCO-MBDI";
	/** montant_forfait (type cobol: S9(7)V99) */
	private static final String MFO_MBDI = "MFO-MBDI";
	/** detail_forfait_fac (type cobol: 9) */
	private static final String DFO_MBDI = "DFO-MBDI";
	/** indic_facture_devi (type cobol: 9) */
	private static final String IFD_MBDI = "IFD-MBDI";
	/** cours_devise (type cobol: 9(3)V9(5)) */
	private static final String CRS_MBDI = "CRS-MBDI";
	/** indic_remise (type cobol: 9) */
	private static final String IRE_MBDI = "IRE-MBDI";
	/** pct_remise (type cobol: 99V99) */
	private static final String MRU_MBDI = "MRU-MBDI";
	/** indic_port_usine (type cobol: 9) */
	private static final String PUS_MBDI = "PUS-MBDI";
	/** type_tva (type cobol: 9) */
	private static final String TTV_MBDI = "TTV-MBDI";
	/** pct_tva (type cobol: 99V99) */
	private static final String TVA_MBDI = "TVA-MBDI";
	/** no_commande (type cobol: 9(8)) */
	private static final String BCO_MBDI = "BCO-MBDI";
	/** date_liv_prevue_cd - Date de livraison Prévue d'origine (type cobol: 9(8)) */
	private static final String DLO_MBDI = "DLO-MBDI";
	/** date_commande (type cobol: 9(8)) */
	private static final String DCO_MBDI = "DCO-MBDI";
	/** mt_port_facture (type cobol: S9(6)V99) */
	private static final String MPF_MBDI = "MPF-MBDI";
	/** indic_avoir_genere - Indicateur avoir généré (type cobol: 9) */
	private static final String LET_MBDI = "LET-MBDI";
	/** indic_paiement_imm (type cobol: 9) */
	private static final String IMM_MBDI = "IMM-MBDI";
	/** no_client_livre (type cobol: 9(6)) */
	private static final String CLL_MBDI = "CLL-MBDI";
	/** no_interlocuteur (type cobol: 9(9)) */
	private static final String ITC_MBDI = "ITC-MBDI";
	/** nombre_copro (type cobol: 99) */
	private static final String NBC_MBDI = "NBC-MBDI";
	/** indic_mobidis - Indicateur Bon à transmettre au siège si MobiDis: 0=Non  1= Oui  2=Déjà Transféré   3=Chargé sur le portable à l'instal   4=Créé sur le système central et transféré sur Mobile (type cobol: 9) */
	private static final String IES_MBDI = "IES-MBDI";
	/** acompte_deduit - Indicateur acompte transféré sur BL (type cobol: 9) */
	private static final String ADD_MBDI = "ADD-MBDI";
	/** no_fou_centrale (type cobol: 9(6)) */
	private static final String FOU_MBDI = "FOU-MBDI";
	/** no_affaire (type cobol: X(10)) */
	private static final String NAF_MBDI = "NAF-MBDI";
	/** transport_saisi - Transport saisi (type cobol: 9) */
	private static final String STR_MBDI = "STR-MBDI";
	/** bon_en_attente (type cobol: 9) */
	private static final String CAT_MBDI = "CAT-MBDI";
	/** no_autorisation_cr - N° autorisation crédit (type cobol: X(8)) */
	private static final String AUT_MBDI = "AUT-MBDI";
	/** no_ts_prospect - N° tarif sspécial si devis prospect (type cobol: X(4)) */
	private static final String TSP_MBDI = "TSP-MBDI";
	/** indic_edition_bl - Indic édition BL (type cobol: 9) */
	private static final String EDIB_MBDI = "EDIB-MBDI";
	/** no_devis - N° devis d'origine (type cobol: 9(8)) */
	private static final String NOF_MBDI = "NOF-MBDI";
	/** mode_paiement_acom - Mode paiement acompte (type cobol: 99) */
	private static final String PACO_MBDI = "PACO-MBDI";
	/** no_facture_acompte - N° facture d'acompte (type cobol: 9(6)) */
	private static final String FACO_MBDI = "FACO-MBDI";
	/** indic_or_genere - Indicateur bon généré par un OR ou en inter-société (type cobol: 9) */
	private static final String GEN_MBDI = "GEN-MBDI";
	/** marque_mat - Marque matériel (type cobol: X(4)) */
	private static final String MAM_MBDI = "MAM-MBDI";
	/** indic_recu_mobile - Indicateur bon reçu d'un mobile : 0 = Non  1=En partie  2= En totalité 3=Reçu Webtop (type cobol: 9) */
	private static final String IRM_MBDI = "IRM-MBDI";
	/** no_ordre_blf - N° ordre BLF pour B/L sociétés liées (type cobol: 9(2)) */
	private static final String OBLF_MBDI = "OBLF-MBDI";
	/** stade_devis - Stade devis: Blanc=En cours   1=1er Relance   2=2ème Relance   3=3ème Relance   G=Gagné   P=Perdu    R=Reporté   A=Abandonné (type cobol: X) */
	private static final String STA_MBDI = "STA-MBDI";
	/** date_relance_devis - Date relance du Devis (type cobol: 9(8)) */
	private static final String DREL_MBDI = "DREL-MBDI";
	/** no_taa_inter_agenc - N° bon de transfert (TSV) si nter-agence avec gestion stock relais (type cobol: 9(6)) */
	private static final String TAA_MBDI = "TAA-MBDI";
	/** indic_fidelite - Intégré au programme fidélité (type cobol: 9) */
	private static final String FID_MBDI = "FID-MBDI";
	/** motif_avoir - Motif avoir ou 1 si commande importée du SAV ou n° IDWEBTOP si commande Web (type cobol: XX) */
	private static final String MOA_MBDI = "MOA-MBDI";
	/** agence_livraison - N° agence livraison (M3) (type cobol: X(3)) */
	private static final String AGL_MBDI = "AGL-MBDI";
	/** retour_piece - Demande de retour de pièces si TYP = 0 (type cobol: 9) */
	private static final String IRP_MBDI = "IRP-MBDI";
	/** indic_conex - Indicateur génération fichier CONEX (Machdeal): 1=Généré ou Drop shipping Topaz (type cobol: 9) */
	private static final String GCO_MBDI = "GCO-MBDI";
	/** code_service - Code service notamment pour Chorus (type cobol: XX) */
	private static final String SVC_MBDI = "SVC-MBDI";
	/** sortie_exceptionnelle - Sortie exceptionnelle (type cobol: 9) */
	private static final String EXC_MBDI = "EXC-MBDI";
	/** edo_mbdi - Commandes WEB; n° de l'entête EDO à imprimer sur les documents (type cobol: 9(2)) */
	private static final String EDO_MBDI = "EDO-MBDI";

	public BdisHandler() throws IOException {
		super("mx/fd/MXBDIS.fd", "MXBDIS", fr.mistral.dataserver.model.mx.Bdis.class,
				"CLE1-MBDI",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MBDI, ImmutableList.<String>builder().add(AGE_MBDI, BON_MBDI).build())
					.put(CLE2_MBDI, ImmutableList.<String>builder().add(AGE_MBDI, CLI_MBDI, TFA_MBDI, CHC_MBDI).build())
					.put(CLE3_MBDI, ImmutableList.<String>builder().add(AGE_MBDI, DAT_MBDI).build())
					.put(CLE4_MBDI, ImmutableList.<String>builder().add(CLI_MBDI).build())
					.put(CLE5_MBDI, ImmutableList.<String>builder().add(TRA_MBDI, AGE_MBDI, DAT_MBDI).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Bdis>>builder()
					.put(AGE_MBDI, new EntityFieldMapper<>(AGE_MBDI, "code_agence", Bdis::get_code_agence))
					.put(BON_MBDI, new EntityFieldMapper<>(BON_MBDI, "no_bon", Bdis::get_no_bon))
					.put(CLI_MBDI, new EntityFieldMapper<>(CLI_MBDI, "code_client", Bdis::get_code_client))
					.put(TFA_MBDI, new EntityFieldMapper<>(TFA_MBDI, "type_facturation", Bdis::get_type_facturation))
					.put(CHC_MBDI, new EntityFieldMapper<>(CHC_MBDI, "no_lieu", Bdis::get_no_lieu))
					.put(DAT_MBDI, new EntityFieldMapper<>(DAT_MBDI, "date_creation", Bdis::get_date_creation))
					.put(TRA_MBDI, new EntityFieldMapper<>(TRA_MBDI, "indic_traitement", Bdis::get_indic_traitement))
					.build());
	}

	@Override
	public String getName() {
		return "MXBDIS";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXBDIS2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Bdis entity) {
		stringCobolToJava(line.getFieldValue(AGE_MBDI), entity::set_code_agence);
		longCobolToJava(line.getFieldValue(BON_MBDI), entity::set_no_bon);
		integerCobolToJava(line.getFieldValue(TYP_MBDI), entity::set_type_bon);
		integerCobolToJava(line.getFieldValue(TYC_MBDI), entity::set_tyc_mbdi);
		integerCobolToJava(line.getFieldValue(IVR_MBDI), entity::set_ivr_mbdi);
		integerCobolToJava(line.getFieldValue(IFO_MBDI), entity::set_ifo_mbdi);
		longCobolToJava(line.getFieldValue(CLI_MBDI), entity::set_code_client);
		integerCobolToJava(line.getFieldValue(TFA_MBDI), entity::set_type_facturation);
		longCobolToJava(line.getFieldValue(CHC_MBDI), entity::set_no_lieu);
		integerCobolToJava(line.getFieldValue(TIT_MBDI), entity::set_titre_lieu);
		integerCobolToJava(line.getFieldValue(IAF_MBDI), entity::set_indic_adresse_lieu);
		stringCobolToJava(line.getFieldValue(RAI_MBDI), entity::set_nom_lieu);
		stringCobolToJava(line.getFieldValue(ADR_MBDI), entity::set_adresse_lieu);
		stringCobolToJava(line.getFieldValue(POS_MBDI), entity::set_code_postal_lieu);
		stringCobolToJava(line.getFieldValue(VIL_MBDI), entity::set_ville_lieu);
		dateCobolToJava(line.getFieldValue(DAT_MBDI), entity::set_date_creation);
		integerCobolToJava(line.getFieldValue(PAI_MBDI + " (0)"), entity::set_mode_paiement_1);
		integerCobolToJava(line.getFieldValue(PAI_MBDI + " (1)"), entity::set_mode_paiement_2);
		integerCobolToJava(line.getFieldValue(PAI_MBDI + " (2)"), entity::set_mode_paiement_3);
		integerCobolToJava(line.getFieldValue(PAI_MBDI + " (3)"), entity::set_mode_paiement_4);
		integerCobolToJava(line.getFieldValue(PAI_MBDI + " (4)"), entity::set_mode_paiement_5);
		integerCobolToJava(line.getFieldValue(ECH_MBDI + " (0)"), entity::set_code_echeance_1);
		integerCobolToJava(line.getFieldValue(ECH_MBDI + " (1)"), entity::set_code_echeance_2);
		integerCobolToJava(line.getFieldValue(ECH_MBDI + " (2)"), entity::set_code_echeance_3);
		integerCobolToJava(line.getFieldValue(ECH_MBDI + " (3)"), entity::set_code_echeance_4);
		integerCobolToJava(line.getFieldValue(ECH_MBDI + " (4)"), entity::set_code_echeance_5);
		integerCobolToJava(line.getFieldValue(TER_MBDI + " (0)"), entity::set_code_terme_1);
		integerCobolToJava(line.getFieldValue(TER_MBDI + " (1)"), entity::set_code_terme_2);
		integerCobolToJava(line.getFieldValue(TER_MBDI + " (2)"), entity::set_code_terme_3);
		integerCobolToJava(line.getFieldValue(TER_MBDI + " (3)"), entity::set_code_terme_4);
		integerCobolToJava(line.getFieldValue(TER_MBDI + " (4)"), entity::set_code_terme_5);
		integerCobolToJava(line.getFieldValue(NJE_MBDI + " (0)"), entity::set_nb_jours_echeance_1);
		integerCobolToJava(line.getFieldValue(NJE_MBDI + " (1)"), entity::set_nb_jours_echeance_2);
		integerCobolToJava(line.getFieldValue(NJE_MBDI + " (2)"), entity::set_nb_jours_echeance_3);
		integerCobolToJava(line.getFieldValue(NJE_MBDI + " (3)"), entity::set_nb_jours_echeance_4);
		integerCobolToJava(line.getFieldValue(NJE_MBDI + " (4)"), entity::set_nb_jours_echeance_5);
		bigDecimalCobolToJava(line.getFieldValue(MON_MBDI + " (0)"), entity::set_montant_echeance_1);
		bigDecimalCobolToJava(line.getFieldValue(MON_MBDI + " (1)"), entity::set_montant_echeance_2);
		bigDecimalCobolToJava(line.getFieldValue(MON_MBDI + " (2)"), entity::set_montant_echeance_3);
		bigDecimalCobolToJava(line.getFieldValue(MON_MBDI + " (3)"), entity::set_montant_echeance_4);
		bigDecimalCobolToJava(line.getFieldValue(MON_MBDI + " (4)"), entity::set_montant_echeance_5);
		bigDecimalCobolToJava(line.getFieldValue(POU_MBDI + " (0)"), entity::set_pct_paiement_1);
		bigDecimalCobolToJava(line.getFieldValue(POU_MBDI + " (1)"), entity::set_pct_paiement_2);
		bigDecimalCobolToJava(line.getFieldValue(POU_MBDI + " (2)"), entity::set_pct_paiement_3);
		bigDecimalCobolToJava(line.getFieldValue(POU_MBDI + " (3)"), entity::set_pct_paiement_4);
		bigDecimalCobolToJava(line.getFieldValue(POU_MBDI + " (4)"), entity::set_pct_paiement_5);
		stringCobolToJava(line.getFieldValue(LPA_MBDI), entity::set_libelle_paiement);
		stringCobolToJava(line.getFieldValue(REF_MBDI + " (0)"), entity::set_reference_client_1);
		stringCobolToJava(line.getFieldValue(REF_MBDI + " (1)"), entity::set_reference_client_2);
		longCobolToJava(line.getFieldValue(FAC_MBDI), entity::set_no_facture);
		integerCobolToJava(line.getFieldValue(TRA_MBDI), entity::set_indic_traitement);
		stringCobolToJava(line.getFieldValue(REP_MBDI), entity::set_code_vendeur);
		integerCobolToJava(line.getFieldValue(IPR_MBDI), entity::set_reserve);
		integerCobolToJava(line.getFieldValue(IFA_MBDI), entity::set_indic_a_facturer);
		dateCobolToJava(line.getFieldValue(DFA_MBDI), entity::set_date_facture);
		bigDecimalCobolToJava(line.getFieldValue(FFA_MBDI), entity::set_mt_frais_fac);
		longCobolToJava(line.getFieldValue(BCG_MBDI), entity::set_bon_cde_genere);
		bigDecimalCobolToJava(line.getFieldValue(TAT_MBDI), entity::set_total_ht);
		bigDecimalCobolToJava(line.getFieldValue(TAC_MBDI), entity::set_total_ttc);
		stringCobolToJava(line.getFieldValue(NRF_MBDI), entity::set_reference_interne);
		integerCobolToJava(line.getFieldValue(PER_MBDI), entity::set_periode_facture);
		stringCobolToJava(line.getFieldValue(DOM_MBDI), entity::set_dom_bancaire);
		stringCobolToJava(line.getFieldValue(ADB_MBDI), entity::set_adresse_banque);
		integerCobolToJava(line.getFieldValue(BQE_MBDI), entity::set_code_banque);
		integerCobolToJava(line.getFieldValue(GUI_MBDI), entity::set_code_guichet);
		stringCobolToJava(line.getFieldValue(CPT_MBDI), entity::set_no_cpt_banque);
		integerCobolToJava(line.getFieldValue(RIB_MBDI), entity::set_cle_rib);
		stringCobolToJava(line.getFieldValue(RIBISO_MBDI), entity::set_cle_rib_iso);
		integerCobolToJava(line.getFieldValue(MPA_MBDI), entity::set_paiement_sur_relev);
		integerCobolToJava(line.getFieldValue(TTR_MBDI), entity::set_indic_transport);
		bigDecimalCobolToJava(line.getFieldValue(ESC_MBDI), entity::set_pct_escompte);
		stringCobolToJava(line.getFieldValue(AGS_MBDI), entity::set_agence_sortie_piec);
		integerCobolToJava(line.getFieldValue(DEP_MBDI), entity::set_depot_sortie_piece);
		bigDecimalCobolToJava(line.getFieldValue(TPR_MBDI), entity::set_total_pr);
		bigDecimalCobolToJava(line.getFieldValue(MBP_MBDI), entity::set_mt_marge_plancher);
		bigDecimalCobolToJava(line.getFieldValue(MMI_MBDI), entity::set_mt_marge_mini);
		bigDecimalCobolToJava(line.getFieldValue(MMX_MBDI), entity::set_mt_marge_maxi);
		integerCobolToJava(line.getFieldValue(AFC_MBDI), entity::set_affec_fiscale);
		integerCobolToJava(line.getFieldValue(EDI_MBDI), entity::set_indic_edition);
		stringCobolToJava(line.getFieldValue(SAL_MBDI), entity::set_auteur_creation);
		integerCobolToJava(line.getFieldValue(ORI_MBDI), entity::set_origine);
		longCobolToJava(line.getFieldValue(CDV_MBDI), entity::set_code_client_divers);
		integerCobolToJava(line.getFieldValue(ACA_MBDI), entity::set_niveau_commande);
		stringCobolToJava(line.getFieldValue(ABLF_MBDI), entity::set_no_agence_blf);
		longCobolToJava(line.getFieldValue(LBLF_MBDI), entity::set_no_blf);
		bigDecimalCobolToJava(line.getFieldValue(ACO_MBDI), entity::set_mt_acompte);
		stringCobolToJava(line.getFieldValue(TCC_MBDI), entity::set_type_commande_cli);
		longCobolToJava(line.getFieldValue(CDL_MBDI), entity::set_no_client_divers_l);
		dateCobolToJava(line.getFieldValue(DLP_MBDI), entity::set_date_liv_prevue);
		integerCobolToJava(line.getFieldValue(NPT_MBDI), entity::set_nb_parts_copro);
		integerCobolToJava(line.getFieldValue(EMSG_MBDI), entity::set_emsg_mbdi);
		integerCobolToJava(line.getFieldValue(LIP_MBDI), entity::set_liv_partielle);
		integerCobolToJava(line.getFieldValue(ILI_MBDI), entity::set_trs_par_nous);
		stringCobolToJava(line.getFieldValue(TYM_MBDI), entity::set_type_materiel);
		longCobolToJava(line.getFieldValue(MAT_MBDI), entity::set_no_ordre_materiel);
		integerCobolToJava(line.getFieldValue(TBP_MBDI), entity::set_reserve2);
		integerCobolToJava(line.getFieldValue(DEL_MBDI), entity::set_delai_devis);
		integerCobolToJava(line.getFieldValue(VAO_MBDI), entity::set_validite_devis);
		longCobolToJava(line.getFieldValue(FCO_MBDI), entity::set_no_prospect);
		bigDecimalCobolToJava(line.getFieldValue(MFO_MBDI), entity::set_montant_forfait);
		integerCobolToJava(line.getFieldValue(DFO_MBDI), entity::set_detail_forfait_fac);
		integerCobolToJava(line.getFieldValue(IFD_MBDI), entity::set_indic_facture_devi);
		bigDecimalCobolToJava(line.getFieldValue(CRS_MBDI), entity::set_cours_devise);
		integerCobolToJava(line.getFieldValue(IRE_MBDI), entity::set_indic_remise);
		bigDecimalCobolToJava(line.getFieldValue(MRU_MBDI), entity::set_pct_remise);
		integerCobolToJava(line.getFieldValue(PUS_MBDI), entity::set_indic_port_usine);
		integerCobolToJava(line.getFieldValue(TTV_MBDI), entity::set_type_tva);
		bigDecimalCobolToJava(line.getFieldValue(TVA_MBDI), entity::set_pct_tva);
		longCobolToJava(line.getFieldValue(BCO_MBDI), entity::set_no_commande);
		dateCobolToJava(line.getFieldValue(DLO_MBDI), entity::set_date_liv_prevue_cd);
		dateCobolToJava(line.getFieldValue(DCO_MBDI), entity::set_date_commande);
		bigDecimalCobolToJava(line.getFieldValue(MPF_MBDI), entity::set_mt_port_facture);
		integerCobolToJava(line.getFieldValue(LET_MBDI), entity::set_indic_avoir_genere);
		integerCobolToJava(line.getFieldValue(IMM_MBDI), entity::set_indic_paiement_imm);
		longCobolToJava(line.getFieldValue(CLL_MBDI), entity::set_no_client_livre);
		longCobolToJava(line.getFieldValue(ITC_MBDI), entity::set_no_interlocuteur);
		integerCobolToJava(line.getFieldValue(NBC_MBDI), entity::set_nombre_copro);
		integerCobolToJava(line.getFieldValue(IES_MBDI), entity::set_indic_mobidis);
		integerCobolToJava(line.getFieldValue(ADD_MBDI), entity::set_acompte_deduit);
		longCobolToJava(line.getFieldValue(FOU_MBDI), entity::set_no_fou_centrale);
		stringCobolToJava(line.getFieldValue(NAF_MBDI), entity::set_no_affaire);
		integerCobolToJava(line.getFieldValue(STR_MBDI), entity::set_transport_saisi);
		integerCobolToJava(line.getFieldValue(CAT_MBDI), entity::set_bon_en_attente);
		stringCobolToJava(line.getFieldValue(AUT_MBDI), entity::set_no_autorisation_cr);
		stringCobolToJava(line.getFieldValue(TSP_MBDI), entity::set_no_ts_prospect);
		integerCobolToJava(line.getFieldValue(EDIB_MBDI), entity::set_indic_edition_bl);
		longCobolToJava(line.getFieldValue(NOF_MBDI), entity::set_no_devis);
		integerCobolToJava(line.getFieldValue(PACO_MBDI), entity::set_mode_paiement_acom);
		longCobolToJava(line.getFieldValue(FACO_MBDI), entity::set_no_facture_acompte);
		integerCobolToJava(line.getFieldValue(GEN_MBDI), entity::set_indic_or_genere);
		stringCobolToJava(line.getFieldValue(MAM_MBDI), entity::set_marque_mat);
		integerCobolToJava(line.getFieldValue(IRM_MBDI), entity::set_indic_recu_mobile);
		integerCobolToJava(line.getFieldValue(OBLF_MBDI), entity::set_no_ordre_blf);
		stringCobolToJava(line.getFieldValue(STA_MBDI), entity::set_stade_devis);
		dateCobolToJava(line.getFieldValue(DREL_MBDI), entity::set_date_relance_devis);
		longCobolToJava(line.getFieldValue(TAA_MBDI), entity::set_no_taa_inter_agenc);
		integerCobolToJava(line.getFieldValue(FID_MBDI), entity::set_indic_fidelite);
		stringCobolToJava(line.getFieldValue(MOA_MBDI), entity::set_motif_avoir);
		stringCobolToJava(line.getFieldValue(AGL_MBDI), entity::set_agence_livraison);
		integerCobolToJava(line.getFieldValue(IRP_MBDI), entity::set_retour_piece);
		integerCobolToJava(line.getFieldValue(GCO_MBDI), entity::set_indic_conex);
		stringCobolToJava(line.getFieldValue(SVC_MBDI), entity::set_code_service);
		integerCobolToJava(line.getFieldValue(EXC_MBDI), entity::set_sortie_exceptionnelle);
		integerCobolToJava(line.getFieldValue(EDO_MBDI), entity::set_edo_mbdi);
	}

	@Override
	protected void mapJavaToCobol(Bdis entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(AGE_MBDI), entity::get_code_agence);
		longJavaToCobol(line.getFieldValue(BON_MBDI), entity::get_no_bon);
		integerJavaToCobol(line.getFieldValue(TYP_MBDI), entity::get_type_bon);
		integerJavaToCobol(line.getFieldValue(TYC_MBDI), entity::get_tyc_mbdi);
		integerJavaToCobol(line.getFieldValue(IVR_MBDI), entity::get_ivr_mbdi);
		integerJavaToCobol(line.getFieldValue(IFO_MBDI), entity::get_ifo_mbdi);
		longJavaToCobol(line.getFieldValue(CLI_MBDI), entity::get_code_client);
		integerJavaToCobol(line.getFieldValue(TFA_MBDI), entity::get_type_facturation);
		longJavaToCobol(line.getFieldValue(CHC_MBDI), entity::get_no_lieu);
		integerJavaToCobol(line.getFieldValue(TIT_MBDI), entity::get_titre_lieu);
		integerJavaToCobol(line.getFieldValue(IAF_MBDI), entity::get_indic_adresse_lieu);
		stringJavaToCobol(line.getFieldValue(RAI_MBDI), entity::get_nom_lieu);
		stringJavaToCobol(line.getFieldValue(ADR_MBDI), entity::get_adresse_lieu);
		stringJavaToCobol(line.getFieldValue(POS_MBDI), entity::get_code_postal_lieu);
		stringJavaToCobol(line.getFieldValue(VIL_MBDI), entity::get_ville_lieu);
		dateJavaToCobol(line.getFieldValue(DAT_MBDI), entity::get_date_creation);
		integerJavaToCobol(line.getFieldValue(PAI_MBDI + " (0)"), entity::get_mode_paiement_1);
		integerJavaToCobol(line.getFieldValue(PAI_MBDI + " (1)"), entity::get_mode_paiement_2);
		integerJavaToCobol(line.getFieldValue(PAI_MBDI + " (2)"), entity::get_mode_paiement_3);
		integerJavaToCobol(line.getFieldValue(PAI_MBDI + " (3)"), entity::get_mode_paiement_4);
		integerJavaToCobol(line.getFieldValue(PAI_MBDI + " (4)"), entity::get_mode_paiement_5);
		integerJavaToCobol(line.getFieldValue(ECH_MBDI + " (0)"), entity::get_code_echeance_1);
		integerJavaToCobol(line.getFieldValue(ECH_MBDI + " (1)"), entity::get_code_echeance_2);
		integerJavaToCobol(line.getFieldValue(ECH_MBDI + " (2)"), entity::get_code_echeance_3);
		integerJavaToCobol(line.getFieldValue(ECH_MBDI + " (3)"), entity::get_code_echeance_4);
		integerJavaToCobol(line.getFieldValue(ECH_MBDI + " (4)"), entity::get_code_echeance_5);
		integerJavaToCobol(line.getFieldValue(TER_MBDI + " (0)"), entity::get_code_terme_1);
		integerJavaToCobol(line.getFieldValue(TER_MBDI + " (1)"), entity::get_code_terme_2);
		integerJavaToCobol(line.getFieldValue(TER_MBDI + " (2)"), entity::get_code_terme_3);
		integerJavaToCobol(line.getFieldValue(TER_MBDI + " (3)"), entity::get_code_terme_4);
		integerJavaToCobol(line.getFieldValue(TER_MBDI + " (4)"), entity::get_code_terme_5);
		integerJavaToCobol(line.getFieldValue(NJE_MBDI + " (0)"), entity::get_nb_jours_echeance_1);
		integerJavaToCobol(line.getFieldValue(NJE_MBDI + " (1)"), entity::get_nb_jours_echeance_2);
		integerJavaToCobol(line.getFieldValue(NJE_MBDI + " (2)"), entity::get_nb_jours_echeance_3);
		integerJavaToCobol(line.getFieldValue(NJE_MBDI + " (3)"), entity::get_nb_jours_echeance_4);
		integerJavaToCobol(line.getFieldValue(NJE_MBDI + " (4)"), entity::get_nb_jours_echeance_5);
		bigDecimalJavaToCobol(line.getFieldValue(MON_MBDI + " (0)"), entity::get_montant_echeance_1);
		bigDecimalJavaToCobol(line.getFieldValue(MON_MBDI + " (1)"), entity::get_montant_echeance_2);
		bigDecimalJavaToCobol(line.getFieldValue(MON_MBDI + " (2)"), entity::get_montant_echeance_3);
		bigDecimalJavaToCobol(line.getFieldValue(MON_MBDI + " (3)"), entity::get_montant_echeance_4);
		bigDecimalJavaToCobol(line.getFieldValue(MON_MBDI + " (4)"), entity::get_montant_echeance_5);
		bigDecimalJavaToCobol(line.getFieldValue(POU_MBDI + " (0)"), entity::get_pct_paiement_1);
		bigDecimalJavaToCobol(line.getFieldValue(POU_MBDI + " (1)"), entity::get_pct_paiement_2);
		bigDecimalJavaToCobol(line.getFieldValue(POU_MBDI + " (2)"), entity::get_pct_paiement_3);
		bigDecimalJavaToCobol(line.getFieldValue(POU_MBDI + " (3)"), entity::get_pct_paiement_4);
		bigDecimalJavaToCobol(line.getFieldValue(POU_MBDI + " (4)"), entity::get_pct_paiement_5);
		stringJavaToCobol(line.getFieldValue(LPA_MBDI), entity::get_libelle_paiement);
		stringJavaToCobol(line.getFieldValue(REF_MBDI + " (0)"), entity::get_reference_client_1);
		stringJavaToCobol(line.getFieldValue(REF_MBDI + " (1)"), entity::get_reference_client_2);
		longJavaToCobol(line.getFieldValue(FAC_MBDI), entity::get_no_facture);
		integerJavaToCobol(line.getFieldValue(TRA_MBDI), entity::get_indic_traitement);
		stringJavaToCobol(line.getFieldValue(REP_MBDI), entity::get_code_vendeur);
		integerJavaToCobol(line.getFieldValue(IPR_MBDI), entity::get_reserve);
		integerJavaToCobol(line.getFieldValue(IFA_MBDI), entity::get_indic_a_facturer);
		dateJavaToCobol(line.getFieldValue(DFA_MBDI), entity::get_date_facture);
		bigDecimalJavaToCobol(line.getFieldValue(FFA_MBDI), entity::get_mt_frais_fac);
		longJavaToCobol(line.getFieldValue(BCG_MBDI), entity::get_bon_cde_genere);
		bigDecimalJavaToCobol(line.getFieldValue(TAT_MBDI), entity::get_total_ht);
		bigDecimalJavaToCobol(line.getFieldValue(TAC_MBDI), entity::get_total_ttc);
		stringJavaToCobol(line.getFieldValue(NRF_MBDI), entity::get_reference_interne);
		integerJavaToCobol(line.getFieldValue(PER_MBDI), entity::get_periode_facture);
		stringJavaToCobol(line.getFieldValue(DOM_MBDI), entity::get_dom_bancaire);
		stringJavaToCobol(line.getFieldValue(ADB_MBDI), entity::get_adresse_banque);
		integerJavaToCobol(line.getFieldValue(BQE_MBDI), entity::get_code_banque);
		integerJavaToCobol(line.getFieldValue(GUI_MBDI), entity::get_code_guichet);
		stringJavaToCobol(line.getFieldValue(CPT_MBDI), entity::get_no_cpt_banque);
		integerJavaToCobol(line.getFieldValue(RIB_MBDI), entity::get_cle_rib);
		stringJavaToCobol(line.getFieldValue(RIBISO_MBDI), entity::get_cle_rib_iso);
		integerJavaToCobol(line.getFieldValue(MPA_MBDI), entity::get_paiement_sur_relev);
		integerJavaToCobol(line.getFieldValue(TTR_MBDI), entity::get_indic_transport);
		bigDecimalJavaToCobol(line.getFieldValue(ESC_MBDI), entity::get_pct_escompte);
		stringJavaToCobol(line.getFieldValue(AGS_MBDI), entity::get_agence_sortie_piec);
		integerJavaToCobol(line.getFieldValue(DEP_MBDI), entity::get_depot_sortie_piece);
		bigDecimalJavaToCobol(line.getFieldValue(TPR_MBDI), entity::get_total_pr);
		bigDecimalJavaToCobol(line.getFieldValue(MBP_MBDI), entity::get_mt_marge_plancher);
		bigDecimalJavaToCobol(line.getFieldValue(MMI_MBDI), entity::get_mt_marge_mini);
		bigDecimalJavaToCobol(line.getFieldValue(MMX_MBDI), entity::get_mt_marge_maxi);
		integerJavaToCobol(line.getFieldValue(AFC_MBDI), entity::get_affec_fiscale);
		integerJavaToCobol(line.getFieldValue(EDI_MBDI), entity::get_indic_edition);
		stringJavaToCobol(line.getFieldValue(SAL_MBDI), entity::get_auteur_creation);
		integerJavaToCobol(line.getFieldValue(ORI_MBDI), entity::get_origine);
		longJavaToCobol(line.getFieldValue(CDV_MBDI), entity::get_code_client_divers);
		integerJavaToCobol(line.getFieldValue(ACA_MBDI), entity::get_niveau_commande);
		stringJavaToCobol(line.getFieldValue(ABLF_MBDI), entity::get_no_agence_blf);
		longJavaToCobol(line.getFieldValue(LBLF_MBDI), entity::get_no_blf);
		bigDecimalJavaToCobol(line.getFieldValue(ACO_MBDI), entity::get_mt_acompte);
		stringJavaToCobol(line.getFieldValue(TCC_MBDI), entity::get_type_commande_cli);
		longJavaToCobol(line.getFieldValue(CDL_MBDI), entity::get_no_client_divers_l);
		dateJavaToCobol(line.getFieldValue(DLP_MBDI), entity::get_date_liv_prevue);
		integerJavaToCobol(line.getFieldValue(NPT_MBDI), entity::get_nb_parts_copro);
		integerJavaToCobol(line.getFieldValue(EMSG_MBDI), entity::get_emsg_mbdi);
		integerJavaToCobol(line.getFieldValue(LIP_MBDI), entity::get_liv_partielle);
		integerJavaToCobol(line.getFieldValue(ILI_MBDI), entity::get_trs_par_nous);
		stringJavaToCobol(line.getFieldValue(TYM_MBDI), entity::get_type_materiel);
		longJavaToCobol(line.getFieldValue(MAT_MBDI), entity::get_no_ordre_materiel);
		integerJavaToCobol(line.getFieldValue(TBP_MBDI), entity::get_reserve2);
		integerJavaToCobol(line.getFieldValue(DEL_MBDI), entity::get_delai_devis);
		integerJavaToCobol(line.getFieldValue(VAO_MBDI), entity::get_validite_devis);
		longJavaToCobol(line.getFieldValue(FCO_MBDI), entity::get_no_prospect);
		bigDecimalJavaToCobol(line.getFieldValue(MFO_MBDI), entity::get_montant_forfait);
		integerJavaToCobol(line.getFieldValue(DFO_MBDI), entity::get_detail_forfait_fac);
		integerJavaToCobol(line.getFieldValue(IFD_MBDI), entity::get_indic_facture_devi);
		bigDecimalJavaToCobol(line.getFieldValue(CRS_MBDI), entity::get_cours_devise);
		integerJavaToCobol(line.getFieldValue(IRE_MBDI), entity::get_indic_remise);
		bigDecimalJavaToCobol(line.getFieldValue(MRU_MBDI), entity::get_pct_remise);
		integerJavaToCobol(line.getFieldValue(PUS_MBDI), entity::get_indic_port_usine);
		integerJavaToCobol(line.getFieldValue(TTV_MBDI), entity::get_type_tva);
		bigDecimalJavaToCobol(line.getFieldValue(TVA_MBDI), entity::get_pct_tva);
		longJavaToCobol(line.getFieldValue(BCO_MBDI), entity::get_no_commande);
		dateJavaToCobol(line.getFieldValue(DLO_MBDI), entity::get_date_liv_prevue_cd);
		dateJavaToCobol(line.getFieldValue(DCO_MBDI), entity::get_date_commande);
		bigDecimalJavaToCobol(line.getFieldValue(MPF_MBDI), entity::get_mt_port_facture);
		integerJavaToCobol(line.getFieldValue(LET_MBDI), entity::get_indic_avoir_genere);
		integerJavaToCobol(line.getFieldValue(IMM_MBDI), entity::get_indic_paiement_imm);
		longJavaToCobol(line.getFieldValue(CLL_MBDI), entity::get_no_client_livre);
		longJavaToCobol(line.getFieldValue(ITC_MBDI), entity::get_no_interlocuteur);
		integerJavaToCobol(line.getFieldValue(NBC_MBDI), entity::get_nombre_copro);
		integerJavaToCobol(line.getFieldValue(IES_MBDI), entity::get_indic_mobidis);
		integerJavaToCobol(line.getFieldValue(ADD_MBDI), entity::get_acompte_deduit);
		longJavaToCobol(line.getFieldValue(FOU_MBDI), entity::get_no_fou_centrale);
		stringJavaToCobol(line.getFieldValue(NAF_MBDI), entity::get_no_affaire);
		integerJavaToCobol(line.getFieldValue(STR_MBDI), entity::get_transport_saisi);
		integerJavaToCobol(line.getFieldValue(CAT_MBDI), entity::get_bon_en_attente);
		stringJavaToCobol(line.getFieldValue(AUT_MBDI), entity::get_no_autorisation_cr);
		stringJavaToCobol(line.getFieldValue(TSP_MBDI), entity::get_no_ts_prospect);
		integerJavaToCobol(line.getFieldValue(EDIB_MBDI), entity::get_indic_edition_bl);
		longJavaToCobol(line.getFieldValue(NOF_MBDI), entity::get_no_devis);
		integerJavaToCobol(line.getFieldValue(PACO_MBDI), entity::get_mode_paiement_acom);
		longJavaToCobol(line.getFieldValue(FACO_MBDI), entity::get_no_facture_acompte);
		integerJavaToCobol(line.getFieldValue(GEN_MBDI), entity::get_indic_or_genere);
		stringJavaToCobol(line.getFieldValue(MAM_MBDI), entity::get_marque_mat);
		integerJavaToCobol(line.getFieldValue(IRM_MBDI), entity::get_indic_recu_mobile);
		integerJavaToCobol(line.getFieldValue(OBLF_MBDI), entity::get_no_ordre_blf);
		stringJavaToCobol(line.getFieldValue(STA_MBDI), entity::get_stade_devis);
		dateJavaToCobol(line.getFieldValue(DREL_MBDI), entity::get_date_relance_devis);
		longJavaToCobol(line.getFieldValue(TAA_MBDI), entity::get_no_taa_inter_agenc);
		integerJavaToCobol(line.getFieldValue(FID_MBDI), entity::get_indic_fidelite);
		stringJavaToCobol(line.getFieldValue(MOA_MBDI), entity::get_motif_avoir);
		stringJavaToCobol(line.getFieldValue(AGL_MBDI), entity::get_agence_livraison);
		integerJavaToCobol(line.getFieldValue(IRP_MBDI), entity::get_retour_piece);
		integerJavaToCobol(line.getFieldValue(GCO_MBDI), entity::get_indic_conex);
		stringJavaToCobol(line.getFieldValue(SVC_MBDI), entity::get_code_service);
		integerJavaToCobol(line.getFieldValue(EXC_MBDI), entity::get_sortie_exceptionnelle);
		integerJavaToCobol(line.getFieldValue(EDO_MBDI), entity::get_edo_mbdi);
	}

}
