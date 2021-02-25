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
		@Index(name="idx_pregenv_cle1_mpgev", columnList="code_prestation", unique=true)
})
public class Pregenv implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_prestation;
	@Column
	private Integer mode_calcul;
	@Column
	private Integer mode_impression;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_achat;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_vente;
	@Column
	private Integer mode_calcul_pr;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_revient;
	@Column
	private Integer nombre_temps;
	@Column
	private Long date_maj_pa;
	@Column
	private Long date_maj_pv;
	@Column
	private Integer rubrique_tg_achats;
	@Column
	private Integer rubrique_tg_ventes;
	@Column
	private Integer soumis_escompte;
	@Column
	private Integer imput_cpt_mat;
	@Column
	private Integer edit_infos_mat;
	@Column
	private Integer gpa;
	@Column
	private Integer dgt_mpgev;
	public String get_code_prestation() {
		return code_prestation;
	}
	public Integer get_mode_calcul() {
		return mode_calcul;
	}
	public Integer get_mode_impression() {
		return mode_impression;
	}
	public BigDecimal get_prix_achat() {
		return prix_achat;
	}
	public BigDecimal get_prix_vente() {
		return prix_vente;
	}
	public Integer get_mode_calcul_pr() {
		return mode_calcul_pr;
	}
	public BigDecimal get_prix_revient() {
		return prix_revient;
	}
	public Integer get_nombre_temps() {
		return nombre_temps;
	}
	public Long get_date_maj_pa() {
		return date_maj_pa;
	}
	public Long get_date_maj_pv() {
		return date_maj_pv;
	}
	public Integer get_rubrique_tg_achats() {
		return rubrique_tg_achats;
	}
	public Integer get_rubrique_tg_ventes() {
		return rubrique_tg_ventes;
	}
	public Integer get_soumis_escompte() {
		return soumis_escompte;
	}
	public Integer get_imput_cpt_mat() {
		return imput_cpt_mat;
	}
	public Integer get_edit_infos_mat() {
		return edit_infos_mat;
	}
	public Integer get_gpa() {
		return gpa;
	}
	public Integer get_dgt_mpgev() {
		return dgt_mpgev;
	}
	public void set_code_prestation(String code_prestation) {
		this.code_prestation = code_prestation;
	}
	public void set_mode_calcul(Integer mode_calcul) {
		this.mode_calcul = mode_calcul;
	}
	public void set_mode_impression(Integer mode_impression) {
		this.mode_impression = mode_impression;
	}
	public void set_prix_achat(BigDecimal prix_achat) {
		this.prix_achat = prix_achat;
	}
	public void set_prix_vente(BigDecimal prix_vente) {
		this.prix_vente = prix_vente;
	}
	public void set_mode_calcul_pr(Integer mode_calcul_pr) {
		this.mode_calcul_pr = mode_calcul_pr;
	}
	public void set_prix_revient(BigDecimal prix_revient) {
		this.prix_revient = prix_revient;
	}
	public void set_nombre_temps(Integer nombre_temps) {
		this.nombre_temps = nombre_temps;
	}
	public void set_date_maj_pa(Long date_maj_pa) {
		this.date_maj_pa = date_maj_pa;
	}
	public void set_date_maj_pv(Long date_maj_pv) {
		this.date_maj_pv = date_maj_pv;
	}
	public void set_rubrique_tg_achats(Integer rubrique_tg_achats) {
		this.rubrique_tg_achats = rubrique_tg_achats;
	}
	public void set_rubrique_tg_ventes(Integer rubrique_tg_ventes) {
		this.rubrique_tg_ventes = rubrique_tg_ventes;
	}
	public void set_soumis_escompte(Integer soumis_escompte) {
		this.soumis_escompte = soumis_escompte;
	}
	public void set_imput_cpt_mat(Integer imput_cpt_mat) {
		this.imput_cpt_mat = imput_cpt_mat;
	}
	public void set_edit_infos_mat(Integer edit_infos_mat) {
		this.edit_infos_mat = edit_infos_mat;
	}
	public void set_gpa(Integer gpa) {
		this.gpa = gpa;
	}
	public void set_dgt_mpgev(Integer dgt_mpgev) {
		this.dgt_mpgev = dgt_mpgev;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
