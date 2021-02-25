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
		@Index(name="idx_piecejointeclassification_cle1_attr", columnList="no_ordre_doc,no_classification", unique=true)
})
public class PieceJointeClassification implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private Long no_ordre_doc;
	@Column
	private Integer no_classification;
	public Long get_no_ordre_doc() {
		return no_ordre_doc;
	}
	public Integer get_no_classification() {
		return no_classification;
	}
	public void set_no_ordre_doc(Long no_ordre_doc) {
		this.no_ordre_doc = no_ordre_doc;
	}
	public void set_no_classification(Integer no_classification) {
		this.no_classification = no_classification;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
