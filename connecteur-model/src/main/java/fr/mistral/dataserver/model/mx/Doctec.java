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
		@Index(name="idx_doctec_cle1_mdte", columnList="origine,cle_fichier,no_ligne", unique=true),
		@Index(name="idx_doctec_cle2_mdte", columnList="origine,cle_fichier,rang", unique=false)
})
public class Doctec implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String origine;
	@Column
	private String cle_fichier;
	@Column
	private Integer no_ligne;
	@Column
	private Integer rang;
	@Column
	private String code_cte;
	@Column
	private String valeur;
	public String get_origine() {
		return origine;
	}
	public String get_cle_fichier() {
		return cle_fichier;
	}
	public Integer get_no_ligne() {
		return no_ligne;
	}
	public Integer get_rang() {
		return rang;
	}
	public String get_code_cte() {
		return code_cte;
	}
	public String get_valeur() {
		return valeur;
	}
	public void set_origine(String origine) {
		this.origine = origine;
	}
	public void set_cle_fichier(String cle_fichier) {
		this.cle_fichier = cle_fichier;
	}
	public void set_no_ligne(Integer no_ligne) {
		this.no_ligne = no_ligne;
	}
	public void set_rang(Integer rang) {
		this.rang = rang;
	}
	public void set_code_cte(String code_cte) {
		this.code_cte = code_cte;
	}
	public void set_valeur(String valeur) {
		this.valeur = valeur;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
