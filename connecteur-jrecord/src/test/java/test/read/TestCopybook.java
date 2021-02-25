package test.read;

import java.io.IOException;
import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import fr.mistral.jrecord.FdFileHelper;
import net.sf.JRecord.Details.LayoutDetail;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;
import net.sf.JRecord.detailsBasic.IItemDetails;

public class TestCopybook {

	@Test
	public void testCopybook() throws IOException {
		ICobolIOBuilder argsBuilder = FdFileHelper.newIOBuilderFromMultiCopybook("test/read/copybook.wrk", "DSC-ARGS");
		Assertions.assertTrue(argsBuilder.getLayout().getFieldNameMap().keySet().contains("DSC-FILENAME"));
		Assertions.assertFalse(argsBuilder.getLayout().getFieldNameMap().keySet().contains("PROCESS-ID-CMD"));
		
		// la regexp contient un cas particulier pour récupérer le dernier bloc
		ICobolIOBuilder lastBuilder = FdFileHelper.newIOBuilderFromMultiCopybook("test/read/copybook.wrk", "DSCLIENT-INTERNAL-ERROR");
		Assertions.assertTrue(lastBuilder.getLayout().getFieldNameMap().keySet().contains("DSC-ERROR-CODE"));
		Assertions.assertFalse(argsBuilder.getLayout().getFieldNameMap().keySet().contains("PROCESS-ID-CMD"));
	}

	@Test
	public void testFdKey() throws IOException {
		ICobolIOBuilder argsBuilder = FdFileHelper.newKeyIOBuilderFromFd("test/read/MXART.fd", "CLE1-MART", "02");
		LayoutDetail layout = argsBuilder.getLayout();
		List<IItemDetails> cle1 = layout.getCobolGroupItems("CLE1-MART");
		List<IItemDetails> codr = layout.getCobolGroupItems("CODR-MART");
		
		// vérification présence des groupes CLE1-MART et CODR-MART
		Assertions.assertTrue(cle1.size() == 1);
		Assertions.assertTrue(codr.size() == 1);
		
		// vérification de l'arborescence des champs
		Assertions.assertTrue(cle1.get(0).getChildItems().contains(layout.getFieldFromName("COD-MART").getCobolItem()));
		Assertions.assertTrue(cle1.get(0).getChildItems().contains(codr.get(0)));
		Assertions.assertTrue(layout.getFieldNameMap().keySet().contains("COD-MART"));
		Assertions.assertTrue(layout.getFieldNameMap().keySet().contains("CO1-MART"));
		Assertions.assertTrue(layout.getFieldNameMap().keySet().contains("CO2-MART"));
		
		// les groupes n'apparaissent pas, c'est le comportement normal
		Assertions.assertFalse(layout.getFieldNameMap().keySet().contains("CLE1-MART"));
		Assertions.assertFalse(layout.getFieldNameMap().keySet().contains("CODR-MART"));
		// cet élément est extérieur
		Assertions.assertFalse(layout.getFieldNameMap().keySet().contains("CLE2-MART"));
	}

}
