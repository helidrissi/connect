package fr.mistral.dataserver.server;

import java.io.IOException;
import java.io.OutputStream;

import net.sf.JRecord.ByteIO.AbstractByteWriter;

/**
 * writes an Array of bytes as a line in a fixed line length file (i.e. all
 * lines are exactly the same length).
 *
 * @author Bruce Martin
 *
 */
public class FixedLengthUnbufferedByteWriter extends AbstractByteWriter {
	private OutputStream outStream = null;

	private final int recordLength, fillByte;

	public FixedLengthUnbufferedByteWriter(OutputStream outStream, int recordLength) {
		this.recordLength = recordLength;
		this.outStream = outStream;
		fillByte = 0;
	}

	// /**
	// * create Fixed Length line writer
	// */
	// public FixedWidthByteWriter(int recordLength, String charset) {
	// this.recordLength = recordLength;
	//
	// byte[] bytes = Conversion.getBytes(" ", charset);
	// byte t = 0;
	// if (bytes != null && bytes.length == 1) {
	// t = bytes[0];
	// }
	// fillByte = t;
	// }

	protected FixedLengthUnbufferedByteWriter(int recordLength, int fillByte) {
		super();
		this.recordLength = recordLength;
		this.fillByte = fillByte;
	}

	/**
	 * @see net.sf.JRecord.ByteIO.FixedLengthByteWriter#open(OutputStream)
	 */
	public void open(OutputStream outputStream) throws IOException {
		outStream = outputStream;
	}

	/**
	 * @see net.sf.JRecord.ByteIO.FixedLengthByteWriter#write(byte[])
	 */
	public void write(byte[] rec) throws IOException {

		if (outStream == null) {
			throw new IOException(AbstractByteWriter.NOT_OPEN_MESSAGE);
		}

		if (rec.length != recordLength) {
			if (rec.length > recordLength) {
				outStream.write(rec, 0, recordLength);
			} else {
				outStream.write(rec);
//				for (int i = recordLength - rec.length; i > 0; i--) {
//					outStream.write(fillByte);
//				}
			}
		} else {
			outStream.write(rec);
		}
	}

	/**
	 * @see net.sf.JRecord.IO.AbstractLineWriter#close()
	 */
	public void close() throws IOException {

		outStream.close();
		outStream = null;
	}
}
