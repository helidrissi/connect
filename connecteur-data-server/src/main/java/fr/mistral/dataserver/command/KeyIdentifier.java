package fr.mistral.dataserver.command;

public class KeyIdentifier {

	private final Integer keyNumber;
	private final String keyName;

	private KeyIdentifier(Integer keyNumber, String keyName) {
		this.keyNumber = keyNumber;
		this.keyName = keyName;
	}

	public boolean isNumeric() {
		return keyNumber != null;
	}

	public boolean isEmpty() {
		return (keyNumber == null || keyNumber == -1) && keyName == null;
	}

	public Integer getNumericIdentifier() {
		return keyNumber;
	}

	public String getKeyName() {
		return keyName;
	}

	public static final KeyIdentifier fromCommand(Integer keyNumber, String keyName) {
		// priorité à la clé nommée
		if (keyName != null && keyName.length() > 0) {
			return new KeyIdentifier(null, keyName);
		}
		return new KeyIdentifier(keyNumber, null);
	}

}
