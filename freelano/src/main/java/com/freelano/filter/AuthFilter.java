package com.freelano.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebFilter(urlPatterns = { "/client/*", "/freelancer/*", "/admin/*" })
public class AuthFilter implements Filter {
  @Override
  public void doFilter(ServletRequest req, ServletResponse res,
                       FilterChain chain)
      throws IOException, ServletException {
    HttpServletRequest  request  = (HttpServletRequest) req;
    HttpServletResponse response = (HttpServletResponse) res;
    HttpSession session = request.getSession(false);

    if (session == null || session.getAttribute("email") == null) {
      response.sendRedirect(request.getContextPath() + "/login");
      return;
    }

    String role = (String) session.getAttribute("role");
    String path = request.getRequestURI();

    // Role-based URL checks
    if (path.startsWith(request.getContextPath() + "/admin") && !"admin".equals(role)
     || path.startsWith(request.getContextPath() + "/client") && !"client".equals(role)
     || path.startsWith(request.getContextPath() + "/freelancer") && !"freelancer".equals(role)) {
      response.sendError(403);
      return;
    }

    chain.doFilter(req, res);
  }
}
