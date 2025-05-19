package com.freelano.controller;

import com.freelano.model.Client;
import com.freelano.service.ClientService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

/**
 * GET /admin/client/form[?id=…] → new-or-edit form.
 */
@WebServlet("/admin/client/form")
public class ClientFormController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ClientService svc = new ClientService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String idParam = req.getParameter("id");
        if (idParam != null) {
            try {
                Client c = svc.get(Integer.parseInt(idParam));
                req.setAttribute("client", c);
            } catch (Exception ignore) { }
        }
        req.getRequestDispatcher("/WEB-INF/pages/client-form.jsp")
           .forward(req, resp);
    }
}
