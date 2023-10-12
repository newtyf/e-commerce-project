/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.newtyf.ecommerceproject.connection;

import java.io.InputStream;
import java.util.Properties;

/**
 *
 * @author amunoz
 */
public class DbConfig {
    private Properties properties = new Properties();

    public DbConfig() {
        try {
            InputStream inputStream = getClass().getClassLoader().getResourceAsStream("database.properties");
            properties.load(inputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getUrl() {
        return properties.getProperty("db.url");
    }

    public String getUsername() {
        return properties.getProperty("db.usuario");
    }

    public String getPassword() {
        return properties.getProperty("db.password");
    }
}
