package com.example.Full_Stack_Spring_Boot_._React.datasource;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Datasource {

    @Bean
    @ConfigurationProperties(prefix = "api.datasource")
    public HikariDataSource HikariDataSource () {
        return DataSourceBuilder
                .create()
                .type(HikariDataSource.class)
                .build();

    }
}
