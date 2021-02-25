package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Pregenv;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class PregenvHandler extends AbstractDataHandler<Pregenv> implements IDataHandler {

	/**
	 * cobol: COD-MPGEV
	 * db:    code_prestation
	 */
	private static final String CLE1_MPGEV = "CLE1-MPGEV";

	/** code_prestation - Code (type cobol: XXXX) */
	private static final String COD_MPGEV = "COD-MPGEV";
	/** mode_calcul - Mode de calcul (1=montant saisi (type cobol: 9) */
	private static final String CAL_MPGEV = "CAL-MPGEV";
	/** mode_impression - Mode d'impression (1=nombre/PU/montant 2=résultat (type cobol: 9) */
	private static final String IMP_MPGEV = "IMP-MPGEV";
	/** prix_achat - Prix d'achat (type cobol: 9(7)V99) */
	private static final String PAC_MPGEV = "PAC-MPGEV";
	/** prix_vente - Prix de vente (type cobol: 9(7)V99) */
	private static final String PVT_MPGEV = "PVT-MPGEV";
	/** mode_calcul_pr - Mode de calcul prix de revient (1=montant    2=% sur PV  3= Coeff. sur PA) (type cobol: 9) */
	private static final String TPR_MPGEV = "TPR-MPGEV";
	/** prix_revient - Prix de revient (type cobol: 9(7)V99) */
	private static final String PRS_MPGEV = "PRS-MPGEV";
	/** nombre_temps - Indicateur quantité ou heures (0=non 1=oui (type cobol: 9) */
	private static final String NBT_MPGEV = "NBT-MPGEV";
	/** date_maj_pa - Date mise à jour PA (type cobol: 9(8)) */
	private static final String DPA_MPGEV = "DPA-MPGEV";
	/** date_maj_pv - Date mise à jour PV (type cobol: 9(8)) */
	private static final String DPV_MPGEV = "DPV-MPGEV";
	/** rubrique_tg_achats - Rubrique tableau de gestion achats (type cobol: 999) */
	private static final String RTA_MPGEV = "RTA-MPGEV";
	/** rubrique_tg_ventes - Rubrique tableau de gestion ventes (type cobol: 999) */
	private static final String RTV_MPGEV = "RTV-MPGEV";
	/** soumis_escompte - Indicateur soumis à escompte (0=oui 1=non (type cobol: 9) */
	private static final String AES_MPGEV = "AES-MPGEV";
	/** imput_cpt_mat - Imputation Comptable / matériel:  0=Non   1=Oui (type cobol: 9) */
	private static final String ICM_MPGEV = "ICM-MPGEV";
	/** edit_infos_mat - Edition infos / matériel sur factures:  0=Non   1=Oui (type cobol: 9) */
	private static final String EIM_MPGEV = "EIM-MPGEV";
	/** gpa - Mise à jour compte gestion prévisionnel à la commande d'achat :  0=Non   1=Oui (type cobol: 9) */
	private static final String GPA_MPGEV = "GPA-MPGEV";
	/** dgt_mpgev - 1 = Comptabilisation automatique dans DGT (MACHDEAL) (type cobol: 9) */
	private static final String DGT_MPGEV = "DGT-MPGEV";

	public PregenvHandler() throws IOException {
		super("mx/fd/MXPREGENV.fd", "MXPREGENV", fr.mistral.dataserver.model.mx.Pregenv.class,
				"CLE1-MPGEV",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MPGEV, ImmutableList.<String>builder().add(COD_MPGEV).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Pregenv>>builder()
					.put(COD_MPGEV, new EntityFieldMapper<>(COD_MPGEV, "code_prestation", Pregenv::get_code_prestation))
					.build());
	}

	@Override
	public String getName() {
		return "MXPREGENV";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Pregenv entity) {
		stringCobolToJava(line.getFieldValue(COD_MPGEV), entity::set_code_prestation);
		integerCobolToJava(line.getFieldValue(CAL_MPGEV), entity::set_mode_calcul);
		integerCobolToJava(line.getFieldValue(IMP_MPGEV), entity::set_mode_impression);
		bigDecimalCobolToJava(line.getFieldValue(PAC_MPGEV), entity::set_prix_achat);
		bigDecimalCobolToJava(line.getFieldValue(PVT_MPGEV), entity::set_prix_vente);
		integerCobolToJava(line.getFieldValue(TPR_MPGEV), entity::set_mode_calcul_pr);
		bigDecimalCobolToJava(line.getFieldValue(PRS_MPGEV), entity::set_prix_revient);
		integerCobolToJava(line.getFieldValue(NBT_MPGEV), entity::set_nombre_temps);
		longCobolToJava(line.getFieldValue(DPA_MPGEV), entity::set_date_maj_pa);
		longCobolToJava(line.getFieldValue(DPV_MPGEV), entity::set_date_maj_pv);
		integerCobolToJava(line.getFieldValue(RTA_MPGEV), entity::set_rubrique_tg_achats);
		integerCobolToJava(line.getFieldValue(RTV_MPGEV), entity::set_rubrique_tg_ventes);
		integerCobolToJava(line.getFieldValue(AES_MPGEV), entity::set_soumis_escompte);
		integerCobolToJava(line.getFieldValue(ICM_MPGEV), entity::set_imput_cpt_mat);
		integerCobolToJava(line.getFieldValue(EIM_MPGEV), entity::set_edit_infos_mat);
		integerCobolToJava(line.getFieldValue(GPA_MPGEV), entity::set_gpa);
		integerCobolToJava(line.getFieldValue(DGT_MPGEV), entity::set_dgt_mpgev);
	}

	@Override
	protected void mapJavaToCobol(Pregenv entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(COD_MPGEV), entity::get_code_prestation);
		integerJavaToCobol(line.getFieldValue(CAL_MPGEV), entity::get_mode_calcul);
		integerJavaToCobol(line.getFieldValue(IMP_MPGEV), entity::get_mode_impression);
		bigDecimalJavaToCobol(line.getFieldValue(PAC_MPGEV), entity::get_prix_achat);
		bigDecimalJavaToCobol(line.getFieldValue(PVT_MPGEV), entity::get_prix_vente);
		integerJavaToCobol(line.getFieldValue(TPR_MPGEV), entity::get_mode_calcul_pr);
		bigDecimalJavaToCobol(line.getFieldValue(PRS_MPGEV), entity::get_prix_revient);
		integerJavaToCobol(line.getFieldValue(NBT_MPGEV), entity::get_nombre_temps);
		longJavaToCobol(line.getFieldValue(DPA_MPGEV), entity::get_date_maj_pa);
		longJavaToCobol(line.getFieldValue(DPV_MPGEV), entity::get_date_maj_pv);
		integerJavaToCobol(line.getFieldValue(RTA_MPGEV), entity::get_rubrique_tg_achats);
		integerJavaToCobol(line.getFieldValue(RTV_MPGEV), entity::get_rubrique_tg_ventes);
		integerJavaToCobol(line.getFieldValue(AES_MPGEV), entity::get_soumis_escompte);
		integerJavaToCobol(line.getFieldValue(ICM_MPGEV), entity::get_imput_cpt_mat);
		integerJavaToCobol(line.getFieldValue(EIM_MPGEV), entity::get_edit_infos_mat);
		integerJavaToCobol(line.getFieldValue(GPA_MPGEV), entity::get_gpa);
		integerJavaToCobol(line.getFieldValue(DGT_MPGEV), entity::get_dgt_mpgev);
	}

}
