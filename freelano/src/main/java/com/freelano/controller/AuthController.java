package com.freelano.controller;

import com.freelano.model.Client;
import com.freelano.model.Freelancer;
import com.freelano.service.ClientService;
import com.freelano.service.FreelancerService;
import com.freelano.util.PasswordUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/auth")
public class AuthController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ClientService     clientSvc     = new ClientService();
    private FreelancerService freelancerSvc = new FreelancerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Show login or register page
        String action = req.getParameter("action");
        if ("register".equals(action)) {
            req.getRequestDispatcher("/WEB-INF/pages/register.jsp")
               .forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/pages/login.jsp")
               .forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        String role   = req.getParameter("role");      // "client" or "freelancer"
        String email  = req.getParameter("email");
        String plainPw= req.getParameter("password");

        if ("register".equals(action)) {
            // Common registration fields
            String name  = req.getParameter("name");
            String phone = req.getParameter("phone");
            String extra = req.getParameter("extra");   // address or portfolio

            String hashed = PasswordUtil.hash(plainPw);
            String err;

            if ("client".equals(role)) {
                Client c = new Client();
                c.setName(name);
                c.setEmail(email);
                c.setPhone(phone);
                c.setAddress(extra);
          
                err = clientSvc.register(c);
            } else {
                Freelancer f = new Freelancer();
                f.setName(name);
                f.setEmail(email);
                f.setPhone(phone);
                f.setPortfolio(extra);

            }


        }

        // LOGIN
        String hashed = PasswordUtil.hash(plainPw);
        boolean ok;
        

        // Successful login → create session
        HttpSession session = req.getSession(true);
        session.setAttribute("userRole", role);
        session.setAttribute("userEmail", email);
        session.setMaxInactiveInterval(30 * 60); // 30m

        // Redirect to role dashboard
        resp.sendRedirect(req.getContextPath() + "/" + role + "/dashboard");
    }
}
