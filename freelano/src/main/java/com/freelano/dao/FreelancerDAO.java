package com.freelano.dao;

import com.freelano.config.DbConfig;
import com.freelano.model.Freelancer;
import java.sql.*;
import java.util.*;

public class FreelancerDAO {
    public List<Freelancer> findAll() throws SQLException {
        String sql = "SELECT * FROM Freelancer";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            List<Freelancer> list = new ArrayList<>();
            while (rs.next()) {
                Freelancer f = new Freelancer();
                f.setId(rs.getInt("Freelancer_ID"));
                f.setName(rs.getString("Freelancer_Name"));
                f.setEmail(rs.getString("Freelancer_Email"));
                f.setPhone(rs.getString("Freelancer_Phone"));
                f.setPortfolio(rs.getString("Portfolio"));
                list.add(f);
            }
            return list;
        }
    }

    public Freelancer findById(int id) throws SQLException {
        String sql = "SELECT * FROM Freelancer WHERE Freelancer_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (!rs.next()) return null;
                Freelancer f = new Freelancer();
                f.setId(rs.getInt("Freelancer_ID"));
                f.setName(rs.getString("Freelancer_Name"));
                f.setEmail(rs.getString("Freelancer_Email"));
                f.setPhone(rs.getString("Freelancer_Phone"));
                f.setPortfolio(rs.getString("Portfolio"));
                return f;
            }
        }
    }

    public boolean create(Freelancer f) throws SQLException {
        String sql = "INSERT INTO Freelancer (Freelancer_Name,Freelancer_Email,Freelancer_Phone,Portfolio) VALUES (?,?,?,?)";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, f.getName());
            ps.setString(2, f.getEmail());
            ps.setString(3, f.getPhone());
            ps.setString(4, f.getPortfolio());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean update(Freelancer f) throws SQLException {
        String sql = "UPDATE Freelancer SET Freelancer_Name=?,Freelancer_Email=?,Freelancer_Phone=?,Portfolio=? WHERE Freelancer_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, f.getName());
            ps.setString(2, f.getEmail());
            ps.setString(3, f.getPhone());
            ps.setString(4, f.getPortfolio());
            ps.setInt(5, f.getId());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean delete(int id) throws SQLException {
        String sql = "DELETE FROM Freelancer WHERE Freelancer_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        }
    }

    public List<Freelancer> searchByName(String kw) throws SQLException {
        String sql = "SELECT * FROM Freelancer WHERE Freelancer_Name LIKE ?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, "%" + kw + "%");
            try (ResultSet rs = ps.executeQuery()) {
                List<Freelancer> list = new ArrayList<>();
                while (rs.next()) {
                    Freelancer f = new Freelancer();
                    f.setId(rs.getInt("Freelancer_ID"));
                    f.setName(rs.getString("Freelancer_Name"));
                    f.setEmail(rs.getString("Freelancer_Email"));
                    f.setPhone(rs.getString("Freelancer_Phone"));
                    f.setPortfolio(rs.getString("Portfolio"));
                    list.add(f);
                }
                return list;
            }
        }
    }
}
