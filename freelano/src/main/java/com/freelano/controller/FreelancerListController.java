package com.freelano.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.freelano.service.FreelancerService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/freelancers")
public class FreelancerListController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private FreelancerService svc = new FreelancerService();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
          throws ServletException, IOException {
        try {
			req.setAttribute("freelancers", svc.listAll());
		} catch (SQLException e) {
			e.printStackTrace();
		}
        req.getRequestDispatcher("/WEB-INF/pages/admin/freelancer-list.jsp")
           .forward(req, resp);
    }
}
