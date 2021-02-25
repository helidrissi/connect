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
		@Index(name="idx_agence_cle1_magc", columnList="code_agence", unique=true),
		@Index(name="idx_agence_nom_magc", columnList="nom_agence", unique=false)
})
public class Agence implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_agence;
	@Column
	private String nom_agence;
	@Column
	private String adresse1_agence;
	@Column
	private String adresse2_agence;
	@Column
	private String code_postal_agence;
	@Column
	private String ville_agence;
	@Column
	private String abrege_agence;
	@Column
	private String no_tel_agence;
	@Column
	private String no_tel2_agence;
	@Column
	private String no_fax_agence;
	@Column
	private String no_tel_nuit_agence;
	@Column
	private String code_region;
	@Column
	private Integer indic_nomencla_deb;
	@Column
	private String code_contact_deb;
	@Column
	private Integer no_ets_deb;
	@Column
	private String no_tva_cee;
	@Column
	private Integer no_soc_comptable;
	@Column
	private Long code_client;
	@Column
	private Long code_fournisseur;
	@Column
	private String abrege_agence_fwk;
	@Column
	private Long code_client2;
	@Column
	private Long abrege_promodis;
	@Column
	private String code_agence_siege;
	@Column
	private Long der_no_releve;
	@Column
	private Long der_no_traite;
	@Column
	private Long der_no_deb;
	@Column
	private String code_responsable;
	@Column
	private Long dat_der_inventaire;
	@Column
	private Long der_no_inventaire;
	@Column
	private Long der_no_bvr;
	@Column
	private Long der_no_etiquette;
	@Column
	private String code_gpe_tarif;
	@Column
	private Long der_no_transf_parc;
	@Column
	private Long der_no_interv_ext;
	@Column
	private Long der_no_transf_art;
	@Column
	private Long der_no_eti_chgt_px;
	@Column
	private Integer indic_sai_fic_trav;
	@Column
	private Integer ind_per_fic_trav;
	@Column
	private String siret1_agence;
	@Column
	private String siret2_agence;
	@Column
	private String code_pays;
	@Column
	private Integer gpe_tva_imposee;
	@Column
	private Integer arr_tps_debut;
	@Column
	private Integer typ_arr_tpsd;
	@Column
	private Integer arr_tps_fin;
	@Column
	private Integer typ_arr_tpsf;
	@Column
	private Long cpt_taxe_especes;
	@Column
	private Integer non_utilise;
	@Column
	private Long cpt_factures_em_sa;
	@Column
	private Long cpt_avoirs_em_sav;
	@Column
	private String modele_sortie_mbs;
	@Column
	private String modele_retour_mbs;
	@Column
	private Integer pci_sortie_mbs;
	@Column
	private Integer pci_entree_mbs;
	@Column
	private String formulaire_pp;
	@Column
	private Integer jours_mbs;
	@Column
	private Integer no_jou_encours;
	@Column
	private String agence_stc;
	@Column
	private Integer caisse_lsd;
	@Column(precision = 4, scale = 3)
	private BigDecimal coefficient_pieces;
	@Column
	private String modele_cl;
	@Column
	private Integer prim;
	@Column
	private Integer mdi;
	@Column
	private Integer trs_travaux_mobite;
	@Column
	private String journal_provis;
	@Column
	private Integer pieces_mobitec;
	@Column
	private Integer mail_mobitec;
	@Column
	private Integer selection_or_mobit;
	@Column
	private Integer reappro_mobitec;
	@Column
	private Integer ecart_h_pointage;
	@Column
	private Integer creation_oi_mobist;
	@Column
	private Integer age_fermee;
	@Column
	private Integer opp;
	@Column
	private Integer jdprism;
	@Column
	private Integer reappro_agence;
	@Column
	private Integer cloture_auto_vgp;
	@Column
	private Integer mise_sous_pli;
	public String get_code_agence() {
		return code_agence;
	}
	public String get_nom_agence() {
		return nom_agence;
	}
	public String get_adresse1_agence() {
		return adresse1_agence;
	}
	public String get_adresse2_agence() {
		return adresse2_agence;
	}
	public String get_code_postal_agence() {
		return code_postal_agence;
	}
	public String get_ville_agence() {
		return ville_agence;
	}
	public String get_abrege_agence() {
		return abrege_agence;
	}
	public String get_no_tel_agence() {
		return no_tel_agence;
	}
	public String get_no_tel2_agence() {
		return no_tel2_agence;
	}
	public String get_no_fax_agence() {
		return no_fax_agence;
	}
	public String get_no_tel_nuit_agence() {
		return no_tel_nuit_agence;
	}
	public String get_code_region() {
		return code_region;
	}
	public Integer get_indic_nomencla_deb() {
		return indic_nomencla_deb;
	}
	public String get_code_contact_deb() {
		return code_contact_deb;
	}
	public Integer get_no_ets_deb() {
		return no_ets_deb;
	}
	public String get_no_tva_cee() {
		return no_tva_cee;
	}
	public Integer get_no_soc_comptable() {
		return no_soc_comptable;
	}
	public Long get_code_client() {
		return code_client;
	}
	public Long get_code_fournisseur() {
		return code_fournisseur;
	}
	public String get_abrege_agence_fwk() {
		return abrege_agence_fwk;
	}
	public Long get_code_client2() {
		return code_client2;
	}
	public Long get_abrege_promodis() {
		return abrege_promodis;
	}
	public String get_code_agence_siege() {
		return code_agence_siege;
	}
	public Long get_der_no_releve() {
		return der_no_releve;
	}
	public Long get_der_no_traite() {
		return der_no_traite;
	}
	public Long get_der_no_deb() {
		return der_no_deb;
	}
	public String get_code_responsable() {
		return code_responsable;
	}
	public Long get_dat_der_inventaire() {
		return dat_der_inventaire;
	}
	public Long get_der_no_inventaire() {
		return der_no_inventaire;
	}
	public Long get_der_no_bvr() {
		return der_no_bvr;
	}
	public Long get_der_no_etiquette() {
		return der_no_etiquette;
	}
	public String get_code_gpe_tarif() {
		return code_gpe_tarif;
	}
	public Long get_der_no_transf_parc() {
		return der_no_transf_parc;
	}
	public Long get_der_no_interv_ext() {
		return der_no_interv_ext;
	}
	public Long get_der_no_transf_art() {
		return der_no_transf_art;
	}
	public Long get_der_no_eti_chgt_px() {
		return der_no_eti_chgt_px;
	}
	public Integer get_indic_sai_fic_trav() {
		return indic_sai_fic_trav;
	}
	public Integer get_ind_per_fic_trav() {
		return ind_per_fic_trav;
	}
	public String get_siret1_agence() {
		return siret1_agence;
	}
	public String get_siret2_agence() {
		return siret2_agence;
	}
	public String get_code_pays() {
		return code_pays;
	}
	public Integer get_gpe_tva_imposee() {
		return gpe_tva_imposee;
	}
	public Integer get_arr_tps_debut() {
		return arr_tps_debut;
	}
	public Integer get_typ_arr_tpsd() {
		return typ_arr_tpsd;
	}
	public Integer get_arr_tps_fin() {
		return arr_tps_fin;
	}
	public Integer get_typ_arr_tpsf() {
		return typ_arr_tpsf;
	}
	public Long get_cpt_taxe_especes() {
		return cpt_taxe_especes;
	}
	public Integer get_non_utilise() {
		return non_utilise;
	}
	public Long get_cpt_factures_em_sa() {
		return cpt_factures_em_sa;
	}
	public Long get_cpt_avoirs_em_sav() {
		return cpt_avoirs_em_sav;
	}
	public String get_modele_sortie_mbs() {
		return modele_sortie_mbs;
	}
	public String get_modele_retour_mbs() {
		return modele_retour_mbs;
	}
	public Integer get_pci_sortie_mbs() {
		return pci_sortie_mbs;
	}
	public Integer get_pci_entree_mbs() {
		return pci_entree_mbs;
	}
	public String get_formulaire_pp() {
		return formulaire_pp;
	}
	public Integer get_jours_mbs() {
		return jours_mbs;
	}
	public Integer get_no_jou_encours() {
		return no_jou_encours;
	}
	public String get_agence_stc() {
		return agence_stc;
	}
	public Integer get_caisse_lsd() {
		return caisse_lsd;
	}
	public BigDecimal get_coefficient_pieces() {
		return coefficient_pieces;
	}
	public String get_modele_cl() {
		return modele_cl;
	}
	public Integer get_prim() {
		return prim;
	}
	public Integer get_mdi() {
		return mdi;
	}
	public Integer get_trs_travaux_mobite() {
		return trs_travaux_mobite;
	}
	public String get_journal_provis() {
		return journal_provis;
	}
	public Integer get_pieces_mobitec() {
		return pieces_mobitec;
	}
	public Integer get_mail_mobitec() {
		return mail_mobitec;
	}
	public Integer get_selection_or_mobit() {
		return selection_or_mobit;
	}
	public Integer get_reappro_mobitec() {
		return reappro_mobitec;
	}
	public Integer get_ecart_h_pointage() {
		return ecart_h_pointage;
	}
	public Integer get_creation_oi_mobist() {
		return creation_oi_mobist;
	}
	public Integer get_age_fermee() {
		return age_fermee;
	}
	public Integer get_opp() {
		return opp;
	}
	public Integer get_jdprism() {
		return jdprism;
	}
	public Integer get_reappro_agence() {
		return reappro_agence;
	}
	public Integer get_cloture_auto_vgp() {
		return cloture_auto_vgp;
	}
	public Integer get_mise_sous_pli() {
		return mise_sous_pli;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_nom_agence(String nom_agence) {
		this.nom_agence = nom_agence;
	}
	public void set_adresse1_agence(String adresse1_agence) {
		this.adresse1_agence = adresse1_agence;
	}
	public void set_adresse2_agence(String adresse2_agence) {
		this.adresse2_agence = adresse2_agence;
	}
	public void set_code_postal_agence(String code_postal_agence) {
		this.code_postal_agence = code_postal_agence;
	}
	public void set_ville_agence(String ville_agence) {
		this.ville_agence = ville_agence;
	}
	public void set_abrege_agence(String abrege_agence) {
		this.abrege_agence = abrege_agence;
	}
	public void set_no_tel_agence(String no_tel_agence) {
		this.no_tel_agence = no_tel_agence;
	}
	public void set_no_tel2_agence(String no_tel2_agence) {
		this.no_tel2_agence = no_tel2_agence;
	}
	public void set_no_fax_agence(String no_fax_agence) {
		this.no_fax_agence = no_fax_agence;
	}
	public void set_no_tel_nuit_agence(String no_tel_nuit_agence) {
		this.no_tel_nuit_agence = no_tel_nuit_agence;
	}
	public void set_code_region(String code_region) {
		this.code_region = code_region;
	}
	public void set_indic_nomencla_deb(Integer indic_nomencla_deb) {
		this.indic_nomencla_deb = indic_nomencla_deb;
	}
	public void set_code_contact_deb(String code_contact_deb) {
		this.code_contact_deb = code_contact_deb;
	}
	public void set_no_ets_deb(Integer no_ets_deb) {
		this.no_ets_deb = no_ets_deb;
	}
	public void set_no_tva_cee(String no_tva_cee) {
		this.no_tva_cee = no_tva_cee;
	}
	public void set_no_soc_comptable(Integer no_soc_comptable) {
		this.no_soc_comptable = no_soc_comptable;
	}
	public void set_code_client(Long code_client) {
		this.code_client = code_client;
	}
	public void set_code_fournisseur(Long code_fournisseur) {
		this.code_fournisseur = code_fournisseur;
	}
	public void set_abrege_agence_fwk(String abrege_agence_fwk) {
		this.abrege_agence_fwk = abrege_agence_fwk;
	}
	public void set_code_client2(Long code_client2) {
		this.code_client2 = code_client2;
	}
	public void set_abrege_promodis(Long abrege_promodis) {
		this.abrege_promodis = abrege_promodis;
	}
	public void set_code_agence_siege(String code_agence_siege) {
		this.code_agence_siege = code_agence_siege;
	}
	public void set_der_no_releve(Long der_no_releve) {
		this.der_no_releve = der_no_releve;
	}
	public void set_der_no_traite(Long der_no_traite) {
		this.der_no_traite = der_no_traite;
	}
	public void set_der_no_deb(Long der_no_deb) {
		this.der_no_deb = der_no_deb;
	}
	public void set_code_responsable(String code_responsable) {
		this.code_responsable = code_responsable;
	}
	public void set_dat_der_inventaire(Long dat_der_inventaire) {
		this.dat_der_inventaire = dat_der_inventaire;
	}
	public void set_der_no_inventaire(Long der_no_inventaire) {
		this.der_no_inventaire = der_no_inventaire;
	}
	public void set_der_no_bvr(Long der_no_bvr) {
		this.der_no_bvr = der_no_bvr;
	}
	public void set_der_no_etiquette(Long der_no_etiquette) {
		this.der_no_etiquette = der_no_etiquette;
	}
	public void set_code_gpe_tarif(String code_gpe_tarif) {
		this.code_gpe_tarif = code_gpe_tarif;
	}
	public void set_der_no_transf_parc(Long der_no_transf_parc) {
		this.der_no_transf_parc = der_no_transf_parc;
	}
	public void set_der_no_interv_ext(Long der_no_interv_ext) {
		this.der_no_interv_ext = der_no_interv_ext;
	}
	public void set_der_no_transf_art(Long der_no_transf_art) {
		this.der_no_transf_art = der_no_transf_art;
	}
	public void set_der_no_eti_chgt_px(Long der_no_eti_chgt_px) {
		this.der_no_eti_chgt_px = der_no_eti_chgt_px;
	}
	public void set_indic_sai_fic_trav(Integer indic_sai_fic_trav) {
		this.indic_sai_fic_trav = indic_sai_fic_trav;
	}
	public void set_ind_per_fic_trav(Integer ind_per_fic_trav) {
		this.ind_per_fic_trav = ind_per_fic_trav;
	}
	public void set_siret1_agence(String siret1_agence) {
		this.siret1_agence = siret1_agence;
	}
	public void set_siret2_agence(String siret2_agence) {
		this.siret2_agence = siret2_agence;
	}
	public void set_code_pays(String code_pays) {
		this.code_pays = code_pays;
	}
	public void set_gpe_tva_imposee(Integer gpe_tva_imposee) {
		this.gpe_tva_imposee = gpe_tva_imposee;
	}
	public void set_arr_tps_debut(Integer arr_tps_debut) {
		this.arr_tps_debut = arr_tps_debut;
	}
	public void set_typ_arr_tpsd(Integer typ_arr_tpsd) {
		this.typ_arr_tpsd = typ_arr_tpsd;
	}
	public void set_arr_tps_fin(Integer arr_tps_fin) {
		this.arr_tps_fin = arr_tps_fin;
	}
	public void set_typ_arr_tpsf(Integer typ_arr_tpsf) {
		this.typ_arr_tpsf = typ_arr_tpsf;
	}
	public void set_cpt_taxe_especes(Long cpt_taxe_especes) {
		this.cpt_taxe_especes = cpt_taxe_especes;
	}
	public void set_non_utilise(Integer non_utilise) {
		this.non_utilise = non_utilise;
	}
	public void set_cpt_factures_em_sa(Long cpt_factures_em_sa) {
		this.cpt_factures_em_sa = cpt_factures_em_sa;
	}
	public void set_cpt_avoirs_em_sav(Long cpt_avoirs_em_sav) {
		this.cpt_avoirs_em_sav = cpt_avoirs_em_sav;
	}
	public void set_modele_sortie_mbs(String modele_sortie_mbs) {
		this.modele_sortie_mbs = modele_sortie_mbs;
	}
	public void set_modele_retour_mbs(String modele_retour_mbs) {
		this.modele_retour_mbs = modele_retour_mbs;
	}
	public void set_pci_sortie_mbs(Integer pci_sortie_mbs) {
		this.pci_sortie_mbs = pci_sortie_mbs;
	}
	public void set_pci_entree_mbs(Integer pci_entree_mbs) {
		this.pci_entree_mbs = pci_entree_mbs;
	}
	public void set_formulaire_pp(String formulaire_pp) {
		this.formulaire_pp = formulaire_pp;
	}
	public void set_jours_mbs(Integer jours_mbs) {
		this.jours_mbs = jours_mbs;
	}
	public void set_no_jou_encours(Integer no_jou_encours) {
		this.no_jou_encours = no_jou_encours;
	}
	public void set_agence_stc(String agence_stc) {
		this.agence_stc = agence_stc;
	}
	public void set_caisse_lsd(Integer caisse_lsd) {
		this.caisse_lsd = caisse_lsd;
	}
	public void set_coefficient_pieces(BigDecimal coefficient_pieces) {
		this.coefficient_pieces = coefficient_pieces;
	}
	public void set_modele_cl(String modele_cl) {
		this.modele_cl = modele_cl;
	}
	public void set_prim(Integer prim) {
		this.prim = prim;
	}
	public void set_mdi(Integer mdi) {
		this.mdi = mdi;
	}
	public void set_trs_travaux_mobite(Integer trs_travaux_mobite) {
		this.trs_travaux_mobite = trs_travaux_mobite;
	}
	public void set_journal_provis(String journal_provis) {
		this.journal_provis = journal_provis;
	}
	public void set_pieces_mobitec(Integer pieces_mobitec) {
		this.pieces_mobitec = pieces_mobitec;
	}
	public void set_mail_mobitec(Integer mail_mobitec) {
		this.mail_mobitec = mail_mobitec;
	}
	public void set_selection_or_mobit(Integer selection_or_mobit) {
		this.selection_or_mobit = selection_or_mobit;
	}
	public void set_reappro_mobitec(Integer reappro_mobitec) {
		this.reappro_mobitec = reappro_mobitec;
	}
	public void set_ecart_h_pointage(Integer ecart_h_pointage) {
		this.ecart_h_pointage = ecart_h_pointage;
	}
	public void set_creation_oi_mobist(Integer creation_oi_mobist) {
		this.creation_oi_mobist = creation_oi_mobist;
	}
	public void set_age_fermee(Integer age_fermee) {
		this.age_fermee = age_fermee;
	}
	public void set_opp(Integer opp) {
		this.opp = opp;
	}
	public void set_jdprism(Integer jdprism) {
		this.jdprism = jdprism;
	}
	public void set_reappro_agence(Integer reappro_agence) {
		this.reappro_agence = reappro_agence;
	}
	public void set_cloture_auto_vgp(Integer cloture_auto_vgp) {
		this.cloture_auto_vgp = cloture_auto_vgp;
	}
	public void set_mise_sous_pli(Integer mise_sous_pli) {
		this.mise_sous_pli = mise_sous_pli;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
