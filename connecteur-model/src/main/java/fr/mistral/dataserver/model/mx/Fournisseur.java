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
		@Index(name="idx_fournisseur_cle1_mfou", columnList="code_fournisseur", unique=true),
		@Index(name="idx_fournisseur_cle2_mfou", columnList="raison_sociale_fou", unique=false),
		@Index(name="idx_fournisseur_cle4_mfou", columnList="no_tel_fou", unique=false),
		@Index(name="idx_fournisseur_cle5_mfou", columnList="no_cpte_comptable", unique=false),
		@Index(name="idx_fournisseur_cle3_mfou", columnList="identifiant_art", unique=false)
})
public class Fournisseur implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long code_fournisseur;
	@Column
	private Integer indic_type_fou;
	@Column
	private Integer type_fournisseur;
	@Column
	private String code_pays;
	@Column
	private String code_devise;
	@Column
	private Integer code_langue;
	@Column
	private Integer titre_social;
	@Column
	private String raison_sociale_fou;
	@Column
	private String adresse_fou;
	@Column
	private String code_postal_fou;
	@Column
	private String ville_fou;
	@Column
	private String no_tel_fou;
	@Column
	private String no_tel2_fou;
	@Column
	private String no_fax_fou;
	@Column
	private String code_agence;
	@Column
	private String code_activite;
	@Column
	private Long no_cpte_comptable;
	@Column
	private String notre_no_compte;
	@Column
	private String identifiant_art;
	@Column
	private Integer code_nature_fou;
	@Column
	private Integer no_societe_liee;
	@Column
	private Long no_client_lie;
	@Column
	private Long cnuf;
	@Column(precision = 10, scale = 5)
	private BigDecimal cours_de_reference;
	@Column
	private Boolean indic_conf_loueur;
	@Column
	private Integer der_no_mat_sousloc;
	@Column
	private Long code_cli_facture;
	@Column(precision = 4, scale = 2)
	private BigDecimal pourcent_frais_deb;
	@Column
	private Integer code_poltq_px_art;
	@Column
	private Boolean code_grille_remise;
	@Column
	private String code_type_cde_stan;
	@Column
	private Integer code_paie_fou_div;
	@Column
	private Integer code_ech_fou_div;
	@Column
	private Integer code_terme_fou_div;
	@Column
	private Boolean indic_etiquetage;
	@Column
	private Long object_art_an_n;
	@Column
	private Long object_art_an_n_1;
	@Column
	private Integer periodicite_cde;
	@Column
	private String observation1;
	@Column
	private String observation2;
	@Column
	private String code_confidentiel;
	@Column
	private Integer code_poltq_px_mat;
	@Column(precision = 4, scale = 2)
	private BigDecimal rem_standard_mat;
	@Column
	private Integer delai_livr_moyen;
	@Column
	private Integer code_base_franco;
	@Column
	private Long cde_mini_franco;
	@Column
	private Integer code_port;
	@Column(precision = 4, scale = 2)
	private BigDecimal pourcent_port_fact;
	@Column
	private Integer mode_paiement_mat;
	@Column
	private Integer code_echeance_mat;
	@Column
	private Integer code_terme_mat;
	@Column
	private String observation_mat_1;
	@Column
	private String observation_mat_2;
	@Column
	private Long object_mat_an_n;
	@Column
	private Long object_mat_an_n_1;
	@Column
	private Integer code_numero_dg;
	@Column
	private Integer delai_stand_accord;
	@Column
	private Integer code_model_bord_dg;
	@Column
	private Integer code_base_pieces;
	@Column(precision = 5, scale = 2)
	private BigDecimal remboursement_mo;
	@Column
	private String commentaire_dg;
	@Column
	private Integer code_type_rembours;
	@Column
	private String no_concessionnaire;
	@Column
	private Integer indi_justif_no_fac;
	@Column
	private Integer pa_seuil_fac_oblig;
	@Column
	private Integer pourcent_dg;
	@Column
	private Long der_no_imprime;
	@Column(precision = 3, scale = 2)
	private BigDecimal coefficient_pieces;
	@Column
	private Integer code_reg_rem_piece;
	@Column
	private String code_type_cde_piec;
	@Column(precision = 4, scale = 2)
	private BigDecimal pourcent_rem_piece;
	@Column
	private Integer indic_infos_specif;
	@Column
	private String lib_infos_specif;
	@Column
	private Integer indic_accord_gtie;
	@Column
	private Integer code_base_divers;
	@Column
	private Integer code_reg_rem_div;
	@Column
	private String code_type_cde_div;
	@Column(precision = 4, scale = 2)
	private BigDecimal pourcent_rem_div;
	@Column(precision = 3, scale = 2)
	private BigDecimal coefficient_divers;
	@Column
	private String code_acheteur;
	@Column
	private Integer indic_fournisseur;
	@Column
	private Long no_fou_article;
	@Column
	private Long no_fou_materiel;
	@Column
	private Integer code_suppression;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_suppression;
	@Column
	private String auteur_suppression;
	@Column
	private Integer forf_port_materiel;
	@Column
	private String code_ape_old;
	@Column
	private String code_siret;
	@Column
	private String code_rubriq_specif;
	@Column
	private String code_ape;
	@Column
	private String auteur_creation;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_creation;
	@Column
	private String auteur_modif;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_modif;
	@Column
	private Integer chiffrage_bc_art;
	@Column
	private Integer chiffrage_bc_mat;
	@Column
	private Integer affect_fiscale;
	@Column
	private String env_mfou;
	@Column
	private String exp_mfou;
	@Column
	private String envm_mfou;
	@Column
	private String expm_mfou;
	@Column
	private String typcnh_mfou;
	@Column
	private String typmdi_mfou;
	@Column
	private Integer indic_fournisseur_materiel;
	@Column
	private Integer clr_mfou;
	@Column
	private Integer ccw_mfou;
	@Column
	private Integer pow_mfou;
	@Column
	private Integer livw_mfou;
	@Column
	private Integer numa_mfou;
	@Column
	private Integer srp_mfou;
	@Column
	private Integer rgpd_mfou;
	@Temporal(TemporalType.DATE)
	@Column
	private Date dvt_mfou;
	public Long get_code_fournisseur() {
		return code_fournisseur;
	}
	public Integer get_indic_type_fou() {
		return indic_type_fou;
	}
	public Integer get_type_fournisseur() {
		return type_fournisseur;
	}
	public String get_code_pays() {
		return code_pays;
	}
	public String get_code_devise() {
		return code_devise;
	}
	public Integer get_code_langue() {
		return code_langue;
	}
	public Integer get_titre_social() {
		return titre_social;
	}
	public String get_raison_sociale_fou() {
		return raison_sociale_fou;
	}
	public String get_adresse_fou() {
		return adresse_fou;
	}
	public String get_code_postal_fou() {
		return code_postal_fou;
	}
	public String get_ville_fou() {
		return ville_fou;
	}
	public String get_no_tel_fou() {
		return no_tel_fou;
	}
	public String get_no_tel2_fou() {
		return no_tel2_fou;
	}
	public String get_no_fax_fou() {
		return no_fax_fou;
	}
	public String get_code_agence() {
		return code_agence;
	}
	public String get_code_activite() {
		return code_activite;
	}
	public Long get_no_cpte_comptable() {
		return no_cpte_comptable;
	}
	public String get_notre_no_compte() {
		return notre_no_compte;
	}
	public String get_identifiant_art() {
		return identifiant_art;
	}
	public Integer get_code_nature_fou() {
		return code_nature_fou;
	}
	public Integer get_no_societe_liee() {
		return no_societe_liee;
	}
	public Long get_no_client_lie() {
		return no_client_lie;
	}
	public Long get_cnuf() {
		return cnuf;
	}
	public BigDecimal get_cours_de_reference() {
		return cours_de_reference;
	}
	public Boolean get_indic_conf_loueur() {
		return indic_conf_loueur;
	}
	public Integer get_der_no_mat_sousloc() {
		return der_no_mat_sousloc;
	}
	public Long get_code_cli_facture() {
		return code_cli_facture;
	}
	public BigDecimal get_pourcent_frais_deb() {
		return pourcent_frais_deb;
	}
	public Integer get_code_poltq_px_art() {
		return code_poltq_px_art;
	}
	public Boolean get_code_grille_remise() {
		return code_grille_remise;
	}
	public String get_code_type_cde_stan() {
		return code_type_cde_stan;
	}
	public Integer get_code_paie_fou_div() {
		return code_paie_fou_div;
	}
	public Integer get_code_ech_fou_div() {
		return code_ech_fou_div;
	}
	public Integer get_code_terme_fou_div() {
		return code_terme_fou_div;
	}
	public Boolean get_indic_etiquetage() {
		return indic_etiquetage;
	}
	public Long get_object_art_an_n() {
		return object_art_an_n;
	}
	public Long get_object_art_an_n_1() {
		return object_art_an_n_1;
	}
	public Integer get_periodicite_cde() {
		return periodicite_cde;
	}
	public String get_observation1() {
		return observation1;
	}
	public String get_observation2() {
		return observation2;
	}
	public String get_code_confidentiel() {
		return code_confidentiel;
	}
	public Integer get_code_poltq_px_mat() {
		return code_poltq_px_mat;
	}
	public BigDecimal get_rem_standard_mat() {
		return rem_standard_mat;
	}
	public Integer get_delai_livr_moyen() {
		return delai_livr_moyen;
	}
	public Integer get_code_base_franco() {
		return code_base_franco;
	}
	public Long get_cde_mini_franco() {
		return cde_mini_franco;
	}
	public Integer get_code_port() {
		return code_port;
	}
	public BigDecimal get_pourcent_port_fact() {
		return pourcent_port_fact;
	}
	public Integer get_mode_paiement_mat() {
		return mode_paiement_mat;
	}
	public Integer get_code_echeance_mat() {
		return code_echeance_mat;
	}
	public Integer get_code_terme_mat() {
		return code_terme_mat;
	}
	public String get_observation_mat_1() {
		return observation_mat_1;
	}
	public String get_observation_mat_2() {
		return observation_mat_2;
	}
	public Long get_object_mat_an_n() {
		return object_mat_an_n;
	}
	public Long get_object_mat_an_n_1() {
		return object_mat_an_n_1;
	}
	public Integer get_code_numero_dg() {
		return code_numero_dg;
	}
	public Integer get_delai_stand_accord() {
		return delai_stand_accord;
	}
	public Integer get_code_model_bord_dg() {
		return code_model_bord_dg;
	}
	public Integer get_code_base_pieces() {
		return code_base_pieces;
	}
	public BigDecimal get_remboursement_mo() {
		return remboursement_mo;
	}
	public String get_commentaire_dg() {
		return commentaire_dg;
	}
	public Integer get_code_type_rembours() {
		return code_type_rembours;
	}
	public String get_no_concessionnaire() {
		return no_concessionnaire;
	}
	public Integer get_indi_justif_no_fac() {
		return indi_justif_no_fac;
	}
	public Integer get_pa_seuil_fac_oblig() {
		return pa_seuil_fac_oblig;
	}
	public Integer get_pourcent_dg() {
		return pourcent_dg;
	}
	public Long get_der_no_imprime() {
		return der_no_imprime;
	}
	public BigDecimal get_coefficient_pieces() {
		return coefficient_pieces;
	}
	public Integer get_code_reg_rem_piece() {
		return code_reg_rem_piece;
	}
	public String get_code_type_cde_piec() {
		return code_type_cde_piec;
	}
	public BigDecimal get_pourcent_rem_piece() {
		return pourcent_rem_piece;
	}
	public Integer get_indic_infos_specif() {
		return indic_infos_specif;
	}
	public String get_lib_infos_specif() {
		return lib_infos_specif;
	}
	public Integer get_indic_accord_gtie() {
		return indic_accord_gtie;
	}
	public Integer get_code_base_divers() {
		return code_base_divers;
	}
	public Integer get_code_reg_rem_div() {
		return code_reg_rem_div;
	}
	public String get_code_type_cde_div() {
		return code_type_cde_div;
	}
	public BigDecimal get_pourcent_rem_div() {
		return pourcent_rem_div;
	}
	public BigDecimal get_coefficient_divers() {
		return coefficient_divers;
	}
	public String get_code_acheteur() {
		return code_acheteur;
	}
	public Integer get_indic_fournisseur() {
		return indic_fournisseur;
	}
	public Long get_no_fou_article() {
		return no_fou_article;
	}
	public Long get_no_fou_materiel() {
		return no_fou_materiel;
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
	public Integer get_forf_port_materiel() {
		return forf_port_materiel;
	}
	public String get_code_ape_old() {
		return code_ape_old;
	}
	public String get_code_siret() {
		return code_siret;
	}
	public String get_code_rubriq_specif() {
		return code_rubriq_specif;
	}
	public String get_code_ape() {
		return code_ape;
	}
	public String get_auteur_creation() {
		return auteur_creation;
	}
	public Date get_date_creation() {
		return date_creation;
	}
	public String get_auteur_modif() {
		return auteur_modif;
	}
	public Date get_date_modif() {
		return date_modif;
	}
	public Integer get_chiffrage_bc_art() {
		return chiffrage_bc_art;
	}
	public Integer get_chiffrage_bc_mat() {
		return chiffrage_bc_mat;
	}
	public Integer get_affect_fiscale() {
		return affect_fiscale;
	}
	public String get_env_mfou() {
		return env_mfou;
	}
	public String get_exp_mfou() {
		return exp_mfou;
	}
	public String get_envm_mfou() {
		return envm_mfou;
	}
	public String get_expm_mfou() {
		return expm_mfou;
	}
	public String get_typcnh_mfou() {
		return typcnh_mfou;
	}
	public String get_typmdi_mfou() {
		return typmdi_mfou;
	}
	public Integer get_indic_fournisseur_materiel() {
		return indic_fournisseur_materiel;
	}
	public Integer get_clr_mfou() {
		return clr_mfou;
	}
	public Integer get_ccw_mfou() {
		return ccw_mfou;
	}
	public Integer get_pow_mfou() {
		return pow_mfou;
	}
	public Integer get_livw_mfou() {
		return livw_mfou;
	}
	public Integer get_numa_mfou() {
		return numa_mfou;
	}
	public Integer get_srp_mfou() {
		return srp_mfou;
	}
	public Integer get_rgpd_mfou() {
		return rgpd_mfou;
	}
	public Date get_dvt_mfou() {
		return dvt_mfou;
	}
	public void set_code_fournisseur(Long code_fournisseur) {
		this.code_fournisseur = code_fournisseur;
	}
	public void set_indic_type_fou(Integer indic_type_fou) {
		this.indic_type_fou = indic_type_fou;
	}
	public void set_type_fournisseur(Integer type_fournisseur) {
		this.type_fournisseur = type_fournisseur;
	}
	public void set_code_pays(String code_pays) {
		this.code_pays = code_pays;
	}
	public void set_code_devise(String code_devise) {
		this.code_devise = code_devise;
	}
	public void set_code_langue(Integer code_langue) {
		this.code_langue = code_langue;
	}
	public void set_titre_social(Integer titre_social) {
		this.titre_social = titre_social;
	}
	public void set_raison_sociale_fou(String raison_sociale_fou) {
		this.raison_sociale_fou = raison_sociale_fou;
	}
	public void set_adresse_fou(String adresse_fou) {
		this.adresse_fou = adresse_fou;
	}
	public void set_code_postal_fou(String code_postal_fou) {
		this.code_postal_fou = code_postal_fou;
	}
	public void set_ville_fou(String ville_fou) {
		this.ville_fou = ville_fou;
	}
	public void set_no_tel_fou(String no_tel_fou) {
		this.no_tel_fou = no_tel_fou;
	}
	public void set_no_tel2_fou(String no_tel2_fou) {
		this.no_tel2_fou = no_tel2_fou;
	}
	public void set_no_fax_fou(String no_fax_fou) {
		this.no_fax_fou = no_fax_fou;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_code_activite(String code_activite) {
		this.code_activite = code_activite;
	}
	public void set_no_cpte_comptable(Long no_cpte_comptable) {
		this.no_cpte_comptable = no_cpte_comptable;
	}
	public void set_notre_no_compte(String notre_no_compte) {
		this.notre_no_compte = notre_no_compte;
	}
	public void set_identifiant_art(String identifiant_art) {
		this.identifiant_art = identifiant_art;
	}
	public void set_code_nature_fou(Integer code_nature_fou) {
		this.code_nature_fou = code_nature_fou;
	}
	public void set_no_societe_liee(Integer no_societe_liee) {
		this.no_societe_liee = no_societe_liee;
	}
	public void set_no_client_lie(Long no_client_lie) {
		this.no_client_lie = no_client_lie;
	}
	public void set_cnuf(Long cnuf) {
		this.cnuf = cnuf;
	}
	public void set_cours_de_reference(BigDecimal cours_de_reference) {
		this.cours_de_reference = cours_de_reference;
	}
	public void set_indic_conf_loueur(Boolean indic_conf_loueur) {
		this.indic_conf_loueur = indic_conf_loueur;
	}
	public void set_der_no_mat_sousloc(Integer der_no_mat_sousloc) {
		this.der_no_mat_sousloc = der_no_mat_sousloc;
	}
	public void set_code_cli_facture(Long code_cli_facture) {
		this.code_cli_facture = code_cli_facture;
	}
	public void set_pourcent_frais_deb(BigDecimal pourcent_frais_deb) {
		this.pourcent_frais_deb = pourcent_frais_deb;
	}
	public void set_code_poltq_px_art(Integer code_poltq_px_art) {
		this.code_poltq_px_art = code_poltq_px_art;
	}
	public void set_code_grille_remise(Boolean code_grille_remise) {
		this.code_grille_remise = code_grille_remise;
	}
	public void set_code_type_cde_stan(String code_type_cde_stan) {
		this.code_type_cde_stan = code_type_cde_stan;
	}
	public void set_code_paie_fou_div(Integer code_paie_fou_div) {
		this.code_paie_fou_div = code_paie_fou_div;
	}
	public void set_code_ech_fou_div(Integer code_ech_fou_div) {
		this.code_ech_fou_div = code_ech_fou_div;
	}
	public void set_code_terme_fou_div(Integer code_terme_fou_div) {
		this.code_terme_fou_div = code_terme_fou_div;
	}
	public void set_indic_etiquetage(Boolean indic_etiquetage) {
		this.indic_etiquetage = indic_etiquetage;
	}
	public void set_object_art_an_n(Long object_art_an_n) {
		this.object_art_an_n = object_art_an_n;
	}
	public void set_object_art_an_n_1(Long object_art_an_n_1) {
		this.object_art_an_n_1 = object_art_an_n_1;
	}
	public void set_periodicite_cde(Integer periodicite_cde) {
		this.periodicite_cde = periodicite_cde;
	}
	public void set_observation1(String observation1) {
		this.observation1 = observation1;
	}
	public void set_observation2(String observation2) {
		this.observation2 = observation2;
	}
	public void set_code_confidentiel(String code_confidentiel) {
		this.code_confidentiel = code_confidentiel;
	}
	public void set_code_poltq_px_mat(Integer code_poltq_px_mat) {
		this.code_poltq_px_mat = code_poltq_px_mat;
	}
	public void set_rem_standard_mat(BigDecimal rem_standard_mat) {
		this.rem_standard_mat = rem_standard_mat;
	}
	public void set_delai_livr_moyen(Integer delai_livr_moyen) {
		this.delai_livr_moyen = delai_livr_moyen;
	}
	public void set_code_base_franco(Integer code_base_franco) {
		this.code_base_franco = code_base_franco;
	}
	public void set_cde_mini_franco(Long cde_mini_franco) {
		this.cde_mini_franco = cde_mini_franco;
	}
	public void set_code_port(Integer code_port) {
		this.code_port = code_port;
	}
	public void set_pourcent_port_fact(BigDecimal pourcent_port_fact) {
		this.pourcent_port_fact = pourcent_port_fact;
	}
	public void set_mode_paiement_mat(Integer mode_paiement_mat) {
		this.mode_paiement_mat = mode_paiement_mat;
	}
	public void set_code_echeance_mat(Integer code_echeance_mat) {
		this.code_echeance_mat = code_echeance_mat;
	}
	public void set_code_terme_mat(Integer code_terme_mat) {
		this.code_terme_mat = code_terme_mat;
	}
	public void set_observation_mat_1(String observation_mat_1) {
		this.observation_mat_1 = observation_mat_1;
	}
	public void set_observation_mat_2(String observation_mat_2) {
		this.observation_mat_2 = observation_mat_2;
	}
	public void set_object_mat_an_n(Long object_mat_an_n) {
		this.object_mat_an_n = object_mat_an_n;
	}
	public void set_object_mat_an_n_1(Long object_mat_an_n_1) {
		this.object_mat_an_n_1 = object_mat_an_n_1;
	}
	public void set_code_numero_dg(Integer code_numero_dg) {
		this.code_numero_dg = code_numero_dg;
	}
	public void set_delai_stand_accord(Integer delai_stand_accord) {
		this.delai_stand_accord = delai_stand_accord;
	}
	public void set_code_model_bord_dg(Integer code_model_bord_dg) {
		this.code_model_bord_dg = code_model_bord_dg;
	}
	public void set_code_base_pieces(Integer code_base_pieces) {
		this.code_base_pieces = code_base_pieces;
	}
	public void set_remboursement_mo(BigDecimal remboursement_mo) {
		this.remboursement_mo = remboursement_mo;
	}
	public void set_commentaire_dg(String commentaire_dg) {
		this.commentaire_dg = commentaire_dg;
	}
	public void set_code_type_rembours(Integer code_type_rembours) {
		this.code_type_rembours = code_type_rembours;
	}
	public void set_no_concessionnaire(String no_concessionnaire) {
		this.no_concessionnaire = no_concessionnaire;
	}
	public void set_indi_justif_no_fac(Integer indi_justif_no_fac) {
		this.indi_justif_no_fac = indi_justif_no_fac;
	}
	public void set_pa_seuil_fac_oblig(Integer pa_seuil_fac_oblig) {
		this.pa_seuil_fac_oblig = pa_seuil_fac_oblig;
	}
	public void set_pourcent_dg(Integer pourcent_dg) {
		this.pourcent_dg = pourcent_dg;
	}
	public void set_der_no_imprime(Long der_no_imprime) {
		this.der_no_imprime = der_no_imprime;
	}
	public void set_coefficient_pieces(BigDecimal coefficient_pieces) {
		this.coefficient_pieces = coefficient_pieces;
	}
	public void set_code_reg_rem_piece(Integer code_reg_rem_piece) {
		this.code_reg_rem_piece = code_reg_rem_piece;
	}
	public void set_code_type_cde_piec(String code_type_cde_piec) {
		this.code_type_cde_piec = code_type_cde_piec;
	}
	public void set_pourcent_rem_piece(BigDecimal pourcent_rem_piece) {
		this.pourcent_rem_piece = pourcent_rem_piece;
	}
	public void set_indic_infos_specif(Integer indic_infos_specif) {
		this.indic_infos_specif = indic_infos_specif;
	}
	public void set_lib_infos_specif(String lib_infos_specif) {
		this.lib_infos_specif = lib_infos_specif;
	}
	public void set_indic_accord_gtie(Integer indic_accord_gtie) {
		this.indic_accord_gtie = indic_accord_gtie;
	}
	public void set_code_base_divers(Integer code_base_divers) {
		this.code_base_divers = code_base_divers;
	}
	public void set_code_reg_rem_div(Integer code_reg_rem_div) {
		this.code_reg_rem_div = code_reg_rem_div;
	}
	public void set_code_type_cde_div(String code_type_cde_div) {
		this.code_type_cde_div = code_type_cde_div;
	}
	public void set_pourcent_rem_div(BigDecimal pourcent_rem_div) {
		this.pourcent_rem_div = pourcent_rem_div;
	}
	public void set_coefficient_divers(BigDecimal coefficient_divers) {
		this.coefficient_divers = coefficient_divers;
	}
	public void set_code_acheteur(String code_acheteur) {
		this.code_acheteur = code_acheteur;
	}
	public void set_indic_fournisseur(Integer indic_fournisseur) {
		this.indic_fournisseur = indic_fournisseur;
	}
	public void set_no_fou_article(Long no_fou_article) {
		this.no_fou_article = no_fou_article;
	}
	public void set_no_fou_materiel(Long no_fou_materiel) {
		this.no_fou_materiel = no_fou_materiel;
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
	public void set_forf_port_materiel(Integer forf_port_materiel) {
		this.forf_port_materiel = forf_port_materiel;
	}
	public void set_code_ape_old(String code_ape_old) {
		this.code_ape_old = code_ape_old;
	}
	public void set_code_siret(String code_siret) {
		this.code_siret = code_siret;
	}
	public void set_code_rubriq_specif(String code_rubriq_specif) {
		this.code_rubriq_specif = code_rubriq_specif;
	}
	public void set_code_ape(String code_ape) {
		this.code_ape = code_ape;
	}
	public void set_auteur_creation(String auteur_creation) {
		this.auteur_creation = auteur_creation;
	}
	public void set_date_creation(Date date_creation) {
		this.date_creation = date_creation;
	}
	public void set_auteur_modif(String auteur_modif) {
		this.auteur_modif = auteur_modif;
	}
	public void set_date_modif(Date date_modif) {
		this.date_modif = date_modif;
	}
	public void set_chiffrage_bc_art(Integer chiffrage_bc_art) {
		this.chiffrage_bc_art = chiffrage_bc_art;
	}
	public void set_chiffrage_bc_mat(Integer chiffrage_bc_mat) {
		this.chiffrage_bc_mat = chiffrage_bc_mat;
	}
	public void set_affect_fiscale(Integer affect_fiscale) {
		this.affect_fiscale = affect_fiscale;
	}
	public void set_env_mfou(String env_mfou) {
		this.env_mfou = env_mfou;
	}
	public void set_exp_mfou(String exp_mfou) {
		this.exp_mfou = exp_mfou;
	}
	public void set_envm_mfou(String envm_mfou) {
		this.envm_mfou = envm_mfou;
	}
	public void set_expm_mfou(String expm_mfou) {
		this.expm_mfou = expm_mfou;
	}
	public void set_typcnh_mfou(String typcnh_mfou) {
		this.typcnh_mfou = typcnh_mfou;
	}
	public void set_typmdi_mfou(String typmdi_mfou) {
		this.typmdi_mfou = typmdi_mfou;
	}
	public void set_indic_fournisseur_materiel(Integer indic_fournisseur_materiel) {
		this.indic_fournisseur_materiel = indic_fournisseur_materiel;
	}
	public void set_clr_mfou(Integer clr_mfou) {
		this.clr_mfou = clr_mfou;
	}
	public void set_ccw_mfou(Integer ccw_mfou) {
		this.ccw_mfou = ccw_mfou;
	}
	public void set_pow_mfou(Integer pow_mfou) {
		this.pow_mfou = pow_mfou;
	}
	public void set_livw_mfou(Integer livw_mfou) {
		this.livw_mfou = livw_mfou;
	}
	public void set_numa_mfou(Integer numa_mfou) {
		this.numa_mfou = numa_mfou;
	}
	public void set_srp_mfou(Integer srp_mfou) {
		this.srp_mfou = srp_mfou;
	}
	public void set_rgpd_mfou(Integer rgpd_mfou) {
		this.rgpd_mfou = rgpd_mfou;
	}
	public void set_dvt_mfou(Date dvt_mfou) {
		this.dvt_mfou = dvt_mfou;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
