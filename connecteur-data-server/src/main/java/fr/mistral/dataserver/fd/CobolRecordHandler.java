package fr.mistral.dataserver.fd;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import fr.mistral.dataserver.handlers.*;
import fr.mistral.dataserver.lock.LockOwner;
import fr.mistral.dataserver.model.mx.*;
import fr.mistral.dataserver.server.FixedLengthUnbufferedByteReader;
import fr.mistral.dataserver.server.FixedLengthUnbufferedByteWriter;
import fr.mistral.dataserver.server.IDataHandler;
import fr.mistral.dataserver.server.IDataHandlerInitializer;
import fr.mistral.jrecord.FdFileHelper;
import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.Line;
import net.sf.JRecord.IO.AbstractLineWriter;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;
import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

public class CobolRecordHandler {

	private static final int ERROR_NOT_FOUND_CODE = 10;
	private static final int ERROR_DUPLICATE_CODE = 20;
	private static final int ERROR_SYS_ERR_CODE = 30;
	private static final int ERROR_LOCKED_CODE = 99;

	private static final String ERROR_ENREGISTREMENT_NON_TROUVE = "Enregistrement non trouvé";
	private static final String ERROR_ENREGISTREMENT_VERROUILLE = "Enregistrement verrouillé";
	private static final String ERROR_DUPLICATE = "Contrainte de clé non respectée";
	private static final String ERROR_SYSTEME = "Erreur système";

	private static final Logger LOGGER = LoggerFactory.getLogger(CobolRecordHandler.class);

	private final ICobolIOBuilder commonCmdBuilder;
	private final ICobolIOBuilder openCmdBuilder;
	private final ICobolIOBuilder readCmdBuilder;
	private final ICobolIOBuilder startCmdBuilder;
	private final ICobolIOBuilder rewriteCmdBuilder;
	private final ICobolIOBuilder deleteCmdBuilder;
	private final ICobolIOBuilder importCmdBuilder;
	private final ICobolIOBuilder internalStatusBuilder;
	private final ICobolIOBuilder internalErrorBuilder;
	private final ICobolIOBuilder recordNumberBuilder;

	private final Map<String, IDataHandler> dataBuilders;

	/**
	 * Pour une utilisation côté client (pas de support de l'accès BDD)
	 */
	public static CobolRecordHandler client() {
		return new CobolRecordHandler();
	}

	/**
	 * Pour une utilisation côté serveur
	 */
	public static CobolRecordHandler server(IDataHandlerInitializer dataHandlerInitializer) {
		return new CobolRecordHandler(dataHandlerInitializer);
	}

	/**
	 * Pour une utilisation serveur, il faut fournir un dataHandlerInitializer
	 */
	private CobolRecordHandler() {
		this(null);
	}

