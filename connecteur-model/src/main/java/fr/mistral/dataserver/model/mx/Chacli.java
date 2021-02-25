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
		@Index(name="idx_chacli_cle1_mchc", columnList="no_chantier", unique=true),
		@Index(name="idx_chacli_cle2_mchc", columnList="no_interne_client,nom_chantier", unique=false),
		@Index(name="idx_chacli_cle3_mchc", columnList="pole_activite,no_interne_client", unique=false),
		@Index(name="idx_chacli_cle4_mchc", columnList="no_interne_client,code_pays,code_postal_chanti", unique=false)
})
public class Chacli implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long no_chantier;
	@Column
	private Long no_interne_client;
	@Column
	private String nom_chantier;
	@Column
	private String adresse_chantier;
	@Column
	private String code_pays;
	@Column
	private String code_postal_chanti;
	@Column
	private String ville_chantier;
	@Column
	private String tel_chantier;
	@Column
	private String fax_chantier;
	@Column
	private Integer indic_fact_adr_chc;
	@Column
	private Integer indic_trait;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_creation;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_cloture;
	@Column
	private Long no_bs_complements_1;
	@Column
	private Long no_bs_complements_2;
	@Column
	private Long no_bs_complements_3;
	@Column
	private Long no_bs_complements_4;
	@Column
	private Long no_bs_complements_5;
	@Column
	private Long no_bs_complements_6;
	@Column
	private Long no_bs_complements_7;
	@Column
	private Long no_bs_complements_8;
	@Column
	private Long no_bs_complements_9;
	@Column
	private Long no_bs_complements_10;
	@Column
	private String pole_activite;
	@Column
	private String instructions_1;
	@Column
	private String instructions_2;
	@Column
	private Integer distance;
	@Column
	private String code_commercial;
	@Column
	private String code_ori_affaire;
	@Column
	private String code_agence;
	@Column
	private Integer indic_adr_chc_cli;
	@Column
	private String no_tarif_location;
	@Column
	private String code_territoire;
	@Column
	private String code_secteur;
	@Column
	private String non_utilise;
	@Column
	private String no_tarif_spe_loc;
	@Column
	private Integer indic_chc_manutent;
	@Column
	private Long no_bs_echafaudage;
	@Column
	private Integer indic_stade_chc;
	@Temporal(TemporalType.DATE)
	@Column
	private Date date_maj_enreg;
	@Column
	private Long ana7_mchc;
	@Column
	private String no_affaire;
	@Column
	private String indic_demat;
	@Column
	private String spe_mchc;
	public Long get_no_chantier() {
		return no_chantier;
	}
	public Long get_no_interne_client() {
		return no_interne_client;
	}
	public String get_nom_chantier() {
		return nom_chantier;
	}
	public String get_adresse_chantier() {
		return adresse_chantier;
	}
	public String get_code_pays() {
		return code_pays;
	}
	public String get_code_postal_chanti() {
		return code_postal_chanti;
	}
	public String get_ville_chantier() {
		return ville_chantier;
	}
	public String get_tel_chantier() {
		return tel_chantier;
	}
	public String get_fax_chantier() {
		return fax_chantier;
	}
	public Integer get_indic_fact_adr_chc() {
		return indic_fact_adr_chc;
	}
	public Integer get_indic_trait() {
		return indic_trait;
	}
	public Date get_date_creation() {
		return date_creation;
	}
	public Date get_date_cloture() {
		return date_cloture;
	}
	public Long get_no_bs_complements_1() {
		return no_bs_complements_1;
	}
	public Long get_no_bs_complements_2() {
		return no_bs_complements_2;
	}
	public Long get_no_bs_complements_3() {
		return no_bs_complements_3;
	}
	public Long get_no_bs_complements_4() {
		return no_bs_complements_4;
	}
	public Long get_no_bs_complements_5() {
		return no_bs_complements_5;
	}
	public Long get_no_bs_complements_6() {
		return no_bs_complements_6;
	}
	public Long get_no_bs_complements_7() {
		return no_bs_complements_7;
	}
	public Long get_no_bs_complements_8() {
		return no_bs_complements_8;
	}
	public Long get_no_bs_complements_9() {
		return no_bs_complements_9;
	}
	public Long get_no_bs_complements_10() {
		return no_bs_complements_10;
	}
	public String get_pole_activite() {
		return pole_activite;
	}
	public String get_instructions_1() {
		return instructions_1;
	}
	public String get_instructions_2() {
		return instructions_2;
	}
	public Integer get_distance() {
		return distance;
	}
	public String get_code_commercial() {
		return code_commercial;
	}
	public String get_code_ori_affaire() {
		return code_ori_affaire;
	}
	public String get_code_agence() {
		return code_agence;
	}
	public Integer get_indic_adr_chc_cli() {
		return indic_adr_chc_cli;
	}
	public String get_no_tarif_location() {
		return no_tarif_location;
	}
	public String get_code_territoire() {
		return code_territoire;
	}
	public String get_code_secteur() {
		return code_secteur;
	}
	public String get_non_utilise() {
		return non_utilise;
	}
	public String get_no_tarif_spe_loc() {
		return no_tarif_spe_loc;
	}
	public Integer get_indic_chc_manutent() {
		return indic_chc_manutent;
	}
	public Long get_no_bs_echafaudage() {
		return no_bs_echafaudage;
	}
	public Integer get_indic_stade_chc() {
		return indic_stade_chc;
	}
	public Date get_date_maj_enreg() {
		return date_maj_enreg;
	}
	public Long get_ana7_mchc() {
		return ana7_mchc;
	}
	public String get_no_affaire() {
		return no_affaire;
	}
	public String get_indic_demat() {
		return indic_demat;
	}
	public String get_spe_mchc() {
		return spe_mchc;
	}
	public void set_no_chantier(Long no_chantier) {
		this.no_chantier = no_chantier;
	}
	public void set_no_interne_client(Long no_interne_client) {
		this.no_interne_client = no_interne_client;
	}
	public void set_nom_chantier(String nom_chantier) {
		this.nom_chantier = nom_chantier;
	}
	public void set_adresse_chantier(String adresse_chantier) {
		this.adresse_chantier = adresse_chantier;
	}
	public void set_code_pays(String code_pays) {
		this.code_pays = code_pays;
	}
	public void set_code_postal_chanti(String code_postal_chanti) {
		this.code_postal_chanti = code_postal_chanti;
	}
	public void set_ville_chantier(String ville_chantier) {
		this.ville_chantier = ville_chantier;
	}
	public void set_tel_chantier(String tel_chantier) {
		this.tel_chantier = tel_chantier;
	}
	public void set_fax_chantier(String fax_chantier) {
		this.fax_chantier = fax_chantier;
	}
	public void set_indic_fact_adr_chc(Integer indic_fact_adr_chc) {
		this.indic_fact_adr_chc = indic_fact_adr_chc;
	}
	public void set_indic_trait(Integer indic_trait) {
		this.indic_trait = indic_trait;
	}
	public void set_date_creation(Date date_creation) {
		this.date_creation = date_creation;
	}
	public void set_date_cloture(Date date_cloture) {
		this.date_cloture = date_cloture;
	}
	public void set_no_bs_complements_1(Long no_bs_complements_1) {
		this.no_bs_complements_1 = no_bs_complements_1;
	}
	public void set_no_bs_complements_2(Long no_bs_complements_2) {
		this.no_bs_complements_2 = no_bs_complements_2;
	}
	public void set_no_bs_complements_3(Long no_bs_complements_3) {
		this.no_bs_complements_3 = no_bs_complements_3;
	}
	public void set_no_bs_complements_4(Long no_bs_complements_4) {
		this.no_bs_complements_4 = no_bs_complements_4;
	}
	public void set_no_bs_complements_5(Long no_bs_complements_5) {
		this.no_bs_complements_5 = no_bs_complements_5;
	}
	public void set_no_bs_complements_6(Long no_bs_complements_6) {
		this.no_bs_complements_6 = no_bs_complements_6;
	}
	public void set_no_bs_complements_7(Long no_bs_complements_7) {
		this.no_bs_complements_7 = no_bs_complements_7;
	}
	public void set_no_bs_complements_8(Long no_bs_complements_8) {
		this.no_bs_complements_8 = no_bs_complements_8;
	}
	public void set_no_bs_complements_9(Long no_bs_complements_9) {
		this.no_bs_complements_9 = no_bs_complements_9;
	}
	public void set_no_bs_complements_10(Long no_bs_complements_10) {
		this.no_bs_complements_10 = no_bs_complements_10;
	}
	public void set_pole_activite(String pole_activite) {
		this.pole_activite = pole_activite;
	}
	public void set_instructions_1(String instructions_1) {
		this.instructions_1 = instructions_1;
	}
	public void set_instructions_2(String instructions_2) {
		this.instructions_2 = instructions_2;
	}
	public void set_distance(Integer distance) {
		this.distance = distance;
	}
	public void set_code_commercial(String code_commercial) {
		this.code_commercial = code_commercial;
	}
	public void set_code_ori_affaire(String code_ori_affaire) {
		this.code_ori_affaire = code_ori_affaire;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_indic_adr_chc_cli(Integer indic_adr_chc_cli) {
		this.indic_adr_chc_cli = indic_adr_chc_cli;
	}
	public void set_no_tarif_location(String no_tarif_location) {
		this.no_tarif_location = no_tarif_location;
	}
	public void set_code_territoire(String code_territoire) {
		this.code_territoire = code_territoire;
	}
	public void set_code_secteur(String code_secteur) {
		this.code_secteur = code_secteur;
	}
	public void set_non_utilise(String non_utilise) {
		this.non_utilise = non_utilise;
	}
	public void set_no_tarif_spe_loc(String no_tarif_spe_loc) {
		this.no_tarif_spe_loc = no_tarif_spe_loc;
	}
	public void set_indic_chc_manutent(Integer indic_chc_manutent) {
		this.indic_chc_manutent = indic_chc_manutent;
	}
	public void set_no_bs_echafaudage(Long no_bs_echafaudage) {
		this.no_bs_echafaudage = no_bs_echafaudage;
	}
	public void set_indic_stade_chc(Integer indic_stade_chc) {
		this.indic_stade_chc = indic_stade_chc;
	}
	public void set_date_maj_enreg(Date date_maj_enreg) {
		this.date_maj_enreg = date_maj_enreg;
	}
	public void set_ana7_mchc(Long ana7_mchc) {
		this.ana7_mchc = ana7_mchc;
	}
	public void set_no_affaire(String no_affaire) {
		this.no_affaire = no_affaire;
	}
	public void set_indic_demat(String indic_demat) {
		this.indic_demat = indic_demat;
	}
	public void set_spe_mchc(String spe_mchc) {
		this.spe_mchc = spe_mchc;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
