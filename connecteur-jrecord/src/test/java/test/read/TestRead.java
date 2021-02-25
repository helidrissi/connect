package test.read;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;

import org.junit.jupiter.api.Test;

import com.google.common.base.Stopwatch;

import net.sf.JRecord.Common.Constants;
import net.sf.JRecord.Common.IFieldDetail;
import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.IFieldValue;
import net.sf.JRecord.Details.LayoutDetail;
import net.sf.JRecord.External.CopybookLoader;
import net.sf.JRecord.IO.AbstractLineReader;
import net.sf.JRecord.IO.CobolIoProvider;
import net.sf.JRecord.Numeric.ICopybookDialects;
import net.sf.JRecord.Types.Type;
import net.sf.JRecord.Types.TypeChar;
import net.sf.JRecord.Types.TypeManager;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public class TestRead extends AbstractTest {

	public void testPos(String fdBaseName, String fieldName) throws IOException {
		try (InputStream definition = openFdFile(String.format("test/read/%s.fd", fdBaseName))) {
			ICobolIOBuilder ioBldr = CobolIoProvider.getInstance().newIOBuilder(definition, fdBaseName)
					.setSplitCopybook(CopybookLoader.SPLIT_NONE)
					.setDialect(ICopybookDialects.FMT_OC_MICRO_FOCUS)
					.setFileOrganization(Constants.IO_FIXED_LENGTH);
			IFieldDetail fieldDetail = ioBldr.getLayout().getFieldNameMap().get(fieldName);
			System.out.println(String.format("%s: %d",
					fieldName,
					fieldDetail.getPos()));
		}
	}

	public void testReadGeneric(String fdBaseName, String dataBaseName, String keyName,
			Collection<String> ignoredFields, RecordHandler recordHandler) throws IOException {
		try (InputStream definition = openFdFile(String.format("test/read/%s.fd", fdBaseName))) {
			ICobolIOBuilder ioBldr = CobolIoProvider.getInstance().newIOBuilder(definition, fdBaseName)
					.setSplitCopybook(CopybookLoader.SPLIT_NONE)
					.setDialect(ICopybookDialects.FMT_OC_MICRO_FOCUS)
					.setFileOrganization(Constants.IO_FIXED_LENGTH);
			AbstractLineReader reader = ioBldr.newReader(openStream(String.format("test/read/%s.dat", dataBaseName)));
			AbstractLine l;
			int numberFormatExceptionCount = 0;
			int illegalStateExceptionCount = 0;
			int lines = 0;
			Stopwatch stopwatch = Stopwatch.createStarted();
			
			while ((l = reader.read()) != null) {
					try {
					recordHandler.handle(l, ioBldr.getLayout(), keyName, ignoredFields);
					lines++;
				} catch (IllegalStateException e) {
					illegalStateExceptionCount++;
				} catch (NumberFormatException e) {
					System.out.println(e.getMessage());
					numberFormatExceptionCount++;
				}
			}
			
			System.out.println(String.format("%d lines extracted in %d ms.", lines, stopwatch.elapsed(TimeUnit.MILLISECONDS)));
			System.out.println(String.format("%d lines with NumberFormatException", numberFormatExceptionCount));
			System.out.println(String.format("%d lines with IllegalStateException", illegalStateExceptionCount));
		}
	}

	@Test
	public void testPos() throws IOException {
		testPos("MXART", "STOMOB-MART");
	}

	@Test
	public void testReadLangueSimple() throws IOException {
		testReadGeneric("LANGUE", "LANGUE", "COD-LAN", Collections.emptyList(), this::renderSimple);
	}

	@Test
	public void testReadIterateFields() throws IOException {
		List<String> artIgnoredFields = new ArrayList<>();
		artIgnoredFields.add("RFIN-MART");  // version numérique de la référence
//		artIgnoredFields.add("PRMOB-MART"); // Pour MobiVip R3: PAMP ou PRMP
		// artIgnoredFields.add("HMOD-MART"); // 
//		artIgnoredFields.add("PTF-MART"); // Valeur ';0' !
//		artIgnoredFields.add("PAC-MART"); // Valeur ':6' ';8' !
//		artIgnoredFields.add("STOMOB-MART"); // Valeur 'E' !
//		testReadGeneric("LANGUE", "LANGUE", Collections.emptyList(), this::renderIntrospect);
//		testReadGeneric("CODPOS", "CODPOS", Collections.emptyList(), this::renderIntrospect);
		testReadGeneric("MXART", "ART", "COD-MART", artIgnoredFields, this::renderIntrospect);
		// REDEFINES conflict
//		testReadGeneric("SVINT", this::renderIntrospect);
	}

	public void renderSimple(AbstractLine l, LayoutDetail layoutDetail, String keyName, Collection<String> ignoredFields) {
		System.out.println(l.getFieldValue("COD-LAN").asLong());
		System.out.println(l.getFieldValue("NOM-LAN").asString());
		System.out.println(l.getFieldValue("TRA-LAN").asString());
		System.out.println(l.getFieldValue("CVI-LAN").asString());
		System.out.println(l.getFieldValue("MIP2-LAN").asLong());
		System.out.println(l.getFieldValue("MIP3-LAN").asLong());
		System.out.println(l.getFieldValue("CISO-LAN").asString());
	}

	public void renderIntrospect(AbstractLine l, LayoutDetail layoutDetail, String keyName, Collection<String> ignoredFields) {
		List<IFieldDetail> fieldDetails = new ArrayList<>();
		fieldDetails.addAll(layoutDetail.getFieldNameMap().values());
		Collections.sort(fieldDetails, FieldDetailComparator.INSTANCE);
		
		BiConsumer<String, Object> callback = (s1, s2) -> {
//			System.out.println(String.format("%s: %s", s1, s2));
		};
		
		for (IFieldDetail fieldDetail : fieldDetails) {
			if (ignoredFields != null && ignoredFields.contains(fieldDetail.getName())) {
				continue;
			}
			Type type = TypeManager.getInstance().getType(fieldDetail.getType());
			try {
				if (type.isNumeric()) {
					IFieldValue value = l.getFieldValue(fieldDetail.getLookupName());
					if (value.isSpaces()) {
						callback.accept(fieldDetail.getLookupName(), "<NULL>");
						continue;
					}
					if (fieldDetail.getDecimal() != 0) {
						callback.accept(fieldDetail.getLookupName(), value.asBigDecimal());
						continue;
					} else {
						callback.accept(fieldDetail.getLookupName(), value.asLong());
						continue;
					}
				} else {
					if (type instanceof TypeChar) {
						callback.accept(fieldDetail.getLookupName(), l.getFieldValue(fieldDetail.getLookupName()).asString());
						continue;
					}
				}
			} catch (NumberFormatException e) {
				throw new NumberFormatException(String.format(
						"%s: <%s> (key=%s)",
						fieldDetail.getLookupName(),
						l.getFieldValue(fieldDetail.getLookupName()).asString(),
						l.getFieldValue(keyName).asString()));
			}
			throw new IllegalStateException(String.format("Unknown field representation for %s (key=%s)",
					fieldDetail.getName(),
					l.getFieldValue(keyName).asString()));
		}
	}

	protected InputStream openStream(String classpathResource) throws IOException {
		return getClass().getClassLoader().getResource(classpathResource).openStream();
	}

	public static class FieldDetailComparator implements Comparator<IFieldDetail> {
		
		public static final FieldDetailComparator INSTANCE = new FieldDetailComparator();
		
		@Override
		public int compare(IFieldDetail o1, IFieldDetail o2) {
			return (o1.getPos() < o2.getPos()) ? -1 : ((o1.getPos() == o2.getPos()) ? 0 : 1);
		}
		
	}

}
