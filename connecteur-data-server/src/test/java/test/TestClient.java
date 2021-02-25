package test;

import java.io.IOException;
import java.net.UnknownHostException;
import java.nio.file.Path;
import java.util.concurrent.TimeUnit;

import fr.mistral.dataserver.command.CommandKeyOperator;
import net.sf.JRecord.Details.LayoutDetail;
import net.sf.JRecord.Details.Line;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Stopwatch;

import fr.mistral.dataserver.client.Client;
import fr.mistral.dataserver.client.Client.Response;
import fr.mistral.dataserver.command.CommandReadDirection;
import fr.mistral.dataserver.fd.CobolRecordHandler;
import fr.mistral.dataserver.server.IDataHandler;
import net.sf.JRecord.Details.AbstractLine;

/**
 * Ce test nécessite de lancer un serveur
 */
public class TestClient {

	private static final Logger LOGGER = LoggerFactory.getLogger(TestClient.class);
	private static final Path ROOT = Path.of("/home/lalmeras/git/mistral-20200623-vutil");
	private Client client = new Client("localhost", 10000, CobolRecordHandler.client());

	@Test
	public void testClient() throws IOException {
		String filenameAndHandle = "MXMARQUE";
		Assertions.assertTrue(client.open(filenameAndHandle, filenameAndHandle).isSuccess());

		LayoutDetail marqueLayout = client.getDataBuilders().get(filenameAndHandle).getIOBuilder().getLayout();
		Assertions.assertTrue(client.open(filenameAndHandle, filenameAndHandle).isSuccess());
		Line line = new Line(marqueLayout);
		line.getFieldValue("ABR-MMAR").set("T");
		client.start(filenameAndHandle, filenameAndHandle, 2, CommandKeyOperator.GREATER_OR_EQUAL, line);

		while (true) {
			Response r = client.read(filenameAndHandle, filenameAndHandle, CommandReadDirection.NEXT, false);
			if (!r.isSuccess()) {
				break;
			}
			System.out.println(String.format("%s - %s",
					r.lines.get(0).getValue1().getFieldValue("COD-MMAR"),
					r.lines.get(0).getValue1().getFieldValue("LIB-MMAR")));
		}
		Assertions.assertTrue(client.close(filenameAndHandle, filenameAndHandle).isSuccess());
	}


	@Test
	public void testRewrite() throws IOException {
		String filenameAndHandle = "MXMARQUE";
		LayoutDetail marqueLayout = client.getDataBuilders().get(filenameAndHandle).getIOBuilder().getLayout();
		Assertions.assertTrue(client.open(filenameAndHandle, filenameAndHandle).isSuccess());
		Line line = new Line(marqueLayout);
		line.getFieldValue("COD-MMAR").set("001");
		line.getFieldValue("LIB-MMAR").set("TEST");
		line.getFieldValue("ABR-MMAR").set("TES");
		Response r = client.rewrite(filenameAndHandle, filenameAndHandle, line);
		Assertions.assertTrue(client.close(filenameAndHandle, filenameAndHandle).isSuccess());
	}

	@Test
	public void testCatFouWrite() throws IOException {
		String filenameAndHandle = "MXCATFOU";
		IDataHandler handler = client.getDataBuilders().get(filenameAndHandle);
		client.open(filenameAndHandle, filenameAndHandle);
		Stopwatch sw = Stopwatch.createStarted();
		for (Integer numValue = 1; numValue < 150000; numValue++) {
			AbstractLine line = handler.getIOBuilder().newLine();
			line.getFieldValue("FOU-MCTF").set(numValue);
			line.getFieldValue("REF-MCTF").set(numValue.toString());
			client.write(filenameAndHandle, filenameAndHandle, line);
			if (numValue%1000 == 0) {
				System.out.println(String.format("%d\t items in %d ms", numValue, sw.elapsed(TimeUnit.MILLISECONDS)));
			}
		}
	}

	@Test
	public void testReadAndLock() throws IOException {
		String handle1 = "handle1";
		String handle2 = "handle2";
		String file = "MXART";
		try {
			{
				Response response = client.open(handle1, "MXART");
				Assertions.assertTrue(response.isSuccess());
				response = client.open(handle2, "MXART");
				Assertions.assertTrue(response.isSuccess());
				// lock sur le premier fichier
				response = client.read(handle1, file, CommandReadDirection.NEXT, true);
				Assertions.assertEquals(1, response.lines.size());
				System.out.println(response.lines.get(0).getValue1().getFieldValue("CO1-MART"));
				System.out.println(response.lines.get(0).getValue1().getFieldValue("CO2-MART"));
			}
			
			{
				// la deuxième lecture avec un handle différent ne peut pas être réalisée (lock)
				Response response = client.read(handle2, file, CommandReadDirection.NEXT, true);
				// le pid de lock est indiqué
				Assertions.assertEquals(0, response.lines.size());
				Assertions.assertFalse(response.isSuccess());
				Assertions.assertEquals(1000, response.lockPid);
				// la lecture sans lock réussit
				response = client.read(handle2, file, CommandReadDirection.NEXT, false);
				Assertions.assertTrue(response.lines.size() > 1);
				System.out.println(response.lines.get(0).getValue1().getFieldValue("CO1-MART"));
				System.out.println(response.lines.get(0).getValue1().getFieldValue("CO2-MART"));
				// l'écriture échoue
				response = client.rewrite(handle2, file, response.lines.get(0).getValue1());
				Assertions.assertFalse(response.isSuccess());
				Assertions.assertEquals(1000, response.lockPid);
			}
			
			{
				// après le unlock, la lecture avec lock peut être réalisée
				Response response = client.unlock(handle1, file);
				Assertions.assertTrue(response.isSuccess());
				response = client.read(handle2, file, CommandReadDirection.NEXT, false);
				Assertions.assertTrue(response.lines.size() > 1);
			}
		} finally {
			Response response = client.close(handle1, file);
			Assertions.assertTrue(response.isSuccess());
			response = client.close(handle2, file);
		}
	}

