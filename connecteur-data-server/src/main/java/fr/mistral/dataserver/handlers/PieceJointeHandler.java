package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.PieceJointe;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class PieceJointeHandler extends AbstractDataHandler<PieceJointe> implements IDataHandler {

	/**
	 * cobol: ORD-ATT
	 * db:    no_ordre
	 */
	private static final String CLE1_ATT = "CLE1-ATT";
	/**
	 * cobol: SOC-ATT, ORI-ATT, CLE-ATT, RAN-ATT
	 * db:    no_societe, origine, cle, ran
	 */
	private static final String CLE2_ATT = "CLE2-ATT";

	/** no_ordre - N° d'ordre  document (type cobol: 9(10)) */
	private static final String ORD_ATT = "ORD-ATT";
	/** no_societe - N° société (0 si Matériel ou Type Matériel (type cobol: 9(4)) */
	private static final String SOC_ATT = "SOC-ATT";
	/** origine - Type de l'élément auquel est rattaché le fichier    Voir valeur de ce paramètre dans onglet "File control" (type cobol: X(4)) */
	private static final String ORI_ATT = "ORI-ATT";
	/** cle - Clé primaire de l'élément (type cobol: X(30)) */
	private static final String CLE_ATT = "CLE-ATT";
	/** ran - Rang d'affichage de ce fichier parmi tous ceux de l'élément auquel il est rattaché (permet notemment de repérer le fichier principal (type cobol: 999) */
	private static final String RAN_ATT = "RAN-ATT";
	/** titre - Titre du fichier (type cobol: X(40)) */
	private static final String TIT_ATT = "TIT-ATT";
	/** commentaire - Commentaires décrivant le fichier (type cobol: X(255)) */
	private static final String COM_ATT = "COM-ATT";
	/** mime_type - Mime type de l'élément (exemple image/jpg pour un JPEG (type cobol: X(30)) */
	private static final String MIM_ATT = "MIM-ATT";
	/** nom_fichier - Contient le nom du fichier sur le disque ou bien le nom de l'URL si commence par "http" (type cobol: X(128)) */
	private static final String FIC_ATT = "FIC-ATT";
	/** auteur_creation - Initiales de la personne ayant attaché ce ficher à l'élément (type cobol: X(4)) */
	private static final String ICRE_ATT = "ICRE-ATT";
	/** date_creation - Date d'ajout de ce fichier (type cobol: 9(8)) */
	private static final String DCRE_ATT = "DCRE-ATT";
	/** date_modif - Date de MAJ de l'enregistrement (Synchro MobiVip (type cobol: 9(8)) */
	private static final String DME_ATT = "DME-ATT";
	/** origine_mobitec_mo - Origine si synchro Mobitec ou Mobistac (type cobol: XX) */
	private static final String ORIMBT_ATT = "ORIMBT-ATT";
	/** doc_non_transmis - 1=Document à ne pas faire suivre (Mobistac-> Mobitrans) (type cobol: 9) */
	private static final String NONS_ATT = "NONS-ATT";
	/** heure_signature - Heure signature document (Mobisign) (type cobol: 99V99) */
	private static final String HEU_ATT = "HEU-ATT";
	/** xml_signature - Fichier pdf généré suite signature (Mobisign) - ou bien suite de l'URL si le champ FIC-ATT n'est pas suffisant (type cobol: X(50)) */
	private static final String XMLS_ATT = "XMLS-ATT";
	/** cli_att - Client signature Mobisign (type cobol: 9(6)) */
	private static final String CLI_ATT = "CLI-ATT";
	/** cdv_att - Client divers signature Mobisign (type cobol: 9(6)) */
	private static final String CDV_ATT = "CDV-ATT";
	/** itc_att - Interlocuteur signature Mobisign (type cobol: 9(9)) */
	private static final String ITC_ATT = "ITC-ATT";
	/** sigi_att - Indicateur signature intervenant pour Mobistac si 2 signatures, sinon indic rapport Praxedo (type cobol: 9) */
	private static final String SIGI_ATT = "SIGI-ATT";
	/** ligb_att - N° ligne bon de sortie si photo faite par Mobistac ou Mobitrans (type cobol: 9(4)) */
	private static final String LIGB_ATT = "LIGB-ATT";

	public PieceJointeHandler() throws IOException {
		super("mx/fd/ATTACH.fd", "ATTACH", fr.mistral.dataserver.model.mx.PieceJointe.class,
				"CLE1-ATT",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_ATT, ImmutableList.<String>builder().add(ORD_ATT).build())
					.put(CLE2_ATT, ImmutableList.<String>builder().add(SOC_ATT, ORI_ATT, CLE_ATT, RAN_ATT).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<PieceJointe>>builder()
					.put(ORD_ATT, new EntityFieldMapper<>(ORD_ATT, "no_ordre", PieceJointe::get_no_ordre))
					.put(SOC_ATT, new EntityFieldMapper<>(SOC_ATT, "no_societe", PieceJointe::get_no_societe))
					.put(ORI_ATT, new EntityFieldMapper<>(ORI_ATT, "origine", PieceJointe::get_origine))
					.put(CLE_ATT, new EntityFieldMapper<>(CLE_ATT, "cle", PieceJointe::get_cle))
					.put(RAN_ATT, new EntityFieldMapper<>(RAN_ATT, "ran", PieceJointe::get_ran))
					.build());
	}

	@Override
	public String getName() {
		return "ATTACH";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of("ATTACH2");
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, PieceJointe entity) {
		longCobolToJava(line.getFieldValue(ORD_ATT), entity::set_no_ordre);
		integerCobolToJava(line.getFieldValue(SOC_ATT), entity::set_no_societe);
		stringCobolToJava(line.getFieldValue(ORI_ATT), entity::set_origine);
		stringCobolToJava(line.getFieldValue(CLE_ATT), entity::set_cle);
		integerCobolToJava(line.getFieldValue(RAN_ATT), entity::set_ran);
		stringCobolToJava(line.getFieldValue(TIT_ATT), entity::set_titre);
		stringCobolToJava(line.getFieldValue(COM_ATT), entity::set_commentaire);
		stringCobolToJava(line.getFieldValue(MIM_ATT), entity::set_mime_type);
		stringCobolToJava(line.getFieldValue(FIC_ATT), entity::set_nom_fichier);
		stringCobolToJava(line.getFieldValue(ICRE_ATT), entity::set_auteur_creation);
		dateCobolToJava(line.getFieldValue(DCRE_ATT), entity::set_date_creation);
		dateCobolToJava(line.getFieldValue(DME_ATT), entity::set_date_modif);
		stringCobolToJava(line.getFieldValue(ORIMBT_ATT), entity::set_origine_mobitec_mo);
		integerCobolToJava(line.getFieldValue(NONS_ATT), entity::set_doc_non_transmis);
		bigDecimalCobolToJava(line.getFieldValue(HEU_ATT), entity::set_heure_signature);
		stringCobolToJava(line.getFieldValue(XMLS_ATT), entity::set_xml_signature);
		longCobolToJava(line.getFieldValue(CLI_ATT), entity::set_cli_att);
		longCobolToJava(line.getFieldValue(CDV_ATT), entity::set_cdv_att);
		longCobolToJava(line.getFieldValue(ITC_ATT), entity::set_itc_att);
		integerCobolToJava(line.getFieldValue(SIGI_ATT), entity::set_sigi_att);
		integerCobolToJava(line.getFieldValue(LIGB_ATT), entity::set_ligb_att);
	}

	@Override
	protected void mapJavaToCobol(PieceJointe entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(ORD_ATT), entity::get_no_ordre);
		integerJavaToCobol(line.getFieldValue(SOC_ATT), entity::get_no_societe);
		stringJavaToCobol(line.getFieldValue(ORI_ATT), entity::get_origine);
		stringJavaToCobol(line.getFieldValue(CLE_ATT), entity::get_cle);
		integerJavaToCobol(line.getFieldValue(RAN_ATT), entity::get_ran);
		stringJavaToCobol(line.getFieldValue(TIT_ATT), entity::get_titre);
		stringJavaToCobol(line.getFieldValue(COM_ATT), entity::get_commentaire);
		stringJavaToCobol(line.getFieldValue(MIM_ATT), entity::get_mime_type);
		stringJavaToCobol(line.getFieldValue(FIC_ATT), entity::get_nom_fichier);
		stringJavaToCobol(line.getFieldValue(ICRE_ATT), entity::get_auteur_creation);
		dateJavaToCobol(line.getFieldValue(DCRE_ATT), entity::get_date_creation);
		dateJavaToCobol(line.getFieldValue(DME_ATT), entity::get_date_modif);
		stringJavaToCobol(line.getFieldValue(ORIMBT_ATT), entity::get_origine_mobitec_mo);
		integerJavaToCobol(line.getFieldValue(NONS_ATT), entity::get_doc_non_transmis);
		bigDecimalJavaToCobol(line.getFieldValue(HEU_ATT), entity::get_heure_signature);
		stringJavaToCobol(line.getFieldValue(XMLS_ATT), entity::get_xml_signature);
		longJavaToCobol(line.getFieldValue(CLI_ATT), entity::get_cli_att);
		longJavaToCobol(line.getFieldValue(CDV_ATT), entity::get_cdv_att);
		longJavaToCobol(line.getFieldValue(ITC_ATT), entity::get_itc_att);
		integerJavaToCobol(line.getFieldValue(SIGI_ATT), entity::get_sigi_att);
		integerJavaToCobol(line.getFieldValue(LIGB_ATT), entity::get_ligb_att);
	}

}
