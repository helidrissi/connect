package fr.mistral.dataserver.command;

public interface ICommand {

	int getProcessId();
	String getFilename();
	public String getFileHandle();
	String getFileIdentifier();

}
