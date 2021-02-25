package fr.mistral.dataserver.dao;

import net.sf.JRecord.IO.AbstractLineWriter;

public class CommandResult implements IResult, IReadResult {

	private ResultCode code;

	private AbstractLineWriter record;

	@Override
	public ResultCode getCode() {
		return code;
	}

	public void setCode(ResultCode code) {
		this.code = code;
	}

	@Override
	public AbstractLineWriter getRecord() {
		return record;
	}

	public void setRecord(AbstractLineWriter record) {
		this.record = record;
	}

}
