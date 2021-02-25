package fr.mistral.dataserver.client;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.mistral.dataserver.command.CommandKeyOperator;
import fr.mistral.dataserver.command.CommandReadDirection;
import fr.mistral.dataserver.command.DataServerCommand;
import fr.mistral.dataserver.fd.CobolRecordHandler;
import fr.mistral.dataserver.fd.DataServerFdConstants;
import fr.mistral.dataserver.server.IDataHandler;
import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.Line;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public class Client {

	private static final Logger LOGGER = LoggerFactory.getLogger(Client.class);

	private final Socket socket;
	private final CobolRecordHandler cobolRecordHandler;

	public Client(String host, int port, CobolRecordHandler cobolRecordHandler) {
		try {
			this.socket = new Socket(host, port);
			this.cobolRecordHandler = cobolRecordHandler;
		} catch (IOException e) {
			throw new IllegalStateException(String.format("Erreur d'initialisation du client Cobol : %s:%d", host, port), e);
		}
	}

	public Response start(String fileHandle, String filename) throws IOException {
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		Line keyLine = new Line(ioBuilder.getLayout());
		return start(fileHandle, filename, null, null, keyLine);
	}

	public Response start(String fileHandle, String filename, Integer keyNumber, CommandKeyOperator operator, Line keyLine) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.START;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		Line line = new Line(getStartCmdBuilder().getLayout());
		line.getFieldValue(DataServerFdConstants.START_KEY_NAME_CMD).setToLowValues();
		if (keyNumber != null) {
			line.getFieldValue(DataServerFdConstants.START_KEY_NUMBER_CMD).set(keyNumber);
		} else {
			line.getFieldValue(DataServerFdConstants.START_KEY_NUMBER_CMD).set(0);
		}
		if (operator != null) {
			line.getFieldValue(DataServerFdConstants.START_KEY_OPERATOR_CMD).set(operator.getOperator());
		} else {
			line.getFieldValue(DataServerFdConstants.START_KEY_OPERATOR_CMD).set(CommandKeyOperator.EQUAL);
		}
		line.getFieldValue(DataServerFdConstants.RECORD_SIZE_CMD).set(keyLine.getLayout().getMaximumRecordLength());
		
		// Cas ou aucune valeur n'a été initialisée
		if (keyLine.getData().length == 0) {
			// ATTENTION : il faut setter au moins un champ sinon le tableau est vide
			keyLine.getFieldValue(0, 0).setToLowValues();
		}
		
		writeLine(getStartCmdBuilder(), outputStream, line);
		writeLine(ioBuilder, outputStream, keyLine);
		flush(outputStream);
		
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response;
	}

	public Response open(String fileHandle, String filename) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.OPEN;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		Line line = new Line(getOpenCmdBuilder().getLayout());
		line.getFieldValue(DataServerFdConstants.OPEN_MODE_CMD).set("I-O");
		writeLine(getOpenCmdBuilder(), outputStream, line);
		flush(outputStream);
		
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response;
	}

	public Response read(String fileHandle, String filename, CommandReadDirection direction, boolean withLock) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.READ;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		Line line = new Line(getReadCmdBuilder().getLayout());
		Line recordLine = new Line(ioBuilder.getLayout());
		// il faut au moins initialiser un champ sinon la ligne est de longueur zéro
		recordLine.getFieldValue(0, 0).setToLowValues();
		line.getFieldValue(DataServerFdConstants.READ_DIRECTION_CMD).set(direction.name());
		line.getFieldValue(DataServerFdConstants.READ_LOCK_CMD).set(withLock ? 1 : 0);
		line.getFieldValue(DataServerFdConstants.RECORD_SIZE_CMD).set(recordLine.getLayout().getMaximumRecordLength());
		writeLine(getReadCmdBuilder(), outputStream, line);
		writeLine(ioBuilder, outputStream, recordLine);
		flush(outputStream);
		
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response;
	}

	public Response unlock(String fileHandle, String filename) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.UNLOCK;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		flush(outputStream);
		
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response;
	}

	public Response write(String fileHandle, String filename, AbstractLine line) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.WRITE;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		writeLine(ioBuilder, outputStream, line);
		flush(outputStream);
		
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response;
	}

	public Response rewrite(String fileHandle, String filename, AbstractLine recordLine) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.REWRITE;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		Line rewriteLine = new Line(getRewriteCmdBuilder().getLayout());
		rewriteLine.getFieldValue(DataServerFdConstants.RECORD_SIZE_CMD).set(recordLine.getLayout().getMaximumRecordLength());
		writeLine(getRewriteCmdBuilder(), outputStream, rewriteLine);
		writeLine(ioBuilder, outputStream, recordLine);
		flush(outputStream);
		
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response;
	}

	public Response close(String fileHandle, String filename) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.CLOSE;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		flush(outputStream);
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response;
	}

	public boolean importFile(String fileHandle, String filename, String importFilename) throws IOException {
		OutputStream outputStream = new BufferedOutputStream(socket.getOutputStream(), 3000);
		DataServerCommand command = DataServerCommand.IMPORT;
		ICobolIOBuilder ioBuilder = getDataBuilders().get(filename).getIOBuilder();
		doCommon(fileHandle, filename, command, outputStream);
		Line line = new Line(getImportCmdBuilder().getLayout());
		line.getFieldValue(DataServerFdConstants.IMPORT_IMPORT_FILENAME_CMD).set(importFilename);
		writeLine(getImportCmdBuilder(), outputStream, line);
		flush(outputStream);
		
		Response response = new Response();
		doResponse(command, ioBuilder, response);
		
		return response.isSuccess();
	}

	private void flush(OutputStream outputStream) throws IOException {
		outputStream.flush();
	}

	private void doResponse(DataServerCommand command, ICobolIOBuilder ioBuilder, Response response) throws IOException {
		AbstractLine status = readLine(getInternalStatusBuilder(), socket.getInputStream());
		response.statusCode = status.getFieldValue(DataServerFdConstants.DSC_COMMAND_STATUS).asInt();
		response.resultCount = status.getFieldValue(DataServerFdConstants.DSC_RECORD_COUNT).asInt();
		if (response.statusCode == 1 || response.statusCode == 3) {
			AbstractLine error = readLine(getInternalErrorBuilder(), socket.getInputStream());
			response.errorCode = error.getFieldValue(DataServerFdConstants.DSC_ERROR_CODE).asInt();
			response.errorMessage = error.getFieldValue(DataServerFdConstants.DSC_ERROR_MESSAGE).asString();
			response.lockPid = error.getFieldValue(DataServerFdConstants.DSC_LOCK_PID).asInt();
		}
		LOGGER.debug("Command {}: status={}, count={}, error={}, lockPid={}, message={}",
				command, response.statusCode, response.getResultCount(), response.errorCode, response.lockPid, response.errorMessage);
		if (response.statusCode == 2) {
			for (int i = 0; i < response.getResultCount(); i++) {
				int recordNumberLineLength = getRecordNumberBuilder().getLayout().getMaximumRecordLength();
				AbstractLine recordNumberLine = getRecordNumberBuilder().newLine(socket.getInputStream().readNBytes(recordNumberLineLength));
				AbstractLine line = ioBuilder.newLine(socket.getInputStream().readNBytes(recordLength(ioBuilder)));
				response.lines.add(Pair.with(recordNumberLine.getFieldValue("DSC-RECORD-NUMBER").asLong(), line));
			}
		}
	}

	private int recordLength(ICobolIOBuilder ioBuilder) throws IOException {
		return ioBuilder.getLayout().getMaximumRecordLength();
	}

	private void doCommon(String fileHandle, String filename, DataServerCommand command, OutputStream outputStream) throws IOException {
		Line line = new Line(getCommonCmdBuilder().getLayout());
		line.getFieldValue(DataServerFdConstants.PROCESS_ID_CMD).set(1000);
		line.getFieldValue(DataServerFdConstants.FILENAME_CMD).set(filename);
		line.getFieldValue(DataServerFdConstants.HANDLE_CMD).set(fileHandle);
		line.getFieldValue(DataServerFdConstants.COMMAND_CMD).set(command.getCommand());
		writeLine(getCommonCmdBuilder(), outputStream, line);
	}

	private void writeLine(ICobolIOBuilder ioBuilder, OutputStream outputStream, AbstractLine content) throws IOException {
		cobolRecordHandler.writeLine(ioBuilder, outputStream, content);
	}

	private Line readLine(ICobolIOBuilder ioBuilder, InputStream inputStream) throws IOException {
		return cobolRecordHandler.readLine(ioBuilder, inputStream);
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

	private ICobolIOBuilder getRewriteCmdBuilder() {
		return cobolRecordHandler.getRewriteCmdBuilder();
	}

	private ICobolIOBuilder getStartCmdBuilder() {
		return cobolRecordHandler.getStartCmdBuilder();
	}

	private ICobolIOBuilder getImportCmdBuilder() {
		return cobolRecordHandler.getImportCmdBuilder();
	}

	private ICobolIOBuilder getInternalStatusBuilder() {
		return cobolRecordHandler.getInternalStatusBuilder();
	}

	private ICobolIOBuilder getInternalErrorBuilder() {
		return cobolRecordHandler.getInternalErrorBuilder();
	}

	private ICobolIOBuilder getRecordNumberBuilder() {
		return cobolRecordHandler.getRecordNumberBuilder();
	}

	public Map<String, IDataHandler> getDataBuilders() {
		return cobolRecordHandler.getDataBuilders();
	}

	public static class Response {
		public Integer statusCode;
		public Integer resultCount;
		public Integer errorCode = 0;
		public String errorMessage;
		public Integer lockPid;
		public byte[] result;
		public List<Pair<Long, AbstractLine>> lines = new ArrayList<>();

		public boolean isSuccess() {
			return errorCode == 0 || errorCode < 10;
		}

		public Integer getResultCount() {
			return resultCount;
		}

		public Integer getStatusCode() {
			return statusCode;
		}

		public Integer getErrorCode() {
			return errorCode;
		}

		public String getErrorMessage() {
			return errorMessage;
		}

		public Integer getLockPid() {
			return lockPid;
		}

		public byte[] getResult() {
			return result;
		}
	}

}
