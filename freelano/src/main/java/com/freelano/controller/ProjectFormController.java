package com.freelano.controller;

import com.freelano.service.ProjectService;
import com.freelano.model.Project;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/admin/project/form")
public class ProjectFormController extends HttpServlet {
    private ProjectService svc = new ProjectService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id != null) {
            try {
                Project p = svc.get(Integer.parseInt(id));
                req.setAttribute("project", p);
            } catch (Exception ignore) {}
        }
        req.getRequestDispatcher("/WEB-INF/pages/admin/project-form.jsp")
           .forward(req, resp);
    }
}
