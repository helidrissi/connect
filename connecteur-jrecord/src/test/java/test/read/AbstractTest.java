package test.read;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;

public class AbstractTest {

	public AbstractTest() {
		super();
	}

	protected InputStream openFdFile(String classpathResource) throws IOException {
		try (InputStream is = getClass().getClassLoader().getResource(classpathResource).openStream()) {
			String output = IOUtils.toString(is);
			output = output.replaceFirst("FD[^.]+(?=[^\n ])", "");
			return new ByteArrayInputStream(output.getBytes(Charsets.UTF_8));
		}
	}

}