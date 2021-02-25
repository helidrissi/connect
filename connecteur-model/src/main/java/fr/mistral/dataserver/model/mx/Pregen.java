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
		@Index(name="idx_pregen_cle1_mpge", columnList="code_prestation", unique=true),
		@Index(name="idx_pregen_cle2_mpge", columnList="libelle_prestation", unique=false)
})
public class Pregen implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_prestation;
	@Column
	private String libelle_prestation;
	@Column
	private Integer indic_lib_modif;
	@Column
	private String abrege_prestation;
	@Column
	private Integer code_nature;
	@Column
	private Integer taux_tva;
	@Column
	private Integer taux_tva2;
	@Column
	private Integer taux_tva3;
	@Column
	private Integer code_suppression;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_suppression;
	@Column
	private String auteur_suppression;
	@Column
	private Integer depart_retour_domi;
	@Column
	private String code_regrpt_stats;
	@Column
	private Integer imprime_gras;
	@Column
	private Integer imprime_italique;
	@Column
	private Integer imprime_souligne;
	@Column
	private Long code_fournisseur;
	@Column
	private Integer exclus_workflow;
	@Column
	private Integer presta_reservee;
	@Column
	private Integer motif_activite;
	@Column
	private Integer autoliquidation;
	public String get_code_prestation() {
		return code_prestation;
	}
	public String get_libelle_prestation() {
		return libelle_prestation;
	}
	public Integer get_indic_lib_modif() {
		return indic_lib_modif;
	}
	public String get_abrege_prestation() {
		return abrege_prestation;
	}
	public Integer get_code_nature() {
		return code_nature;
	}
	public Integer get_taux_tva() {
		return taux_tva;
	}
	public Integer get_taux_tva2() {
		return taux_tva2;
	}
	public Integer get_taux_tva3() {
		return taux_tva3;
	}
	public Integer get_code_suppression() {
		return code_suppression;
	}
	public Date get_date_suppression() {
		return date_suppression;
	}
	public String get_auteur_suppression() {
		return auteur_suppression;
	}
	public Integer get_depart_retour_domi() {
		return depart_retour_domi;
	}
	public String get_code_regrpt_stats() {
		return code_regrpt_stats;
	}
	public Integer get_imprime_gras() {
		return imprime_gras;
	}
	public Integer get_imprime_italique() {
		return imprime_italique;
	}
	public Integer get_imprime_souligne() {
		return imprime_souligne;
	}
	public Long get_code_fournisseur() {
		return code_fournisseur;
	}
	public Integer get_exclus_workflow() {
		return exclus_workflow;
	}
	public Integer get_presta_reservee() {
		return presta_reservee;
	}
	public Integer get_motif_activite() {
		return motif_activite;
	}
	public Integer get_autoliquidation() {
		return autoliquidation;
	}
	public void set_code_prestation(String code_prestation) {
		this.code_prestation = code_prestation;
	}
	public void set_libelle_prestation(String libelle_prestation) {
		this.libelle_prestation = libelle_prestation;
	}
	public void set_indic_lib_modif(Integer indic_lib_modif) {
		this.indic_lib_modif = indic_lib_modif;
	}
	public void set_abrege_prestation(String abrege_prestation) {
		this.abrege_prestation = abrege_prestation;
	}
	public void set_code_nature(Integer code_nature) {
		this.code_nature = code_nature;
	}
	public void set_taux_tva(Integer taux_tva) {
		this.taux_tva = taux_tva;
	}
	public void set_taux_tva2(Integer taux_tva2) {
		this.taux_tva2 = taux_tva2;
	}
	public void set_taux_tva3(Integer taux_tva3) {
		this.taux_tva3 = taux_tva3;
	}
	public void set_code_suppression(Integer code_suppression) {
		this.code_suppression = code_suppression;
	}
	public void set_date_suppression(Date date_suppression) {
		this.date_suppression = date_suppression;
	}
	public void set_auteur_suppression(String auteur_suppression) {
		this.auteur_suppression = auteur_suppression;
	}
	public void set_depart_retour_domi(Integer depart_retour_domi) {
		this.depart_retour_domi = depart_retour_domi;
	}
	public void set_code_regrpt_stats(String code_regrpt_stats) {
		this.code_regrpt_stats = code_regrpt_stats;
	}
	public void set_imprime_gras(Integer imprime_gras) {
		this.imprime_gras = imprime_gras;
	}
	public void set_imprime_italique(Integer imprime_italique) {
		this.imprime_italique = imprime_italique;
	}
	public void set_imprime_souligne(Integer imprime_souligne) {
		this.imprime_souligne = imprime_souligne;
	}
	public void set_code_fournisseur(Long code_fournisseur) {
		this.code_fournisseur = code_fournisseur;
	}
	public void set_exclus_workflow(Integer exclus_workflow) {
		this.exclus_workflow = exclus_workflow;
	}
	public void set_presta_reservee(Integer presta_reservee) {
		this.presta_reservee = presta_reservee;
	}
	public void set_motif_activite(Integer motif_activite) {
		this.motif_activite = motif_activite;
	}
	public void set_autoliquidation(Integer autoliquidation) {
		this.autoliquidation = autoliquidation;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
