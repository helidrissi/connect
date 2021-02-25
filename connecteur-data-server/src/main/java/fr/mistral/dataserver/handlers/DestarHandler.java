package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Destar;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class DestarHandler extends AbstractDataHandler<Destar> implements IDataHandler {

	/**
	 * cobol: LOG-MDTA, MOD-MDTA
	 * db:    log_mdta, mod_mdta
	 */
	private static final String CLE1_MDTA = "CLE1-MDTA";

	/** log_mdta - Code Loigiciel (type cobol: 9(4)) */
	private static final String LOG_MDTA = "LOG-MDTA";
	/** mod_mdta - Code Module (type cobol: 99) */
	private static final String MOD_MDTA = "MOD-MDTA";
	/** nom_mdta - Nom Tarif (type cobol: X(20)) */
	private static final String NOM_MDTA = "NOM-MDTA";
	/** fic_mdta - Nom du Fichier Tarif (type cobol: X(20)) */
	private static final String FIC_MDTA = "FIC-MDTA";
	/** nbr_mdta - Nombre de références par enregistrement (type cobol: 9) */
	private static final String NBR_MDTA = "NBR-MDTA";
	/** p2r_mdta - Posirion 2ème Référence (type cobol: 9(4)) */
	private static final String P2R_MDTA = "P2R-MDTA";
	/** dat_mdta - Date de mise à jour Tarif (type cobol: 9(8)) */
	private static final String DAT_MDTA = "DAT-MDTA";
	/** typ_mdta - Type D'enregistrement  0=Champ de longueur Fixe   1=Champ Longueur Variable (type cobol: 9) */
	private static final String TYP_MDTA = "TYP-MDTA";
	/** sep_mdta - Séparateur (si longueur Variable)   TB=Tab (type cobol: XX) */
	private static final String SEP_MDTA = "SEP-MDTA";
	/** del_mdta - Délimiteur de zone (Exemple: zone alpha encadrée par des guillements) (type cobol: X) */
	private static final String DEL_MDTA = "DEL-MDTA";
	/** p_ref_mdta - Position ou Colonne (type cobol: 999) */
	private static final String P_REF_MDTA = "P-REF-MDTA";
	/** l_ref_mdta - Longueur (type cobol: 99) */
	private static final String L_REF_MDTA = "L-REF-MDTA";
	/** d_ref_mdta - Délimiteur:  0=Sans  1=Avec (type cobol: 9) */
	private static final String D_REF_MDTA = "D-REF-MDTA";
	/** t_ref_mdta - Spécifique Tarif (type cobol: X) */
	private static final String T_REF_MDTA = "T-REF-MDTA";
	/** c_ref_mdta - Spécifique Catalogue (type cobol: X) */
	private static final String C_REF_MDTA = "C-REF-MDTA";
	/** p_ref2_mdta (type cobol: 999) */
	private static final String P_REF2_MDTA = "P-REF2-MDTA";
	/** l_ref2_mdta (type cobol: 99) */
	private static final String L_REF2_MDTA = "L-REF2-MDTA";
	/** d_ref2_mdta (type cobol: 9) */
	private static final String D_REF2_MDTA = "D-REF2-MDTA";
	/** t_ref2_mdta (type cobol: X) */
	private static final String T_REF2_MDTA = "T-REF2-MDTA";
	/** c_ref2_mdta (type cobol: X) */
	private static final String C_REF2_MDTA = "C-REF2-MDTA";
	/** p_des_mdta (type cobol: 999) */
	private static final String P_DES_MDTA = "P-DES-MDTA";
	/** l_des_mdta (type cobol: 99) */
	private static final String L_DES_MDTA = "L-DES-MDTA";
	/** d_des_mdta (type cobol: 9) */
	private static final String D_DES_MDTA = "D-DES-MDTA";
	/** t_des_mdta (type cobol: X) */
	private static final String T_DES_MDTA = "T-DES-MDTA";
	/** c_des_mdta (type cobol: X) */
	private static final String C_DES_MDTA = "C-DES-MDTA";
	/** p_prie_mdta - Position Partie entière (type cobol: 999) */
	private static final String P_PRIE_MDTA = "P-PRIE-MDTA";
	/** l_prie_mdta - Longueur Partie entière (type cobol: 99) */
	private static final String L_PRIE_MDTA = "L-PRIE-MDTA";
	/** d_pri_mdta - Délimiteur / Prix (type cobol: 9) */
	private static final String D_PRI_MDTA = "D-PRI-MDTA";
	/** p_prid_mdta - Position décimales sur prix (type cobol: 999) */
	private static final String P_PRID_MDTA = "P-PRID-MDTA";
	/** l_prid_mdta - Longueur décimale sur prix (type cobol: 99) */
	private static final String L_PRID_MDTA = "L-PRID-MDTA";
	/** t_pri_mdta - Spécifique tarif (type cobol: X) */
	private static final String T_PRI_MDTA = "T-PRI-MDTA";
	/** c_pri_mdta - Spécifique Catalogue (type cobol: X) */
	private static final String C_PRI_MDTA = "C-PRI-MDTA";
	/** p_prie2_mdta (type cobol: 999) */
	private static final String P_PRIE2_MDTA = "P-PRIE2-MDTA";
	/** l_prie2_mdta (type cobol: 99) */
	private static final String L_PRIE2_MDTA = "L-PRIE2-MDTA";
	/** d_pri2_mdta (type cobol: 9) */
	private static final String D_PRI2_MDTA = "D-PRI2-MDTA";
	/** p_prid2_mdta (type cobol: 999) */
	private static final String P_PRID2_MDTA = "P-PRID2-MDTA";
	/** l_prid2_mdta (type cobol: 999) */
	private static final String L_PRID2_MDTA = "L-PRID2-MDTA";
	/** t_pri2_mdta (type cobol: X) */
	private static final String T_PRI2_MDTA = "T-PRI2-MDTA";
	/** c_pri2_mdta (type cobol: X) */
	private static final String C_PRI2_MDTA = "C-PRI2-MDTA";
	/** p_prie3_mdta (type cobol: 999) */
	private static final String P_PRIE3_MDTA = "P-PRIE3-MDTA";
	/** l_prie3_mdta (type cobol: 99) */
	private static final String L_PRIE3_MDTA = "L-PRIE3-MDTA";
	/** d_pri3_mdta (type cobol: 9) */
	private static final String D_PRI3_MDTA = "D-PRI3-MDTA";
	/** p_prid3_mdta (type cobol: 999) */
	private static final String P_PRID3_MDTA = "P-PRID3-MDTA";
	/** l_prid3_mdta (type cobol: 999) */
	private static final String L_PRID3_MDTA = "L-PRID3-MDTA";
	/** t_pri3_mdta (type cobol: X) */
	private static final String T_PRI3_MDTA = "T-PRI3-MDTA";
	/** c_pri3_mdta (type cobol: X) */
	private static final String C_PRI3_MDTA = "C-PRI3-MDTA";
	/** p_rem_mdta (type cobol: 999) */
	private static final String P_REM_MDTA = "P-REM-MDTA";
	/** l_rem_mdta (type cobol: 99) */
	private static final String L_REM_MDTA = "L-REM-MDTA";
	/** d_rem_mdta (type cobol: 9) */
	private static final String D_REM_MDTA = "D-REM-MDTA";
	/** t_rem_mdta - S=Spécial (ex: Volvo voir MTF) (type cobol: X) */
	private static final String T_REM_MDTA = "T-REM-MDTA";
	/** c_rem_mdta (type cobol: X) */
	private static final String C_REM_MDTA = "C-REM-MDTA";
	/** p_rem2_mdta (type cobol: 999) */
	private static final String P_REM2_MDTA = "P-REM2-MDTA";
	/** l_rem2_mdta (type cobol: 99) */
	private static final String L_REM2_MDTA = "L-REM2-MDTA";
	/** d_rem2_mdta (type cobol: 9) */
	private static final String D_REM2_MDTA = "D-REM2-MDTA";
	/** t_rem2_mdta (type cobol: X) */
	private static final String T_REM2_MDTA = "T-REM2-MDTA";
	/** c_rem2_mdta (type cobol: X) */
	private static final String C_REM2_MDTA = "C-REM2-MDTA";
	/** p_uac_mdta (type cobol: 999) */
	private static final String P_UAC_MDTA = "P-UAC-MDTA";
	/** l_uac_mdta (type cobol: 99) */
	private static final String L_UAC_MDTA = "L-UAC-MDTA";
	/** d_uac_mdta (type cobol: 9) */
	private static final String D_UAC_MDTA = "D-UAC-MDTA";
	/** t_uac_mdta (type cobol: X) */
	private static final String T_UAC_MDTA = "T-UAC-MDTA";
	/** c_uac_mdta (type cobol: X) */
	private static final String C_UAC_MDTA = "C-UAC-MDTA";
	/** p_poie_mdta (type cobol: 999) */
	private static final String P_POIE_MDTA = "P-POIE-MDTA";
	/** l_poie_mdta (type cobol: 99) */
	private static final String L_POIE_MDTA = "L-POIE-MDTA";
	/** d_poi_mdta (type cobol: 9) */
	private static final String D_POI_MDTA = "D-POI-MDTA";
	/** p_poid_mdta (type cobol: 999) */
	private static final String P_POID_MDTA = "P-POID-MDTA";
	/** l_poid_mdta (type cobol: 99) */
	private static final String L_POID_MDTA = "L-POID-MDTA";
	/** t_poi_mdta (type cobol: X) */
	private static final String T_POI_MDTA = "T-POI-MDTA";
	/** c_poi_mdta (type cobol: X) */
	private static final String C_POI_MDTA = "C-POI-MDTA";
	/** p_rer_mdta (type cobol: 999) */
	private static final String P_RER_MDTA = "P-RER-MDTA";
	/** l_rer_mdta (type cobol: 99) */
	private static final String L_RER_MDTA = "L-RER-MDTA";
	/** d_rer_mdta (type cobol: 9) */
	private static final String D_RER_MDTA = "D-RER-MDTA";
	/** t_rer_mdta (type cobol: X) */
	private static final String T_RER_MDTA = "T-RER-MDTA";
	/** c_rer_mdta (type cobol: X) */
	private static final String C_RER_MDTA = "C-RER-MDTA";
	/** p_gra_mdta (type cobol: 999) */
	private static final String P_GRA_MDTA = "P-GRA-MDTA";
	/** l_gra_mdta (type cobol: 99) */
	private static final String L_GRA_MDTA = "L-GRA-MDTA";
	/** d_gra_mdta (type cobol: 9) */
	private static final String D_GRA_MDTA = "D-GRA-MDTA";
	/** t_gra_mdta (type cobol: X) */
	private static final String T_GRA_MDTA = "T-GRA-MDTA";
	/** c_gra_mdta (type cobol: X) */
	private static final String C_GRA_MDTA = "C-GRA-MDTA";
	/** p_fam_mdta (type cobol: 999) */
	private static final String P_FAM_MDTA = "P-FAM-MDTA";
	/** l_fam_mdta (type cobol: 99) */
	private static final String L_FAM_MDTA = "L-FAM-MDTA";
	/** d_fam_mdta (type cobol: 9) */
	private static final String D_FAM_MDTA = "D-FAM-MDTA";
	/** t_fam_mdta (type cobol: X) */
	private static final String T_FAM_MDTA = "T-FAM-MDTA";
	/** c_fam_mdta (type cobol: X) */
	private static final String C_FAM_MDTA = "C-FAM-MDTA";
	/** p_mar_mdta (type cobol: 999) */
	private static final String P_MAR_MDTA = "P-MAR-MDTA";
	/** l_mar_mdta (type cobol: 99) */
	private static final String L_MAR_MDTA = "L-MAR-MDTA";
	/** d_mar_mdta (type cobol: 9) */
	private static final String D_MAR_MDTA = "D-MAR-MDTA";
	/** t_mar_mdta (type cobol: X) */
	private static final String T_MAR_MDTA = "T-MAR-MDTA";
	/** c_mar_mdta (type cobol: X) */
	private static final String C_MAR_MDTA = "C-MAR-MDTA";
	/** p_ren_mdta (type cobol: 999) */
	private static final String P_REN_MDTA = "P-REN-MDTA";
	/** l_ren_mdta (type cobol: 99) */
	private static final String L_REN_MDTA = "L-REN-MDTA";
	/** d_ren_mdta (type cobol: 9) */
	private static final String D_REN_MDTA = "D-REN-MDTA";
	/** t_ren_mdta (type cobol: X) */
	private static final String T_REN_MDTA = "T-REN-MDTA";
	/** c_ren_mdta (type cobol: X) */
	private static final String C_REN_MDTA = "C-REN-MDTA";
	/** p_min_mdta (type cobol: 999) */
	private static final String P_MIN_MDTA = "P-MIN-MDTA";
	/** l_min_mdta (type cobol: 99) */
	private static final String L_MIN_MDTA = "L-MIN-MDTA";
	/** d_min_mdta (type cobol: 9) */
	private static final String D_MIN_MDTA = "D-MIN-MDTA";
	/** t_min_mdta (type cobol: X) */
	private static final String T_MIN_MDTA = "T-MIN-MDTA";
	/** c_min_mdta (type cobol: X) */
	private static final String C_MIN_MDTA = "C-MIN-MDTA";
	/** n_spe_mdta (type cobol: X(20)) */
	private static final String N_SPE_MDTA = "N-SPE-MDTA";
	/** p_spe_mdta (type cobol: 999) */
	private static final String P_SPE_MDTA = "P-SPE-MDTA";
	/** l_spe_mdta (type cobol: 99) */
	private static final String L_SPE_MDTA = "L-SPE-MDTA";
	/** d_spe_mdta (type cobol: 9) */
	private static final String D_SPE_MDTA = "D-SPE-MDTA";
	/** t_spe_mdta (type cobol: X) */
	private static final String T_SPE_MDTA = "T-SPE-MDTA";
	/** c_spe_mdta (type cobol: X) */
	private static final String C_SPE_MDTA = "C-SPE-MDTA";
	/** com_mdta - Commentaire (type cobol: X(400)) */
	private static final String COM_MDTA = "COM-MDTA";
	/** ide_mdta (type cobol: X(4)) */
	private static final String IDE_MDTA = "IDE-MDTA";
	/** p_gcod_mdta (type cobol: 999) */
	private static final String P_GCOD_MDTA = "P-GCOD-MDTA";
	/** l_gcod_mdta (type cobol: 99) */
	private static final String L_GCOD_MDTA = "L-GCOD-MDTA";
	/** d_gcod_mdta (type cobol: 9) */
	private static final String D_GCOD_MDTA = "D-GCOD-MDTA";
	/** t_gcod_mdta (type cobol: X) */
	private static final String T_GCOD_MDTA = "T-GCOD-MDTA";
	/** c_gcod_mdta (type cobol: X) */
	private static final String C_GCOD_MDTA = "C-GCOD-MDTA";
	/** p_pay_mdta (type cobol: 999) */
	private static final String P_PAY_MDTA = "P-PAY-MDTA";
	/** l_pay_mdta (type cobol: 99) */
	private static final String L_PAY_MDTA = "L-PAY-MDTA";
	/** d_pay_mdta (type cobol: 9) */
	private static final String D_PAY_MDTA = "D-PAY-MDTA";
	/** t_pay_mdta (type cobol: X) */
	private static final String T_PAY_MDTA = "T-PAY-MDTA";
	/** c_pay_mdta (type cobol: X) */
	private static final String C_PAY_MDTA = "C-PAY-MDTA";
	/** p_tva_mdta (type cobol: 999) */
	private static final String P_TVA_MDTA = "P-TVA-MDTA";
	/** l_tva_mdta (type cobol: 99) */
	private static final String L_TVA_MDTA = "L-TVA-MDTA";
	/** d_tva_mdta (type cobol: 9) */
	private static final String D_TVA_MDTA = "D-TVA-MDTA";
	/** t_tva_mdta (type cobol: X) */
	private static final String T_TVA_MDTA = "T-TVA-MDTA";
	/** c_tva_mdta (type cobol: X) */
	private static final String C_TVA_MDTA = "C-TVA-MDTA";
	/** p_rfi_mdta (type cobol: 999) */
	private static final String P_RFI_MDTA = "P-RFI-MDTA";
	/** l_rfi_mdta (type cobol: 99) */
	private static final String L_RFI_MDTA = "L-RFI-MDTA";
	/** d_rfi_mdta (type cobol: 9) */
	private static final String D_RFI_MDTA = "D-RFI-MDTA";
	/** t_rfi_mdta (type cobol: X) */
	private static final String T_RFI_MDTA = "T-RFI-MDTA";
	/** c_rfi_mdta (type cobol: X) */
	private static final String C_RFI_MDTA = "C-RFI-MDTA";
	/** p_coee_mdta (type cobol: 999) */
	private static final String P_COEE_MDTA = "P-COEE-MDTA";
	/** l_coee_mdta (type cobol: 99) */
	private static final String L_COEE_MDTA = "L-COEE-MDTA";
	/** d_coe_mdta (type cobol: 9) */
	private static final String D_COE_MDTA = "D-COE-MDTA";
	/** p_coed_mdta - Position décimales sur prix (type cobol: 999) */
	private static final String P_COED_MDTA = "P-COED-MDTA";
	/** l_coed_mdta - Longueur décimale sur prix (type cobol: 99) */
	private static final String L_COED_MDTA = "L-COED-MDTA";

	public DestarHandler() throws IOException {
		super("mx/fd/MXDESTAR.fd", "MXDESTAR", fr.mistral.dataserver.model.mx.Destar.class,
				"CLE1-MDTA",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MDTA, ImmutableList.<String>builder().add(LOG_MDTA, MOD_MDTA).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Destar>>builder()
					.put(LOG_MDTA, new EntityFieldMapper<>(LOG_MDTA, "log_mdta", Destar::get_log_mdta))
					.put(MOD_MDTA, new EntityFieldMapper<>(MOD_MDTA, "mod_mdta", Destar::get_mod_mdta))
					.build());
	}

	@Override
	public String getName() {
		return "MXDESTAR";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Destar entity) {
		integerCobolToJava(line.getFieldValue(LOG_MDTA), entity::set_log_mdta);
		integerCobolToJava(line.getFieldValue(MOD_MDTA), entity::set_mod_mdta);
		stringCobolToJava(line.getFieldValue(NOM_MDTA), entity::set_nom_mdta);
		stringCobolToJava(line.getFieldValue(FIC_MDTA), entity::set_fic_mdta);
		integerCobolToJava(line.getFieldValue(NBR_MDTA), entity::set_nbr_mdta);
		integerCobolToJava(line.getFieldValue(P2R_MDTA), entity::set_p2r_mdta);
		dateCobolToJava(line.getFieldValue(DAT_MDTA), entity::set_dat_mdta);
		integerCobolToJava(line.getFieldValue(TYP_MDTA), entity::set_typ_mdta);
		stringCobolToJava(line.getFieldValue(SEP_MDTA), entity::set_sep_mdta);
		stringCobolToJava(line.getFieldValue(DEL_MDTA), entity::set_del_mdta);
		integerCobolToJava(line.getFieldValue(P_REF_MDTA), entity::set_p_ref_mdta);
		integerCobolToJava(line.getFieldValue(L_REF_MDTA), entity::set_l_ref_mdta);
		integerCobolToJava(line.getFieldValue(D_REF_MDTA), entity::set_d_ref_mdta);
		stringCobolToJava(line.getFieldValue(T_REF_MDTA), entity::set_t_ref_mdta);
		stringCobolToJava(line.getFieldValue(C_REF_MDTA), entity::set_c_ref_mdta);
		integerCobolToJava(line.getFieldValue(P_REF2_MDTA), entity::set_p_ref2_mdta);
		integerCobolToJava(line.getFieldValue(L_REF2_MDTA), entity::set_l_ref2_mdta);
		integerCobolToJava(line.getFieldValue(D_REF2_MDTA), entity::set_d_ref2_mdta);
		stringCobolToJava(line.getFieldValue(T_REF2_MDTA), entity::set_t_ref2_mdta);
		stringCobolToJava(line.getFieldValue(C_REF2_MDTA), entity::set_c_ref2_mdta);
		integerCobolToJava(line.getFieldValue(P_DES_MDTA), entity::set_p_des_mdta);
		integerCobolToJava(line.getFieldValue(L_DES_MDTA), entity::set_l_des_mdta);
		integerCobolToJava(line.getFieldValue(D_DES_MDTA), entity::set_d_des_mdta);
		stringCobolToJava(line.getFieldValue(T_DES_MDTA), entity::set_t_des_mdta);
		stringCobolToJava(line.getFieldValue(C_DES_MDTA), entity::set_c_des_mdta);
		integerCobolToJava(line.getFieldValue(P_PRIE_MDTA), entity::set_p_prie_mdta);
		integerCobolToJava(line.getFieldValue(L_PRIE_MDTA), entity::set_l_prie_mdta);
		integerCobolToJava(line.getFieldValue(D_PRI_MDTA), entity::set_d_pri_mdta);
		integerCobolToJava(line.getFieldValue(P_PRID_MDTA), entity::set_p_prid_mdta);
		integerCobolToJava(line.getFieldValue(L_PRID_MDTA), entity::set_l_prid_mdta);
		stringCobolToJava(line.getFieldValue(T_PRI_MDTA), entity::set_t_pri_mdta);
		stringCobolToJava(line.getFieldValue(C_PRI_MDTA), entity::set_c_pri_mdta);
		integerCobolToJava(line.getFieldValue(P_PRIE2_MDTA), entity::set_p_prie2_mdta);
		integerCobolToJava(line.getFieldValue(L_PRIE2_MDTA), entity::set_l_prie2_mdta);
		integerCobolToJava(line.getFieldValue(D_PRI2_MDTA), entity::set_d_pri2_mdta);
		integerCobolToJava(line.getFieldValue(P_PRID2_MDTA), entity::set_p_prid2_mdta);
		integerCobolToJava(line.getFieldValue(L_PRID2_MDTA), entity::set_l_prid2_mdta);
		stringCobolToJava(line.getFieldValue(T_PRI2_MDTA), entity::set_t_pri2_mdta);
		stringCobolToJava(line.getFieldValue(C_PRI2_MDTA), entity::set_c_pri2_mdta);
		integerCobolToJava(line.getFieldValue(P_PRIE3_MDTA), entity::set_p_prie3_mdta);
		integerCobolToJava(line.getFieldValue(L_PRIE3_MDTA), entity::set_l_prie3_mdta);
		integerCobolToJava(line.getFieldValue(D_PRI3_MDTA), entity::set_d_pri3_mdta);
		integerCobolToJava(line.getFieldValue(P_PRID3_MDTA), entity::set_p_prid3_mdta);
		integerCobolToJava(line.getFieldValue(L_PRID3_MDTA), entity::set_l_prid3_mdta);
		stringCobolToJava(line.getFieldValue(T_PRI3_MDTA), entity::set_t_pri3_mdta);
		stringCobolToJava(line.getFieldValue(C_PRI3_MDTA), entity::set_c_pri3_mdta);
		integerCobolToJava(line.getFieldValue(P_REM_MDTA), entity::set_p_rem_mdta);
		integerCobolToJava(line.getFieldValue(L_REM_MDTA), entity::set_l_rem_mdta);
		integerCobolToJava(line.getFieldValue(D_REM_MDTA), entity::set_d_rem_mdta);
		stringCobolToJava(line.getFieldValue(T_REM_MDTA), entity::set_t_rem_mdta);
		stringCobolToJava(line.getFieldValue(C_REM_MDTA), entity::set_c_rem_mdta);
		integerCobolToJava(line.getFieldValue(P_REM2_MDTA), entity::set_p_rem2_mdta);
		integerCobolToJava(line.getFieldValue(L_REM2_MDTA), entity::set_l_rem2_mdta);
		integerCobolToJava(line.getFieldValue(D_REM2_MDTA), entity::set_d_rem2_mdta);
		stringCobolToJava(line.getFieldValue(T_REM2_MDTA), entity::set_t_rem2_mdta);
		stringCobolToJava(line.getFieldValue(C_REM2_MDTA), entity::set_c_rem2_mdta);
		integerCobolToJava(line.getFieldValue(P_UAC_MDTA), entity::set_p_uac_mdta);
		integerCobolToJava(line.getFieldValue(L_UAC_MDTA), entity::set_l_uac_mdta);
		integerCobolToJava(line.getFieldValue(D_UAC_MDTA), entity::set_d_uac_mdta);
		stringCobolToJava(line.getFieldValue(T_UAC_MDTA), entity::set_t_uac_mdta);
		stringCobolToJava(line.getFieldValue(C_UAC_MDTA), entity::set_c_uac_mdta);
		integerCobolToJava(line.getFieldValue(P_POIE_MDTA), entity::set_p_poie_mdta);
		integerCobolToJava(line.getFieldValue(L_POIE_MDTA), entity::set_l_poie_mdta);
		integerCobolToJava(line.getFieldValue(D_POI_MDTA), entity::set_d_poi_mdta);
		integerCobolToJava(line.getFieldValue(P_POID_MDTA), entity::set_p_poid_mdta);
		integerCobolToJava(line.getFieldValue(L_POID_MDTA), entity::set_l_poid_mdta);
		stringCobolToJava(line.getFieldValue(T_POI_MDTA), entity::set_t_poi_mdta);
		stringCobolToJava(line.getFieldValue(C_POI_MDTA), entity::set_c_poi_mdta);
		integerCobolToJava(line.getFieldValue(P_RER_MDTA), entity::set_p_rer_mdta);
		integerCobolToJava(line.getFieldValue(L_RER_MDTA), entity::set_l_rer_mdta);
		integerCobolToJava(line.getFieldValue(D_RER_MDTA), entity::set_d_rer_mdta);
		stringCobolToJava(line.getFieldValue(T_RER_MDTA), entity::set_t_rer_mdta);
		stringCobolToJava(line.getFieldValue(C_RER_MDTA), entity::set_c_rer_mdta);
		integerCobolToJava(line.getFieldValue(P_GRA_MDTA), entity::set_p_gra_mdta);
		integerCobolToJava(line.getFieldValue(L_GRA_MDTA), entity::set_l_gra_mdta);
		integerCobolToJava(line.getFieldValue(D_GRA_MDTA), entity::set_d_gra_mdta);
		stringCobolToJava(line.getFieldValue(T_GRA_MDTA), entity::set_t_gra_mdta);
		stringCobolToJava(line.getFieldValue(C_GRA_MDTA), entity::set_c_gra_mdta);
		integerCobolToJava(line.getFieldValue(P_FAM_MDTA), entity::set_p_fam_mdta);
		integerCobolToJava(line.getFieldValue(L_FAM_MDTA), entity::set_l_fam_mdta);
		integerCobolToJava(line.getFieldValue(D_FAM_MDTA), entity::set_d_fam_mdta);
		stringCobolToJava(line.getFieldValue(T_FAM_MDTA), entity::set_t_fam_mdta);
		stringCobolToJava(line.getFieldValue(C_FAM_MDTA), entity::set_c_fam_mdta);
		integerCobolToJava(line.getFieldValue(P_MAR_MDTA), entity::set_p_mar_mdta);
		integerCobolToJava(line.getFieldValue(L_MAR_MDTA), entity::set_l_mar_mdta);
		integerCobolToJava(line.getFieldValue(D_MAR_MDTA), entity::set_d_mar_mdta);
		stringCobolToJava(line.getFieldValue(T_MAR_MDTA), entity::set_t_mar_mdta);
		stringCobolToJava(line.getFieldValue(C_MAR_MDTA), entity::set_c_mar_mdta);
		integerCobolToJava(line.getFieldValue(P_REN_MDTA), entity::set_p_ren_mdta);
		integerCobolToJava(line.getFieldValue(L_REN_MDTA), entity::set_l_ren_mdta);
		integerCobolToJava(line.getFieldValue(D_REN_MDTA), entity::set_d_ren_mdta);
		stringCobolToJava(line.getFieldValue(T_REN_MDTA), entity::set_t_ren_mdta);
		stringCobolToJava(line.getFieldValue(C_REN_MDTA), entity::set_c_ren_mdta);
		integerCobolToJava(line.getFieldValue(P_MIN_MDTA), entity::set_p_min_mdta);
		integerCobolToJava(line.getFieldValue(L_MIN_MDTA), entity::set_l_min_mdta);
		integerCobolToJava(line.getFieldValue(D_MIN_MDTA), entity::set_d_min_mdta);
		stringCobolToJava(line.getFieldValue(T_MIN_MDTA), entity::set_t_min_mdta);
		stringCobolToJava(line.getFieldValue(C_MIN_MDTA), entity::set_c_min_mdta);
		stringCobolToJava(line.getFieldValue(N_SPE_MDTA + " (0)"), entity::set_n_spe_mdta_1);
		stringCobolToJava(line.getFieldValue(N_SPE_MDTA + " (1)"), entity::set_n_spe_mdta_2);
		stringCobolToJava(line.getFieldValue(N_SPE_MDTA + " (2)"), entity::set_n_spe_mdta_3);
		stringCobolToJava(line.getFieldValue(N_SPE_MDTA + " (3)"), entity::set_n_spe_mdta_4);
		stringCobolToJava(line.getFieldValue(N_SPE_MDTA + " (4)"), entity::set_n_spe_mdta_5);
		integerCobolToJava(line.getFieldValue(P_SPE_MDTA + " (0)"), entity::set_p_spe_mdta_1);
		integerCobolToJava(line.getFieldValue(P_SPE_MDTA + " (1)"), entity::set_p_spe_mdta_2);
		integerCobolToJava(line.getFieldValue(P_SPE_MDTA + " (2)"), entity::set_p_spe_mdta_3);
		integerCobolToJava(line.getFieldValue(P_SPE_MDTA + " (3)"), entity::set_p_spe_mdta_4);
		integerCobolToJava(line.getFieldValue(P_SPE_MDTA + " (4)"), entity::set_p_spe_mdta_5);
		integerCobolToJava(line.getFieldValue(L_SPE_MDTA + " (0)"), entity::set_l_spe_mdta_1);
		integerCobolToJava(line.getFieldValue(L_SPE_MDTA + " (1)"), entity::set_l_spe_mdta_2);
		integerCobolToJava(line.getFieldValue(L_SPE_MDTA + " (2)"), entity::set_l_spe_mdta_3);
		integerCobolToJava(line.getFieldValue(L_SPE_MDTA + " (3)"), entity::set_l_spe_mdta_4);
		integerCobolToJava(line.getFieldValue(L_SPE_MDTA + " (4)"), entity::set_l_spe_mdta_5);
		integerCobolToJava(line.getFieldValue(D_SPE_MDTA + " (0)"), entity::set_d_spe_mdta_1);
		integerCobolToJava(line.getFieldValue(D_SPE_MDTA + " (1)"), entity::set_d_spe_mdta_2);
		integerCobolToJava(line.getFieldValue(D_SPE_MDTA + " (2)"), entity::set_d_spe_mdta_3);
		integerCobolToJava(line.getFieldValue(D_SPE_MDTA + " (3)"), entity::set_d_spe_mdta_4);
		integerCobolToJava(line.getFieldValue(D_SPE_MDTA + " (4)"), entity::set_d_spe_mdta_5);
		stringCobolToJava(line.getFieldValue(T_SPE_MDTA + " (0)"), entity::set_t_spe_mdta_1);
		stringCobolToJava(line.getFieldValue(T_SPE_MDTA + " (1)"), entity::set_t_spe_mdta_2);
		stringCobolToJava(line.getFieldValue(T_SPE_MDTA + " (2)"), entity::set_t_spe_mdta_3);
		stringCobolToJava(line.getFieldValue(T_SPE_MDTA + " (3)"), entity::set_t_spe_mdta_4);
		stringCobolToJava(line.getFieldValue(T_SPE_MDTA + " (4)"), entity::set_t_spe_mdta_5);
		stringCobolToJava(line.getFieldValue(C_SPE_MDTA + " (0)"), entity::set_c_spe_mdta_1);
		stringCobolToJava(line.getFieldValue(C_SPE_MDTA + " (1)"), entity::set_c_spe_mdta_2);
		stringCobolToJava(line.getFieldValue(C_SPE_MDTA + " (2)"), entity::set_c_spe_mdta_3);
		stringCobolToJava(line.getFieldValue(C_SPE_MDTA + " (3)"), entity::set_c_spe_mdta_4);
		stringCobolToJava(line.getFieldValue(C_SPE_MDTA + " (4)"), entity::set_c_spe_mdta_5);
		stringCobolToJava(line.getFieldValue(COM_MDTA), entity::set_com_mdta);
		stringCobolToJava(line.getFieldValue(IDE_MDTA), entity::set_ide_mdta);
		integerCobolToJava(line.getFieldValue(P_GCOD_MDTA), entity::set_p_gcod_mdta);
		integerCobolToJava(line.getFieldValue(L_GCOD_MDTA), entity::set_l_gcod_mdta);
		integerCobolToJava(line.getFieldValue(D_GCOD_MDTA), entity::set_d_gcod_mdta);
		stringCobolToJava(line.getFieldValue(T_GCOD_MDTA), entity::set_t_gcod_mdta);
		stringCobolToJava(line.getFieldValue(C_GCOD_MDTA), entity::set_c_gcod_mdta);
		integerCobolToJava(line.getFieldValue(P_PAY_MDTA), entity::set_p_pay_mdta);
		integerCobolToJava(line.getFieldValue(L_PAY_MDTA), entity::set_l_pay_mdta);
		integerCobolToJava(line.getFieldValue(D_PAY_MDTA), entity::set_d_pay_mdta);
		stringCobolToJava(line.getFieldValue(T_PAY_MDTA), entity::set_t_pay_mdta);
		stringCobolToJava(line.getFieldValue(C_PAY_MDTA), entity::set_c_pay_mdta);
		integerCobolToJava(line.getFieldValue(P_TVA_MDTA), entity::set_p_tva_mdta);
		integerCobolToJava(line.getFieldValue(L_TVA_MDTA), entity::set_l_tva_mdta);
		integerCobolToJava(line.getFieldValue(D_TVA_MDTA), entity::set_d_tva_mdta);
		stringCobolToJava(line.getFieldValue(T_TVA_MDTA), entity::set_t_tva_mdta);
		stringCobolToJava(line.getFieldValue(C_TVA_MDTA), entity::set_c_tva_mdta);
		integerCobolToJava(line.getFieldValue(P_RFI_MDTA), entity::set_p_rfi_mdta);
		integerCobolToJava(line.getFieldValue(L_RFI_MDTA), entity::set_l_rfi_mdta);
		integerCobolToJava(line.getFieldValue(D_RFI_MDTA), entity::set_d_rfi_mdta);
		stringCobolToJava(line.getFieldValue(T_RFI_MDTA), entity::set_t_rfi_mdta);
		stringCobolToJava(line.getFieldValue(C_RFI_MDTA), entity::set_c_rfi_mdta);
		integerCobolToJava(line.getFieldValue(P_COEE_MDTA), entity::set_p_coee_mdta);
		integerCobolToJava(line.getFieldValue(L_COEE_MDTA), entity::set_l_coee_mdta);
		integerCobolToJava(line.getFieldValue(D_COE_MDTA), entity::set_d_coe_mdta);
		integerCobolToJava(line.getFieldValue(P_COED_MDTA), entity::set_p_coed_mdta);
		integerCobolToJava(line.getFieldValue(L_COED_MDTA), entity::set_l_coed_mdta);
	}

	@Override
	protected void mapJavaToCobol(Destar entity, AbstractLine line) {
		integerJavaToCobol(line.getFieldValue(LOG_MDTA), entity::get_log_mdta);
		integerJavaToCobol(line.getFieldValue(MOD_MDTA), entity::get_mod_mdta);
		stringJavaToCobol(line.getFieldValue(NOM_MDTA), entity::get_nom_mdta);
		stringJavaToCobol(line.getFieldValue(FIC_MDTA), entity::get_fic_mdta);
		integerJavaToCobol(line.getFieldValue(NBR_MDTA), entity::get_nbr_mdta);
		integerJavaToCobol(line.getFieldValue(P2R_MDTA), entity::get_p2r_mdta);
		dateJavaToCobol(line.getFieldValue(DAT_MDTA), entity::get_dat_mdta);
		integerJavaToCobol(line.getFieldValue(TYP_MDTA), entity::get_typ_mdta);
		stringJavaToCobol(line.getFieldValue(SEP_MDTA), entity::get_sep_mdta);
		stringJavaToCobol(line.getFieldValue(DEL_MDTA), entity::get_del_mdta);
		integerJavaToCobol(line.getFieldValue(P_REF_MDTA), entity::get_p_ref_mdta);
		integerJavaToCobol(line.getFieldValue(L_REF_MDTA), entity::get_l_ref_mdta);
		integerJavaToCobol(line.getFieldValue(D_REF_MDTA), entity::get_d_ref_mdta);
		stringJavaToCobol(line.getFieldValue(T_REF_MDTA), entity::get_t_ref_mdta);
		stringJavaToCobol(line.getFieldValue(C_REF_MDTA), entity::get_c_ref_mdta);
		integerJavaToCobol(line.getFieldValue(P_REF2_MDTA), entity::get_p_ref2_mdta);
		integerJavaToCobol(line.getFieldValue(L_REF2_MDTA), entity::get_l_ref2_mdta);
		integerJavaToCobol(line.getFieldValue(D_REF2_MDTA), entity::get_d_ref2_mdta);
		stringJavaToCobol(line.getFieldValue(T_REF2_MDTA), entity::get_t_ref2_mdta);
		stringJavaToCobol(line.getFieldValue(C_REF2_MDTA), entity::get_c_ref2_mdta);
		integerJavaToCobol(line.getFieldValue(P_DES_MDTA), entity::get_p_des_mdta);
		integerJavaToCobol(line.getFieldValue(L_DES_MDTA), entity::get_l_des_mdta);
		integerJavaToCobol(line.getFieldValue(D_DES_MDTA), entity::get_d_des_mdta);
		stringJavaToCobol(line.getFieldValue(T_DES_MDTA), entity::get_t_des_mdta);
		stringJavaToCobol(line.getFieldValue(C_DES_MDTA), entity::get_c_des_mdta);
		integerJavaToCobol(line.getFieldValue(P_PRIE_MDTA), entity::get_p_prie_mdta);
		integerJavaToCobol(line.getFieldValue(L_PRIE_MDTA), entity::get_l_prie_mdta);
		integerJavaToCobol(line.getFieldValue(D_PRI_MDTA), entity::get_d_pri_mdta);
		integerJavaToCobol(line.getFieldValue(P_PRID_MDTA), entity::get_p_prid_mdta);
		integerJavaToCobol(line.getFieldValue(L_PRID_MDTA), entity::get_l_prid_mdta);
		stringJavaToCobol(line.getFieldValue(T_PRI_MDTA), entity::get_t_pri_mdta);
		stringJavaToCobol(line.getFieldValue(C_PRI_MDTA), entity::get_c_pri_mdta);
		integerJavaToCobol(line.getFieldValue(P_PRIE2_MDTA), entity::get_p_prie2_mdta);
		integerJavaToCobol(line.getFieldValue(L_PRIE2_MDTA), entity::get_l_prie2_mdta);
		integerJavaToCobol(line.getFieldValue(D_PRI2_MDTA), entity::get_d_pri2_mdta);
		integerJavaToCobol(line.getFieldValue(P_PRID2_MDTA), entity::get_p_prid2_mdta);
		integerJavaToCobol(line.getFieldValue(L_PRID2_MDTA), entity::get_l_prid2_mdta);
		stringJavaToCobol(line.getFieldValue(T_PRI2_MDTA), entity::get_t_pri2_mdta);
		stringJavaToCobol(line.getFieldValue(C_PRI2_MDTA), entity::get_c_pri2_mdta);
		integerJavaToCobol(line.getFieldValue(P_PRIE3_MDTA), entity::get_p_prie3_mdta);
		integerJavaToCobol(line.getFieldValue(L_PRIE3_MDTA), entity::get_l_prie3_mdta);
		integerJavaToCobol(line.getFieldValue(D_PRI3_MDTA), entity::get_d_pri3_mdta);
		integerJavaToCobol(line.getFieldValue(P_PRID3_MDTA), entity::get_p_prid3_mdta);
		integerJavaToCobol(line.getFieldValue(L_PRID3_MDTA), entity::get_l_prid3_mdta);
		stringJavaToCobol(line.getFieldValue(T_PRI3_MDTA), entity::get_t_pri3_mdta);
		stringJavaToCobol(line.getFieldValue(C_PRI3_MDTA), entity::get_c_pri3_mdta);
		integerJavaToCobol(line.getFieldValue(P_REM_MDTA), entity::get_p_rem_mdta);
		integerJavaToCobol(line.getFieldValue(L_REM_MDTA), entity::get_l_rem_mdta);
		integerJavaToCobol(line.getFieldValue(D_REM_MDTA), entity::get_d_rem_mdta);
		stringJavaToCobol(line.getFieldValue(T_REM_MDTA), entity::get_t_rem_mdta);
		stringJavaToCobol(line.getFieldValue(C_REM_MDTA), entity::get_c_rem_mdta);
		integerJavaToCobol(line.getFieldValue(P_REM2_MDTA), entity::get_p_rem2_mdta);
		integerJavaToCobol(line.getFieldValue(L_REM2_MDTA), entity::get_l_rem2_mdta);
		integerJavaToCobol(line.getFieldValue(D_REM2_MDTA), entity::get_d_rem2_mdta);
		stringJavaToCobol(line.getFieldValue(T_REM2_MDTA), entity::get_t_rem2_mdta);
		stringJavaToCobol(line.getFieldValue(C_REM2_MDTA), entity::get_c_rem2_mdta);
		integerJavaToCobol(line.getFieldValue(P_UAC_MDTA), entity::get_p_uac_mdta);
		integerJavaToCobol(line.getFieldValue(L_UAC_MDTA), entity::get_l_uac_mdta);
		integerJavaToCobol(line.getFieldValue(D_UAC_MDTA), entity::get_d_uac_mdta);
		stringJavaToCobol(line.getFieldValue(T_UAC_MDTA), entity::get_t_uac_mdta);
		stringJavaToCobol(line.getFieldValue(C_UAC_MDTA), entity::get_c_uac_mdta);
		integerJavaToCobol(line.getFieldValue(P_POIE_MDTA), entity::get_p_poie_mdta);
		integerJavaToCobol(line.getFieldValue(L_POIE_MDTA), entity::get_l_poie_mdta);
		integerJavaToCobol(line.getFieldValue(D_POI_MDTA), entity::get_d_poi_mdta);
		integerJavaToCobol(line.getFieldValue(P_POID_MDTA), entity::get_p_poid_mdta);
		integerJavaToCobol(line.getFieldValue(L_POID_MDTA), entity::get_l_poid_mdta);
		stringJavaToCobol(line.getFieldValue(T_POI_MDTA), entity::get_t_poi_mdta);
		stringJavaToCobol(line.getFieldValue(C_POI_MDTA), entity::get_c_poi_mdta);
		integerJavaToCobol(line.getFieldValue(P_RER_MDTA), entity::get_p_rer_mdta);
		integerJavaToCobol(line.getFieldValue(L_RER_MDTA), entity::get_l_rer_mdta);
		integerJavaToCobol(line.getFieldValue(D_RER_MDTA), entity::get_d_rer_mdta);
		stringJavaToCobol(line.getFieldValue(T_RER_MDTA), entity::get_t_rer_mdta);
		stringJavaToCobol(line.getFieldValue(C_RER_MDTA), entity::get_c_rer_mdta);
		integerJavaToCobol(line.getFieldValue(P_GRA_MDTA), entity::get_p_gra_mdta);
		integerJavaToCobol(line.getFieldValue(L_GRA_MDTA), entity::get_l_gra_mdta);
		integerJavaToCobol(line.getFieldValue(D_GRA_MDTA), entity::get_d_gra_mdta);
		stringJavaToCobol(line.getFieldValue(T_GRA_MDTA), entity::get_t_gra_mdta);
		stringJavaToCobol(line.getFieldValue(C_GRA_MDTA), entity::get_c_gra_mdta);
		integerJavaToCobol(line.getFieldValue(P_FAM_MDTA), entity::get_p_fam_mdta);
		integerJavaToCobol(line.getFieldValue(L_FAM_MDTA), entity::get_l_fam_mdta);
		integerJavaToCobol(line.getFieldValue(D_FAM_MDTA), entity::get_d_fam_mdta);
		stringJavaToCobol(line.getFieldValue(T_FAM_MDTA), entity::get_t_fam_mdta);
		stringJavaToCobol(line.getFieldValue(C_FAM_MDTA), entity::get_c_fam_mdta);
		integerJavaToCobol(line.getFieldValue(P_MAR_MDTA), entity::get_p_mar_mdta);
		integerJavaToCobol(line.getFieldValue(L_MAR_MDTA), entity::get_l_mar_mdta);
		integerJavaToCobol(line.getFieldValue(D_MAR_MDTA), entity::get_d_mar_mdta);
		stringJavaToCobol(line.getFieldValue(T_MAR_MDTA), entity::get_t_mar_mdta);
		stringJavaToCobol(line.getFieldValue(C_MAR_MDTA), entity::get_c_mar_mdta);
		integerJavaToCobol(line.getFieldValue(P_REN_MDTA), entity::get_p_ren_mdta);
		integerJavaToCobol(line.getFieldValue(L_REN_MDTA), entity::get_l_ren_mdta);
		integerJavaToCobol(line.getFieldValue(D_REN_MDTA), entity::get_d_ren_mdta);
		stringJavaToCobol(line.getFieldValue(T_REN_MDTA), entity::get_t_ren_mdta);
		stringJavaToCobol(line.getFieldValue(C_REN_MDTA), entity::get_c_ren_mdta);
		integerJavaToCobol(line.getFieldValue(P_MIN_MDTA), entity::get_p_min_mdta);
		integerJavaToCobol(line.getFieldValue(L_MIN_MDTA), entity::get_l_min_mdta);
		integerJavaToCobol(line.getFieldValue(D_MIN_MDTA), entity::get_d_min_mdta);
		stringJavaToCobol(line.getFieldValue(T_MIN_MDTA), entity::get_t_min_mdta);
		stringJavaToCobol(line.getFieldValue(C_MIN_MDTA), entity::get_c_min_mdta);
		stringJavaToCobol(line.getFieldValue(N_SPE_MDTA + " (0)"), entity::get_n_spe_mdta_1);
		stringJavaToCobol(line.getFieldValue(N_SPE_MDTA + " (1)"), entity::get_n_spe_mdta_2);
		stringJavaToCobol(line.getFieldValue(N_SPE_MDTA + " (2)"), entity::get_n_spe_mdta_3);
		stringJavaToCobol(line.getFieldValue(N_SPE_MDTA + " (3)"), entity::get_n_spe_mdta_4);
		stringJavaToCobol(line.getFieldValue(N_SPE_MDTA + " (4)"), entity::get_n_spe_mdta_5);
		integerJavaToCobol(line.getFieldValue(P_SPE_MDTA + " (0)"), entity::get_p_spe_mdta_1);
		integerJavaToCobol(line.getFieldValue(P_SPE_MDTA + " (1)"), entity::get_p_spe_mdta_2);
		integerJavaToCobol(line.getFieldValue(P_SPE_MDTA + " (2)"), entity::get_p_spe_mdta_3);
		integerJavaToCobol(line.getFieldValue(P_SPE_MDTA + " (3)"), entity::get_p_spe_mdta_4);
		integerJavaToCobol(line.getFieldValue(P_SPE_MDTA + " (4)"), entity::get_p_spe_mdta_5);
		integerJavaToCobol(line.getFieldValue(L_SPE_MDTA + " (0)"), entity::get_l_spe_mdta_1);
		integerJavaToCobol(line.getFieldValue(L_SPE_MDTA + " (1)"), entity::get_l_spe_mdta_2);
		integerJavaToCobol(line.getFieldValue(L_SPE_MDTA + " (2)"), entity::get_l_spe_mdta_3);
		integerJavaToCobol(line.getFieldValue(L_SPE_MDTA + " (3)"), entity::get_l_spe_mdta_4);
		integerJavaToCobol(line.getFieldValue(L_SPE_MDTA + " (4)"), entity::get_l_spe_mdta_5);
		integerJavaToCobol(line.getFieldValue(D_SPE_MDTA + " (0)"), entity::get_d_spe_mdta_1);
		integerJavaToCobol(line.getFieldValue(D_SPE_MDTA + " (1)"), entity::get_d_spe_mdta_2);
		integerJavaToCobol(line.getFieldValue(D_SPE_MDTA + " (2)"), entity::get_d_spe_mdta_3);
		integerJavaToCobol(line.getFieldValue(D_SPE_MDTA + " (3)"), entity::get_d_spe_mdta_4);
		integerJavaToCobol(line.getFieldValue(D_SPE_MDTA + " (4)"), entity::get_d_spe_mdta_5);
		stringJavaToCobol(line.getFieldValue(T_SPE_MDTA + " (0)"), entity::get_t_spe_mdta_1);
		stringJavaToCobol(line.getFieldValue(T_SPE_MDTA + " (1)"), entity::get_t_spe_mdta_2);
		stringJavaToCobol(line.getFieldValue(T_SPE_MDTA + " (2)"), entity::get_t_spe_mdta_3);
		stringJavaToCobol(line.getFieldValue(T_SPE_MDTA + " (3)"), entity::get_t_spe_mdta_4);
		stringJavaToCobol(line.getFieldValue(T_SPE_MDTA + " (4)"), entity::get_t_spe_mdta_5);
		stringJavaToCobol(line.getFieldValue(C_SPE_MDTA + " (0)"), entity::get_c_spe_mdta_1);
		stringJavaToCobol(line.getFieldValue(C_SPE_MDTA + " (1)"), entity::get_c_spe_mdta_2);
		stringJavaToCobol(line.getFieldValue(C_SPE_MDTA + " (2)"), entity::get_c_spe_mdta_3);
		stringJavaToCobol(line.getFieldValue(C_SPE_MDTA + " (3)"), entity::get_c_spe_mdta_4);
		stringJavaToCobol(line.getFieldValue(C_SPE_MDTA + " (4)"), entity::get_c_spe_mdta_5);
		stringJavaToCobol(line.getFieldValue(COM_MDTA), entity::get_com_mdta);
		stringJavaToCobol(line.getFieldValue(IDE_MDTA), entity::get_ide_mdta);
		integerJavaToCobol(line.getFieldValue(P_GCOD_MDTA), entity::get_p_gcod_mdta);
		integerJavaToCobol(line.getFieldValue(L_GCOD_MDTA), entity::get_l_gcod_mdta);
		integerJavaToCobol(line.getFieldValue(D_GCOD_MDTA), entity::get_d_gcod_mdta);
		stringJavaToCobol(line.getFieldValue(T_GCOD_MDTA), entity::get_t_gcod_mdta);
		stringJavaToCobol(line.getFieldValue(C_GCOD_MDTA), entity::get_c_gcod_mdta);
		integerJavaToCobol(line.getFieldValue(P_PAY_MDTA), entity::get_p_pay_mdta);
		integerJavaToCobol(line.getFieldValue(L_PAY_MDTA), entity::get_l_pay_mdta);
		integerJavaToCobol(line.getFieldValue(D_PAY_MDTA), entity::get_d_pay_mdta);
		stringJavaToCobol(line.getFieldValue(T_PAY_MDTA), entity::get_t_pay_mdta);
		stringJavaToCobol(line.getFieldValue(C_PAY_MDTA), entity::get_c_pay_mdta);
		integerJavaToCobol(line.getFieldValue(P_TVA_MDTA), entity::get_p_tva_mdta);
		integerJavaToCobol(line.getFieldValue(L_TVA_MDTA), entity::get_l_tva_mdta);
		integerJavaToCobol(line.getFieldValue(D_TVA_MDTA), entity::get_d_tva_mdta);
		stringJavaToCobol(line.getFieldValue(T_TVA_MDTA), entity::get_t_tva_mdta);
		stringJavaToCobol(line.getFieldValue(C_TVA_MDTA), entity::get_c_tva_mdta);
		integerJavaToCobol(line.getFieldValue(P_RFI_MDTA), entity::get_p_rfi_mdta);
		integerJavaToCobol(line.getFieldValue(L_RFI_MDTA), entity::get_l_rfi_mdta);
		integerJavaToCobol(line.getFieldValue(D_RFI_MDTA), entity::get_d_rfi_mdta);
		stringJavaToCobol(line.getFieldValue(T_RFI_MDTA), entity::get_t_rfi_mdta);
		stringJavaToCobol(line.getFieldValue(C_RFI_MDTA), entity::get_c_rfi_mdta);
		integerJavaToCobol(line.getFieldValue(P_COEE_MDTA), entity::get_p_coee_mdta);
		integerJavaToCobol(line.getFieldValue(L_COEE_MDTA), entity::get_l_coee_mdta);
		integerJavaToCobol(line.getFieldValue(D_COE_MDTA), entity::get_d_coe_mdta);
		integerJavaToCobol(line.getFieldValue(P_COED_MDTA), entity::get_p_coed_mdta);
		integerJavaToCobol(line.getFieldValue(L_COED_MDTA), entity::get_l_coed_mdta);
	}

}
