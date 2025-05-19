package com.freelano.dao;

import com.freelano.config.DbConfig;
import com.freelano.model.Rating;
import java.sql.*;
import java.util.*;

public class RatingDAO {

    public List<Rating> findAll() throws SQLException {
        String sql = "SELECT * FROM Rating";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            List<Rating> list = new ArrayList<>();
            while (rs.next()) {
                list.add(mapRow(rs));
            }
            return list;
        }
    }

    public Rating findById(int id) throws SQLException {
        String sql = "SELECT * FROM Rating WHERE Rating_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next() ? mapRow(rs) : null;
            }
        }
    }

    public boolean create(Rating r) throws SQLException {
        String sql = "INSERT INTO Rating (Rating_Value,Comment,Rating_Details) VALUES (?,?,?)";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, r.getValue());
            ps.setString(2, r.getComment());
            ps.setString(3, r.getDetails());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean update(Rating r) throws SQLException {
        String sql = "UPDATE Rating SET Rating_Value=?,Comment=?,Rating_Details=? WHERE Rating_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, r.getValue());
            ps.setString(2, r.getComment());
            ps.setString(3, r.getDetails());
            ps.setInt(4, r.getId());
            return ps.executeUpdate() == 1;
        }
    }

    public boolean delete(int id) throws SQLException {
        String sql = "DELETE FROM Rating WHERE Rating_ID=?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        }
    }

    public List<Rating> searchByComment(String kw) throws SQLException {
        String sql = "SELECT * FROM Rating WHERE Comment LIKE ?";
        try (Connection c = DbConfig.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, "%" + kw + "%");
            try (ResultSet rs = ps.executeQuery()) {
                List<Rating> list = new ArrayList<>();
                while (rs.next()) {
                    list.add(mapRow(rs));
                }
                return list;
            }
        }
    }

    private Rating mapRow(ResultSet rs) throws SQLException {
        Rating r = new Rating();
        r.setId(rs.getInt("Rating_ID"));
        r.setValue(rs.getInt("Rating_Value"));
        r.setComment(rs.getString("Comment"));
        r.setDetails(rs.getString("Rating_Details"));
        return r;
    }
}

