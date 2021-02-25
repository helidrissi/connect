package fr.mistral.dataserver.lock;

/**
 * Identification d'un propriétaire de lock. Le but est de pouvoir distinguer lors de la consultation
 * des locks si l'appelant a accès à l'enregistrement (pas de lock, ou lock dont il est propriétaire) ou non
 * (un lock tiers déjà enregistré).
 */
public class LockOwner {

	/**
	 * Process appelant.
	 */
	private final Integer processId;

	/**
	 * Handle de fichier : cette valeur identifie une ouverture de fichier.
	 * Si un programme ouvre 2 fois le même fichier, les valeurs sont différentes.
	 */
	private final String fileHandle;

	public LockOwner(Integer processId, String fileHandle) {
		this.processId = processId;
		this.fileHandle = fileHandle;
	}

	public Integer getProcessId() {
		return processId;
	}

	public String getFileHandle() {
		return fileHandle;
	}

}
