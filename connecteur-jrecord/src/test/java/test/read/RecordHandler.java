package test.read;

import java.util.Collection;

import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.LayoutDetail;

@FunctionalInterface
public interface RecordHandler {
	void handle(AbstractLine l, LayoutDetail layoutDetail, String keyName, Collection<String> ignoredFields);
}