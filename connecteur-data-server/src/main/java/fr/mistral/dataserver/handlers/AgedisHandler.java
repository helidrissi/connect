package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Agedis;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class AgedisHandler extends AbstractDataHandler<Agedis> implements IDataHandler {

	/**
	 * cobol: COD-MAGD
	 * db:    code_agence
	 */
	private static final String CLE1_MAGD = "CLE1-MAGD";

	/** code_agence - Code agence (type cobol: XXX) */
	private static final String COD_MAGD = "COD-MAGD";
	/** der_no_bon - Dernier n° Bon (type cobol: 9(8)) */
	private static final String BON_MAGD = "BON-MAGD";
	/** der_no_fact_mois - Dernier n° facture mois (type cobol: 9(6)) */
	private static final String FAC_MAGD = "FAC-MAGD";
	/** code_jal_vente - N° journal vente (type cobol: XXXX) */
	private static final String JOU_MAGD = "JOU-MAGD";
	/** code_jal_caisse - N° journal caisse (type cobol: XXXX) */
	private static final String JOC_MAGD = "JOC-MAGD";
	/** code_jal_od - N° journal OD (type cobol: XXXX) */
	private static final String JOD_MAGD = "JOD-MAGD";
	/** no_cpt_port_soumis - N° compte port soumis (type cobol: 9(8)) */
	private static final String CPOS_MAGD = "CPOS-MAGD";
	/** no_cpt_port_exo - N° compte port exonéré (type cobol: 9(8)) */
	private static final String CPOE_MAGD = "CPOE-MAGD";
	/** no_cpt_frais_fac_s - N° compte frais de facturation soumis (type cobol: 9(8)) */
	private static final String CFFS_MAGD = "CFFS-MAGD";
	/** no_cpt_frais_fac_e - N° compte frais de facturation exonéré (type cobol: 9(8)) */
	private static final String CFFE_MAGD = "CFFE-MAGD";
	/** no_cpt_escpt_soumi - N° compte escompte soumis (type cobol: 9(8)) */
	private static final String CESS_MAGD = "CESS-MAGD";
	/** no_cpt_escpt_exo - N° compte escompte exonéré (type cobol: 9(8)) */
	private static final String CESE_MAGD = "CESE-MAGD";
	/** ctv_magd - N° compte TVA (type cobol: 9(8)) */
	private static final String CTV_MAGD = "CTV-MAGD";
	/** catt_magd - N° compte attente (type cobol: 9(8)) */
	private static final String CATT_MAGD = "CATT-MAGD";
	/** cec_magd - N° compte écart centimes (type cobol: 9(8)) */
	private static final String CEC_MAGD = "CEC-MAGD";
	/** cvr_magd - N° compte vente en rétrocession (type cobol: 9(8)) */
	private static final String CVR_MAGD = "CVR-MAGD";
	/** cai_magd - N° compte caisse (type cobol: 9(8)) */
	private static final String CAI_MAGD = "CAI-MAGD";
	/** chq_magd - N° compte chèque à encaisser (type cobol: 9(8)) */
	private static final String CHQ_MAGD = "CHQ-MAGD";
	/** cbl_magd - N° compte carte bancaire 1 (type cobol: 9(8)) */
	private static final String CBL_MAGD = "CBL-MAGD";
	/** cbl2_magd - N° compte carte bancaire 2 (type cobol: 9(8)) */
	private static final String CBL2_MAGD = "CBL2-MAGD";
	/** plf_magd - Plafond port par BL si traitement port = 3 (type cobol: 999) */
	private static final String PLF_MAGD = "PLF-MAGD";
	/** vce_magd - Type vente centrale par défaut (type cobol: 9) */
	private static final String VCE_MAGD = "VCE-MAGD";
	/** aca_magd - Niveau commande Web (type cobol: 9) */
	private static final String ACA_MAGD = "ACA-MAGD";
	/** filler_gtm_magd - Gestion marge en temps réel: 1=oui 0=non (type cobol: 9) */
	private static final String FILLER_GTM_MAGD = "FILLER-GTM-MAGD";
	/** amb_magd - Affichage marge en saise BL: 1=oui 0=non (type cobol: 9) */
	private static final String AMB_MAGD = "AMB-MAGD";
	/** mmn_magd - Message dépassement mini (type cobol: X(12)) */
	private static final String MMN_MAGD = "MMN-MAGD";
	/** mmx_magd - Message dépassement maxi (type cobol: X(12)) */
	private static final String MMX_MAGD = "MMX-MAGD";
	/** mpl_magd - Message dépassement plancher (type cobol: X(12)) */
	private static final String MPL_MAGD = "MPL-MAGD";
	/** nam_magd - Niveau affichage marge: 1=ligne 2=total 3=ligne+total (type cobol: 9) */
	private static final String NAM_MAGD = "NAM-MAGD";
	/** cbp_magd - Blocage si inférieur à plancher: 0=non 1=facture 2=BL + facture (type cobol: 9) */
	private static final String CBP_MAGD = "CBP-MAGD";
	/** mdp_magd - Mot de passe/blocage (type cobol: XXX) */
	private static final String MDP_MAGD = "MDP-MAGD";
	/** pma_magd - Pourcentage majoration sur commande de dépannage (type cobol: 99V9) */
	private static final String PMA_MAGD = "PMA-MAGD";
	/** amn_magd - Majoration minimum (type cobol: 999) */
	private static final String AMN_MAGD = "AMN-MAGD";
	/** amx_magd - Majoration maximum (type cobol: 999) */
	private static final String AMX_MAGD = "AMX-MAGD";
	/** pmi_magd - % minoration commande de stock (type cobol: 99V99) */
	private static final String PMI_MAGD = "PMI-MAGD";
	/** ntp_magd - Niveau traitement du port: 0=manuel 1=%/facture 2=forfait/facture 3=%/BL 4=saisie transporteur/BL (type cobol: 9) */
	private static final String NTP_MAGD = "NTP-MAGD";
	/** fop_magd - % ou forfait port (type cobol: 9(4)V99) */
	private static final String FOP_MAGD = "FOP-MAGD";
	/** lip_magd - Libellé port sur facture (type cobol: X(5)) */
	private static final String LIP_MAGD = "LIP-MAGD";
	/** del_magd - Délai standard livraison devis (type cobol: 99) */
	private static final String DEL_MAGD = "DEL-MAGD";
	/** vao_magd - Validité standard devis (type cobol: 99) */
	private static final String VAO_MAGD = "VAO-MAGD";
	/** eca_magd - Ecart autorisé/paiement immédiat (type cobol: 99V99) */
	private static final String ECA_MAGD = "ECA-MAGD";
	/** cld_magd - N° client/factures comptoir (type cobol: 9(6)) */
	private static final String CLD_MAGD = "CLD-MAGD";
	/** cdv_magd - N° client divers/factures comptoir (type cobol: 9(6)) */
	private static final String CDV_MAGD = "CDV-MAGD";
	/** rtva_magd - Régime TVA= 0=idem PGX 1=Débits 2=Encaissements (type cobol: 9) */
	private static final String RTVA_MAGD = "RTVA-MAGD";
	/** grw_magd - Famille article vente centrale par défaut (type cobol: 99) */
	private static final String GRW_MAGD = "GRW-MAGD";
	/** faw_magd - Sous-famille article vente centrale par défaut (type cobol: 99) */
	private static final String FAW_MAGD = "FAW-MAGD";
	/** cac_magd (type cobol: 9(8)) */
	private static final String CAC_MAGD = "CAC-MAGD";
	/** jac_magd (type cobol: X(4)) */
	private static final String JAC_MAGD = "JAC-MAGD";
	/** mia_magd - Controle marges inter-agences: 0=standard 1=par rapport à 0 (type cobol: 9) */
	private static final String MIA_MAGD = "MIA-MAGD";
	/** bml_magd - Blocage bon si marge d"une ligne est incorrecte (type cobol: 9) */
	private static final String BML_MAGD = "BML-MAGD";
	/** fae_magd - Factures à emettre (type cobol: 9(8)) */
	private static final String FAE_MAGD = "FAE-MAGD";
	/** aae_magd - Avoirs à emettre (type cobol: 9(8)) */
	private static final String AAE_MAGD = "AAE-MAGD";
	/** no_piece_encours - Fournisseur articles occasion (type cobol: 9(6)) */
	private static final String FAO_MAGD = "FAO-MAGD";
	/** ctm_magd - n° compte TVA sur marge (type cobol: 9(8)) */
	private static final String CTM_MAGD = "CTM-MAGD";
	/** clsd_magd - N° caisse libre-service paiements immédiats (type cobol: 99) */
	private static final String CLSD_MAGD = "CLSD-MAGD";
	/** no_client_webtop - N° client Webtop / Magento (type cobol: 9(6)) */
	private static final String CLW_MAGD = "CLW-MAGD";
	/** efc_magd - Taux d'escompte factures comptant (type cobol: 99V99) */
	private static final String EFC_MAGD = "EFC-MAGD";
	/** cbd_magd - Blocage impression devis et commande si marge incorrecte (type cobol: 9) */
	private static final String CBD_MAGD = "CBD-MAGD";
	/** tccw_magd - Type de commande par défaut Web (type cobol: X) */
	private static final String TCCW_MAGD = "TCCW-MAGD";

	public AgedisHandler() throws IOException {
		super("mx/fd/MXAGEDIS.fd", "MXAGEDIS", fr.mistral.dataserver.model.mx.Agedis.class,
				"CLE1-MAGD",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MAGD, ImmutableList.<String>builder().add(COD_MAGD).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Agedis>>builder()
					.put(COD_MAGD, new EntityFieldMapper<>(COD_MAGD, "code_agence", Agedis::get_code_agence))
					.build());
	}

	@Override
	public String getName() {
		return "MXAGEDIS";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Agedis entity) {
		stringCobolToJava(line.getFieldValue(COD_MAGD), entity::set_code_agence);
		longCobolToJava(line.getFieldValue(BON_MAGD), entity::set_der_no_bon);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (0)"), entity::set_der_no_fact_mois_1);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (1)"), entity::set_der_no_fact_mois_2);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (2)"), entity::set_der_no_fact_mois_3);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (3)"), entity::set_der_no_fact_mois_4);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (4)"), entity::set_der_no_fact_mois_5);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (5)"), entity::set_der_no_fact_mois_6);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (6)"), entity::set_der_no_fact_mois_7);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (7)"), entity::set_der_no_fact_mois_8);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (8)"), entity::set_der_no_fact_mois_9);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (9)"), entity::set_der_no_fact_mois_10);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (10)"), entity::set_der_no_fact_mois_11);
		longCobolToJava(line.getFieldValue(FAC_MAGD + " (11)"), entity::set_der_no_fact_mois_12);
		stringCobolToJava(line.getFieldValue(JOU_MAGD), entity::set_code_jal_vente);
		stringCobolToJava(line.getFieldValue(JOC_MAGD), entity::set_code_jal_caisse);
		stringCobolToJava(line.getFieldValue(JOD_MAGD), entity::set_code_jal_od);
		longCobolToJava(line.getFieldValue(CPOS_MAGD), entity::set_no_cpt_port_soumis);
		longCobolToJava(line.getFieldValue(CPOE_MAGD), entity::set_no_cpt_port_exo);
		longCobolToJava(line.getFieldValue(CFFS_MAGD), entity::set_no_cpt_frais_fac_s);
		longCobolToJava(line.getFieldValue(CFFE_MAGD), entity::set_no_cpt_frais_fac_e);
		longCobolToJava(line.getFieldValue(CESS_MAGD), entity::set_no_cpt_escpt_soumi);
		longCobolToJava(line.getFieldValue(CESE_MAGD), entity::set_no_cpt_escpt_exo);
		longCobolToJava(line.getFieldValue(CTV_MAGD), entity::set_ctv_magd);
		longCobolToJava(line.getFieldValue(CATT_MAGD), entity::set_catt_magd);
		longCobolToJava(line.getFieldValue(CEC_MAGD), entity::set_cec_magd);
		longCobolToJava(line.getFieldValue(CVR_MAGD), entity::set_cvr_magd);
		longCobolToJava(line.getFieldValue(CAI_MAGD), entity::set_cai_magd);
		longCobolToJava(line.getFieldValue(CHQ_MAGD), entity::set_chq_magd);
		longCobolToJava(line.getFieldValue(CBL_MAGD), entity::set_cbl_magd);
		longCobolToJava(line.getFieldValue(CBL2_MAGD), entity::set_cbl2_magd);
		integerCobolToJava(line.getFieldValue(PLF_MAGD), entity::set_plf_magd);
		integerCobolToJava(line.getFieldValue(VCE_MAGD), entity::set_vce_magd);
		integerCobolToJava(line.getFieldValue(ACA_MAGD), entity::set_aca_magd);
		integerCobolToJava(line.getFieldValue(FILLER_GTM_MAGD), entity::set_filler_gtm_magd);
		integerCobolToJava(line.getFieldValue(AMB_MAGD), entity::set_amb_magd);
		stringCobolToJava(line.getFieldValue(MMN_MAGD), entity::set_mmn_magd);
		stringCobolToJava(line.getFieldValue(MMX_MAGD), entity::set_mmx_magd);
		stringCobolToJava(line.getFieldValue(MPL_MAGD), entity::set_mpl_magd);
		integerCobolToJava(line.getFieldValue(NAM_MAGD), entity::set_nam_magd);
		integerCobolToJava(line.getFieldValue(CBP_MAGD), entity::set_cbp_magd);
		stringCobolToJava(line.getFieldValue(MDP_MAGD), entity::set_mdp_magd);
		bigDecimalCobolToJava(line.getFieldValue(PMA_MAGD), entity::set_pma_magd);
		integerCobolToJava(line.getFieldValue(AMN_MAGD), entity::set_amn_magd);
		integerCobolToJava(line.getFieldValue(AMX_MAGD), entity::set_amx_magd);
		bigDecimalCobolToJava(line.getFieldValue(PMI_MAGD), entity::set_pmi_magd);
		integerCobolToJava(line.getFieldValue(NTP_MAGD), entity::set_ntp_magd);
		bigDecimalCobolToJava(line.getFieldValue(FOP_MAGD), entity::set_fop_magd);
		stringCobolToJava(line.getFieldValue(LIP_MAGD), entity::set_lip_magd);
		integerCobolToJava(line.getFieldValue(DEL_MAGD), entity::set_del_magd);
		integerCobolToJava(line.getFieldValue(VAO_MAGD), entity::set_vao_magd);
		bigDecimalCobolToJava(line.getFieldValue(ECA_MAGD), entity::set_eca_magd);
		longCobolToJava(line.getFieldValue(CLD_MAGD), entity::set_cld_magd);
		longCobolToJava(line.getFieldValue(CDV_MAGD), entity::set_cdv_magd);
		integerCobolToJava(line.getFieldValue(RTVA_MAGD), entity::set_rtva_magd);
		integerCobolToJava(line.getFieldValue(GRW_MAGD), entity::set_grw_magd);
		integerCobolToJava(line.getFieldValue(FAW_MAGD), entity::set_faw_magd);
		longCobolToJava(line.getFieldValue(CAC_MAGD), entity::set_cac_magd);
		stringCobolToJava(line.getFieldValue(JAC_MAGD), entity::set_jac_magd);
		integerCobolToJava(line.getFieldValue(MIA_MAGD), entity::set_mia_magd);
		integerCobolToJava(line.getFieldValue(BML_MAGD), entity::set_bml_magd);
		longCobolToJava(line.getFieldValue(FAE_MAGD), entity::set_fae_magd);
		longCobolToJava(line.getFieldValue(AAE_MAGD), entity::set_aae_magd);
		longCobolToJava(line.getFieldValue(FAO_MAGD), entity::set_no_piece_encours);
		longCobolToJava(line.getFieldValue(CTM_MAGD), entity::set_ctm_magd);
		integerCobolToJava(line.getFieldValue(CLSD_MAGD), entity::set_clsd_magd);
		longCobolToJava(line.getFieldValue(CLW_MAGD), entity::set_no_client_webtop);
		bigDecimalCobolToJava(line.getFieldValue(EFC_MAGD), entity::set_efc_magd);
		integerCobolToJava(line.getFieldValue(CBD_MAGD), entity::set_cbd_magd);
		stringCobolToJava(line.getFieldValue(TCCW_MAGD), entity::set_tccw_magd);
	}

	@Override
	protected void mapJavaToCobol(Agedis entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(COD_MAGD), entity::get_code_agence);
		longJavaToCobol(line.getFieldValue(BON_MAGD), entity::get_der_no_bon);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (0)"), entity::get_der_no_fact_mois_1);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (1)"), entity::get_der_no_fact_mois_2);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (2)"), entity::get_der_no_fact_mois_3);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (3)"), entity::get_der_no_fact_mois_4);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (4)"), entity::get_der_no_fact_mois_5);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (5)"), entity::get_der_no_fact_mois_6);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (6)"), entity::get_der_no_fact_mois_7);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (7)"), entity::get_der_no_fact_mois_8);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (8)"), entity::get_der_no_fact_mois_9);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (9)"), entity::get_der_no_fact_mois_10);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (10)"), entity::get_der_no_fact_mois_11);
		longJavaToCobol(line.getFieldValue(FAC_MAGD + " (11)"), entity::get_der_no_fact_mois_12);
		stringJavaToCobol(line.getFieldValue(JOU_MAGD), entity::get_code_jal_vente);
		stringJavaToCobol(line.getFieldValue(JOC_MAGD), entity::get_code_jal_caisse);
		stringJavaToCobol(line.getFieldValue(JOD_MAGD), entity::get_code_jal_od);
		longJavaToCobol(line.getFieldValue(CPOS_MAGD), entity::get_no_cpt_port_soumis);
		longJavaToCobol(line.getFieldValue(CPOE_MAGD), entity::get_no_cpt_port_exo);
		longJavaToCobol(line.getFieldValue(CFFS_MAGD), entity::get_no_cpt_frais_fac_s);
		longJavaToCobol(line.getFieldValue(CFFE_MAGD), entity::get_no_cpt_frais_fac_e);
		longJavaToCobol(line.getFieldValue(CESS_MAGD), entity::get_no_cpt_escpt_soumi);
		longJavaToCobol(line.getFieldValue(CESE_MAGD), entity::get_no_cpt_escpt_exo);
		longJavaToCobol(line.getFieldValue(CTV_MAGD), entity::get_ctv_magd);
		longJavaToCobol(line.getFieldValue(CATT_MAGD), entity::get_catt_magd);
		longJavaToCobol(line.getFieldValue(CEC_MAGD), entity::get_cec_magd);
		longJavaToCobol(line.getFieldValue(CVR_MAGD), entity::get_cvr_magd);
		longJavaToCobol(line.getFieldValue(CAI_MAGD), entity::get_cai_magd);
		longJavaToCobol(line.getFieldValue(CHQ_MAGD), entity::get_chq_magd);
		longJavaToCobol(line.getFieldValue(CBL_MAGD), entity::get_cbl_magd);
		longJavaToCobol(line.getFieldValue(CBL2_MAGD), entity::get_cbl2_magd);
		integerJavaToCobol(line.getFieldValue(PLF_MAGD), entity::get_plf_magd);
		integerJavaToCobol(line.getFieldValue(VCE_MAGD), entity::get_vce_magd);
		integerJavaToCobol(line.getFieldValue(ACA_MAGD), entity::get_aca_magd);
		integerJavaToCobol(line.getFieldValue(FILLER_GTM_MAGD), entity::get_filler_gtm_magd);
		integerJavaToCobol(line.getFieldValue(AMB_MAGD), entity::get_amb_magd);
		stringJavaToCobol(line.getFieldValue(MMN_MAGD), entity::get_mmn_magd);
		stringJavaToCobol(line.getFieldValue(MMX_MAGD), entity::get_mmx_magd);
		stringJavaToCobol(line.getFieldValue(MPL_MAGD), entity::get_mpl_magd);
		integerJavaToCobol(line.getFieldValue(NAM_MAGD), entity::get_nam_magd);
		integerJavaToCobol(line.getFieldValue(CBP_MAGD), entity::get_cbp_magd);
		stringJavaToCobol(line.getFieldValue(MDP_MAGD), entity::get_mdp_magd);
		bigDecimalJavaToCobol(line.getFieldValue(PMA_MAGD), entity::get_pma_magd);
		integerJavaToCobol(line.getFieldValue(AMN_MAGD), entity::get_amn_magd);
		integerJavaToCobol(line.getFieldValue(AMX_MAGD), entity::get_amx_magd);
		bigDecimalJavaToCobol(line.getFieldValue(PMI_MAGD), entity::get_pmi_magd);
		integerJavaToCobol(line.getFieldValue(NTP_MAGD), entity::get_ntp_magd);
		bigDecimalJavaToCobol(line.getFieldValue(FOP_MAGD), entity::get_fop_magd);
		stringJavaToCobol(line.getFieldValue(LIP_MAGD), entity::get_lip_magd);
		integerJavaToCobol(line.getFieldValue(DEL_MAGD), entity::get_del_magd);
		integerJavaToCobol(line.getFieldValue(VAO_MAGD), entity::get_vao_magd);
		bigDecimalJavaToCobol(line.getFieldValue(ECA_MAGD), entity::get_eca_magd);
		longJavaToCobol(line.getFieldValue(CLD_MAGD), entity::get_cld_magd);
		longJavaToCobol(line.getFieldValue(CDV_MAGD), entity::get_cdv_magd);
		integerJavaToCobol(line.getFieldValue(RTVA_MAGD), entity::get_rtva_magd);
		integerJavaToCobol(line.getFieldValue(GRW_MAGD), entity::get_grw_magd);
		integerJavaToCobol(line.getFieldValue(FAW_MAGD), entity::get_faw_magd);
		longJavaToCobol(line.getFieldValue(CAC_MAGD), entity::get_cac_magd);
		stringJavaToCobol(line.getFieldValue(JAC_MAGD), entity::get_jac_magd);
		integerJavaToCobol(line.getFieldValue(MIA_MAGD), entity::get_mia_magd);
		integerJavaToCobol(line.getFieldValue(BML_MAGD), entity::get_bml_magd);
		longJavaToCobol(line.getFieldValue(FAE_MAGD), entity::get_fae_magd);
		longJavaToCobol(line.getFieldValue(AAE_MAGD), entity::get_aae_magd);
		longJavaToCobol(line.getFieldValue(FAO_MAGD), entity::get_no_piece_encours);
		longJavaToCobol(line.getFieldValue(CTM_MAGD), entity::get_ctm_magd);
		integerJavaToCobol(line.getFieldValue(CLSD_MAGD), entity::get_clsd_magd);
		longJavaToCobol(line.getFieldValue(CLW_MAGD), entity::get_no_client_webtop);
		bigDecimalJavaToCobol(line.getFieldValue(EFC_MAGD), entity::get_efc_magd);
		integerJavaToCobol(line.getFieldValue(CBD_MAGD), entity::get_cbd_magd);
		stringJavaToCobol(line.getFieldValue(TCCW_MAGD), entity::get_tccw_magd);
	}

}
