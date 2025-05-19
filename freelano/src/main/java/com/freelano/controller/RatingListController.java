package com.freelano.controller;

import com.freelano.service.RatingService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/admin/ratings")
public class RatingListController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private RatingService svc = new RatingService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws ServletException, IOException {
        try {
            req.setAttribute("ratings", svc.listAll());
            req.getRequestDispatcher("/WEB-INF/pages/admin/rating-list.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}

