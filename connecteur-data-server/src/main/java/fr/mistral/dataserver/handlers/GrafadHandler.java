package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.Grafad;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class GrafadHandler extends AbstractDataHandler<Grafad> implements IDataHandler {

	/**
	 * cobol: GRA-MGFD
	 * db:    gra_mgfd
	 */
	private static final String CLE1_MGFD = "CLE1-MGFD";

	/** gra_mgfd - Code famille (type cobol: 99) */
	private static final String GRA_MGFD = "GRA-MGFD";
	/** mmi_mgfd - % marge mini (type cobol: 99V99) */
	private static final String MMI_MGFD = "MMI-MGFD";
	/** mmx_mgfd - % marge maxi (type cobol: 99V99) */
	private static final String MMX_MGFD = "MMX-MGFD";
	/** mmp_mgfd - % marge plancher (type cobol: 99V99) */
	private static final String MMP_MGFD = "MMP-MGFD";
	/** mib_mgfd - Minoration marge articles avec concurrence (type cobol: 9V99) */
	private static final String MIB_MGFD = "MIB-MGFD";
	/** mab_mgfd - Majoration marge articles sans concurrence (type cobol: 9V99) */
	private static final String MAB_MGFD = "MAB-MGFD";
	/** imi_mgfd - Indice rotation norme mini (type cobol: 9(3)V9) */
	private static final String IMI_MGFD = "IMI-MGFD";
	/** imx_mgfd - Indice rotation norme maxi (type cobol: 9(3)V9) */
	private static final String IMX_MGFD = "IMX-MGFD";
	/** vhn_mgfd - % variation mini-maxi hors normes (type cobol: 9(3)) */
	private static final String VHN_MGFD = "VHN-MGFD";
	/** cmi_mgfd - Coef couverture stock mini (type cobol: 9V999) */
	private static final String CMI_MGFD = "CMI-MGFD";
	/** cmx_mgfd - Coef couverture stock maxi (type cobol: 9V999) */
	private static final String CMX_MGFD = "CMX-MGFD";
	/** dvm_mgfd - Duére de vie minimum (type cobol: 9(3)) */
	private static final String DVM_MGFD = "DVM-MGFD";
	/** irs_mgfd - I.R. somnolent (type cobol: 99V9) */
	private static final String IRS_MGFD = "IRS-MGFD";
	/** ird_mgfd - I.R. dormant (type cobol: 99V9) */
	private static final String IRD_MGFD = "IRD-MGFD";
	/** asm_mgfd - Nombre années stock mort (type cobol: 9) */
	private static final String ASM_MGFD = "ASM-MGFD";

	public GrafadHandler() throws IOException {
		super("mx/fd/MXGRAFAD.fd", "MXGRAFAD", fr.mistral.dataserver.model.mx.Grafad.class,
				"CLE1-MGFD",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_MGFD, ImmutableList.<String>builder().add(GRA_MGFD).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<Grafad>>builder()
					.put(GRA_MGFD, new EntityFieldMapper<>(GRA_MGFD, "gra_mgfd", Grafad::get_gra_mgfd))
					.build());
	}

	@Override
	public String getName() {
		return "MXGRAFAD";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, Grafad entity) {
		integerCobolToJava(line.getFieldValue(GRA_MGFD), entity::set_gra_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(MMI_MGFD), entity::set_mmi_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(MMX_MGFD), entity::set_mmx_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(MMP_MGFD), entity::set_mmp_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(MIB_MGFD), entity::set_mib_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(MAB_MGFD), entity::set_mab_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(IMI_MGFD), entity::set_imi_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(IMX_MGFD), entity::set_imx_mgfd);
		integerCobolToJava(line.getFieldValue(VHN_MGFD), entity::set_vhn_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(CMI_MGFD), entity::set_cmi_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(CMX_MGFD), entity::set_cmx_mgfd);
		integerCobolToJava(line.getFieldValue(DVM_MGFD), entity::set_dvm_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(IRS_MGFD), entity::set_irs_mgfd);
		bigDecimalCobolToJava(line.getFieldValue(IRD_MGFD), entity::set_ird_mgfd);
		integerCobolToJava(line.getFieldValue(ASM_MGFD), entity::set_asm_mgfd);
	}

	@Override
	protected void mapJavaToCobol(Grafad entity, AbstractLine line) {
		integerJavaToCobol(line.getFieldValue(GRA_MGFD), entity::get_gra_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(MMI_MGFD), entity::get_mmi_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(MMX_MGFD), entity::get_mmx_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(MMP_MGFD), entity::get_mmp_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(MIB_MGFD), entity::get_mib_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(MAB_MGFD), entity::get_mab_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(IMI_MGFD), entity::get_imi_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(IMX_MGFD), entity::get_imx_mgfd);
		integerJavaToCobol(line.getFieldValue(VHN_MGFD), entity::get_vhn_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(CMI_MGFD), entity::get_cmi_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(CMX_MGFD), entity::get_cmx_mgfd);
		integerJavaToCobol(line.getFieldValue(DVM_MGFD), entity::get_dvm_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(IRS_MGFD), entity::get_irs_mgfd);
		bigDecimalJavaToCobol(line.getFieldValue(IRD_MGFD), entity::get_ird_mgfd);
		integerJavaToCobol(line.getFieldValue(ASM_MGFD), entity::get_asm_mgfd);
	}

}
