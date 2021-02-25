package fr.mistral.dataserver.model.mx;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(
indexes={
		@Index(name="idx_classification_cle1_attc", columnList="no_classificaton", unique=true),
		@Index(name="idx_classification_cle2_attc", columnList="origine,no_classificaton", unique=true)
})
public class Classification implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Integer no_classificaton;
	@Column
	private String origine;
	@Column
	private String libelle;
	@Column
	private Integer synchro_mobivip;
	@Column
	private Integer par_defaut;
	@Column
	private Integer supprime_vente;
	@Column
	private Integer photo;
	@Column
	private Integer synchro_mobitec;
	@Column
	private Integer plan_prevention;
	@Column
	private Integer fiche_interv;
	@Column
	private Integer facture;
	@Column
	private Integer check_list;
	@Column
	private Integer visible_web;
	@Column
	private Integer controle_tech;
	@Column
	private Integer exp_materiel;
	@Column
	private Integer synchro_mobimag;
	@Column
	private Integer vgp;
	@Column
	private Integer reserve_societe;
	@Column
	private Integer no_societe;
	@Column
	private Integer envoi_mail_facture;
	@Column
	private Integer envoi_mail_bon;
	@Column
	private Integer synchro_mobitrans;
	@Column
	private Integer cx_attc;
	@Column
	private Integer pepm_attc;
	@Column
	private Integer sig_attc;
	@Column
	private Integer spe_attc;
	public Integer get_no_classificaton() {
		return no_classificaton;
	}
	public String get_origine() {
		return origine;
	}
	public String get_libelle() {
		return libelle;
	}
	public Integer get_synchro_mobivip() {
		return synchro_mobivip;
	}
	public Integer get_par_defaut() {
		return par_defaut;
	}
	public Integer get_supprime_vente() {
		return supprime_vente;
	}
	public Integer get_photo() {
		return photo;
	}
	public Integer get_synchro_mobitec() {
		return synchro_mobitec;
	}
	public Integer get_plan_prevention() {
		return plan_prevention;
	}
	public Integer get_fiche_interv() {
		return fiche_interv;
	}
	public Integer get_facture() {
		return facture;
	}
	public Integer get_check_list() {
		return check_list;
	}
	public Integer get_visible_web() {
		return visible_web;
	}
	public Integer get_controle_tech() {
		return controle_tech;
	}
	public Integer get_exp_materiel() {
		return exp_materiel;
	}
	public Integer get_synchro_mobimag() {
		return synchro_mobimag;
	}
	public Integer get_vgp() {
		return vgp;
	}
	public Integer get_reserve_societe() {
		return reserve_societe;
	}
	public Integer get_no_societe() {
		return no_societe;
	}
	public Integer get_envoi_mail_facture() {
		return envoi_mail_facture;
	}
	public Integer get_envoi_mail_bon() {
		return envoi_mail_bon;
	}
	public Integer get_synchro_mobitrans() {
		return synchro_mobitrans;
	}
	public Integer get_cx_attc() {
		return cx_attc;
	}
	public Integer get_pepm_attc() {
		return pepm_attc;
	}
	public Integer get_sig_attc() {
		return sig_attc;
	}
	public Integer get_spe_attc() {
		return spe_attc;
	}
	public void set_no_classificaton(Integer no_classificaton) {
		this.no_classificaton = no_classificaton;
	}
	public void set_origine(String origine) {
		this.origine = origine;
	}
	public void set_libelle(String libelle) {
		this.libelle = libelle;
	}
	public void set_synchro_mobivip(Integer synchro_mobivip) {
		this.synchro_mobivip = synchro_mobivip;
	}
	public void set_par_defaut(Integer par_defaut) {
		this.par_defaut = par_defaut;
	}
	public void set_supprime_vente(Integer supprime_vente) {
		this.supprime_vente = supprime_vente;
	}
	public void set_photo(Integer photo) {
		this.photo = photo;
	}
	public void set_synchro_mobitec(Integer synchro_mobitec) {
		this.synchro_mobitec = synchro_mobitec;
	}
	public void set_plan_prevention(Integer plan_prevention) {
		this.plan_prevention = plan_prevention;
	}
	public void set_fiche_interv(Integer fiche_interv) {
		this.fiche_interv = fiche_interv;
	}
	public void set_facture(Integer facture) {
		this.facture = facture;
	}
	public void set_check_list(Integer check_list) {
		this.check_list = check_list;
	}
	public void set_visible_web(Integer visible_web) {
		this.visible_web = visible_web;
	}
	public void set_controle_tech(Integer controle_tech) {
		this.controle_tech = controle_tech;
	}
	public void set_exp_materiel(Integer exp_materiel) {
		this.exp_materiel = exp_materiel;
	}
	public void set_synchro_mobimag(Integer synchro_mobimag) {
		this.synchro_mobimag = synchro_mobimag;
	}
	public void set_vgp(Integer vgp) {
		this.vgp = vgp;
	}
	public void set_reserve_societe(Integer reserve_societe) {
		this.reserve_societe = reserve_societe;
	}
	public void set_no_societe(Integer no_societe) {
		this.no_societe = no_societe;
	}
	public void set_envoi_mail_facture(Integer envoi_mail_facture) {
		this.envoi_mail_facture = envoi_mail_facture;
	}
	public void set_envoi_mail_bon(Integer envoi_mail_bon) {
		this.envoi_mail_bon = envoi_mail_bon;
	}
	public void set_synchro_mobitrans(Integer synchro_mobitrans) {
		this.synchro_mobitrans = synchro_mobitrans;
	}
	public void set_cx_attc(Integer cx_attc) {
		this.cx_attc = cx_attc;
	}
	public void set_pepm_attc(Integer pepm_attc) {
		this.pepm_attc = pepm_attc;
	}
	public void set_sig_attc(Integer sig_attc) {
		this.sig_attc = sig_attc;
	}
	public void set_spe_attc(Integer spe_attc) {
		this.spe_attc = spe_attc;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
