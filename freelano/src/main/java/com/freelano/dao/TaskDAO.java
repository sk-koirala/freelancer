package com.freelano.dao;

import com.freelano.config.DbConfig;
import com.freelano.model.Task;
import java.sql.*;
import java.sql.Date;
import java.util.*;

public class TaskDAO {

    public List<Task> findAll() throws SQLException {
        String sql = "SELECT * FROM Task";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            List<Task> list = new ArrayList<>();
            while (rs.next()) {
                list.add(mapRow(rs));
            }
            return list;
        }
    }

    public Task findById(int id) throws SQLException {
        String sql = "SELECT * FROM Task WHERE Task_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next() ? mapRow(rs) : null;
            }
        }
    }

    public boolean create(Task t) throws SQLException {
        String sql = "INSERT INTO Task (Task_Name,Task_Description,Task_Deadline,Task_Status,Payment_ID) "
                   + "VALUES (?,?,?,?,?)";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, t.getName());
            ps.setString(2, t.getDescription());
            ps.setDate(3, Date.valueOf(t.getDeadline()));
            ps.setString(4, t.getStatus());
            if (t.getPaymentId() != null) ps.setInt(5, t.getPaymentId());
            else ps.setNull(5, Types.INTEGER);
            return ps.executeUpdate() == 1;
        }
    }

    public boolean update(Task t) throws SQLException {
        String sql = "UPDATE Task SET Task_Name=?,Task_Description=?,Task_Deadline=?,"
                   + "Task_Status=?,Payment_ID=? WHERE Task_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, t.getName());
            ps.setString(2, t.getDescription());
            ps.setDate(3, Date.valueOf(t.getDeadline()));
            ps.setString(4, t.getStatus());
            if (t.getPaymentId() != null) ps.setInt(5, t.getPaymentId());
            else ps.setNull(5, Types.INTEGER);
            ps.setInt(6, t.getId());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean delete(int id) throws SQLException {
        String sql = "DELETE FROM Task WHERE Task_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        }
    }

    public List<Task> search(String kw) throws SQLException {
        String sql = "SELECT * FROM Task WHERE Task_Name LIKE ? OR Task_Status LIKE ?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            String pat = "%" + kw + "%";
            ps.setString(1, pat);
            ps.setString(2, pat);
            try (ResultSet rs = ps.executeQuery()) {
                List<Task> list = new ArrayList<>();
                while (rs.next()) {
                    list.add(mapRow(rs));
                }
                return list;
            }
        }
    }

    private Task mapRow(ResultSet rs) throws SQLException {
        Task t = new Task();
        t.setId(rs.getInt("Task_ID"));
        t.setName(rs.getString("Task_Name"));
        t.setDescription(rs.getString("Task_Description"));
        t.setDeadline(rs.getDate("Task_Deadline").toLocalDate());
        t.setStatus(rs.getString("Task_Status"));
        int pid = rs.getInt("Payment_ID");
        t.setPaymentId(rs.wasNull() ? null : pid);
        return t;
    }
}
