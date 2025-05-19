package com.freelano.controller;

import com.freelano.model.Client;
import com.freelano.service.ClientService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

/**
 * GET /admin/clients → shows the JSP list.
 */
@WebServlet("/admin/clients")
public class ClientListController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ClientService svc = new ClientService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            List<Client> clients = svc.listAll();
            req.setAttribute("clients", clients);
            req.getRequestDispatcher("/WEB-INF/pages/client-list.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
