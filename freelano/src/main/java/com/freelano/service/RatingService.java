package com.freelano.service;

import com.freelano.dao.RatingDAO;
import com.freelano.model.Rating;
import com.freelano.util.ValidationUtil;
import java.sql.SQLException;
import java.util.List;

public class RatingService {
    private RatingDAO dao = new RatingDAO();

    public List<Rating> listAll() throws SQLException {
        return dao.findAll();
    }

    public Rating get(int id) throws SQLException {
        return dao.findById(id);
    }

    public String save(Rating r) {
        if (r.getValue() < 1 || r.getValue() > 5)
            return "Rating value must be between 1 and 5.";


        try {
            if (r.getId() > 0) dao.update(r);
            else dao.create(r);
            return null;
        } catch (SQLException e) {
            return "Database error: " + e.getMessage();
        }
    }

    public boolean delete(int id) throws SQLException {
        return dao.delete(id);
    }

    public List<Rating> search(String kw) throws SQLException {
        return dao.searchByComment(kw == null ? "" : kw);
    }
}
