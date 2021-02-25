package fr.mistral.dataserver.server;

import java.util.List;

import org.javatuples.Pair;

import com.google.common.collect.ImmutableList;

import net.sf.JRecord.Details.AbstractLine;

public class LineResult {

	private final List<Object> key;
	private final List<Object> recordKey;
	private final String keyName;
	private final List<Pair<Long, AbstractLine>> lines;
	private final boolean found;
	private final Long recordNumber;

	/**
	 * Dans le cas next->eof->previous our previous->eof-next, ce sont les valeurs qui seront injectées dans
	 * FileContext.setPrevious*. On ne peut pas utiliser FileContext.getLast* car si le cache est utilisé, il peut
	 * être mal positionné.
	 * 
	 * L'information est à fournir seulement dans le cas d'un end-of-file -> donc un not found sur une lecture
	 * previous/next
	 */
	private final List<Object> previousKey;
	private final String previousKeyName;
	private final Long previousRecordNumber;

	private LineResult(Long recordNumber, List<Object> key, List<Object> recordKey, String keyName,
			List<Pair<Long, AbstractLine>> lines, boolean found,
			List<Object> previousKey, String previousKeyName, Long previousRecordNumber) {
		this.recordNumber = recordNumber;
		this.key = key;
		this.recordKey = recordKey;
		this.keyName = keyName;
		this.lines = lines;
		this.found = found;
		this.previousKey = previousKey;
		this.previousKeyName = previousKeyName;
		this.previousRecordNumber = previousRecordNumber;
	}

	public List<Object> getKey() {
		return key;
	}

	public Pair<Long, AbstractLine> getLine() {
		return lines != null && ! lines.isEmpty() ? lines.get(0) : null;
	}

	public List<Pair<Long, AbstractLine>> getLines() {
		return lines;
	}

	public List<Object> getRecordKey() {
		return recordKey;
	}

	public String getKeyName() {
		return keyName;
	}

	public boolean isFound() {
		return found;
	}

	public Long getRecordNumber() {
		return recordNumber;
	}

	public List<Object> getPreviousKey() {
		return previousKey;
	}

	public String getPreviousKeyName() {
		return previousKeyName;
	}

	public Long getPreviousRecordNumber() {
		return previousRecordNumber;
	}

	public static LineResult fromId(Long recordNumber, List<Object> recordKey, List<Object> key, String keyName) {
		return new LineResult(recordNumber, key, recordKey, keyName, null, true, null, null, null);
	}

	public static LineResult fromResult(Long recordNumber, List<Object> key, List<Object> recordKey, String keyName, AbstractLine line) {
		return new LineResult(recordNumber, key, recordKey, keyName, ImmutableList.<Pair<Long, AbstractLine>>of(Pair.<Long, AbstractLine>with(recordNumber, line)), true, null, null, null);
	}

	public static LineResult fromResults(Long recordNumber, List<Object> key, List<Object> recordKey, String keyName, List<Pair<Long, AbstractLine>> lines) {
		return new LineResult(recordNumber, key, recordKey, keyName, lines, true, null, null, null);
	}

	public static LineResult notFound(List<Object> previousKey, String previousKeyName, Long previousRecordNumber) {
		return new LineResult(null, null, null, null, null, false, previousKey, previousKeyName, previousRecordNumber);
	}

	public static LineResult notFound() {
		return new LineResult(null, null, null, null, null, false, null, null, null);
	}
}
