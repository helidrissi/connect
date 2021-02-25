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
		@Index(name="idx_cartecs_cle1_mctcs", columnList="code_cte,no_ordre", unique=true),
		@Index(name="idx_cartecs_cle2_mctcs", columnList="libelle", unique=false)
})
public class Cartecs implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_cte;
	@Column
	private Integer no_ordre;
	@Column
	private String libelle;
	public String get_code_cte() {
		return code_cte;
	}
	public Integer get_no_ordre() {
		return no_ordre;
	}
	public String get_libelle() {
		return libelle;
	}
	public void set_code_cte(String code_cte) {
		this.code_cte = code_cte;
	}
	public void set_no_ordre(Integer no_ordre) {
		this.no_ordre = no_ordre;
	}
	public void set_libelle(String libelle) {
		this.libelle = libelle;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
