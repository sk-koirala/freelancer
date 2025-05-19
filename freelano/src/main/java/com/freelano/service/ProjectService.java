package com.freelano.service;

import com.freelano.dao.ProjectDAO;
import com.freelano.model.Project;
import com.freelano.util.ValidationUtil;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

public class ProjectService {
    private ProjectDAO dao = new ProjectDAO();

    public List<Project> listAll() throws SQLException {
        return dao.findAll();
    }

    public Project get(int id) throws SQLException {
        return dao.findById(id);
    }

    public String save(Project p) {

        if (p.getBudget() == null || p.getBudget().signum() < 0) 
            return "Budget must be non-negative.";
        if (p.getDeadline() == null || p.getDeadline().isBefore(LocalDate.now()))
            return "Deadline must be today or later.";


        try {
            if (p.getId() > 0) dao.update(p);
            else dao.create(p);
            return null;
        } catch (SQLException e) {
            return "Database error: " + e.getMessage();
        }
    }

    public boolean delete(int id) throws SQLException {
        return dao.delete(id);
    }

    public List<Project> search(String kw) throws SQLException {
        return dao.search(kw == null ? "" : kw);
    }
}
