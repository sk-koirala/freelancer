package com.freelano.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConfig {

    
    private static final String DB_NAME = "freelano";
    private static final String URL = "jdbc:mysql://localhost:3306/";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    public static Connection getDbConnection() throws ClassNotFoundException, SQLException {
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Establish and return the connection
        return DriverManager.getConnection(URL + DB_NAME, USERNAME, PASSWORD);
    }
}