package fr.mistral.dataserver.model.mx;

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(
indexes={
		@Index(name="idx_grafam_cle1_mgfa", columnList="gra_mgfa,fam_mgfa", unique=true),
		@Index(name="idx_grafam_cle2_mgfa", columnList="gra_mgfa,libelle_fam_art", unique=false),
		@Index(name="idx_grafam_cle3_mgfa", columnList="fam_mgfa,libelle_fam_art", unique=false)
})
public class Grafam implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Integer gra_mgfa;
	@Column
	private Integer fam_mgfa;
	@Column
	private String libelle_fam_art;
	@Column
	private String abrege_fam_art;
	@Column
	private Integer nature_article;
	@Column
	private Integer existence_garantie;
	@Column
	private Integer type_garantie;
	@Column
	private Integer type_gtie_pieces;
	@Column
	private Integer duree_gtie_pieces;
	@Column
	private Integer type_garantie_mo;
	@Column
	private Integer duree_garantie_mo;
	@Column
	private String regroupement_stats;
	@Column
	private Integer poste_immos;
	@Column
	private Integer nature_immos;
	@Column
	private Integer mode_amortissement;
	@Column
	private Integer duree_amortissemen;
	@Column
	private Integer division;
	@Column
	private Integer arr_mgfa;
	@Column
	private String libelle_tva_cee;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_depreciat_1;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_depreciat_2;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_depreciat_3;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_depreciat_4;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_depreciat_5;
	@Column
	private Integer no_segment;
	@Column
	private Integer indicateur_immo;
	@Column
	private String code_acheteur;
	@Column
	private Integer mem_mgfa;
	@Column
	private Integer mode_amo_spec_fisc;
	@Column
	private Integer mode_amo_eco;
	@Column
	private Integer duree_amo_eco;
	@Column
	private Integer mode_amo_spec_eco;
	@Column
	private Integer mode_amo_cpt;
	@Column
	private Integer duree_amo_cpt;
	@Column
	private Integer mode_amo_spec_cpt;
	@Column
	private Integer saisie_pvt;
	@Column
	private Integer exclus_workflow;
	@Column
	private Integer saisonnalite;
	@Column
	private Integer periode_saison1_1;
	@Column
	private Integer periode_saison1_2;
	@Column
	private Integer periode_saison2_1;
	@Column
	private Integer periode_saison2_2;
	@Column(precision = 3, scale = 1)
	private BigDecimal coeff_saison1;
	@Column(precision = 3, scale = 1)
	private BigDecimal coeff_saison2;
	@Column
	private String regroup_stat_loc;
	@Column
	private Integer asns_mgfa;
	@Column
	private Integer gsto_mgfa;
	@Column
	private Integer fid_mgfa;
	@Column
	private Integer achctrl_mgfa;
	@Column
	private Integer ebach_mgfa;
	public Integer get_gra_mgfa() {
		return gra_mgfa;
	}
	public Integer get_fam_mgfa() {
		return fam_mgfa;
	}
	public String get_libelle_fam_art() {
		return libelle_fam_art;
	}
	public String get_abrege_fam_art() {
		return abrege_fam_art;
	}
	public Integer get_nature_article() {
		return nature_article;
	}
	public Integer get_existence_garantie() {
		return existence_garantie;
	}
	public Integer get_type_garantie() {
		return type_garantie;
	}
	public Integer get_type_gtie_pieces() {
		return type_gtie_pieces;
	}
	public Integer get_duree_gtie_pieces() {
		return duree_gtie_pieces;
	}
	public Integer get_type_garantie_mo() {
		return type_garantie_mo;
	}
	public Integer get_duree_garantie_mo() {
		return duree_garantie_mo;
	}
	public String get_regroupement_stats() {
		return regroupement_stats;
	}
	public Integer get_poste_immos() {
		return poste_immos;
	}
	public Integer get_nature_immos() {
		return nature_immos;
	}
	public Integer get_mode_amortissement() {
		return mode_amortissement;
	}
	public Integer get_duree_amortissemen() {
		return duree_amortissemen;
	}
	public Integer get_division() {
		return division;
	}
	public Integer get_arr_mgfa() {
		return arr_mgfa;
	}
	public String get_libelle_tva_cee() {
		return libelle_tva_cee;
	}
	public BigDecimal get_pourcent_depreciat_1() {
		return pourcent_depreciat_1;
	}
	public BigDecimal get_pourcent_depreciat_2() {
		return pourcent_depreciat_2;
	}
	public BigDecimal get_pourcent_depreciat_3() {
		return pourcent_depreciat_3;
	}
	public BigDecimal get_pourcent_depreciat_4() {
		return pourcent_depreciat_4;
	}
	public BigDecimal get_pourcent_depreciat_5() {
		return pourcent_depreciat_5;
	}
	public Integer get_no_segment() {
		return no_segment;
	}
	public Integer get_indicateur_immo() {
		return indicateur_immo;
	}
	public String get_code_acheteur() {
		return code_acheteur;
	}
	public Integer get_mem_mgfa() {
		return mem_mgfa;
	}
	public Integer get_mode_amo_spec_fisc() {
		return mode_amo_spec_fisc;
	}
	public Integer get_mode_amo_eco() {
		return mode_amo_eco;
	}
	public Integer get_duree_amo_eco() {
		return duree_amo_eco;
	}
	public Integer get_mode_amo_spec_eco() {
		return mode_amo_spec_eco;
	}
	public Integer get_mode_amo_cpt() {
		return mode_amo_cpt;
	}
	public Integer get_duree_amo_cpt() {
		return duree_amo_cpt;
	}
	public Integer get_mode_amo_spec_cpt() {
		return mode_amo_spec_cpt;
	}
	public Integer get_saisie_pvt() {
		return saisie_pvt;
	}
	public Integer get_exclus_workflow() {
		return exclus_workflow;
	}
	public Integer get_saisonnalite() {
		return saisonnalite;
	}
	public Integer get_periode_saison1_1() {
		return periode_saison1_1;
	}
	public Integer get_periode_saison1_2() {
		return periode_saison1_2;
	}
	public Integer get_periode_saison2_1() {
		return periode_saison2_1;
	}
	public Integer get_periode_saison2_2() {
		return periode_saison2_2;
	}
	public BigDecimal get_coeff_saison1() {
		return coeff_saison1;
	}
	public BigDecimal get_coeff_saison2() {
		return coeff_saison2;
	}
	public String get_regroup_stat_loc() {
		return regroup_stat_loc;
	}
	public Integer get_asns_mgfa() {
		return asns_mgfa;
	}
	public Integer get_gsto_mgfa() {
		return gsto_mgfa;
	}
	public Integer get_fid_mgfa() {
		return fid_mgfa;
	}
	public Integer get_achctrl_mgfa() {
		return achctrl_mgfa;
	}
	public Integer get_ebach_mgfa() {
		return ebach_mgfa;
	}
	public void set_gra_mgfa(Integer gra_mgfa) {
		this.gra_mgfa = gra_mgfa;
	}
	public void set_fam_mgfa(Integer fam_mgfa) {
		this.fam_mgfa = fam_mgfa;
	}
	public void set_libelle_fam_art(String libelle_fam_art) {
		this.libelle_fam_art = libelle_fam_art;
	}
	public void set_abrege_fam_art(String abrege_fam_art) {
		this.abrege_fam_art = abrege_fam_art;
	}
	public void set_nature_article(Integer nature_article) {
		this.nature_article = nature_article;
	}
	public void set_existence_garantie(Integer existence_garantie) {
		this.existence_garantie = existence_garantie;
	}
	public void set_type_garantie(Integer type_garantie) {
		this.type_garantie = type_garantie;
	}
	public void set_type_gtie_pieces(Integer type_gtie_pieces) {
		this.type_gtie_pieces = type_gtie_pieces;
	}
	public void set_duree_gtie_pieces(Integer duree_gtie_pieces) {
		this.duree_gtie_pieces = duree_gtie_pieces;
	}
	public void set_type_garantie_mo(Integer type_garantie_mo) {
		this.type_garantie_mo = type_garantie_mo;
	}
	public void set_duree_garantie_mo(Integer duree_garantie_mo) {
		this.duree_garantie_mo = duree_garantie_mo;
	}
	public void set_regroupement_stats(String regroupement_stats) {
		this.regroupement_stats = regroupement_stats;
	}
	public void set_poste_immos(Integer poste_immos) {
		this.poste_immos = poste_immos;
	}
	public void set_nature_immos(Integer nature_immos) {
		this.nature_immos = nature_immos;
	}
	public void set_mode_amortissement(Integer mode_amortissement) {
		this.mode_amortissement = mode_amortissement;
	}
	public void set_duree_amortissemen(Integer duree_amortissemen) {
		this.duree_amortissemen = duree_amortissemen;
	}
	public void set_division(Integer division) {
		this.division = division;
	}
	public void set_arr_mgfa(Integer arr_mgfa) {
		this.arr_mgfa = arr_mgfa;
	}
	public void set_libelle_tva_cee(String libelle_tva_cee) {
		this.libelle_tva_cee = libelle_tva_cee;
	}
	public void set_pourcent_depreciat_1(BigDecimal pourcent_depreciat_1) {
		this.pourcent_depreciat_1 = pourcent_depreciat_1;
	}
	public void set_pourcent_depreciat_2(BigDecimal pourcent_depreciat_2) {
		this.pourcent_depreciat_2 = pourcent_depreciat_2;
	}
	public void set_pourcent_depreciat_3(BigDecimal pourcent_depreciat_3) {
		this.pourcent_depreciat_3 = pourcent_depreciat_3;
	}
	public void set_pourcent_depreciat_4(BigDecimal pourcent_depreciat_4) {
		this.pourcent_depreciat_4 = pourcent_depreciat_4;
	}
	public void set_pourcent_depreciat_5(BigDecimal pourcent_depreciat_5) {
		this.pourcent_depreciat_5 = pourcent_depreciat_5;
	}
	public void set_no_segment(Integer no_segment) {
		this.no_segment = no_segment;
	}
	public void set_indicateur_immo(Integer indicateur_immo) {
		this.indicateur_immo = indicateur_immo;
	}
	public void set_code_acheteur(String code_acheteur) {
		this.code_acheteur = code_acheteur;
	}
	public void set_mem_mgfa(Integer mem_mgfa) {
		this.mem_mgfa = mem_mgfa;
	}
	public void set_mode_amo_spec_fisc(Integer mode_amo_spec_fisc) {
		this.mode_amo_spec_fisc = mode_amo_spec_fisc;
	}
	public void set_mode_amo_eco(Integer mode_amo_eco) {
		this.mode_amo_eco = mode_amo_eco;
	}
	public void set_duree_amo_eco(Integer duree_amo_eco) {
		this.duree_amo_eco = duree_amo_eco;
	}
	public void set_mode_amo_spec_eco(Integer mode_amo_spec_eco) {
		this.mode_amo_spec_eco = mode_amo_spec_eco;
	}
	public void set_mode_amo_cpt(Integer mode_amo_cpt) {
		this.mode_amo_cpt = mode_amo_cpt;
	}
	public void set_duree_amo_cpt(Integer duree_amo_cpt) {
		this.duree_amo_cpt = duree_amo_cpt;
	}
	public void set_mode_amo_spec_cpt(Integer mode_amo_spec_cpt) {
		this.mode_amo_spec_cpt = mode_amo_spec_cpt;
	}
	public void set_saisie_pvt(Integer saisie_pvt) {
		this.saisie_pvt = saisie_pvt;
	}
	public void set_exclus_workflow(Integer exclus_workflow) {
		this.exclus_workflow = exclus_workflow;
	}
	public void set_saisonnalite(Integer saisonnalite) {
		this.saisonnalite = saisonnalite;
	}
	public void set_periode_saison1_1(Integer periode_saison1_1) {
		this.periode_saison1_1 = periode_saison1_1;
	}
	public void set_periode_saison1_2(Integer periode_saison1_2) {
		this.periode_saison1_2 = periode_saison1_2;
	}
	public void set_periode_saison2_1(Integer periode_saison2_1) {
		this.periode_saison2_1 = periode_saison2_1;
	}
	public void set_periode_saison2_2(Integer periode_saison2_2) {
		this.periode_saison2_2 = periode_saison2_2;
	}
	public void set_coeff_saison1(BigDecimal coeff_saison1) {
		this.coeff_saison1 = coeff_saison1;
	}
	public void set_coeff_saison2(BigDecimal coeff_saison2) {
		this.coeff_saison2 = coeff_saison2;
	}
	public void set_regroup_stat_loc(String regroup_stat_loc) {
		this.regroup_stat_loc = regroup_stat_loc;
	}
	public void set_asns_mgfa(Integer asns_mgfa) {
		this.asns_mgfa = asns_mgfa;
	}
	public void set_gsto_mgfa(Integer gsto_mgfa) {
		this.gsto_mgfa = gsto_mgfa;
	}
	public void set_fid_mgfa(Integer fid_mgfa) {
		this.fid_mgfa = fid_mgfa;
	}
	public void set_achctrl_mgfa(Integer achctrl_mgfa) {
		this.achctrl_mgfa = achctrl_mgfa;
	}
	public void set_ebach_mgfa(Integer ebach_mgfa) {
		this.ebach_mgfa = ebach_mgfa;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
