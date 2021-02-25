package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Hisvte;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class HisvteHandler extends AbstractDataHandler<Hisvte> implements IDataHandler {

	/**
	 * cobol: NUM-MHIV
	 * db:    no_interne_hisvte
	 */
	private static final String CLE1_MHIV = "CLE1-MHIV";
	/**
	 * cobol: AGE-MHIV, ORI-MHIV, BLO-MHIV, LIG-MHIV, LIN-MHIV
	 * db:    code_agence, origine_vente, no_bon_vte, no_ligne_vte, no_sousligne_vte
	 */
	private static final String CLE9_MHIV = "CLE9-MHIV";
	/**
	 * cobol: DSP-MHIV
	 * db:    date_sortie_piece
	 */
	private static final String CLE7_MHIV = "CLE7-MHIV";
	/**
	 * cobol: DAT-MHIV
	 * db:    date_facturation
	 */
	private static final String CLE8_MHIV = "CLE8-MHIV";
	/**
	 * cobol: CLI-MHIV, CDV-MHIV, DSP-MHIV
	 * db:    code_client, code_client_divers, date_sortie_piece
	 */
	private static final String CLE2_MHIV = "CLE2-MHIV";
	/**
	 * cobol: ART-MHIV, DSP-MHIV
	 * db:    code_article, date_sortie_piece
	 */
	private static final String CLE3_MHIV = "CLE3-MHIV";
	/**
	 * cobol: REP-MHIV, DSP-MHIV
	 * db:    code_vendeur, date_sortie_piece
	 */
	private static final String CLE4_MHIV = "CLE4-MHIV";
	/**
	 * cobol: PCI-MHIV, DSP-MHIV
	 * db:    code_poste_ci, date_sortie_piece
	 */
	private static final String CLE5_MHIV = "CLE5-MHIV";
	/**
	 * cobol: MAT-MHIV, DSP-MHIV
	 * db:    no_ordre_materiel, date_sortie_piece
	 */
	private static final String CLE6_MHIV = "CLE6-MHIV";

	/** no_interne_hisvte (type cobol: 9(9)) */
	private static final String NUM_MHIV = "NUM-MHIV";
	/** code_agence - N° agence (type cobol: XXX) */
	private static final String AGE_MHIV = "AGE-MHIV";
	/** origine_vente - Origine: cf onglet définition (type cobol: X) */
	private static final String ORI_MHIV = "ORI-MHIV";
	/** no_bon_vte - N° bon (type cobol: X(8)) */
	private static final String BLO_MHIV = "BLO-MHIV";
	/** no_ligne_vte - N° ligne (type cobol: 9(4)) */
	private static final String LIG_MHIV = "LIG-MHIV";
	/** no_sousligne_vte - N° sous-ligne (type cobol: 9(4)) */
	private static final String LIN_MHIV = "LIN-MHIV";
	/** date_sortie_piece - Date sortie pièce (type cobol: 9(8)) */
	private static final String DSP_MHIV = "DSP-MHIV";
	/** date_facturation - Date facturation (type cobol: 9(8)) */
	private static final String DAT_MHIV = "DAT-MHIV";
	/** dep_mhiv - N° dépôt (type cobol: 999) */
	private static final String DEP_MHIV = "DEP-MHIV";
	/** code_client - N° client ou n° poste cession interne (type cobol: 9(6)) */
	private static final String CLI_MHIV = "CLI-MHIV";
	/** code_client_divers - N° client divers (type cobol: 9(6)) */
	private static final String CDV_MHIV = "CDV-MHIV";
	/** icc_mhiv - Indicateur client ou cession (type cobol: 9) */
	private static final String ICC_MHIV = "ICC-MHIV";
	/** code_article - Code article (type cobol: X(20)) */
	private static final String ART_MHIV = "ART-MHIV";
	/** code_vendeur - Vendeur (type cobol: X(4)) */
	private static final String REP_MHIV = "REP-MHIV";
	/** quantite - Quantité (type cobol: S9(6)V99) */
	private static final String QTE_MHIV = "QTE-MHIV";
	/** prix_de_vente_net - PU Net (type cobol: S9(7)V999) */
	private static final String PUB_MHIV = "PUB-MHIV";
	/** remise - % remise (type cobol: S99V99) */
	private static final String REM_MHIV = "REM-MHIV";
	/** indic_marge - Indcateur marge ou remise (type cobol: 9) */
	private static final String IMB_MHIV = "IMB-MHIV";
	/** indic_chg_ref - Indicateur changment de référence (type cobol: 9) */
	private static final String ICR_MHIV = "ICR-MHIV";
	/** marge_unitaire - Marge unitaire (type cobol: S9(7)V999) */
	private static final String MCU_MHIV = "MCU-MHIV";
	/** indic_garantie - Indicateur garantie (type cobol: X) */
	private static final String IGA_MHIV = "IGA-MHIV";
	/** code_poste_ci - N°poste CI (type cobol: 9(3)) */
	private static final String PCI_MHIV = "PCI-MHIV";
	/** no_ordre_materiel - N° ordre matériel (type cobol: 9(10)) */
	private static final String MAT_MHIV = "MAT-MHIV";
	/** indic_retrocession - Indic rétrocession (type cobol: 9) */
	private static final String IVR_MHIV = "IVR-MHIV";
	/** libelle_mvt_stock - Libelle mouvement stock (type cobol: X(20)) */
	private static final String LIBSTO_MHIV = "LIBSTO-MHIV";
	/** indic_art_ref - indic article reference (type cobol: 9) */
	private static final String IRD_MHIV = "IRD-MHIV";
	/** indicateur_promo - Indicateur Promotion: 0=Non  2=Oui   1=Oui (pour LSD) (type cobol: 9) */
	private static final String PRO_MHIV = "PRO-MHIV";
	/** indic_composition (type cobol: 9) */
	private static final String INO_MHIV = "INO-MHIV";
	/** code_agent (type cobol: 9(4)) */
	private static final String AGT_MHIV = "AGT-MHIV";
	/** indic_port_usine (type cobol: 9) */
	private static final String PUS_MHIV = "PUS-MHIV";
	/** no_facture - N° facture (N° de bordereau si besoin Agence (type cobol: 9(6)) */
	private static final String FAC_MHIV = "FAC-MHIV";
	/** ilc_mhiv - Indicateur ligne d'abord passée en commande (type cobol: 9) */
	private static final String ILC_MHIV = "ILC-MHIV";
	/** indic_sans_qte - Indicateur sans quantité (type cobol: 9) */
	private static final String ISQ_MHIV = "ISQ-MHIV";
	/** indic_sortie_excep - Indicateur Sortie Exceptionnelle: 0=Non   1=Oui    2=Mvt sur article divers (article non encore créé (type cobol: 9) */
	private static final String EXC_MHIV = "EXC-MHIV";
	/** niveau_commande (type cobol: 9) */
	private static final String ACA_MHIV = "ACA-MHIV";
	/** code_agence_sortie (type cobol: XXX) */
	private static final String AGS_MHIV = "AGS-MHIV";
	/** indic_traitement - Indicateeur Traitement: 9=Régularisation Automatique 8=suppression BL (type cobol: 9) */
	private static final String TRA_MHIV = "TRA-MHIV";
	/** code_technicien (type cobol: X(4)) */
	private static final String TEC_MHIV = "TEC-MHIV";
	/** indic_gratuit (type cobol: X) */
	private static final String PZE_MHIV = "PZE-MHIV";
	/** code_salarie_saisi (type cobol: X(4)) */
	private static final String ISA_MHIV = "ISA-MHIV";
	/** type_commande - Type de commande client (type cobol: 9) */
	private static final String TCO_MHIV = "TCO-MHIV";
	/** code_lieu_livr (type cobol: 9(9)) */
	private static final String CHC_MHIV = "CHC-MHIV";
	/** code_client_livre (type cobol: 9(6)) */
	private static final String CLL_MHIV = "CLL-MHIV";
	/** code_interlocuteur (type cobol: 9(9)) */
	private static final String ITC_MHIV = "ITC-MHIV";
	/** no_affaire (type cobol: X(10)) */
	private static final String NAF_MHIV = "NAF-MHIV";
	/** designation (type cobol: X(40)) */
	private static final String DES_MHIV = "DES-MHIV";
	/** prix_au_xxx (type cobol: 9(5)) */
	private static final String UPR_MHIV = "UPR-MHIV";
	/** date_commande - Date de commande de la Pièce (type cobol: 9(8)) */
	private static final String DCO_MHIV = "DCO-MHIV";
	/** no_lot - N° lot (selon paramètre sous-famille (type cobol: X(10)) */
	private static final String LOT_MHIV = "LOT-MHIV";
	/** code_atelier_ori (type cobol: 99) */
	private static final String ATI_MHIV = "ATI-MHIV";
	/** date_maj - Date MAJ (type cobol: 9(8)) */
	private static final String DME_MHIV = "DME-MHIV";

	public HisvteHandler() throws IOException {
		super("mx/fd/MXHISVTE.fd", "MXHISVTE", fr.mistral.dataserver.model.mx.Hisvte.class,
				"CLE1-MHIV",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MHIV, ImmutableList.<String>builder().add(NUM_MHIV).build())
					.put(CLE9_MHIV, ImmutableList.<String>builder().add(AGE_MHIV, ORI_MHIV, BLO_MHIV, LIG_MHIV, LIN_MHIV).build())
					.put(CLE7_MHIV, ImmutableList.<String>builder().add(DSP_MHIV).build())
					.put(CLE8_MHIV, ImmutableList.<String>builder().add(DAT_MHIV).build())
					.put(CLE2_MHIV, ImmutableList.<String>builder().add(CLI_MHIV, CDV_MHIV, DSP_MHIV).build())
					.put(CLE3_MHIV, ImmutableList.<String>builder().add(ART_MHIV, DSP_MHIV).build())
					.put(CLE4_MHIV, ImmutableList.<String>builder().add(REP_MHIV, DSP_MHIV).build())
					.put(CLE5_MHIV, ImmutableList.<String>builder().add(PCI_MHIV, DSP_MHIV).build())
					.put(CLE6_MHIV, ImmutableList.<String>builder().add(MAT_MHIV, DSP_MHIV).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Hisvte>>builder()
					.put(NUM_MHIV, new EntityFieldMapper<>(NUM_MHIV, "no_interne_hisvte", Hisvte::get_no_interne_hisvte))
					.put(AGE_MHIV, new EntityFieldMapper<>(AGE_MHIV, "code_agence", Hisvte::get_code_agence))
					.put(ORI_MHIV, new EntityFieldMapper<>(ORI_MHIV, "origine_vente", Hisvte::get_origine_vente))
					.put(BLO_MHIV, new EntityFieldMapper<>(BLO_MHIV, "no_bon_vte", Hisvte::get_no_bon_vte))
					.put(LIG_MHIV, new EntityFieldMapper<>(LIG_MHIV, "no_ligne_vte", Hisvte::get_no_ligne_vte))
					.put(LIN_MHIV, new EntityFieldMapper<>(LIN_MHIV, "no_sousligne_vte", Hisvte::get_no_sousligne_vte))
					.put(DSP_MHIV, new EntityFieldMapper<>(DSP_MHIV, "date_sortie_piece", Hisvte::get_date_sortie_piece))
					.put(DAT_MHIV, new EntityFieldMapper<>(DAT_MHIV, "date_facturation", Hisvte::get_date_facturation))
					.put(CLI_MHIV, new EntityFieldMapper<>(CLI_MHIV, "code_client", Hisvte::get_code_client))
					.put(CDV_MHIV, new EntityFieldMapper<>(CDV_MHIV, "code_client_divers", Hisvte::get_code_client_divers))
					.put(ART_MHIV, new EntityFieldMapper<>(ART_MHIV, "code_article", Hisvte::get_code_article))
					.put(REP_MHIV, new EntityFieldMapper<>(REP_MHIV, "code_vendeur", Hisvte::get_code_vendeur))
					.put(PCI_MHIV, new EntityFieldMapper<>(PCI_MHIV, "code_poste_ci", Hisvte::get_code_poste_ci))
					.put(MAT_MHIV, new EntityFieldMapper<>(MAT_MHIV, "no_ordre_materiel", Hisvte::get_no_ordre_materiel))
					.build());
	}

	@Override
	public String getName() {
		return "MXHISVTE";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXHISVTE2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Hisvte entity) {
		longCobolToJava(line.getFieldValue(NUM_MHIV), entity::set_no_interne_hisvte);
		stringCobolToJava(line.getFieldValue(AGE_MHIV), entity::set_code_agence);
		stringCobolToJava(line.getFieldValue(ORI_MHIV), entity::set_origine_vente);
		stringCobolToJava(line.getFieldValue(BLO_MHIV), entity::set_no_bon_vte);
		integerCobolToJava(line.getFieldValue(LIG_MHIV), entity::set_no_ligne_vte);
		integerCobolToJava(line.getFieldValue(LIN_MHIV), entity::set_no_sousligne_vte);
		dateCobolToJava(line.getFieldValue(DSP_MHIV), entity::set_date_sortie_piece);
		dateCobolToJava(line.getFieldValue(DAT_MHIV), entity::set_date_facturation);
		integerCobolToJava(line.getFieldValue(DEP_MHIV), entity::set_dep_mhiv);
		longCobolToJava(line.getFieldValue(CLI_MHIV), entity::set_code_client);
		longCobolToJava(line.getFieldValue(CDV_MHIV), entity::set_code_client_divers);
		integerCobolToJava(line.getFieldValue(ICC_MHIV), entity::set_icc_mhiv);
		stringCobolToJava(line.getFieldValue(ART_MHIV), entity::set_code_article);
		stringCobolToJava(line.getFieldValue(REP_MHIV), entity::set_code_vendeur);
		bigDecimalCobolToJava(line.getFieldValue(QTE_MHIV), entity::set_quantite);
		bigDecimalCobolToJava(line.getFieldValue(PUB_MHIV), entity::set_prix_de_vente_net);
		bigDecimalCobolToJava(line.getFieldValue(REM_MHIV), entity::set_remise);
		integerCobolToJava(line.getFieldValue(IMB_MHIV), entity::set_indic_marge);
		integerCobolToJava(line.getFieldValue(ICR_MHIV), entity::set_indic_chg_ref);
		bigDecimalCobolToJava(line.getFieldValue(MCU_MHIV), entity::set_marge_unitaire);
		stringCobolToJava(line.getFieldValue(IGA_MHIV), entity::set_indic_garantie);
		integerCobolToJava(line.getFieldValue(PCI_MHIV), entity::set_code_poste_ci);
		longCobolToJava(line.getFieldValue(MAT_MHIV), entity::set_no_ordre_materiel);
		integerCobolToJava(line.getFieldValue(IVR_MHIV), entity::set_indic_retrocession);
		stringCobolToJava(line.getFieldValue(LIBSTO_MHIV), entity::set_libelle_mvt_stock);
		integerCobolToJava(line.getFieldValue(IRD_MHIV), entity::set_indic_art_ref);
		integerCobolToJava(line.getFieldValue(PRO_MHIV), entity::set_indicateur_promo);
		integerCobolToJava(line.getFieldValue(INO_MHIV), entity::set_indic_composition);
		integerCobolToJava(line.getFieldValue(AGT_MHIV), entity::set_code_agent);
		integerCobolToJava(line.getFieldValue(PUS_MHIV), entity::set_indic_port_usine);
		longCobolToJava(line.getFieldValue(FAC_MHIV), entity::set_no_facture);
		integerCobolToJava(line.getFieldValue(ILC_MHIV), entity::set_ilc_mhiv);
		integerCobolToJava(line.getFieldValue(ISQ_MHIV), entity::set_indic_sans_qte);
		integerCobolToJava(line.getFieldValue(EXC_MHIV), entity::set_indic_sortie_excep);
		integerCobolToJava(line.getFieldValue(ACA_MHIV), entity::set_niveau_commande);
		stringCobolToJava(line.getFieldValue(AGS_MHIV), entity::set_code_agence_sortie);
		integerCobolToJava(line.getFieldValue(TRA_MHIV), entity::set_indic_traitement);
		stringCobolToJava(line.getFieldValue(TEC_MHIV), entity::set_code_technicien);
		stringCobolToJava(line.getFieldValue(PZE_MHIV), entity::set_indic_gratuit);
		stringCobolToJava(line.getFieldValue(ISA_MHIV), entity::set_code_salarie_saisi);
		integerCobolToJava(line.getFieldValue(TCO_MHIV), entity::set_type_commande);
		longCobolToJava(line.getFieldValue(CHC_MHIV), entity::set_code_lieu_livr);
		longCobolToJava(line.getFieldValue(CLL_MHIV), entity::set_code_client_livre);
		longCobolToJava(line.getFieldValue(ITC_MHIV), entity::set_code_interlocuteur);
		stringCobolToJava(line.getFieldValue(NAF_MHIV), entity::set_no_affaire);
		stringCobolToJava(line.getFieldValue(DES_MHIV), entity::set_designation);
		integerCobolToJava(line.getFieldValue(UPR_MHIV), entity::set_prix_au_xxx);
		dateCobolToJava(line.getFieldValue(DCO_MHIV), entity::set_date_commande);
		stringCobolToJava(line.getFieldValue(LOT_MHIV), entity::set_no_lot);
		integerCobolToJava(line.getFieldValue(ATI_MHIV), entity::set_code_atelier_ori);
		dateCobolToJava(line.getFieldValue(DME_MHIV), entity::set_date_maj);
	}

	@Override
	protected void mapJavaToCobol(Hisvte entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(NUM_MHIV), entity::get_no_interne_hisvte);
		stringJavaToCobol(line.getFieldValue(AGE_MHIV), entity::get_code_agence);
		stringJavaToCobol(line.getFieldValue(ORI_MHIV), entity::get_origine_vente);
		stringJavaToCobol(line.getFieldValue(BLO_MHIV), entity::get_no_bon_vte);
		integerJavaToCobol(line.getFieldValue(LIG_MHIV), entity::get_no_ligne_vte);
		integerJavaToCobol(line.getFieldValue(LIN_MHIV), entity::get_no_sousligne_vte);
		dateJavaToCobol(line.getFieldValue(DSP_MHIV), entity::get_date_sortie_piece);
		dateJavaToCobol(line.getFieldValue(DAT_MHIV), entity::get_date_facturation);
		integerJavaToCobol(line.getFieldValue(DEP_MHIV), entity::get_dep_mhiv);
		longJavaToCobol(line.getFieldValue(CLI_MHIV), entity::get_code_client);
		longJavaToCobol(line.getFieldValue(CDV_MHIV), entity::get_code_client_divers);
		integerJavaToCobol(line.getFieldValue(ICC_MHIV), entity::get_icc_mhiv);
		stringJavaToCobol(line.getFieldValue(ART_MHIV), entity::get_code_article);
		stringJavaToCobol(line.getFieldValue(REP_MHIV), entity::get_code_vendeur);
		bigDecimalJavaToCobol(line.getFieldValue(QTE_MHIV), entity::get_quantite);
		bigDecimalJavaToCobol(line.getFieldValue(PUB_MHIV), entity::get_prix_de_vente_net);
		bigDecimalJavaToCobol(line.getFieldValue(REM_MHIV), entity::get_remise);
		integerJavaToCobol(line.getFieldValue(IMB_MHIV), entity::get_indic_marge);
		integerJavaToCobol(line.getFieldValue(ICR_MHIV), entity::get_indic_chg_ref);
		bigDecimalJavaToCobol(line.getFieldValue(MCU_MHIV), entity::get_marge_unitaire);
		stringJavaToCobol(line.getFieldValue(IGA_MHIV), entity::get_indic_garantie);
		integerJavaToCobol(line.getFieldValue(PCI_MHIV), entity::get_code_poste_ci);
		longJavaToCobol(line.getFieldValue(MAT_MHIV), entity::get_no_ordre_materiel);
		integerJavaToCobol(line.getFieldValue(IVR_MHIV), entity::get_indic_retrocession);
		stringJavaToCobol(line.getFieldValue(LIBSTO_MHIV), entity::get_libelle_mvt_stock);
		integerJavaToCobol(line.getFieldValue(IRD_MHIV), entity::get_indic_art_ref);
		integerJavaToCobol(line.getFieldValue(PRO_MHIV), entity::get_indicateur_promo);
		integerJavaToCobol(line.getFieldValue(INO_MHIV), entity::get_indic_composition);
		integerJavaToCobol(line.getFieldValue(AGT_MHIV), entity::get_code_agent);
		integerJavaToCobol(line.getFieldValue(PUS_MHIV), entity::get_indic_port_usine);
		longJavaToCobol(line.getFieldValue(FAC_MHIV), entity::get_no_facture);
		integerJavaToCobol(line.getFieldValue(ILC_MHIV), entity::get_ilc_mhiv);
		integerJavaToCobol(line.getFieldValue(ISQ_MHIV), entity::get_indic_sans_qte);
		integerJavaToCobol(line.getFieldValue(EXC_MHIV), entity::get_indic_sortie_excep);
		integerJavaToCobol(line.getFieldValue(ACA_MHIV), entity::get_niveau_commande);
		stringJavaToCobol(line.getFieldValue(AGS_MHIV), entity::get_code_agence_sortie);
		integerJavaToCobol(line.getFieldValue(TRA_MHIV), entity::get_indic_traitement);
		stringJavaToCobol(line.getFieldValue(TEC_MHIV), entity::get_code_technicien);
		stringJavaToCobol(line.getFieldValue(PZE_MHIV), entity::get_indic_gratuit);
		stringJavaToCobol(line.getFieldValue(ISA_MHIV), entity::get_code_salarie_saisi);
		integerJavaToCobol(line.getFieldValue(TCO_MHIV), entity::get_type_commande);
		longJavaToCobol(line.getFieldValue(CHC_MHIV), entity::get_code_lieu_livr);
		longJavaToCobol(line.getFieldValue(CLL_MHIV), entity::get_code_client_livre);
		longJavaToCobol(line.getFieldValue(ITC_MHIV), entity::get_code_interlocuteur);
		stringJavaToCobol(line.getFieldValue(NAF_MHIV), entity::get_no_affaire);
		stringJavaToCobol(line.getFieldValue(DES_MHIV), entity::get_designation);
		integerJavaToCobol(line.getFieldValue(UPR_MHIV), entity::get_prix_au_xxx);
		dateJavaToCobol(line.getFieldValue(DCO_MHIV), entity::get_date_commande);
		stringJavaToCobol(line.getFieldValue(LOT_MHIV), entity::get_no_lot);
		integerJavaToCobol(line.getFieldValue(ATI_MHIV), entity::get_code_atelier_ori);
		dateJavaToCobol(line.getFieldValue(DME_MHIV), entity::get_date_maj);
	}

}
