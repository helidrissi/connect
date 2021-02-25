package fr.mistral.dataserver.model.mx;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(
indexes={
		@Index(name="idx_marque_cle1_mmar", columnList="code_marque", unique=true),
		@Index(name="idx_marque_cle2_mmar", columnList="libelle_marque", unique=false),
		@Index(name="idx_marque_cle3_mmar", columnList="abrege_marque", unique=false)
})
public class Marque implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_marque;
	@Column
	private String libelle_marque;
	@Column
	private String abrege_marque;
	@Column
	private String tvh_mmar;
	public String get_code_marque() {
		return code_marque;
	}
	public String get_libelle_marque() {
		return libelle_marque;
	}
	public String get_abrege_marque() {
		return abrege_marque;
	}
	public String get_tvh_mmar() {
		return tvh_mmar;
	}
	public void set_code_marque(String code_marque) {
		this.code_marque = code_marque;
	}
	public void set_libelle_marque(String libelle_marque) {
		this.libelle_marque = libelle_marque;
	}
	public void set_abrege_marque(String abrege_marque) {
		this.abrege_marque = abrege_marque;
	}
	public void set_tvh_mmar(String tvh_mmar) {
		this.tvh_mmar = tvh_mmar;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
