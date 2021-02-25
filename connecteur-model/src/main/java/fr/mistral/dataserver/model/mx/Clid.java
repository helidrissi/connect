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
		@Index(name="idx_clid_cle1_mcld", columnList="code_client,code_gpe_tarif_dis", unique=true)
})
public class Clid implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long code_client;
	@Column
	private String code_gpe_tarif_dis;
	@Column
	private Integer indic_frais_fact_d;
	@Column
	private Integer indic_cde_ar_dis;
	@Column
	private Integer indic_facture_dis;
	@Column
	private Integer indic_remis_fact_d;
	@Column
	private Integer indic_bl_chiffre_d;
	@Column
	private Integer nb_duplicata_bon_d;
	@Column
	private Integer nb_duplicata_fac_d;
	@Column
	private String code_cial_dis;
	@Column
	private String no_msg_saisi_cde_d;
	@Column
	private String no_msg_saisie_bl_d;
	@Column
	private Integer indic_base_fact_d;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_dis;
	@Column(precision = 5, scale = 3)
	private BigDecimal coefficient_dis;
	@Column
	private Integer code_paiement_dis;
	@Column
	private Integer code_echeance_dis;
	@Column
	private Integer code_terme_dis;
	@Column
	private Integer affect_fiscale_dis;
	@Column
	private String code_grille_rem_d;
	@Column
	private Integer indic_port_usine_d;
	@Column
	private Integer indic_edi_codart_d;
	@Column(precision = 4, scale = 2)
	private BigDecimal escompte_dis;
	@Column
	private Integer old_code_ref_article_d;
	@Column
	private String code_lib_edi_fac_d;
	@Column
	private Integer indic_modif_3e_des;
	@Column
	private Integer indic_edi_art_cdes;
	@Column
	private Integer indic_demat;
	@Column
	private Integer code_fact_lsd;
	@Column
	private String no_tarif_spec1_dis;
	@Column
	private String no_tarif_spec2_dis;
	@Column
	private Integer indic_1_fac_mois_d;
	@Column
	private Integer indic_port;
	@Column
	private String no_tarif_spe_mo_d;
	@Column
	private Long mont_franco_port;
	@Column
	private Integer soumis_mini_webtop;
	@Column
	private Integer mise_att_bl;
	@Column
	private Integer fac_obligatoire;
	@Column
	private Integer code_ref_article_d;
	@Column
	private Integer impression_nom_entete_bl;
	public Long get_code_client() {
		return code_client;
	}
	public String get_code_gpe_tarif_dis() {
		return code_gpe_tarif_dis;
	}
	public Integer get_indic_frais_fact_d() {
		return indic_frais_fact_d;
	}
	public Integer get_indic_cde_ar_dis() {
		return indic_cde_ar_dis;
	}
	public Integer get_indic_facture_dis() {
		return indic_facture_dis;
	}
	public Integer get_indic_remis_fact_d() {
		return indic_remis_fact_d;
	}
	public Integer get_indic_bl_chiffre_d() {
		return indic_bl_chiffre_d;
	}
	public Integer get_nb_duplicata_bon_d() {
		return nb_duplicata_bon_d;
	}
	public Integer get_nb_duplicata_fac_d() {
		return nb_duplicata_fac_d;
	}
	public String get_code_cial_dis() {
		return code_cial_dis;
	}
	public String get_no_msg_saisi_cde_d() {
		return no_msg_saisi_cde_d;
	}
	public String get_no_msg_saisie_bl_d() {
		return no_msg_saisie_bl_d;
	}
	public Integer get_indic_base_fact_d() {
		return indic_base_fact_d;
	}
	public BigDecimal get_remise_dis() {
		return remise_dis;
	}
	public BigDecimal get_coefficient_dis() {
		return coefficient_dis;
	}
	public Integer get_code_paiement_dis() {
		return code_paiement_dis;
	}
	public Integer get_code_echeance_dis() {
		return code_echeance_dis;
	}
	public Integer get_code_terme_dis() {
		return code_terme_dis;
	}
	public Integer get_affect_fiscale_dis() {
		return affect_fiscale_dis;
	}
	public String get_code_grille_rem_d() {
		return code_grille_rem_d;
	}
	public Integer get_indic_port_usine_d() {
		return indic_port_usine_d;
	}
	public Integer get_indic_edi_codart_d() {
		return indic_edi_codart_d;
	}
	public BigDecimal get_escompte_dis() {
		return escompte_dis;
	}
	public Integer get_old_code_ref_article_d() {
		return old_code_ref_article_d;
	}
	public String get_code_lib_edi_fac_d() {
		return code_lib_edi_fac_d;
	}
	public Integer get_indic_modif_3e_des() {
		return indic_modif_3e_des;
	}
	public Integer get_indic_edi_art_cdes() {
		return indic_edi_art_cdes;
	}
	public Integer get_indic_demat() {
		return indic_demat;
	}
	public Integer get_code_fact_lsd() {
		return code_fact_lsd;
	}
	public String get_no_tarif_spec1_dis() {
		return no_tarif_spec1_dis;
	}
	public String get_no_tarif_spec2_dis() {
		return no_tarif_spec2_dis;
	}
	public Integer get_indic_1_fac_mois_d() {
		return indic_1_fac_mois_d;
	}
	public Integer get_indic_port() {
		return indic_port;
	}
	public String get_no_tarif_spe_mo_d() {
		return no_tarif_spe_mo_d;
	}
	public Long get_mont_franco_port() {
		return mont_franco_port;
	}
	public Integer get_soumis_mini_webtop() {
		return soumis_mini_webtop;
	}
	public Integer get_mise_att_bl() {
		return mise_att_bl;
	}
	public Integer get_fac_obligatoire() {
		return fac_obligatoire;
	}
	public Integer get_code_ref_article_d() {
		return code_ref_article_d;
	}
	public Integer get_impression_nom_entete_bl() {
		return impression_nom_entete_bl;
	}
	public void set_code_client(Long code_client) {
		this.code_client = code_client;
	}
	public void set_code_gpe_tarif_dis(String code_gpe_tarif_dis) {
		this.code_gpe_tarif_dis = code_gpe_tarif_dis;
	}
	public void set_indic_frais_fact_d(Integer indic_frais_fact_d) {
		this.indic_frais_fact_d = indic_frais_fact_d;
	}
	public void set_indic_cde_ar_dis(Integer indic_cde_ar_dis) {
		this.indic_cde_ar_dis = indic_cde_ar_dis;
	}
	public void set_indic_facture_dis(Integer indic_facture_dis) {
		this.indic_facture_dis = indic_facture_dis;
	}
	public void set_indic_remis_fact_d(Integer indic_remis_fact_d) {
		this.indic_remis_fact_d = indic_remis_fact_d;
	}
	public void set_indic_bl_chiffre_d(Integer indic_bl_chiffre_d) {
		this.indic_bl_chiffre_d = indic_bl_chiffre_d;
	}
	public void set_nb_duplicata_bon_d(Integer nb_duplicata_bon_d) {
		this.nb_duplicata_bon_d = nb_duplicata_bon_d;
	}
	public void set_nb_duplicata_fac_d(Integer nb_duplicata_fac_d) {
		this.nb_duplicata_fac_d = nb_duplicata_fac_d;
	}
	public void set_code_cial_dis(String code_cial_dis) {
		this.code_cial_dis = code_cial_dis;
	}
	public void set_no_msg_saisi_cde_d(String no_msg_saisi_cde_d) {
		this.no_msg_saisi_cde_d = no_msg_saisi_cde_d;
	}
	public void set_no_msg_saisie_bl_d(String no_msg_saisie_bl_d) {
		this.no_msg_saisie_bl_d = no_msg_saisie_bl_d;
	}
	public void set_indic_base_fact_d(Integer indic_base_fact_d) {
		this.indic_base_fact_d = indic_base_fact_d;
	}
	public void set_remise_dis(BigDecimal remise_dis) {
		this.remise_dis = remise_dis;
	}
	public void set_coefficient_dis(BigDecimal coefficient_dis) {
		this.coefficient_dis = coefficient_dis;
	}
	public void set_code_paiement_dis(Integer code_paiement_dis) {
		this.code_paiement_dis = code_paiement_dis;
	}
	public void set_code_echeance_dis(Integer code_echeance_dis) {
		this.code_echeance_dis = code_echeance_dis;
	}
	public void set_code_terme_dis(Integer code_terme_dis) {
		this.code_terme_dis = code_terme_dis;
	}
	public void set_affect_fiscale_dis(Integer affect_fiscale_dis) {
		this.affect_fiscale_dis = affect_fiscale_dis;
	}
	public void set_code_grille_rem_d(String code_grille_rem_d) {
		this.code_grille_rem_d = code_grille_rem_d;
	}
	public void set_indic_port_usine_d(Integer indic_port_usine_d) {
		this.indic_port_usine_d = indic_port_usine_d;
	}
	public void set_indic_edi_codart_d(Integer indic_edi_codart_d) {
		this.indic_edi_codart_d = indic_edi_codart_d;
	}
	public void set_escompte_dis(BigDecimal escompte_dis) {
		this.escompte_dis = escompte_dis;
	}
	public void set_old_code_ref_article_d(Integer old_code_ref_article_d) {
		this.old_code_ref_article_d = old_code_ref_article_d;
	}
	public void set_code_lib_edi_fac_d(String code_lib_edi_fac_d) {
		this.code_lib_edi_fac_d = code_lib_edi_fac_d;
	}
	public void set_indic_modif_3e_des(Integer indic_modif_3e_des) {
		this.indic_modif_3e_des = indic_modif_3e_des;
	}
	public void set_indic_edi_art_cdes(Integer indic_edi_art_cdes) {
		this.indic_edi_art_cdes = indic_edi_art_cdes;
	}
	public void set_indic_demat(Integer indic_demat) {
		this.indic_demat = indic_demat;
	}
	public void set_code_fact_lsd(Integer code_fact_lsd) {
		this.code_fact_lsd = code_fact_lsd;
	}
	public void set_no_tarif_spec1_dis(String no_tarif_spec1_dis) {
		this.no_tarif_spec1_dis = no_tarif_spec1_dis;
	}
	public void set_no_tarif_spec2_dis(String no_tarif_spec2_dis) {
		this.no_tarif_spec2_dis = no_tarif_spec2_dis;
	}
	public void set_indic_1_fac_mois_d(Integer indic_1_fac_mois_d) {
		this.indic_1_fac_mois_d = indic_1_fac_mois_d;
	}
	public void set_indic_port(Integer indic_port) {
		this.indic_port = indic_port;
	}
	public void set_no_tarif_spe_mo_d(String no_tarif_spe_mo_d) {
		this.no_tarif_spe_mo_d = no_tarif_spe_mo_d;
	}
	public void set_mont_franco_port(Long mont_franco_port) {
		this.mont_franco_port = mont_franco_port;
	}
	public void set_soumis_mini_webtop(Integer soumis_mini_webtop) {
		this.soumis_mini_webtop = soumis_mini_webtop;
	}
	public void set_mise_att_bl(Integer mise_att_bl) {
		this.mise_att_bl = mise_att_bl;
	}
	public void set_fac_obligatoire(Integer fac_obligatoire) {
		this.fac_obligatoire = fac_obligatoire;
	}
	public void set_code_ref_article_d(Integer code_ref_article_d) {
		this.code_ref_article_d = code_ref_article_d;
	}
	public void set_impression_nom_entete_bl(Integer impression_nom_entete_bl) {
		this.impression_nom_entete_bl = impression_nom_entete_bl;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
