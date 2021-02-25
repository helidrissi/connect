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
		@Index(name="idx_agedis_cle1_magd", columnList="code_agence", unique=true)
})
public class Agedis implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_agence;
	@Column
	private Long der_no_bon;
	@Column
	private Long der_no_fact_mois_1;
	@Column
	private Long der_no_fact_mois_2;
	@Column
	private Long der_no_fact_mois_3;
	@Column
	private Long der_no_fact_mois_4;
	@Column
	private Long der_no_fact_mois_5;
	@Column
	private Long der_no_fact_mois_6;
	@Column
	private Long der_no_fact_mois_7;
	@Column
	private Long der_no_fact_mois_8;
	@Column
	private Long der_no_fact_mois_9;
	@Column
	private Long der_no_fact_mois_10;
	@Column
	private Long der_no_fact_mois_11;
	@Column
	private Long der_no_fact_mois_12;
	@Column
	private String code_jal_vente;
	@Column
	private String code_jal_caisse;
	@Column
	private String code_jal_od;
	@Column
	private Long no_cpt_port_soumis;
	@Column
	private Long no_cpt_port_exo;
	@Column
	private Long no_cpt_frais_fac_s;
	@Column
	private Long no_cpt_frais_fac_e;
	@Column
	private Long no_cpt_escpt_soumi;
	@Column
	private Long no_cpt_escpt_exo;
	@Column
	private Long ctv_magd;
	@Column
	private Long catt_magd;
	@Column
	private Long cec_magd;
	@Column
	private Long cvr_magd;
	@Column
	private Long cai_magd;
	@Column
	private Long chq_magd;
	@Column
	private Long cbl_magd;
	@Column
	private Long cbl2_magd;
	@Column
	private Integer plf_magd;
	@Column
	private Integer vce_magd;
	@Column
	private Integer aca_magd;
	@Column
	private Integer filler_gtm_magd;
	@Column
	private Integer amb_magd;
	@Column
	private String mmn_magd;
	@Column
	private String mmx_magd;
	@Column
	private String mpl_magd;
	@Column
	private Integer nam_magd;
	@Column
	private Integer cbp_magd;
	@Column
	private String mdp_magd;
	@Column(precision = 3, scale = 1)
	private BigDecimal pma_magd;
	@Column
	private Integer amn_magd;
	@Column
	private Integer amx_magd;
	@Column(precision = 4, scale = 2)
	private BigDecimal pmi_magd;
	@Column
	private Integer ntp_magd;
	@Column(precision = 6, scale = 2)
	private BigDecimal fop_magd;
	@Column
	private String lip_magd;
	@Column
	private Integer del_magd;
	@Column
	private Integer vao_magd;
	@Column(precision = 4, scale = 2)
	private BigDecimal eca_magd;
	@Column
	private Long cld_magd;
	@Column
	private Long cdv_magd;
	@Column
	private Integer rtva_magd;
	@Column
	private Integer grw_magd;
	@Column
	private Integer faw_magd;
	@Column
	private Long cac_magd;
	@Column
	private String jac_magd;
	@Column
	private Integer mia_magd;
	@Column
	private Integer bml_magd;
	@Column
	private Long fae_magd;
	@Column
	private Long aae_magd;
	@Column
	private Long no_piece_encours;
	@Column
	private Long ctm_magd;
	@Column
	private Integer clsd_magd;
	@Column
	private Long no_client_webtop;
	@Column(precision = 4, scale = 2)
	private BigDecimal efc_magd;
	@Column
	private Integer cbd_magd;
	@Column
	private String tccw_magd;
	public String get_code_agence() {
		return code_agence;
	}
	public Long get_der_no_bon() {
		return der_no_bon;
	}
	public Long get_der_no_fact_mois_1() {
		return der_no_fact_mois_1;
	}
	public Long get_der_no_fact_mois_2() {
		return der_no_fact_mois_2;
	}
	public Long get_der_no_fact_mois_3() {
		return der_no_fact_mois_3;
	}
	public Long get_der_no_fact_mois_4() {
		return der_no_fact_mois_4;
	}
	public Long get_der_no_fact_mois_5() {
		return der_no_fact_mois_5;
	}
	public Long get_der_no_fact_mois_6() {
		return der_no_fact_mois_6;
	}
	public Long get_der_no_fact_mois_7() {
		return der_no_fact_mois_7;
	}
	public Long get_der_no_fact_mois_8() {
		return der_no_fact_mois_8;
	}
	public Long get_der_no_fact_mois_9() {
		return der_no_fact_mois_9;
	}
	public Long get_der_no_fact_mois_10() {
		return der_no_fact_mois_10;
	}
	public Long get_der_no_fact_mois_11() {
		return der_no_fact_mois_11;
	}
	public Long get_der_no_fact_mois_12() {
		return der_no_fact_mois_12;
	}
	public String get_code_jal_vente() {
		return code_jal_vente;
	}
	public String get_code_jal_caisse() {
		return code_jal_caisse;
	}
	public String get_code_jal_od() {
		return code_jal_od;
	}
	public Long get_no_cpt_port_soumis() {
		return no_cpt_port_soumis;
	}
	public Long get_no_cpt_port_exo() {
		return no_cpt_port_exo;
	}
	public Long get_no_cpt_frais_fac_s() {
		return no_cpt_frais_fac_s;
	}
	public Long get_no_cpt_frais_fac_e() {
		return no_cpt_frais_fac_e;
	}
	public Long get_no_cpt_escpt_soumi() {
		return no_cpt_escpt_soumi;
	}
	public Long get_no_cpt_escpt_exo() {
		return no_cpt_escpt_exo;
	}
	public Long get_ctv_magd() {
		return ctv_magd;
	}
	public Long get_catt_magd() {
		return catt_magd;
	}
	public Long get_cec_magd() {
		return cec_magd;
	}
	public Long get_cvr_magd() {
		return cvr_magd;
	}
	public Long get_cai_magd() {
		return cai_magd;
	}
	public Long get_chq_magd() {
		return chq_magd;
	}
	public Long get_cbl_magd() {
		return cbl_magd;
	}
	public Long get_cbl2_magd() {
		return cbl2_magd;
	}
	public Integer get_plf_magd() {
		return plf_magd;
	}
	public Integer get_vce_magd() {
		return vce_magd;
	}
	public Integer get_aca_magd() {
		return aca_magd;
	}
	public Integer get_filler_gtm_magd() {
		return filler_gtm_magd;
	}
	public Integer get_amb_magd() {
		return amb_magd;
	}
	public String get_mmn_magd() {
		return mmn_magd;
	}
	public String get_mmx_magd() {
		return mmx_magd;
	}
	public String get_mpl_magd() {
		return mpl_magd;
	}
	public Integer get_nam_magd() {
		return nam_magd;
	}
	public Integer get_cbp_magd() {
		return cbp_magd;
	}
	public String get_mdp_magd() {
		return mdp_magd;
	}
	public BigDecimal get_pma_magd() {
		return pma_magd;
	}
	public Integer get_amn_magd() {
		return amn_magd;
	}
	public Integer get_amx_magd() {
		return amx_magd;
	}
	public BigDecimal get_pmi_magd() {
		return pmi_magd;
	}
	public Integer get_ntp_magd() {
		return ntp_magd;
	}
	public BigDecimal get_fop_magd() {
		return fop_magd;
	}
	public String get_lip_magd() {
		return lip_magd;
	}
	public Integer get_del_magd() {
		return del_magd;
	}
	public Integer get_vao_magd() {
		return vao_magd;
	}
	public BigDecimal get_eca_magd() {
		return eca_magd;
	}
	public Long get_cld_magd() {
		return cld_magd;
	}
	public Long get_cdv_magd() {
		return cdv_magd;
	}
	public Integer get_rtva_magd() {
		return rtva_magd;
	}
	public Integer get_grw_magd() {
		return grw_magd;
	}
	public Integer get_faw_magd() {
		return faw_magd;
	}
	public Long get_cac_magd() {
		return cac_magd;
	}
	public String get_jac_magd() {
		return jac_magd;
	}
	public Integer get_mia_magd() {
		return mia_magd;
	}
	public Integer get_bml_magd() {
		return bml_magd;
	}
	public Long get_fae_magd() {
		return fae_magd;
	}
	public Long get_aae_magd() {
		return aae_magd;
	}
	public Long get_no_piece_encours() {
		return no_piece_encours;
	}
	public Long get_ctm_magd() {
		return ctm_magd;
	}
	public Integer get_clsd_magd() {
		return clsd_magd;
	}
	public Long get_no_client_webtop() {
		return no_client_webtop;
	}
	public BigDecimal get_efc_magd() {
		return efc_magd;
	}
	public Integer get_cbd_magd() {
		return cbd_magd;
	}
	public String get_tccw_magd() {
		return tccw_magd;
	}
	public void set_code_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	public void set_der_no_bon(Long der_no_bon) {
		this.der_no_bon = der_no_bon;
	}
	public void set_der_no_fact_mois_1(Long der_no_fact_mois_1) {
		this.der_no_fact_mois_1 = der_no_fact_mois_1;
	}
	public void set_der_no_fact_mois_2(Long der_no_fact_mois_2) {
		this.der_no_fact_mois_2 = der_no_fact_mois_2;
	}
	public void set_der_no_fact_mois_3(Long der_no_fact_mois_3) {
		this.der_no_fact_mois_3 = der_no_fact_mois_3;
	}
	public void set_der_no_fact_mois_4(Long der_no_fact_mois_4) {
		this.der_no_fact_mois_4 = der_no_fact_mois_4;
	}
	public void set_der_no_fact_mois_5(Long der_no_fact_mois_5) {
		this.der_no_fact_mois_5 = der_no_fact_mois_5;
	}
	public void set_der_no_fact_mois_6(Long der_no_fact_mois_6) {
		this.der_no_fact_mois_6 = der_no_fact_mois_6;
	}
	public void set_der_no_fact_mois_7(Long der_no_fact_mois_7) {
		this.der_no_fact_mois_7 = der_no_fact_mois_7;
	}
	public void set_der_no_fact_mois_8(Long der_no_fact_mois_8) {
		this.der_no_fact_mois_8 = der_no_fact_mois_8;
	}
	public void set_der_no_fact_mois_9(Long der_no_fact_mois_9) {
		this.der_no_fact_mois_9 = der_no_fact_mois_9;
	}
	public void set_der_no_fact_mois_10(Long der_no_fact_mois_10) {
		this.der_no_fact_mois_10 = der_no_fact_mois_10;
	}
	public void set_der_no_fact_mois_11(Long der_no_fact_mois_11) {
		this.der_no_fact_mois_11 = der_no_fact_mois_11;
	}
	public void set_der_no_fact_mois_12(Long der_no_fact_mois_12) {
		this.der_no_fact_mois_12 = der_no_fact_mois_12;
	}
	public void set_code_jal_vente(String code_jal_vente) {
		this.code_jal_vente = code_jal_vente;
	}
	public void set_code_jal_caisse(String code_jal_caisse) {
		this.code_jal_caisse = code_jal_caisse;
	}
	public void set_code_jal_od(String code_jal_od) {
		this.code_jal_od = code_jal_od;
	}
	public void set_no_cpt_port_soumis(Long no_cpt_port_soumis) {
		this.no_cpt_port_soumis = no_cpt_port_soumis;
	}
	public void set_no_cpt_port_exo(Long no_cpt_port_exo) {
		this.no_cpt_port_exo = no_cpt_port_exo;
	}
	public void set_no_cpt_frais_fac_s(Long no_cpt_frais_fac_s) {
		this.no_cpt_frais_fac_s = no_cpt_frais_fac_s;
	}
	public void set_no_cpt_frais_fac_e(Long no_cpt_frais_fac_e) {
		this.no_cpt_frais_fac_e = no_cpt_frais_fac_e;
	}
	public void set_no_cpt_escpt_soumi(Long no_cpt_escpt_soumi) {
		this.no_cpt_escpt_soumi = no_cpt_escpt_soumi;
	}
	public void set_no_cpt_escpt_exo(Long no_cpt_escpt_exo) {
		this.no_cpt_escpt_exo = no_cpt_escpt_exo;
	}
	public void set_ctv_magd(Long ctv_magd) {
		this.ctv_magd = ctv_magd;
	}
	public void set_catt_magd(Long catt_magd) {
		this.catt_magd = catt_magd;
	}
	public void set_cec_magd(Long cec_magd) {
		this.cec_magd = cec_magd;
	}
	public void set_cvr_magd(Long cvr_magd) {
		this.cvr_magd = cvr_magd;
	}
	public void set_cai_magd(Long cai_magd) {
		this.cai_magd = cai_magd;
	}
	public void set_chq_magd(Long chq_magd) {
		this.chq_magd = chq_magd;
	}
	public void set_cbl_magd(Long cbl_magd) {
		this.cbl_magd = cbl_magd;
	}
	public void set_cbl2_magd(Long cbl2_magd) {
		this.cbl2_magd = cbl2_magd;
	}
	public void set_plf_magd(Integer plf_magd) {
		this.plf_magd = plf_magd;
	}
	public void set_vce_magd(Integer vce_magd) {
		this.vce_magd = vce_magd;
	}
	public void set_aca_magd(Integer aca_magd) {
		this.aca_magd = aca_magd;
	}
	public void set_filler_gtm_magd(Integer filler_gtm_magd) {
		this.filler_gtm_magd = filler_gtm_magd;
	}
	public void set_amb_magd(Integer amb_magd) {
		this.amb_magd = amb_magd;
	}
	public void set_mmn_magd(String mmn_magd) {
		this.mmn_magd = mmn_magd;
	}
	public void set_mmx_magd(String mmx_magd) {
		this.mmx_magd = mmx_magd;
	}
	public void set_mpl_magd(String mpl_magd) {
		this.mpl_magd = mpl_magd;
	}
	public void set_nam_magd(Integer nam_magd) {
		this.nam_magd = nam_magd;
	}
	public void set_cbp_magd(Integer cbp_magd) {
		this.cbp_magd = cbp_magd;
	}
	public void set_mdp_magd(String mdp_magd) {
		this.mdp_magd = mdp_magd;
	}
	public void set_pma_magd(BigDecimal pma_magd) {
		this.pma_magd = pma_magd;
	}
	public void set_amn_magd(Integer amn_magd) {
		this.amn_magd = amn_magd;
	}
	public void set_amx_magd(Integer amx_magd) {
		this.amx_magd = amx_magd;
	}
	public void set_pmi_magd(BigDecimal pmi_magd) {
		this.pmi_magd = pmi_magd;
	}
	public void set_ntp_magd(Integer ntp_magd) {
		this.ntp_magd = ntp_magd;
	}
	public void set_fop_magd(BigDecimal fop_magd) {
		this.fop_magd = fop_magd;
	}
	public void set_lip_magd(String lip_magd) {
		this.lip_magd = lip_magd;
	}
	public void set_del_magd(Integer del_magd) {
		this.del_magd = del_magd;
	}
	public void set_vao_magd(Integer vao_magd) {
		this.vao_magd = vao_magd;
	}
	public void set_eca_magd(BigDecimal eca_magd) {
		this.eca_magd = eca_magd;
	}
	public void set_cld_magd(Long cld_magd) {
		this.cld_magd = cld_magd;
	}
	public void set_cdv_magd(Long cdv_magd) {
		this.cdv_magd = cdv_magd;
	}
	public void set_rtva_magd(Integer rtva_magd) {
		this.rtva_magd = rtva_magd;
	}
	public void set_grw_magd(Integer grw_magd) {
		this.grw_magd = grw_magd;
	}
	public void set_faw_magd(Integer faw_magd) {
		this.faw_magd = faw_magd;
	}
	public void set_cac_magd(Long cac_magd) {
		this.cac_magd = cac_magd;
	}
	public void set_jac_magd(String jac_magd) {
		this.jac_magd = jac_magd;
	}
	public void set_mia_magd(Integer mia_magd) {
		this.mia_magd = mia_magd;
	}
	public void set_bml_magd(Integer bml_magd) {
		this.bml_magd = bml_magd;
	}
	public void set_fae_magd(Long fae_magd) {
		this.fae_magd = fae_magd;
	}
	public void set_aae_magd(Long aae_magd) {
		this.aae_magd = aae_magd;
	}
	public void set_no_piece_encours(Long no_piece_encours) {
		this.no_piece_encours = no_piece_encours;
	}
	public void set_ctm_magd(Long ctm_magd) {
		this.ctm_magd = ctm_magd;
	}
	public void set_clsd_magd(Integer clsd_magd) {
		this.clsd_magd = clsd_magd;
	}
	public void set_no_client_webtop(Long no_client_webtop) {
		this.no_client_webtop = no_client_webtop;
	}
	public void set_efc_magd(BigDecimal efc_magd) {
		this.efc_magd = efc_magd;
	}
	public void set_cbd_magd(Integer cbd_magd) {
		this.cbd_magd = cbd_magd;
	}
	public void set_tccw_magd(String tccw_magd) {
		this.tccw_magd = tccw_magd;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
