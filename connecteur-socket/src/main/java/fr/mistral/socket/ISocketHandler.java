package fr.mistral.socket;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public interface ISocketHandler {

	public void handleCommand(InputStream reader, OutputStream writer) throws IOException;

}
