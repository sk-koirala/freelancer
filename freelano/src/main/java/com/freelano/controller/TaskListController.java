package com.freelano.controller;

import com.freelano.service.TaskService;
import com.freelano.model.Task;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/tasks")
public class TaskListController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TaskService svc = new TaskService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws ServletException, IOException {
        try {
            List<Task> list = svc.listAll();
            req.setAttribute("tasks", list);
            req.getRequestDispatcher("/WEB-INF/pages/admin/task-list.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
