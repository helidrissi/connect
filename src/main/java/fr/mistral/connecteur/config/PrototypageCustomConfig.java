package fr.mistral.connecteur.config;

import java.io.IOException;
import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import com.zaxxer.hikari.HikariDataSource;
import fr.mistral.dataserver.fd.CobolRecordHandler;
import fr.mistral.dataserver.lock.LockHandler;
import fr.mistral.dataserver.model.mx.DataServerModelPackage;
import fr.mistral.dataserver.server.CommandHandler;
import fr.mistral.dataserver.spring.DataHandlerInitializer;
import fr.mistral.socket.SocketServer;
import org.hibernate.cfg.AvailableSettings;
import org.hibernate.cfg.Environment;
import org.hibernate.id.enhanced.SequenceStyleGenerator;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;


import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

import static com.google.common.base.Strings.emptyToNull;

@Configuration
@PropertySources(value = {
        @PropertySource("classpath:configuration.properties"),
        @PropertySource("classpath:configuration-env-default.properties"),
        @PropertySource("classpath:configuration-env-development.properties"),
        @PropertySource("classpath:configuration-user-${user.name}.properties")
})

public class PrototypageCustomConfig {

    @Value("${prototypage.server.port}")
    private int serverPort;

    /**
     * Déclaration des packages de scan pour l'application.
     */



    @Value("${db.driverClass}")
    private String driverClass;
    @Value("${db.jdbcUrl}")
    private String dbUrl;
    @Value("${db.user}")
    private String dbUser;
    @Value("${db.password}")
    private String dbPassword;
    @Value("${db.schema}")
    private String dbSchema;
    @Value("${db.dialect}")
    private String dbDialect;
    @Value("${hibernate.hbm2ddl.auto}")
    private String dbHbm2Ddl;
    @Value("${hibernate.defaultBatchSize}")
    private Integer dbDefaultBatchSize;
    @Value("${db.minIdle}")
    private Integer poolMinIdle;
    @Value("${db.maxPoolSize}")
    private Integer poolMaxSize;
    @Value("${db.preferredTestQuery}")
    private String poolTestQuery;
    @Value("${db.initSql}")
    private String poolInitSql;





  /*  @Bean
    public JpaPackageScanProvider customJpaPackageScanProvider() {
        return new JpaPackageScanProvider(
                DataServerModelPackage.class.getPackage()
        );
    }*/

    @Bean
    public CommandHandler commandHandler(EntityManagerFactory entityManagerFactory, LockHandler lockHandler) throws IOException {
        return new CommandHandler(
                CobolRecordHandler.server(new DataHandlerInitializer(entityManagerFactory)),
                lockHandler);
    }

    @Bean
    public SocketServer socketServer(CommandHandler commandHandler) {
        SocketServer socketServer = new SocketServer();
        socketServer.start(serverPort, commandHandler);
        return socketServer;
    }

    @Bean
    public LockHandler lockHandler(DataSource dataSource) {
        return new LockHandler(dataSource);
    }

    @Bean
    public DataSource dataSource() {
        HikariDataSource dataSource = new HikariDataSource();
        dataSource.setDriverClassName(driverClass);
        dataSource.setJdbcUrl(dbUrl);
        dataSource.setUsername(dbUser);
        dataSource.setPassword(dbPassword);
        dataSource.addDataSourceProperty("user", dbUser);
        dataSource.addDataSourceProperty("password", dbPassword);
        dataSource.setMinimumIdle(poolMinIdle);
        dataSource.setMaximumPoolSize(poolMaxSize);
        dataSource.setConnectionTestQuery(poolTestQuery);
        dataSource.setConnectionInitSql(emptyToNull(poolInitSql));
        return dataSource;
    }

    /**
     * Construit un {@link LocalContainerEntityManagerFactoryBean} à partir d'un ensemble d'options usuelles.
     */
    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource) {
        LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();

        entityManagerFactoryBean.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
        entityManagerFactoryBean.setJpaProperties(getJpaProperties());
        entityManagerFactoryBean.setDataSource(dataSource);
        entityManagerFactoryBean.setPackagesToScan(DataServerModelPackage.class.getPackage().getName());

        return entityManagerFactoryBean;
    }

    public Properties getJpaProperties() {
        Properties properties = new Properties();
        properties.setProperty(Environment.DEFAULT_SCHEMA, dbSchema);
        properties.setProperty(Environment.DIALECT, dbDialect);
        properties.setProperty(Environment.HBM2DDL_AUTO, dbHbm2Ddl);
        properties.setProperty(Environment.SHOW_SQL, Boolean.FALSE.toString());
        properties.setProperty(Environment.FORMAT_SQL, Boolean.FALSE.toString());
        properties.setProperty(Environment.GENERATE_STATISTICS, Boolean.FALSE.toString());
        properties.setProperty(Environment.USE_REFLECTION_OPTIMIZER, Boolean.TRUE.toString());
        properties.setProperty(AvailableSettings.JPAQL_STRICT_COMPLIANCE, Boolean.TRUE.toString());
        properties.setProperty(Environment.USE_SECOND_LEVEL_CACHE, Boolean.FALSE.toString());
        properties.setProperty(Environment.USE_QUERY_CACHE, Boolean.FALSE.toString());
        properties.setProperty(Environment.DEFAULT_BATCH_FETCH_SIZE, dbDefaultBatchSize.toString());
        properties.setProperty("hibernate.search.autoregister_listeners", Boolean.FALSE.toString());

        properties.setProperty(SequenceStyleGenerator.CONFIG_PREFER_SEQUENCE_PER_ENTITY, Boolean.TRUE.toString());

        return properties;
    }


}
