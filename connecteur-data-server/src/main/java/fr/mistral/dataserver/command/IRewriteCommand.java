package fr.mistral.dataserver.command;

public interface IRewriteCommand extends ICommand {

	/**
	 * REWRITE command match record on RECORD KEY.
	 */
	public Object getKeyValue();
	public Object getRecord();

}
