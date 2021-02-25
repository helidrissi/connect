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
		@Index(name="idx_ldis_cle1_mldi", columnList="no_agence,no_bon,no_ligne", unique=true),
		@Index(name="idx_ldis_cle2_mldi", columnList="no_agence,no_bon,no_casier", unique=false),
		@Index(name="idx_ldis_cle3_mldi", columnList="type_produit,code_prestation,vide", unique=false),
		@Index(name="idx_ldis_cle4_mldi", columnList="no_agence,no_bon,rang", unique=false)
})
public class Ldis implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String no_agence;
	@Column
	private Long no_bon;
	@Column
	private Integer no_ligne;
	@Column
	private String no_casier;
	@Column
	private String type_produit;
	@Column
	private String code_prestation;
	@Column
	private String vide;
	@Column
	private Integer rang;
	@Column
	private String designation;
	@Column
	private String designation2;
	@Column(precision = 8, scale = 2)
	private BigDecimal quantite;
	@Column(precision = 8, scale = 2)
	private BigDecimal quantite_cde;
	@Column
	private Integer regul;
	@Column(precision = 9, scale = 2)
	private BigDecimal pu_brut;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_cascade_1;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_cascade_2;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_cascade_3;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_cascade_4;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_cascade_5;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_cascade_6;
	@Column(precision = 4, scale = 2)
	private BigDecimal remise_comp;
	@Column(precision = 9, scale = 2)
	private BigDecimal pu_net;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_revient;
	@Column(precision = 9, scale = 2)
	private BigDecimal prix_achat;
	@Column
	private Integer indic_gratuit;
	@Column
	private Integer famille_art;
	@Column
	private Integer ss_famille_art;
	@Column
	private Integer indic_edition;
	@Column
	private Integer type_ligne;
	@Column
	private String type_cde_cli;
	@Column
	private Integer indic_promotion;
	@Column
	private Integer indic_ligne_cdee;
	@Column
	private Integer indic_compo;
	@Column
	private String type_cde_fou;
	@Column
	private Integer no_ligne_cde_fou;
	@Column
	private Integer no_ligne_bl_fou;
	@Column
	private Integer edition_compo_bl;
	@Column
	private Integer edition_compo_fac;
	@Column
	private Integer code_vte_manquee;
	@Column
	private String libelle_gratuit;
	@Column
	private String marque_mat;
	@Column
	private String type_mat;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_liv_prevue;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_sortie_pieces;
	@Column
	private Integer indic_gie;
	@Column
	private Integer type_gie;
	@Column
	private Integer indic_gie_pieces;
	@Column
	private Integer duree_gie_pieces;
	@Column
	private Integer indic_gie_mo;
	@Column
	private Integer duree_gie_mo;
	@Column
	private Integer indic_gie_divers;
	@Column
	private Integer duree_gie_divers;
	@Column
	private Integer indic_debut_gie;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_debut_gie;
	@Column
	private Integer no_depot;
	@Column
	private String no_agence_sortie;
	@Column
	private String motif_manque;
	@Column
	private Long no_fournisseur;
	@Column
	private Integer indic_catalogue_fo;
	@Column
	private Integer bp_imprime;
	@Column
	private Integer sorte_exceptionnel;
	@Column
	private Long no_hiscdd;
	@Column
	private Long no_hisdvd;
	@Column
	private Long no_reserv;
	@Column
	private Long no_vmanque;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_commande;
	@Column
	private Long no_histo_ventes;
	@Column
	private Long no_histo_achats;
	@Column
	private String no_agence_achat;
	@Column
	private Integer no_ligne_transfert;
	@Column
	private Integer indic_abandon;
	@Column
	private Integer indic_reprise;
	@Column
	private Integer tva_marge;
	@Column
	private Integer reprise_ht;
	@Column
	private Integer type_livraison;
	@Column
	private Long no_bl_intersoc;
	@Column
	private Integer pn_modifie;
	@Column
	private Integer pa_ou_ptf;
	@Column
	private Integer taux_tva;
	@Column
	private String no_lig_transaction;
	@Column
	private Integer indic_cde_complete;
	public String get_no_agence() {
		return no_agence;
	}
	public Long get_no_bon() {
		return no_bon;
	}
	public Integer get_no_ligne() {
		return no_ligne;
	}
	public String get_no_casier() {
		return no_casier;
	}
	public String get_type_produit() {
		return type_produit;
	}
	public String get_code_prestation() {
		return code_prestation;
	}
	public String get_vide() {
		return vide;
	}
	public Integer get_rang() {
		return rang;
	}
	public String get_designation() {
		return designation;
	}
	public String get_designation2() {
		return designation2;
	}
	public BigDecimal get_quantite() {
		return quantite;
	}
	public BigDecimal get_quantite_cde() {
		return quantite_cde;
	}
	public Integer get_regul() {
		return regul;
	}
	public BigDecimal get_pu_brut() {
		return pu_brut;
	}
	public BigDecimal get_remise() {
		return remise;
	}
	public BigDecimal get_remise_cascade_1() {
		return remise_cascade_1;
	}
	public BigDecimal get_remise_cascade_2() {
		return remise_cascade_2;
	}
	public BigDecimal get_remise_cascade_3() {
		return remise_cascade_3;
	}
	public BigDecimal get_remise_cascade_4() {
		return remise_cascade_4;
	}
	public BigDecimal get_remise_cascade_5() {
		return remise_cascade_5;
	}
	public BigDecimal get_remise_cascade_6() {
		return remise_cascade_6;
	}
	public BigDecimal get_remise_comp() {
		return remise_comp;
	}
	public BigDecimal get_pu_net() {
		return pu_net;
	}
	public BigDecimal get_prix_revient() {
		return prix_revient;
	}
	public BigDecimal get_prix_achat() {
		return prix_achat;
	}
	public Integer get_indic_gratuit() {
		return indic_gratuit;
	}
	public Integer get_famille_art() {
		return famille_art;
	}
	public Integer get_ss_famille_art() {
		return ss_famille_art;
	}
	public Integer get_indic_edition() {
		return indic_edition;
	}
	public Integer get_type_ligne() {
		return type_ligne;
	}
	public String get_type_cde_cli() {
		return type_cde_cli;
	}
	public Integer get_indic_promotion() {
		return indic_promotion;
	}
	public Integer get_indic_ligne_cdee() {
		return indic_ligne_cdee;
	}
	public Integer get_indic_compo() {
		return indic_compo;
	}
	public String get_type_cde_fou() {
		return type_cde_fou;
	}
	public Integer get_no_ligne_cde_fou() {
		return no_ligne_cde_fou;
	}
	public Integer get_no_ligne_bl_fou() {
		return no_ligne_bl_fou;
	}
	public Integer get_edition_compo_bl() {
		return edition_compo_bl;
	}
	public Integer get_edition_compo_fac() {
		return edition_compo_fac;
	}
	public Integer get_code_vte_manquee() {
		return code_vte_manquee;
	}
	public String get_libelle_gratuit() {
		return libelle_gratuit;
	}
	public String get_marque_mat() {
		return marque_mat;
	}
	public String get_type_mat() {
		return type_mat;
	}
	public Date get_date_liv_prevue() {
		return date_liv_prevue;
	}
	public Date get_date_sortie_pieces() {
		return date_sortie_pieces;
	}
	public Integer get_indic_gie() {
		return indic_gie;
	}
	public Integer get_type_gie() {
		return type_gie;
	}
	public Integer get_indic_gie_pieces() {
		return indic_gie_pieces;
	}
	public Integer get_duree_gie_pieces() {
		return duree_gie_pieces;
	}
	public Integer get_indic_gie_mo() {
		return indic_gie_mo;
	}
	public Integer get_duree_gie_mo() {
		return duree_gie_mo;
	}
	public Integer get_indic_gie_divers() {
		return indic_gie_divers;
	}
	public Integer get_duree_gie_divers() {
		return duree_gie_divers;
	}
	public Integer get_indic_debut_gie() {
		return indic_debut_gie;
	}
	public Date get_date_debut_gie() {
		return date_debut_gie;
	}
	public Integer get_no_depot() {
		return no_depot;
	}
	public String get_no_agence_sortie() {
		return no_agence_sortie;
	}
	public String get_motif_manque() {
		return motif_manque;
	}
	public Long get_no_fournisseur() {
		return no_fournisseur;
	}
	public Integer get_indic_catalogue_fo() {
		return indic_catalogue_fo;
	}
	public Integer get_bp_imprime() {
		return bp_imprime;
	}
	public Integer get_sorte_exceptionnel() {
		return sorte_exceptionnel;
	}
	public Long get_no_hiscdd() {
		return no_hiscdd;
	}
	public Long get_no_hisdvd() {
		return no_hisdvd;
	}
	public Long get_no_reserv() {
		return no_reserv;
	}
	public Long get_no_vmanque() {
		return no_vmanque;
	}
	public Date get_date_commande() {
		return date_commande;
	}
	public Long get_no_histo_ventes() {
		return no_histo_ventes;
	}
	public Long get_no_histo_achats() {
		return no_histo_achats;
	}
	public String get_no_agence_achat() {
		return no_agence_achat;
	}
	public Integer get_no_ligne_transfert() {
		return no_ligne_transfert;
	}
	public Integer get_indic_abandon() {
		return indic_abandon;
	}
	public Integer get_indic_reprise() {
		return indic_reprise;
	}
	public Integer get_tva_marge() {
		return tva_marge;
	}
	public Integer get_reprise_ht() {
		return reprise_ht;
	}
	public Integer get_type_livraison() {
		return type_livraison;
	}
	public Long get_no_bl_intersoc() {
		return no_bl_intersoc;
	}
	public Integer get_pn_modifie() {
		return pn_modifie;
	}
	public Integer get_pa_ou_ptf() {
		return pa_ou_ptf;
	}
	public Integer get_taux_tva() {
		return taux_tva;
	}
	public String get_no_lig_transaction() {
		return no_lig_transaction;
	}
	public Integer get_indic_cde_complete() {
		return indic_cde_complete;
	}
	public void set_no_agence(String no_agence) {
		this.no_agence = no_agence;
	}
	public void set_no_bon(Long no_bon) {
		this.no_bon = no_bon;
	}
	public void set_no_ligne(Integer no_ligne) {
		this.no_ligne = no_ligne;
	}
	public void set_no_casier(String no_casier) {
		this.no_casier = no_casier;
	}
	public void set_type_produit(String type_produit) {
		this.type_produit = type_produit;
	}
	public void set_code_prestation(String code_prestation) {
		this.code_prestation = code_prestation;
	}
	public void set_vide(String vide) {
		this.vide = vide;
	}
	public void set_rang(Integer rang) {
		this.rang = rang;
	}
	public void set_designation(String designation) {
		this.designation = designation;
	}
	public void set_designation2(String designation2) {
		this.designation2 = designation2;
	}
	public void set_quantite(BigDecimal quantite) {
		this.quantite = quantite;
	}
	public void set_quantite_cde(BigDecimal quantite_cde) {
		this.quantite_cde = quantite_cde;
	}
	public void set_regul(Integer regul) {
		this.regul = regul;
	}
	public void set_pu_brut(BigDecimal pu_brut) {
		this.pu_brut = pu_brut;
	}
	public void set_remise(BigDecimal remise) {
		this.remise = remise;
	}
	public void set_remise_cascade_1(BigDecimal remise_cascade_1) {
		this.remise_cascade_1 = remise_cascade_1;
	}
	public void set_remise_cascade_2(BigDecimal remise_cascade_2) {
		this.remise_cascade_2 = remise_cascade_2;
	}
	public void set_remise_cascade_3(BigDecimal remise_cascade_3) {
		this.remise_cascade_3 = remise_cascade_3;
	}
	public void set_remise_cascade_4(BigDecimal remise_cascade_4) {
		this.remise_cascade_4 = remise_cascade_4;
	}
	public void set_remise_cascade_5(BigDecimal remise_cascade_5) {
		this.remise_cascade_5 = remise_cascade_5;
	}
	public void set_remise_cascade_6(BigDecimal remise_cascade_6) {
		this.remise_cascade_6 = remise_cascade_6;
	}
	public void set_remise_comp(BigDecimal remise_comp) {
		this.remise_comp = remise_comp;
	}
	public void set_pu_net(BigDecimal pu_net) {
		this.pu_net = pu_net;
	}
	public void set_prix_revient(BigDecimal prix_revient) {
		this.prix_revient = prix_revient;
	}
	public void set_prix_achat(BigDecimal prix_achat) {
		this.prix_achat = prix_achat;
	}
	public void set_indic_gratuit(Integer indic_gratuit) {
		this.indic_gratuit = indic_gratuit;
	}
	public void set_famille_art(Integer famille_art) {
		this.famille_art = famille_art;
	}
	public void set_ss_famille_art(Integer ss_famille_art) {
		this.ss_famille_art = ss_famille_art;
	}
	public void set_indic_edition(Integer indic_edition) {
		this.indic_edition = indic_edition;
	}
	public void set_type_ligne(Integer type_ligne) {
		this.type_ligne = type_ligne;
	}
	public void set_type_cde_cli(String type_cde_cli) {
		this.type_cde_cli = type_cde_cli;
	}
	public void set_indic_promotion(Integer indic_promotion) {
		this.indic_promotion = indic_promotion;
	}
	public void set_indic_ligne_cdee(Integer indic_ligne_cdee) {
		this.indic_ligne_cdee = indic_ligne_cdee;
	}
	public void set_indic_compo(Integer indic_compo) {
		this.indic_compo = indic_compo;
	}
	public void set_type_cde_fou(String type_cde_fou) {
		this.type_cde_fou = type_cde_fou;
	}
	public void set_no_ligne_cde_fou(Integer no_ligne_cde_fou) {
		this.no_ligne_cde_fou = no_ligne_cde_fou;
	}
	public void set_no_ligne_bl_fou(Integer no_ligne_bl_fou) {
		this.no_ligne_bl_fou = no_ligne_bl_fou;
	}
	public void set_edition_compo_bl(Integer edition_compo_bl) {
		this.edition_compo_bl = edition_compo_bl;
	}
	public void set_edition_compo_fac(Integer edition_compo_fac) {
		this.edition_compo_fac = edition_compo_fac;
	}
	public void set_code_vte_manquee(Integer code_vte_manquee) {
		this.code_vte_manquee = code_vte_manquee;
	}
	public void set_libelle_gratuit(String libelle_gratuit) {
		this.libelle_gratuit = libelle_gratuit;
	}
	public void set_marque_mat(String marque_mat) {
		this.marque_mat = marque_mat;
	}
	public void set_type_mat(String type_mat) {
		this.type_mat = type_mat;
	}
	public void set_date_liv_prevue(Date date_liv_prevue) {
		this.date_liv_prevue = date_liv_prevue;
	}
	public void set_date_sortie_pieces(Date date_sortie_pieces) {
		this.date_sortie_pieces = date_sortie_pieces;
	}
	public void set_indic_gie(Integer indic_gie) {
		this.indic_gie = indic_gie;
	}
	public void set_type_gie(Integer type_gie) {
		this.type_gie = type_gie;
	}
	public void set_indic_gie_pieces(Integer indic_gie_pieces) {
		this.indic_gie_pieces = indic_gie_pieces;
	}
	public void set_duree_gie_pieces(Integer duree_gie_pieces) {
		this.duree_gie_pieces = duree_gie_pieces;
	}
	public void set_indic_gie_mo(Integer indic_gie_mo) {
		this.indic_gie_mo = indic_gie_mo;
	}
	public void set_duree_gie_mo(Integer duree_gie_mo) {
		this.duree_gie_mo = duree_gie_mo;
	}
	public void set_indic_gie_divers(Integer indic_gie_divers) {
		this.indic_gie_divers = indic_gie_divers;
	}
	public void set_duree_gie_divers(Integer duree_gie_divers) {
		this.duree_gie_divers = duree_gie_divers;
	}
	public void set_indic_debut_gie(Integer indic_debut_gie) {
		this.indic_debut_gie = indic_debut_gie;
	}
	public void set_date_debut_gie(Date date_debut_gie) {
		this.date_debut_gie = date_debut_gie;
	}
	public void set_no_depot(Integer no_depot) {
		this.no_depot = no_depot;
	}
	public void set_no_agence_sortie(String no_agence_sortie) {
		this.no_agence_sortie = no_agence_sortie;
	}
	public void set_motif_manque(String motif_manque) {
		this.motif_manque = motif_manque;
	}
	public void set_no_fournisseur(Long no_fournisseur) {
		this.no_fournisseur = no_fournisseur;
	}
	public void set_indic_catalogue_fo(Integer indic_catalogue_fo) {
		this.indic_catalogue_fo = indic_catalogue_fo;
	}
	public void set_bp_imprime(Integer bp_imprime) {
		this.bp_imprime = bp_imprime;
	}
	public void set_sorte_exceptionnel(Integer sorte_exceptionnel) {
		this.sorte_exceptionnel = sorte_exceptionnel;
	}
	public void set_no_hiscdd(Long no_hiscdd) {
		this.no_hiscdd = no_hiscdd;
	}
	public void set_no_hisdvd(Long no_hisdvd) {
		this.no_hisdvd = no_hisdvd;
	}
	public void set_no_reserv(Long no_reserv) {
		this.no_reserv = no_reserv;
	}
	public void set_no_vmanque(Long no_vmanque) {
		this.no_vmanque = no_vmanque;
	}
	public void set_date_commande(Date date_commande) {
		this.date_commande = date_commande;
	}
	public void set_no_histo_ventes(Long no_histo_ventes) {
		this.no_histo_ventes = no_histo_ventes;
	}
	public void set_no_histo_achats(Long no_histo_achats) {
		this.no_histo_achats = no_histo_achats;
	}
	public void set_no_agence_achat(String no_agence_achat) {
		this.no_agence_achat = no_agence_achat;
	}
	public void set_no_ligne_transfert(Integer no_ligne_transfert) {
		this.no_ligne_transfert = no_ligne_transfert;
	}
	public void set_indic_abandon(Integer indic_abandon) {
		this.indic_abandon = indic_abandon;
	}
	public void set_indic_reprise(Integer indic_reprise) {
		this.indic_reprise = indic_reprise;
	}
	public void set_tva_marge(Integer tva_marge) {
		this.tva_marge = tva_marge;
	}
	public void set_reprise_ht(Integer reprise_ht) {
		this.reprise_ht = reprise_ht;
	}
	public void set_type_livraison(Integer type_livraison) {
		this.type_livraison = type_livraison;
	}
	public void set_no_bl_intersoc(Long no_bl_intersoc) {
		this.no_bl_intersoc = no_bl_intersoc;
	}
	public void set_pn_modifie(Integer pn_modifie) {
		this.pn_modifie = pn_modifie;
	}
	public void set_pa_ou_ptf(Integer pa_ou_ptf) {
		this.pa_ou_ptf = pa_ou_ptf;
	}
	public void set_taux_tva(Integer taux_tva) {
		this.taux_tva = taux_tva;
	}
	public void set_no_lig_transaction(String no_lig_transaction) {
		this.no_lig_transaction = no_lig_transaction;
	}
	public void set_indic_cde_complete(Integer indic_cde_complete) {
		this.indic_cde_complete = indic_cde_complete;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
