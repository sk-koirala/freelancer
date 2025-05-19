package com.freelano.service;

import com.freelano.dao.FreelancerDAO;
import com.freelano.model.Freelancer;
import com.freelano.util.ValidationUtil;
import java.sql.SQLException;
import java.util.List;

public class FreelancerService {
    private FreelancerDAO dao = new FreelancerDAO();

    public List<Freelancer> listAll() throws SQLException {
        return dao.findAll();
    }

    public Freelancer get(int id) throws SQLException {
        return dao.findById(id);
    }

    public String save(Freelancer f) {
        if (!ValidationUtil.isName(f.getName()))   return "Invalid name";
        if (!ValidationUtil.isEmail(f.getEmail())) return "Invalid email";

        try {
            if (f.getId() > 0) dao.update(f);
            else dao.create(f);
            return null;
        } catch (SQLException e) {
            return "DB error: "+e.getMessage();
        }
    }

    public boolean delete(int id) throws SQLException {
        return dao.delete(id);
    }

    public List<Freelancer> search(String kw) throws SQLException {
        return dao.searchByName(kw);
    }
}
