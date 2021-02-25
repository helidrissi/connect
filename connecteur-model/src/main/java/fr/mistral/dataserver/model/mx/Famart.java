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
		@Index(name="idx_famart_cle1_mfam", columnList="code_famille_art,code_sous_fam_art", unique=true)
})
public class Famart implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Integer code_famille_art;
	@Column
	private Integer code_sous_fam_art;
	@Column(precision = 5, scale = 3)
	private BigDecimal coefficient_famart;
	@Column(precision = 4, scale = 2)
	private BigDecimal taux_marque;
	@Column
	private Integer indic_taux_marque;
	@Column
	private Integer code_tva_famart;
	@Column
	private Integer code_tva2_famart;
	@Column
	private Integer code_tva3_famart;
	@Column
	private Integer indic_poids;
	@Column
	private Integer indic_volume;
	@Column
	private Integer indic_fua;
	@Column(precision = 6, scale = 2)
	private BigDecimal valeur_fua;
	@Column
	private Integer indic_tarif_cols;
	@Column
	private Integer coefficient_fua;
	@Column(precision = 4, scale = 3)
	private BigDecimal coeff_standard_fua;
	@Column
	private Integer referenct_famart;
	@Column
	private Integer indic_gest_stock;
	@Column
	private Integer indic_post_usine;
	@Column
	private Integer code_etiquette;
	@Column
	private Integer indic_remise_compl;
	@Column
	private Integer indic_soumis_agent;
	@Column
	private Integer indic_prix;
	@Column
	private String type_etiquette;
	@Column
	private Integer indic_gestion_lots;
	@Column
	private Integer no_poste_gest_vte;
	@Column
	private Integer total_sur_facture;
	@Column
	private Integer taxe_specif;
	@Column
	private Integer code_remise_client;
	@Column(precision = 4, scale = 2)
	private BigDecimal pct_marge_mini;
	@Column(precision = 4, scale = 2)
	private BigDecimal pct_marge_maxi;
	@Column(precision = 4, scale = 2)
	private BigDecimal pct_marge_plancher;
	@Column(precision = 3, scale = 2)
	private BigDecimal minoration_av_conc;
	@Column(precision = 3, scale = 2)
	private BigDecimal majoration_ss_conc;
	@Column
	private Integer indic_web;
	@Column(precision = 5, scale = 3)
	private BigDecimal coet_mfam;
	public Integer get_code_famille_art() {
		return code_famille_art;
	}
	public Integer get_code_sous_fam_art() {
		return code_sous_fam_art;
	}
	public BigDecimal get_coefficient_famart() {
		return coefficient_famart;
	}
	public BigDecimal get_taux_marque() {
		return taux_marque;
	}
	public Integer get_indic_taux_marque() {
		return indic_taux_marque;
	}
	public Integer get_code_tva_famart() {
		return code_tva_famart;
	}
	public Integer get_code_tva2_famart() {
		return code_tva2_famart;
	}
	public Integer get_code_tva3_famart() {
		return code_tva3_famart;
	}
	public Integer get_indic_poids() {
		return indic_poids;
	}
	public Integer get_indic_volume() {
		return indic_volume;
	}
	public Integer get_indic_fua() {
		return indic_fua;
	}
	public BigDecimal get_valeur_fua() {
		return valeur_fua;
	}
	public Integer get_indic_tarif_cols() {
		return indic_tarif_cols;
	}
	public Integer get_coefficient_fua() {
		return coefficient_fua;
	}
	public BigDecimal get_coeff_standard_fua() {
		return coeff_standard_fua;
	}
	public Integer get_referenct_famart() {
		return referenct_famart;
	}
	public Integer get_indic_gest_stock() {
		return indic_gest_stock;
	}
	public Integer get_indic_post_usine() {
		return indic_post_usine;
	}
	public Integer get_code_etiquette() {
		return code_etiquette;
	}
	public Integer get_indic_remise_compl() {
		return indic_remise_compl;
	}
	public Integer get_indic_soumis_agent() {
		return indic_soumis_agent;
	}
	public Integer get_indic_prix() {
		return indic_prix;
	}
	public String get_type_etiquette() {
		return type_etiquette;
	}
	public Integer get_indic_gestion_lots() {
		return indic_gestion_lots;
	}
	public Integer get_no_poste_gest_vte() {
		return no_poste_gest_vte;
	}
	public Integer get_total_sur_facture() {
		return total_sur_facture;
	}
	public Integer get_taxe_specif() {
		return taxe_specif;
	}
	public Integer get_code_remise_client() {
		return code_remise_client;
	}
	public BigDecimal get_pct_marge_mini() {
		return pct_marge_mini;
	}
	public BigDecimal get_pct_marge_maxi() {
		return pct_marge_maxi;
	}
	public BigDecimal get_pct_marge_plancher() {
		return pct_marge_plancher;
	}
	public BigDecimal get_minoration_av_conc() {
		return minoration_av_conc;
	}
	public BigDecimal get_majoration_ss_conc() {
		return majoration_ss_conc;
	}
	public Integer get_indic_web() {
		return indic_web;
	}
	public BigDecimal get_coet_mfam() {
		return coet_mfam;
	}
	public void set_code_famille_art(Integer code_famille_art) {
		this.code_famille_art = code_famille_art;
	}
	public void set_code_sous_fam_art(Integer code_sous_fam_art) {
		this.code_sous_fam_art = code_sous_fam_art;
	}
	public void set_coefficient_famart(BigDecimal coefficient_famart) {
		this.coefficient_famart = coefficient_famart;
	}
	public void set_taux_marque(BigDecimal taux_marque) {
		this.taux_marque = taux_marque;
	}
	public void set_indic_taux_marque(Integer indic_taux_marque) {
		this.indic_taux_marque = indic_taux_marque;
	}
	public void set_code_tva_famart(Integer code_tva_famart) {
		this.code_tva_famart = code_tva_famart;
	}
	public void set_code_tva2_famart(Integer code_tva2_famart) {
		this.code_tva2_famart = code_tva2_famart;
	}
	public void set_code_tva3_famart(Integer code_tva3_famart) {
		this.code_tva3_famart = code_tva3_famart;
	}
	public void set_indic_poids(Integer indic_poids) {
		this.indic_poids = indic_poids;
	}
	public void set_indic_volume(Integer indic_volume) {
		this.indic_volume = indic_volume;
	}
	public void set_indic_fua(Integer indic_fua) {
		this.indic_fua = indic_fua;
	}
	public void set_valeur_fua(BigDecimal valeur_fua) {
		this.valeur_fua = valeur_fua;
	}
	public void set_indic_tarif_cols(Integer indic_tarif_cols) {
		this.indic_tarif_cols = indic_tarif_cols;
	}
	public void set_coefficient_fua(Integer coefficient_fua) {
		this.coefficient_fua = coefficient_fua;
	}
	public void set_coeff_standard_fua(BigDecimal coeff_standard_fua) {
		this.coeff_standard_fua = coeff_standard_fua;
	}
	public void set_referenct_famart(Integer referenct_famart) {
		this.referenct_famart = referenct_famart;
	}
	public void set_indic_gest_stock(Integer indic_gest_stock) {
		this.indic_gest_stock = indic_gest_stock;
	}
	public void set_indic_post_usine(Integer indic_post_usine) {
		this.indic_post_usine = indic_post_usine;
	}
	public void set_code_etiquette(Integer code_etiquette) {
		this.code_etiquette = code_etiquette;
	}
	public void set_indic_remise_compl(Integer indic_remise_compl) {
		this.indic_remise_compl = indic_remise_compl;
	}
	public void set_indic_soumis_agent(Integer indic_soumis_agent) {
		this.indic_soumis_agent = indic_soumis_agent;
	}
	public void set_indic_prix(Integer indic_prix) {
		this.indic_prix = indic_prix;
	}
	public void set_type_etiquette(String type_etiquette) {
		this.type_etiquette = type_etiquette;
	}
	public void set_indic_gestion_lots(Integer indic_gestion_lots) {
		this.indic_gestion_lots = indic_gestion_lots;
	}
	public void set_no_poste_gest_vte(Integer no_poste_gest_vte) {
		this.no_poste_gest_vte = no_poste_gest_vte;
	}
	public void set_total_sur_facture(Integer total_sur_facture) {
		this.total_sur_facture = total_sur_facture;
	}
	public void set_taxe_specif(Integer taxe_specif) {
		this.taxe_specif = taxe_specif;
	}
	public void set_code_remise_client(Integer code_remise_client) {
		this.code_remise_client = code_remise_client;
	}
	public void set_pct_marge_mini(BigDecimal pct_marge_mini) {
		this.pct_marge_mini = pct_marge_mini;
	}
	public void set_pct_marge_maxi(BigDecimal pct_marge_maxi) {
		this.pct_marge_maxi = pct_marge_maxi;
	}
	public void set_pct_marge_plancher(BigDecimal pct_marge_plancher) {
		this.pct_marge_plancher = pct_marge_plancher;
	}
	public void set_minoration_av_conc(BigDecimal minoration_av_conc) {
		this.minoration_av_conc = minoration_av_conc;
	}
	public void set_majoration_ss_conc(BigDecimal majoration_ss_conc) {
		this.majoration_ss_conc = majoration_ss_conc;
	}
	public void set_indic_web(Integer indic_web) {
		this.indic_web = indic_web;
	}
	public void set_coet_mfam(BigDecimal coet_mfam) {
		this.coet_mfam = coet_mfam;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
