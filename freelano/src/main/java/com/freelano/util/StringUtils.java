package com.freelano.util;

public class StringUtils {
	// Start: Queries
		public static final String QUERY_REGISTER_Freelancer = "INSERT INTO freelancer_info ("
				+ "first_name, last_name,  gender, email, number, freelancing, user_name, password, image) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		public static final String QUERY_LOGIN_USER_CHECK = "SELECT * FROM freelancer_info WHERE user_name = ?";
		public static final String QUERY_GET_ALL_FREELANCER= "SELECT * FROM freelancer_info";
		public static final String QUERY_GET_USER_ID = "SELECT id FROM freelancer_info WHERE user_name = ?";
		public static final String QUERY_DELETE_USER = "DELETE FROM freelancer_info WHERE user_name = ?";
	// End: Queries

		// Start: Parameter names
		public static final String USERNAME = "username";
		public static final String USER_NAME = "user_name";
		public static final String FIRST_NAME = "firstName";
		public static final String LAST_NAME = "lastName";
		public static final String BIRTHDAY = "birthday";
		public static final String EMAIL = "email";
		public static final String PHONE_NUMBER = "phoneNumber";
		public static final String PORTFOLIO = "portfolio";
		public static final String PASSWORD = "password";
		public static final String RETYPE_PASSWORD = "retypePassword";
		public static final String IMAGE = "image";
		// End: Parameter names

		// Start: Validation Messages
		// Register Page Messages
		public static final String MESSAGE_SUCCESS_REGISTER = "Successfully Registered!";
		public static final String MESSAGE_ERROR_REGISTER = "Please correct the form data.";
		public static final String MESSAGE_ERROR_USERNAME = "Username is already registered.";
		public static final String MESSAGE_ERROR_EMAIL = "Email is already registered.";
		public static final String MESSAGE_ERROR_PHONE_NUMBER = "Phone number is already registered.";
		public static final String MESSAGE_ERROR_PASSWORD_UNMATCHED = "Password is not matched.";
		public static final String MESSAGE_ERROR_INCORRECT_DATA = "Please correct all the fields.";

		// Login Page Messages
		public static final String MESSAGE_SUCCESS_LOGIN = "Successfully LoggedIn!";
		public static final String MESSAGE_ERROR_LOGIN = "Either username or password is not correct!";
		public static final String MESSAGE_ERROR_CREATE_ACCOUNT = "Account for this username is not registered! Please create a new account.";

		// Other Messages
		public static final String MESSAGE_ERROR_SERVER = "An unexpected server error occurred.";
		public static final String MESSAGE_SUCCESS_DELETE = "Successfully Deleted!";
		public static final String MESSAGE_ERROR_DELETE = "Cannot delete the user!";
		
		public static final String MESSAGE_SUCCESS = "successMessage";
		public static final String MESSAGE_ERROR = "errorMessage";
		// End: Validation Messages

		// Start: JSP Route
		public static final String PAGE_URL_LOGIN = "/pages/login.jsp";
		public static final String PAGE_URL_REGISTER = "/pages/register.jsp";
		public static final String PAGE_URL_WELCOME = "/pages/welcome.jsp";
		public static final String PAGE_URL_FOOTER = "pages/footer.jsp";
		public static final String PAGE_URL_HEADER = "pages/header.jsp";
		public static final String URL_LOGIN = "/login.jsp";
		public static final String URL_INDEX = "/index.jsp";
		// End: JSP Route

		// Start: Servlet Route
		public static final String SERVLET_URL_LOGIN = "/login";
		public static final String SERVLET_URL_REGISTER = "/register";
		public static final String SERVLET_URL_ADMINDASHBOARD = "/admin";
		public static final String SERVLET_URL_HOME = "/home";

		// End: Servlet Route

		// Start: Normal Text
		public static final String USER = "user";
		public static final String SUCCESS = "success";
		public static final String TRUE = "true";
		public static final String JSESSIONID = "JSESSIONID";
		public static final String LOGIN = "Login";
		public static final String LOGOUT = "Logout";
		public static final String SLASH= "/";
		public static final String DELETE_ID= "deleteId";
		public static final String UPDATE_ID= "updateId";
		
		
		
	}

