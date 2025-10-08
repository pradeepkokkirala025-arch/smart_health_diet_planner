package com.healthplanner;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("Driver not found: " + e.getMessage());
        }
        String URL = "jdbc:mysql://localhost:3306/smart_health_db";
        String USER = "root";
        String PASSWORD = "123456789"; // your MySQL password
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}