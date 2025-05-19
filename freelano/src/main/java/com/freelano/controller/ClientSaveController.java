package com.freelano.controller;

import com.freelano.model.Client;
import com.freelano.service.ClientService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

/**
 * POST /admin/client/save → handles create & update.
 */
@WebServlet("/admin/client/save")
public class ClientSaveController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ClientService svc = new ClientService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Client c = new Client();
        String id = req.getParameter("id");
        if (id != null && !id.isEmpty()) {
            c.setId(Integer.parseInt(id));
        }
        c.setName(req.getParameter("name"));
        c.setEmail(req.getParameter("email"));
        c.setPhone(req.getParameter("phone"));
        c.setAddress(req.getParameter("address"));

        String error = svc.save(c);
        if (error != null) {
            // Redisplay form with error
            req.setAttribute("error", error);
            req.setAttribute("client", c);
            req.getRequestDispatcher("/WEB-INF/pages/client-form.jsp")
               .forward(req, resp);
        } else {
            // Redirect back to list
            resp.sendRedirect(req.getContextPath() + "/clients");
        }
    }
}
