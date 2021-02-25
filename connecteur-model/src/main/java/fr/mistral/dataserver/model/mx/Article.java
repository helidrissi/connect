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
		@Index(name="idx_article_cle1_mart", columnList="co1_mart,code_article_ss_id", unique=true),
		@Index(name="idx_article_cle2_mart", columnList="designation_art", unique=false),
		@Index(name="idx_article_cle3_mart", columnList="code_fournisseur,reference_fou", unique=false),
		@Index(name="idx_article_cle8_mart", columnList="reference_fou", unique=false),
		@Index(name="idx_article_cle4_mart", columnList="code_famille_art,code_sous_fam_art", unique=false),
		@Index(name="idx_article_cle6_mart", columnList="reference_interne", unique=false),
		@Index(name="idx_article_cle7_mart", columnList="ref_normalisee", unique=false),
		@Index(name="idx_article_cle9_mart", columnList="gencod", unique=false),
		@Index(name="idx_article_cle5_mart", columnList="code_article_ss_id", unique=false)
})
public class Article implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String co1_mart;
	@Column
	private String code_article_ss_id;
	@Column
	private String designation_art;
	@Column
	private String designation2_art;
	@Column
	private Integer indic_lib_modif;
	@Column
	private Long code_fournisseur;
	@Column
	private String reference_fou;
	@Column
	private Integer code_remise_frn;
	@Column
	private Integer code_famille_art;
	@Column
	private Integer code_sous_fam_art;
	@Column
	private String reference_interne;
	@Column
	private String ref_normalisee;
	@Column
	private Long gencod;
	@Column
	private Integer code_politique_px;
	@Column
	private String code_devise;
	@Column(precision = 10, scale = 2)
	private BigDecimal prix_tarif_devise;
	@Column(precision = 9, scale = 2)
	private BigDecimal tarif_fournisseur;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_fournisseur;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_achat_fou;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_revient_indus;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_achat_tarif;
	@Column(precision = 5, scale = 3)
	private BigDecimal coefficient;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_vente_ht;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_vente_ttc;
	@Column
	private Integer indic_fua;
	@Column(precision = 4, scale = 2)
	private BigDecimal pourcentage_fua;
	@Column(precision = 4, scale = 3)
	private BigDecimal coef_sur_fua;
	@Column(precision = 8, scale = 2)
	private BigDecimal montant_fua;
	@Column
	private Integer prix_au_xxx;
	@Column(precision = 4, scale = 3)
	private BigDecimal coeff_sur_px_rev;
	@Column(precision = 4, scale = 2)
	private BigDecimal taux_de_marque;
	@Column
	private Integer code_remise_client;
	@Column
	private Integer indic_saisonnier;
	@Column
	private Integer conditiont_achat;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_maj_tarif;
	@Column
	private Integer indic_multi_appro;
	@Column(precision = 8, scale = 3)
	private BigDecimal poids;
	@Column
	private Integer code_politique_vte;
	@Column
	private Integer indic_document;
	@Column
	private Integer indic_edit_tarif;
	@Column
	private Integer indic_tarif_col;
	@Column
	private Integer borne_tarif_col_1;
	@Column
	private Integer borne_tarif_col_2;
	@Column
	private Integer borne_tarif_col_3;
	@Column
	private Integer borne_tarif_col_4;
	@Column
	private Integer borne_tarif_col_5;
	@Column
	private Integer borne_tarif_col_6;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_tarif_col_1;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_tarif_col_2;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_tarif_col_3;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_tarif_col_4;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_tarif_col_5;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_tarif_col_6;
	@Column(precision = 9, scale = 2)
	private BigDecimal pv_tarif_col_1;
	@Column(precision = 9, scale = 2)
	private BigDecimal pv_tarif_col_2;
	@Column(precision = 9, scale = 2)
	private BigDecimal pv_tarif_col_3;
	@Column(precision = 9, scale = 2)
	private BigDecimal pv_tarif_col_4;
	@Column(precision = 9, scale = 2)
	private BigDecimal pv_tarif_col_5;
	@Column(precision = 9, scale = 2)
	private BigDecimal pv_tarif_col_6;
	@Column
	private Integer unite_achat;
	@Column
	private Integer unite_vente;
	@Column(precision = 8, scale = 4)
	private BigDecimal nombre_uv_par_ua;
	@Column
	private Integer indic_composition;
	@Column
	private String code_marque;
	@Column
	private String type;
	@Column(precision = 6, scale = 2)
	private BigDecimal volume;
	@Column
	private Integer indic_moteur;
	@Column
	private String marque_moteur;
	@Column
	private String modele_moteur;
	@Column
	private String type_moteur;
	@Column
	private Integer edition_compo_bl;
	@Column
	private Integer edition_compo_fact;
	@Column
	private Integer dest_loc_ou_vte;
	@Column
	private Integer code_nature_ori;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_creation;
	@Column
	private Integer code_suppression;
	@Column
	private String auteur_suppression;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_suppression;
	@Column
	private String no_identif_cee;
	@Column
	private Integer mode_calcul_px_ens;
	@Column
	private Integer code_caract_gras;
	@Column
	private Integer code_caract_italic;
	@Column
	private Integer code_caract_soulig;
	@Column
	private String auteur_modif;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_modif;
	@Column(precision = 4, scale = 2)
	private BigDecimal here_modif;
	@Column
	private String auteur_creation;
	@Column
	private Integer achat_interdit;
	@Column
	private Integer indic_pv_saisi;
	@Column
	private String pays;
	@Column
	private Integer no_societe;
	@Column
	private Integer webtop;
	@Column
	private Integer conditiont_vente;
	public String get_co1_mart() {
		return co1_mart;
	}
	public String get_code_article_ss_id() {
		return code_article_ss_id;
	}
	public String get_designation_art() {
		return designation_art;
	}
	public String get_designation2_art() {
		return designation2_art;
	}
	public Integer get_indic_lib_modif() {
		return indic_lib_modif;
	}
	public Long get_code_fournisseur() {
		return code_fournisseur;
	}
	public String get_reference_fou() {
		return reference_fou;
	}
	public Integer get_code_remise_frn() {
		return code_remise_frn;
	}
	public Integer get_code_famille_art() {
		return code_famille_art;
	}
	public Integer get_code_sous_fam_art() {
		return code_sous_fam_art;
	}
	public String get_reference_interne() {
		return reference_interne;
	}
	public String get_ref_normalisee() {
		return ref_normalisee;
	}
	public Long get_gencod() {
		return gencod;
	}
	public Integer get_code_politique_px() {
		return code_politique_px;
	}
	public String get_code_devise() {
		return code_devise;
	}
	public BigDecimal get_prix_tarif_devise() {
		return prix_tarif_devise;
	}
	public BigDecimal get_tarif_fournisseur() {
		return tarif_fournisseur;
	}
	public BigDecimal get_remise_fournisseur() {
		return remise_fournisseur;
	}
	public BigDecimal get_prix_achat_fou() {
		return prix_achat_fou;
	}
	public BigDecimal get_prix_revient_indus() {
		return prix_revient_indus;
	}
	public BigDecimal get_prix_achat_tarif() {
		return prix_achat_tarif;
	}
	public BigDecimal get_coefficient() {
		return coefficient;
	}
	public BigDecimal get_prix_vente_ht() {
		return prix_vente_ht;
	}
	public BigDecimal get_prix_vente_ttc() {
		return prix_vente_ttc;
	}
	public Integer get_indic_fua() {
		return indic_fua;
	}
	public BigDecimal get_pourcentage_fua() {
		return pourcentage_fua;
	}
	public BigDecimal get_coef_sur_fua() {
		return coef_sur_fua;
	}
	public BigDecimal get_montant_fua() {
		return montant_fua;
	}
	public Integer get_prix_au_xxx() {
		return prix_au_xxx;
	}
	public BigDecimal get_coeff_sur_px_rev() {
		return coeff_sur_px_rev;
	}
	public BigDecimal get_taux_de_marque() {
		return taux_de_marque;
	}
	public Integer get_code_remise_client() {
		return code_remise_client;
	}
	public Integer get_indic_saisonnier() {
		return indic_saisonnier;
	}
	public Integer get_conditiont_achat() {
		return conditiont_achat;
	}
	public Date get_date_maj_tarif() {
		return date_maj_tarif;
	}
	public Integer get_indic_multi_appro() {
		return indic_multi_appro;
	}
	public BigDecimal get_poids() {
		return poids;
	}
	public Integer get_code_politique_vte() {
		return code_politique_vte;
	}
	public Integer get_indic_document() {
		return indic_document;
	}
	public Integer get_indic_edit_tarif() {
		return indic_edit_tarif;
	}
	public Integer get_indic_tarif_col() {
		return indic_tarif_col;
	}
	public Integer get_borne_tarif_col_1() {
		return borne_tarif_col_1;
	}
	public Integer get_borne_tarif_col_2() {
		return borne_tarif_col_2;
	}
	public Integer get_borne_tarif_col_3() {
		return borne_tarif_col_3;
	}
	public Integer get_borne_tarif_col_4() {
		return borne_tarif_col_4;
	}
	public Integer get_borne_tarif_col_5() {
		return borne_tarif_col_5;
	}
	public Integer get_borne_tarif_col_6() {
		return borne_tarif_col_6;
	}
	public BigDecimal get_remise_tarif_col_1() {
		return remise_tarif_col_1;
	}
	public BigDecimal get_remise_tarif_col_2() {
		return remise_tarif_col_2;
	}
	public BigDecimal get_remise_tarif_col_3() {
		return remise_tarif_col_3;
	}
	public BigDecimal get_remise_tarif_col_4() {
		return remise_tarif_col_4;
	}
	public BigDecimal get_remise_tarif_col_5() {
		return remise_tarif_col_5;
	}
	public BigDecimal get_remise_tarif_col_6() {
		return remise_tarif_col_6;
	}
	public BigDecimal get_pv_tarif_col_1() {
		return pv_tarif_col_1;
	}
	public BigDecimal get_pv_tarif_col_2() {
		return pv_tarif_col_2;
	}
	public BigDecimal get_pv_tarif_col_3() {
		return pv_tarif_col_3;
	}
	public BigDecimal get_pv_tarif_col_4() {
		return pv_tarif_col_4;
	}
	public BigDecimal get_pv_tarif_col_5() {
		return pv_tarif_col_5;
	}
	public BigDecimal get_pv_tarif_col_6() {
		return pv_tarif_col_6;
	}
	public Integer get_unite_achat() {
		return unite_achat;
	}
	public Integer get_unite_vente() {
		return unite_vente;
	}
	public BigDecimal get_nombre_uv_par_ua() {
		return nombre_uv_par_ua;
	}
	public Integer get_indic_composition() {
		return indic_composition;
	}
	public String get_code_marque() {
		return code_marque;
	}
	public String get_type() {
		return type;
	}
	public BigDecimal get_volume() {
		return volume;
	}
	public Integer get_indic_moteur() {
		return indic_moteur;
	}
	public String get_marque_moteur() {
		return marque_moteur;
	}
	public String get_modele_moteur() {
		return modele_moteur;
	}
	public String get_type_moteur() {
		return type_moteur;
	}
	public Integer get_edition_compo_bl() {
		return edition_compo_bl;
	}
	public Integer get_edition_compo_fact() {
		return edition_compo_fact;
	}
	public Integer get_dest_loc_ou_vte() {
		return dest_loc_ou_vte;
	}
	public Integer get_code_nature_ori() {
		return code_nature_ori;
	}
	public Date get_date_creation() {
		return date_creation;
	}
	public Integer get_code_suppression() {
		return code_suppression;
	}
	public String get_auteur_suppression() {
		return auteur_suppression;
	}
	public Date get_date_suppression() {
		return date_suppression;
	}
	public String get_no_identif_cee() {
		return no_identif_cee;
	}
	public Integer get_mode_calcul_px_ens() {
		return mode_calcul_px_ens;
	}
	public Integer get_code_caract_gras() {
		return code_caract_gras;
	}
	public Integer get_code_caract_italic() {
		return code_caract_italic;
	}
	public Integer get_code_caract_soulig() {
		return code_caract_soulig;
	}
	public String get_auteur_modif() {
		return auteur_modif;
	}
	public Date get_date_modif() {
		return date_modif;
	}
	public BigDecimal get_here_modif() {
		return here_modif;
	}
	public String get_auteur_creation() {
		return auteur_creation;
	}
	public Integer get_achat_interdit() {
		return achat_interdit;
	}
	public Integer get_indic_pv_saisi() {
		return indic_pv_saisi;
	}
	public String get_pays() {
		return pays;
	}
	public Integer get_no_societe() {
		return no_societe;
	}
	public Integer get_webtop() {
		return webtop;
	}
	public Integer get_conditiont_vente() {
		return conditiont_vente;
	}
	public void set_co1_mart(String co1_mart) {
		this.co1_mart = co1_mart;
	}
	public void set_code_article_ss_id(String code_article_ss_id) {
		this.code_article_ss_id = code_article_ss_id;
	}
	public void set_designation_art(String designation_art) {
		this.designation_art = designation_art;
	}
	public void set_designation2_art(String designation2_art) {
		this.designation2_art = designation2_art;
	}
	public void set_indic_lib_modif(Integer indic_lib_modif) {
		this.indic_lib_modif = indic_lib_modif;
	}
	public void set_code_fournisseur(Long code_fournisseur) {
		this.code_fournisseur = code_fournisseur;
	}
	public void set_reference_fou(String reference_fou) {
		this.reference_fou = reference_fou;
	}
	public void set_code_remise_frn(Integer code_remise_frn) {
		this.code_remise_frn = code_remise_frn;
	}
	public void set_code_famille_art(Integer code_famille_art) {
		this.code_famille_art = code_famille_art;
	}
	public void set_code_sous_fam_art(Integer code_sous_fam_art) {
		this.code_sous_fam_art = code_sous_fam_art;
	}
	public void set_reference_interne(String reference_interne) {
		this.reference_interne = reference_interne;
	}
	public void set_ref_normalisee(String ref_normalisee) {
		this.ref_normalisee = ref_normalisee;
	}
	public void set_gencod(Long gencod) {
		this.gencod = gencod;
	}
	public void set_code_politique_px(Integer code_politique_px) {
		this.code_politique_px = code_politique_px;
	}
	public void set_code_devise(String code_devise) {
		this.code_devise = code_devise;
	}
	public void set_prix_tarif_devise(BigDecimal prix_tarif_devise) {
		this.prix_tarif_devise = prix_tarif_devise;
	}
	public void set_tarif_fournisseur(BigDecimal tarif_fournisseur) {
		this.tarif_fournisseur = tarif_fournisseur;
	}
	public void set_remise_fournisseur(BigDecimal remise_fournisseur) {
		this.remise_fournisseur = remise_fournisseur;
	}
	public void set_prix_achat_fou(BigDecimal prix_achat_fou) {
		this.prix_achat_fou = prix_achat_fou;
	}
	public void set_prix_revient_indus(BigDecimal prix_revient_indus) {
		this.prix_revient_indus = prix_revient_indus;
	}
	public void set_prix_achat_tarif(BigDecimal prix_achat_tarif) {
		this.prix_achat_tarif = prix_achat_tarif;
	}
	public void set_coefficient(BigDecimal coefficient) {
		this.coefficient = coefficient;
	}
	public void set_prix_vente_ht(BigDecimal prix_vente_ht) {
		this.prix_vente_ht = prix_vente_ht;
	}
	public void set_prix_vente_ttc(BigDecimal prix_vente_ttc) {
		this.prix_vente_ttc = prix_vente_ttc;
	}
	public void set_indic_fua(Integer indic_fua) {
		this.indic_fua = indic_fua;
	}
	public void set_pourcentage_fua(BigDecimal pourcentage_fua) {
		this.pourcentage_fua = pourcentage_fua;
	}
	public void set_coef_sur_fua(BigDecimal coef_sur_fua) {
		this.coef_sur_fua = coef_sur_fua;
	}
	public void set_montant_fua(BigDecimal montant_fua) {
		this.montant_fua = montant_fua;
	}
	public void set_prix_au_xxx(Integer prix_au_xxx) {
		this.prix_au_xxx = prix_au_xxx;
	}
	public void set_coeff_sur_px_rev(BigDecimal coeff_sur_px_rev) {
		this.coeff_sur_px_rev = coeff_sur_px_rev;
	}
	public void set_taux_de_marque(BigDecimal taux_de_marque) {
		this.taux_de_marque = taux_de_marque;
	}
	public void set_code_remise_client(Integer code_remise_client) {
		this.code_remise_client = code_remise_client;
	}
	public void set_indic_saisonnier(Integer indic_saisonnier) {
		this.indic_saisonnier = indic_saisonnier;
	}
	public void set_conditiont_achat(Integer conditiont_achat) {
		this.conditiont_achat = conditiont_achat;
	}
	public void set_date_maj_tarif(Date date_maj_tarif) {
		this.date_maj_tarif = date_maj_tarif;
	}
	public void set_indic_multi_appro(Integer indic_multi_appro) {
		this.indic_multi_appro = indic_multi_appro;
	}
	public void set_poids(BigDecimal poids) {
		this.poids = poids;
	}
	public void set_code_politique_vte(Integer code_politique_vte) {
		this.code_politique_vte = code_politique_vte;
	}
	public void set_indic_document(Integer indic_document) {
		this.indic_document = indic_document;
	}
	public void set_indic_edit_tarif(Integer indic_edit_tarif) {
		this.indic_edit_tarif = indic_edit_tarif;
	}
	public void set_indic_tarif_col(Integer indic_tarif_col) {
		this.indic_tarif_col = indic_tarif_col;
	}
	public void set_borne_tarif_col_1(Integer borne_tarif_col_1) {
		this.borne_tarif_col_1 = borne_tarif_col_1;
	}
	public void set_borne_tarif_col_2(Integer borne_tarif_col_2) {
		this.borne_tarif_col_2 = borne_tarif_col_2;
	}
	public void set_borne_tarif_col_3(Integer borne_tarif_col_3) {
		this.borne_tarif_col_3 = borne_tarif_col_3;
	}
	public void set_borne_tarif_col_4(Integer borne_tarif_col_4) {
		this.borne_tarif_col_4 = borne_tarif_col_4;
	}
	public void set_borne_tarif_col_5(Integer borne_tarif_col_5) {
		this.borne_tarif_col_5 = borne_tarif_col_5;
	}
	public void set_borne_tarif_col_6(Integer borne_tarif_col_6) {
		this.borne_tarif_col_6 = borne_tarif_col_6;
	}
	public void set_remise_tarif_col_1(BigDecimal remise_tarif_col_1) {
		this.remise_tarif_col_1 = remise_tarif_col_1;
	}
	public void set_remise_tarif_col_2(BigDecimal remise_tarif_col_2) {
		this.remise_tarif_col_2 = remise_tarif_col_2;
	}
	public void set_remise_tarif_col_3(BigDecimal remise_tarif_col_3) {
		this.remise_tarif_col_3 = remise_tarif_col_3;
	}
	public void set_remise_tarif_col_4(BigDecimal remise_tarif_col_4) {
		this.remise_tarif_col_4 = remise_tarif_col_4;
	}
	public void set_remise_tarif_col_5(BigDecimal remise_tarif_col_5) {
		this.remise_tarif_col_5 = remise_tarif_col_5;
	}
	public void set_remise_tarif_col_6(BigDecimal remise_tarif_col_6) {
		this.remise_tarif_col_6 = remise_tarif_col_6;
	}
	public void set_pv_tarif_col_1(BigDecimal pv_tarif_col_1) {
		this.pv_tarif_col_1 = pv_tarif_col_1;
	}
	public void set_pv_tarif_col_2(BigDecimal pv_tarif_col_2) {
		this.pv_tarif_col_2 = pv_tarif_col_2;
	}
	public void set_pv_tarif_col_3(BigDecimal pv_tarif_col_3) {
		this.pv_tarif_col_3 = pv_tarif_col_3;
	}
	public void set_pv_tarif_col_4(BigDecimal pv_tarif_col_4) {
		this.pv_tarif_col_4 = pv_tarif_col_4;
	}
	public void set_pv_tarif_col_5(BigDecimal pv_tarif_col_5) {
		this.pv_tarif_col_5 = pv_tarif_col_5;
	}
	public void set_pv_tarif_col_6(BigDecimal pv_tarif_col_6) {
		this.pv_tarif_col_6 = pv_tarif_col_6;
	}
	public void set_unite_achat(Integer unite_achat) {
		this.unite_achat = unite_achat;
	}
	public void set_unite_vente(Integer unite_vente) {
		this.unite_vente = unite_vente;
	}
	public void set_nombre_uv_par_ua(BigDecimal nombre_uv_par_ua) {
		this.nombre_uv_par_ua = nombre_uv_par_ua;
	}
	public void set_indic_composition(Integer indic_composition) {
		this.indic_composition = indic_composition;
	}
	public void set_code_marque(String code_marque) {
		this.code_marque = code_marque;
	}
	public void set_type(String type) {
		this.type = type;
	}
	public void set_volume(BigDecimal volume) {
		this.volume = volume;
	}
	public void set_indic_moteur(Integer indic_moteur) {
		this.indic_moteur = indic_moteur;
	}
	public void set_marque_moteur(String marque_moteur) {
		this.marque_moteur = marque_moteur;
	}
	public void set_modele_moteur(String modele_moteur) {
		this.modele_moteur = modele_moteur;
	}
	public void set_type_moteur(String type_moteur) {
		this.type_moteur = type_moteur;
	}
	public void set_edition_compo_bl(Integer edition_compo_bl) {
		this.edition_compo_bl = edition_compo_bl;
	}
	public void set_edition_compo_fact(Integer edition_compo_fact) {
		this.edition_compo_fact = edition_compo_fact;
	}
	public void set_dest_loc_ou_vte(Integer dest_loc_ou_vte) {
		this.dest_loc_ou_vte = dest_loc_ou_vte;
	}
	public void set_code_nature_ori(Integer code_nature_ori) {
		this.code_nature_ori = code_nature_ori;
	}
	public void set_date_creation(Date date_creation) {
		this.date_creation = date_creation;
	}
	public void set_code_suppression(Integer code_suppression) {
		this.code_suppression = code_suppression;
	}
	public void set_auteur_suppression(String auteur_suppression) {
		this.auteur_suppression = auteur_suppression;
	}
	public void set_date_suppression(Date date_suppression) {
		this.date_suppression = date_suppression;
	}
	public void set_no_identif_cee(String no_identif_cee) {
		this.no_identif_cee = no_identif_cee;
	}
	public void set_mode_calcul_px_ens(Integer mode_calcul_px_ens) {
		this.mode_calcul_px_ens = mode_calcul_px_ens;
	}
	public void set_code_caract_gras(Integer code_caract_gras) {
		this.code_caract_gras = code_caract_gras;
	}
	public void set_code_caract_italic(Integer code_caract_italic) {
		this.code_caract_italic = code_caract_italic;
	}
	public void set_code_caract_soulig(Integer code_caract_soulig) {
		this.code_caract_soulig = code_caract_soulig;
	}
	public void set_auteur_modif(String auteur_modif) {
		this.auteur_modif = auteur_modif;
	}
	public void set_date_modif(Date date_modif) {
		this.date_modif = date_modif;
	}
	public void set_here_modif(BigDecimal here_modif) {
		this.here_modif = here_modif;
	}
	public void set_auteur_creation(String auteur_creation) {
		this.auteur_creation = auteur_creation;
	}
	public void set_achat_interdit(Integer achat_interdit) {
		this.achat_interdit = achat_interdit;
	}
	public void set_indic_pv_saisi(Integer indic_pv_saisi) {
		this.indic_pv_saisi = indic_pv_saisi;
	}
	public void set_pays(String pays) {
		this.pays = pays;
	}
	public void set_no_societe(Integer no_societe) {
		this.no_societe = no_societe;
	}
	public void set_webtop(Integer webtop) {
		this.webtop = webtop;
	}
	public void set_conditiont_vente(Integer conditiont_vente) {
		this.conditiont_vente = conditiont_vente;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
