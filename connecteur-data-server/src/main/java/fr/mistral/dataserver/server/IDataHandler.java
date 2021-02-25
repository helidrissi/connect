package fr.mistral.dataserver.server;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.function.Supplier;

import javax.persistence.EntityManagerFactory;

import fr.mistral.dataserver.command.CommandKeyOperator;
import fr.mistral.dataserver.command.CommandReadDirection;
import fr.mistral.dataserver.command.KeyIdentifier;
import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.Line;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public interface IDataHandler {

	public void setEntityManagerFactory(EntityManagerFactory entityManagerFactory);

	public String getName();

	public ICobolIOBuilder getIOBuilder();

	public LineResult doInsert(AbstractLine line);

	public LineResult doUpdate(Line record);

	LineResult doDelete(Line record);

	public LineResult doStart(KeyIdentifier keyIdentifier, Line record, CommandKeyOperator operator);

	LineResult doRead(KeyIdentifier keyIdentifier, Line record);

	LineResult doReadContextual(CommandReadDirection direction);

	LineResult doReadContextual(CommandReadDirection direction, Long recordNumber, Line record,
			Integer cacheCount);

	void extractAsText() throws FileNotFoundException, IOException;

	List<String> getAliases();

	List<Object> mapKeyToJava(String keyName, Line line);

	String mapKeyToKeyName(KeyIdentifier keyIdentifier);

	String recordKeyToString(Line record);

	String keyToString(KeyIdentifier keyIdentifier, Line record);

	void doImport(Supplier<AbstractLine> line);

}
