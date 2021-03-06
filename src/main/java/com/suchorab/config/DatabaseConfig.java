package com.suchorab.config;

import com.suchorab.model.AcceptableVehicle;
import com.suchorab.model.AppUser;
import com.suchorab.model.UserRole;
import com.suchorab.model.Vehicle;
import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.Properties;


@Configuration
@EnableTransactionManagement
public class DatabaseConfig {
    @Autowired
    private ApplicationContext appContext;



    @Bean(name = "DataSource")
    public HikariDataSource dataSourceWinMacLinux() {
        return getDataSource("127.0.0.1","root","");
    }



    private HikariDataSource getDataSource(String serverName, String user, String password){
        HikariDataSource dataSource = new HikariDataSource();
        dataSource.setDataSourceClassName("com.mysql.jdbc.jdbc2.optional.MysqlDataSource");
        dataSource.addDataSourceProperty("databaseName", "SuchorabVehiclesDatabase");
        dataSource.addDataSourceProperty("portNumber", "3306");
        dataSource.addDataSourceProperty("serverName", serverName);
        dataSource.addDataSourceProperty("user", user);
        dataSource.addDataSourceProperty("password", password);
        return dataSource;
    }


    @Bean
    public HibernateTransactionManager transactionManager() {
        HibernateTransactionManager manager = new HibernateTransactionManager();
        manager.setSessionFactory(hibernate5SessionFactoryBean().getObject());
        return manager;
    }

    @Bean
    public LocalSessionFactoryBean hibernate5SessionFactoryBean(){
        LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
        localSessionFactoryBean.setDataSource((DataSource) appContext.getBean("DataSource"));
        localSessionFactoryBean.setAnnotatedClasses(
                AppUser.class,
                UserRole.class,
                Vehicle.class,
                AcceptableVehicle.class
        );

        Properties properties = new Properties();
        properties.put("hibernate.dialect","org.hibernate.dialect.MySQLDialect");
        properties.put("hibernate.current_session_context_class","thread");
        properties.put("hibernate.hbm2ddl.auto","update");
        properties.put("hibernate.show_sql","true");

        localSessionFactoryBean.setHibernateProperties(properties);
        return localSessionFactoryBean;
    }
}