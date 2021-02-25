package test.read;

import java.io.IOException;
import java.io.InputStream;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import net.sf.JRecord.Common.Constants;
import net.sf.JRecord.Common.IFieldDetail;
import net.sf.JRecord.External.CopybookLoader;
import net.sf.JRecord.IO.CobolIoProvider;
import net.sf.JRecord.Numeric.ICopybookDialects;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public class TestSigned extends AbstractTest {

	/**
	 * Vérification taille d'enregistrement S9(4). ATTENTION, il faut obligatoirement que la déclaration précise
	 * la position du signe +/- sinon la taille est erronée (4 au lieu de 5).
	 */
	@Test
	public void readAndWriteSigned() throws IOException {
		String fdBaseName = "signed";
		try (InputStream definition = openFdFile(String.format("test/read/%s.fd", fdBaseName))) {
			ICobolIOBuilder ioBldr = CobolIoProvider.getInstance().newIOBuilder(definition, fdBaseName)
					.setSplitCopybook(CopybookLoader.SPLIT_NONE)
					.setDialect(ICopybookDialects.FMT_OC_MICRO_FOCUS)
					.setFileOrganization(Constants.IO_FIXED_LENGTH);
			IFieldDetail fieldDetail = ioBldr.getLayout().getFieldNameMap().get("MY-SIGNED");
			System.out.println(String.format("%s: %d",
					"MY-SIGNED",
					fieldDetail.getPos()));
			Assertions.assertEquals(5, fieldDetail.getLen());
		}
	}

}
