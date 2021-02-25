package fr.mistral.dataserver.command;

import java.util.HashMap;
import java.util.Map;

public enum CommandOpenMode {

	INPUT("INPUT"),
	I_O("I-O");

	private static final Map<String, CommandOpenMode> modeMap = new HashMap<>();

	static {
		for (CommandOpenMode mode : CommandOpenMode.values()) {
			modeMap.put(mode.getMode(), mode);
		}
	}

	private final String mode;

	private CommandOpenMode(String mode) {
		this.mode = mode;
	}

	public String getMode() {
		return mode;
	}

	public static CommandOpenMode map(String mode) {
		return modeMap.get(mode);
	}

}
