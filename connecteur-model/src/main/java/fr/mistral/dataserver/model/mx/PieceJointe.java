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
		@Index(name="idx_piecejointe_cle1_att", columnList="no_ordre", unique=true),
		@Index(name="idx_piecejointe_cle2_att", columnList="no_societe,origine,cle,ran", unique=false)
})
public class PieceJointe implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long no_ordre;
	@Column
	private Integer no_societe;
	@Column
	private String origine;
	@Column
	private String cle;
	@Column
	private Integer ran;
	@Column
	private String titre;
	@Column
	private String commentaire;
	@Column
	private String mime_type;
	@Column
	private String nom_fichier;
	@Column
	private String auteur_creation;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_creation;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_modif;
	@Column
	private String origine_mobitec_mo;
	@Column
	private Integer doc_non_transmis;
	@Column(precision = 4, scale = 2)
	private BigDecimal heure_signature;
	@Column
	private String xml_signature;
	@Column
	private Long cli_att;
	@Column
	private Long cdv_att;
	@Column
	private Long itc_att;
	@Column
	private Integer sigi_att;
	@Column
	private Integer ligb_att;
	public Long get_no_ordre() {
		return no_ordre;
	}
	public Integer get_no_societe() {
		return no_societe;
	}
	public String get_origine() {
		return origine;
	}
	public String get_cle() {
		return cle;
	}
	public Integer get_ran() {
		return ran;
	}
	public String get_titre() {
		return titre;
	}
	public String get_commentaire() {
		return commentaire;
	}
	public String get_mime_type() {
		return mime_type;
	}
	public String get_nom_fichier() {
		return nom_fichier;
	}
	public String get_auteur_creation() {
		return auteur_creation;
	}
	public Date get_date_creation() {
		return date_creation;
	}
	public Date get_date_modif() {
		return date_modif;
	}
	public String get_origine_mobitec_mo() {
		return origine_mobitec_mo;
	}
	public Integer get_doc_non_transmis() {
		return doc_non_transmis;
	}
	public BigDecimal get_heure_signature() {
		return heure_signature;
	}
	public String get_xml_signature() {
		return xml_signature;
	}
	public Long get_cli_att() {
		return cli_att;
	}
	public Long get_cdv_att() {
		return cdv_att;
	}
	public Long get_itc_att() {
		return itc_att;
	}
	public Integer get_sigi_att() {
		return sigi_att;
	}
	public Integer get_ligb_att() {
		return ligb_att;
	}
	public void set_no_ordre(Long no_ordre) {
		this.no_ordre = no_ordre;
	}
	public void set_no_societe(Integer no_societe) {
		this.no_societe = no_societe;
	}
	public void set_origine(String origine) {
		this.origine = origine;
	}
	public void set_cle(String cle) {
		this.cle = cle;
	}
	public void set_ran(Integer ran) {
		this.ran = ran;
	}
	public void set_titre(String titre) {
		this.titre = titre;
	}
	public void set_commentaire(String commentaire) {
		this.commentaire = commentaire;
	}
	public void set_mime_type(String mime_type) {
		this.mime_type = mime_type;
	}
	public void set_nom_fichier(String nom_fichier) {
		this.nom_fichier = nom_fichier;
	}
	public void set_auteur_creation(String auteur_creation) {
		this.auteur_creation = auteur_creation;
	}
	public void set_date_creation(Date date_creation) {
		this.date_creation = date_creation;
	}
	public void set_date_modif(Date date_modif) {
		this.date_modif = date_modif;
	}
	public void set_origine_mobitec_mo(String origine_mobitec_mo) {
		this.origine_mobitec_mo = origine_mobitec_mo;
	}
	public void set_doc_non_transmis(Integer doc_non_transmis) {
		this.doc_non_transmis = doc_non_transmis;
	}
	public void set_heure_signature(BigDecimal heure_signature) {
		this.heure_signature = heure_signature;
	}
	public void set_xml_signature(String xml_signature) {
		this.xml_signature = xml_signature;
	}
	public void set_cli_att(Long cli_att) {
		this.cli_att = cli_att;
	}
	public void set_cdv_att(Long cdv_att) {
		this.cdv_att = cdv_att;
	}
	public void set_itc_att(Long itc_att) {
		this.itc_att = itc_att;
	}
	public void set_sigi_att(Integer sigi_att) {
		this.sigi_att = sigi_att;
	}
	public void set_ligb_att(Integer ligb_att) {
		this.ligb_att = ligb_att;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
