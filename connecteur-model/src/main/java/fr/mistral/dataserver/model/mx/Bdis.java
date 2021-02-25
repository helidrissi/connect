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
		@Index(name="idx_bdis_cle1_mbdi", columnList="code_agence,no_bon", unique=true),
		@Index(name="idx_bdis_cle2_mbdi", columnList="code_agence,code_client,type_facturation,no_lieu", unique=false),
		@Index(name="idx_bdis_cle3_mbdi", columnList="code_agence,date_creation", unique=false),
		@Index(name="idx_bdis_cle4_mbdi", columnList="code_client", unique=false),
		@Index(name="idx_bdis_cle5_mbdi", columnList="indic_traitement,code_agence,date_creation", unique=false)
})
public class Bdis implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_agence;
	@Column
	private Long no_bon;
	@Column
	private Integer type_bon;
	@Column
	private Integer tyc_mbdi;
	@Column
	private Integer ivr_mbdi;
	@Column
	private Integer ifo_mbdi;
	@Column
	private Long code_client;
	@Column
	private Integer type_facturation;
	@Column
	private Long no_lieu;
	@Column
	private Integer titre_lieu;
	@Column
	private Integer indic_adresse_lieu;
	@Column
	private String nom_lieu;
	@Column
	private String adresse_lieu;
	@Column
	private String code_postal_lieu;
	@Column
	private String ville_lieu;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_creation;
	@Column
	private Integer mode_paiement_1;
	@Column
	private Integer mode_paiement_2;
	@Column
	private Integer mode_paiement_3;
	@Column
	private Integer mode_paiement_4;
	@Column
	private Integer mode_paiement_5;
	@Column
	private Integer code_echeance_1;
	@Column
	private Integer code_echeance_2;
	@Column
	private Integer code_echeance_3;
	@Column
	private Integer code_echeance_4;
	@Column
	private Integer code_echeance_5;
	@Column
	private Integer code_terme_1;
	@Column
	private Integer code_terme_2;
	@Column
	private Integer code_terme_3;
	@Column
	private Integer code_terme_4;
	@Column
	private Integer code_terme_5;
	@Column
	private Integer nb_jours_echeance_1;
	@Column
	private Integer nb_jours_echeance_2;
	@Column
	private Integer nb_jours_echeance_3;
	@Column
	private Integer nb_jours_echeance_4;
	@Column
	private Integer nb_jours_echeance_5;
	@Column(precision = 9, scale = 2)
	private BigDecimal montant_echeance_1;
	@Column(precision = 9, scale = 2)
	private BigDecimal montant_echeance_2;
	@Column(precision = 9, scale = 2)
	private BigDecimal montant_echeance_3;
	@Column(precision = 9, scale = 2)
	private BigDecimal montant_echeance_4;
	@Column(precision = 9, scale = 2)
	private BigDecimal montant_echeance_5;
	@Column(precision = 5, scale = 2)
	private BigDecimal pct_paiement_1;
	@Column(precision = 5, scale = 2)
	private BigDecimal pct_paiement_2;
	@Column(precision = 5, scale = 2)
	private BigDecimal pct_paiement_3;
	@Column(precision = 5, scale = 2)
	private BigDecimal pct_paiement_4;
	@Column(precision = 5, scale = 2)
	private BigDecimal pct_paiement_5;
	@Column
	private String libelle_paiement;
	@Column
	private String reference_client_1;
	@Column
	private String reference_client_2;
	@Column
	private Long no_facture;
	@Column
	private Integer indic_traitement;
	@Column
	private String code_vendeur;
	@Column
	private Integer reserve;
	@Column
	private Integer indic_a_facturer;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_facture;
	@Column(precision = 5, scale = 2)
	private BigDecimal mt_frais_fac;
	@Column
	private Long bon_cde_genere;
	@Column(precision = 9, scale = 2)
	private BigDecimal total_ht;
	@Column(precision = 9, scale = 2)
	private BigDecimal total_ttc;
	@Column
	private String reference_interne;
	@Column
	private Integer periode_facture;
	@Column
	private String dom_bancaire;
	@Column
	private String adresse_banque;
	@Column
	private Integer code_banque;
	@Column
	private Integer code_guichet;
	@Column
	private String no_cpt_banque;
	@Column
	private Integer cle_rib;
	@Column
	private String cle_rib_iso;
	@Column
	private Integer paiement_sur_relev;
	@Column
	private Integer indic_transport;
	@Column(precision = 4, scale = 2)
	private BigDecimal pct_escompte;
	@Column
	private String agence_sortie_piec;
	@Column
	private Integer depot_sortie_piece;
	@Column(precision = 9, scale = 2)
	private BigDecimal total_pr;
	@Column(precision = 9, scale = 2)
	private BigDecimal mt_marge_plancher;
	@Column(precision = 9, scale = 2)
	private BigDecimal mt_marge_mini;
	@Column(precision = 9, scale = 2)
	private BigDecimal mt_marge_maxi;
	@Column
	private Integer affec_fiscale;
	@Column
	private Integer indic_edition;
	@Column
	private String auteur_creation;
	@Column
	private Integer origine;
	@Column
	private Long code_client_divers;
	@Column
	private Integer niveau_commande;
	@Column
	private String no_agence_blf;
	@Column
	private Long no_blf;
	@Column(precision = 9, scale = 2)
	private BigDecimal mt_acompte;
	@Column
	private String type_commande_cli;
	@Column
	private Long no_client_divers_l;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_liv_prevue;
	@Column
	private Integer nb_parts_copro;
	@Column
	private Integer emsg_mbdi;
	@Column
	private Integer liv_partielle;
	@Column
	private Integer trs_par_nous;
	@Column
	private String type_materiel;
	@Column
	private Long no_ordre_materiel;
	@Column
	private Integer reserve2;
	@Column
	private Integer delai_devis;
	@Column
	private Integer validite_devis;
	@Column
	private Long no_prospect;
	@Column(precision = 9, scale = 2)
	private BigDecimal montant_forfait;
	@Column
	private Integer detail_forfait_fac;
	@Column
	private Integer indic_facture_devi;
	@Column(precision = 8, scale = 5)
	private BigDecimal cours_devise;
	@Column
	private Integer indic_remise;
	@Column(precision = 4, scale = 2)
	private BigDecimal pct_remise;
	@Column
	private Integer indic_port_usine;
	@Column
	private Integer type_tva;
	@Column(precision = 4, scale = 2)
	private BigDecimal pct_tva;
	@Column
	private Long no_commande;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_liv_prevue_cd;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_commande;
	@Column(precision = 8, scale = 2)
	private BigDecimal mt_port_facture;
	@Column
	private Integer indic_avoir_genere;
	@Column
	private Integer indic_paiement_imm;
	@Column
	private Long no_client_livre;
	@Column
	private Long no_interlocuteur;
	@Column
	private Integer nombre_copro;
	@Column
	private Integer indic_mobidis;
	@Column
	private Integer acompte_deduit;
	@Column
	private Long no_fou_centrale;
	@Column
	private String no_affaire;
	@Column
	private Integer transport_saisi;
	@Column
	private Integer bon_en_attente;
	@Column
	private String no_autorisation_cr;
	@Column
	private String no_ts_prospect;
	@Column
	private Integer indic_edition_bl;
	@Column
	private Long no_devis;
	@Column
	private Integer mode_paiement_acom;
	@Column
	private Long no_facture_acompte;
	@Column
	private Integer indic_or_genere;
	@Column
	private String marque_mat;
	@Column
	private Integer indic_recu_mobile;
	@Column
	private Integer no_ordre_blf;
	@Column
	private String stade_devis;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_relance_devis;
	@Column
	private Long no_taa_inter_agenc;
	@Column
	private Integer indic_fidelite;
	@Column
	private String motif_avoir;
	@Column
	private String agence_livraison;
	@Column
	private Integer retour_piece;
	@Column
	private Integer indic_conex;
	@Column
	private String code_service;
	@Column
	private Integer sortie_exceptionnelle;
	@Column
	private Integer edo_mbdi;
	public String get_code_agence() {
		return code_agence;
	}
	public Long get_no_bon() {
		return no_bon;
	}
	public Integer get_type_bon() {
		return type_bon;
	}
	public Integer get_tyc_mbdi() {
		return tyc_mbdi;
	}
	public Integer get_ivr_mbdi() {
		return ivr_mbdi;
	}
	public Integer get_ifo_mbdi() {
		return ifo_mbdi;
	}
	public Long get_code_client() {
		return code_client;
	}
	public Integer get_type_facturation() {
		return type_facturation;
	}
	public Long get_no_lieu() {
		return no_lieu;
	}
	public Integer get_titre_lieu() {
		return titre_lieu;
	}
	public Integer get_indic_adresse_lieu() {
		return indic_adresse_lieu;
	}
	public String get_nom_lieu() {
		return nom_lieu;
	}
	public String get_adresse_lieu() {
		return adresse_lieu;
	}
	public String get_code_postal_lieu() {
		return code_postal_lieu;
	}
	public String get_ville_lieu() {
		return ville_lieu;
	}
	public Date get_date_creation() {
		return date_creation;
	}
	public Integer get_mode_paiement_1() {
		return mode_paiement_1;
	}
	public Integer get_mode_paiement_2() {
		return mode_paiement_2;
	}
	public Integer get_mode_paiement_3() {
		return mode_paiement_3;
	}
	public Integer get_mode_paiement_4() {
		return mode_paiement_4;
	}
	public Integer get_mode_paiement_5() {
		return mode_paiement_5;
	}
	public Integer get_code_echeance_1() {
		return code_echeance_1;
	}
	public Integer get_code_echeance_2() {
		return code_echeance_2;
	}
	public Integer get_code_echeance_3() {
		return code_echeance_3;
	}
	public Integer get_code_echeance_4() {
		return code_echeance_4;
	}
	public Integer get_code_echeance_5() {
		return code_echeance_5;
	}
	public Integer get_code_terme_1() {
		return code_terme_1;
	}
	public Integer get_code_terme_2() {
		return code_terme_2;
	}
	public Integer get_code_terme_3() {
		return code_terme_3;
	}
	public Integer get_code_terme_4() {
		return code_terme_4;
	}
	public Integer get_code_terme_5() {
		return code_terme_5;
	}
	public Integer get_nb_jours_echeance_1() {
		return nb_jours_echeance_1;
	}
	public Integer get_nb_jours_echeance_2() {
		return nb_jours_echeance_2;
	}
	public Integer get_nb_jours_echeance_3() {
		return nb_jours_echeance_3;
	}
	public Integer get_nb_jours_echeance_4() {
		return nb_jours_echeance_4;
	}
	public Integer get_nb_jours_echeance_5() {
		return nb_jours_echeance_5;
	}
	public BigDecimal get_montant_echeance_1() {
		return montant_echeance_1;
	}
	public BigDecimal get_montant_echeance_2() {
		return montant_echeance_2;
	}
	public BigDecimal get_montant_echeance_3() {
		return montant_echeance_3;
	}
	public BigDecimal get_montant_echeance_4() {
		return montant_echeance_4;
	}
	public BigDecimal get_montant_echeance_5() {
		return montant_echeance_5;
	}
	public BigDecimal get_pct_paiement_1() {
		return pct_paiement_1;
	}
	public BigDecimal get_pct_paiement_2() {
		return pct_paiement_2;
	}
	public BigDecimal get_pct_paiement_3() {
		return pct_paiement_3;
	}
	public BigDecimal get_pct_paiement_4() {
		return pct_paiement_4;
	}
	public BigDecimal get_pct_paiement_5() {
		return pct_paiement_5;
	}
	public String get_libelle_paiement() {
		return libelle_paiement;
	}
	public String get_reference_client_1() {
		return reference_client_1;
	}
	public String get_reference_client_2() {
		return reference_client_2;
	}
	public Long get_no_facture() {
		return no_facture;
	}
	public Integer get_indic_traitement() {
		return indic_traitement;
	}
	public String get_code_vendeur() {
		return code_vendeur;
	}
	public Integer get_reserve() {
		return reserve;
	}
	public Integer get_indic_a_facturer() {
		return indic_a_facturer;
	}
	public Date get_date_facture() {
		return date_facture;
	}
	public BigDecimal get_mt_frais_fac() {
		return mt_frais_fac;
	}
	public Long get_bon_cde_genere() {
		return bon_cde_genere;
	}
	public BigDecimal get_total_ht() {
		return total_ht;
	}
	public BigDecimal get_total_ttc() {
		return total_ttc;
	}
	public String get_reference_interne() {
		return reference_interne;
	}
	public Integer get_periode_facture() {
		return periode_facture;
	}
	public String get_dom_bancaire() {
		return dom_bancaire;
	}
	public String get_adresse_banque() {
		return adresse_banque;
	}
	public Integer get_code_banque() {
		return code_banque;
	}
	public Integer get_code_guichet() {
		return code_guichet;
	}
	public String get_no_cpt_banque() {
		return no_cpt_banque;
	}
	public Integer get_cle_rib() {
		return cle_rib;
	}
	public String get_cle_rib_iso() {
		return cle_rib_iso;
	}
	public Integer get_paiement_sur_relev() {
		return paiement_sur_relev;
	}
	public Integer get_indic_transport() {
		return indic_transport;
	}
	public BigDecimal get_pct_escompte() {
		return pct_escompte;
	}
	public String get_agence_sortie_piec() {
		return agence_sortie_piec;
	}
	public Integer get_depot_sortie_piece() {
		return depot_sortie_piece;
	}
	public BigDecimal get_total_pr() {
		return total_pr;
	}
	public BigDecimal get_mt_marge_plancher() {
		return mt_marge_plancher;
	}
	public BigDecimal get_mt_marge_mini() {
		return mt_marge_mini;
	}
	public BigDecimal get_mt_marge_maxi() {
		return mt_marge_maxi;
	}
	public Integer get_affec_fiscale() {
		return affec_fiscale;
	}
	public Integer get_indic_edition() {
		return indic_edition;
	}
	public String get_auteur_creation() {
		return auteur_creation;
	}
	public Integer get_origine() {
		return origine;
	}
	public Long get_code_client_divers() {
		return code_client_divers;
	}
	public Integer get_niveau_commande() {
		return niveau_commande;
	}
	public String get_no_agence_blf() {
		return no_agence_blf;
	}
	public Long get_no_blf() {
		return no_blf;
	}
	public BigDecimal get_mt_acompte() {
		return mt_acompte;
	}
	public String get_type_commande_cli() {
		return type_commande_cli;
	}
	public Long get_no_client_divers_l() {
		return no_client_divers_l;
	}
	public Date get_date_liv_prevue() {
		return date_liv_prevue;
	}
	public Integer get_nb_parts_copro() {
		return nb_parts_copro;
	}
	public Integer get_emsg_mbdi() {
		return emsg_mbdi;
	}
	public Integer get_liv_partielle() {
		return liv_partielle;
	}
	public Integer get_trs_par_nous() {
		return trs_par_nous;
	}
	public String get_type_materiel() {
		return type_materiel;
	}
	public Long get_no_ordre_materiel() {
		return no_ordre_materiel;
	}
	public Integer get_reserve2() {
		return reserve2;
	}
	public Integer get_delai_devis() {
		return delai_devis;
	}
	public Integer get_validite_devis() {
		return validite_devis;
	}
	public Long get_no_prospect() {
		return no_prospect;
	}
	public BigDecimal get_montant_forfait() {
		return montant_forfait;
	}
	public Integer get_detail_forfait_fac() {
		return detail_forfait_fac;
	}
	public Integer get_indic_facture_devi() {
		return indic_facture_devi;
	}
	public BigDecimal get_cours_devise() {
		return cours_devise;
	}
	public Integer get_indic_remise() {
		return indic_remise;
	}
	public BigDecimal get_pct_remise() {
		return pct_remise;
	}
	public Integer get_indic_port_usine() {
		return indic_port_usine;
	}
	public Integer get_type_tva() {
		return type_tva;
	}
	public BigDecimal get_pct_tva() {
		return pct_tva;
	}
	public Long get_no_commande() {
		return no_commande;
	}
	public Date get_date_liv_prevue_cd() {
		return date_liv_prevue_cd;
	}
	public Date get_date_commande() {
		return date_commande;
	}
	public BigDecimal get_mt_port_facture() {
		return mt_port_facture;
	}
	public Integer get_indic_avoir_genere() {
		return indic_avoir_genere;
	}
	public Integer get_indic_paiement_imm() {
		return indic_paiement_imm;
	}
	public Long get_no_client_livre() {
		return no_client_livre;
	}
	public Long get_no_interlocuteur() {
		return no_interlocuteur;
	}
	public Integer get_nombre_copro() {
		return nombre_copro;
	}
	public Integer get_indic_mobidis() {
		return indic_mobidis;
	}
	public Integer get_acompte_deduit() {
		return acompte_deduit;
	}
	public Long get_no_fou_centrale() {
		return no_fou_centrale;
	}
	public String get_no_affaire() {
		return no_affaire;
	}
	public Integer get_transport_saisi() {
		return transport_saisi;
	}
	public Integer get_bon_en_attente() {
		return bon_en_attente;
	}
	public String get_no_autorisation_cr() {
		return no_autorisation_cr;
	}
	public String get_no_ts_prospect() {
		return no_ts_prospect;
	}
	public Integer get_indic_edition_bl() {
		return indic_edition_bl;
	}
	public Long get_no_devis() {
		return no_devis;
	}
	public Integer get_mode_paiement_acom() {
		return mode_paiement_acom;
	}
	public Long get_no_facture_acompte() {
		return no_facture_acompte;
	}
	public Integer get_indic_or_genere() {
		return indic_or_genere;
	}
	public String get_marque_mat() {
		return marque_mat;
	}
	public Integer get_indic_recu_mobile() {
		return indic_recu_mobile;
	}
	public Integer get_no_ordre_blf() {
		return no_ordre_blf;
	}
	public String get_stade_devis() {
		return stade_devis;
	}
	public Date get_date_relance_devis() {
		return date_relance_devis;
	}
	public Long get_no_taa_inter_agenc() {
		return no_taa_inter_agenc;
	}
	public Integer get_indic_fidelite() {
		return indic_fidelite;
	}
	public String get_motif_avoir() {
		return motif_avoir;
	}
	public String get_agence_livraison() {
		return agence_livraison;
	}
	public Integer get_retour_piece() {
		return retour_piece;
	}
	public Integer get_indic_conex() {
		return indic_conex;
	}
	public String get_code_service() {
		return code_service;
	}
	public Integer get_sortie_exceptionnelle() {
		return sortie_exceptionnelle;
	}
	public Integer get_edo_mbdi() {
		return edo_mbdi;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_no_bon(Long no_bon) {
		this.no_bon = no_bon;
	}
	public void set_type_bon(Integer type_bon) {
		this.type_bon = type_bon;
	}
	public void set_tyc_mbdi(Integer tyc_mbdi) {
		this.tyc_mbdi = tyc_mbdi;
	}
	public void set_ivr_mbdi(Integer ivr_mbdi) {
		this.ivr_mbdi = ivr_mbdi;
	}
	public void set_ifo_mbdi(Integer ifo_mbdi) {
		this.ifo_mbdi = ifo_mbdi;
	}
	public void set_code_client(Long code_client) {
		this.code_client = code_client;
	}
	public void set_type_facturation(Integer type_facturation) {
		this.type_facturation = type_facturation;
	}
	public void set_no_lieu(Long no_lieu) {
		this.no_lieu = no_lieu;
	}
	public void set_titre_lieu(Integer titre_lieu) {
		this.titre_lieu = titre_lieu;
	}
	public void set_indic_adresse_lieu(Integer indic_adresse_lieu) {
		this.indic_adresse_lieu = indic_adresse_lieu;
	}
	public void set_nom_lieu(String nom_lieu) {
		this.nom_lieu = nom_lieu;
	}
	public void set_adresse_lieu(String adresse_lieu) {
		this.adresse_lieu = adresse_lieu;
	}
	public void set_code_postal_lieu(String code_postal_lieu) {
		this.code_postal_lieu = code_postal_lieu;
	}
	public void set_ville_lieu(String ville_lieu) {
		this.ville_lieu = ville_lieu;
	}
	public void set_date_creation(Date date_creation) {
		this.date_creation = date_creation;
	}
	public void set_mode_paiement_1(Integer mode_paiement_1) {
		this.mode_paiement_1 = mode_paiement_1;
	}
	public void set_mode_paiement_2(Integer mode_paiement_2) {
		this.mode_paiement_2 = mode_paiement_2;
	}
	public void set_mode_paiement_3(Integer mode_paiement_3) {
		this.mode_paiement_3 = mode_paiement_3;
	}
	public void set_mode_paiement_4(Integer mode_paiement_4) {
		this.mode_paiement_4 = mode_paiement_4;
	}
	public void set_mode_paiement_5(Integer mode_paiement_5) {
		this.mode_paiement_5 = mode_paiement_5;
	}
	public void set_code_echeance_1(Integer code_echeance_1) {
		this.code_echeance_1 = code_echeance_1;
	}
	public void set_code_echeance_2(Integer code_echeance_2) {
		this.code_echeance_2 = code_echeance_2;
	}
	public void set_code_echeance_3(Integer code_echeance_3) {
		this.code_echeance_3 = code_echeance_3;
	}
	public void set_code_echeance_4(Integer code_echeance_4) {
		this.code_echeance_4 = code_echeance_4;
	}
	public void set_code_echeance_5(Integer code_echeance_5) {
		this.code_echeance_5 = code_echeance_5;
	}
	public void set_code_terme_1(Integer code_terme_1) {
		this.code_terme_1 = code_terme_1;
	}
	public void set_code_terme_2(Integer code_terme_2) {
		this.code_terme_2 = code_terme_2;
	}
	public void set_code_terme_3(Integer code_terme_3) {
		this.code_terme_3 = code_terme_3;
	}
	public void set_code_terme_4(Integer code_terme_4) {
		this.code_terme_4 = code_terme_4;
	}
	public void set_code_terme_5(Integer code_terme_5) {
		this.code_terme_5 = code_terme_5;
	}
	public void set_nb_jours_echeance_1(Integer nb_jours_echeance_1) {
		this.nb_jours_echeance_1 = nb_jours_echeance_1;
	}
	public void set_nb_jours_echeance_2(Integer nb_jours_echeance_2) {
		this.nb_jours_echeance_2 = nb_jours_echeance_2;
	}
	public void set_nb_jours_echeance_3(Integer nb_jours_echeance_3) {
		this.nb_jours_echeance_3 = nb_jours_echeance_3;
	}
	public void set_nb_jours_echeance_4(Integer nb_jours_echeance_4) {
		this.nb_jours_echeance_4 = nb_jours_echeance_4;
	}
	public void set_nb_jours_echeance_5(Integer nb_jours_echeance_5) {
		this.nb_jours_echeance_5 = nb_jours_echeance_5;
	}
	public void set_montant_echeance_1(BigDecimal montant_echeance_1) {
		this.montant_echeance_1 = montant_echeance_1;
	}
	public void set_montant_echeance_2(BigDecimal montant_echeance_2) {
		this.montant_echeance_2 = montant_echeance_2;
	}
	public void set_montant_echeance_3(BigDecimal montant_echeance_3) {
		this.montant_echeance_3 = montant_echeance_3;
	}
	public void set_montant_echeance_4(BigDecimal montant_echeance_4) {
		this.montant_echeance_4 = montant_echeance_4;
	}
	public void set_montant_echeance_5(BigDecimal montant_echeance_5) {
		this.montant_echeance_5 = montant_echeance_5;
	}
	public void set_pct_paiement_1(BigDecimal pct_paiement_1) {
		this.pct_paiement_1 = pct_paiement_1;
	}
	public void set_pct_paiement_2(BigDecimal pct_paiement_2) {
		this.pct_paiement_2 = pct_paiement_2;
	}
	public void set_pct_paiement_3(BigDecimal pct_paiement_3) {
		this.pct_paiement_3 = pct_paiement_3;
	}
	public void set_pct_paiement_4(BigDecimal pct_paiement_4) {
		this.pct_paiement_4 = pct_paiement_4;
	}
	public void set_pct_paiement_5(BigDecimal pct_paiement_5) {
		this.pct_paiement_5 = pct_paiement_5;
	}
	public void set_libelle_paiement(String libelle_paiement) {
		this.libelle_paiement = libelle_paiement;
	}
	public void set_reference_client_1(String reference_client_1) {
		this.reference_client_1 = reference_client_1;
	}
	public void set_reference_client_2(String reference_client_2) {
		this.reference_client_2 = reference_client_2;
	}
	public void set_no_facture(Long no_facture) {
		this.no_facture = no_facture;
	}
	public void set_indic_traitement(Integer indic_traitement) {
		this.indic_traitement = indic_traitement;
	}
	public void set_code_vendeur(String code_vendeur) {
		this.code_vendeur = code_vendeur;
	}
	public void set_reserve(Integer reserve) {
		this.reserve = reserve;
	}
	public void set_indic_a_facturer(Integer indic_a_facturer) {
		this.indic_a_facturer = indic_a_facturer;
	}
	public void set_date_facture(Date date_facture) {
		this.date_facture = date_facture;
	}
	public void set_mt_frais_fac(BigDecimal mt_frais_fac) {
		this.mt_frais_fac = mt_frais_fac;
	}
	public void set_bon_cde_genere(Long bon_cde_genere) {
		this.bon_cde_genere = bon_cde_genere;
	}
	public void set_total_ht(BigDecimal total_ht) {
		this.total_ht = total_ht;
	}
	public void set_total_ttc(BigDecimal total_ttc) {
		this.total_ttc = total_ttc;
	}
	public void set_reference_interne(String reference_interne) {
		this.reference_interne = reference_interne;
	}
	public void set_periode_facture(Integer periode_facture) {
		this.periode_facture = periode_facture;
	}
	public void set_dom_bancaire(String dom_bancaire) {
		this.dom_bancaire = dom_bancaire;
	}
	public void set_adresse_banque(String adresse_banque) {
		this.adresse_banque = adresse_banque;
	}
	public void set_code_banque(Integer code_banque) {
		this.code_banque = code_banque;
	}
	public void set_code_guichet(Integer code_guichet) {
		this.code_guichet = code_guichet;
	}
	public void set_no_cpt_banque(String no_cpt_banque) {
		this.no_cpt_banque = no_cpt_banque;
	}
	public void set_cle_rib(Integer cle_rib) {
		this.cle_rib = cle_rib;
	}
	public void set_cle_rib_iso(String cle_rib_iso) {
		this.cle_rib_iso = cle_rib_iso;
	}
	public void set_paiement_sur_relev(Integer paiement_sur_relev) {
		this.paiement_sur_relev = paiement_sur_relev;
	}
	public void set_indic_transport(Integer indic_transport) {
		this.indic_transport = indic_transport;
	}
	public void set_pct_escompte(BigDecimal pct_escompte) {
		this.pct_escompte = pct_escompte;
	}
	public void set_agence_sortie_piec(String agence_sortie_piec) {
		this.agence_sortie_piec = agence_sortie_piec;
	}
	public void set_depot_sortie_piece(Integer depot_sortie_piece) {
		this.depot_sortie_piece = depot_sortie_piece;
	}
	public void set_total_pr(BigDecimal total_pr) {
		this.total_pr = total_pr;
	}
	public void set_mt_marge_plancher(BigDecimal mt_marge_plancher) {
		this.mt_marge_plancher = mt_marge_plancher;
	}
	public void set_mt_marge_mini(BigDecimal mt_marge_mini) {
		this.mt_marge_mini = mt_marge_mini;
	}
	public void set_mt_marge_maxi(BigDecimal mt_marge_maxi) {
		this.mt_marge_maxi = mt_marge_maxi;
	}
	public void set_affec_fiscale(Integer affec_fiscale) {
		this.affec_fiscale = affec_fiscale;
	}
	public void set_indic_edition(Integer indic_edition) {
		this.indic_edition = indic_edition;
	}
	public void set_auteur_creation(String auteur_creation) {
		this.auteur_creation = auteur_creation;
	}
	public void set_origine(Integer origine) {
		this.origine = origine;
	}
	public void set_code_client_divers(Long code_client_divers) {
		this.code_client_divers = code_client_divers;
	}
	public void set_niveau_commande(Integer niveau_commande) {
		this.niveau_commande = niveau_commande;
	}
	public void set_no_agence_blf(String no_agence_blf) {
		this.no_agence_blf = no_agence_blf;
	}
	public void set_no_blf(Long no_blf) {
		this.no_blf = no_blf;
	}
	public void set_mt_acompte(BigDecimal mt_acompte) {
		this.mt_acompte = mt_acompte;
	}
	public void set_type_commande_cli(String type_commande_cli) {
		this.type_commande_cli = type_commande_cli;
	}
	public void set_no_client_divers_l(Long no_client_divers_l) {
		this.no_client_divers_l = no_client_divers_l;
	}
	public void set_date_liv_prevue(Date date_liv_prevue) {
		this.date_liv_prevue = date_liv_prevue;
	}
	public void set_nb_parts_copro(Integer nb_parts_copro) {
		this.nb_parts_copro = nb_parts_copro;
	}
	public void set_emsg_mbdi(Integer emsg_mbdi) {
		this.emsg_mbdi = emsg_mbdi;
	}
	public void set_liv_partielle(Integer liv_partielle) {
		this.liv_partielle = liv_partielle;
	}
	public void set_trs_par_nous(Integer trs_par_nous) {
		this.trs_par_nous = trs_par_nous;
	}
	public void set_type_materiel(String type_materiel) {
		this.type_materiel = type_materiel;
	}
	public void set_no_ordre_materiel(Long no_ordre_materiel) {
		this.no_ordre_materiel = no_ordre_materiel;
	}
	public void set_reserve2(Integer reserve2) {
		this.reserve2 = reserve2;
	}
	public void set_delai_devis(Integer delai_devis) {
		this.delai_devis = delai_devis;
	}
	public void set_validite_devis(Integer validite_devis) {
		this.validite_devis = validite_devis;
	}
	public void set_no_prospect(Long no_prospect) {
		this.no_prospect = no_prospect;
	}
	public void set_montant_forfait(BigDecimal montant_forfait) {
		this.montant_forfait = montant_forfait;
	}
	public void set_detail_forfait_fac(Integer detail_forfait_fac) {
		this.detail_forfait_fac = detail_forfait_fac;
	}
	public void set_indic_facture_devi(Integer indic_facture_devi) {
		this.indic_facture_devi = indic_facture_devi;
	}
	public void set_cours_devise(BigDecimal cours_devise) {
		this.cours_devise = cours_devise;
	}
	public void set_indic_remise(Integer indic_remise) {
		this.indic_remise = indic_remise;
	}
	public void set_pct_remise(BigDecimal pct_remise) {
		this.pct_remise = pct_remise;
	}
	public void set_indic_port_usine(Integer indic_port_usine) {
		this.indic_port_usine = indic_port_usine;
	}
	public void set_type_tva(Integer type_tva) {
		this.type_tva = type_tva;
	}
	public void set_pct_tva(BigDecimal pct_tva) {
		this.pct_tva = pct_tva;
	}
	public void set_no_commande(Long no_commande) {
		this.no_commande = no_commande;
	}
	public void set_date_liv_prevue_cd(Date date_liv_prevue_cd) {
		this.date_liv_prevue_cd = date_liv_prevue_cd;
	}
	public void set_date_commande(Date date_commande) {
		this.date_commande = date_commande;
	}
	public void set_mt_port_facture(BigDecimal mt_port_facture) {
		this.mt_port_facture = mt_port_facture;
	}
	public void set_indic_avoir_genere(Integer indic_avoir_genere) {
		this.indic_avoir_genere = indic_avoir_genere;
	}
	public void set_indic_paiement_imm(Integer indic_paiement_imm) {
		this.indic_paiement_imm = indic_paiement_imm;
	}
	public void set_no_client_livre(Long no_client_livre) {
		this.no_client_livre = no_client_livre;
	}
	public void set_no_interlocuteur(Long no_interlocuteur) {
		this.no_interlocuteur = no_interlocuteur;
	}
	public void set_nombre_copro(Integer nombre_copro) {
		this.nombre_copro = nombre_copro;
	}
	public void set_indic_mobidis(Integer indic_mobidis) {
		this.indic_mobidis = indic_mobidis;
	}
	public void set_acompte_deduit(Integer acompte_deduit) {
		this.acompte_deduit = acompte_deduit;
	}
	public void set_no_fou_centrale(Long no_fou_centrale) {
		this.no_fou_centrale = no_fou_centrale;
	}
	public void set_no_affaire(String no_affaire) {
		this.no_affaire = no_affaire;
	}
	public void set_transport_saisi(Integer transport_saisi) {
		this.transport_saisi = transport_saisi;
	}
	public void set_bon_en_attente(Integer bon_en_attente) {
		this.bon_en_attente = bon_en_attente;
	}
	public void set_no_autorisation_cr(String no_autorisation_cr) {
		this.no_autorisation_cr = no_autorisation_cr;
	}
	public void set_no_ts_prospect(String no_ts_prospect) {
		this.no_ts_prospect = no_ts_prospect;
	}
	public void set_indic_edition_bl(Integer indic_edition_bl) {
		this.indic_edition_bl = indic_edition_bl;
	}
	public void set_no_devis(Long no_devis) {
		this.no_devis = no_devis;
	}
	public void set_mode_paiement_acom(Integer mode_paiement_acom) {
		this.mode_paiement_acom = mode_paiement_acom;
	}
	public void set_no_facture_acompte(Long no_facture_acompte) {
		this.no_facture_acompte = no_facture_acompte;
	}
	public void set_indic_or_genere(Integer indic_or_genere) {
		this.indic_or_genere = indic_or_genere;
	}
	public void set_marque_mat(String marque_mat) {
		this.marque_mat = marque_mat;
	}
	public void set_indic_recu_mobile(Integer indic_recu_mobile) {
		this.indic_recu_mobile = indic_recu_mobile;
	}
	public void set_no_ordre_blf(Integer no_ordre_blf) {
		this.no_ordre_blf = no_ordre_blf;
	}
	public void set_stade_devis(String stade_devis) {
		this.stade_devis = stade_devis;
	}
	public void set_date_relance_devis(Date date_relance_devis) {
		this.date_relance_devis = date_relance_devis;
	}
	public void set_no_taa_inter_agenc(Long no_taa_inter_agenc) {
		this.no_taa_inter_agenc = no_taa_inter_agenc;
	}
	public void set_indic_fidelite(Integer indic_fidelite) {
		this.indic_fidelite = indic_fidelite;
	}
	public void set_motif_avoir(String motif_avoir) {
		this.motif_avoir = motif_avoir;
	}
	public void set_agence_livraison(String agence_livraison) {
		this.agence_livraison = agence_livraison;
	}
	public void set_retour_piece(Integer retour_piece) {
		this.retour_piece = retour_piece;
	}
	public void set_indic_conex(Integer indic_conex) {
		this.indic_conex = indic_conex;
	}
	public void set_code_service(String code_service) {
		this.code_service = code_service;
	}
	public void set_sortie_exceptionnelle(Integer sortie_exceptionnelle) {
		this.sortie_exceptionnelle = sortie_exceptionnelle;
	}
	public void set_edo_mbdi(Integer edo_mbdi) {
		this.edo_mbdi = edo_mbdi;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
