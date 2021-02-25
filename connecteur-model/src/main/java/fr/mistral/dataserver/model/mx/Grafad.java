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
		@Index(name="idx_grafad_cle1_mgfd", columnList="gra_mgfd", unique=true)
})
public class Grafad implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Integer gra_mgfd;
	@Column(precision = 4, scale = 2)
	private BigDecimal mmi_mgfd;
	@Column(precision = 4, scale = 2)
	private BigDecimal mmx_mgfd;
	@Column(precision = 4, scale = 2)
	private BigDecimal mmp_mgfd;
	@Column(precision = 3, scale = 2)
	private BigDecimal mib_mgfd;
	@Column(precision = 3, scale = 2)
	private BigDecimal mab_mgfd;
	@Column(precision = 4, scale = 1)
	private BigDecimal imi_mgfd;
	@Column(precision = 4, scale = 1)
	private BigDecimal imx_mgfd;
	@Column
	private Integer vhn_mgfd;
	@Column(precision = 4, scale = 3)
	private BigDecimal cmi_mgfd;
	@Column(precision = 4, scale = 3)
	private BigDecimal cmx_mgfd;
	@Column
	private Integer dvm_mgfd;
	@Column(precision = 3, scale = 1)
	private BigDecimal irs_mgfd;
	@Column(precision = 3, scale = 1)
	private BigDecimal ird_mgfd;
	@Column
	private Integer asm_mgfd;
	public Integer get_gra_mgfd() {
		return gra_mgfd;
	}
	public BigDecimal get_mmi_mgfd() {
		return mmi_mgfd;
	}
	public BigDecimal get_mmx_mgfd() {
		return mmx_mgfd;
	}
	public BigDecimal get_mmp_mgfd() {
		return mmp_mgfd;
	}
	public BigDecimal get_mib_mgfd() {
		return mib_mgfd;
	}
	public BigDecimal get_mab_mgfd() {
		return mab_mgfd;
	}
	public BigDecimal get_imi_mgfd() {
		return imi_mgfd;
	}
	public BigDecimal get_imx_mgfd() {
		return imx_mgfd;
	}
	public Integer get_vhn_mgfd() {
		return vhn_mgfd;
	}
	public BigDecimal get_cmi_mgfd() {
		return cmi_mgfd;
	}
	public BigDecimal get_cmx_mgfd() {
		return cmx_mgfd;
	}
	public Integer get_dvm_mgfd() {
		return dvm_mgfd;
	}
	public BigDecimal get_irs_mgfd() {
		return irs_mgfd;
	}
	public BigDecimal get_ird_mgfd() {
		return ird_mgfd;
	}
	public Integer get_asm_mgfd() {
		return asm_mgfd;
	}
	public void set_gra_mgfd(Integer gra_mgfd) {
		this.gra_mgfd = gra_mgfd;
	}
	public void set_mmi_mgfd(BigDecimal mmi_mgfd) {
		this.mmi_mgfd = mmi_mgfd;
	}
	public void set_mmx_mgfd(BigDecimal mmx_mgfd) {
		this.mmx_mgfd = mmx_mgfd;
	}
	public void set_mmp_mgfd(BigDecimal mmp_mgfd) {
		this.mmp_mgfd = mmp_mgfd;
	}
	public void set_mib_mgfd(BigDecimal mib_mgfd) {
		this.mib_mgfd = mib_mgfd;
	}
	public void set_mab_mgfd(BigDecimal mab_mgfd) {
		this.mab_mgfd = mab_mgfd;
	}
	public void set_imi_mgfd(BigDecimal imi_mgfd) {
		this.imi_mgfd = imi_mgfd;
	}
	public void set_imx_mgfd(BigDecimal imx_mgfd) {
		this.imx_mgfd = imx_mgfd;
	}
	public void set_vhn_mgfd(Integer vhn_mgfd) {
		this.vhn_mgfd = vhn_mgfd;
	}
	public void set_cmi_mgfd(BigDecimal cmi_mgfd) {
		this.cmi_mgfd = cmi_mgfd;
	}
	public void set_cmx_mgfd(BigDecimal cmx_mgfd) {
		this.cmx_mgfd = cmx_mgfd;
	}
	public void set_dvm_mgfd(Integer dvm_mgfd) {
		this.dvm_mgfd = dvm_mgfd;
	}
	public void set_irs_mgfd(BigDecimal irs_mgfd) {
		this.irs_mgfd = irs_mgfd;
	}
	public void set_ird_mgfd(BigDecimal ird_mgfd) {
		this.ird_mgfd = ird_mgfd;
	}
	public void set_asm_mgfd(Integer asm_mgfd) {
		this.asm_mgfd = asm_mgfd;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
