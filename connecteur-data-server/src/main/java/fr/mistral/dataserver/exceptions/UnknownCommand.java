package fr.mistral.dataserver.exceptions;

public class UnknownCommand extends RuntimeException {

	private static final long serialVersionUID = -7875830977596505553L;

	public UnknownCommand() {
		super();
	}

	public UnknownCommand(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public UnknownCommand(String message, Throwable cause) {
		super(message, cause);
	}

	public UnknownCommand(String message) {
		super(message);
	}

	public UnknownCommand(Throwable cause) {
		super(cause);
	}

}
