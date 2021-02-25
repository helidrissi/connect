package fr.mistral.dataserver.context;

import fr.mistral.dataserver.command.ICommand;

public interface IContextIdentifier extends ICommand {

	@Override
	public int getProcessId();
	@Override
	public String getFilename();
	@Override
	public String getFileHandle();

	default String getContextKey() {
		return String.format("%d:%s", getProcessId(), getFileIdentifier());
	}
	
	@Override
	default String getFileIdentifier() {
		return getFileHandle() != null ? getFileHandle() : getFilename();
	}

}
