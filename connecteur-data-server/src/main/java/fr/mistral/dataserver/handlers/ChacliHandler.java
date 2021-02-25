package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Chacli;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class ChacliHandler extends AbstractDataHandler<Chacli> implements IDataHandler {

	/**
	 * cobol: ORD-MCHC
	 * db:    no_chantier
	 */
	private static final String CLE1_MCHC = "CLE1-MCHC";
	/**
	 * cobol: NCP-MCHC, RAI-MCHC
	 * db:    no_interne_client, nom_chantier
	 */
	private static final String CLE2_MCHC = "CLE2-MCHC";
	/**
	 * cobol: GCH-MCHC, NCP-MCHC
	 * db:    pole_activite, no_interne_client
	 */
	private static final String CLE3_MCHC = "CLE3-MCHC";
	/**
	 * cobol: NCP-MCHC, PAY-MCHC, POS-MCHC
	 * db:    no_interne_client, code_pays, code_postal_chanti
	 */
	private static final String CLE4_MCHC = "CLE4-MCHC";

	/** no_chantier - N° Ordre Chantier (type cobol: 9(9)) */
	private static final String ORD_MCHC = "ORD-MCHC";
	/** no_interne_client - N° interne client ou prospect (type cobol: 9(9)) */
	private static final String NCP_MCHC = "NCP-MCHC";
	/** nom_chantier - Nom (type cobol: X(25)) */
	private static final String RAI_MCHC = "RAI-MCHC";
	/** adresse_chantier (type cobol: X(75)) */
	private static final String ADR_MCHC = "ADR-MCHC";
	/** code_pays - Pays (type cobol: XXX) */
	private static final String PAY_MCHC = "PAY-MCHC";
	/** code_postal_chanti - Code postal (type cobol: X(8)) */
	private static final String POS_MCHC = "POS-MCHC";
	/** ville_chantier (type cobol: X(25)) */
	private static final String VIL_MCHC = "VIL-MCHC";
	/** tel_chantier (type cobol: X(12)) */
	private static final String TEL_MCHC = "TEL-MCHC";
	/** fax_chantier (type cobol: X(12)) */
	private static final String FAX_MCHC = "FAX-MCHC";
	/** indic_fact_adr_chc - Indicateur Facturation à l'adresse du chantier (type cobol: 9) */
	private static final String FAC_MCHC = "FAC-MCHC";
	/** indic_trait (type cobol: 9) */
	private static final String TRA_MCHC = "TRA-MCHC";
	/** date_creation - Date de création (type cobol: 9(8)) */
	private static final String CRE_MCHC = "CRE-MCHC";
	/** date_cloture - Date de cloture (type cobol: 9(8)) */
	private static final String CLO_MCHC = "CLO-MCHC";
	/** no_bs_complements - N° de Bons de sortie complémentaires (type cobol: 9(6)) */
	private static final String BSMS_MCHC = "BSMS-MCHC";
	/** pole_activite - Pole d'activité (Grand chantier (type cobol: X(2)) */
	private static final String GCH_MCHC = "GCH-MCHC";
	/** instructions - Instructions (type cobol: X(30)) */
	private static final String INS_MCHC = "INS-MCHC";
	/** distance - Distance (type cobol: 9(4)) */
	private static final String DIS_MCHC = "DIS-MCHC";
	/** code_commercial - Commercial (type cobol: X(4)) */
	private static final String REP_MCHC = "REP-MCHC";
	/** code_ori_affaire - Origine Affaire (type cobol: X) */
	private static final String ORA_MCHC = "ORA-MCHC";
	/** code_agence - Agence de relation (type cobol: XXX) */
	private static final String AGR_MCHC = "AGR-MCHC";
	/** indic_adr_chc_cli - Indicateur adresse du chantier 1 = adrese du client 2 = adresse de facturation du client (type cobol: 9) */
	private static final String IAC_MCHC = "IAC-MCHC";
	/** no_tarif_location - Tarif Location (type cobol: XX) */
	private static final String TLO_MCHC = "TLO-MCHC";
	/** code_territoire - Territoire (type cobol: XX) */
	private static final String TER_MCHC = "TER-MCHC";
	/** code_secteur - Secteur (type cobol: XXX) */
	private static final String SEC_MCHC = "SEC-MCHC";
	/** non_utilise (type cobol: XX) */
	private static final String CNT_MCHC = "CNT-MCHC";
	/** no_tarif_spe_loc - N° Tarif spécial Location (type cobol: X(4)) */
	private static final String TSL_MCHC = "TSL-MCHC";
	/** indic_chc_manutent - Indicateur chantier Manutention (type cobol: 9) */
	private static final String MAN_MCHC = "MAN-MCHC";
	/** no_bs_echafaudage - N° de bon de sortie échaffaudage (type cobol: 9(6)) */
	private static final String BSM_MCHC = "BSM-MCHC";
	/** indic_stade_chc (type cobol: 9) */
	private static final String STA_MCHC = "STA-MCHC";
	/** date_maj_enreg - Date Mise à Jour Enregistrement (type cobol: 9(8)) */
	private static final String DME_MCHC = "DME-MCHC";
	/** ana7_mchc (type cobol: 9(7)) */
	private static final String ANA7_MCHC = "ANA7-MCHC";
	/** no_affaire - N° affaire (type cobol: X(10)) */
	private static final String NAF_MCHC = "NAF-MCHC";
	/** indic_demat - Code plan de prévention dématérialisé (type cobol: X(3)) */
	private static final String MPP_MCHC = "MPP-MCHC";
	/** spe_mchc - Info spécifique : REGIS LOC ID import chantier (type cobol: X(6)) */
	private static final String SPE_MCHC = "SPE-MCHC";

	public ChacliHandler() throws IOException {
		super("mx/fd/MXCHACLI.fd", "MXCHACLI", fr.mistral.dataserver.model.mx.Chacli.class,
				"CLE1-MCHC",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MCHC, ImmutableList.<String>builder().add(ORD_MCHC).build())
					.put(CLE2_MCHC, ImmutableList.<String>builder().add(NCP_MCHC, RAI_MCHC).build())
					.put(CLE3_MCHC, ImmutableList.<String>builder().add(GCH_MCHC, NCP_MCHC).build())
					.put(CLE4_MCHC, ImmutableList.<String>builder().add(NCP_MCHC, PAY_MCHC, POS_MCHC).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Chacli>>builder()
					.put(ORD_MCHC, new EntityFieldMapper<>(ORD_MCHC, "no_chantier", Chacli::get_no_chantier))
					.put(NCP_MCHC, new EntityFieldMapper<>(NCP_MCHC, "no_interne_client", Chacli::get_no_interne_client))
					.put(RAI_MCHC, new EntityFieldMapper<>(RAI_MCHC, "nom_chantier", Chacli::get_nom_chantier))
					.put(PAY_MCHC, new EntityFieldMapper<>(PAY_MCHC, "code_pays", Chacli::get_code_pays))
					.put(POS_MCHC, new EntityFieldMapper<>(POS_MCHC, "code_postal_chanti", Chacli::get_code_postal_chanti))
					.put(GCH_MCHC, new EntityFieldMapper<>(GCH_MCHC, "pole_activite", Chacli::get_pole_activite))
					.build());
	}

	@Override
	public String getName() {
		return "MXCHACLI";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Chacli entity) {
		longCobolToJava(line.getFieldValue(ORD_MCHC), entity::set_no_chantier);
		longCobolToJava(line.getFieldValue(NCP_MCHC), entity::set_no_interne_client);
		stringCobolToJava(line.getFieldValue(RAI_MCHC), entity::set_nom_chantier);
		stringCobolToJava(line.getFieldValue(ADR_MCHC), entity::set_adresse_chantier);
		stringCobolToJava(line.getFieldValue(PAY_MCHC), entity::set_code_pays);
		stringCobolToJava(line.getFieldValue(POS_MCHC), entity::set_code_postal_chanti);
		stringCobolToJava(line.getFieldValue(VIL_MCHC), entity::set_ville_chantier);
		stringCobolToJava(line.getFieldValue(TEL_MCHC), entity::set_tel_chantier);
		stringCobolToJava(line.getFieldValue(FAX_MCHC), entity::set_fax_chantier);
		integerCobolToJava(line.getFieldValue(FAC_MCHC), entity::set_indic_fact_adr_chc);
		integerCobolToJava(line.getFieldValue(TRA_MCHC), entity::set_indic_trait);
		dateCobolToJava(line.getFieldValue(CRE_MCHC), entity::set_date_creation);
		dateCobolToJava(line.getFieldValue(CLO_MCHC), entity::set_date_cloture);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (0)"), entity::set_no_bs_complements_1);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (1)"), entity::set_no_bs_complements_2);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (2)"), entity::set_no_bs_complements_3);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (3)"), entity::set_no_bs_complements_4);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (4)"), entity::set_no_bs_complements_5);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (5)"), entity::set_no_bs_complements_6);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (6)"), entity::set_no_bs_complements_7);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (7)"), entity::set_no_bs_complements_8);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (8)"), entity::set_no_bs_complements_9);
		longCobolToJava(line.getFieldValue(BSMS_MCHC + " (9)"), entity::set_no_bs_complements_10);
		stringCobolToJava(line.getFieldValue(GCH_MCHC), entity::set_pole_activite);
		stringCobolToJava(line.getFieldValue(INS_MCHC + " (0)"), entity::set_instructions_1);
		stringCobolToJava(line.getFieldValue(INS_MCHC + " (1)"), entity::set_instructions_2);
		integerCobolToJava(line.getFieldValue(DIS_MCHC), entity::set_distance);
		stringCobolToJava(line.getFieldValue(REP_MCHC), entity::set_code_commercial);
		stringCobolToJava(line.getFieldValue(ORA_MCHC), entity::set_code_ori_affaire);
		stringCobolToJava(line.getFieldValue(AGR_MCHC), entity::set_code_agence);
		integerCobolToJava(line.getFieldValue(IAC_MCHC), entity::set_indic_adr_chc_cli);
		stringCobolToJava(line.getFieldValue(TLO_MCHC), entity::set_no_tarif_location);
		stringCobolToJava(line.getFieldValue(TER_MCHC), entity::set_code_territoire);
		stringCobolToJava(line.getFieldValue(SEC_MCHC), entity::set_code_secteur);
		stringCobolToJava(line.getFieldValue(CNT_MCHC), entity::set_non_utilise);
		stringCobolToJava(line.getFieldValue(TSL_MCHC), entity::set_no_tarif_spe_loc);
		integerCobolToJava(line.getFieldValue(MAN_MCHC), entity::set_indic_chc_manutent);
		longCobolToJava(line.getFieldValue(BSM_MCHC), entity::set_no_bs_echafaudage);
		integerCobolToJava(line.getFieldValue(STA_MCHC), entity::set_indic_stade_chc);
		dateCobolToJava(line.getFieldValue(DME_MCHC), entity::set_date_maj_enreg);
		longCobolToJava(line.getFieldValue(ANA7_MCHC), entity::set_ana7_mchc);
		stringCobolToJava(line.getFieldValue(NAF_MCHC), entity::set_no_affaire);
		stringCobolToJava(line.getFieldValue(MPP_MCHC), entity::set_indic_demat);
		stringCobolToJava(line.getFieldValue(SPE_MCHC), entity::set_spe_mchc);
	}

	@Override
	protected void mapJavaToCobol(Chacli entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(ORD_MCHC), entity::get_no_chantier);
		longJavaToCobol(line.getFieldValue(NCP_MCHC), entity::get_no_interne_client);
		stringJavaToCobol(line.getFieldValue(RAI_MCHC), entity::get_nom_chantier);
		stringJavaToCobol(line.getFieldValue(ADR_MCHC), entity::get_adresse_chantier);
		stringJavaToCobol(line.getFieldValue(PAY_MCHC), entity::get_code_pays);
		stringJavaToCobol(line.getFieldValue(POS_MCHC), entity::get_code_postal_chanti);
		stringJavaToCobol(line.getFieldValue(VIL_MCHC), entity::get_ville_chantier);
		stringJavaToCobol(line.getFieldValue(TEL_MCHC), entity::get_tel_chantier);
		stringJavaToCobol(line.getFieldValue(FAX_MCHC), entity::get_fax_chantier);
		integerJavaToCobol(line.getFieldValue(FAC_MCHC), entity::get_indic_fact_adr_chc);
		integerJavaToCobol(line.getFieldValue(TRA_MCHC), entity::get_indic_trait);
		dateJavaToCobol(line.getFieldValue(CRE_MCHC), entity::get_date_creation);
		dateJavaToCobol(line.getFieldValue(CLO_MCHC), entity::get_date_cloture);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (0)"), entity::get_no_bs_complements_1);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (1)"), entity::get_no_bs_complements_2);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (2)"), entity::get_no_bs_complements_3);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (3)"), entity::get_no_bs_complements_4);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (4)"), entity::get_no_bs_complements_5);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (5)"), entity::get_no_bs_complements_6);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (6)"), entity::get_no_bs_complements_7);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (7)"), entity::get_no_bs_complements_8);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (8)"), entity::get_no_bs_complements_9);
		longJavaToCobol(line.getFieldValue(BSMS_MCHC + " (9)"), entity::get_no_bs_complements_10);
		stringJavaToCobol(line.getFieldValue(GCH_MCHC), entity::get_pole_activite);
		stringJavaToCobol(line.getFieldValue(INS_MCHC + " (0)"), entity::get_instructions_1);
		stringJavaToCobol(line.getFieldValue(INS_MCHC + " (1)"), entity::get_instructions_2);
		integerJavaToCobol(line.getFieldValue(DIS_MCHC), entity::get_distance);
		stringJavaToCobol(line.getFieldValue(REP_MCHC), entity::get_code_commercial);
		stringJavaToCobol(line.getFieldValue(ORA_MCHC), entity::get_code_ori_affaire);
		stringJavaToCobol(line.getFieldValue(AGR_MCHC), entity::get_code_agence);
		integerJavaToCobol(line.getFieldValue(IAC_MCHC), entity::get_indic_adr_chc_cli);
		stringJavaToCobol(line.getFieldValue(TLO_MCHC), entity::get_no_tarif_location);
		stringJavaToCobol(line.getFieldValue(TER_MCHC), entity::get_code_territoire);
		stringJavaToCobol(line.getFieldValue(SEC_MCHC), entity::get_code_secteur);
		stringJavaToCobol(line.getFieldValue(CNT_MCHC), entity::get_non_utilise);
		stringJavaToCobol(line.getFieldValue(TSL_MCHC), entity::get_no_tarif_spe_loc);
		integerJavaToCobol(line.getFieldValue(MAN_MCHC), entity::get_indic_chc_manutent);
		longJavaToCobol(line.getFieldValue(BSM_MCHC), entity::get_no_bs_echafaudage);
		integerJavaToCobol(line.getFieldValue(STA_MCHC), entity::get_indic_stade_chc);
		dateJavaToCobol(line.getFieldValue(DME_MCHC), entity::get_date_maj_enreg);
		longJavaToCobol(line.getFieldValue(ANA7_MCHC), entity::get_ana7_mchc);
		stringJavaToCobol(line.getFieldValue(NAF_MCHC), entity::get_no_affaire);
		stringJavaToCobol(line.getFieldValue(MPP_MCHC), entity::get_indic_demat);
		stringJavaToCobol(line.getFieldValue(SPE_MCHC), entity::get_spe_mchc);
	}

}
