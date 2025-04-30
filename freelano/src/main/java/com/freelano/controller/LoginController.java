package com.freelano.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;


/**
 * Servlet implementation class LoginController
 * @author Suyash koirala
 * @lmuId 23048508
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/login"})
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	// Process the login form submission
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Retrieve form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 2. Validate user credentials (mock check).
        //    In a real app, you'd query the DB or in-memory storage used at registration.
        boolean valid = isValidUser(username, password);

        // 3. If valid, redirect to home page. Otherwise, show error.
        if (valid) {
            // Optionally store user in session: request.getSession().setAttribute("user", username);
            response.sendRedirect(request.getContextPath() + "/home");
        } else {
            // Redirect back to /login?error=invalid
            response.sendRedirect(request.getContextPath() + "/login?error=invalid");
        }
    }

    /**
     * Stubbed user validation method:
     * Replace with actual DB check or your own logic.
     */
    private boolean isValidUser(String username, String password) {
        // or you'd do userDao.checkCredentials(username, password);
        return "suyash".equals(username) && "Koirala@123".equals(password);
    }
}