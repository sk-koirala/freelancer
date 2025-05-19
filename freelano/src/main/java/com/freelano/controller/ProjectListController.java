package com.freelano.controller;

import com.freelano.service.ProjectService;
import com.freelano.model.Project;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/projects")
public class ProjectListController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ProjectService svc = new ProjectService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws ServletException, IOException {
        try {
            List<Project> list = svc.listAll();
            req.setAttribute("projects", list);
            req.getRequestDispatcher("/WEB-INF/pages/admin/project-list.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
