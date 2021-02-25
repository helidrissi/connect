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
		@Index(name="idx_cli_cle1_mcli", columnList="no_interne_client", unique=true),
		@Index(name="idx_cli_cle6_mcli", columnList="code_client", unique=false),
		@Index(name="idx_cli_cle7_mcli", columnList="no_fiche_prospect", unique=false),
		@Index(name="idx_cli_cle8_mcli", columnList="code_client_compta", unique=false),
		@Index(name="idx_cli_cle2_mcli", columnList="raison_sociale_cli", unique=false),
		@Index(name="idx_cli_cle5_mcli", columnList="no_tel_client", unique=false),
		@Index(name="idx_cli_cle3_mcli", columnList="siret1_client", unique=false),
		@Index(name="idx_cli_cle4_mcli", columnList="code_pays,code_postal_client", unique=false)
})
public class Cli implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long no_interne_client;
	@Column
	private Long code_client;
	@Column
	private Long no_fiche_prospect;
	@Column
	private Long code_client_compta;
	@Column
	private Integer indic_export;
	@Column
	private Integer indic_divers;
	@Column
	private String code_pays;
	@Column
	private String code_devise;
	@Column
	private Integer code_langue;
	@Column
	private Integer titre_social;
	@Column
	private String raison_sociale_cli;
	@Column
	private String adresse_client;
	@Column
	private String code_postal_client;
	@Column
	private String ville_client;
	@Column
	private String mot_directeur;
	@Column
	private String no_tel_client;
	@Column
	private String no_tel2_client;
	@Column
	private String no_fax_client;
	@Column
	private String code_famille_cli;
	@Column
	private String code_sous_fam_cli;
	@Column
	private String code_agence;
	@Column
	private Integer indic_delai_releve;
	@Column
	private Integer code_releve_fact;
	@Column
	private Integer code_paiement;
	@Column
	private Integer code_echeance;
	@Column
	private Integer code_terme;
	@Column
	private Long date_ouverture;
	@Column
	private Long code_client_fact;
	@Column
	private String frais_deb;
	@Column
	private Integer distance;
	@Column
	private Integer dernier_no_webtop;
	@Column
	private String code_ape_naf_old;
	@Column
	private String siret1_client;
	@Column
	private String siret2_client;
	@Column
	private Integer no_societe_liee;
	@Column
	private Long no_frn_lie;
	@Column
	private Integer indic_lie_dis;
	@Column
	private Integer indic_lie_sav;
	@Column
	private Integer indic_lie_loc;
	@Column
	private Integer indic_client_agce;
	@Column
	private String code_agence_ica;
	@Column
	private String code_activite_1;
	@Column
	private String code_activite_2;
	@Column
	private String code_activite_3;
	@Column
	private String code_activite_4;
	@Column
	private Integer indic_siege;
	@Column
	private Long no_fcp_siege;
	@Column
	private Integer siecle_cre_entrep;
	@Column
	private Integer annee_cre_entrep;
	@Column
	private Integer mois_cre_entrep;
	@Column
	private Integer code_effectif;
	@Column
	private Long effectif;
	@Column(precision = 7, scale = 2)
	private BigDecimal ca_annuel;
	@Column
	private String commentaire;
	@Column
	private Long capital;
	@Column
	private Long dcre_mcli;
	@Column
	private String auteur_creation;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_maj;
	@Column
	private String auteur_maj;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_maj_mobivip;
	@Column
	private Integer code_suppression;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_suppression;
	@Column
	private String auteur_suppression;
	@Column
	private Integer code_suppr_fcp;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_suppr_fcp;
	@Column
	private String auteur_suppr_fcp;
	@Column
	private String special_edi;
	@Column
	private Integer division_principal;
	@Column
	private Integer pfl_mcli;
	@Column
	private Integer code_rel_mobivip;
	@Column
	private Long couv_sfac_mobiloc;
	@Column
	private Long plafond_mobiloc;
	@Column
	private Integer comte;
	@Column
	private Long prospect_jd;
	@Column
	private Integer synchro_jd;
	@Column
	private Boolean specif_jd_pub;
	@Column
	private Boolean specif_jd_mag;
	@Column
	private String code_ape_naf;
	@Column
	private Integer indic_eurofactor;
	@Column
	private Integer indic_fidelite;
	@Column
	private Integer liv_partielle;
	@Column
	private Long client_divers_orig;
	@Column
	private Integer ref_obligatoire;
	@Column
	private Integer app_groupe;
	@Column
	private Long gln;
	@Column
	private Integer rgpd_mcli;
	@Column
	private Boolean impression_doc_attaches_sur_factures;
	@Column
	private Long no_client_siege;
	public Long get_no_interne_client() {
		return no_interne_client;
	}
	public Long get_code_client() {
		return code_client;
	}
	public Long get_no_fiche_prospect() {
		return no_fiche_prospect;
	}
	public Long get_code_client_compta() {
		return code_client_compta;
	}
	public Integer get_indic_export() {
		return indic_export;
	}
	public Integer get_indic_divers() {
		return indic_divers;
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
	public String get_raison_sociale_cli() {
		return raison_sociale_cli;
	}
	public String get_adresse_client() {
		return adresse_client;
	}
	public String get_code_postal_client() {
		return code_postal_client;
	}
	public String get_ville_client() {
		return ville_client;
	}
	public String get_mot_directeur() {
		return mot_directeur;
	}
	public String get_no_tel_client() {
		return no_tel_client;
	}
	public String get_no_tel2_client() {
		return no_tel2_client;
	}
	public String get_no_fax_client() {
		return no_fax_client;
	}
	public String get_code_famille_cli() {
		return code_famille_cli;
	}
	public String get_code_sous_fam_cli() {
		return code_sous_fam_cli;
	}
	public String get_code_agence() {
		return code_agence;
	}
	public Integer get_indic_delai_releve() {
		return indic_delai_releve;
	}
	public Integer get_code_releve_fact() {
		return code_releve_fact;
	}
	public Integer get_code_paiement() {
		return code_paiement;
	}
	public Integer get_code_echeance() {
		return code_echeance;
	}
	public Integer get_code_terme() {
		return code_terme;
	}
	public Long get_date_ouverture() {
		return date_ouverture;
	}
	public Long get_code_client_fact() {
		return code_client_fact;
	}
	public String get_frais_deb() {
		return frais_deb;
	}
	public Integer get_distance() {
		return distance;
	}
	public Integer get_dernier_no_webtop() {
		return dernier_no_webtop;
	}
	public String get_code_ape_naf_old() {
		return code_ape_naf_old;
	}
	public String get_siret1_client() {
		return siret1_client;
	}
	public String get_siret2_client() {
		return siret2_client;
	}
	public Integer get_no_societe_liee() {
		return no_societe_liee;
	}
	public Long get_no_frn_lie() {
		return no_frn_lie;
	}
	public Integer get_indic_lie_dis() {
		return indic_lie_dis;
	}
	public Integer get_indic_lie_sav() {
		return indic_lie_sav;
	}
	public Integer get_indic_lie_loc() {
		return indic_lie_loc;
	}
	public Integer get_indic_client_agce() {
		return indic_client_agce;
	}
	public String get_code_agence_ica() {
		return code_agence_ica;
	}
	public String get_code_activite_1() {
		return code_activite_1;
	}
	public String get_code_activite_2() {
		return code_activite_2;
	}
	public String get_code_activite_3() {
		return code_activite_3;
	}
	public String get_code_activite_4() {
		return code_activite_4;
	}
	public Integer get_indic_siege() {
		return indic_siege;
	}
	public Long get_no_fcp_siege() {
		return no_fcp_siege;
	}
	public Integer get_siecle_cre_entrep() {
		return siecle_cre_entrep;
	}
	public Integer get_annee_cre_entrep() {
		return annee_cre_entrep;
	}
	public Integer get_mois_cre_entrep() {
		return mois_cre_entrep;
	}
	public Integer get_code_effectif() {
		return code_effectif;
	}
	public Long get_effectif() {
		return effectif;
	}
	public BigDecimal get_ca_annuel() {
		return ca_annuel;
	}
	public String get_commentaire() {
		return commentaire;
	}
	public Long get_capital() {
		return capital;
	}
	public Long get_dcre_mcli() {
		return dcre_mcli;
	}
	public String get_auteur_creation() {
		return auteur_creation;
	}
	public Date get_date_maj() {
		return date_maj;
	}
	public String get_auteur_maj() {
		return auteur_maj;
	}
	public Date get_date_maj_mobivip() {
		return date_maj_mobivip;
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
	public Integer get_code_suppr_fcp() {
		return code_suppr_fcp;
	}
	public Date get_date_suppr_fcp() {
		return date_suppr_fcp;
	}
	public String get_auteur_suppr_fcp() {
		return auteur_suppr_fcp;
	}
	public String get_special_edi() {
		return special_edi;
	}
	public Integer get_division_principal() {
		return division_principal;
	}
	public Integer get_pfl_mcli() {
		return pfl_mcli;
	}
	public Integer get_code_rel_mobivip() {
		return code_rel_mobivip;
	}
	public Long get_couv_sfac_mobiloc() {
		return couv_sfac_mobiloc;
	}
	public Long get_plafond_mobiloc() {
		return plafond_mobiloc;
	}
	public Integer get_comte() {
		return comte;
	}
	public Long get_prospect_jd() {
		return prospect_jd;
	}
	public Integer get_synchro_jd() {
		return synchro_jd;
	}
	public Boolean get_specif_jd_pub() {
		return specif_jd_pub;
	}
	public Boolean get_specif_jd_mag() {
		return specif_jd_mag;
	}
	public String get_code_ape_naf() {
		return code_ape_naf;
	}
	public Integer get_indic_eurofactor() {
		return indic_eurofactor;
	}
	public Integer get_indic_fidelite() {
		return indic_fidelite;
	}
	public Integer get_liv_partielle() {
		return liv_partielle;
	}
	public Long get_client_divers_orig() {
		return client_divers_orig;
	}
	public Integer get_ref_obligatoire() {
		return ref_obligatoire;
	}
	public Integer get_app_groupe() {
		return app_groupe;
	}
	public Long get_gln() {
		return gln;
	}
	public Integer get_rgpd_mcli() {
		return rgpd_mcli;
	}
	public Boolean get_impression_doc_attaches_sur_factures() {
		return impression_doc_attaches_sur_factures;
	}
	public Long get_no_client_siege() {
		return no_client_siege;
	}
	public void set_no_interne_client(Long no_interne_client) {
		this.no_interne_client = no_interne_client;
	}
	public void set_code_client(Long code_client) {
		this.code_client = code_client;
	}
	public void set_no_fiche_prospect(Long no_fiche_prospect) {
		this.no_fiche_prospect = no_fiche_prospect;
	}
	public void set_code_client_compta(Long code_client_compta) {
		this.code_client_compta = code_client_compta;
	}
	public void set_indic_export(Integer indic_export) {
		this.indic_export = indic_export;
	}
	public void set_indic_divers(Integer indic_divers) {
		this.indic_divers = indic_divers;
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
	public void set_raison_sociale_cli(String raison_sociale_cli) {
		this.raison_sociale_cli = raison_sociale_cli;
	}
	public void set_adresse_client(String adresse_client) {
		this.adresse_client = adresse_client;
	}
	public void set_code_postal_client(String code_postal_client) {
		this.code_postal_client = code_postal_client;
	}
	public void set_ville_client(String ville_client) {
		this.ville_client = ville_client;
	}
	public void set_mot_directeur(String mot_directeur) {
		this.mot_directeur = mot_directeur;
	}
	public void set_no_tel_client(String no_tel_client) {
		this.no_tel_client = no_tel_client;
	}
	public void set_no_tel2_client(String no_tel2_client) {
		this.no_tel2_client = no_tel2_client;
	}
	public void set_no_fax_client(String no_fax_client) {
		this.no_fax_client = no_fax_client;
	}
	public void set_code_famille_cli(String code_famille_cli) {
		this.code_famille_cli = code_famille_cli;
	}
	public void set_code_sous_fam_cli(String code_sous_fam_cli) {
		this.code_sous_fam_cli = code_sous_fam_cli;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_indic_delai_releve(Integer indic_delai_releve) {
		this.indic_delai_releve = indic_delai_releve;
	}
	public void set_code_releve_fact(Integer code_releve_fact) {
		this.code_releve_fact = code_releve_fact;
	}
	public void set_code_paiement(Integer code_paiement) {
		this.code_paiement = code_paiement;
	}
	public void set_code_echeance(Integer code_echeance) {
		this.code_echeance = code_echeance;
	}
	public void set_code_terme(Integer code_terme) {
		this.code_terme = code_terme;
	}
	public void set_date_ouverture(Long date_ouverture) {
		this.date_ouverture = date_ouverture;
	}
	public void set_code_client_fact(Long code_client_fact) {
		this.code_client_fact = code_client_fact;
	}
	public void set_frais_deb(String frais_deb) {
		this.frais_deb = frais_deb;
	}
	public void set_distance(Integer distance) {
		this.distance = distance;
	}
	public void set_dernier_no_webtop(Integer dernier_no_webtop) {
		this.dernier_no_webtop = dernier_no_webtop;
	}
	public void set_code_ape_naf_old(String code_ape_naf_old) {
		this.code_ape_naf_old = code_ape_naf_old;
	}
	public void set_siret1_client(String siret1_client) {
		this.siret1_client = siret1_client;
	}
	public void set_siret2_client(String siret2_client) {
		this.siret2_client = siret2_client;
	}
	public void set_no_societe_liee(Integer no_societe_liee) {
		this.no_societe_liee = no_societe_liee;
	}
	public void set_no_frn_lie(Long no_frn_lie) {
		this.no_frn_lie = no_frn_lie;
	}
	public void set_indic_lie_dis(Integer indic_lie_dis) {
		this.indic_lie_dis = indic_lie_dis;
	}
	public void set_indic_lie_sav(Integer indic_lie_sav) {
		this.indic_lie_sav = indic_lie_sav;
	}
	public void set_indic_lie_loc(Integer indic_lie_loc) {
		this.indic_lie_loc = indic_lie_loc;
	}
	public void set_indic_client_agce(Integer indic_client_agce) {
		this.indic_client_agce = indic_client_agce;
	}
	public void set_code_agence_ica(String code_agence_ica) {
		this.code_agence_ica = code_agence_ica;
	}
	public void set_code_activite_1(String code_activite_1) {
		this.code_activite_1 = code_activite_1;
	}
	public void set_code_activite_2(String code_activite_2) {
		this.code_activite_2 = code_activite_2;
	}
	public void set_code_activite_3(String code_activite_3) {
		this.code_activite_3 = code_activite_3;
	}
	public void set_code_activite_4(String code_activite_4) {
		this.code_activite_4 = code_activite_4;
	}
	public void set_indic_siege(Integer indic_siege) {
		this.indic_siege = indic_siege;
	}
	public void set_no_fcp_siege(Long no_fcp_siege) {
		this.no_fcp_siege = no_fcp_siege;
	}
	public void set_siecle_cre_entrep(Integer siecle_cre_entrep) {
		this.siecle_cre_entrep = siecle_cre_entrep;
	}
	public void set_annee_cre_entrep(Integer annee_cre_entrep) {
		this.annee_cre_entrep = annee_cre_entrep;
	}
	public void set_mois_cre_entrep(Integer mois_cre_entrep) {
		this.mois_cre_entrep = mois_cre_entrep;
	}
	public void set_code_effectif(Integer code_effectif) {
		this.code_effectif = code_effectif;
	}
	public void set_effectif(Long effectif) {
		this.effectif = effectif;
	}
	public void set_ca_annuel(BigDecimal ca_annuel) {
		this.ca_annuel = ca_annuel;
	}
	public void set_commentaire(String commentaire) {
		this.commentaire = commentaire;
	}
	public void set_capital(Long capital) {
		this.capital = capital;
	}
	public void set_dcre_mcli(Long dcre_mcli) {
		this.dcre_mcli = dcre_mcli;
	}
	public void set_auteur_creation(String auteur_creation) {
		this.auteur_creation = auteur_creation;
	}
	public void set_date_maj(Date date_maj) {
		this.date_maj = date_maj;
	}
	public void set_auteur_maj(String auteur_maj) {
		this.auteur_maj = auteur_maj;
	}
	public void set_date_maj_mobivip(Date date_maj_mobivip) {
		this.date_maj_mobivip = date_maj_mobivip;
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
	public void set_code_suppr_fcp(Integer code_suppr_fcp) {
		this.code_suppr_fcp = code_suppr_fcp;
	}
	public void set_date_suppr_fcp(Date date_suppr_fcp) {
		this.date_suppr_fcp = date_suppr_fcp;
	}
	public void set_auteur_suppr_fcp(String auteur_suppr_fcp) {
		this.auteur_suppr_fcp = auteur_suppr_fcp;
	}
	public void set_special_edi(String special_edi) {
		this.special_edi = special_edi;
	}
	public void set_division_principal(Integer division_principal) {
		this.division_principal = division_principal;
	}
	public void set_pfl_mcli(Integer pfl_mcli) {
		this.pfl_mcli = pfl_mcli;
	}
	public void set_code_rel_mobivip(Integer code_rel_mobivip) {
		this.code_rel_mobivip = code_rel_mobivip;
	}
	public void set_couv_sfac_mobiloc(Long couv_sfac_mobiloc) {
		this.couv_sfac_mobiloc = couv_sfac_mobiloc;
	}
	public void set_plafond_mobiloc(Long plafond_mobiloc) {
		this.plafond_mobiloc = plafond_mobiloc;
	}
	public void set_comte(Integer comte) {
		this.comte = comte;
	}
	public void set_prospect_jd(Long prospect_jd) {
		this.prospect_jd = prospect_jd;
	}
	public void set_synchro_jd(Integer synchro_jd) {
		this.synchro_jd = synchro_jd;
	}
	public void set_specif_jd_pub(Boolean specif_jd_pub) {
		this.specif_jd_pub = specif_jd_pub;
	}
	public void set_specif_jd_mag(Boolean specif_jd_mag) {
		this.specif_jd_mag = specif_jd_mag;
	}
	public void set_code_ape_naf(String code_ape_naf) {
		this.code_ape_naf = code_ape_naf;
	}
	public void set_indic_eurofactor(Integer indic_eurofactor) {
		this.indic_eurofactor = indic_eurofactor;
	}
	public void set_indic_fidelite(Integer indic_fidelite) {
		this.indic_fidelite = indic_fidelite;
	}
	public void set_liv_partielle(Integer liv_partielle) {
		this.liv_partielle = liv_partielle;
	}
	public void set_client_divers_orig(Long client_divers_orig) {
		this.client_divers_orig = client_divers_orig;
	}
	public void set_ref_obligatoire(Integer ref_obligatoire) {
		this.ref_obligatoire = ref_obligatoire;
	}
	public void set_app_groupe(Integer app_groupe) {
		this.app_groupe = app_groupe;
	}
	public void set_gln(Long gln) {
		this.gln = gln;
	}
	public void set_rgpd_mcli(Integer rgpd_mcli) {
		this.rgpd_mcli = rgpd_mcli;
	}
	public void set_impression_doc_attaches_sur_factures(Boolean impression_doc_attaches_sur_factures) {
		this.impression_doc_attaches_sur_factures = impression_doc_attaches_sur_factures;
	}
	public void set_no_client_siege(Long no_client_siege) {
		this.no_client_siege = no_client_siege;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
