package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Grafam;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class GrafamHandler extends AbstractDataHandler<Grafam> implements IDataHandler {

	/**
	 * cobol: GRA-MGFA, FAM-MGFA
	 * db:    gra_mgfa, fam_mgfa
	 */
	private static final String CLE1_MGFA = "CLE1-MGFA";
	/**
	 * cobol: GRA-MGFA, LIB-MGFA
	 * db:    gra_mgfa, libelle_fam_art
	 */
	private static final String CLE2_MGFA = "CLE2-MGFA";
	/**
	 * cobol: FAM-MGFA, LIB-MGFA
	 * db:    fam_mgfa, libelle_fam_art
	 */
	private static final String CLE3_MGFA = "CLE3-MGFA";

	/** gra_mgfa - Code famille (type cobol: 99) */
	private static final String GRA_MGFA = "GRA-MGFA";
	/** fam_mgfa - Code sous-famille (type cobol: 99) */
	private static final String FAM_MGFA = "FAM-MGFA";
	/** libelle_fam_art - Libellé (type cobol: X(25)) */
	private static final String LIB_MGFA = "LIB-MGFA";
	/** abrege_fam_art - Abrégé (type cobol: X(8)) */
	private static final String ABR_MGFA = "ABR-MGFA";
	/** nature_article - Nature sous famille : 0 = Fournitures 1 = Pièces détachées 2 = Accessoires/Matériel 3 = Outillage 4 = Pneumatiques 5 = Lubrifiants 6 = Carburants 7 = Travaux Sous-Traités 9 = Petit Matériel (type cobol: 9) */
	private static final String NAT_MGFA = "NAT-MGFA";
	/** existence_garantie - Existence garantie (type cobol: 9) */
	private static final String EXG_MGFA = "EXG-MGFA";
	/** type_garantie - Type garantie (type cobol: 9) */
	private static final String TYG_MGFA = "TYG-MGFA";
	/** type_gtie_pieces - Garantie pièces (type cobol: 9) */
	private static final String GAP_MGFA = "GAP-MGFA";
	/** duree_gtie_pieces - Durée garantie pièces (type cobol: 99) */
	private static final String DUP_MGFA = "DUP-MGFA";
	/** type_garantie_mo - Garantie MO (type cobol: 9) */
	private static final String GAM_MGFA = "GAM-MGFA";
	/** duree_garantie_mo - Durée garantie MO (type cobol: 99) */
	private static final String DUM_MGFA = "DUM-MGFA";
	/** regroupement_stats - Code regroupement statistiques vente (type cobol: XX) */
	private static final String RGS_MGFA = "RGS-MGFA";
	/** poste_immos - Poste principal immos (type cobol: 9(3)) */
	private static final String PIM_MGFA = "PIM-MGFA";
	/** nature_immos - Cde nature immos (type cobol: 999) */
	private static final String NAM_MGFA = "NAM-MGFA";
	/** mode_amortissement - Mode amortissement (1=linéaire 2=dégressif (type cobol: 9) */
	private static final String MAM_MGFA = "MAM-MGFA";
	/** duree_amortissemen - Durée amortissements (type cobol: 999) */
	private static final String DAM_MGFA = "DAM-MGFA";
	/** division - N° division (type cobol: 9) */
	private static final String DVS_MGFA = "DVS-MGFA";
	/** arr_mgfa (type cobol: 9) */
	private static final String ARR_MGFA = "ARR-MGFA";
	/** libelle_tva_cee - Libellé TVA (type cobol: X(10)) */
	private static final String TVA_MGFA = "TVA-MGFA";
	/** pourcent_depreciat - % dépréciation (type cobol: 9(3)V99) */
	private static final String PDS_MGFA = "PDS-MGFA";
	/** no_segment - N° segment (type cobol: 99) */
	private static final String SEG_MGFA = "SEG-MGFA";
	/** indicateur_immo - Immobilisation (0=non 1=oui (type cobol: 9) */
	private static final String IMO_MGFA = "IMO-MGFA";
	/** code_acheteur - N° acheteur (type cobol: X(4)) */
	private static final String ACH_MGFA = "ACH-MGFA";
	/** mem_mgfa (type cobol: 9) */
	private static final String MEM_MGFA = "MEM-MGFA";
	/** mode_amo_spec_fisc - Mode Amortissement Spécifique Fiscal (type cobol: 9(2)) */
	private static final String ASP_MGFA = "ASP-MGFA";
	/** mode_amo_eco - Mode Amortissement Economique (type cobol: 9(1)) */
	private static final String MAME_MGFA = "MAME-MGFA";
	/** duree_amo_eco - Durée Amortissement Economique (type cobol: 9(3)) */
	private static final String DAME_MGFA = "DAME-MGFA";
	/** mode_amo_spec_eco - Mode Amortissement Spécifique Economique (type cobol: 9(2)) */
	private static final String ASPE_MGFA = "ASPE-MGFA";
	/** mode_amo_cpt - Mode Amortissement Comptable (type cobol: 9(1)) */
	private static final String MAMC_MGFA = "MAMC-MGFA";
	/** duree_amo_cpt - Durée Amortissement Comptable (type cobol: 9(3)) */
	private static final String DAMC_MGFA = "DAMC-MGFA";
	/** mode_amo_spec_cpt - Mode Amortissement Spécifique Comptable (type cobol: 9(2)) */
	private static final String ASPC_MGFA = "ASPC-MGFA";
	/** saisie_pvt - 1 saisie prix de vente (type cobol: 9) */
	private static final String SPVT_MGFA = "SPVT-MGFA";
	/** exclus_workflow - 1 = sous-famille exclue du workflow (type cobol: 9) */
	private static final String WKFL_MGFA = "WKFL-MGFA";
	/** saisonnalite - Saisonnalité: 0=Non  1=Oui (type cobol: 9) */
	private static final String SAI_MGFA = "SAI-MGFA";
	/** periode_saison1 - Période Saison 1 (en JJ/MM)  Indice 1= Début   Indice 2=Fin (type cobol: 9(4)) */
	private static final String PSAI1_MGFA = "PSAI1-MGFA";
	/** periode_saison2 - Période Saison 2 (en JJ/MM)  Indice 1= Début   Indice 2=Fin (type cobol: 9(4)) */
	private static final String PSAI2_MGFA = "PSAI2-MGFA";
	/** coeff_saison1 - Coefficient à appliquer au mini et au maxi pour la saison 1 (type cobol: 99V9) */
	private static final String CSAI1_MGFA = "CSAI1-MGFA";
	/** coeff_saison2 - Coefficient à appliquer au mini et au maxi pour la saison 2 (type cobol: 99V9) */
	private static final String CSAI2_MGFA = "CSAI2-MGFA";
	/** regroup_stat_loc - Code regroupement statistiques location (type cobol: XX) */
	private static final String RGL_MGFA = "RGL-MGFA";
	/** asns_mgfa - Achats sans N° de série: 0=Non  1=Oui  (pour les petits matériels) (type cobol: 9) */
	private static final String ASNS_MGFA = "ASNS-MGFA";
	/** gsto_mgfa - Gérer en stock par: 0=le Magasin pièce   1=le Service Vente Matériel (Si accessoires ou petits matériels (type cobol: 9) */
	private static final String GSTO_MGFA = "GSTO-MGFA";
	/** fid_mgfa - Exclue de la fidélité / Garem: 0=Non   1=Oui (type cobol: 9) */
	private static final String FID_MGFA = "FID-MGFA";
	/** achctrl_mgfa - Achats sous contrôle: 0=Non   1=Oui (type cobol: 9) */
	private static final String ACHCTRL_MGFA = "ACHCTRL-MGFA";
	/** ebach_mgfa - Exclue/ Bons d'achat : 0=Non   1=Oui (type cobol: 9) */
	private static final String EBACH_MGFA = "EBACH-MGFA";

	public GrafamHandler() throws IOException {
		super("mx/fd/MXGRAFAM.fd", "MXGRAFAM", fr.mistral.dataserver.model.mx.Grafam.class,
				"CLE1-MGFA",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MGFA, ImmutableList.<String>builder().add(GRA_MGFA, FAM_MGFA).build())
					.put(CLE2_MGFA, ImmutableList.<String>builder().add(GRA_MGFA, LIB_MGFA).build())
					.put(CLE3_MGFA, ImmutableList.<String>builder().add(FAM_MGFA, LIB_MGFA).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Grafam>>builder()
					.put(GRA_MGFA, new EntityFieldMapper<>(GRA_MGFA, "gra_mgfa", Grafam::get_gra_mgfa))
					.put(FAM_MGFA, new EntityFieldMapper<>(FAM_MGFA, "fam_mgfa", Grafam::get_fam_mgfa))
					.put(LIB_MGFA, new EntityFieldMapper<>(LIB_MGFA, "libelle_fam_art", Grafam::get_libelle_fam_art))
					.build());
	}

	@Override
	public String getName() {
		return "MXGRAFAM";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Grafam entity) {
		integerCobolToJava(line.getFieldValue(GRA_MGFA), entity::set_gra_mgfa);
		integerCobolToJava(line.getFieldValue(FAM_MGFA), entity::set_fam_mgfa);
		stringCobolToJava(line.getFieldValue(LIB_MGFA), entity::set_libelle_fam_art);
		stringCobolToJava(line.getFieldValue(ABR_MGFA), entity::set_abrege_fam_art);
		integerCobolToJava(line.getFieldValue(NAT_MGFA), entity::set_nature_article);
		integerCobolToJava(line.getFieldValue(EXG_MGFA), entity::set_existence_garantie);
		integerCobolToJava(line.getFieldValue(TYG_MGFA), entity::set_type_garantie);
		integerCobolToJava(line.getFieldValue(GAP_MGFA), entity::set_type_gtie_pieces);
		integerCobolToJava(line.getFieldValue(DUP_MGFA), entity::set_duree_gtie_pieces);
		integerCobolToJava(line.getFieldValue(GAM_MGFA), entity::set_type_garantie_mo);
		integerCobolToJava(line.getFieldValue(DUM_MGFA), entity::set_duree_garantie_mo);
		stringCobolToJava(line.getFieldValue(RGS_MGFA), entity::set_regroupement_stats);
		integerCobolToJava(line.getFieldValue(PIM_MGFA), entity::set_poste_immos);
		integerCobolToJava(line.getFieldValue(NAM_MGFA), entity::set_nature_immos);
		integerCobolToJava(line.getFieldValue(MAM_MGFA), entity::set_mode_amortissement);
		integerCobolToJava(line.getFieldValue(DAM_MGFA), entity::set_duree_amortissemen);
		integerCobolToJava(line.getFieldValue(DVS_MGFA), entity::set_division);
		integerCobolToJava(line.getFieldValue(ARR_MGFA), entity::set_arr_mgfa);
		stringCobolToJava(line.getFieldValue(TVA_MGFA), entity::set_libelle_tva_cee);
		bigDecimalCobolToJava(line.getFieldValue(PDS_MGFA + " (0)"), entity::set_pourcent_depreciat_1);
		bigDecimalCobolToJava(line.getFieldValue(PDS_MGFA + " (1)"), entity::set_pourcent_depreciat_2);
		bigDecimalCobolToJava(line.getFieldValue(PDS_MGFA + " (2)"), entity::set_pourcent_depreciat_3);
		bigDecimalCobolToJava(line.getFieldValue(PDS_MGFA + " (3)"), entity::set_pourcent_depreciat_4);
		bigDecimalCobolToJava(line.getFieldValue(PDS_MGFA + " (4)"), entity::set_pourcent_depreciat_5);
		integerCobolToJava(line.getFieldValue(SEG_MGFA), entity::set_no_segment);
		integerCobolToJava(line.getFieldValue(IMO_MGFA), entity::set_indicateur_immo);
		stringCobolToJava(line.getFieldValue(ACH_MGFA), entity::set_code_acheteur);
		integerCobolToJava(line.getFieldValue(MEM_MGFA), entity::set_mem_mgfa);
		integerCobolToJava(line.getFieldValue(ASP_MGFA), entity::set_mode_amo_spec_fisc);
		integerCobolToJava(line.getFieldValue(MAME_MGFA), entity::set_mode_amo_eco);
		integerCobolToJava(line.getFieldValue(DAME_MGFA), entity::set_duree_amo_eco);
		integerCobolToJava(line.getFieldValue(ASPE_MGFA), entity::set_mode_amo_spec_eco);
		integerCobolToJava(line.getFieldValue(MAMC_MGFA), entity::set_mode_amo_cpt);
		integerCobolToJava(line.getFieldValue(DAMC_MGFA), entity::set_duree_amo_cpt);
		integerCobolToJava(line.getFieldValue(ASPC_MGFA), entity::set_mode_amo_spec_cpt);
		integerCobolToJava(line.getFieldValue(SPVT_MGFA), entity::set_saisie_pvt);
		integerCobolToJava(line.getFieldValue(WKFL_MGFA), entity::set_exclus_workflow);
		integerCobolToJava(line.getFieldValue(SAI_MGFA), entity::set_saisonnalite);
		integerCobolToJava(line.getFieldValue(PSAI1_MGFA + " (0)"), entity::set_periode_saison1_1);
		integerCobolToJava(line.getFieldValue(PSAI1_MGFA + " (1)"), entity::set_periode_saison1_2);
		integerCobolToJava(line.getFieldValue(PSAI2_MGFA + " (0)"), entity::set_periode_saison2_1);
		integerCobolToJava(line.getFieldValue(PSAI2_MGFA + " (1)"), entity::set_periode_saison2_2);
		bigDecimalCobolToJava(line.getFieldValue(CSAI1_MGFA), entity::set_coeff_saison1);
		bigDecimalCobolToJava(line.getFieldValue(CSAI2_MGFA), entity::set_coeff_saison2);
		stringCobolToJava(line.getFieldValue(RGL_MGFA), entity::set_regroup_stat_loc);
		integerCobolToJava(line.getFieldValue(ASNS_MGFA), entity::set_asns_mgfa);
		integerCobolToJava(line.getFieldValue(GSTO_MGFA), entity::set_gsto_mgfa);
		integerCobolToJava(line.getFieldValue(FID_MGFA), entity::set_fid_mgfa);
		integerCobolToJava(line.getFieldValue(ACHCTRL_MGFA), entity::set_achctrl_mgfa);
		integerCobolToJava(line.getFieldValue(EBACH_MGFA), entity::set_ebach_mgfa);
	}

	@Override
	protected void mapJavaToCobol(Grafam entity, AbstractLine line) {
		integerJavaToCobol(line.getFieldValue(GRA_MGFA), entity::get_gra_mgfa);
		integerJavaToCobol(line.getFieldValue(FAM_MGFA), entity::get_fam_mgfa);
		stringJavaToCobol(line.getFieldValue(LIB_MGFA), entity::get_libelle_fam_art);
		stringJavaToCobol(line.getFieldValue(ABR_MGFA), entity::get_abrege_fam_art);
		integerJavaToCobol(line.getFieldValue(NAT_MGFA), entity::get_nature_article);
		integerJavaToCobol(line.getFieldValue(EXG_MGFA), entity::get_existence_garantie);
		integerJavaToCobol(line.getFieldValue(TYG_MGFA), entity::get_type_garantie);
		integerJavaToCobol(line.getFieldValue(GAP_MGFA), entity::get_type_gtie_pieces);
		integerJavaToCobol(line.getFieldValue(DUP_MGFA), entity::get_duree_gtie_pieces);
		integerJavaToCobol(line.getFieldValue(GAM_MGFA), entity::get_type_garantie_mo);
		integerJavaToCobol(line.getFieldValue(DUM_MGFA), entity::get_duree_garantie_mo);
		stringJavaToCobol(line.getFieldValue(RGS_MGFA), entity::get_regroupement_stats);
		integerJavaToCobol(line.getFieldValue(PIM_MGFA), entity::get_poste_immos);
		integerJavaToCobol(line.getFieldValue(NAM_MGFA), entity::get_nature_immos);
		integerJavaToCobol(line.getFieldValue(MAM_MGFA), entity::get_mode_amortissement);
		integerJavaToCobol(line.getFieldValue(DAM_MGFA), entity::get_duree_amortissemen);
		integerJavaToCobol(line.getFieldValue(DVS_MGFA), entity::get_division);
		integerJavaToCobol(line.getFieldValue(ARR_MGFA), entity::get_arr_mgfa);
		stringJavaToCobol(line.getFieldValue(TVA_MGFA), entity::get_libelle_tva_cee);
		bigDecimalJavaToCobol(line.getFieldValue(PDS_MGFA + " (0)"), entity::get_pourcent_depreciat_1);
		bigDecimalJavaToCobol(line.getFieldValue(PDS_MGFA + " (1)"), entity::get_pourcent_depreciat_2);
		bigDecimalJavaToCobol(line.getFieldValue(PDS_MGFA + " (2)"), entity::get_pourcent_depreciat_3);
		bigDecimalJavaToCobol(line.getFieldValue(PDS_MGFA + " (3)"), entity::get_pourcent_depreciat_4);
		bigDecimalJavaToCobol(line.getFieldValue(PDS_MGFA + " (4)"), entity::get_pourcent_depreciat_5);
		integerJavaToCobol(line.getFieldValue(SEG_MGFA), entity::get_no_segment);
		integerJavaToCobol(line.getFieldValue(IMO_MGFA), entity::get_indicateur_immo);
		stringJavaToCobol(line.getFieldValue(ACH_MGFA), entity::get_code_acheteur);
		integerJavaToCobol(line.getFieldValue(MEM_MGFA), entity::get_mem_mgfa);
		integerJavaToCobol(line.getFieldValue(ASP_MGFA), entity::get_mode_amo_spec_fisc);
		integerJavaToCobol(line.getFieldValue(MAME_MGFA), entity::get_mode_amo_eco);
		integerJavaToCobol(line.getFieldValue(DAME_MGFA), entity::get_duree_amo_eco);
		integerJavaToCobol(line.getFieldValue(ASPE_MGFA), entity::get_mode_amo_spec_eco);
		integerJavaToCobol(line.getFieldValue(MAMC_MGFA), entity::get_mode_amo_cpt);
		integerJavaToCobol(line.getFieldValue(DAMC_MGFA), entity::get_duree_amo_cpt);
		integerJavaToCobol(line.getFieldValue(ASPC_MGFA), entity::get_mode_amo_spec_cpt);
		integerJavaToCobol(line.getFieldValue(SPVT_MGFA), entity::get_saisie_pvt);
		integerJavaToCobol(line.getFieldValue(WKFL_MGFA), entity::get_exclus_workflow);
		integerJavaToCobol(line.getFieldValue(SAI_MGFA), entity::get_saisonnalite);
		integerJavaToCobol(line.getFieldValue(PSAI1_MGFA + " (0)"), entity::get_periode_saison1_1);
		integerJavaToCobol(line.getFieldValue(PSAI1_MGFA + " (1)"), entity::get_periode_saison1_2);
		integerJavaToCobol(line.getFieldValue(PSAI2_MGFA + " (0)"), entity::get_periode_saison2_1);
		integerJavaToCobol(line.getFieldValue(PSAI2_MGFA + " (1)"), entity::get_periode_saison2_2);
		bigDecimalJavaToCobol(line.getFieldValue(CSAI1_MGFA), entity::get_coeff_saison1);
		bigDecimalJavaToCobol(line.getFieldValue(CSAI2_MGFA), entity::get_coeff_saison2);
		stringJavaToCobol(line.getFieldValue(RGL_MGFA), entity::get_regroup_stat_loc);
		integerJavaToCobol(line.getFieldValue(ASNS_MGFA), entity::get_asns_mgfa);
		integerJavaToCobol(line.getFieldValue(GSTO_MGFA), entity::get_gsto_mgfa);
		integerJavaToCobol(line.getFieldValue(FID_MGFA), entity::get_fid_mgfa);
		integerJavaToCobol(line.getFieldValue(ACHCTRL_MGFA), entity::get_achctrl_mgfa);
		integerJavaToCobol(line.getFieldValue(EBACH_MGFA), entity::get_ebach_mgfa);
	}

}
