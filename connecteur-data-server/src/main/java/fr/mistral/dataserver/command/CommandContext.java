package fr.mistral.dataserver.command;

import fr.mistral.dataserver.context.IContextIdentifier;

public class CommandContext implements IContextIdentifier,
	IReadCommand, IOpenCommand, IStartCommand,					// read-only commands
	IDeleteCommand, IWriteCommand, IRewriteCommand {			// write commands

	private DataServerCommand command;

	/**
	 * For all commands
	 */
	private int processId;
	private String filename;
	private String fileHandle;
	
	/**
	 * Only for READ, START. Optional for READ, START.
	 * 
	 * If absent, key is primary key.
	 */
	private String keyName;
	/**
	 * Only for START command, optional (if absent, key is primary key, operator is '='/EQUAL)
	 */
	private CommandKeyOperator keyOperator;
	/**
	 * Only for START, READ, REWRITE, DELETE. Must be provided by client. This value applies to primary key for
	 * REWRITE and DELETE. This value applies to provided keyName for START and READ (if not provided by READ,
	 * keyName is determined from last OPEN, START, READ call ; if not provided by START, it defaults to keyName)
	 */
	private Object keyValue;
	/**
	 * Only for OPEN, is INPUT or I_O. File opened with INPUT cannot be modified.
	 */
	private CommandOpenMode mode;
	/**
	 * Only for READ. direction for reading results.
	 */
	private CommandReadDirection direction;
	/**
	 * Only for WRITE, REWRITE. Content of the record to insert or modify.
	 */
	private Object record;

	public DataServerCommand getCommand() {
		return command;
	}
	public void setCommand(DataServerCommand command) {
		this.command = command;
	}
	@Override
	public int getProcessId() {
		return processId;
	}
	public void setProcessId(int processId) {
		this.processId = processId;
	}
	@Override
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	@Override
	public String getFileHandle() {
		return fileHandle;
	}
	public void setFileHandle(String fileHandle) {
		this.fileHandle = fileHandle;
	}
	@Override
	public String getKeyName() {
		return keyName;
	}
	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}
	@Override
	public CommandKeyOperator getKeyOperator() {
		return keyOperator;
	}
	public void setKeyOperator(CommandKeyOperator keyOperator) {
		this.keyOperator = keyOperator;
	}
	@Override
	public Object getKeyValue() {
		return keyValue;
	}
	public void setKeyValue(Object keyValue) {
		this.keyValue = keyValue;
	}
	@Override
	public CommandOpenMode getMode() {
		return mode;
	}
	public void setMode(CommandOpenMode mode) {
		this.mode = mode;
	}
	@Override
	public CommandReadDirection getDirection() {
		return direction;
	}
	public void setDirection(CommandReadDirection direction) {
		this.direction = direction;
	}
	@Override
	public Object getRecord() {
		return record;
	}
	public void setRecord(Object record) {
		this.record = record;
	}

}
