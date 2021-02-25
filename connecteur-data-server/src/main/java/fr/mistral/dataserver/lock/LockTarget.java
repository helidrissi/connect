package fr.mistral.dataserver.lock;

public class LockTarget {

	private final Long recordNumber;
	private final String tablename;

	public LockTarget(String tableName, Long recordNumber) {
		this.recordNumber = recordNumber;
		this.tablename = tableName;
	}

	public Long getRecordNumber() {
		return recordNumber;
	}

	public String getTablename() {
		return tablename;
	}

}
