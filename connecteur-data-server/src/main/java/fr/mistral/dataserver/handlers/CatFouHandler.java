package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.CatFou;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class CatFouHandler extends AbstractDataHandler<CatFou> implements IDataHandler {

	/**
	 * cobol: FOU-MCTF, REF-MCTF
	 * db:    code_fournisseur, ref_fournisseur
	 */
	private static final String CLE1_MCTF = "CLE1-MCTF";
	/**
	 * cobol: FOU-MCTF, DE1-MCTF
	 * db:    code_fournisseur, designation1
	 */
	private static final String CLE2_MCTF = "CLE2-MCTF";

	/** code_fournisseur - COde Fournisseur (type cobol: 9(6)) */
	private static final String FOU_MCTF = "FOU-MCTF";
	/** ref_fournisseur - Référence (type cobol: X(21)) */
	private static final String REF_MCTF = "REF-MCTF";
	/** designation1 (type cobol: X(20)) */
	private static final String DE1_MCTF = "DE1-MCTF";
	/** designation2 (type cobol: X(20)) */
	private static final String DE2_MCTF = "DE2-MCTF";
	/** prix_tarif - Prix Tarif (type cobol: S9(8)V99) */
	private static final String PRI_MCTF = "PRI-MCTF";
	/** indic_devise - Code devise:  0=Non concerné  1=En devise (type cobol: 9) */
	private static final String DEV_MCTF = "DEV-MCTF";
	/** code_remise - Code remise du Frn (type cobol: X(7)) */
	private static final String REM_MCTF = "REM-MCTF";
	/** observations - Observation (type cobol: X(20)) */
	private static final String OBS_MCTF = "OBS-MCTF";
	/** prix_modifie - Prix modifié:  0=Non  1=Oui (type cobol: 9) */
	private static final String MOD_MCTF = "MOD-MCTF";
	/** condt_achat - Conditionnement d'achat (type cobol: 9(4)) */
	private static final String UAC_MCTF = "UAC-MCTF";
	/** poids - Poids (en gramme) (type cobol: 9(7)) */
	private static final String POI_MCTF = "POI-MCTF";
	/** famille - Code Famille (type cobol: 99) */
	private static final String GRA_MCTF = "GRA-MCTF";
	/** sous_famille - Code Sous-famille (type cobol: 99) */
	private static final String FAM_MCTF = "FAM-MCTF";
	/** prix_vente - Prix de vente (si existant dans le fichier tarif d'origine) (type cobol: 9(8)V99) */
	private static final String PVT_MCTF = "PVT-MCTF";
	/** tva_mctf - N  identification CEE (Ajoutée le 08/04/2015) (type cobol: X(10)) */
	private static final String TVA_MCTF = "TVA-MCTF";
	/** pa_tarif - Prix tarif d'achat (ou Prix de revient industriel si Fenwick) (type cobol: 9(7)V99) */
	private static final String PAT_MCTF = "PAT-MCTF";
	/** observation2 - Observation (destinée à renseigner la zone spécifique (frn) 2 des articles) (type cobol: X(8)) */
	private static final String SPE2_MCTF = "SPE2-MCTF";
	/** date_maj - Date de mise à jour (type cobol: 9(8)) */
	private static final String DAT_MCTF = "DAT-MCTF";
	/** pay_mctf - Code pays d'origine (/déclaration DEB  ajouté le 08/03/2015) (type cobol: XXX) */
	private static final String PAY_MCTF = "PAY-MCTF";

	public CatFouHandler() throws IOException {
		super("mx/fd/MXCATFOU.fd", "MXCATFOU", fr.mistral.dataserver.model.mx.CatFou.class,
				"CLE1-MCTF",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MCTF, ImmutableList.<String>builder().add(FOU_MCTF, REF_MCTF).build())
					.put(CLE2_MCTF, ImmutableList.<String>builder().add(FOU_MCTF, DE1_MCTF).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<CatFou>>builder()
					.put(FOU_MCTF, new EntityFieldMapper<>(FOU_MCTF, "code_fournisseur", CatFou::get_code_fournisseur))
					.put(REF_MCTF, new EntityFieldMapper<>(REF_MCTF, "ref_fournisseur", CatFou::get_ref_fournisseur))
					.put(DE1_MCTF, new EntityFieldMapper<>(DE1_MCTF, "designation1", CatFou::get_designation1))
					.build());
	}

	@Override
	public String getName() {
		return "MXCATFOU";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, CatFou entity) {
		longCobolToJava(line.getFieldValue(FOU_MCTF), entity::set_code_fournisseur);
		stringCobolToJava(line.getFieldValue(REF_MCTF), entity::set_ref_fournisseur);
		stringCobolToJava(line.getFieldValue(DE1_MCTF), entity::set_designation1);
		stringCobolToJava(line.getFieldValue(DE2_MCTF), entity::set_designation2);
		bigDecimalCobolToJava(line.getFieldValue(PRI_MCTF), entity::set_prix_tarif);
		integerCobolToJava(line.getFieldValue(DEV_MCTF), entity::set_indic_devise);
		stringCobolToJava(line.getFieldValue(REM_MCTF), entity::set_code_remise);
		stringCobolToJava(line.getFieldValue(OBS_MCTF), entity::set_observations);
		integerCobolToJava(line.getFieldValue(MOD_MCTF), entity::set_prix_modifie);
		integerCobolToJava(line.getFieldValue(UAC_MCTF), entity::set_condt_achat);
		longCobolToJava(line.getFieldValue(POI_MCTF), entity::set_poids);
		integerCobolToJava(line.getFieldValue(GRA_MCTF), entity::set_famille);
		integerCobolToJava(line.getFieldValue(FAM_MCTF), entity::set_sous_famille);
		bigDecimalCobolToJava(line.getFieldValue(PVT_MCTF), entity::set_prix_vente);
		stringCobolToJava(line.getFieldValue(TVA_MCTF), entity::set_tva_mctf);
		bigDecimalCobolToJava(line.getFieldValue(PAT_MCTF), entity::set_pa_tarif);
		stringCobolToJava(line.getFieldValue(SPE2_MCTF), entity::set_observation2);
		dateCobolToJava(line.getFieldValue(DAT_MCTF), entity::set_date_maj);
		stringCobolToJava(line.getFieldValue(PAY_MCTF), entity::set_pay_mctf);
	}

	@Override
	protected void mapJavaToCobol(CatFou entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(FOU_MCTF), entity::get_code_fournisseur);
		stringJavaToCobol(line.getFieldValue(REF_MCTF), entity::get_ref_fournisseur);
		stringJavaToCobol(line.getFieldValue(DE1_MCTF), entity::get_designation1);
		stringJavaToCobol(line.getFieldValue(DE2_MCTF), entity::get_designation2);
		bigDecimalJavaToCobol(line.getFieldValue(PRI_MCTF), entity::get_prix_tarif);
		integerJavaToCobol(line.getFieldValue(DEV_MCTF), entity::get_indic_devise);
		stringJavaToCobol(line.getFieldValue(REM_MCTF), entity::get_code_remise);
		stringJavaToCobol(line.getFieldValue(OBS_MCTF), entity::get_observations);
		integerJavaToCobol(line.getFieldValue(MOD_MCTF), entity::get_prix_modifie);
		integerJavaToCobol(line.getFieldValue(UAC_MCTF), entity::get_condt_achat);
		longJavaToCobol(line.getFieldValue(POI_MCTF), entity::get_poids);
		integerJavaToCobol(line.getFieldValue(GRA_MCTF), entity::get_famille);
		integerJavaToCobol(line.getFieldValue(FAM_MCTF), entity::get_sous_famille);
		bigDecimalJavaToCobol(line.getFieldValue(PVT_MCTF), entity::get_prix_vente);
		stringJavaToCobol(line.getFieldValue(TVA_MCTF), entity::get_tva_mctf);
		bigDecimalJavaToCobol(line.getFieldValue(PAT_MCTF), entity::get_pa_tarif);
		stringJavaToCobol(line.getFieldValue(SPE2_MCTF), entity::get_observation2);
		dateJavaToCobol(line.getFieldValue(DAT_MCTF), entity::get_date_maj);
		stringJavaToCobol(line.getFieldValue(PAY_MCTF), entity::get_pay_mctf);
	}

}
