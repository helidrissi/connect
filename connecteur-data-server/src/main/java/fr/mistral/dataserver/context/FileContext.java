package fr.mistral.dataserver.context;

import java.util.List;

import fr.mistral.dataserver.command.CommandOpenMode;
import fr.mistral.dataserver.command.CommandReadDirection;
import fr.mistral.dataserver.command.DataServerCommand;
import fr.mistral.dataserver.server.LineResult;

public class FileContext implements IContextIdentifier {

	// Informations sur le fichier

	/**
	 * Identifiant du process appelant
	 */
	private int processId;
	/**
	 * Nom de table (dérivé du nom de fichier)
	 */
	private String tablename;
	/**
	 * Nom de fichier (DB:MXART par exemple)
	 */
	private String filename;
	/**
	 * Pointeur de fichier
	 * 
	 * Permet de distinguer quand un même fichier est accédé plusieurs fois
	 * (via MXART et MXART2 par exemple).
	 * 
	 * Permet aussi de distinguer quand le même fichier est accédé par plusieurs
	 * sous-programmes différents.
	 * 
	 * Dans ces cas le nom de fichier est identique, mais le fileHandle est différent.
	 */
	private String fileHandle;
	/**
	 * Mode d'ouverture du fichier
	 */
	private CommandOpenMode mode;

	// Informations sur le parcours de fichier

	/**
	 * Nom de la clé de parcours (mis en place par un START ou un READ)
	 */
	private String keyName;
	/**
	 * Valeur courante de la clé
	 */
	private List<Object> keyValue;
	/**
	 * Valeur courante de la recordKey
	 */
	private List<Object> recordKeyValue;
	/**
	 * Valeur courante de recordNumber (le recordNumber est un élément interne non exposé
	 * en Cobol ; c'est l'identifiant numérique unique de la ligne)
	 */
	private Long recordNumber;

	// Informations de parcours de fichier ; informations nécessaires au pattern next -> eof -> previous
	// On stocke les informations de l'avant dernier résultat
	/**
	 * Nom de la clé de parcours précédente
	 */
	private String previousKeyName;
	/**
	 * Valeur précédente de la clé
	 */
	private List<Object> previousKeyValue;
	/**
	 * Valeur précédente de la recordKey
	 */
	private List<Object> previousRecordKeyValue;
	/**
	 * Valeur précédente du recordNumber
	 */
	private Long previousRecordNumber;

	private DataServerCommand lastPositionCommand;
	private CommandReadDirection lastDirection;

	public FileContext() {
		super();
	}

	@Override
	public int getProcessId() {
		return processId;
	}
	public void setProcessId(int processId) {
		this.processId = processId;
	}
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	@Override
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	@Override
	public String getFileHandle() {
		return fileHandle;
	}
	public void setFileHandle(String fileHandle) {
		this.fileHandle = fileHandle;
	}

	public CommandOpenMode getMode() {
		return mode;
	}
	public void setMode(CommandOpenMode mode) {
		this.mode = mode;
	}

	public String getKeyName() {
		return keyName;
	}
	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}
	public List<Object> getKeyValue() {
		return keyValue;
	}
	public void setKeyValue(List<Object> keyValue) {
		this.keyValue = keyValue;
	}
	public List<Object> getRecordKeyValue() {
		return recordKeyValue;
	}
	public void setRecordKeyValue(List<Object> recordKeyValue) {
		this.recordKeyValue = recordKeyValue;
	}
	public Long getRecordNumber() {
		return recordNumber;
	}
	public void setRecordNumber(Long recordNumber) {
		this.recordNumber = recordNumber;
	}

	public DataServerCommand getLastPositionCommand() {
		return lastPositionCommand;
	}
	public void setLastPositionCommand(DataServerCommand lastPositionCommand) {
		this.lastPositionCommand = lastPositionCommand;
	}

	public CommandReadDirection getLastDirection() {
		return lastDirection;
	}
	public void setLastDirection(CommandReadDirection lastDirection) {
		this.lastDirection = lastDirection;
	}

	public String getPreviousKeyName() {
		return previousKeyName;
	}
	public void setPreviousKeyName(String previousKeyName) {
		this.previousKeyName = previousKeyName;
	}

	public List<Object> getPreviousKeyValue() {
		return previousKeyValue;
	}
	public void setPreviousKeyValue(List<Object> previousKeyValue) {
		this.previousKeyValue = previousKeyValue;
	}

	public List<Object> getPreviousRecordKeyValue() {
		return previousRecordKeyValue;
	}
	public void setPreviousRecordKeyValue(List<Object> previousRecordKeyValue) {
		this.previousRecordKeyValue = previousRecordKeyValue;
	}

	public Long getPreviousRecordNumber() {
		return previousRecordNumber;
	}
	public void setPreviousRecordNumber(Long previousRecordNumber) {
		this.previousRecordNumber = previousRecordNumber;
	}

	public void updateContext(DataServerCommand command, CommandReadDirection direction, LineResult result) {
		if (result.isFound()) {
			setKeyName(result.getKeyName());
			setKeyValue(result.getKey());
			setRecordKeyValue(result.getRecordKey());
			setRecordNumber(result.getRecordNumber());
		} else {
			if (result.getPreviousRecordNumber() != null) {
				// cas où le cache nous communique une mise à jour de la position courante
				setPreviousKeyName(result.getPreviousKeyName());
				setPreviousKeyValue(result.getPreviousKey());
				setPreviousRecordNumber(result.getPreviousRecordNumber());
			} else {
				setPreviousKeyName(getKeyName());
				setPreviousKeyValue(getKeyValue());
				setPreviousRecordKeyValue(getRecordKeyValue());
				setPreviousRecordNumber(getRecordNumber());
			}
			setKeyName(null);
			setKeyValue(null);
			setRecordKeyValue(null);
			setRecordNumber(null);
		}
		
		setLastPositionCommand(command);
		setLastDirection(direction);
	}

}
