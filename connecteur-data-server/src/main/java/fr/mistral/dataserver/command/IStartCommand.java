package fr.mistral.dataserver.command;

public interface IStartCommand extends ICommand {

	public String getKeyName();
	public Object getKeyValue();
	public CommandKeyOperator getKeyOperator();

}
