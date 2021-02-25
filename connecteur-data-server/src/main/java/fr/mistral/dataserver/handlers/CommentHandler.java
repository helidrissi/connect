package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Comment;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class CommentHandler extends AbstractDataHandler<Comment> implements IDataHandler {

	/**
	 * cobol: ORI-MCMO, CLE-MCMO
	 * db:    origine, cle_fichier
	 */
	private static final String CLE1_MCMO = "CLE1-MCMO";

	/** origine (type cobol: XXX) */
	private static final String ORI_MCMO = "ORI-MCMO";
	/** cle_fichier (type cobol: X(24)) */
	private static final String CLE_MCMO = "CLE-MCMO";
	/** libelle (type cobol: X(320)) */
	private static final String LIB_MCMO = "LIB-MCMO";
	/** edition_ar (type cobol: 9) */
	private static final String EAR_MCMO = "EAR-MCMO";
	/** edition_bl (type cobol: 9) */
	private static final String EBL_MCMO = "EBL-MCMO";
	/** edition_fac (type cobol: 9) */
	private static final String EFAC_MCMO = "EFAC-MCMO";
	/** edition_bp (type cobol: 9) */
	private static final String EBP_MCMO = "EBP-MCMO";
	/** nb_lignes (type cobol: 9(3)) */
	private static final String NBRL_MCMO = "NBRL-MCMO";
	/** date_acompte - Spécifique acomptes: date facturation (type cobol: 9(8)) */
	private static final String DFA_MCMO = "DFA-MCMO";
	/** ss_total - Indicateur sous-total = 1 (type cobol: 9) */
	private static final String STO_MCMO = "STO-MCMO";
	/** motif_refus - Motif refus devis (type cobol: X) */
	private static final String MOT_MCMO = "MOT-MCMO";
	/** compteur2_depart_reservation_mobistac - Compteur 2 départ réservation Mobistac (type cobol: 9(7)) */
	private static final String CD2_MCMO = "CD2-MCMO";
	/** litres_depart_reservation_mobistac - Nb litres carburant départ réservation Mobistac (type cobol: 9(4)) */
	private static final String NLC_MCMO = "NLC-MCMO";

	public CommentHandler() throws IOException {
		super("mx/fd/MXCOMMENT.fd", "MXCOMMENT", fr.mistral.dataserver.model.mx.Comment.class,
				"CLE1-MCMO",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MCMO, ImmutableList.<String>builder().add(ORI_MCMO, CLE_MCMO).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Comment>>builder()
					.put(ORI_MCMO, new EntityFieldMapper<>(ORI_MCMO, "origine", Comment::get_origine))
					.put(CLE_MCMO, new EntityFieldMapper<>(CLE_MCMO, "cle_fichier", Comment::get_cle_fichier))
					.build());
	}

	@Override
	public String getName() {
		return "MXCOMMENT";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("MXCOMMENT2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Comment entity) {
		stringCobolToJava(line.getFieldValue(ORI_MCMO), entity::set_origine);
		stringCobolToJava(line.getFieldValue(CLE_MCMO), entity::set_cle_fichier);
		stringCobolToJava(line.getFieldValue(LIB_MCMO), entity::set_libelle);
		integerCobolToJava(line.getFieldValue(EAR_MCMO), entity::set_edition_ar);
		integerCobolToJava(line.getFieldValue(EBL_MCMO), entity::set_edition_bl);
		integerCobolToJava(line.getFieldValue(EFAC_MCMO), entity::set_edition_fac);
		integerCobolToJava(line.getFieldValue(EBP_MCMO), entity::set_edition_bp);
		integerCobolToJava(line.getFieldValue(NBRL_MCMO), entity::set_nb_lignes);
		dateCobolToJava(line.getFieldValue(DFA_MCMO), entity::set_date_acompte);
		integerCobolToJava(line.getFieldValue(STO_MCMO), entity::set_ss_total);
		stringCobolToJava(line.getFieldValue(MOT_MCMO), entity::set_motif_refus);
		longCobolToJava(line.getFieldValue(CD2_MCMO), entity::set_compteur2_depart_reservation_mobistac);
		integerCobolToJava(line.getFieldValue(NLC_MCMO), entity::set_litres_depart_reservation_mobistac);
	}

	@Override
	protected void mapJavaToCobol(Comment entity, AbstractLine line) {
		stringJavaToCobol(line.getFieldValue(ORI_MCMO), entity::get_origine);
		stringJavaToCobol(line.getFieldValue(CLE_MCMO), entity::get_cle_fichier);
		stringJavaToCobol(line.getFieldValue(LIB_MCMO), entity::get_libelle);
		integerJavaToCobol(line.getFieldValue(EAR_MCMO), entity::get_edition_ar);
		integerJavaToCobol(line.getFieldValue(EBL_MCMO), entity::get_edition_bl);
		integerJavaToCobol(line.getFieldValue(EFAC_MCMO), entity::get_edition_fac);
		integerJavaToCobol(line.getFieldValue(EBP_MCMO), entity::get_edition_bp);
		integerJavaToCobol(line.getFieldValue(NBRL_MCMO), entity::get_nb_lignes);
		dateJavaToCobol(line.getFieldValue(DFA_MCMO), entity::get_date_acompte);
		integerJavaToCobol(line.getFieldValue(STO_MCMO), entity::get_ss_total);
		stringJavaToCobol(line.getFieldValue(MOT_MCMO), entity::get_motif_refus);
		longJavaToCobol(line.getFieldValue(CD2_MCMO), entity::get_compteur2_depart_reservation_mobistac);
		integerJavaToCobol(line.getFieldValue(NLC_MCMO), entity::get_litres_depart_reservation_mobistac);
	}

}
