package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Cli;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class CliHandler extends AbstractDataHandler<Cli> implements IDataHandler {

	/**
	 * cobol: ORD-MCLI
	 * db:    no_interne_client
	 */
	private static final String CLE1_MCLI = "CLE1-MCLI";
	/**
	 * cobol: COD-MCLI
	 * db:    code_client
	 */
	private static final String CLE6_MCLI = "CLE6-MCLI";
	/**
	 * cobol: FCO-MCLI
	 * db:    no_fiche_prospect
	 */
	private static final String CLE7_MCLI = "CLE7-MCLI";
	/**
	 * cobol: COC-MCLI
	 * db:    code_client_compta
	 */
	private static final String CLE8_MCLI = "CLE8-MCLI";
	/**
	 * cobol: RAI-MCLI
	 * db:    raison_sociale_cli
	 */
	private static final String CLE2_MCLI = "CLE2-MCLI";
	/**
	 * cobol: TEL-MCLI
	 * db:    no_tel_client
	 */
	private static final String CLE5_MCLI = "CLE5-MCLI";
	/**
	 * cobol: SIR1-MCLI
	 * db:    siret1_client
	 */
	private static final String CLE3_MCLI = "CLE3-MCLI";
	/**
	 * cobol: PAY-MCLI, POS-MCLI
	 * db:    code_pays, code_postal_client
	 */
	private static final String CLE4_MCLI = "CLE4-MCLI";

	/** no_interne_client - N° d'ordre interne (type cobol: 9(9)) */
	private static final String ORD_MCLI = "ORD-MCLI";
	/** code_client - Code client (type cobol: 9(6)) */
	private static final String COD_MCLI = "COD-MCLI";
	/** no_fiche_prospect - N° de fiche prospect (type cobol: 9(8)) */
	private static final String FCO_MCLI = "FCO-MCLI";
	/** code_client_compta - N° client comptable (type cobol: 9(6)) */
	private static final String COC_MCLI = "COC-MCLI";
	/** indic_export - Type client (type cobol: 9(1)) */
	private static final String TYP_MCLI = "TYP-MCLI";
	/** indic_divers - Type client (1=Client Divers (type cobol: 9(1)) */
	private static final String IDV_MCLI = "IDV-MCLI";
	/** code_pays - Code pays (000=national (type cobol: X(3)) */
	private static final String PAY_MCLI = "PAY-MCLI";
	/** code_devise - Code devise (type cobol: X(3)) */
	private static final String DEV_MCLI = "DEV-MCLI";
	/** code_langue - Code langue (type cobol: 9(2)) */
	private static final String LAN_MCLI = "LAN-MCLI";
	/** titre_social - Titre social (table TITSOC (type cobol: 9(2)) */
	private static final String TIT_MCLI = "TIT-MCLI";
	/** raison_sociale_cli - Raison sociale (type cobol: X(30)) */
	private static final String RAI_MCLI = "RAI-MCLI";
	/** adresse_client - Adresse client (type cobol: X(75)) */
	private static final String ADR_MCLI = "ADR-MCLI";
	/** code_postal_client - Code postal (type cobol: X(8)) */
	private static final String POS_MCLI = "POS-MCLI";
	/** ville_client - Ville (type cobol: X(25)) */
	private static final String VIL_MCLI = "VIL-MCLI";
	/** mot_directeur - Ville (type cobol: X(4)) */
	private static final String DIR_MCLI = "DIR-MCLI";
	/** no_tel_client - N° téléphone (type cobol: X(12)) */
	private static final String TEL_MCLI = "TEL-MCLI";
	/** no_tel2_client - N° téléphone 2 (type cobol: X(12)) */
	private static final String TE2_MCLI = "TE2-MCLI";
	/** no_fax_client - N° télécopie (type cobol: X(12)) */
	private static final String FAX_MCLI = "FAX-MCLI";
	/** code_famille_cli (type cobol: X) */
	private static final String FA1_MCLI = "FA1-MCLI";
	/** code_sous_fam_cli (type cobol: X) */
	private static final String FA2_MCLI = "FA2-MCLI";
	/** code_agence - Agence de rattachement (type cobol: X(3)) */
	private static final String AGE_MCLI = "AGE-MCLI";
	/** indic_delai_releve (type cobol: 9(1)) */
	private static final String IDR_MCLI = "IDR-MCLI";
	/** code_releve_fact - Indicateur paiement sur relevé 0 pas de relevé 1 relevé sans traite 2 relevé avec traite (type cobol: 9(1)) */
	private static final String REL_MCLI = "REL-MCLI";
	/** code_paiement - Mode de paiement (type cobol: 9(2)) */
	private static final String PAI_MCLI = "PAI-MCLI";
	/** code_echeance - Code échéance (type cobol: 9(1)) */
	private static final String ECH_MCLI = "ECH-MCLI";
	/** code_terme - Code terme (type cobol: 9(1)) */
	private static final String TER_MCLI = "TER-MCLI";
	/** date_ouverture - Date d'ouverture (type cobol: 9(6)) */
	private static final String DOU_MCLI = "DOU-MCLI";
	/** code_client_fact - N° client facturé (type cobol: 9(6)) */
	private static final String CLF_MCLI = "CLF-MCLI";
	/** frais_deb (type cobol: X(5)) */
	private static final String PFTA_MCLI = "PFTA-MCLI";
	/** distance - Distance en km par rapport à la société (type cobol: 9(4)) */
	private static final String DIS_MCLI = "DIS-MCLI";
	/** dernier_no_webtop (type cobol: 9(4)) */
	private static final String DAF_MCLI = "DAF-MCLI";
	/** code_ape_naf_old - Code APE (type cobol: X(4)) */
	private static final String OLDAPE_MCLI = "OLDAPE-MCLI";
	/** siret1_client (type cobol: X(9)) */
	private static final String SIR1_MCLI = "SIR1-MCLI";
	/** siret2_client (type cobol: X(5)) */
	private static final String SIR2_MCLI = "SIR2-MCLI";
	/** no_societe_liee - N° société liée (type cobol: 9(4)) */
	private static final String STE_MCLI = "STE-MCLI";
	/** no_frn_lie - N° fournisseur société liée (type cobol: 9(6)) */
	private static final String FOU_MCLI = "FOU-MCLI";
	/** indic_lie_dis - Indicateur liaison module distribution (type cobol: 9(1)) */
	private static final String ILD_MCLI = "ILD-MCLI";
	/** indic_lie_sav - Indicateur liaison module réparation (type cobol: 9(1)) */
	private static final String ILR_MCLI = "ILR-MCLI";
	/** indic_lie_loc - Indicateur liaison module location (type cobol: 9(1)) */
	private static final String ILL_MCLI = "ILL-MCLI";
	/** indic_client_agce - Indicateur client agence = 1 (intégration comptable par agence) (type cobol: 9(1)) */
	private static final String IAG_MCLI = "IAG-MCLI";
	/** code_agence_ica - N° agence (intégration comptable par agence (type cobol: X(3)) */
	private static final String AGL_MCLI = "AGL-MCLI";
	/** code_activite - Activité principale (type cobol: X(2)) */
	private static final String ACT_MCLI = "ACT-MCLI";
	/** indic_siege - Indicateur siège de la société (type cobol: 9(1)) */
	private static final String SIE_MCLI = "SIE-MCLI";
	/** no_fcp_siege - N° prospect siège (type cobol: 9(8)) */
	private static final String CSI_MCLI = "CSI-MCLI";
	/** siecle_cre_entrep (type cobol: 9(2)) */
	private static final String SCRE_MCLI = "SCRE-MCLI";
	/** annee_cre_entrep (type cobol: 9(2)) */
	private static final String ACRE_MCLI = "ACRE-MCLI";
	/** mois_cre_entrep (type cobol: 9(2)) */
	private static final String MCRE_MCLI = "MCRE-MCLI";
	/** code_effectif - Code effectif (type cobol: 9(2)) */
	private static final String EFF_MCLI = "EFF-MCLI";
	/** effectif - Effectif (type cobol: 9(6)) */
	private static final String EFC_MCLI = "EFC-MCLI";
	/** ca_annuel - CA en millions d'euros (type cobol: 9(5)V9(2)) */
	private static final String CA_MCLI = "CA-MCLI";
	/** commentaire - Commentaire (type cobol: X(60)) */
	private static final String COM_MCLI = "COM-MCLI";
	/** capital - Capital (type cobol: 9(11)) */
	private static final String CAP_MCLI = "CAP-MCLI";
	/** dcre_mcli (type cobol: 9(8)) */
	private static final String DCRE_MCLI = "DCRE-MCLI";
	/** auteur_creation - Initiales utilisateur création sur le système (type cobol: X(4)) */
	private static final String ICRE_MCLI = "ICRE-MCLI";
	/** date_maj - Date dernière modification (type cobol: 9(8)) */
	private static final String DMAJ_MCLI = "DMAJ-MCLI";
	/** auteur_maj - Initiales de l'utilisateur qui a fait la dernière modification (type cobol: X(4)) */
	private static final String IMAJ_MCLI = "IMAJ-MCLI";
	/** date_maj_mobivip - Date mise à jour (pour synchro portables (type cobol: 9(8)) */
	private static final String DME_MCLI = "DME-MCLI";
	/** code_suppression - Indicateur client annulé (1= Annulé (type cobol: 9(1)) */
	private static final String CANN_MCLI = "CANN-MCLI";
	/** date_suppression - Date d'annulation Client (type cobol: 9(8)) */
	private static final String DANN_MCLI = "DANN-MCLI";
	/** auteur_suppression - Initiales de l'utilisateur qui a annulé (type cobol: X(4)) */
	private static final String IANN_MCLI = "IANN-MCLI";
	/** code_suppr_fcp - Indicateur Prospect annulé (type cobol: 9(1)) */
	private static final String CANNP_MCLI = "CANNP-MCLI";
	/** date_suppr_fcp - Date d'annulation du Prospect (type cobol: 9(8)) */
	private static final String DANNP_MCLI = "DANNP-MCLI";
	/** auteur_suppr_fcp - Initiales utilisateur prospect annulé (type cobol: X(4)) */
	private static final String IANNP_MCLI = "IANNP-MCLI";
	/** special_edi - Indicateur dématérialisation factures (type cobol: X(1)) */
	private static final String FWED_MCLI = "FWED-MCLI";
	/** division_principal - division principale (type cobol: 9(1)) */
	private static final String DVS_MCLI = "DVS-MCLI";
	/** pfl_mcli (type cobol: 9(1)) */
	private static final String PFL_MCLI = "PFL-MCLI";
	/** code_rel_mobivip - Spécifique Mobiloc et MobiVip: Code Relationnel: 0=Client normal   1=A surveiller   2=Suspendu  3=Interdit  (Info Comptable (type cobol: 9) */
	private static final String RLA_MCLI = "RLA-MCLI";
	/** couv_sfac_mobiloc - Spécifique Mobiloc : Couverture SFAC   (Info Comptable (type cobol: 9(8)) */
	private static final String SFAC_MCLI = "SFAC-MCLI";
	/** plafond_mobiloc - Spécifique Mobiloc: Plafond de crédit Autorisé  (Info Comptable (type cobol: 9(8)) */
	private static final String PLI_MCLI = "PLI-MCLI";
	/** comte - Comté ou province (département pour pays autre que France (type cobol: 9(3)) */
	private static final String CTE_MCLI = "CTE-MCLI";
	/** prospect_jd - N° Prospect / Profile John Deere (type cobol: 9(9)) */
	private static final String NPPJD_MCLI = "NPPJD-MCLI";
	/** synchro_jd - A synchroniser / Profile JD:  1=Oui   2=Non   0=Nouveau Prospect  3=A synchroniser mais pas associé à un Prospect Profile    4=Export vers Profile réalisé mais pas associé à un propspect Profile (type cobol: 9) */
	private static final String SYPJD_MCLI = "SYPJD-MCLI";
	/** specif_jd_pub - Reçoit Campagne publicitaire JD (Profile): 0=Non  1=Oui (type cobol: 9) */
	private static final String IEMAJD_MCLI = "IEMAJD-MCLI";
	/** specif_jd_mag - Reçoit Magazine JD (Profile):  0=Non  1=oui (type cobol: 9) */
	private static final String IREVJD_MCLI = "IREVJD-MCLI";
	/** code_ape_naf - Code APE (type cobol: X(5)) */
	private static final String APE_MCLI = "APE-MCLI";
	/** indic_eurofactor - Indicateur Transfert /Eurofactor (type cobol: 9) */
	private static final String IFAC_MCLI = "IFAC-MCLI";
	/** indic_fidelite - Client éligible programme fidélité (type cobol: 9) */
	private static final String FID_MCLI = "FID-MCLI";
	/** liv_partielle - Livraison partielle autorisée - spécifique M3 (type cobol: 9) */
	private static final String LIP_MCLI = "LIP-MCLI";
	/** client_divers_orig - N° client divers d'origine (type cobol: 9(6)) */
	private static final String CDV_MCLI = "CDV-MCLI";
	/** ref_obligatoire - Référence commande obligatoire (type cobol: 9) */
	private static final String RBO_MCLI = "RBO-MCLI";
	/** app_groupe - Appartenance groupe client (spécif Eurolev) ou 1=client Gonnin 2=Migaud 3=Newloc (type cobol: 9) */
	private static final String APG_MCLI = "APG-MCLI";
	/** gln - Code GLN (type cobol: 9(13)) */
	private static final String GLN_MCLI = "GLN-MCLI";
	/** rgpd_mcli - Statut RGPD : 0 = Consentement, 1 = Droit à la portabilité, 2 = Retrait consentement, 3 = Droit à l'oubli (type cobol: 9) */
	private static final String RGPD_MCLI = "RGPD-MCLI";
	/** impression_doc_attaches_sur_factures - Impression documents attachés sur factures (type cobol: 9) */
	private static final String IDA_MCLI = "IDA-MCLI";
	/** no_client_siege - N° client siège (type cobol: 9(6)) */
	private static final String CCS_MCLI = "CCS-MCLI";

	public CliHandler() throws IOException {
		super("mx/fd/MXCLI.fd", "MXCLI", fr.mistral.dataserver.model.mx.Cli.class,
				"CLE1-MCLI",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MCLI, ImmutableList.<String>builder().add(ORD_MCLI).build())
					.put(CLE6_MCLI, ImmutableList.<String>builder().add(COD_MCLI).build())
					.put(CLE7_MCLI, ImmutableList.<String>builder().add(FCO_MCLI).build())
					.put(CLE8_MCLI, ImmutableList.<String>builder().add(COC_MCLI).build())
					.put(CLE2_MCLI, ImmutableList.<String>builder().add(RAI_MCLI).build())
					.put(CLE5_MCLI, ImmutableList.<String>builder().add(TEL_MCLI).build())
					.put(CLE3_MCLI, ImmutableList.<String>builder().add(SIR1_MCLI).build())
					.put(CLE4_MCLI, ImmutableList.<String>builder().add(PAY_MCLI, POS_MCLI).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Cli>>builder()
					.put(ORD_MCLI, new EntityFieldMapper<>(ORD_MCLI, "no_interne_client", Cli::get_no_interne_client))
					.put(COD_MCLI, new EntityFieldMapper<>(COD_MCLI, "code_client", Cli::get_code_client))
					.put(FCO_MCLI, new EntityFieldMapper<>(FCO_MCLI, "no_fiche_prospect", Cli::get_no_fiche_prospect))
					.put(COC_MCLI, new EntityFieldMapper<>(COC_MCLI, "code_client_compta", Cli::get_code_client_compta))
					.put(PAY_MCLI, new EntityFieldMapper<>(PAY_MCLI, "code_pays", Cli::get_code_pays))
					.put(RAI_MCLI, new EntityFieldMapper<>(RAI_MCLI, "raison_sociale_cli", Cli::get_raison_sociale_cli))
					.put(POS_MCLI, new EntityFieldMapper<>(POS_MCLI, "code_postal_client", Cli::get_code_postal_client))
					.put(TEL_MCLI, new EntityFieldMapper<>(TEL_MCLI, "no_tel_client", Cli::get_no_tel_client))
					.put(SIR1_MCLI, new EntityFieldMapper<>(SIR1_MCLI, "siret1_client", Cli::get_siret1_client))
					.build());
	}

	@Override
	public String getName() {
		return "MXCLI";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXCLI2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Cli entity) {
		longCobolToJava(line.getFieldValue(ORD_MCLI), entity::set_no_interne_client);
		longCobolToJava(line.getFieldValue(COD_MCLI), entity::set_code_client);
		longCobolToJava(line.getFieldValue(FCO_MCLI), entity::set_no_fiche_prospect);
		longCobolToJava(line.getFieldValue(COC_MCLI), entity::set_code_client_compta);
		integerCobolToJava(line.getFieldValue(TYP_MCLI), entity::set_indic_export);
		integerCobolToJava(line.getFieldValue(IDV_MCLI), entity::set_indic_divers);
		stringCobolToJava(line.getFieldValue(PAY_MCLI), entity::set_code_pays);
		stringCobolToJava(line.getFieldValue(DEV_MCLI), entity::set_code_devise);
		integerCobolToJava(line.getFieldValue(LAN_MCLI), entity::set_code_langue);
		integerCobolToJava(line.getFieldValue(TIT_MCLI), entity::set_titre_social);
		stringCobolToJava(line.getFieldValue(RAI_MCLI), entity::set_raison_sociale_cli);
		stringCobolToJava(line.getFieldValue(ADR_MCLI), entity::set_adresse_client);
		stringCobolToJava(line.getFieldValue(POS_MCLI), entity::set_code_postal_client);
		stringCobolToJava(line.getFieldValue(VIL_MCLI), entity::set_ville_client);
		stringCobolToJava(line.getFieldValue(DIR_MCLI), entity::set_mot_directeur);
		stringCobolToJava(line.getFieldValue(TEL_MCLI), entity::set_no_tel_client);
		stringCobolToJava(line.getFieldValue(TE2_MCLI), entity::set_no_tel2_client);
		stringCobolToJava(line.getFieldValue(FAX_MCLI), entity::set_no_fax_client);
		stringCobolToJava(line.getFieldValue(FA1_MCLI), entity::set_code_famille_cli);
		stringCobolToJava(line.getFieldValue(FA2_MCLI), entity::set_code_sous_fam_cli);
		stringCobolToJava(line.getFieldValue(AGE_MCLI), entity::set_code_agence);
		integerCobolToJava(line.getFieldValue(IDR_MCLI), entity::set_indic_delai_releve);
		integerCobolToJava(line.getFieldValue(REL_MCLI), entity::set_code_releve_fact);
		integerCobolToJava(line.getFieldValue(PAI_MCLI), entity::set_code_paiement);
		integerCobolToJava(line.getFieldValue(ECH_MCLI), entity::set_code_echeance);
		integerCobolToJava(line.getFieldValue(TER_MCLI), entity::set_code_terme);
		longCobolToJava(line.getFieldValue(DOU_MCLI), entity::set_date_ouverture);
		longCobolToJava(line.getFieldValue(CLF_MCLI), entity::set_code_client_fact);
		stringCobolToJava(line.getFieldValue(PFTA_MCLI), entity::set_frais_deb);
		integerCobolToJava(line.getFieldValue(DIS_MCLI), entity::set_distance);
		integerCobolToJava(line.getFieldValue(DAF_MCLI), entity::set_dernier_no_webtop);
		stringCobolToJava(line.getFieldValue(OLDAPE_MCLI), entity::set_code_ape_naf_old);
		stringCobolToJava(line.getFieldValue(SIR1_MCLI), entity::set_siret1_client);
		stringCobolToJava(line.getFieldValue(SIR2_MCLI), entity::set_siret2_client);
		integerCobolToJava(line.getFieldValue(STE_MCLI), entity::set_no_societe_liee);
		longCobolToJava(line.getFieldValue(FOU_MCLI), entity::set_no_frn_lie);
		integerCobolToJava(line.getFieldValue(ILD_MCLI), entity::set_indic_lie_dis);
		integerCobolToJava(line.getFieldValue(ILR_MCLI), entity::set_indic_lie_sav);
		integerCobolToJava(line.getFieldValue(ILL_MCLI), entity::set_indic_lie_loc);
		integerCobolToJava(line.getFieldValue(IAG_MCLI), entity::set_indic_client_agce);
		stringCobolToJava(line.getFieldValue(AGL_MCLI), entity::set_code_agence_ica);
		stringCobolToJava(line.getFieldValue(ACT_MCLI + " (0)"), entity::set_code_activite_1);
		stringCobolToJava(line.getFieldValue(ACT_MCLI + " (1)"), entity::set_code_activite_2);
		stringCobolToJava(line.getFieldValue(ACT_MCLI + " (2)"), entity::set_code_activite_3);
		stringCobolToJava(line.getFieldValue(ACT_MCLI + " (3)"), entity::set_code_activite_4);
		integerCobolToJava(line.getFieldValue(SIE_MCLI), entity::set_indic_siege);
		longCobolToJava(line.getFieldValue(CSI_MCLI), entity::set_no_fcp_siege);
		integerCobolToJava(line.getFieldValue(SCRE_MCLI), entity::set_siecle_cre_entrep);
		integerCobolToJava(line.getFieldValue(ACRE_MCLI), entity::set_annee_cre_entrep);
		integerCobolToJava(line.getFieldValue(MCRE_MCLI), entity::set_mois_cre_entrep);
		integerCobolToJava(line.getFieldValue(EFF_MCLI), entity::set_code_effectif);
		longCobolToJava(line.getFieldValue(EFC_MCLI), entity::set_effectif);
		bigDecimalCobolToJava(line.getFieldValue(CA_MCLI), entity::set_ca_annuel);
		stringCobolToJava(line.getFieldValue(COM_MCLI), entity::set_commentaire);
		longCobolToJava(line.getFieldValue(CAP_MCLI), entity::set_capital);
		longCobolToJava(line.getFieldValue(DCRE_MCLI), entity::set_dcre_mcli);
		stringCobolToJava(line.getFieldValue(ICRE_MCLI), entity::set_auteur_creation);
		dateCobolToJava(line.getFieldValue(DMAJ_MCLI), entity::set_date_maj);
		stringCobolToJava(line.getFieldValue(IMAJ_MCLI), entity::set_auteur_maj);
		dateCobolToJava(line.getFieldValue(DME_MCLI), entity::set_date_maj_mobivip);
		integerCobolToJava(line.getFieldValue(CANN_MCLI), entity::set_code_suppression);
		dateCobolToJava(line.getFieldValue(DANN_MCLI), entity::set_date_suppression);
		stringCobolToJava(line.getFieldValue(IANN_MCLI), entity::set_auteur_suppression);
		integerCobolToJava(line.getFieldValue(CANNP_MCLI), entity::set_code_suppr_fcp);
		dateCobolToJava(line.getFieldValue(DANNP_MCLI), entity::set_date_suppr_fcp);
		stringCobolToJava(line.getFieldValue(IANNP_MCLI), entity::set_auteur_suppr_fcp);
		stringCobolToJava(line.getFieldValue(FWED_MCLI), entity::set_special_edi);
		integerCobolToJava(line.getFieldValue(DVS_MCLI), entity::set_division_principal);
		integerCobolToJava(line.getFieldValue(PFL_MCLI), entity::set_pfl_mcli);
		integerCobolToJava(line.getFieldValue(RLA_MCLI), entity::set_code_rel_mobivip);
		longCobolToJava(line.getFieldValue(SFAC_MCLI), entity::set_couv_sfac_mobiloc);
		longCobolToJava(line.getFieldValue(PLI_MCLI), entity::set_plafond_mobiloc);
		integerCobolToJava(line.getFieldValue(CTE_MCLI), entity::set_comte);
		longCobolToJava(line.getFieldValue(NPPJD_MCLI), entity::set_prospect_jd);
		integerCobolToJava(line.getFieldValue(SYPJD_MCLI), entity::set_synchro_jd);
		booleanCobolToJava(line.getFieldValue(IEMAJD_MCLI), entity::set_specif_jd_pub);
		booleanCobolToJava(line.getFieldValue(IREVJD_MCLI), entity::set_specif_jd_mag);
		stringCobolToJava(line.getFieldValue(APE_MCLI), entity::set_code_ape_naf);
		integerCobolToJava(line.getFieldValue(IFAC_MCLI), entity::set_indic_eurofactor);
		integerCobolToJava(line.getFieldValue(FID_MCLI), entity::set_indic_fidelite);
		integerCobolToJava(line.getFieldValue(LIP_MCLI), entity::set_liv_partielle);
		longCobolToJava(line.getFieldValue(CDV_MCLI), entity::set_client_divers_orig);
		integerCobolToJava(line.getFieldValue(RBO_MCLI), entity::set_ref_obligatoire);
		integerCobolToJava(line.getFieldValue(APG_MCLI), entity::set_app_groupe);
		longCobolToJava(line.getFieldValue(GLN_MCLI), entity::set_gln);
		integerCobolToJava(line.getFieldValue(RGPD_MCLI), entity::set_rgpd_mcli);
		booleanCobolToJava(line.getFieldValue(IDA_MCLI), entity::set_impression_doc_attaches_sur_factures);
		longCobolToJava(line.getFieldValue(CCS_MCLI), entity::set_no_client_siege);
	}

	@Override
	protected void mapJavaToCobol(Cli entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(ORD_MCLI), entity::get_no_interne_client);
		longJavaToCobol(line.getFieldValue(COD_MCLI), entity::get_code_client);
		longJavaToCobol(line.getFieldValue(FCO_MCLI), entity::get_no_fiche_prospect);
		longJavaToCobol(line.getFieldValue(COC_MCLI), entity::get_code_client_compta);
		integerJavaToCobol(line.getFieldValue(TYP_MCLI), entity::get_indic_export);
		integerJavaToCobol(line.getFieldValue(IDV_MCLI), entity::get_indic_divers);
		stringJavaToCobol(line.getFieldValue(PAY_MCLI), entity::get_code_pays);
		stringJavaToCobol(line.getFieldValue(DEV_MCLI), entity::get_code_devise);
		integerJavaToCobol(line.getFieldValue(LAN_MCLI), entity::get_code_langue);
		integerJavaToCobol(line.getFieldValue(TIT_MCLI), entity::get_titre_social);
		stringJavaToCobol(line.getFieldValue(RAI_MCLI), entity::get_raison_sociale_cli);
		stringJavaToCobol(line.getFieldValue(ADR_MCLI), entity::get_adresse_client);
		stringJavaToCobol(line.getFieldValue(POS_MCLI), entity::get_code_postal_client);
		stringJavaToCobol(line.getFieldValue(VIL_MCLI), entity::get_ville_client);
		stringJavaToCobol(line.getFieldValue(DIR_MCLI), entity::get_mot_directeur);
		stringJavaToCobol(line.getFieldValue(TEL_MCLI), entity::get_no_tel_client);
		stringJavaToCobol(line.getFieldValue(TE2_MCLI), entity::get_no_tel2_client);
		stringJavaToCobol(line.getFieldValue(FAX_MCLI), entity::get_no_fax_client);
		stringJavaToCobol(line.getFieldValue(FA1_MCLI), entity::get_code_famille_cli);
		stringJavaToCobol(line.getFieldValue(FA2_MCLI), entity::get_code_sous_fam_cli);
		stringJavaToCobol(line.getFieldValue(AGE_MCLI), entity::get_code_agence);
		integerJavaToCobol(line.getFieldValue(IDR_MCLI), entity::get_indic_delai_releve);
		integerJavaToCobol(line.getFieldValue(REL_MCLI), entity::get_code_releve_fact);
		integerJavaToCobol(line.getFieldValue(PAI_MCLI), entity::get_code_paiement);
		integerJavaToCobol(line.getFieldValue(ECH_MCLI), entity::get_code_echeance);
		integerJavaToCobol(line.getFieldValue(TER_MCLI), entity::get_code_terme);
		longJavaToCobol(line.getFieldValue(DOU_MCLI), entity::get_date_ouverture);
		longJavaToCobol(line.getFieldValue(CLF_MCLI), entity::get_code_client_fact);
		stringJavaToCobol(line.getFieldValue(PFTA_MCLI), entity::get_frais_deb);
		integerJavaToCobol(line.getFieldValue(DIS_MCLI), entity::get_distance);
		integerJavaToCobol(line.getFieldValue(DAF_MCLI), entity::get_dernier_no_webtop);
		stringJavaToCobol(line.getFieldValue(OLDAPE_MCLI), entity::get_code_ape_naf_old);
		stringJavaToCobol(line.getFieldValue(SIR1_MCLI), entity::get_siret1_client);
		stringJavaToCobol(line.getFieldValue(SIR2_MCLI), entity::get_siret2_client);
		integerJavaToCobol(line.getFieldValue(STE_MCLI), entity::get_no_societe_liee);
		longJavaToCobol(line.getFieldValue(FOU_MCLI), entity::get_no_frn_lie);
		integerJavaToCobol(line.getFieldValue(ILD_MCLI), entity::get_indic_lie_dis);
		integerJavaToCobol(line.getFieldValue(ILR_MCLI), entity::get_indic_lie_sav);
		integerJavaToCobol(line.getFieldValue(ILL_MCLI), entity::get_indic_lie_loc);
		integerJavaToCobol(line.getFieldValue(IAG_MCLI), entity::get_indic_client_agce);
		stringJavaToCobol(line.getFieldValue(AGL_MCLI), entity::get_code_agence_ica);
		stringJavaToCobol(line.getFieldValue(ACT_MCLI + " (0)"), entity::get_code_activite_1);
		stringJavaToCobol(line.getFieldValue(ACT_MCLI + " (1)"), entity::get_code_activite_2);
		stringJavaToCobol(line.getFieldValue(ACT_MCLI + " (2)"), entity::get_code_activite_3);
		stringJavaToCobol(line.getFieldValue(ACT_MCLI + " (3)"), entity::get_code_activite_4);
		integerJavaToCobol(line.getFieldValue(SIE_MCLI), entity::get_indic_siege);
		longJavaToCobol(line.getFieldValue(CSI_MCLI), entity::get_no_fcp_siege);
		integerJavaToCobol(line.getFieldValue(SCRE_MCLI), entity::get_siecle_cre_entrep);
		integerJavaToCobol(line.getFieldValue(ACRE_MCLI), entity::get_annee_cre_entrep);
		integerJavaToCobol(line.getFieldValue(MCRE_MCLI), entity::get_mois_cre_entrep);
		integerJavaToCobol(line.getFieldValue(EFF_MCLI), entity::get_code_effectif);
		longJavaToCobol(line.getFieldValue(EFC_MCLI), entity::get_effectif);
		bigDecimalJavaToCobol(line.getFieldValue(CA_MCLI), entity::get_ca_annuel);
		stringJavaToCobol(line.getFieldValue(COM_MCLI), entity::get_commentaire);
		longJavaToCobol(line.getFieldValue(CAP_MCLI), entity::get_capital);
		longJavaToCobol(line.getFieldValue(DCRE_MCLI), entity::get_dcre_mcli);
		stringJavaToCobol(line.getFieldValue(ICRE_MCLI), entity::get_auteur_creation);
		dateJavaToCobol(line.getFieldValue(DMAJ_MCLI), entity::get_date_maj);
		stringJavaToCobol(line.getFieldValue(IMAJ_MCLI), entity::get_auteur_maj);
		dateJavaToCobol(line.getFieldValue(DME_MCLI), entity::get_date_maj_mobivip);
		integerJavaToCobol(line.getFieldValue(CANN_MCLI), entity::get_code_suppression);
		dateJavaToCobol(line.getFieldValue(DANN_MCLI), entity::get_date_suppression);
		stringJavaToCobol(line.getFieldValue(IANN_MCLI), entity::get_auteur_suppression);
		integerJavaToCobol(line.getFieldValue(CANNP_MCLI), entity::get_code_suppr_fcp);
		dateJavaToCobol(line.getFieldValue(DANNP_MCLI), entity::get_date_suppr_fcp);
		stringJavaToCobol(line.getFieldValue(IANNP_MCLI), entity::get_auteur_suppr_fcp);
		stringJavaToCobol(line.getFieldValue(FWED_MCLI), entity::get_special_edi);
		integerJavaToCobol(line.getFieldValue(DVS_MCLI), entity::get_division_principal);
		integerJavaToCobol(line.getFieldValue(PFL_MCLI), entity::get_pfl_mcli);
		integerJavaToCobol(line.getFieldValue(RLA_MCLI), entity::get_code_rel_mobivip);
		longJavaToCobol(line.getFieldValue(SFAC_MCLI), entity::get_couv_sfac_mobiloc);
		longJavaToCobol(line.getFieldValue(PLI_MCLI), entity::get_plafond_mobiloc);
		integerJavaToCobol(line.getFieldValue(CTE_MCLI), entity::get_comte);
		longJavaToCobol(line.getFieldValue(NPPJD_MCLI), entity::get_prospect_jd);
		integerJavaToCobol(line.getFieldValue(SYPJD_MCLI), entity::get_synchro_jd);
		booleanJavaToCobol(line.getFieldValue(IEMAJD_MCLI), entity::get_specif_jd_pub);
		booleanJavaToCobol(line.getFieldValue(IREVJD_MCLI), entity::get_specif_jd_mag);
		stringJavaToCobol(line.getFieldValue(APE_MCLI), entity::get_code_ape_naf);
		integerJavaToCobol(line.getFieldValue(IFAC_MCLI), entity::get_indic_eurofactor);
		integerJavaToCobol(line.getFieldValue(FID_MCLI), entity::get_indic_fidelite);
		integerJavaToCobol(line.getFieldValue(LIP_MCLI), entity::get_liv_partielle);
		longJavaToCobol(line.getFieldValue(CDV_MCLI), entity::get_client_divers_orig);
		integerJavaToCobol(line.getFieldValue(RBO_MCLI), entity::get_ref_obligatoire);
		integerJavaToCobol(line.getFieldValue(APG_MCLI), entity::get_app_groupe);
		longJavaToCobol(line.getFieldValue(GLN_MCLI), entity::get_gln);
		integerJavaToCobol(line.getFieldValue(RGPD_MCLI), entity::get_rgpd_mcli);
		booleanJavaToCobol(line.getFieldValue(IDA_MCLI), entity::get_impression_doc_attaches_sur_factures);
		longJavaToCobol(line.getFieldValue(CCS_MCLI), entity::get_no_client_siege);
	}

}
