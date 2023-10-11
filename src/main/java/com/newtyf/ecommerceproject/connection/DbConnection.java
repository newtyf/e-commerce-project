/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.newtyf.ecommerceproject.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author amunoz
 */
public class DbConnection {
    private static Connection connection = null;
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (connection==null) {
           Class.forName("com.mysql.jdbc.Driver");
           DriverManager.getConnection("", "", "");
           System.out.println("connected");
        }
        
        return connection;
    }

}
