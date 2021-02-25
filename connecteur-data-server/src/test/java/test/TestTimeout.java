package test;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;

import org.junit.jupiter.api.Test;

public class TestTimeout {

	/**
	 * Utilisé pour voir comment est géré le timeout avec un parefeu policy DROP pour comparaison avec C$SOCKET de
	 * Cobol.
	 * 
	 * En Java, il est possible de passer un timeout de connexion, qui permet de limiter le temps d'attente pour la
	 * connexion initiale, ce qui est utile si on a un parefeu avec un policy DROP (i.e. le serveur de répond pas et
	 * ne refuse pas explicitement la connexion).
	 * 
	 * @throws IOException 
	 * @throws UnknownHostException 
	 */
	@Test
	public void testTimeout() throws UnknownHostException, IOException {
		Socket socket = new Socket();
		socket.connect(new InetSocketAddress("localhost", 10000), 1000);
		System.out.println("OK");
	}

}
