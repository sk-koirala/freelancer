package com.freelano.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.freelano.config.DbConfig;

public class LoginDAO {
    public boolean validate(String email, String password, String role) {
        boolean status = false;
        String query = "";

        if ("client".equalsIgnoreCase(role)) {
            query = "SELECT * FROM Client WHERE Client_Email=? AND Client_Phone=?"; // using phone as password (example)
        } else if ("freelancer".equalsIgnoreCase(role)) {
            query = "SELECT * FROM Freelancer WHERE Freelancer_Email=? AND Freelancer_Phone=?";
        }

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, email);
            ps.setString(2, password); // Simplified
            ResultSet rs = ps.executeQuery();
            status = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}
