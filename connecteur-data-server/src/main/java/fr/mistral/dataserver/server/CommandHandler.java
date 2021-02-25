package fr.mistral.dataserver.server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.hibernate.exception.ConstraintViolationException;
import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Stopwatch;

import fr.mistral.dataserver.command.CommandContext;
import fr.mistral.dataserver.command.CommandKeyOperator;
import fr.mistral.dataserver.command.CommandOpenMode;
import fr.mistral.dataserver.command.CommandReadDirection;
import fr.mistral.dataserver.command.DataServerCommand;
import fr.mistral.dataserver.command.KeyIdentifier;
import fr.mistral.dataserver.context.FileContext;
import fr.mistral.dataserver.context.FileContextHolder;
import fr.mistral.dataserver.context.FileContextRegistry;
import fr.mistral.dataserver.exceptions.UnknownCommand;
import fr.mistral.dataserver.fd.CobolRecordHandler;
import fr.mistral.dataserver.fd.DataServerFdConstants;
import fr.mistral.dataserver.lock.LockHandler;
import fr.mistral.dataserver.lock.LockOwner;
import fr.mistral.socket.ISocketHandler;
import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.Line;
import net.sf.JRecord.Details.fieldValue.IFieldValue;
import net.sf.JRecord.IO.AbstractLineReader;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public class CommandHandler implements ISocketHandler {

	private static final Logger LOGGER = LoggerFactory.getLogger(CommandHandler.class);

	private final LockHandler lockHandler;
	private final CobolRecordHandler cobolRecordHandler;
	private final FileContextRegistry fileContextRegistry;
	// TODO: supprimer activateCounter, counter et watch
	private boolean activateCounter = false;
	private Integer counter = 0;
	private Stopwatch watch = Stopwatch.createUnstarted();

	public CommandHandler(CobolRecordHandler cobolRecordHandler, LockHandler lockHandler) {
		this.lockHandler = lockHandler;
		this.fileContextRegistry = new FileContextRegistry();
		this.cobolRecordHandler = cobolRecordHandler;
	}

	/**
	 * Utilisé pour les tests pour remettre à zéro le contexte entre les tests
	 */
	public void closeAll() {
		for (FileContext fileContext : fileContextRegistry.listContexts()) {
			closeFileContext(fileContext);
		}
	}

	@Override
	public void handleCommand(InputStream inputStream, OutputStream outputStream) throws IOException {
		// Ce wrapper permet de détecter si on a commencé à envoyer une réponse
		OutputStreamWrapper wrapper = new OutputStreamWrapper(outputStream);
		
		boolean commandExecuted = false;
		CommandContext commandContext = null;
		try {
			commandContext = parseContext(inputStream);
			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("{}: begin {}", commandContext.getCommand().name(), commandContext.getFilename());
			}
			installFileContext(commandContext);
			FileContext fc = FileContextHolder.getCurrentFileContext();
			switch (commandContext.getCommand()) {
			case OPEN:
				handleOpen(inputStream, wrapper);
				break;
			case CLOSE:
				handleClose(wrapper);
				break;
			case READ:
				unlockCurrent(fc);
				handleRead(inputStream, wrapper);
				break;
			case START:
				unlockCurrent(fc);
				handleStart(inputStream, wrapper);
				break;
			case WRITE:
				unlockCurrent(fc);
				handleWrite(inputStream, wrapper);
				break;
			case REWRITE:
				unlockCurrent(fc);
				handleRewrite(inputStream, wrapper);
				break;
			case DELETE:
				unlockCurrent(fc);
				handleDelete(inputStream, wrapper);
				break;
			case UNLOCK:
				handleUnlock(inputStream, wrapper);
				break;
			case IMPORT:
				handleImport(inputStream, wrapper);
				break;
			}
			commandExecuted = true;
		} catch (RuntimeException e) {
			// TODO: modifier le mécanisme pour qu'on sache combien de d'octet il faut lire pour vider l'input stream
			// on temporise la lecture de l'input stream car si on échoue de manière précoce, des informations peuvent
			// ne pas encore être envoyée par le client
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e2) {
				Thread.currentThread().interrupt();
			}
			while (inputStream.available() != 0) {
				// si l'erreur est précoce, on peut avoir des données non lues dans l'inputstream
				inputStream.readNBytes(inputStream.available());
				
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e2) {
					Thread.currentThread().interrupt();
				}
			}
			// Pas de réponse envoyée, on peut signaler l'erreur
			if (wrapper.isUsed()) {
				// On a déjà commencé à envoyer une réponse au client
				// Dans ce cas, on a théoriquement lu toutes les données disponibles
				LOGGER.error("Erreur non répertoriée et non diffusée au client", e);
			} else {
				LOGGER.error("Erreur non répertoriée et diffusée au client", e);
				writeUnknownError(wrapper, e);
			}
		} finally {
			if (commandContext != null) {
				releaseFileContext(commandContext, commandExecuted);
				if (LOGGER.isInfoEnabled()) {
					LOGGER.info("{}: end", commandContext.getCommand().name());
				}
			}
		}
	}

	private void handleRewrite(InputStream inputStream, OutputStream outputStream) throws IOException {
		IDataHandler dataHandler = getDataBuilders().get(FileContextHolder.getCurrentFileContext().getFilename());
		
		// lecture de la clé et de l'enregistrement
		Line rewriteCommand = readLine(getRewriteCmdBuilder(), inputStream);
		Line record = readRecord(rewriteCommand, inputStream, dataHandler);
		
		if (LOGGER.isInfoEnabled()) {
			LOGGER.info("REWRITE key={} record={}", dataHandler.recordKeyToString(record), record.getFullLine());
		}
		
		// vérification de l'enregistrement et du lock
		LineResult readResult = dataHandler.doRead(KeyIdentifier.fromCommand(null, null), record);
		
		LockOwner lockOwner = null;
		lockOwner = getLockedByOther(FileContextHolder.getCurrentFileContext(), readResult.getRecordNumber());
		if (! readResult.isFound()) {
			writeNotFound(outputStream);
		} else if (lockOwner != null) {
			writeLockedRecord(outputStream, lockOwner);
		} else {
			try {
				// récupération de l'entité et mise à jour
				LineResult result = dataHandler.doUpdate(record);
				
				if (! result.isFound()) {
					writeNotFound(outputStream);
				} else {
					writeSuccess(outputStream);
				}
			} catch (ConstraintViolationException e) {
				writeDuplicate(outputStream, record, e);
			}
		}
	}

	private void handleWrite(InputStream inputStream, OutputStream outputStream) throws IOException {
		IDataHandler dataHandler = getDataBuilders().get(FileContextHolder.getCurrentFileContext().getFilename());
		ICobolIOBuilder cobolBuilder = dataHandler.getIOBuilder();
		AbstractLine record = cobolBuilder.newReader(inputStream).read();
		LOGGER.info("WRITE record={}", record);
		
		if (activateCounter && counter == 0) {
			watch.start();
		}
		
		// insert new entity
		try {
			LineResult result = dataHandler.doInsert(record);
			
			if (! result.isFound()) {
				writeNotFound(outputStream);
			} else {
				writeSuccess(outputStream);
			}
		} catch (ConstraintViolationException e) {
			writeDuplicate(outputStream, record, e);
		}
		
		if (activateCounter) {
			counter++;
			if (counter > 0 && counter%100 == 0) {
				LOGGER.warn("{} lignes en {} ms.", counter, watch.elapsed(TimeUnit.MILLISECONDS));
			}
		}
	}

	private void handleUnlock(InputStream inputStream, OutputStream outputStream) throws IOException {
		FileContext fc = FileContextHolder.getCurrentFileContext();
		LOGGER.info("UNLOCK file={}", fc.getFilename());
		
		lockHandler.releaseAllLocks(new LockOwner(fc.getProcessId(), fc.getFileIdentifier()));
		writeSuccess(outputStream);
	}

	private void handleStart(InputStream inputStream, OutputStream outputStream) throws IOException {
		// read filter instruction (key-name, key-value, operator)
		IDataHandler dataHandler = getDataBuilders().get(FileContextHolder.getCurrentFileContext().getFilename());
		IFieldValue keyName;
		Integer keyNumber = -1;
		IFieldValue keyOperator;
		Line startCommand = readLine(getStartCmdBuilder(), inputStream);
		Line record = readRecord(startCommand, inputStream, dataHandler);
		keyName = startCommand.getFieldValue(DataServerFdConstants.START_KEY_NAME_CMD);
		keyNumber = startCommand.getFieldValue(DataServerFdConstants.START_KEY_NUMBER_CMD).asInt();
		KeyIdentifier keyIdentifier = KeyIdentifier.fromCommand(null, null);
		if (! keyName.isLowValues() || keyNumber >= 0) {
			keyIdentifier = KeyIdentifier.fromCommand(keyNumber, keyName.asString());
		}
		if (LOGGER.isInfoEnabled()) {
			LOGGER.info("START key-name={}, key-number={}, key-value={}, key-operator={}",
					startCommand.getFieldValue(DataServerFdConstants.START_KEY_NAME_CMD),
					startCommand.getFieldValue(DataServerFdConstants.START_KEY_NUMBER_CMD),
					dataHandler.keyToString(keyIdentifier, record),
					startCommand.getFieldValue(DataServerFdConstants.START_KEY_OPERATOR_CMD));
		}
		keyOperator = startCommand.getFieldValue(DataServerFdConstants.START_KEY_OPERATOR_CMD);
		
		CommandKeyOperator keyOperatorObject = null;
		if (! keyOperator.isLowValues()) {
			keyOperatorObject = CommandKeyOperator.map(keyOperator.asString());
		}
		if (keyOperatorObject == null) {
			keyOperatorObject = CommandKeyOperator.EQUAL;
		}
		
		// find first result
		LineResult result = dataHandler.doStart(keyIdentifier, record, keyOperatorObject);
		
		if (! result.isFound()) {
			writeNotFound(outputStream);
		} else {
			// set cursor and store to FileContextRegistry
			// store key of reference (keyName) and current position (keyValue)
			FileContext fileContext = FileContextHolder.getCurrentFileContext();
			fileContext.setKeyName(result.getKeyName());
			fileContext.setKeyValue(result.getKey());
			fileContext.setRecordKeyValue(result.getRecordKey());
			fileContext.setRecordNumber(result.getRecordNumber());
			fileContext.setLastPositionCommand(DataServerCommand.START);
			writeSuccess(outputStream);
		}
	}

	private Line readRecord(Line command, InputStream inputStream, IDataHandler dataHandler) throws IOException {
		Integer recordLength = -1;
		try {
			recordLength = command.getFieldValue(DataServerFdConstants.RECORD_SIZE_CMD).asInt();
		} catch (RuntimeException e) {
			throw new IllegalStateException(String.format("Le champ %s n'a pas pu être extrait de la commande", DataServerFdConstants.RECORD_SIZE_CMD), e);
		}
		if (recordLength != dataHandler.getIOBuilder().getLayout().getMaximumRecordLength()) {
			throw new IllegalStateException(String.format("Taille attendue java=%d ne correspond pas à la taille envoyée cobol=%d pour le fichier %s",
					dataHandler.getIOBuilder().getLayout().getMaximumRecordLength(), recordLength, dataHandler.getName()));
		}
		return readLine(dataHandler.getIOBuilder(), inputStream);
	}

	private void handleRead(InputStream inputStream, OutputStream outputStream) throws IOException {
		// read instruction (either key name/value for direct access or find from current position
		Line readCommand = readLine(getReadCmdBuilder(), inputStream);
		IDataHandler dataHandler = getDataBuilders().get(FileContextHolder.getCurrentFileContext().getFilename());
		Line record = readRecord(readCommand, inputStream, dataHandler);
		IFieldValue keyName = readCommand.getFieldValue(DataServerFdConstants.READ_KEY_NAME_CMD);
		Integer keyNumber = readCommand.getFieldValue(DataServerFdConstants.READ_KEY_NUMBER_CMD).asInt();
		KeyIdentifier keyIdentifier = KeyIdentifier.fromCommand(keyNumber, keyName.asString());
		if (LOGGER.isInfoEnabled()) {
			LOGGER.info("READ key-name={}, key-number={}, key-value={}, record-number={}, direction={}, lock={}, cache-count={}",
					readCommand.getFieldValue(DataServerFdConstants.READ_KEY_NAME_CMD),
					readCommand.getFieldValue(DataServerFdConstants.READ_KEY_NUMBER_CMD),
					dataHandler.keyToString(keyIdentifier, record),
					readCommand.getFieldValue(DataServerFdConstants.READ_RECORD_NUMBER_CMD),
					readCommand.getFieldValue(DataServerFdConstants.READ_DIRECTION_CMD),
					readCommand.getFieldValue(DataServerFdConstants.READ_LOCK_CMD),
					readCommand.getFieldValue(DataServerFdConstants.READ_CACHE_COUNT_CMD));
		}
		FileContext fileContext = FileContextHolder.getCurrentFileContext();
		LineResult result = null;
		Long recordNumber = readCommand.getFieldValue(DataServerFdConstants.READ_RECORD_NUMBER_CMD).asLong();
		Integer cacheCount = readCommand.getFieldValue(DataServerFdConstants.READ_CACHE_COUNT_CMD).asInt();
		IFieldValue directionValue = readCommand.getFieldValue(DataServerFdConstants.READ_DIRECTION_CMD);
		boolean withLock = readCommand.getFieldValue(DataServerFdConstants.READ_LOCK_CMD).asInt() == 1;
		
		CommandReadDirection direction = null;
		if (! directionValue.isLowValues()) {
			direction = CommandReadDirection.valueOf(directionValue.asString());
		}
		
		if (direction == null) {
			// recherche sur couple clé-valeur
			// recordNumber est ignoré
			// cacheCount est ignoré
			// direction est ignoré (car null)
			result = dataHandler.doRead(keyIdentifier, record);
		} else {
			// recherche next ou previous, avec prise en compte du préchargement
			// si on a un recordNumber c'est qu'il faut recaler le parcours car un parcours par cache a été utilisé
			if (withLock) {
				// si lock demandé :
				// - la requête est obligatoirement effectuée côté client cobol, car cela veut dire qu'on veut un résultat
				// - on retourne uniquement le résultat demandé, car il faut s'assurer que le prochain appel I/O fera une
				//   requête sur le serveur pour que le lock soit supprimé (si on remplissait le cache, on ne recevrait pas
				//   cet appel).
				cacheCount = 1;
			} else if (cacheCount == null || cacheCount == 0) {
				// TODO : décider de l'algorithme de détermination de la taille de cache
				cacheCount = 500;
			}
			
			result = dataHandler.doReadContextual(direction, recordNumber, record, cacheCount);
		}
		
		LockOwner lockOwner = null;
		if (withLock) {
			lockOwner = getLockedByOther(FileContextHolder.getCurrentFileContext(), result.getRecordNumber());
		}
		
		if (! result.isFound()) {
			fileContext.updateContext(DataServerCommand.READ, direction, result);
			writeNotFound(outputStream);
		} else if (lockOwner != null) {
			// si lock, on ne change pas de position
			writeLockedRecord(outputStream, lockOwner);
		} else {
			fileContext.updateContext(DataServerCommand.READ, direction, result);
			writeContentSuccess(
					outputStream,
					dataHandler.getIOBuilder(),
					result.getLines());
			if (withLock) {
				lockCurrent(fileContext);
			}
		}
	}

	private void handleClose(OutputStream outputStream) throws IOException {
		LOGGER.info("CLOSE");
		FileContext fc = FileContextHolder.getCurrentFileContext();
		closeFileContext(fc);
		// le contexte est détruit dans le release
		writeSuccess(outputStream);
	}

	private void closeFileContext(FileContext fileContext) {
		lockHandler.releaseAllLocks(new LockOwner(fileContext.getProcessId(), fileContext.getFileIdentifier()));
		fileContextRegistry.removeContext(fileContext);
	}

	private void handleOpen(InputStream inputStream, OutputStream outputStream) throws IOException {
		// lire le mode d'ouverture
		AbstractLine openCommand = readLine(getOpenCmdBuilder(), inputStream);
		FileContext context = FileContextHolder.getCurrentFileContext();
		fileContextRegistry.storeContext(context);
		String mode = openCommand.getFieldValue(DataServerFdConstants.OPEN_MODE_CMD).asString();
		LOGGER.info("OPEN mode={}", mode);
		context.setMode(CommandOpenMode.map(mode));
		
		// set cursor and store to FileContextRegistry
		FileContext fileContext = FileContextHolder.getCurrentFileContext();
		fileContext.setLastPositionCommand(DataServerCommand.OPEN);
		fileContext.setKeyValue(null);
		fileContext.setKeyName(null);
		fileContext.setRecordKeyValue(null);
		fileContext.setRecordNumber(null);
		
		writeSuccess(outputStream);
	}

	private void handleImport(InputStream inputStream, OutputStream outputStream) throws IOException {
		// lire le mode d'ouverture
		AbstractLine importCommand = readLine(getImportCmdBuilder(), inputStream);
		FileContext context = FileContextHolder.getCurrentFileContext();
		fileContextRegistry.storeContext(context);
		String filename = importCommand.getFieldValue(DataServerFdConstants.IMPORT_IMPORT_FILENAME_CMD).asString();
		LOGGER.info("IMPORT filename={}", filename);
		
		IDataHandler dataHandler = getDataBuilders().get(context.getFilename());
		ICobolIOBuilder builder = dataHandler.getIOBuilder();
		AbstractLineReader reader = builder.newReader(filename);
		dataHandler.doImport(
				() -> {
					try { return reader.read(); }
					catch (IOException e) { throw new IllegalStateException(e); } 
			}
		);
		writeSuccess(outputStream);
	}

	private void handleDelete(InputStream inputStream, OutputStream outputStream) throws IOException {
		Line deleteCommand = readLine(getDeleteCmdBuilder(), inputStream);
		IDataHandler dataHandler = getDataBuilders().get(FileContextHolder.getCurrentFileContext().getFilename());
		Line record = readRecord(deleteCommand, inputStream, dataHandler);
		if (LOGGER.isInfoEnabled()) {
			LOGGER.info("DELETE key={}", dataHandler.recordKeyToString(record));
		}
		
		// vérification de l'enregistrement et du lock
		LineResult readResult = dataHandler.doRead(KeyIdentifier.fromCommand(null, null), record);
		
		LockOwner lockOwner = null;
		lockOwner = getLockedByOther(FileContextHolder.getCurrentFileContext(), readResult.getRecordNumber());
		if (! readResult.isFound()) {
			writeNotFound(outputStream);
		} else if (lockOwner != null) {
			writeLockedRecord(outputStream, lockOwner);
		} else {
			// exécution de la suppression
			LineResult deletedResult = dataHandler.doDelete(record);
			if (! deletedResult.isFound()) {
				writeNotFound(outputStream);
			} else {
				writeSuccess(outputStream);
			}
		}
	}

	private CommandContext parseContext(InputStream inputStream) throws IOException {
		AbstractLine line = readLine(getCommonCmdBuilder(), inputStream);
		CommandContext context = new CommandContext();
		context.setProcessId(line.getFieldValue(DataServerFdConstants.PROCESS_ID_CMD).asInt());
		context.setFilename(line.getFieldValue(DataServerFdConstants.FILENAME_CMD).asString());
		// Historiquement la première implémentation utilisait le nom de fichier comme identifiant de contexte
		// Après le passage à c$redirect :
		// * le nom de fichier étant un nom de fichier réel, il ne permet plus de distinguer les accès MXART et MXART2
		// * quand on est dans un sous-programme, on peut ouvrir à nouveau un fichier avec un nouveau descripteur
		//
		// L'utilisation du handler-file-handle a été introduit pour identifier le fichier
		// On utilise la représentation hexadécimale de la donnée binaire présente dans HANDLE_CMD
		if (! line.getFieldValue(DataServerFdConstants.HANDLE_CMD).isLowValues()) {
			String handle = line.getFieldValue(DataServerFdConstants.HANDLE_CMD).asHex();
			context.setFileHandle(handle);
		} else {
			context.setFileHandle(null);
		}
		// la couche C$REDIRECT envoie le nom de fichier non modifié
		if (context.getFilename().startsWith("DB:")) {
			context.setFilename(context.getFilename().substring(3));
		}
		String command = line.getFieldValue(DataServerFdConstants.COMMAND_CMD).asString();
		DataServerCommand dataServerCommand = DataServerCommand.map(command);
		if (dataServerCommand == null) {
			throw new UnknownCommand(String.format("Unknown command %s", command));
		}
		context.setCommand(dataServerCommand);
		
		return context;
	}

	private void installFileContext(CommandContext commandContext) {
		FileContext context = fileContextRegistry.getContext(commandContext);
		if (DataServerCommand.OPEN.equals(commandContext.getCommand())) {
			// Cas spécifique de l'ouverture : il faut créer le contexte
			if (context != null) {
				// Ce cas est géré par le handler C$REDIRECT ; il ne doit pas se produire.
				// (au moment de l'ouverture, le handler vérifie si le fichier est déjà ouvert avec le bon mode).
				LOGGER.warn("Le fichier {} est déjà ouvert pour le process {}", commandContext.getFilename(),
						commandContext.getProcessId());
			} else {
				if (LOGGER.isDebugEnabled()) {
					LOGGER.debug("[{}] Context {} created",
							commandContext.getCommand().name(), commandContext.getContextKey());
				}
				if (!getDataBuilders().containsKey(commandContext.getFilename())) {
					throw new IllegalStateException(String.format("Filename %s non connu", commandContext.getFilename()));
				}
				context = new FileContext();
				context.setFilename(commandContext.getFilename());
				context.setFileHandle(commandContext.getFileHandle());
				context.setTablename(getDataBuilders().get(commandContext.getFilename()).getName());
				context.setProcessId(commandContext.getProcessId());
			}
		} else {
			if (context == null) {
				// Ce cas est géré par le handler C$REDIRECT ; il ne doit pas se produire.
				// (au moment de l'ouverture, le handler vérifie si le fichier est déjà ouvert).
				throw new IllegalStateException(String.format("Le fichier %s n'est pas ouvert pour le process %d",
						commandContext.getFilename(), commandContext.getProcessId()));
			}
		}
		
		if (!context.getContextKey().equals(commandContext.getContextKey())) {
			// vérification de cohérence
			throw new IllegalStateException(String.format("Clé de contexte incohérente: %s != %s",
					context.getContextKey(), commandContext.getContextKey()));
		}
		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("[{}] ThreadLocal {} installed", commandContext.getCommand().name(), context.getContextKey());
		}
		FileContextHolder.setCurrentFileContext(context);
	}

	private void releaseFileContext(CommandContext commandContext, boolean commandExecuted) {
		FileContext context = FileContextHolder.getCurrentFileContext();
		// on supprime le contexte du thread-local pour que le serveur soit dans un état cohérent
		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("[{}] ThreadLocal {} removed", commandContext.getKeyValue(), context.getContextKey());
		}
		FileContextHolder.removeCurrentFileContext();
		
		// on procède à des vérifications de cohérence dans les cas où on n'a pas été interrompu par une exception
		if (! DataServerCommand.CLOSE.equals(commandContext.getCommand()) && commandExecuted) {
			// on fait des vérifications de cohérence entre la commande et le fileContext
			// pour potentiellement détecter des bugs
			if (context == null) {
				throw new IllegalStateException(String.format("Contexte non trouvé pour le fichier %s, process %s",
						commandContext.getFilename(), commandContext.getProcessId()));
			}
			if (!context.getContextKey().equals(commandContext.getContextKey())) {
				throw new IllegalStateException(String.format("Clé de contexte non cohérente %s != %s",
						commandContext.getContextKey(), context.getContextKey()));
			}
		} else if (commandExecuted && fileContextRegistry.getContext(commandContext) != null) {
			// le contexte doit être présent en thread-local, mais plus présent dans le registry
			throw new IllegalStateException(String.format("Contexte non supprimé par CLOSE pour le fichier %s, process %s",
					commandContext.getFilename(), commandContext.getProcessId()));
		}
	}

	private Line readLine(ICobolIOBuilder ioBuilder, InputStream inputStream) throws IOException {
		return cobolRecordHandler.readLine(ioBuilder, inputStream);
	}

	private void writeSuccess(OutputStream outputStream) throws IOException {
		cobolRecordHandler.writeSuccess(outputStream);
	}

	private void writeContentSuccess(OutputStream outputStream, ICobolIOBuilder ioBuilder, List<Pair<Long, AbstractLine>> record) throws IOException {
		cobolRecordHandler.writeContentSuccess(outputStream, ioBuilder, record);
	}

	private void writeUnknownError(OutputStream outputStream, Throwable e) throws IOException {
		cobolRecordHandler.writeUnknownError(outputStream, e);
	}

	private void writeDuplicate(OutputStream outputStream, Object record, Throwable e) throws IOException {
		cobolRecordHandler.writeDuplicate(outputStream, record, e);
	}

	private void writeNotFound(OutputStream outputStream) throws IOException {
		cobolRecordHandler.writeNotFound(outputStream);
	}

	private void writeLockedRecord(OutputStream outputStream, LockOwner lockOwner) throws IOException {
		cobolRecordHandler.writeLockedRecord(outputStream, lockOwner);
	}

	private void extractAsText(String filename) {
		try {
			getDataBuilders().get(filename).extractAsText();
		} catch (IOException e) {
			LOGGER.error("Erreur d'extraction texte", e);
		}
	}

	private LockOwner getLockedByOther(FileContext fileContext, Long recordNumber) {
		return lockHandler.getLockedByOther(new LockOwner(fileContext.getProcessId(), fileContext.getFileIdentifier()),
				fileContext.getTablename(), recordNumber);
	}

	private void lockCurrent(FileContext fileContext) {
		if (fileContext.getRecordNumber() != null) {
			LockOwner lockOwner = new LockOwner(fileContext.getProcessId(), fileContext.getFileIdentifier());
			lockHandler.lockResource(lockOwner,
					fileContext.getTablename(), fileContext.getRecordNumber());
		}
	}

	private void unlockCurrent(FileContext fileContext) {
		if (fileContext.getRecordNumber() != null && DataServerCommand.READ.equals(fileContext.getLastPositionCommand())) {
			LockOwner lockOwner = new LockOwner(fileContext.getProcessId(), fileContext.getFileIdentifier());
			// TODO : WITH MULTIPLE RECORDS -> le unlock n'est pas automatique
			lockHandler.releaseLock(lockOwner,
					fileContext.getTablename(), fileContext.getRecordNumber());
		}
	}

	private ICobolIOBuilder getCommonCmdBuilder() {
		return cobolRecordHandler.getCommonCmdBuilder();
	}

	private ICobolIOBuilder getOpenCmdBuilder() {
		return cobolRecordHandler.getOpenCmdBuilder();
	}

	private ICobolIOBuilder getReadCmdBuilder() {
		return cobolRecordHandler.getReadCmdBuilder();
	}

	private ICobolIOBuilder getStartCmdBuilder() {
		return cobolRecordHandler.getStartCmdBuilder();
	}

	private ICobolIOBuilder getRewriteCmdBuilder() {
		return cobolRecordHandler.getRewriteCmdBuilder();
	}

	private ICobolIOBuilder getDeleteCmdBuilder() {
		return cobolRecordHandler.getDeleteCmdBuilder();
	}

	private ICobolIOBuilder getImportCmdBuilder() {
		return cobolRecordHandler.getImportCmdBuilder();
	}

	private Map<String, IDataHandler> getDataBuilders() {
		return cobolRecordHandler.getDataBuilders();
	}

	class OutputStreamWrapper extends OutputStream {
		private final OutputStream delegate;
		private boolean used = false;
		
		public OutputStreamWrapper(OutputStream delegate) {
			super();
			this.delegate = delegate;
		}

		@Override
		public void write(int b) throws IOException {
			used = true;
			delegate.write(b);
		}
		
		@Override
		public void write(byte[] b) throws IOException {
			used = true;
			delegate.write(b);
		}
		
		@Override
		public void write(byte[] b, int off, int len) throws IOException {
			used = true;
			delegate.write(b, off, len);
		}
		
		@Override
		public void flush() throws IOException {
			delegate.flush();
		}
		
		@Override
		public void close() throws IOException {
			delegate.close();
		}
		
		public boolean isUsed() {
			return used;
		}
	}

}
