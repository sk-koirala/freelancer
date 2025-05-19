package com.freelano.controller;

import com.freelano.service.PaymentService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/payments")
public class PaymentListController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PaymentService svc = new PaymentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws ServletException, IOException {
        try {
            req.setAttribute("payments", svc.listAll());
            req.getRequestDispatcher("/WEB-INF/pages/admin/payment-list.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
