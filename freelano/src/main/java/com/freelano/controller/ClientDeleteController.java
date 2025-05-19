package com.freelano.controller;

import com.freelano.service.ClientService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

/**
 * GET /admin/client/delete?id=… → deletes then redirects.
 */
@WebServlet("/admin/client/delete")
public class ClientDeleteController extends HttpServlet {
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
                svc.delete(Integer.parseInt(idParam));
            } catch (Exception ignore) { }
        }
        resp.sendRedirect(req.getContextPath() + "/admin/clients");
    }
}
