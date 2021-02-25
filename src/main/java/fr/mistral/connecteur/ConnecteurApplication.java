package fr.mistral.connecteur;


import fr.mistral.connecteur.config.PrototypageCustomConfig;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

@SpringBootApplication
public class ConnecteurApplication {

    public static void main(String[] args) throws InterruptedException {

        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
        context.register(PrototypageCustomConfig.class);
        context.refresh();
        context.start();
        while (true) {
            Thread.sleep(50000);
        }

        }
    }


