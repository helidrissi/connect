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
		@Index(name="idx_destar_cle1_mdta", columnList="log_mdta,mod_mdta", unique=true)
})
public class Destar implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Integer log_mdta;
	@Column
	private Integer mod_mdta;
	@Column
	private String nom_mdta;
	@Column
	private String fic_mdta;
	@Column
	private Integer nbr_mdta;
	@Column
	private Integer p2r_mdta;
	@Temporal(TemporalType.DATE)
	@Column
	private Date dat_mdta;
	@Column
	private Integer typ_mdta;
	@Column
	private String sep_mdta;
	@Column
	private String del_mdta;
	@Column
	private Integer p_ref_mdta;
	@Column
	private Integer l_ref_mdta;
	@Column
	private Integer d_ref_mdta;
	@Column
	private String t_ref_mdta;
	@Column
	private String c_ref_mdta;
	@Column
	private Integer p_ref2_mdta;
	@Column
	private Integer l_ref2_mdta;
	@Column
	private Integer d_ref2_mdta;
	@Column
	private String t_ref2_mdta;
	@Column
	private String c_ref2_mdta;
	@Column
	private Integer p_des_mdta;
	@Column
	private Integer l_des_mdta;
	@Column
	private Integer d_des_mdta;
	@Column
	private String t_des_mdta;
	@Column
	private String c_des_mdta;
	@Column
	private Integer p_prie_mdta;
	@Column
	private Integer l_prie_mdta;
	@Column
	private Integer d_pri_mdta;
	@Column
	private Integer p_prid_mdta;
	@Column
	private Integer l_prid_mdta;
	@Column
	private String t_pri_mdta;
	@Column
	private String c_pri_mdta;
	@Column
	private Integer p_prie2_mdta;
	@Column
	private Integer l_prie2_mdta;
	@Column
	private Integer d_pri2_mdta;
	@Column
	private Integer p_prid2_mdta;
	@Column
	private Integer l_prid2_mdta;
	@Column
	private String t_pri2_mdta;
	@Column
	private String c_pri2_mdta;
	@Column
	private Integer p_prie3_mdta;
	@Column
	private Integer l_prie3_mdta;
	@Column
	private Integer d_pri3_mdta;
	@Column
	private Integer p_prid3_mdta;
	@Column
	private Integer l_prid3_mdta;
	@Column
	private String t_pri3_mdta;
	@Column
	private String c_pri3_mdta;
	@Column
	private Integer p_rem_mdta;
	@Column
	private Integer l_rem_mdta;
	@Column
	private Integer d_rem_mdta;
	@Column
	private String t_rem_mdta;
	@Column
	private String c_rem_mdta;
	@Column
	private Integer p_rem2_mdta;
	@Column
	private Integer l_rem2_mdta;
	@Column
	private Integer d_rem2_mdta;
	@Column
	private String t_rem2_mdta;
	@Column
	private String c_rem2_mdta;
	@Column
	private Integer p_uac_mdta;
	@Column
	private Integer l_uac_mdta;
	@Column
	private Integer d_uac_mdta;
	@Column
	private String t_uac_mdta;
	@Column
	private String c_uac_mdta;
	@Column
	private Integer p_poie_mdta;
	@Column
	private Integer l_poie_mdta;
	@Column
	private Integer d_poi_mdta;
	@Column
	private Integer p_poid_mdta;
	@Column
	private Integer l_poid_mdta;
	@Column
	private String t_poi_mdta;
	@Column
	private String c_poi_mdta;
	@Column
	private Integer p_rer_mdta;
	@Column
	private Integer l_rer_mdta;
	@Column
	private Integer d_rer_mdta;
	@Column
	private String t_rer_mdta;
	@Column
	private String c_rer_mdta;
	@Column
	private Integer p_gra_mdta;
	@Column
	private Integer l_gra_mdta;
	@Column
	private Integer d_gra_mdta;
	@Column
	private String t_gra_mdta;
	@Column
	private String c_gra_mdta;
	@Column
	private Integer p_fam_mdta;
	@Column
	private Integer l_fam_mdta;
	@Column
	private Integer d_fam_mdta;
	@Column
	private String t_fam_mdta;
	@Column
	private String c_fam_mdta;
	@Column
	private Integer p_mar_mdta;
	@Column
	private Integer l_mar_mdta;
	@Column
	private Integer d_mar_mdta;
	@Column
	private String t_mar_mdta;
	@Column
	private String c_mar_mdta;
	@Column
	private Integer p_ren_mdta;
	@Column
	private Integer l_ren_mdta;
	@Column
	private Integer d_ren_mdta;
	@Column
	private String t_ren_mdta;
	@Column
	private String c_ren_mdta;
	@Column
	private Integer p_min_mdta;
	@Column
	private Integer l_min_mdta;
	@Column
	private Integer d_min_mdta;
	@Column
	private String t_min_mdta;
	@Column
	private String c_min_mdta;
	@Column
	private String n_spe_mdta_1;
	@Column
	private String n_spe_mdta_2;
	@Column
	private String n_spe_mdta_3;
	@Column
	private String n_spe_mdta_4;
	@Column
	private String n_spe_mdta_5;
	@Column
	private Integer p_spe_mdta_1;
	@Column
	private Integer p_spe_mdta_2;
	@Column
	private Integer p_spe_mdta_3;
	@Column
	private Integer p_spe_mdta_4;
	@Column
	private Integer p_spe_mdta_5;
	@Column
	private Integer l_spe_mdta_1;
	@Column
	private Integer l_spe_mdta_2;
	@Column
	private Integer l_spe_mdta_3;
	@Column
	private Integer l_spe_mdta_4;
	@Column
	private Integer l_spe_mdta_5;
	@Column
	private Integer d_spe_mdta_1;
	@Column
	private Integer d_spe_mdta_2;
	@Column
	private Integer d_spe_mdta_3;
	@Column
	private Integer d_spe_mdta_4;
	@Column
	private Integer d_spe_mdta_5;
	@Column
	private String t_spe_mdta_1;
	@Column
	private String t_spe_mdta_2;
	@Column
	private String t_spe_mdta_3;
	@Column
	private String t_spe_mdta_4;
	@Column
	private String t_spe_mdta_5;
	@Column
	private String c_spe_mdta_1;
	@Column
	private String c_spe_mdta_2;
	@Column
	private String c_spe_mdta_3;
	@Column
	private String c_spe_mdta_4;
	@Column
	private String c_spe_mdta_5;
	@Column
	private String com_mdta;
	@Column
	private String ide_mdta;
	@Column
	private Integer p_gcod_mdta;
	@Column
	private Integer l_gcod_mdta;
	@Column
	private Integer d_gcod_mdta;
	@Column
	private String t_gcod_mdta;
	@Column
	private String c_gcod_mdta;
	@Column
	private Integer p_pay_mdta;
	@Column
	private Integer l_pay_mdta;
	@Column
	private Integer d_pay_mdta;
	@Column
	private String t_pay_mdta;
	@Column
	private String c_pay_mdta;
	@Column
	private Integer p_tva_mdta;
	@Column
	private Integer l_tva_mdta;
	@Column
	private Integer d_tva_mdta;
	@Column
	private String t_tva_mdta;
	@Column
	private String c_tva_mdta;
	@Column
	private Integer p_rfi_mdta;
	@Column
	private Integer l_rfi_mdta;
	@Column
	private Integer d_rfi_mdta;
	@Column
	private String t_rfi_mdta;
	@Column
	private String c_rfi_mdta;
	@Column
	private Integer p_coee_mdta;
	@Column
	private Integer l_coee_mdta;
	@Column
	private Integer d_coe_mdta;
	@Column
	private Integer p_coed_mdta;
	@Column
	private Integer l_coed_mdta;
	public Integer get_log_mdta() {
		return log_mdta;
	}
	public Integer get_mod_mdta() {
		return mod_mdta;
	}
	public String get_nom_mdta() {
		return nom_mdta;
	}
	public String get_fic_mdta() {
		return fic_mdta;
	}
	public Integer get_nbr_mdta() {
		return nbr_mdta;
	}
	public Integer get_p2r_mdta() {
		return p2r_mdta;
	}
	public Date get_dat_mdta() {
		return dat_mdta;
	}
	public Integer get_typ_mdta() {
		return typ_mdta;
	}
	public String get_sep_mdta() {
		return sep_mdta;
	}
	public String get_del_mdta() {
		return del_mdta;
	}
	public Integer get_p_ref_mdta() {
		return p_ref_mdta;
	}
	public Integer get_l_ref_mdta() {
		return l_ref_mdta;
	}
	public Integer get_d_ref_mdta() {
		return d_ref_mdta;
	}
	public String get_t_ref_mdta() {
		return t_ref_mdta;
	}
	public String get_c_ref_mdta() {
		return c_ref_mdta;
	}
	public Integer get_p_ref2_mdta() {
		return p_ref2_mdta;
	}
	public Integer get_l_ref2_mdta() {
		return l_ref2_mdta;
	}
	public Integer get_d_ref2_mdta() {
		return d_ref2_mdta;
	}
	public String get_t_ref2_mdta() {
		return t_ref2_mdta;
	}
	public String get_c_ref2_mdta() {
		return c_ref2_mdta;
	}
	public Integer get_p_des_mdta() {
		return p_des_mdta;
	}
	public Integer get_l_des_mdta() {
		return l_des_mdta;
	}
	public Integer get_d_des_mdta() {
		return d_des_mdta;
	}
	public String get_t_des_mdta() {
		return t_des_mdta;
	}
	public String get_c_des_mdta() {
		return c_des_mdta;
	}
	public Integer get_p_prie_mdta() {
		return p_prie_mdta;
	}
	public Integer get_l_prie_mdta() {
		return l_prie_mdta;
	}
	public Integer get_d_pri_mdta() {
		return d_pri_mdta;
	}
	public Integer get_p_prid_mdta() {
		return p_prid_mdta;
	}
	public Integer get_l_prid_mdta() {
		return l_prid_mdta;
	}
	public String get_t_pri_mdta() {
		return t_pri_mdta;
	}
	public String get_c_pri_mdta() {
		return c_pri_mdta;
	}
	public Integer get_p_prie2_mdta() {
		return p_prie2_mdta;
	}
	public Integer get_l_prie2_mdta() {
		return l_prie2_mdta;
	}
	public Integer get_d_pri2_mdta() {
		return d_pri2_mdta;
	}
	public Integer get_p_prid2_mdta() {
		return p_prid2_mdta;
	}
	public Integer get_l_prid2_mdta() {
		return l_prid2_mdta;
	}
	public String get_t_pri2_mdta() {
		return t_pri2_mdta;
	}
	public String get_c_pri2_mdta() {
		return c_pri2_mdta;
	}
	public Integer get_p_prie3_mdta() {
		return p_prie3_mdta;
	}
	public Integer get_l_prie3_mdta() {
		return l_prie3_mdta;
	}
	public Integer get_d_pri3_mdta() {
		return d_pri3_mdta;
	}
	public Integer get_p_prid3_mdta() {
		return p_prid3_mdta;
	}
	public Integer get_l_prid3_mdta() {
		return l_prid3_mdta;
	}
	public String get_t_pri3_mdta() {
		return t_pri3_mdta;
	}
	public String get_c_pri3_mdta() {
		return c_pri3_mdta;
	}
	public Integer get_p_rem_mdta() {
		return p_rem_mdta;
	}
	public Integer get_l_rem_mdta() {
		return l_rem_mdta;
	}
	public Integer get_d_rem_mdta() {
		return d_rem_mdta;
	}
	public String get_t_rem_mdta() {
		return t_rem_mdta;
	}
	public String get_c_rem_mdta() {
		return c_rem_mdta;
	}
	public Integer get_p_rem2_mdta() {
		return p_rem2_mdta;
	}
	public Integer get_l_rem2_mdta() {
		return l_rem2_mdta;
	}
	public Integer get_d_rem2_mdta() {
		return d_rem2_mdta;
	}
	public String get_t_rem2_mdta() {
		return t_rem2_mdta;
	}
	public String get_c_rem2_mdta() {
		return c_rem2_mdta;
	}
	public Integer get_p_uac_mdta() {
		return p_uac_mdta;
	}
	public Integer get_l_uac_mdta() {
		return l_uac_mdta;
	}
	public Integer get_d_uac_mdta() {
		return d_uac_mdta;
	}
	public String get_t_uac_mdta() {
		return t_uac_mdta;
	}
	public String get_c_uac_mdta() {
		return c_uac_mdta;
	}
	public Integer get_p_poie_mdta() {
		return p_poie_mdta;
	}
	public Integer get_l_poie_mdta() {
		return l_poie_mdta;
	}
	public Integer get_d_poi_mdta() {
		return d_poi_mdta;
	}
	public Integer get_p_poid_mdta() {
		return p_poid_mdta;
	}
	public Integer get_l_poid_mdta() {
		return l_poid_mdta;
	}
	public String get_t_poi_mdta() {
		return t_poi_mdta;
	}
	public String get_c_poi_mdta() {
		return c_poi_mdta;
	}
	public Integer get_p_rer_mdta() {
		return p_rer_mdta;
	}
	public Integer get_l_rer_mdta() {
		return l_rer_mdta;
	}
	public Integer get_d_rer_mdta() {
		return d_rer_mdta;
	}
	public String get_t_rer_mdta() {
		return t_rer_mdta;
	}
	public String get_c_rer_mdta() {
		return c_rer_mdta;
	}
	public Integer get_p_gra_mdta() {
		return p_gra_mdta;
	}
	public Integer get_l_gra_mdta() {
		return l_gra_mdta;
	}
	public Integer get_d_gra_mdta() {
		return d_gra_mdta;
	}
	public String get_t_gra_mdta() {
		return t_gra_mdta;
	}
	public String get_c_gra_mdta() {
		return c_gra_mdta;
	}
	public Integer get_p_fam_mdta() {
		return p_fam_mdta;
	}
	public Integer get_l_fam_mdta() {
		return l_fam_mdta;
	}
	public Integer get_d_fam_mdta() {
		return d_fam_mdta;
	}
	public String get_t_fam_mdta() {
		return t_fam_mdta;
	}
	public String get_c_fam_mdta() {
		return c_fam_mdta;
	}
	public Integer get_p_mar_mdta() {
		return p_mar_mdta;
	}
	public Integer get_l_mar_mdta() {
		return l_mar_mdta;
	}
	public Integer get_d_mar_mdta() {
		return d_mar_mdta;
	}
	public String get_t_mar_mdta() {
		return t_mar_mdta;
	}
	public String get_c_mar_mdta() {
		return c_mar_mdta;
	}
	public Integer get_p_ren_mdta() {
		return p_ren_mdta;
	}
	public Integer get_l_ren_mdta() {
		return l_ren_mdta;
	}
	public Integer get_d_ren_mdta() {
		return d_ren_mdta;
	}
	public String get_t_ren_mdta() {
		return t_ren_mdta;
	}
	public String get_c_ren_mdta() {
		return c_ren_mdta;
	}
	public Integer get_p_min_mdta() {
		return p_min_mdta;
	}
	public Integer get_l_min_mdta() {
		return l_min_mdta;
	}
	public Integer get_d_min_mdta() {
		return d_min_mdta;
	}
	public String get_t_min_mdta() {
		return t_min_mdta;
	}
	public String get_c_min_mdta() {
		return c_min_mdta;
	}
	public String get_n_spe_mdta_1() {
		return n_spe_mdta_1;
	}
	public String get_n_spe_mdta_2() {
		return n_spe_mdta_2;
	}
	public String get_n_spe_mdta_3() {
		return n_spe_mdta_3;
	}
	public String get_n_spe_mdta_4() {
		return n_spe_mdta_4;
	}
	public String get_n_spe_mdta_5() {
		return n_spe_mdta_5;
	}
	public Integer get_p_spe_mdta_1() {
		return p_spe_mdta_1;
	}
	public Integer get_p_spe_mdta_2() {
		return p_spe_mdta_2;
	}
	public Integer get_p_spe_mdta_3() {
		return p_spe_mdta_3;
	}
	public Integer get_p_spe_mdta_4() {
		return p_spe_mdta_4;
	}
	public Integer get_p_spe_mdta_5() {
		return p_spe_mdta_5;
	}
	public Integer get_l_spe_mdta_1() {
		return l_spe_mdta_1;
	}
	public Integer get_l_spe_mdta_2() {
		return l_spe_mdta_2;
	}
	public Integer get_l_spe_mdta_3() {
		return l_spe_mdta_3;
	}
	public Integer get_l_spe_mdta_4() {
		return l_spe_mdta_4;
	}
	public Integer get_l_spe_mdta_5() {
		return l_spe_mdta_5;
	}
	public Integer get_d_spe_mdta_1() {
		return d_spe_mdta_1;
	}
	public Integer get_d_spe_mdta_2() {
		return d_spe_mdta_2;
	}
	public Integer get_d_spe_mdta_3() {
		return d_spe_mdta_3;
	}
	public Integer get_d_spe_mdta_4() {
		return d_spe_mdta_4;
	}
	public Integer get_d_spe_mdta_5() {
		return d_spe_mdta_5;
	}
	public String get_t_spe_mdta_1() {
		return t_spe_mdta_1;
	}
	public String get_t_spe_mdta_2() {
		return t_spe_mdta_2;
	}
	public String get_t_spe_mdta_3() {
		return t_spe_mdta_3;
	}
	public String get_t_spe_mdta_4() {
		return t_spe_mdta_4;
	}
	public String get_t_spe_mdta_5() {
		return t_spe_mdta_5;
	}
	public String get_c_spe_mdta_1() {
		return c_spe_mdta_1;
	}
	public String get_c_spe_mdta_2() {
		return c_spe_mdta_2;
	}
	public String get_c_spe_mdta_3() {
		return c_spe_mdta_3;
	}
	public String get_c_spe_mdta_4() {
		return c_spe_mdta_4;
	}
	public String get_c_spe_mdta_5() {
		return c_spe_mdta_5;
	}
	public String get_com_mdta() {
		return com_mdta;
	}
	public String get_ide_mdta() {
		return ide_mdta;
	}
	public Integer get_p_gcod_mdta() {
		return p_gcod_mdta;
	}
	public Integer get_l_gcod_mdta() {
		return l_gcod_mdta;
	}
	public Integer get_d_gcod_mdta() {
		return d_gcod_mdta;
	}
	public String get_t_gcod_mdta() {
		return t_gcod_mdta;
	}
	public String get_c_gcod_mdta() {
		return c_gcod_mdta;
	}
	public Integer get_p_pay_mdta() {
		return p_pay_mdta;
	}
	public Integer get_l_pay_mdta() {
		return l_pay_mdta;
	}
	public Integer get_d_pay_mdta() {
		return d_pay_mdta;
	}
	public String get_t_pay_mdta() {
		return t_pay_mdta;
	}
	public String get_c_pay_mdta() {
		return c_pay_mdta;
	}
	public Integer get_p_tva_mdta() {
		return p_tva_mdta;
	}
	public Integer get_l_tva_mdta() {
		return l_tva_mdta;
	}
	public Integer get_d_tva_mdta() {
		return d_tva_mdta;
	}
	public String get_t_tva_mdta() {
		return t_tva_mdta;
	}
	public String get_c_tva_mdta() {
		return c_tva_mdta;
	}
	public Integer get_p_rfi_mdta() {
		return p_rfi_mdta;
	}
	public Integer get_l_rfi_mdta() {
		return l_rfi_mdta;
	}
	public Integer get_d_rfi_mdta() {
		return d_rfi_mdta;
	}
	public String get_t_rfi_mdta() {
		return t_rfi_mdta;
	}
	public String get_c_rfi_mdta() {
		return c_rfi_mdta;
	}
	public Integer get_p_coee_mdta() {
		return p_coee_mdta;
	}
	public Integer get_l_coee_mdta() {
		return l_coee_mdta;
	}
	public Integer get_d_coe_mdta() {
		return d_coe_mdta;
	}
	public Integer get_p_coed_mdta() {
		return p_coed_mdta;
	}
	public Integer get_l_coed_mdta() {
		return l_coed_mdta;
	}
	public void set_log_mdta(Integer log_mdta) {
		this.log_mdta = log_mdta;
	}
	public void set_mod_mdta(Integer mod_mdta) {
		this.mod_mdta = mod_mdta;
	}
	public void set_nom_mdta(String nom_mdta) {
		this.nom_mdta = nom_mdta;
	}
	public void set_fic_mdta(String fic_mdta) {
		this.fic_mdta = fic_mdta;
	}
	public void set_nbr_mdta(Integer nbr_mdta) {
		this.nbr_mdta = nbr_mdta;
	}
	public void set_p2r_mdta(Integer p2r_mdta) {
		this.p2r_mdta = p2r_mdta;
	}
	public void set_dat_mdta(Date dat_mdta) {
		this.dat_mdta = dat_mdta;
	}
	public void set_typ_mdta(Integer typ_mdta) {
		this.typ_mdta = typ_mdta;
	}
	public void set_sep_mdta(String sep_mdta) {
		this.sep_mdta = sep_mdta;
	}
	public void set_del_mdta(String del_mdta) {
		this.del_mdta = del_mdta;
	}
	public void set_p_ref_mdta(Integer p_ref_mdta) {
		this.p_ref_mdta = p_ref_mdta;
	}
	public void set_l_ref_mdta(Integer l_ref_mdta) {
		this.l_ref_mdta = l_ref_mdta;
	}
	public void set_d_ref_mdta(Integer d_ref_mdta) {
		this.d_ref_mdta = d_ref_mdta;
	}
	public void set_t_ref_mdta(String t_ref_mdta) {
		this.t_ref_mdta = t_ref_mdta;
	}
	public void set_c_ref_mdta(String c_ref_mdta) {
		this.c_ref_mdta = c_ref_mdta;
	}
	public void set_p_ref2_mdta(Integer p_ref2_mdta) {
		this.p_ref2_mdta = p_ref2_mdta;
	}
	public void set_l_ref2_mdta(Integer l_ref2_mdta) {
		this.l_ref2_mdta = l_ref2_mdta;
	}
	public void set_d_ref2_mdta(Integer d_ref2_mdta) {
		this.d_ref2_mdta = d_ref2_mdta;
	}
	public void set_t_ref2_mdta(String t_ref2_mdta) {
		this.t_ref2_mdta = t_ref2_mdta;
	}
	public void set_c_ref2_mdta(String c_ref2_mdta) {
		this.c_ref2_mdta = c_ref2_mdta;
	}
	public void set_p_des_mdta(Integer p_des_mdta) {
		this.p_des_mdta = p_des_mdta;
	}
	public void set_l_des_mdta(Integer l_des_mdta) {
		this.l_des_mdta = l_des_mdta;
	}
	public void set_d_des_mdta(Integer d_des_mdta) {
		this.d_des_mdta = d_des_mdta;
	}
	public void set_t_des_mdta(String t_des_mdta) {
		this.t_des_mdta = t_des_mdta;
	}
	public void set_c_des_mdta(String c_des_mdta) {
		this.c_des_mdta = c_des_mdta;
	}
	public void set_p_prie_mdta(Integer p_prie_mdta) {
		this.p_prie_mdta = p_prie_mdta;
	}
	public void set_l_prie_mdta(Integer l_prie_mdta) {
		this.l_prie_mdta = l_prie_mdta;
	}
	public void set_d_pri_mdta(Integer d_pri_mdta) {
		this.d_pri_mdta = d_pri_mdta;
	}
	public void set_p_prid_mdta(Integer p_prid_mdta) {
		this.p_prid_mdta = p_prid_mdta;
	}
	public void set_l_prid_mdta(Integer l_prid_mdta) {
		this.l_prid_mdta = l_prid_mdta;
	}
	public void set_t_pri_mdta(String t_pri_mdta) {
		this.t_pri_mdta = t_pri_mdta;
	}
	public void set_c_pri_mdta(String c_pri_mdta) {
		this.c_pri_mdta = c_pri_mdta;
	}
	public void set_p_prie2_mdta(Integer p_prie2_mdta) {
		this.p_prie2_mdta = p_prie2_mdta;
	}
	public void set_l_prie2_mdta(Integer l_prie2_mdta) {
		this.l_prie2_mdta = l_prie2_mdta;
	}
	public void set_d_pri2_mdta(Integer d_pri2_mdta) {
		this.d_pri2_mdta = d_pri2_mdta;
	}
	public void set_p_prid2_mdta(Integer p_prid2_mdta) {
		this.p_prid2_mdta = p_prid2_mdta;
	}
	public void set_l_prid2_mdta(Integer l_prid2_mdta) {
		this.l_prid2_mdta = l_prid2_mdta;
	}
	public void set_t_pri2_mdta(String t_pri2_mdta) {
		this.t_pri2_mdta = t_pri2_mdta;
	}
	public void set_c_pri2_mdta(String c_pri2_mdta) {
		this.c_pri2_mdta = c_pri2_mdta;
	}
	public void set_p_prie3_mdta(Integer p_prie3_mdta) {
		this.p_prie3_mdta = p_prie3_mdta;
	}
	public void set_l_prie3_mdta(Integer l_prie3_mdta) {
		this.l_prie3_mdta = l_prie3_mdta;
	}
	public void set_d_pri3_mdta(Integer d_pri3_mdta) {
		this.d_pri3_mdta = d_pri3_mdta;
	}
	public void set_p_prid3_mdta(Integer p_prid3_mdta) {
		this.p_prid3_mdta = p_prid3_mdta;
	}
	public void set_l_prid3_mdta(Integer l_prid3_mdta) {
		this.l_prid3_mdta = l_prid3_mdta;
	}
	public void set_t_pri3_mdta(String t_pri3_mdta) {
		this.t_pri3_mdta = t_pri3_mdta;
	}
	public void set_c_pri3_mdta(String c_pri3_mdta) {
		this.c_pri3_mdta = c_pri3_mdta;
	}
	public void set_p_rem_mdta(Integer p_rem_mdta) {
		this.p_rem_mdta = p_rem_mdta;
	}
	public void set_l_rem_mdta(Integer l_rem_mdta) {
		this.l_rem_mdta = l_rem_mdta;
	}
	public void set_d_rem_mdta(Integer d_rem_mdta) {
		this.d_rem_mdta = d_rem_mdta;
	}
	public void set_t_rem_mdta(String t_rem_mdta) {
		this.t_rem_mdta = t_rem_mdta;
	}
	public void set_c_rem_mdta(String c_rem_mdta) {
		this.c_rem_mdta = c_rem_mdta;
	}
	public void set_p_rem2_mdta(Integer p_rem2_mdta) {
		this.p_rem2_mdta = p_rem2_mdta;
	}
	public void set_l_rem2_mdta(Integer l_rem2_mdta) {
		this.l_rem2_mdta = l_rem2_mdta;
	}
	public void set_d_rem2_mdta(Integer d_rem2_mdta) {
		this.d_rem2_mdta = d_rem2_mdta;
	}
	public void set_t_rem2_mdta(String t_rem2_mdta) {
		this.t_rem2_mdta = t_rem2_mdta;
	}
	public void set_c_rem2_mdta(String c_rem2_mdta) {
		this.c_rem2_mdta = c_rem2_mdta;
	}
	public void set_p_uac_mdta(Integer p_uac_mdta) {
		this.p_uac_mdta = p_uac_mdta;
	}
	public void set_l_uac_mdta(Integer l_uac_mdta) {
		this.l_uac_mdta = l_uac_mdta;
	}
	public void set_d_uac_mdta(Integer d_uac_mdta) {
		this.d_uac_mdta = d_uac_mdta;
	}
	public void set_t_uac_mdta(String t_uac_mdta) {
		this.t_uac_mdta = t_uac_mdta;
	}
	public void set_c_uac_mdta(String c_uac_mdta) {
		this.c_uac_mdta = c_uac_mdta;
	}
	public void set_p_poie_mdta(Integer p_poie_mdta) {
		this.p_poie_mdta = p_poie_mdta;
	}
	public void set_l_poie_mdta(Integer l_poie_mdta) {
		this.l_poie_mdta = l_poie_mdta;
	}
	public void set_d_poi_mdta(Integer d_poi_mdta) {
		this.d_poi_mdta = d_poi_mdta;
	}
	public void set_p_poid_mdta(Integer p_poid_mdta) {
		this.p_poid_mdta = p_poid_mdta;
	}
	public void set_l_poid_mdta(Integer l_poid_mdta) {
		this.l_poid_mdta = l_poid_mdta;
	}
	public void set_t_poi_mdta(String t_poi_mdta) {
		this.t_poi_mdta = t_poi_mdta;
	}
	public void set_c_poi_mdta(String c_poi_mdta) {
		this.c_poi_mdta = c_poi_mdta;
	}
	public void set_p_rer_mdta(Integer p_rer_mdta) {
		this.p_rer_mdta = p_rer_mdta;
	}
	public void set_l_rer_mdta(Integer l_rer_mdta) {
		this.l_rer_mdta = l_rer_mdta;
	}
	public void set_d_rer_mdta(Integer d_rer_mdta) {
		this.d_rer_mdta = d_rer_mdta;
	}
	public void set_t_rer_mdta(String t_rer_mdta) {
		this.t_rer_mdta = t_rer_mdta;
	}
	public void set_c_rer_mdta(String c_rer_mdta) {
		this.c_rer_mdta = c_rer_mdta;
	}
	public void set_p_gra_mdta(Integer p_gra_mdta) {
		this.p_gra_mdta = p_gra_mdta;
	}
	public void set_l_gra_mdta(Integer l_gra_mdta) {
		this.l_gra_mdta = l_gra_mdta;
	}
	public void set_d_gra_mdta(Integer d_gra_mdta) {
		this.d_gra_mdta = d_gra_mdta;
	}
	public void set_t_gra_mdta(String t_gra_mdta) {
		this.t_gra_mdta = t_gra_mdta;
	}
	public void set_c_gra_mdta(String c_gra_mdta) {
		this.c_gra_mdta = c_gra_mdta;
	}
	public void set_p_fam_mdta(Integer p_fam_mdta) {
		this.p_fam_mdta = p_fam_mdta;
	}
	public void set_l_fam_mdta(Integer l_fam_mdta) {
		this.l_fam_mdta = l_fam_mdta;
	}
	public void set_d_fam_mdta(Integer d_fam_mdta) {
		this.d_fam_mdta = d_fam_mdta;
	}
	public void set_t_fam_mdta(String t_fam_mdta) {
		this.t_fam_mdta = t_fam_mdta;
	}
	public void set_c_fam_mdta(String c_fam_mdta) {
		this.c_fam_mdta = c_fam_mdta;
	}
	public void set_p_mar_mdta(Integer p_mar_mdta) {
		this.p_mar_mdta = p_mar_mdta;
	}
	public void set_l_mar_mdta(Integer l_mar_mdta) {
		this.l_mar_mdta = l_mar_mdta;
	}
	public void set_d_mar_mdta(Integer d_mar_mdta) {
		this.d_mar_mdta = d_mar_mdta;
	}
	public void set_t_mar_mdta(String t_mar_mdta) {
		this.t_mar_mdta = t_mar_mdta;
	}
	public void set_c_mar_mdta(String c_mar_mdta) {
		this.c_mar_mdta = c_mar_mdta;
	}
	public void set_p_ren_mdta(Integer p_ren_mdta) {
		this.p_ren_mdta = p_ren_mdta;
	}
	public void set_l_ren_mdta(Integer l_ren_mdta) {
		this.l_ren_mdta = l_ren_mdta;
	}
	public void set_d_ren_mdta(Integer d_ren_mdta) {
		this.d_ren_mdta = d_ren_mdta;
	}
	public void set_t_ren_mdta(String t_ren_mdta) {
		this.t_ren_mdta = t_ren_mdta;
	}
	public void set_c_ren_mdta(String c_ren_mdta) {
		this.c_ren_mdta = c_ren_mdta;
	}
	public void set_p_min_mdta(Integer p_min_mdta) {
		this.p_min_mdta = p_min_mdta;
	}
	public void set_l_min_mdta(Integer l_min_mdta) {
		this.l_min_mdta = l_min_mdta;
	}
	public void set_d_min_mdta(Integer d_min_mdta) {
		this.d_min_mdta = d_min_mdta;
	}
	public void set_t_min_mdta(String t_min_mdta) {
		this.t_min_mdta = t_min_mdta;
	}
	public void set_c_min_mdta(String c_min_mdta) {
		this.c_min_mdta = c_min_mdta;
	}
	public void set_n_spe_mdta_1(String n_spe_mdta_1) {
		this.n_spe_mdta_1 = n_spe_mdta_1;
	}
	public void set_n_spe_mdta_2(String n_spe_mdta_2) {
		this.n_spe_mdta_2 = n_spe_mdta_2;
	}
	public void set_n_spe_mdta_3(String n_spe_mdta_3) {
		this.n_spe_mdta_3 = n_spe_mdta_3;
	}
	public void set_n_spe_mdta_4(String n_spe_mdta_4) {
		this.n_spe_mdta_4 = n_spe_mdta_4;
	}
	public void set_n_spe_mdta_5(String n_spe_mdta_5) {
		this.n_spe_mdta_5 = n_spe_mdta_5;
	}
	public void set_p_spe_mdta_1(Integer p_spe_mdta_1) {
		this.p_spe_mdta_1 = p_spe_mdta_1;
	}
	public void set_p_spe_mdta_2(Integer p_spe_mdta_2) {
		this.p_spe_mdta_2 = p_spe_mdta_2;
	}
	public void set_p_spe_mdta_3(Integer p_spe_mdta_3) {
		this.p_spe_mdta_3 = p_spe_mdta_3;
	}
	public void set_p_spe_mdta_4(Integer p_spe_mdta_4) {
		this.p_spe_mdta_4 = p_spe_mdta_4;
	}
	public void set_p_spe_mdta_5(Integer p_spe_mdta_5) {
		this.p_spe_mdta_5 = p_spe_mdta_5;
	}
	public void set_l_spe_mdta_1(Integer l_spe_mdta_1) {
		this.l_spe_mdta_1 = l_spe_mdta_1;
	}
	public void set_l_spe_mdta_2(Integer l_spe_mdta_2) {
		this.l_spe_mdta_2 = l_spe_mdta_2;
	}
	public void set_l_spe_mdta_3(Integer l_spe_mdta_3) {
		this.l_spe_mdta_3 = l_spe_mdta_3;
	}
	public void set_l_spe_mdta_4(Integer l_spe_mdta_4) {
		this.l_spe_mdta_4 = l_spe_mdta_4;
	}
	public void set_l_spe_mdta_5(Integer l_spe_mdta_5) {
		this.l_spe_mdta_5 = l_spe_mdta_5;
	}
	public void set_d_spe_mdta_1(Integer d_spe_mdta_1) {
		this.d_spe_mdta_1 = d_spe_mdta_1;
	}
	public void set_d_spe_mdta_2(Integer d_spe_mdta_2) {
		this.d_spe_mdta_2 = d_spe_mdta_2;
	}
	public void set_d_spe_mdta_3(Integer d_spe_mdta_3) {
		this.d_spe_mdta_3 = d_spe_mdta_3;
	}
	public void set_d_spe_mdta_4(Integer d_spe_mdta_4) {
		this.d_spe_mdta_4 = d_spe_mdta_4;
	}
	public void set_d_spe_mdta_5(Integer d_spe_mdta_5) {
		this.d_spe_mdta_5 = d_spe_mdta_5;
	}
	public void set_t_spe_mdta_1(String t_spe_mdta_1) {
		this.t_spe_mdta_1 = t_spe_mdta_1;
	}
	public void set_t_spe_mdta_2(String t_spe_mdta_2) {
		this.t_spe_mdta_2 = t_spe_mdta_2;
	}
	public void set_t_spe_mdta_3(String t_spe_mdta_3) {
		this.t_spe_mdta_3 = t_spe_mdta_3;
	}
	public void set_t_spe_mdta_4(String t_spe_mdta_4) {
		this.t_spe_mdta_4 = t_spe_mdta_4;
	}
	public void set_t_spe_mdta_5(String t_spe_mdta_5) {
		this.t_spe_mdta_5 = t_spe_mdta_5;
	}
	public void set_c_spe_mdta_1(String c_spe_mdta_1) {
		this.c_spe_mdta_1 = c_spe_mdta_1;
	}
	public void set_c_spe_mdta_2(String c_spe_mdta_2) {
		this.c_spe_mdta_2 = c_spe_mdta_2;
	}
	public void set_c_spe_mdta_3(String c_spe_mdta_3) {
		this.c_spe_mdta_3 = c_spe_mdta_3;
	}
	public void set_c_spe_mdta_4(String c_spe_mdta_4) {
		this.c_spe_mdta_4 = c_spe_mdta_4;
	}
	public void set_c_spe_mdta_5(String c_spe_mdta_5) {
		this.c_spe_mdta_5 = c_spe_mdta_5;
	}
	public void set_com_mdta(String com_mdta) {
		this.com_mdta = com_mdta;
	}
	public void set_ide_mdta(String ide_mdta) {
		this.ide_mdta = ide_mdta;
	}
	public void set_p_gcod_mdta(Integer p_gcod_mdta) {
		this.p_gcod_mdta = p_gcod_mdta;
	}
	public void set_l_gcod_mdta(Integer l_gcod_mdta) {
		this.l_gcod_mdta = l_gcod_mdta;
	}
	public void set_d_gcod_mdta(Integer d_gcod_mdta) {
		this.d_gcod_mdta = d_gcod_mdta;
	}
	public void set_t_gcod_mdta(String t_gcod_mdta) {
		this.t_gcod_mdta = t_gcod_mdta;
	}
	public void set_c_gcod_mdta(String c_gcod_mdta) {
		this.c_gcod_mdta = c_gcod_mdta;
	}
	public void set_p_pay_mdta(Integer p_pay_mdta) {
		this.p_pay_mdta = p_pay_mdta;
	}
	public void set_l_pay_mdta(Integer l_pay_mdta) {
		this.l_pay_mdta = l_pay_mdta;
	}
	public void set_d_pay_mdta(Integer d_pay_mdta) {
		this.d_pay_mdta = d_pay_mdta;
	}
	public void set_t_pay_mdta(String t_pay_mdta) {
		this.t_pay_mdta = t_pay_mdta;
	}
	public void set_c_pay_mdta(String c_pay_mdta) {
		this.c_pay_mdta = c_pay_mdta;
	}
	public void set_p_tva_mdta(Integer p_tva_mdta) {
		this.p_tva_mdta = p_tva_mdta;
	}
	public void set_l_tva_mdta(Integer l_tva_mdta) {
		this.l_tva_mdta = l_tva_mdta;
	}
	public void set_d_tva_mdta(Integer d_tva_mdta) {
		this.d_tva_mdta = d_tva_mdta;
	}
	public void set_t_tva_mdta(String t_tva_mdta) {
		this.t_tva_mdta = t_tva_mdta;
	}
	public void set_c_tva_mdta(String c_tva_mdta) {
		this.c_tva_mdta = c_tva_mdta;
	}
	public void set_p_rfi_mdta(Integer p_rfi_mdta) {
		this.p_rfi_mdta = p_rfi_mdta;
	}
	public void set_l_rfi_mdta(Integer l_rfi_mdta) {
		this.l_rfi_mdta = l_rfi_mdta;
	}
	public void set_d_rfi_mdta(Integer d_rfi_mdta) {
		this.d_rfi_mdta = d_rfi_mdta;
	}
	public void set_t_rfi_mdta(String t_rfi_mdta) {
		this.t_rfi_mdta = t_rfi_mdta;
	}
	public void set_c_rfi_mdta(String c_rfi_mdta) {
		this.c_rfi_mdta = c_rfi_mdta;
	}
	public void set_p_coee_mdta(Integer p_coee_mdta) {
		this.p_coee_mdta = p_coee_mdta;
	}
	public void set_l_coee_mdta(Integer l_coee_mdta) {
		this.l_coee_mdta = l_coee_mdta;
	}
	public void set_d_coe_mdta(Integer d_coe_mdta) {
		this.d_coe_mdta = d_coe_mdta;
	}
	public void set_p_coed_mdta(Integer p_coed_mdta) {
		this.p_coed_mdta = p_coed_mdta;
	}
	public void set_l_coed_mdta(Integer l_coed_mdta) {
		this.l_coed_mdta = l_coed_mdta;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
