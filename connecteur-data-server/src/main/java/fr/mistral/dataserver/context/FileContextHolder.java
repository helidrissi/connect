package fr.mistral.dataserver.context;

public class FileContextHolder {

	private static final ThreadLocal<FileContext> currentContext = new ThreadLocal<>();

	private FileContextHolder() {
	}

	public static void setCurrentFileContext(FileContext fileContext) {
		currentContext.set(fileContext);
	}

	public static FileContext getCurrentFileContext() {
		return currentContext.get();
	}

	public static FileContext removeCurrentFileContext() {
		FileContext transactionContext = currentContext.get();
		currentContext.remove();
		return transactionContext;
	}

}
