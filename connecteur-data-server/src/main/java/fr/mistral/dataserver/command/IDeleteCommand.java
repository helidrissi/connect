package fr.mistral.dataserver.command;

public interface IDeleteCommand extends ICommand {

	/**
	 * REWRITE command match record on RECORD KEY.
	 */
	public Object getKeyValue();

}
