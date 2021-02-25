package fr.mistral.dataserver.model.mx;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(
indexes={
		@Index(name="idx_catfou_cle1_mctf", columnList="code_fournisseur,ref_fournisseur", unique=true),
		@Index(name="idx_catfou_cle2_mctf", columnList="code_fournisseur,designation1", unique=false)
})
public class CatFou implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long code_fournisseur;
	@Column
	private String ref_fournisseur;
	@Column
	private String designation1;
	@Column
	private String designation2;
	@Column(precision = 10, scale = 2)
	private BigDecimal prix_tarif;
	@Column
	private Integer indic_devise;
	@Column
	private String code_remise;
	@Column
	private String observations;
	@Column
	private Integer prix_modifie;
	@Column
	private Integer condt_achat;
	@Column
	private Long poids;
	@Column
	private Integer famille;
	@Column
	private Integer sous_famille;
	@Column(precision = 10, scale = 2)
	private BigDecimal prix_vente;
	@Column
	private String tva_mctf;
	@Column(precision = 9, scale = 2)
	private BigDecimal pa_tarif;
	@Column
	private String observation2;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_maj;
	@Column
	private String pay_mctf;
	public Long get_code_fournisseur() {
		return code_fournisseur;
	}
	public String get_ref_fournisseur() {
		return ref_fournisseur;
	}
	public String get_designation1() {
		return designation1;
	}
	public String get_designation2() {
		return designation2;
	}
	public BigDecimal get_prix_tarif() {
		return prix_tarif;
	}
	public Integer get_indic_devise() {
		return indic_devise;
	}
	public String get_code_remise() {
		return code_remise;
	}
	public String get_observations() {
		return observations;
	}
	public Integer get_prix_modifie() {
		return prix_modifie;
	}
	public Integer get_condt_achat() {
		return condt_achat;
	}
	public Long get_poids() {
		return poids;
	}
	public Integer get_famille() {
		return famille;
	}
	public Integer get_sous_famille() {
		return sous_famille;
	}
	public BigDecimal get_prix_vente() {
		return prix_vente;
	}
	public String get_tva_mctf() {
		return tva_mctf;
	}
	public BigDecimal get_pa_tarif() {
		return pa_tarif;
	}
	public String get_observation2() {
		return observation2;
	}
	public Date get_date_maj() {
		return date_maj;
	}
	public String get_pay_mctf() {
		return pay_mctf;
	}
	public void set_code_fournisseur(Long code_fournisseur) {
		this.code_fournisseur = code_fournisseur;
	}
	public void set_ref_fournisseur(String ref_fournisseur) {
		this.ref_fournisseur = ref_fournisseur;
	}
	public void set_designation1(String designation1) {
		this.designation1 = designation1;
	}
	public void set_designation2(String designation2) {
		this.designation2 = designation2;
	}
	public void set_prix_tarif(BigDecimal prix_tarif) {
		this.prix_tarif = prix_tarif;
	}
	public void set_indic_devise(Integer indic_devise) {
		this.indic_devise = indic_devise;
	}
	public void set_code_remise(String code_remise) {
		this.code_remise = code_remise;
	}
	public void set_observations(String observations) {
		this.observations = observations;
	}
	public void set_prix_modifie(Integer prix_modifie) {
		this.prix_modifie = prix_modifie;
	}
	public void set_condt_achat(Integer condt_achat) {
		this.condt_achat = condt_achat;
	}
	public void set_poids(Long poids) {
		this.poids = poids;
	}
	public void set_famille(Integer famille) {
		this.famille = famille;
	}
	public void set_sous_famille(Integer sous_famille) {
		this.sous_famille = sous_famille;
	}
	public void set_prix_vente(BigDecimal prix_vente) {
		this.prix_vente = prix_vente;
	}
	public void set_tva_mctf(String tva_mctf) {
		this.tva_mctf = tva_mctf;
	}
	public void set_pa_tarif(BigDecimal pa_tarif) {
		this.pa_tarif = pa_tarif;
	}
	public void set_observation2(String observation2) {
		this.observation2 = observation2;
	}
	public void set_date_maj(Date date_maj) {
		this.date_maj = date_maj;
	}
	public void set_pay_mctf(String pay_mctf) {
		this.pay_mctf = pay_mctf;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
