package fr.mistral.dataserver.command;

import java.util.HashMap;
import java.util.Map;

/**
 * La longueur du nom de commande doit être cohérent avec DSC-COMMAND
 */
public enum DataServerCommand {

	OPEN("OPEN"),
	READ("READ"),
	START("START"),
	CLOSE("CLOSE"),
	WRITE("WRITE"),
	REWRITE("REWRITE"),
	DELETE("DELETE"),
	IMPORT("IMPORT"),
	UNLOCK("UNLOCK");

	private static final Map<String, DataServerCommand> commandMap = new HashMap<>();

	static {
		for (DataServerCommand command : DataServerCommand.values()) {
			commandMap.put(command.getCommand(), command);
		}
	}

	private final String command;

	public String getCommand() {
		return command;
	}

	private DataServerCommand(String command) {
		this.command = command;
	}

	public static DataServerCommand map(String command) {
		return commandMap.get(command);
	}

}
