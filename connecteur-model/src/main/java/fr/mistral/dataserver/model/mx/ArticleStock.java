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
		@Index(name="idx_articlestock_cle1_masa", columnList="code_agence,code_article", unique=true),
		@Index(name="idx_articlestock_cle3_masa", columnList="code_article", unique=false),
		@Index(name="idx_articlestock_cle2_masa", columnList="code_agence,casier,code_article", unique=false)
})
public class ArticleStock implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_agence;
	@Column
	private String code_article;
	@Column
	private String casier;
	@Column
	private Integer gestion_stock;
	@Column
	private Integer stock_mini;
	@Column
	private Integer stock_maxi;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_maj_minmax;
	@Column
	private String observations;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_initial;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_ini_valeur;
	@Column(precision = 9, scale = 2)
	private BigDecimal en_cde_cli;
	@Column(precision = 9, scale = 2)
	private BigDecimal en_cde_frn;
	@Column(precision = 9, scale = 2)
	private BigDecimal entrees_mois;
	@Column(precision = 9, scale = 2)
	private BigDecimal entrees_exercice;
	@Column(precision = 9, scale = 2)
	private BigDecimal transferts_mois;
	@Column(precision = 9, scale = 2)
	private BigDecimal transfert_exercice;
	@Column(precision = 9, scale = 2)
	private BigDecimal retroc_mois;
	@Column(precision = 9, scale = 2)
	private BigDecimal retroc_exercice;
	@Column(precision = 9, scale = 2)
	private BigDecimal sorties_mois;
	@Column(precision = 9, scale = 2)
	private BigDecimal sorties_exercice;
	@Column(precision = 9, scale = 2)
	private BigDecimal sorties_int_mois;
	@Column(precision = 9, scale = 2)
	private BigDecimal sorties_int_exo;
	@Column(precision = 8, scale = 2)
	private BigDecimal ventes_manquees;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_central;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_1;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_2;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_3;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_4;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_5;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_6;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_7;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_8;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_9;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_10;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_11;
	@Column(precision = 9, scale = 2)
	private BigDecimal stock_mois_12;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_1;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_2;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_3;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_4;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_5;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_6;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_7;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_8;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_9;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_10;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_11;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_mois_12;
	@Column
	private Integer delai_livraison_1;
	@Column
	private Integer delai_livraison_2;
	@Column
	private Integer delai_livraison_3;
	@Column
	private Integer delai_livraison_4;
	@Column
	private Integer delai_livraison_5;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_1ere_entree;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_der_inventair;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_actuel;
	@Column(precision = 9, scale = 2)
	private BigDecimal pamp_1;
	@Column(precision = 9, scale = 2)
	private BigDecimal prmp_actuel;
	@Column(precision = 9, scale = 2)
	private BigDecimal prmp_1;
	@Column(precision = 10, scale = 2)
	private BigDecimal depreciation_1;
	@Column(precision = 10, scale = 2)
	private BigDecimal depreciation_2;
	@Column(precision = 10, scale = 2)
	private BigDecimal depreciation_3;
	@Column(precision = 10, scale = 2)
	private BigDecimal depreciation_4;
	@Column(precision = 10, scale = 2)
	private BigDecimal depreciation_5;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_deprec_1;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_deprec_2;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_deprec_3;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_deprec_4;
	@Column(precision = 5, scale = 2)
	private BigDecimal pourcent_deprec_5;
	@Column
	private Boolean indic_invtaire_sai;
	@Column
	private Integer indic_reappro;
	@Column
	private Integer modele_etiquette;
	@Column
	private String type_etiquette;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_modif;
	@Column
	private String pinv_masa;
	public String get_code_agence() {
		return code_agence;
	}
	public String get_code_article() {
		return code_article;
	}
	public String get_casier() {
		return casier;
	}
	public Integer get_gestion_stock() {
		return gestion_stock;
	}
	public Integer get_stock_mini() {
		return stock_mini;
	}
	public Integer get_stock_maxi() {
		return stock_maxi;
	}
	public Date get_date_maj_minmax() {
		return date_maj_minmax;
	}
	public String get_observations() {
		return observations;
	}
	public BigDecimal get_stock_initial() {
		return stock_initial;
	}
	public BigDecimal get_stock_ini_valeur() {
		return stock_ini_valeur;
	}
	public BigDecimal get_en_cde_cli() {
		return en_cde_cli;
	}
	public BigDecimal get_en_cde_frn() {
		return en_cde_frn;
	}
	public BigDecimal get_entrees_mois() {
		return entrees_mois;
	}
	public BigDecimal get_entrees_exercice() {
		return entrees_exercice;
	}
	public BigDecimal get_transferts_mois() {
		return transferts_mois;
	}
	public BigDecimal get_transfert_exercice() {
		return transfert_exercice;
	}
	public BigDecimal get_retroc_mois() {
		return retroc_mois;
	}
	public BigDecimal get_retroc_exercice() {
		return retroc_exercice;
	}
	public BigDecimal get_sorties_mois() {
		return sorties_mois;
	}
	public BigDecimal get_sorties_exercice() {
		return sorties_exercice;
	}
	public BigDecimal get_sorties_int_mois() {
		return sorties_int_mois;
	}
	public BigDecimal get_sorties_int_exo() {
		return sorties_int_exo;
	}
	public BigDecimal get_ventes_manquees() {
		return ventes_manquees;
	}
	public BigDecimal get_stock_central() {
		return stock_central;
	}
	public BigDecimal get_stock_mois_1() {
		return stock_mois_1;
	}
	public BigDecimal get_stock_mois_2() {
		return stock_mois_2;
	}
	public BigDecimal get_stock_mois_3() {
		return stock_mois_3;
	}
	public BigDecimal get_stock_mois_4() {
		return stock_mois_4;
	}
	public BigDecimal get_stock_mois_5() {
		return stock_mois_5;
	}
	public BigDecimal get_stock_mois_6() {
		return stock_mois_6;
	}
	public BigDecimal get_stock_mois_7() {
		return stock_mois_7;
	}
	public BigDecimal get_stock_mois_8() {
		return stock_mois_8;
	}
	public BigDecimal get_stock_mois_9() {
		return stock_mois_9;
	}
	public BigDecimal get_stock_mois_10() {
		return stock_mois_10;
	}
	public BigDecimal get_stock_mois_11() {
		return stock_mois_11;
	}
	public BigDecimal get_stock_mois_12() {
		return stock_mois_12;
	}
	public BigDecimal get_pamp_mois_1() {
		return pamp_mois_1;
	}
	public BigDecimal get_pamp_mois_2() {
		return pamp_mois_2;
	}
	public BigDecimal get_pamp_mois_3() {
		return pamp_mois_3;
	}
	public BigDecimal get_pamp_mois_4() {
		return pamp_mois_4;
	}
	public BigDecimal get_pamp_mois_5() {
		return pamp_mois_5;
	}
	public BigDecimal get_pamp_mois_6() {
		return pamp_mois_6;
	}
	public BigDecimal get_pamp_mois_7() {
		return pamp_mois_7;
	}
	public BigDecimal get_pamp_mois_8() {
		return pamp_mois_8;
	}
	public BigDecimal get_pamp_mois_9() {
		return pamp_mois_9;
	}
	public BigDecimal get_pamp_mois_10() {
		return pamp_mois_10;
	}
	public BigDecimal get_pamp_mois_11() {
		return pamp_mois_11;
	}
	public BigDecimal get_pamp_mois_12() {
		return pamp_mois_12;
	}
	public Integer get_delai_livraison_1() {
		return delai_livraison_1;
	}
	public Integer get_delai_livraison_2() {
		return delai_livraison_2;
	}
	public Integer get_delai_livraison_3() {
		return delai_livraison_3;
	}
	public Integer get_delai_livraison_4() {
		return delai_livraison_4;
	}
	public Integer get_delai_livraison_5() {
		return delai_livraison_5;
	}
	public Date get_date_1ere_entree() {
		return date_1ere_entree;
	}
	public Date get_date_der_inventair() {
		return date_der_inventair;
	}
	public BigDecimal get_pamp_actuel() {
		return pamp_actuel;
	}
	public BigDecimal get_pamp_1() {
		return pamp_1;
	}
	public BigDecimal get_prmp_actuel() {
		return prmp_actuel;
	}
	public BigDecimal get_prmp_1() {
		return prmp_1;
	}
	public BigDecimal get_depreciation_1() {
		return depreciation_1;
	}
	public BigDecimal get_depreciation_2() {
		return depreciation_2;
	}
	public BigDecimal get_depreciation_3() {
		return depreciation_3;
	}
	public BigDecimal get_depreciation_4() {
		return depreciation_4;
	}
	public BigDecimal get_depreciation_5() {
		return depreciation_5;
	}
	public BigDecimal get_pourcent_deprec_1() {
		return pourcent_deprec_1;
	}
	public BigDecimal get_pourcent_deprec_2() {
		return pourcent_deprec_2;
	}
	public BigDecimal get_pourcent_deprec_3() {
		return pourcent_deprec_3;
	}
	public BigDecimal get_pourcent_deprec_4() {
		return pourcent_deprec_4;
	}
	public BigDecimal get_pourcent_deprec_5() {
		return pourcent_deprec_5;
	}
	public Boolean get_indic_invtaire_sai() {
		return indic_invtaire_sai;
	}
	public Integer get_indic_reappro() {
		return indic_reappro;
	}
	public Integer get_modele_etiquette() {
		return modele_etiquette;
	}
	public String get_type_etiquette() {
		return type_etiquette;
	}
	public Date get_date_modif() {
		return date_modif;
	}
	public String get_pinv_masa() {
		return pinv_masa;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_code_article(String code_article) {
		this.code_article = code_article;
	}
	public void set_casier(String casier) {
		this.casier = casier;
	}
	public void set_gestion_stock(Integer gestion_stock) {
		this.gestion_stock = gestion_stock;
	}
	public void set_stock_mini(Integer stock_mini) {
		this.stock_mini = stock_mini;
	}
	public void set_stock_maxi(Integer stock_maxi) {
		this.stock_maxi = stock_maxi;
	}
	public void set_date_maj_minmax(Date date_maj_minmax) {
		this.date_maj_minmax = date_maj_minmax;
	}
	public void set_observations(String observations) {
		this.observations = observations;
	}
	public void set_stock_initial(BigDecimal stock_initial) {
		this.stock_initial = stock_initial;
	}
	public void set_stock_ini_valeur(BigDecimal stock_ini_valeur) {
		this.stock_ini_valeur = stock_ini_valeur;
	}
	public void set_en_cde_cli(BigDecimal en_cde_cli) {
		this.en_cde_cli = en_cde_cli;
	}
	public void set_en_cde_frn(BigDecimal en_cde_frn) {
		this.en_cde_frn = en_cde_frn;
	}
	public void set_entrees_mois(BigDecimal entrees_mois) {
		this.entrees_mois = entrees_mois;
	}
	public void set_entrees_exercice(BigDecimal entrees_exercice) {
		this.entrees_exercice = entrees_exercice;
	}
	public void set_transferts_mois(BigDecimal transferts_mois) {
		this.transferts_mois = transferts_mois;
	}
	public void set_transfert_exercice(BigDecimal transfert_exercice) {
		this.transfert_exercice = transfert_exercice;
	}
	public void set_retroc_mois(BigDecimal retroc_mois) {
		this.retroc_mois = retroc_mois;
	}
	public void set_retroc_exercice(BigDecimal retroc_exercice) {
		this.retroc_exercice = retroc_exercice;
	}
	public void set_sorties_mois(BigDecimal sorties_mois) {
		this.sorties_mois = sorties_mois;
	}
	public void set_sorties_exercice(BigDecimal sorties_exercice) {
		this.sorties_exercice = sorties_exercice;
	}
	public void set_sorties_int_mois(BigDecimal sorties_int_mois) {
		this.sorties_int_mois = sorties_int_mois;
	}
	public void set_sorties_int_exo(BigDecimal sorties_int_exo) {
		this.sorties_int_exo = sorties_int_exo;
	}
	public void set_ventes_manquees(BigDecimal ventes_manquees) {
		this.ventes_manquees = ventes_manquees;
	}
	public void set_stock_central(BigDecimal stock_central) {
		this.stock_central = stock_central;
	}
	public void set_stock_mois_1(BigDecimal stock_mois_1) {
		this.stock_mois_1 = stock_mois_1;
	}
	public void set_stock_mois_2(BigDecimal stock_mois_2) {
		this.stock_mois_2 = stock_mois_2;
	}
	public void set_stock_mois_3(BigDecimal stock_mois_3) {
		this.stock_mois_3 = stock_mois_3;
	}
	public void set_stock_mois_4(BigDecimal stock_mois_4) {
		this.stock_mois_4 = stock_mois_4;
	}
	public void set_stock_mois_5(BigDecimal stock_mois_5) {
		this.stock_mois_5 = stock_mois_5;
	}
	public void set_stock_mois_6(BigDecimal stock_mois_6) {
		this.stock_mois_6 = stock_mois_6;
	}
	public void set_stock_mois_7(BigDecimal stock_mois_7) {
		this.stock_mois_7 = stock_mois_7;
	}
	public void set_stock_mois_8(BigDecimal stock_mois_8) {
		this.stock_mois_8 = stock_mois_8;
	}
	public void set_stock_mois_9(BigDecimal stock_mois_9) {
		this.stock_mois_9 = stock_mois_9;
	}
	public void set_stock_mois_10(BigDecimal stock_mois_10) {
		this.stock_mois_10 = stock_mois_10;
	}
	public void set_stock_mois_11(BigDecimal stock_mois_11) {
		this.stock_mois_11 = stock_mois_11;
	}
	public void set_stock_mois_12(BigDecimal stock_mois_12) {
		this.stock_mois_12 = stock_mois_12;
	}
	public void set_pamp_mois_1(BigDecimal pamp_mois_1) {
		this.pamp_mois_1 = pamp_mois_1;
	}
	public void set_pamp_mois_2(BigDecimal pamp_mois_2) {
		this.pamp_mois_2 = pamp_mois_2;
	}
	public void set_pamp_mois_3(BigDecimal pamp_mois_3) {
		this.pamp_mois_3 = pamp_mois_3;
	}
	public void set_pamp_mois_4(BigDecimal pamp_mois_4) {
		this.pamp_mois_4 = pamp_mois_4;
	}
	public void set_pamp_mois_5(BigDecimal pamp_mois_5) {
		this.pamp_mois_5 = pamp_mois_5;
	}
	public void set_pamp_mois_6(BigDecimal pamp_mois_6) {
		this.pamp_mois_6 = pamp_mois_6;
	}
	public void set_pamp_mois_7(BigDecimal pamp_mois_7) {
		this.pamp_mois_7 = pamp_mois_7;
	}
	public void set_pamp_mois_8(BigDecimal pamp_mois_8) {
		this.pamp_mois_8 = pamp_mois_8;
	}
	public void set_pamp_mois_9(BigDecimal pamp_mois_9) {
		this.pamp_mois_9 = pamp_mois_9;
	}
	public void set_pamp_mois_10(BigDecimal pamp_mois_10) {
		this.pamp_mois_10 = pamp_mois_10;
	}
	public void set_pamp_mois_11(BigDecimal pamp_mois_11) {
		this.pamp_mois_11 = pamp_mois_11;
	}
	public void set_pamp_mois_12(BigDecimal pamp_mois_12) {
		this.pamp_mois_12 = pamp_mois_12;
	}
	public void set_delai_livraison_1(Integer delai_livraison_1) {
		this.delai_livraison_1 = delai_livraison_1;
	}
	public void set_delai_livraison_2(Integer delai_livraison_2) {
		this.delai_livraison_2 = delai_livraison_2;
	}
	public void set_delai_livraison_3(Integer delai_livraison_3) {
		this.delai_livraison_3 = delai_livraison_3;
	}
	public void set_delai_livraison_4(Integer delai_livraison_4) {
		this.delai_livraison_4 = delai_livraison_4;
	}
	public void set_delai_livraison_5(Integer delai_livraison_5) {
		this.delai_livraison_5 = delai_livraison_5;
	}
	public void set_date_1ere_entree(Date date_1ere_entree) {
		this.date_1ere_entree = date_1ere_entree;
	}
	public void set_date_der_inventair(Date date_der_inventair) {
		this.date_der_inventair = date_der_inventair;
	}
	public void set_pamp_actuel(BigDecimal pamp_actuel) {
		this.pamp_actuel = pamp_actuel;
	}
	public void set_pamp_1(BigDecimal pamp_1) {
		this.pamp_1 = pamp_1;
	}
	public void set_prmp_actuel(BigDecimal prmp_actuel) {
		this.prmp_actuel = prmp_actuel;
	}
	public void set_prmp_1(BigDecimal prmp_1) {
		this.prmp_1 = prmp_1;
	}
	public void set_depreciation_1(BigDecimal depreciation_1) {
		this.depreciation_1 = depreciation_1;
	}
	public void set_depreciation_2(BigDecimal depreciation_2) {
		this.depreciation_2 = depreciation_2;
	}
	public void set_depreciation_3(BigDecimal depreciation_3) {
		this.depreciation_3 = depreciation_3;
	}
	public void set_depreciation_4(BigDecimal depreciation_4) {
		this.depreciation_4 = depreciation_4;
	}
	public void set_depreciation_5(BigDecimal depreciation_5) {
		this.depreciation_5 = depreciation_5;
	}
	public void set_pourcent_deprec_1(BigDecimal pourcent_deprec_1) {
		this.pourcent_deprec_1 = pourcent_deprec_1;
	}
	public void set_pourcent_deprec_2(BigDecimal pourcent_deprec_2) {
		this.pourcent_deprec_2 = pourcent_deprec_2;
	}
	public void set_pourcent_deprec_3(BigDecimal pourcent_deprec_3) {
		this.pourcent_deprec_3 = pourcent_deprec_3;
	}
	public void set_pourcent_deprec_4(BigDecimal pourcent_deprec_4) {
		this.pourcent_deprec_4 = pourcent_deprec_4;
	}
	public void set_pourcent_deprec_5(BigDecimal pourcent_deprec_5) {
		this.pourcent_deprec_5 = pourcent_deprec_5;
	}
	public void set_indic_invtaire_sai(Boolean indic_invtaire_sai) {
		this.indic_invtaire_sai = indic_invtaire_sai;
	}
	public void set_indic_reappro(Integer indic_reappro) {
		this.indic_reappro = indic_reappro;
	}
	public void set_modele_etiquette(Integer modele_etiquette) {
		this.modele_etiquette = modele_etiquette;
	}
	public void set_type_etiquette(String type_etiquette) {
		this.type_etiquette = type_etiquette;
	}
	public void set_date_modif(Date date_modif) {
		this.date_modif = date_modif;
	}
	public void set_pinv_masa(String pinv_masa) {
		this.pinv_masa = pinv_masa;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
