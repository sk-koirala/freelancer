package com.freelano.controller;
import com.freelano.model.Freelancer;
import com.freelano.service.FreelancerService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/freelancer/form")
public class FreelancerFormController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private FreelancerService svc = new FreelancerService();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
          throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id!=null)
			try {
				req.setAttribute("freelancer", svc.get(Integer.parseInt(id)));
			} catch (NumberFormatException e) {

				e.printStackTrace();
			} catch (SQLException e) {
	
				e.printStackTrace();
			}
        req.getRequestDispatcher("/WEB-INF/pages/admin/freelancer-form.jsp")
           .forward(req, resp);
    }
}

