package fr.mistral.socket;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Arrays;

import org.apache.commons.io.input.TeeInputStream;
import org.apache.commons.io.output.TeeOutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SocketServer {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(SocketServer.class);
	private static final Logger LOGGER_IN = LoggerFactory.getLogger(SocketServer.class.getName() + ".Input");
	private static final Logger LOGGER_IN_HEX = LoggerFactory.getLogger(SocketServer.class.getName() + ".InputHex");
	private static final Logger LOGGER_OUT = LoggerFactory.getLogger(SocketServer.class.getName() + ".Output");
	private static final Logger LOGGER_OUT_HEX = LoggerFactory.getLogger(SocketServer.class.getName() + ".OutputHex");
	
	private static final Integer INPUT_BUFFER = 2000;
	
	private ServerSocket serverSocket;
	
	private Thread mainThread;
	
	private int port;
	
	private ISocketHandler handler;
	
	public void start(int port, ISocketHandler handler) {
		this.port = port;
		this.handler = handler;
		this.mainThread = new Thread(this::internalRun);
		this.mainThread.setDaemon(true);
		this.mainThread.start();
	}

	private void internalRun() {
		try {
			serverSocket = new ServerSocket(port);
			LOGGER.info("Start socket server on port {}", port);
			while (true) { // NOSONAR
				new EchoClientHandler(serverSocket.accept(), handler).start();
			}
		} catch (Exception e) {
			LOGGER.error("Error running socket server", e);
		}
	}

	public void stop() throws IOException {
		serverSocket.close();
	}

	private static class EchoClientHandler extends Thread {
		private final Socket clientSocket;
		private final ISocketHandler handler;
		
		public EchoClientHandler(Socket socket, ISocketHandler handler) {
			this.clientSocket = socket;
			this.handler = handler;
		}
		
		@Override
		public void run() {
			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("[{}] Request, from: {}", this.getId(), clientSocket.getInetAddress().getHostAddress());
			}
			try (
				InputStream inputStream = clientSocket.getInputStream();
				OutputStream outputStream = clientSocket.getOutputStream();
				clientSocket) {
				try (InputStream teeInputStream = wrapInputStream(inputStream);
						OutputStream teeOutputStream = wrapOutputStream(outputStream)) {
					while (true) {
						handler.handleCommand(teeInputStream, teeOutputStream);
						teeOutputStream.flush();
						
						if (Thread.currentThread().isInterrupted()) {
							clientSocket.close();
							return;
						}
					}
				}
			} catch (IOException e) {
				LOGGER.warn("Connection failure: {}", e.getMessage(), e);
			} catch (NullPointerException e) {
				LOGGER.warn("Unexpected close: {}", e.getMessage(), e);
			}
		}
		
		@SuppressWarnings("resource")
		public InputStream wrapInputStream(InputStream inputStream) {
			inputStream = new BufferedInputStream(inputStream, INPUT_BUFFER);
			if (LOGGER.isDebugEnabled()) {
				return new TeeInputStream(inputStream, new LoggerStream(LOGGER_IN, LOGGER_IN_HEX)); //NOSONAR
			} else {
				return inputStream;
			}
		}
		
		@SuppressWarnings("resource")
		public OutputStream wrapOutputStream(OutputStream outputStream) {
			if (LOGGER.isDebugEnabled()) {
				return new TeeOutputStream(outputStream, new LoggerStream(LOGGER_OUT, LOGGER_OUT_HEX)); //NOSONAR
			} else {
				return outputStream;
			}
		}
	}

	public static class LoggerStream extends OutputStream {
		private static final char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();
		private final Logger logger;
		private final Logger loggerHex;
		
		public LoggerStream(Logger logger, Logger loggerHex) {
			this.logger = logger;
			this.loggerHex = loggerHex;
		}
		
		@Override
		public void write(int b) throws IOException {
			if (logger.isDebugEnabled() || loggerHex.isDebugEnabled()) {
				log(new byte[] { (byte) b });
			}
		}
		
		@Override
		public void write(byte[] b) throws IOException {
			if (logger.isDebugEnabled() || loggerHex.isDebugEnabled()) {
				log(b);
			}
		}
		
		@Override
		public void write(byte[] b, int off, int len) throws IOException {
			if (logger.isDebugEnabled() || loggerHex.isDebugEnabled()) {
				byte[] bytes = Arrays.copyOfRange(b, off, off + len);
				log(bytes);
			}
		}
		
		private void log(byte[] bytes) {
			if (logger.isDebugEnabled() || loggerHex.isDebugEnabled()) {
				logger.debug("message: <{}>", new String(bytes));
				loggerHex.debug("message: <{}>", bytesToHex(bytes));
			}
		}

		public static String bytesToHex(byte[] bytes) {
			char[] hexChars = new char[bytes.length * 2];
			for (int j = 0; j < bytes.length; j++) {
				int v = bytes[j] & 0xFF;
				hexChars[j * 2] = HEX_ARRAY[v >>> 4];
				hexChars[j * 2 + 1] = HEX_ARRAY[v & 0x0F];
			}
			return new String(hexChars);
		}
	}
}
