package fr.mistral.dataserver.fd;

public final class DataServerFdConstants {

	private DataServerFdConstants() {}

	public static final String DSCLIENT_MESSAGES_RESOURCE_PATH = "mx/copy/dsclient-messages.wrk";

	public static final String DSCLIENT_COMMON_CMD_RECORD_NAME = "DSCLIENT-COMMON-CMD";
	public static final String DSCLIENT_OPEN_CMD_RECORD_NAME = "DSCLIENT-OPEN-CMD";
	public static final String DSCLIENT_READ_CMD_RECORD_NAME = "DSCLIENT-READ-CMD";
	public static final String DSCLIENT_REWRITE_CMD_RECORD_NAME = "DSCLIENT-REWRITE-CMD";
	public static final String DSCLIENT_WRITE_CMD_RECORD_NAME = "DSCLIENT-WRITE-CMD";
	public static final String DSCLIENT_START_CMD_RECORD_NAME = "DSCLIENT-START-CMD";
	public static final String DSCLIENT_DELETE_CMD_RECORD_NAME = "DSCLIENT-DELETE-CMD";
	public static final String DSCLIENT_IMPORT_CMD_RECORD_NAME = "DSCLIENT-IMPORT-CMD";

	public static final String DSCLIENT_INTERNAL_STATUS = "DSCLIENT-INTERNAL-STATUS";
	public static final String DSCLIENT_INTERNAL_ERROR = "DSCLIENT-INTERNAL-ERROR";
	public static final String DSCLIENT_RESPONSE_RECORD_NUMBER = "DSCLIENT-RESPONSE-RECORD-NUMBER";
	public static final String DSCLIENT_RECORD = "DSCLIENT-RECORD";

	public static final String PROCESS_ID_CMD = "PROCESS-ID-CMD";
	public static final String FILENAME_CMD = "FILENAME-CMD";
	public static final String HANDLE_CMD = "HANDLE-CMD";
	public static final String COMMAND_CMD = "COMMAND-CMD";

	public static final String OPEN_MODE_CMD = "OPEN-MODE-CMD";

	public static final String READ_KEY_NAME_CMD = "KEY-NAME-CMD";
	public static final String READ_KEY_NUMBER_CMD = "KEY-NUMBER-CMD";
	public static final String READ_RECORD_NUMBER_CMD = "RECORD-NUMBER-CMD";
	public static final String READ_DIRECTION_CMD = "DIRECTION-CMD";
	public static final String READ_LOCK_CMD = "LOCK-CMD";
	public static final String READ_CACHE_COUNT_CMD = "CACHE-COUNT-CMD";

	public static final String START_KEY_NAME_CMD = "KEY-NAME-CMD";
	public static final String START_KEY_NUMBER_CMD = "KEY-NUMBER-CMD";
	public static final String START_KEY_OPERATOR_CMD = "KEY-OPERATOR-CMD";
	public static final String DIRECTION_CMD = "DIRECTION-CMD";

	public static final String RECORD_SIZE_CMD = "RECORD-SIZE-CMD";

	public static final String IMPORT_IMPORT_FILENAME_CMD = "IMPORT-FILENAME-CMD";
	
	public static final String DSC_COMMAND_STATUS = "DSC-COMMAND-STATUS";

	public static final String DSC_RECORD_COUNT = "DSC-RECORD-COUNT";
	public static final String DSC_ERROR_CODE = "DSC-ERROR-CODE";
	public static final String DSC_LOCK_PID = "DSC-ERROR-LOCK-PID";
	public static final String DSC_ERROR_MESSAGE = "DSC-ERROR-MESSAGE";
	public static final String DSC_RECORD_NUMBER = "DSC-RECORD-NUMBER";

}
