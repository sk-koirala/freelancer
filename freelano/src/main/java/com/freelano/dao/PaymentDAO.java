package com.freelano.dao;

import com.freelano.config.DbConfig;
import com.freelano.model.Payment;
import java.sql.*;
import java.sql.Date;
import java.util.*;

public class PaymentDAO {

    public List<Payment> findAll() throws SQLException {
        String sql = "SELECT * FROM Payment";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            List<Payment> list = new ArrayList<>();
            while (rs.next()) {
                list.add(mapRow(rs));
            }
            return list;
        }
    }

    public Payment findById(int id) throws SQLException {
        String sql = "SELECT * FROM Payment WHERE Payment_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next() ? mapRow(rs) : null;
            }
        }
    }

    public boolean create(Payment p) throws SQLException {
        String sql = "INSERT INTO Payment (Payment_Amount,Payment_Date,Payment_Status) VALUES (?,?,?)";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setBigDecimal(1, p.getAmount());
            ps.setDate(2, Date.valueOf(p.getDate()));
            ps.setString(3, p.getStatus());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean update(Payment p) throws SQLException {
        String sql = "UPDATE Payment SET Payment_Amount=?,Payment_Date=?,Payment_Status=? WHERE Payment_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setBigDecimal(1, p.getAmount());
            ps.setDate(2, Date.valueOf(p.getDate()));
            ps.setString(3, p.getStatus());
            ps.setInt(4, p.getId());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean delete(int id) throws SQLException {
        String sql = "DELETE FROM Payment WHERE Payment_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        }
    }

    public List<Payment> searchByStatus(String kw) throws SQLException {
        String sql = "SELECT * FROM Payment WHERE Payment_Status LIKE ?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, "%" + kw + "%");
            try (ResultSet rs = ps.executeQuery()) {
                List<Payment> list = new ArrayList<>();
                while (rs.next()) {
                    list.add(mapRow(rs));
                }
                return list;
            }
        }
    }

    private Payment mapRow(ResultSet rs) throws SQLException {
        Payment p = new Payment();
        p.setId(rs.getInt("Payment_ID"));
        p.setAmount(rs.getBigDecimal("Payment_Amount"));
        p.setDate(rs.getDate("Payment_Date").toLocalDate());
        p.setStatus(rs.getString("Payment_Status"));
        return p;
    }
}
