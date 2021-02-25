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
		@Index(name="idx_doctecext_cle1_mdtex", columnList="act_mdtex,nit_mdtex,ino_mdtex,cle_doc,lig_mdtex", unique=true),
		@Index(name="idx_doctecext_cle2_mdtex", columnList="act_mdtex,nit_mdtex,ino_mdtex,cle_doc", unique=false)
})
public class Doctecext implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String act_mdtex;
	@Column
	private String nit_mdtex;
	@Column
	private String ino_mdtex;
	@Column
	private String cle_doc;
	@Column
	private Integer lig_mdtex;
	@Column
	private String valeur;
	public String get_act_mdtex() {
		return act_mdtex;
	}
	public String get_nit_mdtex() {
		return nit_mdtex;
	}
	public String get_ino_mdtex() {
		return ino_mdtex;
	}
	public String get_cle_doc() {
		return cle_doc;
	}
	public Integer get_lig_mdtex() {
		return lig_mdtex;
	}
	public String get_valeur() {
		return valeur;
	}
	public void set_act_mdtex(String act_mdtex) {
		this.act_mdtex = act_mdtex;
	}
	public void set_nit_mdtex(String nit_mdtex) {
		this.nit_mdtex = nit_mdtex;
	}
	public void set_ino_mdtex(String ino_mdtex) {
		this.ino_mdtex = ino_mdtex;
	}
	public void set_cle_doc(String cle_doc) {
		this.cle_doc = cle_doc;
	}
	public void set_lig_mdtex(Integer lig_mdtex) {
		this.lig_mdtex = lig_mdtex;
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
