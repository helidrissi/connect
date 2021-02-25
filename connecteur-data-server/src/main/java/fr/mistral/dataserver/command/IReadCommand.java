package fr.mistral.dataserver.command;

public interface IReadCommand extends ICommand {

	String getKeyName();
	Object getKeyValue();
	CommandReadDirection getDirection();

}
