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
		@Index(name="idx_hisvte_cle1_mhiv", columnList="no_interne_hisvte", unique=true),
		@Index(name="idx_hisvte_cle9_mhiv", columnList="code_agence,origine_vente,no_bon_vte,no_ligne_vte,no_sousligne_vte", unique=false),
		@Index(name="idx_hisvte_cle7_mhiv", columnList="date_sortie_piece", unique=false),
		@Index(name="idx_hisvte_cle8_mhiv", columnList="date_facturation", unique=false),
		@Index(name="idx_hisvte_cle2_mhiv", columnList="code_client,code_client_divers,date_sortie_piece", unique=false),
		@Index(name="idx_hisvte_cle3_mhiv", columnList="code_article,date_sortie_piece", unique=false),
		@Index(name="idx_hisvte_cle4_mhiv", columnList="code_vendeur,date_sortie_piece", unique=false),
		@Index(name="idx_hisvte_cle5_mhiv", columnList="code_poste_ci,date_sortie_piece", unique=false),
		@Index(name="idx_hisvte_cle6_mhiv", columnList="no_ordre_materiel,date_sortie_piece", unique=false)
})
public class Hisvte implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long no_interne_hisvte;
	@Column
	private String code_agence;
	@Column
	private String origine_vente;
	@Column
	private String no_bon_vte;
	@Column
	private Integer no_ligne_vte;
	@Column
	private Integer no_sousligne_vte;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_sortie_piece;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_facturation;
	@Column
	private Integer dep_mhiv;
	@Column
	private Long code_client;
	@Column
	private Long code_client_divers;
	@Column
	private Integer icc_mhiv;
	@Column
	private String code_article;
	@Column
	private String code_vendeur;
	@Column(precision = 8, scale = 2)
	private BigDecimal quantite;
	@Column(precision = 10, scale = 3)
	private BigDecimal prix_de_vente_net;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise;
	@Column
	private Integer indic_marge;
	@Column
	private Integer indic_chg_ref;
	@Column(precision = 10, scale = 3)
	private BigDecimal marge_unitaire;
	@Column
	private String indic_garantie;
	@Column
	private Integer code_poste_ci;
	@Column
	private Long no_ordre_materiel;
	@Column
	private Integer indic_retrocession;
	@Column
	private String libelle_mvt_stock;
	@Column
	private Integer indic_art_ref;
	@Column
	private Integer indicateur_promo;
	@Column
	private Integer indic_composition;
	@Column
	private Integer code_agent;
	@Column
	private Integer indic_port_usine;
	@Column
	private Long no_facture;
	@Column
	private Integer ilc_mhiv;
	@Column
	private Integer indic_sans_qte;
	@Column
	private Integer indic_sortie_excep;
	@Column
	private Integer niveau_commande;
	@Column
	private String code_agence_sortie;
	@Column
	private Integer indic_traitement;
	@Column
	private String code_technicien;
	@Column
	private String indic_gratuit;
	@Column
	private String code_salarie_saisi;
	@Column
	private Integer type_commande;
	@Column
	private Long code_lieu_livr;
	@Column
	private Long code_client_livre;
	@Column
	private Long code_interlocuteur;
	@Column
	private String no_affaire;
	@Column
	private String designation;
	@Column
	private Integer prix_au_xxx;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_commande;
	@Column
	private String no_lot;
	@Column
	private Integer code_atelier_ori;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_maj;
	public Long get_no_interne_hisvte() {
		return no_interne_hisvte;
	}
	public String get_code_agence() {
		return code_agence;
	}
	public String get_origine_vente() {
		return origine_vente;
	}
	public String get_no_bon_vte() {
		return no_bon_vte;
	}
	public Integer get_no_ligne_vte() {
		return no_ligne_vte;
	}
	public Integer get_no_sousligne_vte() {
		return no_sousligne_vte;
	}
	public Date get_date_sortie_piece() {
		return date_sortie_piece;
	}
	public Date get_date_facturation() {
		return date_facturation;
	}
	public Integer get_dep_mhiv() {
		return dep_mhiv;
	}
	public Long get_code_client() {
		return code_client;
	}
	public Long get_code_client_divers() {
		return code_client_divers;
	}
	public Integer get_icc_mhiv() {
		return icc_mhiv;
	}
	public String get_code_article() {
		return code_article;
	}
	public String get_code_vendeur() {
		return code_vendeur;
	}
	public BigDecimal get_quantite() {
		return quantite;
	}
	public BigDecimal get_prix_de_vente_net() {
		return prix_de_vente_net;
	}
	public BigDecimal get_remise() {
		return remise;
	}
	public Integer get_indic_marge() {
		return indic_marge;
	}
	public Integer get_indic_chg_ref() {
		return indic_chg_ref;
	}
	public BigDecimal get_marge_unitaire() {
		return marge_unitaire;
	}
	public String get_indic_garantie() {
		return indic_garantie;
	}
	public Integer get_code_poste_ci() {
		return code_poste_ci;
	}
	public Long get_no_ordre_materiel() {
		return no_ordre_materiel;
	}
	public Integer get_indic_retrocession() {
		return indic_retrocession;
	}
	public String get_libelle_mvt_stock() {
		return libelle_mvt_stock;
	}
	public Integer get_indic_art_ref() {
		return indic_art_ref;
	}
	public Integer get_indicateur_promo() {
		return indicateur_promo;
	}
	public Integer get_indic_composition() {
		return indic_composition;
	}
	public Integer get_code_agent() {
		return code_agent;
	}
	public Integer get_indic_port_usine() {
		return indic_port_usine;
	}
	public Long get_no_facture() {
		return no_facture;
	}
	public Integer get_ilc_mhiv() {
		return ilc_mhiv;
	}
	public Integer get_indic_sans_qte() {
		return indic_sans_qte;
	}
	public Integer get_indic_sortie_excep() {
		return indic_sortie_excep;
	}
	public Integer get_niveau_commande() {
		return niveau_commande;
	}
	public String get_code_agence_sortie() {
		return code_agence_sortie;
	}
	public Integer get_indic_traitement() {
		return indic_traitement;
	}
	public String get_code_technicien() {
		return code_technicien;
	}
	public String get_indic_gratuit() {
		return indic_gratuit;
	}
	public String get_code_salarie_saisi() {
		return code_salarie_saisi;
	}
	public Integer get_type_commande() {
		return type_commande;
	}
	public Long get_code_lieu_livr() {
		return code_lieu_livr;
	}
	public Long get_code_client_livre() {
		return code_client_livre;
	}
	public Long get_code_interlocuteur() {
		return code_interlocuteur;
	}
	public String get_no_affaire() {
		return no_affaire;
	}
	public String get_designation() {
		return designation;
	}
	public Integer get_prix_au_xxx() {
		return prix_au_xxx;
	}
	public Date get_date_commande() {
		return date_commande;
	}
	public String get_no_lot() {
		return no_lot;
	}
	public Integer get_code_atelier_ori() {
		return code_atelier_ori;
	}
	public Date get_date_maj() {
		return date_maj;
	}
	public void set_no_interne_hisvte(Long no_interne_hisvte) {
		this.no_interne_hisvte = no_interne_hisvte;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_origine_vente(String origine_vente) {
		this.origine_vente = origine_vente;
	}
	public void set_no_bon_vte(String no_bon_vte) {
		this.no_bon_vte = no_bon_vte;
	}
	public void set_no_ligne_vte(Integer no_ligne_vte) {
		this.no_ligne_vte = no_ligne_vte;
	}
	public void set_no_sousligne_vte(Integer no_sousligne_vte) {
		this.no_sousligne_vte = no_sousligne_vte;
	}
	public void set_date_sortie_piece(Date date_sortie_piece) {
		this.date_sortie_piece = date_sortie_piece;
	}
	public void set_date_facturation(Date date_facturation) {
		this.date_facturation = date_facturation;
	}
	public void set_dep_mhiv(Integer dep_mhiv) {
		this.dep_mhiv = dep_mhiv;
	}
	public void set_code_client(Long code_client) {
		this.code_client = code_client;
	}
	public void set_code_client_divers(Long code_client_divers) {
		this.code_client_divers = code_client_divers;
	}
	public void set_icc_mhiv(Integer icc_mhiv) {
		this.icc_mhiv = icc_mhiv;
	}
	public void set_code_article(String code_article) {
		this.code_article = code_article;
	}
	public void set_code_vendeur(String code_vendeur) {
		this.code_vendeur = code_vendeur;
	}
	public void set_quantite(BigDecimal quantite) {
		this.quantite = quantite;
	}
	public void set_prix_de_vente_net(BigDecimal prix_de_vente_net) {
		this.prix_de_vente_net = prix_de_vente_net;
	}
	public void set_remise(BigDecimal remise) {
		this.remise = remise;
	}
	public void set_indic_marge(Integer indic_marge) {
		this.indic_marge = indic_marge;
	}
	public void set_indic_chg_ref(Integer indic_chg_ref) {
		this.indic_chg_ref = indic_chg_ref;
	}
	public void set_marge_unitaire(BigDecimal marge_unitaire) {
		this.marge_unitaire = marge_unitaire;
	}
	public void set_indic_garantie(String indic_garantie) {
		this.indic_garantie = indic_garantie;
	}
	public void set_code_poste_ci(Integer code_poste_ci) {
		this.code_poste_ci = code_poste_ci;
	}
	public void set_no_ordre_materiel(Long no_ordre_materiel) {
		this.no_ordre_materiel = no_ordre_materiel;
	}
	public void set_indic_retrocession(Integer indic_retrocession) {
		this.indic_retrocession = indic_retrocession;
	}
	public void set_libelle_mvt_stock(String libelle_mvt_stock) {
		this.libelle_mvt_stock = libelle_mvt_stock;
	}
	public void set_indic_art_ref(Integer indic_art_ref) {
		this.indic_art_ref = indic_art_ref;
	}
	public void set_indicateur_promo(Integer indicateur_promo) {
		this.indicateur_promo = indicateur_promo;
	}
	public void set_indic_composition(Integer indic_composition) {
		this.indic_composition = indic_composition;
	}
	public void set_code_agent(Integer code_agent) {
		this.code_agent = code_agent;
	}
	public void set_indic_port_usine(Integer indic_port_usine) {
		this.indic_port_usine = indic_port_usine;
	}
	public void set_no_facture(Long no_facture) {
		this.no_facture = no_facture;
	}
	public void set_ilc_mhiv(Integer ilc_mhiv) {
		this.ilc_mhiv = ilc_mhiv;
	}
	public void set_indic_sans_qte(Integer indic_sans_qte) {
		this.indic_sans_qte = indic_sans_qte;
	}
	public void set_indic_sortie_excep(Integer indic_sortie_excep) {
		this.indic_sortie_excep = indic_sortie_excep;
	}
	public void set_niveau_commande(Integer niveau_commande) {
		this.niveau_commande = niveau_commande;
	}
	public void set_code_agence_sortie(String code_agence_sortie) {
		this.code_agence_sortie = code_agence_sortie;
	}
	public void set_indic_traitement(Integer indic_traitement) {
		this.indic_traitement = indic_traitement;
	}
	public void set_code_technicien(String code_technicien) {
		this.code_technicien = code_technicien;
	}
	public void set_indic_gratuit(String indic_gratuit) {
		this.indic_gratuit = indic_gratuit;
	}
	public void set_code_salarie_saisi(String code_salarie_saisi) {
		this.code_salarie_saisi = code_salarie_saisi;
	}
	public void set_type_commande(Integer type_commande) {
		this.type_commande = type_commande;
	}
	public void set_code_lieu_livr(Long code_lieu_livr) {
		this.code_lieu_livr = code_lieu_livr;
	}
	public void set_code_client_livre(Long code_client_livre) {
		this.code_client_livre = code_client_livre;
	}
	public void set_code_interlocuteur(Long code_interlocuteur) {
		this.code_interlocuteur = code_interlocuteur;
	}
	public void set_no_affaire(String no_affaire) {
		this.no_affaire = no_affaire;
	}
	public void set_designation(String designation) {
		this.designation = designation;
	}
	public void set_prix_au_xxx(Integer prix_au_xxx) {
		this.prix_au_xxx = prix_au_xxx;
	}
	public void set_date_commande(Date date_commande) {
		this.date_commande = date_commande;
	}
	public void set_no_lot(String no_lot) {
		this.no_lot = no_lot;
	}
	public void set_code_atelier_ori(Integer code_atelier_ori) {
		this.code_atelier_ori = code_atelier_ori;
	}
	public void set_date_maj(Date date_maj) {
		this.date_maj = date_maj;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
