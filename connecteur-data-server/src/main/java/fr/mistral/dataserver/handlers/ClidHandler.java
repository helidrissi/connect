package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Clid;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class ClidHandler extends AbstractDataHandler<Clid> implements IDataHandler {

	/**
	 * cobol: COD-MCLD, GTL-MCLD
	 * db:    code_client, code_gpe_tarif_dis
	 */
	private static final String CLE1_MCLD = "CLE1-MCLD";

	/** code_client - Code client (type cobol: 9(6)) */
	private static final String COD_MCLD = "COD-MCLD";
	/** code_gpe_tarif_dis - N° groupe tarifaire: blanc si fiche de base (type cobol: XX) */
	private static final String GTL_MCLD = "GTL-MCLD";
	/** indic_frais_fact_d - Indicateur frais de facturation: 0=non 1=oui (type cobol: 9) */
	private static final String IFF_MCLD = "IFF-MCLD";
	/** indic_cde_ar_dis - Indicateur envoi AR commande: 0=non 1=oui (type cobol: 9) */
	private static final String ARC_MCLD = "ARC-MCLD";
	/** indic_facture_dis - Type de facturation: 1=un bon par fact 2=bons regroupés 3=fact/lieu 4=fact/réf 5=BR + sous-total (type cobol: 9) */
	private static final String TFA_MCLD = "TFA-MCLD";
	/** indic_remis_fact_d - Indicateur remise apparente sur facture: 0=non 1=oui (type cobol: 9) */
	private static final String RAP_MCLD = "RAP-MCLD";
	/** indic_bl_chiffre_d - Indicateur BL chiffré: 0=non 1=prix net 2=prix brut 3=sans prix avec total HT (type cobol: 9) */
	private static final String CHF_MCLD = "CHF-MCLD";
	/** nb_duplicata_bon_d - Nombre duplicatas bons (type cobol: 9) */
	private static final String DUB_MCLD = "DUB-MCLD";
	/** nb_duplicata_fac_d - Nombre duplicatas factures (type cobol: 9) */
	private static final String DUF_MCLD = "DUF-MCLD";
	/** code_cial_dis - Commercial habituel (type cobol: X(4)) */
	private static final String REP_MCLD = "REP-MCLD";
	/** no_msg_saisi_cde_d - N° message affiché en saisie de commande (type cobol: XX) */
	private static final String MSC_MCLD = "MSC-MCLD";
	/** no_msg_saisie_bl_d - N° message affiché en saisie de BL (type cobol: XX) */
	private static final String MSL_MCLD = "MSL-MCLD";
	/** indic_base_fact_d - Base facturation: 0=PV 1=PV-R 2=PA+Mg 3=PTF 4=PAMP 5=PA+FUA 6=Mg Pond 7=PRMP 8=Mg Rép (type cobol: 9) */
	private static final String BFC_MCLD = "BFC-MCLD";
	/** remise_dis - % remise ou marge ou coefficient (type cobol: S99V99) */
	private static final String REM_MCLD = "REM-MCLD";
	/** coefficient_dis (type cobol: 99V999) */
	private static final String COE_MCLD = "COE-MCLD";
	/** code_paiement_dis - Mode paiement habituel (type cobol: 99) */
	private static final String PAI_MCLD = "PAI-MCLD";
	/** code_echeance_dis - Code échéance (type cobol: 9) */
	private static final String ECH_MCLD = "ECH-MCLD";
	/** code_terme_dis - Code terme (type cobol: 9) */
	private static final String TER_MCLD = "TER-MCLD";
	/** affect_fiscale_dis - Affectation fiscale : comptes 1 à 4 (type cobol: 9) */
	private static final String AFC_MCLD = "AFC-MCLD";
	/** code_grille_rem_d - No grille de remise habituelle (type cobol: XXX) */
	private static final String GRI_MCLD = "GRI-MCLD";
	/** indic_port_usine_d - Indicateur soumis à port usine: 0=oui 1=non (type cobol: 9) */
	private static final String PUS_MCLD = "PUS-MCLD";
	/** indic_edi_codart_d - Edition code article sur documents: 0=oui 1=sauf sur factures 2=oui+ code si double réf. 3=non (type cobol: 9) */
	private static final String ECA_MCLD = "ECA-MCLD";
	/** escompte_dis - Escompte habituel (type cobol: 99V99) */
	private static final String ESC_MCLD = "ESC-MCLD";
	/** old_code_ref_article_d - Ancien Code référencement articles : 0=non ou de 1 à 9 (type cobol: 9) */
	private static final String RFAold_MCLD = "RFAold-MCLD";
	/** code_lib_edi_fac_d - Code libellé à éditer sur factures (type cobol: XX) */
	private static final String LFA_MCLD = "LFA-MCLD";
	/** indic_modif_3e_des - Modif systématique 3ème désignation en saisie BL: 0=non 1=oui (type cobol: 9) */
	private static final String S3D_MCLD = "S3D-MCLD";
	/** indic_edi_art_cdes - Edition articles commandés sur BL: 0=oui 1=non (type cobol: 9) */
	private static final String EAC_MCLD = "EAC-MCLD";
	/** indic_demat - Indicateur démat factures (type cobol: 9) */
	private static final String DMF_MCLD = "DMF-MCLD";
	/** code_fact_lsd - Type facturation LSD: 0=una facture par ticket 1=tickets regroupés (type cobol: 9) */
	private static final String TFL_MCLD = "TFL-MCLD";
	/** no_tarif_spec1_dis - N° tarif spécial 1 (type cobol: X(4)) */
	private static final String TSP_MCLD = "TSP-MCLD";
	/** no_tarif_spec2_dis - N° tarif spécial 2 (type cobol: X(4)) */
	private static final String TS2_MCLD = "TS2-MCLD";
	/** indic_1_fac_mois_d - Facture mensuelle unique: 0=non 1=oui (type cobol: 9) */
	private static final String RFM_MCLD = "RFM-MCLD";
	/** indic_port - Indicateur soumis port: 0=oui 1=non (type cobol: 9) */
	private static final String SPO_MCLD = "SPO-MCLD";
	/** no_tarif_spe_mo_d - N° tarif spécial main d'oeuvre (type cobol: X(4)) */
	private static final String TMO_MCLD = "TMO-MCLD";
	/** mont_franco_port - Montant franco de port (type cobol: 9(6)) */
	private static final String FRP_MCLD = "FRP-MCLD";
	/** soumis_mini_webtop - Soumis au minimum de commande Webtop: 1=non (type cobol: 9) */
	private static final String SMW_MCLD = "SMW-MCLD";
	/** mise_att_bl - Mise en attente B/L: 1=oui (type cobol: 9) */
	private static final String MAB_MCLD = "MAB-MCLD";
	/** fac_obligatoire - Facture obligatoire (type cobol: 9) */
	private static final String FAO_MCLD = "FAO-MCLD";
	/** code_ref_article_d - Code référencement articles : 0=non ou de 1 à 99 (rajouté en 08/2017) (type cobol: 99) */
	private static final String RFA_MCLD = "RFA-MCLD";
	/** impression_nom_entete_bl - Drop shipping = Impression nom en entête de BL (type cobol: 9) */
	private static final String DSH_MCLD = "DSH-MCLD";

	public ClidHandler() throws IOException {
		super("mx/fd/MXCLID.fd", "MXCLID", fr.mistral.dataserver.model.mx.Clid.class,
				"CLE1-MCLD",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MCLD, ImmutableList.<String>builder().add(COD_MCLD, GTL_MCLD).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Clid>>builder()
					.put(COD_MCLD, new EntityFieldMapper<>(COD_MCLD, "code_client", Clid::get_code_client))
					.put(GTL_MCLD, new EntityFieldMapper<>(GTL_MCLD, "code_gpe_tarif_dis", Clid::get_code_gpe_tarif_dis))
					.build());
	}

	@Override
	public String getName() {
		return "MXCLID";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Clid entity) {
		longCobolToJava(line.getFieldValue(COD_MCLD), entity::set_code_client);
		stringCobolToJava(line.getFieldValue(GTL_MCLD), entity::set_code_gpe_tarif_dis);
		integerCobolToJava(line.getFieldValue(IFF_MCLD), entity::set_indic_frais_fact_d);
		integerCobolToJava(line.getFieldValue(ARC_MCLD), entity::set_indic_cde_ar_dis);
		integerCobolToJava(line.getFieldValue(TFA_MCLD), entity::set_indic_facture_dis);
		integerCobolToJava(line.getFieldValue(RAP_MCLD), entity::set_indic_remis_fact_d);
		integerCobolToJava(line.getFieldValue(CHF_MCLD), entity::set_indic_bl_chiffre_d);
		integerCobolToJava(line.getFieldValue(DUB_MCLD), entity::set_nb_duplicata_bon_d);
		integerCobolToJava(line.getFieldValue(DUF_MCLD), entity::set_nb_duplicata_fac_d);
		stringCobolToJava(line.getFieldValue(REP_MCLD), entity::set_code_cial_dis);
		stringCobolToJava(line.getFieldValue(MSC_MCLD), entity::set_no_msg_saisi_cde_d);
		stringCobolToJava(line.getFieldValue(MSL_MCLD), entity::set_no_msg_saisie_bl_d);
		integerCobolToJava(line.getFieldValue(BFC_MCLD), entity::set_indic_base_fact_d);
		bigDecimalCobolToJava(line.getFieldValue(REM_MCLD), entity::set_remise_dis);
		bigDecimalCobolToJava(line.getFieldValue(COE_MCLD), entity::set_coefficient_dis);
		integerCobolToJava(line.getFieldValue(PAI_MCLD), entity::set_code_paiement_dis);
		integerCobolToJava(line.getFieldValue(ECH_MCLD), entity::set_code_echeance_dis);
		integerCobolToJava(line.getFieldValue(TER_MCLD), entity::set_code_terme_dis);
		integerCobolToJava(line.getFieldValue(AFC_MCLD), entity::set_affect_fiscale_dis);
		stringCobolToJava(line.getFieldValue(GRI_MCLD), entity::set_code_grille_rem_d);
		integerCobolToJava(line.getFieldValue(PUS_MCLD), entity::set_indic_port_usine_d);
		integerCobolToJava(line.getFieldValue(ECA_MCLD), entity::set_indic_edi_codart_d);
		bigDecimalCobolToJava(line.getFieldValue(ESC_MCLD), entity::set_escompte_dis);
		integerCobolToJava(line.getFieldValue(RFAold_MCLD), entity::set_old_code_ref_article_d);
		stringCobolToJava(line.getFieldValue(LFA_MCLD), entity::set_code_lib_edi_fac_d);
		integerCobolToJava(line.getFieldValue(S3D_MCLD), entity::set_indic_modif_3e_des);
		integerCobolToJava(line.getFieldValue(EAC_MCLD), entity::set_indic_edi_art_cdes);
		integerCobolToJava(line.getFieldValue(DMF_MCLD), entity::set_indic_demat);
		integerCobolToJava(line.getFieldValue(TFL_MCLD), entity::set_code_fact_lsd);
		stringCobolToJava(line.getFieldValue(TSP_MCLD), entity::set_no_tarif_spec1_dis);
		stringCobolToJava(line.getFieldValue(TS2_MCLD), entity::set_no_tarif_spec2_dis);
		integerCobolToJava(line.getFieldValue(RFM_MCLD), entity::set_indic_1_fac_mois_d);
		integerCobolToJava(line.getFieldValue(SPO_MCLD), entity::set_indic_port);
		stringCobolToJava(line.getFieldValue(TMO_MCLD), entity::set_no_tarif_spe_mo_d);
		longCobolToJava(line.getFieldValue(FRP_MCLD), entity::set_mont_franco_port);
		integerCobolToJava(line.getFieldValue(SMW_MCLD), entity::set_soumis_mini_webtop);
		integerCobolToJava(line.getFieldValue(MAB_MCLD), entity::set_mise_att_bl);
		integerCobolToJava(line.getFieldValue(FAO_MCLD), entity::set_fac_obligatoire);
		integerCobolToJava(line.getFieldValue(RFA_MCLD), entity::set_code_ref_article_d);
		integerCobolToJava(line.getFieldValue(DSH_MCLD), entity::set_impression_nom_entete_bl);
	}

	@Override
	protected void mapJavaToCobol(Clid entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(COD_MCLD), entity::get_code_client);
		stringJavaToCobol(line.getFieldValue(GTL_MCLD), entity::get_code_gpe_tarif_dis);
		integerJavaToCobol(line.getFieldValue(IFF_MCLD), entity::get_indic_frais_fact_d);
		integerJavaToCobol(line.getFieldValue(ARC_MCLD), entity::get_indic_cde_ar_dis);
		integerJavaToCobol(line.getFieldValue(TFA_MCLD), entity::get_indic_facture_dis);
		integerJavaToCobol(line.getFieldValue(RAP_MCLD), entity::get_indic_remis_fact_d);
		integerJavaToCobol(line.getFieldValue(CHF_MCLD), entity::get_indic_bl_chiffre_d);
		integerJavaToCobol(line.getFieldValue(DUB_MCLD), entity::get_nb_duplicata_bon_d);
		integerJavaToCobol(line.getFieldValue(DUF_MCLD), entity::get_nb_duplicata_fac_d);
		stringJavaToCobol(line.getFieldValue(REP_MCLD), entity::get_code_cial_dis);
		stringJavaToCobol(line.getFieldValue(MSC_MCLD), entity::get_no_msg_saisi_cde_d);
		stringJavaToCobol(line.getFieldValue(MSL_MCLD), entity::get_no_msg_saisie_bl_d);
		integerJavaToCobol(line.getFieldValue(BFC_MCLD), entity::get_indic_base_fact_d);
		bigDecimalJavaToCobol(line.getFieldValue(REM_MCLD), entity::get_remise_dis);
		bigDecimalJavaToCobol(line.getFieldValue(COE_MCLD), entity::get_coefficient_dis);
		integerJavaToCobol(line.getFieldValue(PAI_MCLD), entity::get_code_paiement_dis);
		integerJavaToCobol(line.getFieldValue(ECH_MCLD), entity::get_code_echeance_dis);
		integerJavaToCobol(line.getFieldValue(TER_MCLD), entity::get_code_terme_dis);
		integerJavaToCobol(line.getFieldValue(AFC_MCLD), entity::get_affect_fiscale_dis);
		stringJavaToCobol(line.getFieldValue(GRI_MCLD), entity::get_code_grille_rem_d);
		integerJavaToCobol(line.getFieldValue(PUS_MCLD), entity::get_indic_port_usine_d);
		integerJavaToCobol(line.getFieldValue(ECA_MCLD), entity::get_indic_edi_codart_d);
		bigDecimalJavaToCobol(line.getFieldValue(ESC_MCLD), entity::get_escompte_dis);
		integerJavaToCobol(line.getFieldValue(RFAold_MCLD), entity::get_old_code_ref_article_d);
		stringJavaToCobol(line.getFieldValue(LFA_MCLD), entity::get_code_lib_edi_fac_d);
		integerJavaToCobol(line.getFieldValue(S3D_MCLD), entity::get_indic_modif_3e_des);
		integerJavaToCobol(line.getFieldValue(EAC_MCLD), entity::get_indic_edi_art_cdes);
		integerJavaToCobol(line.getFieldValue(DMF_MCLD), entity::get_indic_demat);
		integerJavaToCobol(line.getFieldValue(TFL_MCLD), entity::get_code_fact_lsd);
		stringJavaToCobol(line.getFieldValue(TSP_MCLD), entity::get_no_tarif_spec1_dis);
		stringJavaToCobol(line.getFieldValue(TS2_MCLD), entity::get_no_tarif_spec2_dis);
		integerJavaToCobol(line.getFieldValue(RFM_MCLD), entity::get_indic_1_fac_mois_d);
		integerJavaToCobol(line.getFieldValue(SPO_MCLD), entity::get_indic_port);
		stringJavaToCobol(line.getFieldValue(TMO_MCLD), entity::get_no_tarif_spe_mo_d);
		longJavaToCobol(line.getFieldValue(FRP_MCLD), entity::get_mont_franco_port);
		integerJavaToCobol(line.getFieldValue(SMW_MCLD), entity::get_soumis_mini_webtop);
		integerJavaToCobol(line.getFieldValue(MAB_MCLD), entity::get_mise_att_bl);
		integerJavaToCobol(line.getFieldValue(FAO_MCLD), entity::get_fac_obligatoire);
		integerJavaToCobol(line.getFieldValue(RFA_MCLD), entity::get_code_ref_article_d);
		integerJavaToCobol(line.getFieldValue(DSH_MCLD), entity::get_impression_nom_entete_bl);
	}

}
