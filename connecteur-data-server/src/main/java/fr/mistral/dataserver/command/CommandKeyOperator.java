package fr.mistral.dataserver.command;

import java.util.HashMap;
import java.util.Map;

public enum CommandKeyOperator {

	EQUAL("="),
	GREATER(">"),
	GREATER_OR_EQUAL(">="),
	LESS("<"),
	LESS_OR_EQUAL("<=");

	private static final Map<String, CommandKeyOperator> operatorMap = new HashMap<>();

	static {
		for (CommandKeyOperator command : CommandKeyOperator.values()) {
			operatorMap.put(command.getOperator(), command);
		}
	}

	private final String operator;

	private CommandKeyOperator(String operator) {
		this.operator = operator;
	}

	public String getOperator() {
		return operator;
	}

	public static CommandKeyOperator map(String command) {
		return operatorMap.get(command);
	}
	

}