	@Test
	public void testImports() throws IOException {
		Stopwatch sw = Stopwatch.createStarted();
		testImportAttach();
		testImportAttcla();
		testImportAttrel();
		testImportAgence();
		testImportArticle();
		testImportArticleStock();
		testImportBdis();
		testImportCatFou();
		testImportCli();
		testImportClid();
		testImportComment();
		testImportDestar();
		testImportDoctec();
		testImportFournisseur();
		testImportHisvte();
		testImportLdis();
		testImportMarque();
		testImportAgedis();
		testImportCartec();
		testImportCartecs();
		testImportChacli();
		testImportDoctecext();
		testImportFamart();
		testImportGrafad();
		testImportGrafam();
		testImportPregen();
		testImportPregenv();
		sw.stop();
		LOGGER.info("Fichiers importés en {} s.", sw.elapsed(TimeUnit.SECONDS));
	}

	@Test
	public void testImportAttach() throws IOException {
		String filename = "ATTACH";
		String importFilename = ROOT.resolve(filename + ".dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportAttcla() throws IOException {
		String filename = "ATTCLA";
		String importFilename = ROOT.resolve(filename + ".dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportAttrel() throws IOException {
		String filename = "ATTREL";
		String importFilename = ROOT.resolve(filename + ".dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportAgence() throws IOException {
		String filename = "MXAGENCE";
		String importFilename = ROOT.resolve("AGENCE.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportArticle() throws IOException {
		String filename = "MXART";
		String importFilename = ROOT.resolve("ART.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportArticleStock() throws IOException {
		String filename = "MXARTSA";
		String importFilename = ROOT.resolve("ARTSA.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportBdis() throws IOException {
		String filename = "MXBDIS";
		String importFilename = ROOT.resolve("BDIS.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportCatFou() throws IOException {
		String filename = "MXCATFOU";
		String importFilename = ROOT.resolve("CATFOU.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportClid() throws IOException {
		String filename = "MXCLID";
		String importFilename = ROOT.resolve("CLID.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportCli() throws IOException {
		String filename = "MXCLI";
		String importFilename = ROOT.resolve("CLI.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportComment() throws IOException {
		String filename = "MXCOMMENT";
		String importFilename = ROOT.resolve("COMMENT.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportHisvte() throws IOException {
		String filename = "MXHISVTE";
		String importFilename = ROOT.resolve("HISVTE.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportLdis() throws IOException {
		String filename = "MXLDIS";
		String importFilename = ROOT.resolve("LDIS.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportFournisseur() throws IOException {
		String filename = "MXFOU";
		String importFilename = ROOT.resolve("FOU.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportDoctec() throws IOException {
		String filename = "MXDOCTEC";
		String importFilename = ROOT.resolve("DOCTEC.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportDestar() throws IOException {
		String filename = "MXDESTAR";
		String importFilename = ROOT.resolve("DESTAR.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportMarque() throws IOException {
		String filename = "MXMARQUE";
		String importFilename = ROOT.resolve("MARQUE.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportAgedis() throws IOException {
		String filename = "MXAGEDIS";
		String importFilename = ROOT.resolve("AGEDIS.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportCartec() throws IOException {
		String filename = "MXCARTEC";
		String importFilename = ROOT.resolve("CARTEC.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportCartecs() throws IOException {
		String filename = "MXCARTECS";
		String importFilename = ROOT.resolve("CARTECS.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportChacli() throws IOException {
		String filename = "MXCHACLI";
		String importFilename = ROOT.resolve("CHACLI.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportDoctecext() throws IOException {
		String filename = "MXDOCTECEXT";
		String importFilename = ROOT.resolve("DOCTECEXT.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportFamart() throws IOException {
		String filename = "MXFAMART";
		String importFilename = ROOT.resolve("FAMART.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportGrafad() throws IOException {
		String filename = "MXGRAFAD";
		String importFilename = ROOT.resolve("GRAFAD.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportGrafam() throws IOException {
		String filename = "MXGRAFAM";
		String importFilename = ROOT.resolve("GRAFAM.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportPregen() throws IOException {
		String filename = "MXPREGEN";
		String importFilename = ROOT.resolve("PREGEN.dat").toString();
		doImport(filename, importFilename);
	}

	@Test
	public void testImportPregenv() throws IOException {
		String filename = "MXPREGENV";
		String importFilename = ROOT.resolve("PREGENV.dat").toString();
		doImport(filename, importFilename);
	}

	private void doImport(String filename, String importFilename) throws UnknownHostException, IOException {
		try {
			Stopwatch sw = Stopwatch.createStarted();
			client.open(filename, filename);
			Assertions.assertTrue(client.importFile(filename, filename, importFilename));
			sw.stop();
			LOGGER.info("Fichier {} importés en {} s.", filename, sw.elapsed(TimeUnit.SECONDS));
		} finally {
			client.close(filename, filename);
		}
	}

}
