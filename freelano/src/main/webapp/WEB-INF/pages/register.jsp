<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Freelano - Register</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/auth.css" />
</head>
<body>
  <div class="auth-container">
    <div class="auth-sidebar">
      <div class="auth-sidebar-content">
        <h1 class="logo">Freelano</h1>
        <h2 class="sidebar-title">Join Freelano Today!</h2>
        <p class="sidebar-text">Create your account and start connecting with clients and freelancers from around the world.</p>
        <div class="sidebar-image">
          <!-- A decorative illustration would go here -->
          <div class="decorated-image">🌟</div>
        </div>
      </div>
    </div>
    
    <div class="auth-form-container">
      <div class="auth-form-wrapper">
        <div class="auth-header">
          <h2>Create an Account</h2>
          <p>Fill in the details to get started</p>
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
        </div>
        
        <form id="registerForm" class="auth-form">
          <div class="form-group">
            <label for="name">Full Name</label>
            <input type="text" id="name" placeholder="Enter your full name" required>
          </div>
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" placeholder="Enter your email" required>
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <div class="password-input">
              <input type="password" id="password" placeholder="Create a password" required>
              <button type="button" class="toggle-password" tabindex="-1">👁️</button>
            </div>
          </div>
          <div class="form-group">
            <label for="confirmPassword">Confirm Password</label>
            <div class="password-input">
              <input type="password" id="confirmPassword" placeholder="Confirm your password" required>
              <button type="button" class="toggle-password" tabindex="-1">👁️</button>
            </div>
          </div>
          <div class="terms-checkbox">
            <input type="checkbox" id="terms" required>
            <label for="terms">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
          </div>
          <button type="submit" class="submit-btn">Create Account</button>
        </form>
        
        <div class="auth-footer">
          Already have an account? <a href="${pageContext.request.contextPath}/login">Log in</a>
        </div>
      </div>
    </div>
  </div>

<script src="${pageContext.request.contextPath}/js/auth.js"></script>
</body>
</html>