	/**
	 * dataHandlerInitializer peut être null pour le client ; il doit être non-null pour un fonctionnement serveur
	 * (il fournit l'accès à la base de données).
	 */
	private CobolRecordHandler(IDataHandlerInitializer dataHandlerInitializer) {
		try {
			this.commonCmdBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_COMMON_CMD_RECORD_NAME);
			this.openCmdBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_OPEN_CMD_RECORD_NAME);
			this.readCmdBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_READ_CMD_RECORD_NAME);
			this.startCmdBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_START_CMD_RECORD_NAME);
			this.rewriteCmdBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_REWRITE_CMD_RECORD_NAME);
			this.deleteCmdBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_DELETE_CMD_RECORD_NAME);
			this.importCmdBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_IMPORT_CMD_RECORD_NAME);
			this.internalStatusBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_INTERNAL_STATUS);
			this.internalErrorBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_INTERNAL_ERROR);
			this.recordNumberBuilder = FdFileHelper.newIOBuilderFromMultiCopybook(DataServerFdConstants.DSCLIENT_MESSAGES_RESOURCE_PATH,
					DataServerFdConstants.DSCLIENT_RESPONSE_RECORD_NUMBER);
			
			AbstractDataHandler<Marque> marque = new MarqueHandler();
			AbstractDataHandler<Agence> agence = new AgenceHandler();
			AbstractDataHandler<Article> article = new ArticleHandler();
			AbstractDataHandler<ArticleStock> articleStock = new ArticleStockHandler();
			AbstractDataHandler<Bdis> bdis = new BdisHandler();
			AbstractDataHandler<CatFou> catFou = new CatFouHandler();
			AbstractDataHandler<Cli> cli = new CliHandler();
			AbstractDataHandler<Clid> clid = new ClidHandler();
			AbstractDataHandler<Comment> comment = new CommentHandler();
			AbstractDataHandler<Destar> destar = new DestarHandler();
			AbstractDataHandler<Doctec> doctec = new DoctecHandler();
			AbstractDataHandler<Fournisseur> fournisseur = new FournisseurHandler();
			AbstractDataHandler<Hisvte> hisvte = new HisvteHandler();
			AbstractDataHandler<Ldis> ldis = new LdisHandler();
			AbstractDataHandler<PieceJointe> pieceJointe = new PieceJointeHandler();
			AbstractDataHandler<PieceJointeClassification> pieceJointeClassification = new PieceJointeClassificationHandler();
			AbstractDataHandler<Classification> classification = new ClassificationHandler();
			AbstractDataHandler<Agedis> agedis = new AgedisHandler();
			AbstractDataHandler<Cartec> cartec = new CartecHandler();
			AbstractDataHandler<Cartecs> cartecs = new CartecsHandler();
			AbstractDataHandler<Chacli> chacli = new ChacliHandler();
			AbstractDataHandler<Doctecext> doctecext= new DoctecextHandler();
			AbstractDataHandler<Famart> famart = new FamartHandler();
			AbstractDataHandler<Grafad> grafad = new GrafadHandler();
			AbstractDataHandler<Grafam> grafam = new GrafamHandler();
			AbstractDataHandler<Pregen> pregen = new PregenHandler();
			AbstractDataHandler<Pregenv> pregenv = new PregenvHandler();
			
			final ImmutableMap.Builder<String, IDataHandler> builder = ImmutableMap.builder();
			ImmutableList.of(agence, article, articleStock, bdis, catFou, classification, cli, clid, comment,
					destar, doctec, fournisseur, hisvte, marque, ldis, pieceJointe, pieceJointeClassification,
					agedis, cartec, cartecs, chacli, doctecext, famart, grafad, grafam, pregen, pregenv).stream().
				forEach(dataHandler -> {
					if (dataHandlerInitializer != null) {
						// mise en place de l'accès BDD sur le dataHandler
						// non nécessaire pour une utilisation client
						dataHandlerInitializer.init(dataHandler);
					}
					builder.put(dataHandler.getName(), dataHandler);
					for (String alias : dataHandler.getAliases()) {
						builder.put(alias, dataHandler);
					}
				
			});
			this.dataBuilders = builder.build();
		} catch (IOException e) {
			throw new IllegalStateException("Erreur d'initialisation des records Cobol", e);
		}
	}

	public void writeLine(ICobolIOBuilder ioBuilder, OutputStream outputStream, AbstractLine content) throws IOException {
		// le IByteWriter par défaut fill les données jusqu'à 32 octets, ce qui n'est pas fait par la couche réseau
		// Cobol. Cette implémentation alternative supprime cette fonctionnalité.
		ioBuilder.newWriter(new FixedLengthUnbufferedByteWriter(outputStream, ioBuilder.getLayout().getMaximumRecordLength())).write(content);
	}

	public Line readLine(ICobolIOBuilder ioBuilder, InputStream inputStream) throws IOException {
		// le IByteReader custom est nécessaire pour ne pas utiliser de bufferedStream qui
		// consommerait trop de données.
		return (Line) ioBuilder.newReader(new FixedLengthUnbufferedByteReader(inputStream, ioBuilder.getLayout().getMaximumRecordLength())).read();
	}

	public void writeSuccess(OutputStream outputStream) throws IOException {
		AbstractLine response = new Line(getInternalStatusBuilder().getLayout());
		response.getFieldValue(DataServerFdConstants.DSC_COMMAND_STATUS).set(0);
		response.getFieldValue(DataServerFdConstants.DSC_RECORD_COUNT).set(0);
		writeLine(getInternalStatusBuilder(), outputStream, response);
		outputStream.flush();
	}

	public void writeContentSuccess(OutputStream outputStream, ICobolIOBuilder ioBuilder, List<Pair<Long, AbstractLine>> record) throws IOException {
		AbstractLine response = new Line(getInternalStatusBuilder().getLayout());
		response.getFieldValue(DataServerFdConstants.DSC_COMMAND_STATUS).set(2);
		response.getFieldValue(DataServerFdConstants.DSC_RECORD_COUNT).set(record.size());
		writeLine(getInternalStatusBuilder(), outputStream, response);
		writeLines(ioBuilder, outputStream, record);
		outputStream.flush();
	}

	public void writeUnknownError(OutputStream outputStream, Throwable e) throws IOException {
		LOGGER.error("Erreur non répertoriée", e);
		writeFailure(outputStream, ERROR_SYS_ERR_CODE, ERROR_SYSTEME);
	}

	public void writeDuplicate(OutputStream outputStream, Object record, Throwable e) throws IOException {
		LOGGER.error("Erreur de contrainte pour l'enregistrement {}", record, e);
		writeFailure(outputStream, ERROR_DUPLICATE_CODE, ERROR_DUPLICATE);
	}

	public void writeNotFound(OutputStream outputStream) throws IOException {
		writeFailure(outputStream, ERROR_NOT_FOUND_CODE, ERROR_ENREGISTREMENT_NON_TROUVE);
	}

	public void writeLockedRecord(OutputStream outputStream, LockOwner lockOwner) throws IOException {
		writeFailure(outputStream, ERROR_LOCKED_CODE, ERROR_ENREGISTREMENT_VERROUILLE, lockOwner);
	}

	private void writeLines(ICobolIOBuilder ioBuilder, OutputStream outputStream, List<Pair<Long, AbstractLine>> content) throws IOException {
		// le IByteWriter par défaut fill les données jusqu'à 32 octets, ce qui n'est pas fait par la couche réseau
		// Cobol. Cette implémentation alternative supprime cette fonctionnalité.
		AbstractLineWriter writer = ioBuilder.newWriter(new FixedLengthUnbufferedByteWriter(outputStream, ioBuilder.getLayout().getMaximumRecordLength()));
		AbstractLineWriter recordNumberWriter = ioBuilder.newWriter(new FixedLengthUnbufferedByteWriter(outputStream, getRecordNumberBuilder().getLayout().getMaximumRecordLength()));
		Line recordNumberLine = new Line(getRecordNumberBuilder().getLayout());
		for (Pair<Long, AbstractLine> line : content) {
			recordNumberLine.setField(DataServerFdConstants.DSC_RECORD_NUMBER, line.getValue0());
			recordNumberWriter.write(recordNumberLine);
			writer.write(line.getValue1());
		}
	}

	private void writeFailure(OutputStream outputStream, int code, String message) throws IOException {
		writeFailure(outputStream, code, message, null);
	}

	private void writeFailure(OutputStream outputStream, int code, String message, LockOwner lockOwner)
			throws IOException {
		AbstractLine response = new Line(getInternalStatusBuilder().getLayout());
		AbstractLine error = new Line(getInternalErrorBuilder().getLayout());
		response.getFieldValue(DataServerFdConstants.DSC_COMMAND_STATUS).set(1);
		response.getFieldValue(DataServerFdConstants.DSC_RECORD_COUNT).set(0);
		error.getFieldValue(DataServerFdConstants.DSC_ERROR_CODE).set(code);
		error.getFieldValue(DataServerFdConstants.DSC_ERROR_MESSAGE).set(message);
		if (lockOwner != null) {
			error.getFieldValue(DataServerFdConstants.DSC_LOCK_PID).set(lockOwner.getProcessId());
		} else {
			error.getFieldValue(DataServerFdConstants.DSC_LOCK_PID).set(0);
		}
		writeLine(getInternalStatusBuilder(), outputStream, response);
		writeLine(getInternalErrorBuilder(), outputStream, error);
		outputStream.flush();
	}

	public ICobolIOBuilder getCommonCmdBuilder() {
		return commonCmdBuilder;
	}

	public ICobolIOBuilder getOpenCmdBuilder() {
		return openCmdBuilder;
	}

	public ICobolIOBuilder getReadCmdBuilder() {
		return readCmdBuilder;
	}

	public ICobolIOBuilder getStartCmdBuilder() {
		return startCmdBuilder;
	}

	public ICobolIOBuilder getRewriteCmdBuilder() {
		return rewriteCmdBuilder;
	}

	public ICobolIOBuilder getDeleteCmdBuilder() {
		return deleteCmdBuilder;
	}

	public ICobolIOBuilder getImportCmdBuilder() {
		return importCmdBuilder;
	}

	public ICobolIOBuilder getInternalStatusBuilder() {
		return internalStatusBuilder;
	}

	public ICobolIOBuilder getInternalErrorBuilder() {
		return internalErrorBuilder;
	}

	public ICobolIOBuilder getRecordNumberBuilder() {
		return recordNumberBuilder;
	}

	public Map<String, IDataHandler> getDataBuilders() {
		return dataBuilders;
	}

}
