package com.freelano.dao;

import com.freelano.config.DbConfig;
import com.freelano.model.Client;
import java.sql.*;
import java.util.*;

/**
 * Data Access Object for Client.
 * Encapsulates all JDBC code for Client CRUD.
 */
public class ClientDAO {

    /** Fetches all clients. */
    public List<Client> findAll() throws SQLException {
        String sql = "SELECT * FROM Client";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            List<Client> list = new ArrayList<>();
            while (rs.next()) {
                Client c = new Client();
                c.setId(rs.getInt("Client_ID"));
                c.setName(rs.getString("Client_Name"));
                c.setEmail(rs.getString("Client_Email"));
                c.setPhone(rs.getString("Client_Phone"));
                c.setAddress(rs.getString("Client_Address"));
                list.add(c);
            }
            return list;
        }
    }

    /** Finds one client by primary key. */
    public Client findById(int id) throws SQLException {
        String sql = "SELECT * FROM Client WHERE Client_ID = ?";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (!rs.next()) return null;
                Client c = new Client();
                c.setId(rs.getInt("Client_ID"));
                c.setName(rs.getString("Client_Name"));
                c.setEmail(rs.getString("Client_Email"));
                c.setPhone(rs.getString("Client_Phone"));
                c.setAddress(rs.getString("Client_Address"));
                return c;
            }
        }
    }

    /** Inserts a new client. */
    public boolean create(Client c) throws SQLException {
        String sql = "INSERT INTO Client "
                   + "(Client_Name,Client_Email,Client_Phone,Client_Address) "
                   + "VALUES (?,?,?,?)";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, c.getName());
            ps.setString(2, c.getEmail());
            ps.setString(3, c.getPhone());
            ps.setString(4, c.getAddress());
            return ps.executeUpdate() == 1;
        }
    }

    /** Updates an existing client. */
    public boolean update(Client c) throws SQLException {
        String sql = "UPDATE Client SET "
                   + "Client_Name = ?, Client_Email = ?, "
                   + "Client_Phone = ?, Client_Address = ? "
                   + "WHERE Client_ID = ?";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, c.getName());
            ps.setString(2, c.getEmail());
            ps.setString(3, c.getPhone());
            ps.setString(4, c.getAddress());
            ps.setInt(5, c.getId());
            return ps.executeUpdate() == 1;
        }
    }

    /** Deletes a client by ID. */
    public boolean delete(int id) throws SQLException {
        String sql = "DELETE FROM Client WHERE Client_ID = ?";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        }
    }

    /** Searches clients by name (for real-time filtering). */
    public List<Client> searchByName(String kw) throws SQLException {
        String sql = "SELECT * FROM Client WHERE Client_Name LIKE ?";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, "%" + kw + "%");
            try (ResultSet rs = ps.executeQuery()) {
                List<Client> list = new ArrayList<>();
                while (rs.next()) {
                    Client c = new Client();
                    c.setId(rs.getInt("Client_ID"));
                    c.setName(rs.getString("Client_Name"));
                    c.setEmail(rs.getString("Client_Email"));
                    c.setPhone(rs.getString("Client_Phone"));
                    c.setAddress(rs.getString("Client_Address"));
                    list.add(c);
                }
                return list;
            }
        }
    }
}
