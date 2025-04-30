<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Freelano - Admin Profile</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
  <div class="app-container">
    <div class="sidebar">
      <div class="sidebar-header">
        <a href="${pageContext.request.contextPath}/home" class="active"><h1 class="logo" >Freelano</h1></a> 
        <button class="menu-toggle" id="menu-toggle">☰</button>
      </div>
      
      <nav class="sidebar-nav">
        <ul>
          <li class="active"><a href="#"><span class="icon">👤</span> Profile</a></li>
          <li><a href="${pageContext.request.contextPath}/dashboard" ><span class="icon">📊</span> Dashboard</a></li>
          <li><a href="#"><span class="icon">👥</span> Users</a></li>
          <li><a href="#"><span class="icon">📝</span> Projects</a></li>
          <li><a href="#"><span class="icon">💰</span> Payments</a></li>
          <li><a href="#"><span class="icon">⚙️</span> Settings</a></li>
        </ul>
      </nav>
      
      <div class="sidebar-footer">
        <a href="${pageContext.request.contextPath}/login" class="logout-btn"><span class="icon">🚪</span> Logout</a>
      </div>
    </div>
    
    <div class="main-content">
      <header class="top-header">
        <div class="search-container">
          <input type="text" class="search-input" placeholder="Search...">
          <button class="search-btn">🔍</button>
        </div>
        
        <div class="user-menu">
          <div class="notifications">
            <button class="notification-btn" title="Notifications">🔔</button>
            <span class="notification-badge">3</span>
          </div>
          
          <div class="user-profile">
            <img src="suyash img.jpg" alt="Admin" class="avatar">
            <span class="user-name">Suyash Koirala</span>
          </div>
        </div>
      </header>
      
      <div class="content-container">
        <div class="page-header">
          <h2>Admin Profile</h2>
          <button class="edit-btn">Edit Profile</button>
        </div>
        
        <div class="profile-container">
          <div class="profile-card">
            <div class="profile-header">
              <div class="profile-image">
                <img src="suyash img.jpg" alt="Admin Profile">
                <button class="change-photo-btn">Change Photo</button>
              </div>
              
              <div class="profile-info">
                <h2 class="profile-name">Suyash Koirala</h2>
                <p class="profile-username">@skkoiral</p>
                <span class="profile-role">Admin</span>
                
                <div class="profile-stats">
                  <div class="stat">
                    <span class="stat-value">124</span>
                    <span class="stat-label">Projects</span>
                  </div>
                  <div class="stat">
                    <span class="stat-value">1.2k</span>
                    <span class="stat-label">Users</span>
                  </div>
                  <div class="stat">
                    <span class="stat-value">95%</span>
                    <span class="stat-label">Success Rate</span>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="profile-details">
              <div class="detail-section">
                <h3>Basic Information</h3>
                <div class="detail-grid">
                  <div class="detail-item">
                    <span class="detail-label">Email</span>
                    <span class="detail-value">suyashkoirala11@gmail.com</span>
                  </div>
                  <div class="detail-item">
                    <span class="detail-label">Phone</span>
                    <span class="detail-value">+977 9812345678</span>
                  </div>
                  <div class="detail-item">
                    <span class="detail-label">Location</span>
                    <span class="detail-value">Tokha, Kathmandu</span>
                  </div>
                  <div class="detail-item">
                    <span class="detail-label">Country</span>
                    <span class="detail-value">Nepal</span>
                  </div>
                  <div class="detail-item">
                    <span class="detail-label">Postal Code</span>
                    <span class="detail-value">44600</span>
                  </div>
                  <div class="detail-item">
                    <span class="detail-label">Role</span>
                    <span class="detail-value">Administrator</span>
                  </div>
                </div>
              </div>
              
              <div class="detail-section">
                <h3>Skills & Expertise</h3>
                <div class="skills-container">
                  <span class="skill-tag">Web Development</span>
                  <span class="skill-tag">UI/UX Design</span>
                  <span class="skill-tag">Project Management</span>
                  <span class="skill-tag">Team Leadership</span>
                  <span class="skill-tag">System Administration</span>
                </div>
              </div>
              
              <div class="detail-section">
                <h3>Account Security</h3>
                <div class="security-buttons">
                  <button class="change-password-btn">Change Password</button>
                  <button class="two-factor-btn">Enable Two-Factor Auth</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Password Change Modal -->
  <div id="passwordModal" class="modal">
    <div class="modal-content">
      <span class="close-modal">&times;</span>
      <h2>Change Password</h2>
      <form id="passwordForm">
        <div class="form-group">
          <label for="currentPassword">Current Password</label>
          <input type="password" id="currentPassword" required>
        </div>
        <div class="form-group">
          <label for="newPassword">New Password</label>
          <input type="password" id="newPassword" required>
        </div>
        <div class="form-group">
          <label for="confirmPassword">Confirm New Password</label>
          <input type="password" id="confirmPassword" required>
        </div>
        <button type="submit" class="submit-btn">Update Password</button>
      </form>
    </div>
  </div>

<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
