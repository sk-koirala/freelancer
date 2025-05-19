package com.freelano.service;

import com.freelano.dao.TaskDAO;
import com.freelano.model.Task;
import com.freelano.util.ValidationUtil;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

public class TaskService {
    private TaskDAO dao = new TaskDAO();

    public List<Task> listAll() throws SQLException {
        return dao.findAll();
    }

    public Task get(int id) throws SQLException {
        return dao.findById(id);
    }

    public String save(Task t) {

        if (t.getDeadline() == null || t.getDeadline().isBefore(LocalDate.now()))
            return "Deadline must be today or later.";


        try {
            if (t.getId() > 0) dao.update(t);
            else dao.create(t);
            return null;
        } catch (SQLException e) {
            return "DB error: " + e.getMessage();
        }
    }

    public boolean delete(int id) throws SQLException {
        return dao.delete(id);
    }

    public List<Task> search(String kw) throws SQLException {
        return dao.search(kw == null ? "" : kw);
    }
}

