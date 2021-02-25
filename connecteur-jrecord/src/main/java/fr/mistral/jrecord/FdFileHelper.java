package fr.mistral.jrecord;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.IOUtils;

import com.google.common.collect.Lists;

import net.sf.JRecord.Common.Constants;
import net.sf.JRecord.External.CopybookLoader;
import net.sf.JRecord.IO.CobolIoProvider;
import net.sf.JRecord.Numeric.ICopybookDialects;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

/**
 * Ces méthodes permettent de transformer un fichier .fd ou .wrk avant traitement par JRecord de manière à supprimer
 * les préludes du .fd ou à sélectionner un groupe particulier du fichier.
 * 
 * Note générale : le chargement du layout est fait lors du premier appel à getLayout() ; si on exploite
 * un {@link InputStream} pour lire le fichier .fd, il ne faut pas qu'il soit fermé au moment où on veut
 * exploiter le layout.
 * 
 * Pour l'instant, on charge le layout au moment de la construction de l'objet. Si on ne le fait pas, on a une erreur
 * lors de la première utilisation car le stream est fermé.
 */
public class FdFileHelper {

	private FdFileHelper() {}

	/**
	 * Charge un reader/writer d'enregistrement en chargeant un fichier de type FD.
	 */
	public static ICobolIOBuilder newTextBuilderFromFd(String classpathResourcePath, String basename) throws IOException {
		try (InputStream definition = openFdFile(classpathResourcePath)) {
			return loadLayout(basename, definition, Constants.IO_STANDARD_TEXT_FILE);
		}
	}

	/**
	 * Charge un reader/writer d'enregistrement en chargeant un fichier de type FD.
	 */
	public static ICobolIOBuilder newKeyIOBuilderFromFd(String classpathResourcePath, String basename, String level) throws IOException {
		try (InputStream definition = openMultiCopybookFile(classpathResourcePath, basename, level)) {
			return loadLayout(basename, definition, Constants.IO_FIXED_LENGTH);
		}
	}

	/**
	 * Charge un reader/writer d'enregistrement en chargeant un fichier de type FD.
	 */
	public static ICobolIOBuilder newIOBuilderFromFd(String classpathResourcePath, String basename) throws IOException {
		try (InputStream definition = openFdFile(classpathResourcePath)) {
			return loadLayout(basename, definition, Constants.IO_FIXED_LENGTH);
		}
	}

	/**
	 * Charge un reader/writer d'enregistrement en chargeant un fichier de type .wrk (copybook) définissant plusieurs
	 * types d'enregistrement.
	 * 
	 * <i>basename<i> est utilisé pour identifier l'enregistrement à charger.
	 */
	public static ICobolIOBuilder newIOBuilderFromMultiCopybook(String classpathResourcePath, String basename) throws IOException {
		try (InputStream definition = openMultiCopybookFile(classpathResourcePath, basename, "01")) {
			return loadLayout(basename, definition, Constants.IO_FIXED_LENGTH);
		}
	}

	/**
	 * Retourne un {@link InputStream} wrappé pour enlever le prélude FD... au début du fichier .fd cible.
	 */
	private static InputStream openFdFile(String classpathResource) throws IOException {
		try (InputStream is = FdFileHelper.class.getClassLoader().getResource(classpathResource).openStream()) {
			String output = IOUtils.toString(is);
			output = output.replaceFirst("(?<!X)FD[^.]+\\.(?=[^\\n ])", "");
			return new ByteArrayInputStream(output.getBytes(StandardCharsets.UTF_8));
		}
	}

	/**
	 * Retourne un {@link InputStream} qui exporte seulement la portion de copybook souhaitée.
	 */
	private static InputStream openMultiCopybookFile(String classpathResource, String recordName, String level)
			throws IOException {
		try (InputStream is = FdFileHelper.class.getClassLoader().getResource(classpathResource).openStream()) {
			String output = IOUtils.toString(is);
			List<String> levels = Lists.newArrayList("01", "02", "03", "04", "05", "06");
			for (String mylevel : levels) {
				String regexp = String.format("(^ +%1$s %2$s.*?(?=(^ +%1$s )|\\Z))", mylevel, recordName);
				Matcher matcher = Pattern.compile(regexp, Pattern.MULTILINE | Pattern.DOTALL).matcher(output);
				if (matcher.find()) {
					return new ByteArrayInputStream(matcher.group(0).getBytes(StandardCharsets.UTF_8));
				}
			}
			throw new IOException(String.format("%s cannot be extracted from %s", recordName, classpathResource));
		}
	}

	private static ICobolIOBuilder loadLayout(String basename, InputStream definition, int fileOrganization)
			throws IOException {
		ICobolIOBuilder builder =  CobolIoProvider.getInstance().newIOBuilder(definition, basename)
				.setSplitCopybook(CopybookLoader.SPLIT_NONE)
				.setDialect(ICopybookDialects.FMT_OC_MICRO_FOCUS)
				.setOptimizeTypes(false)
				.setFileOrganization(fileOrganization);
		// chargement du layout
		builder.getLayout();
		return builder;
	}

}
