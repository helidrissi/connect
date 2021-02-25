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
		@Index(name="idx_cartec_cle1_mctc", columnList="code_cte", unique=true),
		@Index(name="idx_cartec_cle2_mctc", columnList="libelle_cte", unique=false)
})
public class Cartec implements IDataServerEntity {

	@Id
	@GeneratedValue
	private Long recordNumber;

	@Column
	private String code_cte;
	@Column
	private String libelle_cte;
	@Column
	private String abrege_cte;
	@Column
	private Integer type_zone;
	@Column
	private Integer longueur_zone;
	@Column
	private Integer nb_decimales;
	@Column
	private Integer usage_interne_exte;
	@Column
	private Integer gras;
	@Column
	private Integer italique;
	@Column
	private Integer souligne;
	@Column
	private String regroupement;
	@Column
	private Integer publiable;
	public String get_code_cte() {
		return code_cte;
	}
	public String get_libelle_cte() {
		return libelle_cte;
	}
	public String get_abrege_cte() {
		return abrege_cte;
	}
	public Integer get_type_zone() {
		return type_zone;
	}
	public Integer get_longueur_zone() {
		return longueur_zone;
	}
	public Integer get_nb_decimales() {
		return nb_decimales;
	}
	public Integer get_usage_interne_exte() {
		return usage_interne_exte;
	}
	public Integer get_gras() {
		return gras;
	}
	public Integer get_italique() {
		return italique;
	}
	public Integer get_souligne() {
		return souligne;
	}
	public String get_regroupement() {
		return regroupement;
	}
	public Integer get_publiable() {
		return publiable;
	}
	public void set_code_cte(String code_cte) {
		this.code_cte = code_cte;
	}
	public void set_libelle_cte(String libelle_cte) {
		this.libelle_cte = libelle_cte;
	}
	public void set_abrege_cte(String abrege_cte) {
		this.abrege_cte = abrege_cte;
	}
	public void set_type_zone(Integer type_zone) {
		this.type_zone = type_zone;
	}
	public void set_longueur_zone(Integer longueur_zone) {
		this.longueur_zone = longueur_zone;
	}
	public void set_nb_decimales(Integer nb_decimales) {
		this.nb_decimales = nb_decimales;
	}
	public void set_usage_interne_exte(Integer usage_interne_exte) {
		this.usage_interne_exte = usage_interne_exte;
	}
	public void set_gras(Integer gras) {
		this.gras = gras;
	}
	public void set_italique(Integer italique) {
		this.italique = italique;
	}
	public void set_souligne(Integer souligne) {
		this.souligne = souligne;
	}
	public void set_regroupement(String regroupement) {
		this.regroupement = regroupement;
	}
	public void set_publiable(Integer publiable) {
		this.publiable = publiable;
	}

	@Override
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}
}
