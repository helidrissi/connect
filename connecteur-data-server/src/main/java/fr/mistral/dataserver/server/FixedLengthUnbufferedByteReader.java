package fr.mistral.dataserver.server;

import java.io.IOException;
import java.io.InputStream;

import net.sf.JRecord.ByteIO.AbstractByteReader;
import net.sf.JRecord.ByteIO.IByteReader;

public class FixedLengthUnbufferedByteReader extends AbstractByteReader implements IByteReader {

	private InputStream inStream;

	private int lineLength;

	public FixedLengthUnbufferedByteReader(InputStream inStream, int lineLength) {
		super();
		this.inStream = inStream;
		this.lineLength = lineLength;
	}

	/**
	 * @see AbstractByteReader#open(InputStream)
	 */
	public void open(InputStream inputStream) {
		inStream = inputStream;
	}

	/**
	 * @see AbstractByteReader#read()
	 */
	public byte[] read() throws IOException {
		byte[] ret = null;
		byte[] inBytes = new byte[lineLength];

		if (readBuffer(inStream, inBytes) > 0) {
			ret = inBytes;
		}

		return ret;
	}

	/**
	 * @see AbstractByteReader#close()
	 */
	public void close() throws IOException {
		if (inStream != null) {
			inStream.close();
		}
	}

	/**
	 * Set the Line Length of the file.
	 * 
	 * @param newLineLength
	 *            The lineLength to set.
	 */
	public void setLineLength(int newLineLength) {
		this.lineLength = newLineLength;
	}

}
