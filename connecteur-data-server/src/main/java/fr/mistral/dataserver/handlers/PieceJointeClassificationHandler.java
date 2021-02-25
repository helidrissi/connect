package fr.mistral.dataserver.handlers;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.model.mx.PieceJointeClassification;
import fr.mistral.dataserver.server.IDataHandler;
import java.io.IOException;
import java.util.List;
import net.sf.JRecord.Details.AbstractLine;

public class PieceJointeClassificationHandler extends AbstractDataHandler<PieceJointeClassification> implements IDataHandler {

	/**
	 * cobol: ATT-ATTR, CLA-ATTR
	 * db:    no_ordre_doc, no_classification
	 */
	private static final String CLE1_ATTR = "CLE1-ATTR";

	/** no_ordre_doc - N° d'ordre du document attaché (type cobol: 9(10)) */
	private static final String ATT_ATTR = "ATT-ATTR";
	/** no_classification - Classification associée (type cobol: 9(5)) */
	private static final String CLA_ATTR = "CLA-ATTR";

	public PieceJointeClassificationHandler() throws IOException {
		super("mx/fd/ATTREL.fd", "ATTREL", fr.mistral.dataserver.model.mx.PieceJointeClassification.class,
				"CLE1-ATTR",
				ImmutableMap.<String, List<String>>builder()
					.put(CLE1_ATTR, ImmutableList.<String>builder().add(ATT_ATTR, CLA_ATTR).build())
					.build(),
				ImmutableMap.<String, IEntityFieldMapper<PieceJointeClassification>>builder()
					.put(ATT_ATTR, new EntityFieldMapper<>(ATT_ATTR, "no_ordre_doc", PieceJointeClassification::get_no_ordre_doc))
					.put(CLA_ATTR, new EntityFieldMapper<>(CLA_ATTR, "no_classification", PieceJointeClassification::get_no_classification))
					.build());
	}

	@Override
	public String getName() {
		return "ATTREL";
	}

	@Override
	public List<String> getAliases() {
		return ImmutableList.of();
	}

	@Override
	protected void mapCobolToJava(AbstractLine line, PieceJointeClassification entity) {
		longCobolToJava(line.getFieldValue(ATT_ATTR), entity::set_no_ordre_doc);
		integerCobolToJava(line.getFieldValue(CLA_ATTR), entity::set_no_classification);
	}

	@Override
	protected void mapJavaToCobol(PieceJointeClassification entity, AbstractLine line) {
		longJavaToCobol(line.getFieldValue(ATT_ATTR), entity::get_no_ordre_doc);
		integerJavaToCobol(line.getFieldValue(CLA_ATTR), entity::get_no_classification);
	}

}
