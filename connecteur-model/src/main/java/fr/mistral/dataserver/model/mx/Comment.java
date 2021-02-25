package fr.mistral.dataserver.model.mx;

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
		@Index(name="idx_comment_cle1_mcmo", columnList="origine,cle_fichier", unique=true)
})
public class Comment implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String origine;
	@Column
	private String cle_fichier;
	@Column
	private String libelle;
	@Column
	private Integer edition_ar;
	@Column
	private Integer edition_bl;
	@Column
	private Integer edition_fac;
	@Column
	private Integer edition_bp;
	@Column
	private Integer nb_lignes;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_acompte;
	@Column
	private Integer ss_total;
	@Column
	private String motif_refus;
	@Column
	private Long compteur2_depart_reservation_mobistac;
	@Column
	private Integer litres_depart_reservation_mobistac;
	public String get_origine() {
		return origine;
	}
	public String get_cle_fichier() {
		return cle_fichier;
	}
	public String get_libelle() {
		return libelle;
	}
	public Integer get_edition_ar() {
		return edition_ar;
	}
	public Integer get_edition_bl() {
		return edition_bl;
	}
	public Integer get_edition_fac() {
		return edition_fac;
	}
	public Integer get_edition_bp() {
		return edition_bp;
	}
	public Integer get_nb_lignes() {
		return nb_lignes;
	}
	public Date get_date_acompte() {
		return date_acompte;
	}
	public Integer get_ss_total() {
		return ss_total;
	}
	public String get_motif_refus() {
		return motif_refus;
	}
	public Long get_compteur2_depart_reservation_mobistac() {
		return compteur2_depart_reservation_mobistac;
	}
	public Integer get_litres_depart_reservation_mobistac() {
		return litres_depart_reservation_mobistac;
	}
	public void set_origine(String origine) {
		this.origine = origine;
	}
	public void set_cle_fichier(String cle_fichier) {
		this.cle_fichier = cle_fichier;
	}
	public void set_libelle(String libelle) {
		this.libelle = libelle;
	}
	public void set_edition_ar(Integer edition_ar) {
		this.edition_ar = edition_ar;
	}
	public void set_edition_bl(Integer edition_bl) {
		this.edition_bl = edition_bl;
	}
	public void set_edition_fac(Integer edition_fac) {
		this.edition_fac = edition_fac;
	}
	public void set_edition_bp(Integer edition_bp) {
		this.edition_bp = edition_bp;
	}
	public void set_nb_lignes(Integer nb_lignes) {
		this.nb_lignes = nb_lignes;
	}
	public void set_date_acompte(Date date_acompte) {
		this.date_acompte = date_acompte;
	}
	public void set_ss_total(Integer ss_total) {
		this.ss_total = ss_total;
	}
	public void set_motif_refus(String motif_refus) {
		this.motif_refus = motif_refus;
	}
	public void set_compteur2_depart_reservation_mobistac(Long compteur2_depart_reservation_mobistac) {
		this.compteur2_depart_reservation_mobistac = compteur2_depart_reservation_mobistac;
	}
	public void set_litres_depart_reservation_mobistac(Integer litres_depart_reservation_mobistac) {
		this.litres_depart_reservation_mobistac = litres_depart_reservation_mobistac;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
