<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Freelano - Login</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/auth.css" />
</head>
<body>
  <div class="auth-container">
    <div class="auth-sidebar">
      <div class="auth-sidebar-content">
        <h1 class="logo">Freelano</h1>
        <h2 class="sidebar-title">Welcome Back!</h2>
        <p class="sidebar-text">Log in to access your freelance projects, manage clients, and grow your business with our collaboration tools.</p>
        <div class="sidebar-image">
          <!-- A decorative illustration would go here -->
          <div class="decorated-image">🚀</div>
        </div>
      </div>
    </div>
    
    <div class="auth-form-container">
      <div class="auth-form-wrapper">
        <div class="auth-header">
          <h2>Log In</h2>
          <p>Enter your credentials to access your account</p>
        </div>
        
        <div class="role-selector">
          <div class="role-option active" data-role="client">
            <div class="role-icon">👤</div>
            <span>Client</span>
          </div>
          <div class="role-option" data-role="freelancer">
            <div class="role-icon">👥</div>
            <span>Freelancer</span>
          </div>
          <div class="role-option" data-role="admin">
            <div class="role-icon">👨‍💼</div>
            <span>Admin</span>
          </div>
        </div>
        
        <form id="loginForm" class="auth-form">
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" placeholder="Enter your email" required>
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <div class="password-input">
              <input type="password" id="password" placeholder="Enter your password" required>
              <button type="button" class="toggle-password" tabindex="-1">👁️</button>
            </div>
          </div>
          <div class="form-options">
            <div class="remember-me">
              <input type="checkbox" id="remember">
              <label for="remember">Remember me</label>
            </div>
            <a href="#" class="forgot-password">Forgot password?</a>
          </div>
          <button type="submit" class="submit-btn">Log In</button>
        </form>
        
        <div class="auth-footer">
          Don't have an account? <a href="register.html">Register now</a>
        </div>
      </div>
    </div>
  </div>

<script src="${pageContext.request.contextPath}/js/auth.js"></script>
</body>
</html>
