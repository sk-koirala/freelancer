package com.freelano.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.regex.Pattern;


@WebServlet(asyncSupported = true, urlPatterns = { "/register","/"})
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public RegisterController() {
        super();
    }

    /**
     * Handles GET requests:
     * Forwards to /WEB-INF/pages/student-register.jsp.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Forward internally to the JSP under WEB-INF
        request.getRequestDispatcher("/WEB-INF/pages/register.jsp")
               .forward(request, response);
    }

    /**
     * Handles POST requests:
     * Validates the form data and redirects accordingly.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
	
    	

        // Retrieve form parameters
        String firstName      = request.getParameter("firstName");
        String lastName       = request.getParameter("lastName");
        String username       = request.getParameter("username");
        String dobStr         = request.getParameter("dob");
        String phone          = request.getParameter("phone");
        String password       = request.getParameter("password");
        String retypePassword = request.getParameter("retypePassword");

        // Redirect base: we'll send users back to /register with error flags
        // rather than directly to the JSP (which is in WEB-INF).
        String redirectBase = request.getContextPath() + "/register";

        // 1. Validate Name Format: only letters allowed.
        if (!isValidName(firstName) || !isValidName(lastName)) {
            response.sendRedirect(redirectBase + "?error=name");
            return;
        }

        // 2. Validate Username: must be longer than 6 chars, no special characters.
        if (!isValidUsername(username)) {
            response.sendRedirect(redirectBase + "?error=username");
            return;
        }

        // 3. Validate Birthday: parse date, ensure not in future.
        LocalDate dob;
        try {
            // expects yyyy-MM-dd format from the form
            dob = LocalDate.parse(dobStr);
        } catch (DateTimeParseException e) {
            response.sendRedirect(redirectBase + "?error=dob");
            return;
        }
        if (dob.isAfter(LocalDate.now())) {
            response.sendRedirect(redirectBase + "?error=birthday");
            return;
        }

        // 4. Validate Phone Number: must start with '+' and be exactly 14 chars.
        if (!isValidPhoneNumber(phone)) {
            response.sendRedirect(redirectBase + "?error=phone");
            return;
        }

        // 5. Validate Password
        if (!isValidPassword(password, retypePassword)) {
            response.sendRedirect(redirectBase + "?error=password");
            return;
        }

        // 6. Duplicate Data Check (stubbed out):
        // Typically you'd check DB or in-memory storage here:
        // if (dbController.isUsernameExists(username) ||
        //     dbController.isEmailExists(email) ||
        //     dbController.isPhoneNumberExists(phone)) {
        //     response.sendRedirect(redirectBase + "?error=duplicate");
        //     return;
        // }

        // Simulate successful registration:
        boolean registrationSuccess = true; // Replace with actual DB insertion result

        if (registrationSuccess) {
            // On success, redirect to login page
        	response.sendRedirect(request.getContextPath() + "/login");
        } else {
            // General error: redirect back to the form
            response.sendRedirect(redirectBase + "?error=general");
        }
    }

    // -- Helper Methods --

    // Only letters allowed
    private boolean isValidName(String name) {
        return name != null && name.matches("^[A-Za-z]+$");
    }

    // Must be > 6 characters, no special chars
    private boolean isValidUsername(String username) {
        return username != null
            && username.length() > 6
            && username.matches("^[A-Za-z0-9]+$");
    }

    // Must start with '+' and have length 14
    private boolean isValidPhoneNumber(String phoneNumber) {
        return phoneNumber != null
            && phoneNumber.startsWith("+")
            && phoneNumber.length() == 14;
    }

    // Must be > 6 chars, have digit, special char, uppercase, and match retype
    private boolean isValidPassword(String password, String retypePassword) {
        if (password == null || retypePassword == null) return false;
        if (!password.equals(retypePassword)) return false;
        if (password.length() <= 6) return false;
        if (!password.matches(".*\\d.*")) return false;           // at least one digit

        // Approach 1: Use Pattern.quote for special chars
        String specialChars = "!@#$%^&*()_+\\-=[\\]{};':\"\\\\|,.<>/?";
        String specialPattern = ".*[" + Pattern.quote(specialChars) + "].*";
        if (!password.matches(specialPattern)) {
            return false; // at least one special character
        }

        if (!password.matches(".*[A-Z].*")) return false;         // at least one uppercase letter

        return true;
    }
}
