package com.freelano.service;

import com.freelano.dao.PaymentDAO;
import com.freelano.model.Payment;
import com.freelano.util.ValidationUtil;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

public class PaymentService {
    private PaymentDAO dao = new PaymentDAO();

    public List<Payment> listAll() throws SQLException {
        return dao.findAll();
    }

    public Payment get(int id) throws SQLException {
        return dao.findById(id);
    }

    public String save(Payment p) {
        if (p.getAmount() == null || p.getAmount().signum() < 0)
            return "Amount must be non-negative.";
        if (p.getDate() == null || p.getDate().isAfter(LocalDate.now()))
            return "Date cannot be in the future.";


        try {
            if (p.getId() > 0) dao.update(p);
            else dao.create(p);
            return null;
        } catch (SQLException e) {
            return "DB error: " + e.getMessage();
        }
    }

    public boolean delete(int id) throws SQLException {
        return dao.delete(id);
    }

    public List<Payment> search(String kw) throws SQLException {
        return dao.searchByStatus(kw == null ? "" : kw);
    }
}
