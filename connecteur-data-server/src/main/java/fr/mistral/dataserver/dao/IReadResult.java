package fr.mistral.dataserver.dao;

import net.sf.JRecord.IO.AbstractLineWriter;

public interface IReadResult extends IResult {

	AbstractLineWriter getRecord();

}
