package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Agence;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class AgenceHandler extends AbstractDataHandler<Agence> implements IDataHandler {

	/**
	 * cobol: COD-MAGC
	 * db:    code_agence
	 */
	private static final String CLE1_MAGC = "CLE1-MAGC";

	/** code_agence - Code agence (type cobol: XXX) */
	private static final String COD_MAGC = "COD-MAGC";
	/** nom_agence - Nom (type cobol: X(30)) */
	private static final String NOM_MAGC = "NOM-MAGC";
	/** adresse1_agence - Adresse 1 (type cobol: X(30)) */
	private static final String RUE_MAGC = "RUE-MAGC";
	/** adresse2_agence - Adresse 2 (type cobol: X(30)) */
	private static final String LIE_MAGC = "LIE-MAGC";
	/** code_postal_agence - Code postal (type cobol: X(8)) */
	private static final String POS_MAGC = "POS-MAGC";
	/** ville_agence - Ville (type cobol: X(30)) */
	private static final String VIL_MAGC = "VIL-MAGC";
	/** abrege_agence - Abrégé (type cobol: XX) */
	private static final String ABR_MAGC = "ABR-MAGC";
	/** no_tel_agence - N° téléphone (type cobol: X(12)) */
	private static final String TEL_MAGC = "TEL-MAGC";
	/** no_tel2_agence - N° téléphone (type cobol: X(12)) */
	private static final String TE2_MAGC = "TE2-MAGC";
	/** no_fax_agence - N° fax (type cobol: X(12)) */
	private static final String TEC_MAGC = "TEC-MAGC";
	/** no_tel_nuit_agence - N° téléphone nuit (FWK (type cobol: X(12)) */
	private static final String TEN_MAGC = "TEN-MAGC";
	/** code_region - N° région (type cobol: XX) */
	private static final String REG_MAGC = "REG-MAGC";
	/** indic_nomencla_deb - Ligne nomenclature DEB: 0=globalisée 1=détaillée/article 2=détaillée/facture (type cobol: 9) */
	private static final String DEB_MAGC = "DEB-MAGC";
	/** code_contact_deb - Contact/ DEB (type cobol: X(4)) */
	private static final String PED_MAGC = "PED-MAGC";
	/** no_ets_deb - N° établissement DEB (type cobol: 9(4)) */
	private static final String NIC_MAGC = "NIC-MAGC";
	/** no_tva_cee - N° TVA CEE (type cobol: X(20)) */
	private static final String TVA_MAGC = "TVA-MAGC";
	/** no_soc_comptable - N°  société comptable (type cobol: 9(4)) */
	private static final String STC_MAGC = "STC-MAGC";
	/** code_client - N° client/agence (type cobol: 9(6)) */
	private static final String CLI_MAGC = "CLI-MAGC";
	/** code_fournisseur - N° fournisseur/agence (type cobol: 9(6)) */
	private static final String FOU_MAGC = "FOU-MAGC";
	/** abrege_agence_fwk - Abrégé agence FWK (type cobol: X(2)) */
	private static final String AFWK_MAGC = "AFWK-MAGC";
	/** code_client2 - N° client/agence 2 (type cobol: 9(6)) */
	private static final String CLI2_MAGC = "CLI2-MAGC";
	/** abrege_promodis - (Suffixe COFOR pour démat factures Fenwick ?) Code Magasin Garem (type cobol: 9(6)) */
	private static final String CPRO_MAGC = "CPRO-MAGC";
	/** code_agence_siege - N° agence siège (type cobol: XXX) */
	private static final String AGS_MAGC = "AGS-MAGC";
	/** der_no_releve - Dernier n° relévé (type cobol: 9(6)) */
	private static final String REL_MAGC = "REL-MAGC";
	/** der_no_traite - Dernier n° traite (type cobol: 9(6)) */
	private static final String TRT_MAGC = "TRT-MAGC";
	/** der_no_deb - Dernier n° DEB (type cobol: 9(6)) */
	private static final String DND_MAGC = "DND-MAGC";
	/** code_responsable - Responsable agence (type cobol: X(4)) */
	private static final String REP_MAGC = "REP-MAGC";
	/** dat_der_inventaire - Date dernier contrôle inventaire (type cobol: 9(8)) */
	private static final String DCI_MAGC = "DCI-MAGC";
	/** der_no_inventaire - Dernier n° bordereau contrôle inventaire (type cobol: 9(6)) */
	private static final String BCI_MAGC = "BCI-MAGC";
	/** der_no_bvr - Dernier n° BVR (type cobol: 9(6)) */
	private static final String BVR_MAGC = "BVR-MAGC";
	/** der_no_etiquette - Dernier n° étiquette (type cobol: 9(6)) */
	private static final String ETI_MAGC = "ETI-MAGC";
	/** code_gpe_tarif - N° groupe tarifaire (type cobol: XX) */
	private static final String GTL_MAGC = "GTL-MAGC";
	/** der_no_transf_parc - Dernier n° bordereau transfert parc (type cobol: 9(6)) */
	private static final String DBT_MAGC = "DBT-MAGC";
	/** der_no_interv_ext - Dernier n° intervention extérieure (type cobol: 9(6)) */
	private static final String DBI_MAGC = "DBI-MAGC";
	/** der_no_transf_art - Dernier n° transfert article (type cobol: 9(6)) */
	private static final String DTM_MAGC = "DTM-MAGC";
	/** der_no_eti_chgt_px - Dernier n° transfert article (type cobol: 9(6)) */
	private static final String DNE_MAGC = "DNE-MAGC";
	/** indic_sai_fic_trav - Saisie fiche de travail: 0=horaire 1=durée (type cobol: 9) */
	private static final String FTS_MAGC = "FTS-MAGC";
	/** ind_per_fic_trav - Périodicité saisie fiches travail salarié: 0=indifférent 1=quotidien 2=hebdomadaire 3=mensuel (type cobol: 9) */
	private static final String PSF_MAGC = "PSF-MAGC";
	/** siret1_agence (type cobol: X(9)) */
	private static final String SIR1_MAGC = "SIR1-MAGC";
	/** siret2_agence (type cobol: X(5)) */
	private static final String SIR2_MAGC = "SIR2-MAGC";
	/** code_pays (type cobol: X(3)) */
	private static final String PAY_MAGC = "PAY-MAGC";
	/** gpe_tva_imposee - Groupe TVA Imposée (type cobol: 9) */
	private static final String AFC_MAGC = "AFC-MAGC";
	/** arr_tps_debut - Arrondi heure début pointeurse atelier: 0=non 1=5mn 2=10mn 3=15mn (type cobol: 99) */
	private static final String ARRD_MAGC = "ARRD-MAGC";
	/** typ_arr_tpsd - Type Arrondi heure début pointeurse atelier: 1=avant 2=après (type cobol: 9) */
	private static final String TARRD_MAGC = "TARRD-MAGC";
	/** arr_tps_fin - Arrondi heure fin pointeurse atelier: 0=non 1=5mn 2=10mn 3=15mn (type cobol: 99) */
	private static final String ARRF_MAGC = "ARRF-MAGC";
	/** typ_arr_tpsf - Type Arrondi heure fin pointeurse atelier: 1=avant 2=après (type cobol: 9) */
	private static final String TARRF_MAGC = "TARRF-MAGC";
	/** cpt_taxe_especes - N° compte pour taxe / paiements en espèces (type cobol: 9(8)) */
	private static final String CTPE_MAGC = "CTPE-MAGC";
	/** non_utilise - Gestion des enseignes (entête modifiable en édition (type cobol: 9) */
	private static final String ENS_MAGC = "ENS-MAGC";
	/** cpt_factures_em_sa - N° compte Factures à emettre (SAV car plus de filler dans ageate) (type cobol: 9(8)) */
	private static final String FAE_MAGC = "FAE-MAGC";
	/** cpt_avoirs_em_sav - N° compte Avoirs à emettre  (SAV car plus de filler dans ageate) (type cobol: 9(8)) */
	private static final String AAE_MAGC = "AAE-MAGC";
	/** modele_sortie_mbs - Modèle général de formulaire de réception matériel (Mobistac) (type cobol: XXX) */
	private static final String MBTAE_MAGC = "MBTAE-MAGC";
	/** modele_retour_mbs - Modèle général de formulaire de retour matériel (Mobistac) (type cobol: XXX) */
	private static final String MBTAS_MAGC = "MBTAS-MAGC";
	/** pci_sortie_mbs - Poste CI OR sortie (Mobistac) (type cobol: 999) */
	private static final String PCIS_MAGC = "PCIS-MAGC";
	/** pci_entree_mbs - Poste CI OR entrée (Mobistac) (type cobol: 999) */
	private static final String PCIE_MAGC = "PCIE-MAGC";
	/** formulaire_pp - Modèle général de formulaire de plan de prévention (type cobol: XXX) */
	private static final String MPP_MAGC = "MPP-MAGC";
	/** jours_mbs - Nombre de jours récup OR / Mobistac (type cobol: 99) */
	private static final String NJS_MAGC = "NJS-MAGC";
	/** no_jou_encours - Envoi message demandeur transport 0=non 1=miami 2=mail 3=les 2 (type cobol: 9) */
	private static final String MDT_MAGC = "MDT-MAGC";
	/** agence_stc - N° agence stock central (type cobol: X(3)) */
	private static final String AGSC_MAGC = "AGSC-MAGC";
	/** caisse_lsd - N° caisse libre-service paiements immédiats (type cobol: 99) */
	private static final String CLSDR_MAGC = "CLSDR-MAGC";
	/** coefficient_pieces - Coefficient pondérateur CI pièces autres sociétés (type cobol: 9V9(3)) */
	private static final String CPCS_MAGC = "CPCS-MAGC";
	/** modele_cl - Modèle général de check-list de contrôle / matériel (Module SAV) (type cobol: XXX) */
	private static final String MCL_MAGC = "MCL-MAGC";
	/** prim - Agence traitée par CNH PRIM (type cobol: 9) */
	private static final String PRIM_MAGC = "PRIM-MAGC";
	/** mdi - Agence traitée par AGCO MDI ou bien par TEREX MDI (0=Non  1=Oui) (type cobol: 9) */
	private static final String MDI_MAGC = "MDI-MAGC";
	/** trs_travaux_mobite - Indicateur transfert travaux effectués dans travaux pris en charge (MOBITEC) (type cobol: 9) */
	private static final String TTPC_MAGC = "TTPC-MAGC";
	/** journal_provis - N° journal pour les provisions de fin de mois (type cobol: X(4)) */
	private static final String JOPR_MAGC = "JOPR-MAGC";
	/** pieces_mobitec - Indicateur saisie pièces sur MOBITEC atelier (type cobol: 9) */
	private static final String SPMA_MAGC = "SPMA-MAGC";
	/** mail_mobitec - Indicateur mail fiche client SAV prioritaire (MOBITEC) (type cobol: 9) */
	private static final String MCSP_MAGC = "MCSP-MAGC";
	/** selection_or_mobit - Indicateur sélection OR sur système central (MOBITEC Atelier) (type cobol: 9) */
	private static final String SISC_MAGC = "SISC-MAGC";
	/** reappro_mobitec - MobiTec: Gestion des reappro des véhicules:  0=oui  1=non (type cobol: 9) */
	private static final String MBTREA_MAGC = "MBTREA-MAGC";
	/** ecart_h_pointage - Ecart horaire standard/horaire pointage atelier (type cobol: 99) */
	private static final String ECHO_MAGC = "ECHO-MAGC";
	/** creation_oi_mobist - Mobistac: création OI sur tablette (type cobol: 9) */
	private static final String MBSOI_MAGC = "MBSOI-MAGC";
	/** age_fermee - Agence fermée (non visible en ASA) (type cobol: 9) */
	private static final String FERM_MAGC = "FERM-MAGC";
	/** opp - Agence traitée par OPP Promodis (0=Non  1=Oui) | (type cobol: 9) */
	private static final String OPP_MAGC = "OPP-MAGC";
	/** jdprism - Agence traitée par JD PRISM: 0=Non  1=Oui (type cobol: 9) */
	private static final String JDPRISM_MAGC = "JDPRISM-MAGC";
	/** reappro_agence - Mobitec: gestion réappro / agence sortie stock AGE (type cobol: 9) */
	private static final String MBTGAGS_MAGC = "MBTGAGS-MAGC";
	/** cloture_auto_vgp - Mobitec: cloture auto des OR VGP (type cobol: 9) */
	private static final String MBTCVGP_MAGC = "MBTCVGP-MAGC";
	/** mise_sous_pli - Agence traitée en mise sous pli 0=Oui 1=non, si module mise sous pli Corus ou Maileva (type cobol: 9) */
	private static final String MSP_MAGC = "MSP-MAGC";

	public AgenceHandler() throws IOException {
		super("mx/fd/MXAGENCE.fd", "MXAGENCE", fr.mistral.dataserver.model.mx.Agence.class,
				"CLE1-MAGC",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MAGC, ImmutableList.<String>builder().add(COD_MAGC).build())
					.put(NOM_MAGC, ImmutableList.<String>builder().add(NOM_MAGC).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Agence>>builder()
					.put(COD_MAGC, new EntityFieldMapper<>(COD_MAGC, "code_agence", Agence::get_code_agence))
					.put(NOM_MAGC, new EntityFieldMapper<>(NOM_MAGC, "nom_agence", Agence::get_nom_agence))
					.build());
	}

	@Override
	public String getName() {
		return "MXAGENCE";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXAGENCE2", "MXAGENCE3");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Agence entity) {
		stringCobolToJava(line.getFieldValue(COD_MAGC), entity::set_code_agence);
		stringCobolToJava(line.getFieldValue(NOM_MAGC), entity::set_nom_agence);
		stringCobolToJava(line.getFieldValue(RUE_MAGC), entity::set_adresse1_agence);
		stringCobolToJava(line.getFieldValue(LIE_MAGC), entity::set_adresse2_agence);
		stringCobolToJava(line.getFieldValue(POS_MAGC), entity::set_code_postal_agence);
		stringCobolToJava(line.getFieldValue(VIL_MAGC), entity::set_ville_agence);
		stringCobolToJava(line.getFieldValue(ABR_MAGC), entity::set_abrege_agence);
		stringCobolToJava(line.getFieldValue(TEL_MAGC), entity::set_no_tel_agence);
		stringCobolToJava(line.getFieldValue(TE2_MAGC), entity::set_no_tel2_agence);
		stringCobolToJava(line.getFieldValue(TEC_MAGC), entity::set_no_fax_agence);
		stringCobolToJava(line.getFieldValue(TEN_MAGC), entity::set_no_tel_nuit_agence);
		stringCobolToJava(line.getFieldValue(REG_MAGC), entity::set_code_region);
		integerCobolToJava(line.getFieldValue(DEB_MAGC), entity::set_indic_nomencla_deb);
		stringCobolToJava(line.getFieldValue(PED_MAGC), entity::set_code_contact_deb);
		integerCobolToJava(line.getFieldValue(NIC_MAGC), entity::set_no_ets_deb);
		stringCobolToJava(line.getFieldValue(TVA_MAGC), entity::set_no_tva_cee);
		integerCobolToJava(line.getFieldValue(STC_MAGC), entity::set_no_soc_comptable);
		longCobolToJava(line.getFieldValue(CLI_MAGC), entity::set_code_client);
		longCobolToJava(line.getFieldValue(FOU_MAGC), entity::set_code_fournisseur);
		stringCobolToJava(line.getFieldValue(AFWK_MAGC), entity::set_abrege_agence_fwk);
		longCobolToJava(line.getFieldValue(CLI2_MAGC), entity::set_code_client2);
		longCobolToJava(line.getFieldValue(CPRO_MAGC), entity::set_abrege_promodis);
		stringCobolToJava(line.getFieldValue(AGS_MAGC), entity::set_code_agence_siege);
		longCobolToJava(line.getFieldValue(REL_MAGC), entity::set_der_no_releve);
		longCobolToJava(line.getFieldValue(TRT_MAGC), entity::set_der_no_traite);
		longCobolToJava(line.getFieldValue(DND_MAGC), entity::set_der_no_deb);
		stringCobolToJava(line.getFieldValue(REP_MAGC), entity::set_code_responsable);
		longCobolToJava(line.getFieldValue(DCI_MAGC), entity::set_dat_der_inventaire);
		longCobolToJava(line.getFieldValue(BCI_MAGC), entity::set_der_no_inventaire);
		longCobolToJava(line.getFieldValue(BVR_MAGC), entity::set_der_no_bvr);
		longCobolToJava(line.getFieldValue(ETI_MAGC), entity::set_der_no_etiquette);
		stringCobolToJava(line.getFieldValue(GTL_MAGC), entity::set_code_gpe_tarif);
		longCobolToJava(line.getFieldValue(DBT_MAGC), entity::set_der_no_transf_parc);
		longCobolToJava(line.getFieldValue(DBI_MAGC), entity::set_der_no_interv_ext);
		longCobolToJava(line.getFieldValue(DTM_MAGC), entity::set_der_no_transf_art);
		longCobolToJava(line.getFieldValue(DNE_MAGC), entity::set_der_no_eti_chgt_px);
		integerCobolToJava(line.getFieldValue(FTS_MAGC), entity::set_indic_sai_fic_trav);
		integerCobolToJava(line.getFieldValue(PSF_MAGC), entity::set_ind_per_fic_trav);
		stringCobolToJava(line.getFieldValue(SIR1_MAGC), entity::set_siret1_agence);
		stringCobolToJava(line.getFieldValue(SIR2_MAGC), entity::set_siret2_agence);
		stringCobolToJava(line.getFieldValue(PAY_MAGC), entity::set_code_pays);
		integerCobolToJava(line.getFieldValue(AFC_MAGC), entity::set_gpe_tva_imposee);
		integerCobolToJava(line.getFieldValue(ARRD_MAGC), entity::set_arr_tps_debut);
		integerCobolToJava(line.getFieldValue(TARRD_MAGC), entity::set_typ_arr_tpsd);
		integerCobolToJava(line.getFieldValue(ARRF_MAGC), entity::set_arr_tps_fin);
		integerCobolToJava(line.getFieldValue(TARRF_MAGC), entity::set_typ_arr_tpsf);
		longCobolToJava(line.getFieldValue(CTPE_MAGC), entity::set_cpt_taxe_especes);
		integerCobolToJava(line.getFieldValue(ENS_MAGC), entity::set_non_utilise);
		longCobolToJava(line.getFieldValue(FAE_MAGC), entity::set_cpt_factures_em_sa);
		longCobolToJava(line.getFieldValue(AAE_MAGC), entity::set_cpt_avoirs_em_sav);
		stringCobolToJava(line.getFieldValue(MBTAE_MAGC), entity::set_modele_sortie_mbs);
		stringCobolToJava(line.getFieldValue(MBTAS_MAGC), entity::set_modele_retour_mbs);
		integerCobolToJava(line.getFieldValue(PCIS_MAGC), entity::set_pci_sortie_mbs);
		integerCobolToJava(line.getFieldValue(PCIE_MAGC), entity::set_pci_entree_mbs);
		stringCobolToJava(line.getFieldValue(MPP_MAGC), entity::set_formulaire_pp);
		integerCobolToJava(line.getFieldValue(NJS_MAGC), entity::set_jours_mbs);
		integerCobolToJava(line.getFieldValue(MDT_MAGC), entity::set_no_jou_encours);
		stringCobolToJava(line.getFieldValue(AGSC_MAGC), entity::set_agence_stc);
		integerCobolToJava(line.getFieldValue(CLSDR_MAGC), entity::set_caisse_lsd);
		bigDecimalCobolToJava(line.getFieldValue(CPCS_MAGC), entity::set_coefficient_pieces);
		stringCobolToJava(line.getFieldValue(MCL_MAGC), entity::set_modele_cl);
		integerCobolToJava(line.getFieldValue(PRIM_MAGC), entity::set_prim);
		integerCobolToJava(line.getFieldValue(MDI_MAGC), entity::set_mdi);
		integerCobolToJava(line.getFieldValue(TTPC_MAGC), entity::set_trs_travaux_mobite);
		stringCobolToJava(line.getFieldValue(JOPR_MAGC), entity::set_journal_provis);
		integerCobolToJava(line.getFieldValue(SPMA_MAGC), entity::set_pieces_mobitec);
		integerCobolToJava(line.getFieldValue(MCSP_MAGC), entity::set_mail_mobitec);
		integerCobolToJava(line.getFieldValue(SISC_MAGC), entity::set_selection_or_mobit);
		integerCobolToJava(line.getFieldValue(MBTREA_MAGC), entity::set_reappro_mobitec);
		integerCobolToJava(line.getFieldValue(ECHO_MAGC), entity::set_ecart_h_pointage);
		integerCobolToJava(line.getFieldValue(MBSOI_MAGC), entity::set_creation_oi_mobist);
		integerCobolToJava(line.getFieldValue(FERM_MAGC), entity::set_age_fermee);
		integerCobolToJava(line.getFieldValue(OPP_MAGC), entity::set_opp);
		integerCobolToJava(line.getFieldValue(JDPRISM_MAGC), entity::set_jdprism);
		integerCobolToJava(line.getFieldValue(MBTGAGS_MAGC), entity::set_reappro_agence);
		integerCobolToJava(line.getFieldValue(MBTCVGP_MAGC), entity::set_cloture_auto_vgp);
		integerCobolToJava(line.getFieldValue(MSP_MAGC), entity::set_mise_sous_pli);
	}

	@Override
	protected void mapJavaToCobol(Agence entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(COD_MAGC), entity::get_code_agence);
		stringJavaToCobol(line.getFieldValue(NOM_MAGC), entity::get_nom_agence);
		stringJavaToCobol(line.getFieldValue(RUE_MAGC), entity::get_adresse1_agence);
		stringJavaToCobol(line.getFieldValue(LIE_MAGC), entity::get_adresse2_agence);
		stringJavaToCobol(line.getFieldValue(POS_MAGC), entity::get_code_postal_agence);
		stringJavaToCobol(line.getFieldValue(VIL_MAGC), entity::get_ville_agence);
		stringJavaToCobol(line.getFieldValue(ABR_MAGC), entity::get_abrege_agence);
		stringJavaToCobol(line.getFieldValue(TEL_MAGC), entity::get_no_tel_agence);
		stringJavaToCobol(line.getFieldValue(TE2_MAGC), entity::get_no_tel2_agence);
		stringJavaToCobol(line.getFieldValue(TEC_MAGC), entity::get_no_fax_agence);
		stringJavaToCobol(line.getFieldValue(TEN_MAGC), entity::get_no_tel_nuit_agence);
		stringJavaToCobol(line.getFieldValue(REG_MAGC), entity::get_code_region);
		integerJavaToCobol(line.getFieldValue(DEB_MAGC), entity::get_indic_nomencla_deb);
		stringJavaToCobol(line.getFieldValue(PED_MAGC), entity::get_code_contact_deb);
		integerJavaToCobol(line.getFieldValue(NIC_MAGC), entity::get_no_ets_deb);
		stringJavaToCobol(line.getFieldValue(TVA_MAGC), entity::get_no_tva_cee);
		integerJavaToCobol(line.getFieldValue(STC_MAGC), entity::get_no_soc_comptable);
		longJavaToCobol(line.getFieldValue(CLI_MAGC), entity::get_code_client);
		longJavaToCobol(line.getFieldValue(FOU_MAGC), entity::get_code_fournisseur);
		stringJavaToCobol(line.getFieldValue(AFWK_MAGC), entity::get_abrege_agence_fwk);
		longJavaToCobol(line.getFieldValue(CLI2_MAGC), entity::get_code_client2);
		longJavaToCobol(line.getFieldValue(CPRO_MAGC), entity::get_abrege_promodis);
		stringJavaToCobol(line.getFieldValue(AGS_MAGC), entity::get_code_agence_siege);
		longJavaToCobol(line.getFieldValue(REL_MAGC), entity::get_der_no_releve);
		longJavaToCobol(line.getFieldValue(TRT_MAGC), entity::get_der_no_traite);
		longJavaToCobol(line.getFieldValue(DND_MAGC), entity::get_der_no_deb);
		stringJavaToCobol(line.getFieldValue(REP_MAGC), entity::get_code_responsable);
		longJavaToCobol(line.getFieldValue(DCI_MAGC), entity::get_dat_der_inventaire);
		longJavaToCobol(line.getFieldValue(BCI_MAGC), entity::get_der_no_inventaire);
		longJavaToCobol(line.getFieldValue(BVR_MAGC), entity::get_der_no_bvr);
		longJavaToCobol(line.getFieldValue(ETI_MAGC), entity::get_der_no_etiquette);
		stringJavaToCobol(line.getFieldValue(GTL_MAGC), entity::get_code_gpe_tarif);
		longJavaToCobol(line.getFieldValue(DBT_MAGC), entity::get_der_no_transf_parc);
		longJavaToCobol(line.getFieldValue(DBI_MAGC), entity::get_der_no_interv_ext);
		longJavaToCobol(line.getFieldValue(DTM_MAGC), entity::get_der_no_transf_art);
		longJavaToCobol(line.getFieldValue(DNE_MAGC), entity::get_der_no_eti_chgt_px);
		integerJavaToCobol(line.getFieldValue(FTS_MAGC), entity::get_indic_sai_fic_trav);
		integerJavaToCobol(line.getFieldValue(PSF_MAGC), entity::get_ind_per_fic_trav);
		stringJavaToCobol(line.getFieldValue(SIR1_MAGC), entity::get_siret1_agence);
		stringJavaToCobol(line.getFieldValue(SIR2_MAGC), entity::get_siret2_agence);
		stringJavaToCobol(line.getFieldValue(PAY_MAGC), entity::get_code_pays);
		integerJavaToCobol(line.getFieldValue(AFC_MAGC), entity::get_gpe_tva_imposee);
		integerJavaToCobol(line.getFieldValue(ARRD_MAGC), entity::get_arr_tps_debut);
		integerJavaToCobol(line.getFieldValue(TARRD_MAGC), entity::get_typ_arr_tpsd);
		integerJavaToCobol(line.getFieldValue(ARRF_MAGC), entity::get_arr_tps_fin);
		integerJavaToCobol(line.getFieldValue(TARRF_MAGC), entity::get_typ_arr_tpsf);
		longJavaToCobol(line.getFieldValue(CTPE_MAGC), entity::get_cpt_taxe_especes);
		integerJavaToCobol(line.getFieldValue(ENS_MAGC), entity::get_non_utilise);
		longJavaToCobol(line.getFieldValue(FAE_MAGC), entity::get_cpt_factures_em_sa);
		longJavaToCobol(line.getFieldValue(AAE_MAGC), entity::get_cpt_avoirs_em_sav);
		stringJavaToCobol(line.getFieldValue(MBTAE_MAGC), entity::get_modele_sortie_mbs);
		stringJavaToCobol(line.getFieldValue(MBTAS_MAGC), entity::get_modele_retour_mbs);
		integerJavaToCobol(line.getFieldValue(PCIS_MAGC), entity::get_pci_sortie_mbs);
		integerJavaToCobol(line.getFieldValue(PCIE_MAGC), entity::get_pci_entree_mbs);
		stringJavaToCobol(line.getFieldValue(MPP_MAGC), entity::get_formulaire_pp);
		integerJavaToCobol(line.getFieldValue(NJS_MAGC), entity::get_jours_mbs);
		integerJavaToCobol(line.getFieldValue(MDT_MAGC), entity::get_no_jou_encours);
		stringJavaToCobol(line.getFieldValue(AGSC_MAGC), entity::get_agence_stc);
		integerJavaToCobol(line.getFieldValue(CLSDR_MAGC), entity::get_caisse_lsd);
		bigDecimalJavaToCobol(line.getFieldValue(CPCS_MAGC), entity::get_coefficient_pieces);
		stringJavaToCobol(line.getFieldValue(MCL_MAGC), entity::get_modele_cl);
		integerJavaToCobol(line.getFieldValue(PRIM_MAGC), entity::get_prim);
		integerJavaToCobol(line.getFieldValue(MDI_MAGC), entity::get_mdi);
		integerJavaToCobol(line.getFieldValue(TTPC_MAGC), entity::get_trs_travaux_mobite);
		stringJavaToCobol(line.getFieldValue(JOPR_MAGC), entity::get_journal_provis);
		integerJavaToCobol(line.getFieldValue(SPMA_MAGC), entity::get_pieces_mobitec);
		integerJavaToCobol(line.getFieldValue(MCSP_MAGC), entity::get_mail_mobitec);
		integerJavaToCobol(line.getFieldValue(SISC_MAGC), entity::get_selection_or_mobit);
		integerJavaToCobol(line.getFieldValue(MBTREA_MAGC), entity::get_reappro_mobitec);
		integerJavaToCobol(line.getFieldValue(ECHO_MAGC), entity::get_ecart_h_pointage);
		integerJavaToCobol(line.getFieldValue(MBSOI_MAGC), entity::get_creation_oi_mobist);
		integerJavaToCobol(line.getFieldValue(FERM_MAGC), entity::get_age_fermee);
		integerJavaToCobol(line.getFieldValue(OPP_MAGC), entity::get_opp);
		integerJavaToCobol(line.getFieldValue(JDPRISM_MAGC), entity::get_jdprism);
		integerJavaToCobol(line.getFieldValue(MBTGAGS_MAGC), entity::get_reappro_agence);
		integerJavaToCobol(line.getFieldValue(MBTCVGP_MAGC), entity::get_cloture_auto_vgp);
		integerJavaToCobol(line.getFieldValue(MSP_MAGC), entity::get_mise_sous_pli);
	}

}
