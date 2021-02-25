package fr.mistral.dataserver.spring;

import fr.mistral.dataserver.server.IDataHandler;
import fr.mistral.dataserver.server.IDataHandlerInitializer;

import javax.persistence.EntityManagerFactory;

public class DataHandlerInitializer implements IDataHandlerInitializer {

	private final EntityManagerFactory entityManagerFactory;

	public DataHandlerInitializer(EntityManagerFactory entityManagerFactory) {
		this.entityManagerFactory = entityManagerFactory;
	}

	@Override
	public void init(IDataHandler dataHandler) {
		dataHandler.setEntityManagerFactory(entityManagerFactory);
	}

	

}
