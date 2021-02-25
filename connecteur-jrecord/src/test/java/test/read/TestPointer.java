package test.read;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import net.sf.JRecord.Common.Constants;
import net.sf.JRecord.Common.IFieldDetail;
import net.sf.JRecord.Details.Line;
import net.sf.JRecord.External.CopybookLoader;
import net.sf.JRecord.IO.AbstractLineWriter;
import net.sf.JRecord.IO.CobolIoProvider;
import net.sf.JRecord.Numeric.ICopybookDialects;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public class TestPointer extends AbstractTest {

	@Test
	public void readAndWritePointer() throws IOException {
		String fdBaseName = "pointer";
		try (InputStream definition = openFdFile(String.format("test/read/%s.fd", fdBaseName))) {
			ICobolIOBuilder ioBldr = CobolIoProvider.getInstance().newIOBuilder(definition, fdBaseName)
					.setSplitCopybook(CopybookLoader.SPLIT_NONE)
					.setDialect(ICopybookDialects.FMT_OC_MICRO_FOCUS)
					.setFileOrganization(Constants.IO_FIXED_LENGTH);
			IFieldDetail fieldDetail = ioBldr.getLayout().getFieldNameMap().get("MY-POINTER");
			System.out.println(String.format("%s: %d",
					"MY-POINTER",
					fieldDetail.getPos()));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			Line line = new Line(ioBldr.getLayout());
			String value = "0001000200030004";
			line.setFieldHex(fieldDetail, value);
			AbstractLineWriter writer = ioBldr.newWriter(baos);
			writer.write(line);
			writer.close();
			ByteArrayInputStream bais = new ByteArrayInputStream(baos.toByteArray());
			Assertions.assertEquals(value, ioBldr.newReader(bais).read().getFieldValue(fieldDetail).asHex());
		}
		
	}

}
