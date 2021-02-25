package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Classification;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class ClassificationHandler extends AbstractDataHandler<Classification> implements IDataHandler {

	/**
	 * cobol: ORD-ATTC
	 * db:    no_classificaton
	 */
	private static final String CLE1_ATTC = "CLE1-ATTC";
	/**
	 * cobol: ORI-ATTC, ORD-ATTC
	 * db:    origine, no_classificaton
	 */
	private static final String CLE2_ATTC = "CLE2-ATTC";

	/** no_classificaton - Identifiant interne (type cobol: 9(5)) */
	private static final String ORD_ATTC = "ORD-ATTC";
	/** origine - Origine de l'élément auquel cette classification se rattache :  MAT=Matériel  ART=Article  CMT=Catalogue Matériel  PER=Personnel  DGE=Demande Garantie   ORE=O.R   VGP=Contôle Technique  MFE=Fiche d'expertise matériel  MCL=Check-list SAV   FR=Note de frais (Rembo (type cobol: X(4)) */
	private static final String ORI_ATTC = "ORI-ATTC";
	/** libelle - Libéllé (type cobol: X(30)) */
	private static final String LIB_ATTC = "LIB-ATTC";
	/** synchro_mobivip - A synchroniser / MobilVip: 1=Oui  0=Non (type cobol: 9) */
	private static final String SYNC_ATTC = "SYNC-ATTC";
	/** par_defaut - Indique si cette classification est cochée par défaut lors de l'ajout d'un nouveau document (type cobol: 9) */
	private static final String DEF_ATTC = "DEF-ATTC";
	/** supprime_vente - A conserver après la vente si paramètre suppression implémenté en PGX (type cobol: 9) */
	private static final String DEL_ATTC = "DEL-ATTC";
	/** photo - Classeur photo:  0=Non  1=oui (type cobol: 9) */
	private static final String PHO_ATTC = "PHO-ATTC";
	/** synchro_mobitec - A synchroniser / MobilTec: 1=Oui  0=Non (type cobol: 9) */
	private static final String SMBT_ATTC = "SMBT-ATTC";
	/** plan_prevention - Plan de prévention (si chantier):  0=Non  1=oui (type cobol: 9) */
	private static final String PPV_ATTC = "PPV-ATTC";
	/** fiche_interv - Fiche d'intervention (/O.R):  0=Non  1=oui (type cobol: 9) */
	private static final String FI_ATTC = "FI-ATTC";
	/** facture - Facture (/O.R):  0=Non  1=oui (type cobol: 9) */
	private static final String FAC_ATTC = "FAC-ATTC";
	/** check_list - Check-list (/O.R):  0=Non  1=oui (type cobol: 9) */
	private static final String CL_ATTC = "CL-ATTC";
	/** visible_web - Wisible webtop:  0=Non  1=oui (type cobol: 9) */
	private static final String WEB_ATTC = "WEB-ATTC";
	/** controle_tech - Controle technique (/O.R):  0=Non  1=oui (type cobol: 9) */
	private static final String CT_ATTC = "CT-ATTC";
	/** exp_materiel - Expertise matériel (/O.R):  0=Non  1=oui (type cobol: 9) */
	private static final String EXP_ATTC = "EXP-ATTC";
	/** synchro_mobimag - A synchroniser / MobilMag: 1=Oui  0=Non (type cobol: 9) */
	private static final String SMMG_ATTC = "SMMG-ATTC";
	/** vgp - Rapport VGP (/O.R):  0=Non  1=oui (type cobol: 9) */
	private static final String VGP_ATTC = "VGP-ATTC";
	/** reserve_societe - Réservé à une société (type cobol: 9) */
	private static final String RSO_ATTC = "RSO-ATTC";
	/** no_societe - N° société concernée (si autorisé à voir (type cobol: 9(4)) */
	private static final String SOC_ATTC = "SOC-ATTC";
	/** envoi_mail_facture - A joindre à l'envoi de la facture par mail (type cobol: 9) */
	private static final String ATF_ATTC = "ATF-ATTC";
	/** envoi_mail_bon - A joindre à l'envoi du bon par mail (BS/BR) (type cobol: 9) */
	private static final String ATB_ATTC = "ATB-ATTC";
	/** synchro_mobitrans - Protocole Transport (A synchroniser / MobilTrans: 1=Oui  0=Non) (type cobol: 9) */
	private static final String SMTR_ATTC = "SMTR-ATTC";
	/** cx_attc - Réservé Comptabilité (type cobol: 9) */
	private static final String CX_ATTC = "CX-ATTC";
	/** pepm_attc - Pas d'export Terre-Net/Agriaffaires (type cobol: 9) */
	private static final String PEPM_ATTC = "PEPM-ATTC";
	/** sig_attc - Document signé (type cobol: 9) */
	private static final String SIG_ATTC = "SIG-ATTC";
	/** spe_attc - Specifique: rapport Praxedo si BS (type cobol: 9) */
	private static final String SPE_ATTC = "SPE-ATTC";

	public ClassificationHandler() throws IOException {
		super("mx/fd/ATTCLA.fd", "ATTCLA", fr.mistral.dataserver.model.mx.Classification.class,
				"CLE1-ATTC",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_ATTC, ImmutableList.<String>builder().add(ORD_ATTC).build())
					.put(CLE2_ATTC, ImmutableList.<String>builder().add(ORI_ATTC, ORD_ATTC).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Classification>>builder()
					.put(ORD_ATTC, new EntityFieldMapper<>(ORD_ATTC, "no_classificaton", Classification::get_no_classificaton))
					.put(ORI_ATTC, new EntityFieldMapper<>(ORI_ATTC, "origine", Classification::get_origine))
					.build());
	}

	@Override
	public String getName() {
		return "ATTCLA";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Classification entity) {
		integerCobolToJava(line.getFieldValue(ORD_ATTC), entity::set_no_classificaton);
		stringCobolToJava(line.getFieldValue(ORI_ATTC), entity::set_origine);
		stringCobolToJava(line.getFieldValue(LIB_ATTC), entity::set_libelle);
		integerCobolToJava(line.getFieldValue(SYNC_ATTC), entity::set_synchro_mobivip);
		integerCobolToJava(line.getFieldValue(DEF_ATTC), entity::set_par_defaut);
		integerCobolToJava(line.getFieldValue(DEL_ATTC), entity::set_supprime_vente);
		integerCobolToJava(line.getFieldValue(PHO_ATTC), entity::set_photo);
		integerCobolToJava(line.getFieldValue(SMBT_ATTC), entity::set_synchro_mobitec);
		integerCobolToJava(line.getFieldValue(PPV_ATTC), entity::set_plan_prevention);
		integerCobolToJava(line.getFieldValue(FI_ATTC), entity::set_fiche_interv);
		integerCobolToJava(line.getFieldValue(FAC_ATTC), entity::set_facture);
		integerCobolToJava(line.getFieldValue(CL_ATTC), entity::set_check_list);
		integerCobolToJava(line.getFieldValue(WEB_ATTC), entity::set_visible_web);
		integerCobolToJava(line.getFieldValue(CT_ATTC), entity::set_controle_tech);
		integerCobolToJava(line.getFieldValue(EXP_ATTC), entity::set_exp_materiel);
		integerCobolToJava(line.getFieldValue(SMMG_ATTC), entity::set_synchro_mobimag);
		integerCobolToJava(line.getFieldValue(VGP_ATTC), entity::set_vgp);
		integerCobolToJava(line.getFieldValue(RSO_ATTC), entity::set_reserve_societe);
		integerCobolToJava(line.getFieldValue(SOC_ATTC), entity::set_no_societe);
		integerCobolToJava(line.getFieldValue(ATF_ATTC), entity::set_envoi_mail_facture);
		integerCobolToJava(line.getFieldValue(ATB_ATTC), entity::set_envoi_mail_bon);
		integerCobolToJava(line.getFieldValue(SMTR_ATTC), entity::set_synchro_mobitrans);
		integerCobolToJava(line.getFieldValue(CX_ATTC), entity::set_cx_attc);
		integerCobolToJava(line.getFieldValue(PEPM_ATTC), entity::set_pepm_attc);
		integerCobolToJava(line.getFieldValue(SIG_ATTC), entity::set_sig_attc);
		integerCobolToJava(line.getFieldValue(SPE_ATTC), entity::set_spe_attc);
	}

	@Override
	protected void mapJavaToCobol(Classification entity, AbstractLine line) {
		integerJavaToCobol(line.getFieldValue(ORD_ATTC), entity::get_no_classificaton);
		stringJavaToCobol(line.getFieldValue(ORI_ATTC), entity::get_origine);
		stringJavaToCobol(line.getFieldValue(LIB_ATTC), entity::get_libelle);
		integerJavaToCobol(line.getFieldValue(SYNC_ATTC), entity::get_synchro_mobivip);
		integerJavaToCobol(line.getFieldValue(DEF_ATTC), entity::get_par_defaut);
		integerJavaToCobol(line.getFieldValue(DEL_ATTC), entity::get_supprime_vente);
		integerJavaToCobol(line.getFieldValue(PHO_ATTC), entity::get_photo);
		integerJavaToCobol(line.getFieldValue(SMBT_ATTC), entity::get_synchro_mobitec);
		integerJavaToCobol(line.getFieldValue(PPV_ATTC), entity::get_plan_prevention);
		integerJavaToCobol(line.getFieldValue(FI_ATTC), entity::get_fiche_interv);
		integerJavaToCobol(line.getFieldValue(FAC_ATTC), entity::get_facture);
		integerJavaToCobol(line.getFieldValue(CL_ATTC), entity::get_check_list);
		integerJavaToCobol(line.getFieldValue(WEB_ATTC), entity::get_visible_web);
		integerJavaToCobol(line.getFieldValue(CT_ATTC), entity::get_controle_tech);
		integerJavaToCobol(line.getFieldValue(EXP_ATTC), entity::get_exp_materiel);
		integerJavaToCobol(line.getFieldValue(SMMG_ATTC), entity::get_synchro_mobimag);
		integerJavaToCobol(line.getFieldValue(VGP_ATTC), entity::get_vgp);
		integerJavaToCobol(line.getFieldValue(RSO_ATTC), entity::get_reserve_societe);
		integerJavaToCobol(line.getFieldValue(SOC_ATTC), entity::get_no_societe);
		integerJavaToCobol(line.getFieldValue(ATF_ATTC), entity::get_envoi_mail_facture);
		integerJavaToCobol(line.getFieldValue(ATB_ATTC), entity::get_envoi_mail_bon);
		integerJavaToCobol(line.getFieldValue(SMTR_ATTC), entity::get_synchro_mobitrans);
		integerJavaToCobol(line.getFieldValue(CX_ATTC), entity::get_cx_attc);
		integerJavaToCobol(line.getFieldValue(PEPM_ATTC), entity::get_pepm_attc);
		integerJavaToCobol(line.getFieldValue(SIG_ATTC), entity::get_sig_attc);
		integerJavaToCobol(line.getFieldValue(SPE_ATTC), entity::get_spe_attc);
	}

}
