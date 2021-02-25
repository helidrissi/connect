package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Ldis;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class LdisHandler extends AbstractDataHandler<Ldis> implements IDataHandler {

	/**
	 * cobol: AGE-MLDI, BON-MLDI, LIG-MLDI
	 * db:    no_agence, no_bon, no_ligne
	 */
	private static final String CLE1_MLDI = "CLE1-MLDI";
	/**
	 * cobol: AGE-MLDI, BON-MLDI, CAS-MLDI
	 * db:    no_agence, no_bon, no_casier
	 */
	private static final String CLE2_MLDI = "CLE2-MLDI";
	/**
	 * cobol: INP-MLDI, PRE-MLDI, BID-MLDI
	 * db:    type_produit, code_prestation, vide
	 */
	private static final String CLE3_MLDI = "CLE3-MLDI";
	/**
	 * cobol: AGE-MLDI, BON-MLDI, RAN-MLDI
	 * db:    no_agence, no_bon, rang
	 */
	private static final String CLE4_MLDI = "CLE4-MLDI";

	/** no_agence (type cobol: XXX) */
	private static final String AGE_MLDI = "AGE-MLDI";
	/** no_bon (type cobol: 9(8)) */
	private static final String BON_MLDI = "BON-MLDI";
	/** no_ligne (type cobol: 9999) */
	private static final String LIG_MLDI = "LIG-MLDI";
	/** no_casier (type cobol: X(7)) */
	private static final String CAS_MLDI = "CAS-MLDI";
	/** type_produit (type cobol: X) */
	private static final String INP_MLDI = "INP-MLDI";
	/** code_prestation (type cobol: X(4)) */
	private static final String PRE_MLDI = "PRE-MLDI";
	/** vide (type cobol: X(16)) */
	private static final String BID_MLDI = "BID-MLDI";
	/** rang (type cobol: 9999) */
	private static final String RAN_MLDI = "RAN-MLDI";
	/** designation (type cobol: X(40)) */
	private static final String DES_MLDI = "DES-MLDI";
	/** designation2 (type cobol: X(20)) */
	private static final String DE2_MLDI = "DE2-MLDI";
	/** quantite (type cobol: S9(6)V99) */
	private static final String QTE_MLDI = "QTE-MLDI";
	/** quantite_cde - Délais (SRM) (type cobol: S9(6)V99) */
	private static final String QTC_MLDI = "QTC-MLDI";
	/** regul (type cobol: 9) */
	private static final String ISQ_MLDI = "ISQ-MLDI";
	/** pu_brut (type cobol: S9(7)V99) */
	private static final String PUB_MLDI = "PUB-MLDI";
	/** remise (type cobol: S99V99) */
	private static final String REM_MLDI = "REM-MLDI";
	/** remise_cascade (type cobol: 99V99) */
	private static final String REC_MLDI = "REC-MLDI";
	/** remise_comp (type cobol: S99V99) */
	private static final String REMC_MLDI = "REMC-MLDI";
	/** pu_net (type cobol: S9(7)V99) */
	private static final String PUN_MLDI = "PUN-MLDI";
	/** prix_revient (type cobol: S9(7)V99) */
	private static final String PRU_MLDI = "PRU-MLDI";
	/** prix_achat (type cobol: S9(7)V99) */
	private static final String PAC_MLDI = "PAC-MLDI";
	/** indic_gratuit (type cobol: 9) */
	private static final String PZE_MLDI = "PZE-MLDI";
	/** famille_art (type cobol: 99) */
	private static final String GRA_MLDI = "GRA-MLDI";
	/** ss_famille_art (type cobol: 99) */
	private static final String FAM_MLDI = "FAM-MLDI";
	/** indic_edition (type cobol: 9) */
	private static final String EDI_MLDI = "EDI-MLDI";
	/** type_ligne - 1=Ligne Livrée ou ligne devis   3=En commande (type cobol: 9) */
	private static final String TLI_MLDI = "TLI-MLDI";
	/** type_cde_cli (type cobol: X) */
	private static final String TCC_MLDI = "TCC-MLDI";
	/** indic_promotion (type cobol: 9) */
	private static final String PRO_MLDI = "PRO-MLDI";
	/** indic_ligne_cdee - Indicateur ligne d'abord commandée (type cobol: 9) */
	private static final String ILC_MLDI = "ILC-MLDI";
	/** indic_compo - Indicateur composition: 0=Sans compo 1=Avec composition (type cobol: 9) */
	private static final String INO_MLDI = "INO-MLDI";
	/** type_cde_fou (type cobol: X) */
	private static final String TCF_MLDI = "TCF-MLDI";
	/** no_ligne_cde_fou (type cobol: 9999) */
	private static final String LCF_MLDI = "LCF-MLDI";
	/** no_ligne_bl_fou (type cobol: 9999) */
	private static final String LLF_MLDI = "LLF-MLDI";
	/** edition_compo_bl (type cobol: 9) */
	private static final String EDB_MLDI = "EDB-MLDI";
	/** edition_compo_fac (type cobol: 9) */
	private static final String EDF_MLDI = "EDF-MLDI";
	/** code_vte_manquee (type cobol: 9) */
	private static final String CVM_MLDI = "CVM-MLDI";
	/** libelle_gratuit (type cobol: X(10)) */
	private static final String LPZ_MLDI = "LPZ-MLDI";
	/** marque_mat (type cobol: XXXX) */
	private static final String MAM_MLDI = "MAM-MLDI";
	/** type_mat (type cobol: X(16)) */
	private static final String TYM_MLDI = "TYM-MLDI";
	/** date_liv_prevue (type cobol: 9(8)) */
	private static final String DLP_MLDI = "DLP-MLDI";
	/** date_sortie_pieces (type cobol: 9(8)) */
	private static final String DSP_MLDI = "DSP-MLDI";
	/** indic_gie (type cobol: 9) */
	private static final String IGA_MLDI = "IGA-MLDI";
	/** type_gie (type cobol: 9) */
	private static final String TGA_MLDI = "TGA-MLDI";
	/** indic_gie_pieces (type cobol: 9) */
	private static final String INGP_MLDI = "INGP-MLDI";
	/** duree_gie_pieces (type cobol: 999) */
	private static final String DUGP_MLDI = "DUGP-MLDI";
	/** indic_gie_mo (type cobol: 9) */
	private static final String INGM_MLDI = "INGM-MLDI";
	/** duree_gie_mo (type cobol: 999) */
	private static final String DUGM_MLDI = "DUGM-MLDI";
	/** indic_gie_divers (type cobol: 9) */
	private static final String INGD_MLDI = "INGD-MLDI";
	/** duree_gie_divers (type cobol: 999) */
	private static final String DUGD_MLDI = "DUGD-MLDI";
	/** indic_debut_gie (type cobol: 9) */
	private static final String IDG_MLDI = "IDG-MLDI";
	/** date_debut_gie (type cobol: 9(8)) */
	private static final String DDG_MLDI = "DDG-MLDI";
	/** no_depot (type cobol: 999) */
	private static final String DEP_MLDI = "DEP-MLDI";
	/** no_agence_sortie (type cobol: XXX) */
	private static final String AGS_MLDI = "AGS-MLDI";
	/** motif_manque (type cobol: X(15)) */
	private static final String MOT_MLDI = "MOT-MLDI";
	/** no_fournisseur (type cobol: 9(6)) */
	private static final String FOU_MLDI = "FOU-MLDI";
	/** indic_catalogue_fo (type cobol: 9) */
	private static final String ICF_MLDI = "ICF-MLDI";
	/** bp_imprime (type cobol: 9) */
	private static final String EPG_MLDI = "EPG-MLDI";
	/** sorte_exceptionnel (type cobol: 9) */
	private static final String EXC_MLDI = "EXC-MLDI";
	/** no_hiscdd (type cobol: 9(8)) */
	private static final String HCD_MLDI = "HCD-MLDI";
	/** no_hisdvd (type cobol: 9(8)) */
	private static final String HDD_MLDI = "HDD-MLDI";
	/** no_reserv (type cobol: 9(6)) */
	private static final String REV_MLDI = "REV-MLDI";
	/** no_vmanque (type cobol: 9(6)) */
	private static final String VMQ_MLDI = "VMQ-MLDI";
	/** date_commande (type cobol: 9(8)) */
	private static final String DCO_MLDI = "DCO-MLDI";
	/** no_histo_ventes (type cobol: 9(9)) */
	private static final String HIV_MLDI = "HIV-MLDI";
	/** no_histo_achats (type cobol: 9(9)) */
	private static final String HIA_MLDI = "HIA-MLDI";
	/** no_agence_achat (type cobol: X(3)) */
	private static final String AGET_MLDI = "AGET-MLDI";
	/** no_ligne_transfert - N° ligne bon de transfert (TSV) si nter-agence avec gestion stock relais (type cobol: 9(4)) */
	private static final String TAA_MLDI = "TAA-MLDI";
	/** indic_abandon - Indicateur ligne devis 1=abandonnée 2=gagnée (type cobol: 9) */
	private static final String IAD_MLDI = "IAD-MLDI";
	/** indic_reprise - Indic reprise petit matériel (type cobol: 9) */
	private static final String IRPM_MLDI = "IRPM-MLDI";
	/** tva_marge - Indic TVA sur la marge (type cobol: 9) */
	private static final String ITM_MLDI = "ITM-MLDI";
	/** reprise_ht - Indic reprise HT ou TTC (type cobol: 9) */
	private static final String IRE_MLDI = "IRE-MLDI";
	/** type_livraison - Type livraison 1=sur stock 2=direct client 3=via stock central - M3 (type cobol: 9) */
	private static final String TBP_MLDI = "TBP-MLDI";
	/** no_bl_intersoc - N° BL inter-agence généré en efd-genbdi (type cobol: 9(8)) */
	private static final String BLI_MLDI = "BLI-MLDI";
	/** pn_modifie - Indicateur prix net modifié (type cobol: 9) */
	private static final String IPNS_MLDI = "IPNS-MLDI";
	/** pa_ou_ptf - Indicateur prix saisi article divers 0=PTF 1=PA Net (type cobol: 9) */
	private static final String IPAC_MLDI = "IPAC-MLDI";
	/** taux_tva - Taux de TVA pour Agrizone (type cobol: 9) */
	private static final String TTVA_MLDI = "TTVA-MLDI";
	/** no_lig_transaction - N° Ligne transaction pour Agrizone (type cobol: X(4)) */
	private static final String NTR_MLDI = "NTR-MLDI";
	/** indic_cde_complete - Indicateur commande complète GCU (type cobol: 9) */
	private static final String ICOC_MLDI = "ICOC-MLDI";

	public LdisHandler() throws IOException {
		super("mx/fd/MXLDIS.fd", "MXLDIS", fr.mistral.dataserver.model.mx.Ldis.class,
				"CLE1-MLDI",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MLDI, ImmutableList.<String>builder().add(AGE_MLDI, BON_MLDI, LIG_MLDI).build())
					.put(CLE2_MLDI, ImmutableList.<String>builder().add(AGE_MLDI, BON_MLDI, CAS_MLDI).build())
					.put(CLE3_MLDI, ImmutableList.<String>builder().add(INP_MLDI, PRE_MLDI, BID_MLDI).build())
					.put(CLE4_MLDI, ImmutableList.<String>builder().add(AGE_MLDI, BON_MLDI, RAN_MLDI).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Ldis>>builder()
					.put(AGE_MLDI, new EntityFieldMapper<>(AGE_MLDI, "no_agence", Ldis::get_no_agence))
					.put(BON_MLDI, new EntityFieldMapper<>(BON_MLDI, "no_bon", Ldis::get_no_bon))
					.put(LIG_MLDI, new EntityFieldMapper<>(LIG_MLDI, "no_ligne", Ldis::get_no_ligne))
					.put(CAS_MLDI, new EntityFieldMapper<>(CAS_MLDI, "no_casier", Ldis::get_no_casier))
					.put(INP_MLDI, new EntityFieldMapper<>(INP_MLDI, "type_produit", Ldis::get_type_produit))
					.put(PRE_MLDI, new EntityFieldMapper<>(PRE_MLDI, "code_prestation", Ldis::get_code_prestation))
					.put(BID_MLDI, new EntityFieldMapper<>(BID_MLDI, "vide", Ldis::get_vide))
					.put(RAN_MLDI, new EntityFieldMapper<>(RAN_MLDI, "rang", Ldis::get_rang))
					.build());
	}

	@Override
	public String getName() {
		return "MXLDIS";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXLDIS2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Ldis entity) {
		stringCobolToJava(line.getFieldValue(AGE_MLDI), entity::set_no_agence);
		longCobolToJava(line.getFieldValue(BON_MLDI), entity::set_no_bon);
		integerCobolToJava(line.getFieldValue(LIG_MLDI), entity::set_no_ligne);
		stringCobolToJava(line.getFieldValue(CAS_MLDI), entity::set_no_casier);
		stringCobolToJava(line.getFieldValue(INP_MLDI), entity::set_type_produit);
		stringCobolToJava(line.getFieldValue(PRE_MLDI), entity::set_code_prestation);
		stringCobolToJava(line.getFieldValue(BID_MLDI), entity::set_vide);
		integerCobolToJava(line.getFieldValue(RAN_MLDI), entity::set_rang);
		stringCobolToJava(line.getFieldValue(DES_MLDI), entity::set_designation);
		stringCobolToJava(line.getFieldValue(DE2_MLDI), entity::set_designation2);
		bigDecimalCobolToJava(line.getFieldValue(QTE_MLDI), entity::set_quantite);
		bigDecimalCobolToJava(line.getFieldValue(QTC_MLDI), entity::set_quantite_cde);
		integerCobolToJava(line.getFieldValue(ISQ_MLDI), entity::set_regul);
		bigDecimalCobolToJava(line.getFieldValue(PUB_MLDI), entity::set_pu_brut);
		bigDecimalCobolToJava(line.getFieldValue(REM_MLDI), entity::set_remise);
		bigDecimalCobolToJava(line.getFieldValue(REC_MLDI + " (0)"), entity::set_remise_cascade_1);
		bigDecimalCobolToJava(line.getFieldValue(REC_MLDI + " (1)"), entity::set_remise_cascade_2);
		bigDecimalCobolToJava(line.getFieldValue(REC_MLDI + " (2)"), entity::set_remise_cascade_3);
		bigDecimalCobolToJava(line.getFieldValue(REC_MLDI + " (3)"), entity::set_remise_cascade_4);
		bigDecimalCobolToJava(line.getFieldValue(REC_MLDI + " (4)"), entity::set_remise_cascade_5);
		bigDecimalCobolToJava(line.getFieldValue(REC_MLDI + " (5)"), entity::set_remise_cascade_6);
		bigDecimalCobolToJava(line.getFieldValue(REMC_MLDI), entity::set_remise_comp);
		bigDecimalCobolToJava(line.getFieldValue(PUN_MLDI), entity::set_pu_net);
		bigDecimalCobolToJava(line.getFieldValue(PRU_MLDI), entity::set_prix_revient);
		bigDecimalCobolToJava(line.getFieldValue(PAC_MLDI), entity::set_prix_achat);
		integerCobolToJava(line.getFieldValue(PZE_MLDI), entity::set_indic_gratuit);
		integerCobolToJava(line.getFieldValue(GRA_MLDI), entity::set_famille_art);
		integerCobolToJava(line.getFieldValue(FAM_MLDI), entity::set_ss_famille_art);
		integerCobolToJava(line.getFieldValue(EDI_MLDI), entity::set_indic_edition);
		integerCobolToJava(line.getFieldValue(TLI_MLDI), entity::set_type_ligne);
		stringCobolToJava(line.getFieldValue(TCC_MLDI), entity::set_type_cde_cli);
		integerCobolToJava(line.getFieldValue(PRO_MLDI), entity::set_indic_promotion);
		integerCobolToJava(line.getFieldValue(ILC_MLDI), entity::set_indic_ligne_cdee);
		integerCobolToJava(line.getFieldValue(INO_MLDI), entity::set_indic_compo);
		stringCobolToJava(line.getFieldValue(TCF_MLDI), entity::set_type_cde_fou);
		integerCobolToJava(line.getFieldValue(LCF_MLDI), entity::set_no_ligne_cde_fou);
		integerCobolToJava(line.getFieldValue(LLF_MLDI), entity::set_no_ligne_bl_fou);
		integerCobolToJava(line.getFieldValue(EDB_MLDI), entity::set_edition_compo_bl);
		integerCobolToJava(line.getFieldValue(EDF_MLDI), entity::set_edition_compo_fac);
		integerCobolToJava(line.getFieldValue(CVM_MLDI), entity::set_code_vte_manquee);
		stringCobolToJava(line.getFieldValue(LPZ_MLDI), entity::set_libelle_gratuit);
		stringCobolToJava(line.getFieldValue(MAM_MLDI), entity::set_marque_mat);
		stringCobolToJava(line.getFieldValue(TYM_MLDI), entity::set_type_mat);
		dateCobolToJava(line.getFieldValue(DLP_MLDI), entity::set_date_liv_prevue);
		dateCobolToJava(line.getFieldValue(DSP_MLDI), entity::set_date_sortie_pieces);
		integerCobolToJava(line.getFieldValue(IGA_MLDI), entity::set_indic_gie);
		integerCobolToJava(line.getFieldValue(TGA_MLDI), entity::set_type_gie);
		integerCobolToJava(line.getFieldValue(INGP_MLDI), entity::set_indic_gie_pieces);
		integerCobolToJava(line.getFieldValue(DUGP_MLDI), entity::set_duree_gie_pieces);
		integerCobolToJava(line.getFieldValue(INGM_MLDI), entity::set_indic_gie_mo);
		integerCobolToJava(line.getFieldValue(DUGM_MLDI), entity::set_duree_gie_mo);
		integerCobolToJava(line.getFieldValue(INGD_MLDI), entity::set_indic_gie_divers);
		integerCobolToJava(line.getFieldValue(DUGD_MLDI), entity::set_duree_gie_divers);
		integerCobolToJava(line.getFieldValue(IDG_MLDI), entity::set_indic_debut_gie);
		dateCobolToJava(line.getFieldValue(DDG_MLDI), entity::set_date_debut_gie);
		integerCobolToJava(line.getFieldValue(DEP_MLDI), entity::set_no_depot);
		stringCobolToJava(line.getFieldValue(AGS_MLDI), entity::set_no_agence_sortie);
		stringCobolToJava(line.getFieldValue(MOT_MLDI), entity::set_motif_manque);
		longCobolToJava(line.getFieldValue(FOU_MLDI), entity::set_no_fournisseur);
		integerCobolToJava(line.getFieldValue(ICF_MLDI), entity::set_indic_catalogue_fo);
		integerCobolToJava(line.getFieldValue(EPG_MLDI), entity::set_bp_imprime);
		integerCobolToJava(line.getFieldValue(EXC_MLDI), entity::set_sorte_exceptionnel);
		longCobolToJava(line.getFieldValue(HCD_MLDI), entity::set_no_hiscdd);
		longCobolToJava(line.getFieldValue(HDD_MLDI), entity::set_no_hisdvd);
		longCobolToJava(line.getFieldValue(REV_MLDI), entity::set_no_reserv);
		longCobolToJava(line.getFieldValue(VMQ_MLDI), entity::set_no_vmanque);
		dateCobolToJava(line.getFieldValue(DCO_MLDI), entity::set_date_commande);
		longCobolToJava(line.getFieldValue(HIV_MLDI), entity::set_no_histo_ventes);
		longCobolToJava(line.getFieldValue(HIA_MLDI), entity::set_no_histo_achats);
		stringCobolToJava(line.getFieldValue(AGET_MLDI), entity::set_no_agence_achat);
		integerCobolToJava(line.getFieldValue(TAA_MLDI), entity::set_no_ligne_transfert);
		integerCobolToJava(line.getFieldValue(IAD_MLDI), entity::set_indic_abandon);
		integerCobolToJava(line.getFieldValue(IRPM_MLDI), entity::set_indic_reprise);
		integerCobolToJava(line.getFieldValue(ITM_MLDI), entity::set_tva_marge);
		integerCobolToJava(line.getFieldValue(IRE_MLDI), entity::set_reprise_ht);
		integerCobolToJava(line.getFieldValue(TBP_MLDI), entity::set_type_livraison);
		longCobolToJava(line.getFieldValue(BLI_MLDI), entity::set_no_bl_intersoc);
		integerCobolToJava(line.getFieldValue(IPNS_MLDI), entity::set_pn_modifie);
		integerCobolToJava(line.getFieldValue(IPAC_MLDI), entity::set_pa_ou_ptf);
		integerCobolToJava(line.getFieldValue(TTVA_MLDI), entity::set_taux_tva);
		stringCobolToJava(line.getFieldValue(NTR_MLDI), entity::set_no_lig_transaction);
		integerCobolToJava(line.getFieldValue(ICOC_MLDI), entity::set_indic_cde_complete);
	}

	@Override
	protected void mapJavaToCobol(Ldis entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(AGE_MLDI), entity::get_no_agence);
		longJavaToCobol(line.getFieldValue(BON_MLDI), entity::get_no_bon);
		integerJavaToCobol(line.getFieldValue(LIG_MLDI), entity::get_no_ligne);
		stringJavaToCobol(line.getFieldValue(CAS_MLDI), entity::get_no_casier);
		stringJavaToCobol(line.getFieldValue(INP_MLDI), entity::get_type_produit);
		stringJavaToCobol(line.getFieldValue(PRE_MLDI), entity::get_code_prestation);
		stringJavaToCobol(line.getFieldValue(BID_MLDI), entity::get_vide);
		integerJavaToCobol(line.getFieldValue(RAN_MLDI), entity::get_rang);
		stringJavaToCobol(line.getFieldValue(DES_MLDI), entity::get_designation);
		stringJavaToCobol(line.getFieldValue(DE2_MLDI), entity::get_designation2);
		bigDecimalJavaToCobol(line.getFieldValue(QTE_MLDI), entity::get_quantite);
		bigDecimalJavaToCobol(line.getFieldValue(QTC_MLDI), entity::get_quantite_cde);
		integerJavaToCobol(line.getFieldValue(ISQ_MLDI), entity::get_regul);
		bigDecimalJavaToCobol(line.getFieldValue(PUB_MLDI), entity::get_pu_brut);
		bigDecimalJavaToCobol(line.getFieldValue(REM_MLDI), entity::get_remise);
		bigDecimalJavaToCobol(line.getFieldValue(REC_MLDI + " (0)"), entity::get_remise_cascade_1);
		bigDecimalJavaToCobol(line.getFieldValue(REC_MLDI + " (1)"), entity::get_remise_cascade_2);
		bigDecimalJavaToCobol(line.getFieldValue(REC_MLDI + " (2)"), entity::get_remise_cascade_3);
		bigDecimalJavaToCobol(line.getFieldValue(REC_MLDI + " (3)"), entity::get_remise_cascade_4);
		bigDecimalJavaToCobol(line.getFieldValue(REC_MLDI + " (4)"), entity::get_remise_cascade_5);
		bigDecimalJavaToCobol(line.getFieldValue(REC_MLDI + " (5)"), entity::get_remise_cascade_6);
		bigDecimalJavaToCobol(line.getFieldValue(REMC_MLDI), entity::get_remise_comp);
		bigDecimalJavaToCobol(line.getFieldValue(PUN_MLDI), entity::get_pu_net);
		bigDecimalJavaToCobol(line.getFieldValue(PRU_MLDI), entity::get_prix_revient);
		bigDecimalJavaToCobol(line.getFieldValue(PAC_MLDI), entity::get_prix_achat);
		integerJavaToCobol(line.getFieldValue(PZE_MLDI), entity::get_indic_gratuit);
		integerJavaToCobol(line.getFieldValue(GRA_MLDI), entity::get_famille_art);
		integerJavaToCobol(line.getFieldValue(FAM_MLDI), entity::get_ss_famille_art);
		integerJavaToCobol(line.getFieldValue(EDI_MLDI), entity::get_indic_edition);
		integerJavaToCobol(line.getFieldValue(TLI_MLDI), entity::get_type_ligne);
		stringJavaToCobol(line.getFieldValue(TCC_MLDI), entity::get_type_cde_cli);
		integerJavaToCobol(line.getFieldValue(PRO_MLDI), entity::get_indic_promotion);
		integerJavaToCobol(line.getFieldValue(ILC_MLDI), entity::get_indic_ligne_cdee);
		integerJavaToCobol(line.getFieldValue(INO_MLDI), entity::get_indic_compo);
		stringJavaToCobol(line.getFieldValue(TCF_MLDI), entity::get_type_cde_fou);
		integerJavaToCobol(line.getFieldValue(LCF_MLDI), entity::get_no_ligne_cde_fou);
		integerJavaToCobol(line.getFieldValue(LLF_MLDI), entity::get_no_ligne_bl_fou);
		integerJavaToCobol(line.getFieldValue(EDB_MLDI), entity::get_edition_compo_bl);
		integerJavaToCobol(line.getFieldValue(EDF_MLDI), entity::get_edition_compo_fac);
		integerJavaToCobol(line.getFieldValue(CVM_MLDI), entity::get_code_vte_manquee);
		stringJavaToCobol(line.getFieldValue(LPZ_MLDI), entity::get_libelle_gratuit);
		stringJavaToCobol(line.getFieldValue(MAM_MLDI), entity::get_marque_mat);
		stringJavaToCobol(line.getFieldValue(TYM_MLDI), entity::get_type_mat);
		dateJavaToCobol(line.getFieldValue(DLP_MLDI), entity::get_date_liv_prevue);
		dateJavaToCobol(line.getFieldValue(DSP_MLDI), entity::get_date_sortie_pieces);
		integerJavaToCobol(line.getFieldValue(IGA_MLDI), entity::get_indic_gie);
		integerJavaToCobol(line.getFieldValue(TGA_MLDI), entity::get_type_gie);
		integerJavaToCobol(line.getFieldValue(INGP_MLDI), entity::get_indic_gie_pieces);
		integerJavaToCobol(line.getFieldValue(DUGP_MLDI), entity::get_duree_gie_pieces);
		integerJavaToCobol(line.getFieldValue(INGM_MLDI), entity::get_indic_gie_mo);
		integerJavaToCobol(line.getFieldValue(DUGM_MLDI), entity::get_duree_gie_mo);
		integerJavaToCobol(line.getFieldValue(INGD_MLDI), entity::get_indic_gie_divers);
		integerJavaToCobol(line.getFieldValue(DUGD_MLDI), entity::get_duree_gie_divers);
		integerJavaToCobol(line.getFieldValue(IDG_MLDI), entity::get_indic_debut_gie);
		dateJavaToCobol(line.getFieldValue(DDG_MLDI), entity::get_date_debut_gie);
		integerJavaToCobol(line.getFieldValue(DEP_MLDI), entity::get_no_depot);
		stringJavaToCobol(line.getFieldValue(AGS_MLDI), entity::get_no_agence_sortie);
		stringJavaToCobol(line.getFieldValue(MOT_MLDI), entity::get_motif_manque);
		longJavaToCobol(line.getFieldValue(FOU_MLDI), entity::get_no_fournisseur);
		integerJavaToCobol(line.getFieldValue(ICF_MLDI), entity::get_indic_catalogue_fo);
		integerJavaToCobol(line.getFieldValue(EPG_MLDI), entity::get_bp_imprime);
		integerJavaToCobol(line.getFieldValue(EXC_MLDI), entity::get_sorte_exceptionnel);
		longJavaToCobol(line.getFieldValue(HCD_MLDI), entity::get_no_hiscdd);
		longJavaToCobol(line.getFieldValue(HDD_MLDI), entity::get_no_hisdvd);
		longJavaToCobol(line.getFieldValue(REV_MLDI), entity::get_no_reserv);
		longJavaToCobol(line.getFieldValue(VMQ_MLDI), entity::get_no_vmanque);
		dateJavaToCobol(line.getFieldValue(DCO_MLDI), entity::get_date_commande);
		longJavaToCobol(line.getFieldValue(HIV_MLDI), entity::get_no_histo_ventes);
		longJavaToCobol(line.getFieldValue(HIA_MLDI), entity::get_no_histo_achats);
		stringJavaToCobol(line.getFieldValue(AGET_MLDI), entity::get_no_agence_achat);
		integerJavaToCobol(line.getFieldValue(TAA_MLDI), entity::get_no_ligne_transfert);
		integerJavaToCobol(line.getFieldValue(IAD_MLDI), entity::get_indic_abandon);
		integerJavaToCobol(line.getFieldValue(IRPM_MLDI), entity::get_indic_reprise);
		integerJavaToCobol(line.getFieldValue(ITM_MLDI), entity::get_tva_marge);
		integerJavaToCobol(line.getFieldValue(IRE_MLDI), entity::get_reprise_ht);
		integerJavaToCobol(line.getFieldValue(TBP_MLDI), entity::get_type_livraison);
		longJavaToCobol(line.getFieldValue(BLI_MLDI), entity::get_no_bl_intersoc);
		integerJavaToCobol(line.getFieldValue(IPNS_MLDI), entity::get_pn_modifie);
		integerJavaToCobol(line.getFieldValue(IPAC_MLDI), entity::get_pa_ou_ptf);
		integerJavaToCobol(line.getFieldValue(TTVA_MLDI), entity::get_taux_tva);
		stringJavaToCobol(line.getFieldValue(NTR_MLDI), entity::get_no_lig_transaction);
		integerJavaToCobol(line.getFieldValue(ICOC_MLDI), entity::get_indic_cde_complete);
	}

}
