<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Freelano - Admin Dashboard</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="dashboard.css">
</head>
<body>
  <div class="app-container">
    <!-- Sidebar -->
    <aside class="sidebar">
      <div class="sidebar-header">
        <h1 class="logo">Freelano</h1>
        <button id="menu-toggle" class="menu-toggle">≡</button>
      </div>
      <nav class="sidebar-nav">
        <ul>
          <li class="active"><a href="${pageContext.request.contextPath}/dashboard" ><span class="icon">📊</span> Dashboard</a></li>
          <li><a href="freelancers.html"><span class="icon">👥</span> Freelancers</a></li>
          <li><a href="clients.html"><span class="icon">👤</span> Clients</a></li>
          <li><a href="projects.html"><span class="icon">📁</span> Projects</a></li>
          <li><a href="payments.html"><span class="icon">💰</span> Payments</a></li>
          <li><a href="admin-profile.html"><span class="icon">👨‍💼</span> Profile</a></li>
          <li><a href="settings.html"><span class="icon">⚙️</span> Settings</a></li>
        </ul>
      </nav>
      <div class="sidebar-footer">
        <a href="login.html" class="logout-btn"><span class="icon">🚪</span> Logout</a>
      </div>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
      <header class="top-header">
        <div class="search-container">
          <input type="text" placeholder="Search..." class="search-input">
          <button class="search-btn">🔍</button>
        </div>
        <div class="user-menu">
          <div class="notifications">
            <button class="notification-btn">🔔</button>
            <span class="notification-badge">3</span>
          </div>
          <div class="user-profile">
            <img src="https://ui-avatars.com/api/?name=Suyash+Koirala&background=9b87f5&color=fff" alt="Suyash Koirala" class="avatar">
            <span class="user-name">Suyash Koirala</span>
          </div>
        </div>
      </header>

      <div class="content-container">
        <div class="page-header">
          <h2>Dashboard Overview</h2>
          <div class="date-filter">
            <select id="timeRange">
              <option value="today">Today</option>
              <option value="week" selected>This Week</option>
              <option value="month">This Month</option>
              <option value="year">This Year</option>
            </select>
          </div>
        </div>

        <div class="stats-grid">
          <div class="stat-card">
            <div class="stat-icon" style="background-color: rgba(155, 135, 245, 0.1); color: #9b87f5;">👥</div>
            <div class="stat-info">
              <h3 class="stat-title">Total Freelancers</h3>
              <div class="stat-value">142</div>
              <div class="stat-change positive">+12% <span>vs last week</span></div>
            </div>
          </div>
          
          <div class="stat-card">
            <div class="stat-icon" style="background-color: rgba(52, 195, 143, 0.1); color: #34c38f;">👤</div>
            <div class="stat-info">
              <h3 class="stat-title">Total Clients</h3>
              <div class="stat-value">89</div>
              <div class="stat-change positive">+5% <span>vs last week</span></div>
            </div>
          </div>
          
          <div class="stat-card">
            <div class="stat-icon" style="background-color: rgba(80, 165, 241, 0.1); color: #50a5f1;">📁</div>
            <div class="stat-info">
              <h3 class="stat-title">Active Projects</h3>
              <div class="stat-value">25</div>
              <div class="stat-change negative">-3% <span>vs last week</span></div>
            </div>
          </div>
          
          <div class="stat-card">
            <div class="stat-icon" style="background-color: rgba(241, 180, 76, 0.1); color: #f1b44c;">💰</div>
            <div class="stat-info">
              <h3 class="stat-title">Revenue</h3>
              <div class="stat-value">$12,450</div>
              <div class="stat-change positive">+8% <span>vs last week</span></div>
            </div>
          </div>
        </div>

        <div class="dashboard-grid">
          <div class="chart-card">
            <div class="card-header">
              <h3>User Growth</h3>
              <div class="card-actions">
                <button class="card-action-btn active" data-type="freelancers">Freelancers</button>
                <button class="card-action-btn" data-type="clients">Clients</button>
              </div>
            </div>
            <div class="card-body">
              <canvas id="userGrowthChart"></canvas>
            </div>
          </div>
          
          <div class="chart-card">
            <div class="card-header">
              <h3>Revenue</h3>
              <div class="dropdown">
                <button class="dropdown-btn">Monthly <span class="dropdown-arrow">▼</span></button>
                <div class="dropdown-content">
                  <a href="#">Weekly</a>
                  <a href="#">Monthly</a>
                  <a href="#">Yearly</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <canvas id="revenueChart"></canvas>
            </div>
          </div>
          
          <div class="recent-activity">
            <div class="card-header">
              <h3>Recent Activity</h3>
              <button class="view-all-btn">View All</button>
            </div>
            <div class="activity-list">
              <div class="activity-item">
                <div class="activity-icon" style="background-color: rgba(52, 195, 143, 0.1); color: #34c38f;">✅</div>
                <div class="activity-content">
                  <p class="activity-text"><span class="highlight">John Doe</span> completed the project <span class="highlight">Website Redesign</span></p>
                  <p class="activity-time">2 hours ago</p>
                </div>
              </div>
              <div class="activity-item">
                <div class="activity-icon" style="background-color: rgba(241, 180, 76, 0.1); color: #f1b44c;">💰</div>
                <div class="activity-content">
                  <p class="activity-text"><span class="highlight">Payment</span> of $1,250 received from <span class="highlight">ABC Corp</span></p>
                  <p class="activity-time">5 hours ago</p>
                </div>
              </div>
              <div class="activity-item">
                <div class="activity-icon" style="background-color: rgba(80, 165, 241, 0.1); color: #50a5f1;">📁</div>
                <div class="activity-content">
                  <p class="activity-text">New project <span class="highlight">Mobile App Development</span> created by <span class="highlight">Tech Solutions</span></p>
                  <p class="activity-time">8 hours ago</p>
                </div>
              </div>
              <div class="activity-item">
                <div class="activity-icon" style="background-color: rgba(155, 135, 245, 0.1); color: #9b87f5;">👥</div>
                <div class="activity-content">
                  <p class="activity-text">New freelancer <span class="highlight">Sarah Johnson</span> registered</p>
                  <p class="activity-time">1 day ago</p>
                </div>
              </div>
              <div class="activity-item">
                <div class="activity-icon" style="background-color: rgba(244, 106, 106, 0.1); color: #f46a6a;">❌</div>
                <div class="activity-content">
                  <p class="activity-text">Project <span class="highlight">Logo Design</span> was cancelled</p>
                  <p class="activity-time">1 day ago</p>
                </div>
              </div>
            </div>
          </div>
          
          <div class="top-performers">
            <div class="card-header">
              <h3>Top Freelancers</h3>
              <div class="dropdown">
                <button class="dropdown-btn">This Month <span class="dropdown-arrow">▼</span></button>
                <div class="dropdown-content">
                  <a href="#">This Week</a>
                  <a href="#">This Month</a>
                  <a href="#">This Year</a>
                </div>
              </div>
            </div>
            <table class="performers-table">
              <thead>
                <tr>
                  <th>Freelancer</th>
                  <th>Projects</th>
                  <th>Earnings</th>
                  <th>Rating</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <div class="user-info">
                      <img src="https://ui-avatars.com/api/?name=James+Wilson&background=9b87f5&color=fff" alt="James Wilson" class="small-avatar">
                      <span>James Wilson</span>
                    </div>
                  </td>
                  <td>12</td>
                  <td>$3,450</td>
                  <td>
                    <div class="rating">★★★★★</div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="user-info">
                      <img src="https://ui-avatars.com/api/?name=Emily+Davis&background=34c38f&color=fff" alt="Emily Davis" class="small-avatar">
                      <span>Emily Davis</span>
                    </div>
                  </td>
                  <td>9</td>
                  <td>$2,840</td>
                  <td>
                    <div class="rating">★★★★★</div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="user-info">
                      <img src="https://ui-avatars.com/api/?name=Michael+Brown&background=50a5f1&color=fff" alt="Michael Brown" class="small-avatar">
                      <span>Michael Brown</span>
                    </div>
                  </td>
                  <td>8</td>
                  <td>$2,350</td>
                  <td>
                    <div class="rating">★★★★☆</div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="user-info">
                      <img src="https://ui-avatars.com/api/?name=Jessica+Lee&background=f1b44c&color=fff" alt="Jessica Lee" class="small-avatar">
                      <span>Jessica Lee</span>
                    </div>
                  </td>
                  <td>7</td>
                  <td>$1,890</td>
                  <td>
                    <div class="rating">★★★★☆</div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </main>
  </div>

  <!-- Include Chart.js for the dashboard charts -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="dashboard.js"></script>
  <script src="script.js"></script>
</body>
</html>
