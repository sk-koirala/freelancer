package com.freelano.service;

import com.freelano.dao.ClientDAO;
import com.freelano.model.Client;
import com.freelano.util.ValidationUtil;
import java.sql.SQLException;
import java.util.List;

/**
 * Business logic for Client.
 * Validates input before delegating to DAO.
 */
public class ClientService {
    private ClientDAO dao = new ClientDAO();

    /** Returns all clients. */
    public List<Client> listAll() throws SQLException {
        return dao.findAll();
    }

    /** Returns one client or null. */
    public Client get(int id) throws SQLException {
        return dao.findById(id);
    }

    /**
     * Creates or updates a client.
     * @return null if OK, or error message.
     */
    public String save(Client c) {
        // -- Validate --
        if (!ValidationUtil.isName(c.getName()))    return "Name must be letters/spaces only.";
        if (!ValidationUtil.isEmail(c.getEmail()))  return "Invalid email format.";
        if (!ValidationUtil.isPhone(c.getPhone())) return "Phone required.";
        
        try {
            if (c.getId() > 0) dao.update(c);
            else dao.create(c);
            return null;  // success
        } catch (SQLException e) {
            return "Database error: " + e.getMessage();
        }
    }

    /** Deletes. */
    public boolean delete(int id) throws SQLException {
        return dao.delete(id);
    }

    /** Real-time search. */
    public List<Client> search(String kw) throws SQLException {
        return dao.searchByName(kw);
    }

	public String register(Client c) {
		return null;
	}
}
