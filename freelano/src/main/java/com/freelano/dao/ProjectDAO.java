package com.freelano.dao;

import com.freelano.config.DbConfig;
import com.freelano.model.Project;
import java.sql.*;
import java.sql.Date;
import java.time.LocalDate;
import java.util.*;

public class ProjectDAO {

    public List<Project> findAll() throws SQLException {
        String sql = "SELECT * FROM Project";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            List<Project> list = new ArrayList<>();
            while (rs.next()) {
                Project p = extractProject(rs);
                list.add(p);
            }
            return list;
        }
    }

    public Project findById(int id) throws SQLException {
        String sql = "SELECT * FROM Project WHERE Project_ID = ?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next() ? extractProject(rs) : null;
            }
        }
    }

    public boolean create(Project p) throws SQLException {
        String sql = "INSERT INTO Project "
                   + "(Project_Title,Project_Description,Project_Budget,Project_Deadline,Project_Status) "
                   + "VALUES (?,?,?,?,?)";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, p.getTitle());
            ps.setString(2, p.getDescription());
            ps.setBigDecimal(3, p.getBudget());
            ps.setDate(4, Date.valueOf(p.getDeadline()));
            ps.setString(5, p.getStatus());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean update(Project p) throws SQLException {
        String sql = "UPDATE Project SET "
                   + "Project_Title=?, Project_Description=?, "
                   + "Project_Budget=?, Project_Deadline=?, Project_Status=? "
                   + "WHERE Project_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, p.getTitle());
            ps.setString(2, p.getDescription());
            ps.setBigDecimal(3, p.getBudget());
            ps.setDate(4, Date.valueOf(p.getDeadline()));
            ps.setString(5, p.getStatus());
            ps.setInt(6, p.getId());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean delete(int id) throws SQLException {
        String sql = "DELETE FROM Project WHERE Project_ID = ?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        }
    }

    public List<Project> search(String kw) throws SQLException {
        String sql = "SELECT * FROM Project "
                   + "WHERE Project_Title LIKE ? OR Project_Status LIKE ?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            String pat = "%" + kw + "%";
            ps.setString(1, pat);
            ps.setString(2, pat);
            try (ResultSet rs = ps.executeQuery()) {
                List<Project> list = new ArrayList<>();
                while (rs.next()) {
                    list.add(extractProject(rs));
                }
                return list;
            }
        }
    }

    private Project extractProject(ResultSet rs) throws SQLException {
        Project p = new Project();
        p.setId(rs.getInt("Project_ID"));
        p.setTitle(rs.getString("Project_Title"));
        p.setDescription(rs.getString("Project_Description"));
        p.setBudget(rs.getBigDecimal("Project_Budget"));
        p.setDeadline(rs.getDate("Project_Deadline").toLocalDate());
        p.setStatus(rs.getString("Project_Status"));
        return p;
    }
}
