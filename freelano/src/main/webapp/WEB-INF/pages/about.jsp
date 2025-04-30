<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Freelano - Freelancer Collaboration System</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css" />
</head>
<body>
  <header class="main-header">
    <div class="container">
      <div class="header-content">
        <div class="logo-container">
          <h1 class="logo">Freelano</h1>
        </div>
        
        <nav class="main-nav">
          <ul class="nav-links">
            <li><a href="${pageContext.request.contextPath}/home" >Home</a></li>
            <li><a href="${pageContext.request.contextPath}/about" class="active">About Us</a></li>
            <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
            <li><a href="#how-it-works">How It Works</a></li>
          </ul>
        </nav>
        <div class="header-actions">
          <a href="${pageContext.request.contextPath}/login" class="btn-outlined">Log In</a>
          <a href="${pageContext.request.contextPath}/register" class="btn-outlined">Register</a>
          <button class="mobile-menu-btn">≡</button>
        </div>
      </div>
    </div>
  </header>

 

  <section class="page-header">
    <div class="container">
      <h1>About Freelano</h1>
      <p>Learn more about our mission, values, and the team behind Freelano</p>
    </div>
  </section>

  <section class="about-mission">
    <div class="container">
      <div class="mission-content">
        <div class="mission-text">
          <h2>Our Mission</h2>
          <p>Freelano was founded with a clear mission: to create a platform where talented freelancers and quality clients can connect, collaborate, and create exceptional work together without the friction and uncertainty that often plagues freelance relationships.</p>
          <p>We believe that when freelancers have the tools and support they need to do their best work, and when clients can easily find and work with the right talent, everyone wins. That's why we've built a platform that puts transparency, fairness, and quality at its core.</p>
        </div>
        <div class="mission-image">
          <div class="image-placeholder">
            <div class="placeholder-content">🌟</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="about-values">
    <div class="container">
      <div class="section-header">
        <h2>Our Values</h2>
        <p>The principles that guide everything we do at Freelano</p>
      </div>
      
      <div class="values-grid">
        <div class="value-card">
          <div class="value-icon" style="background-color: rgba(155, 135, 245, 0.1); color: #9b87f5;">🤝</div>
          <h3>Trust & Transparency</h3>
          <p>We foster trust through transparent practices, clear pricing, and honest communication between all parties.</p>
        </div>
        
        <div class="value-card">
          <div class="value-icon" style="background-color: rgba(52, 195, 143, 0.1); color: #34c38f;">⭐</div>
          <h3>Quality First</h3>
          <p>We prioritize quality in everything, from the freelancers on our platform to the tools we provide for collaboration.</p>
        </div>
        
        <div class="value-card">
          <div class="value-icon" style="background-color: rgba(80, 165, 241, 0.1); color: #50a5f1;">🚀</div>
          <h3>Continuous Improvement</h3>
          <p>We constantly evolve our platform based on user feedback, industry trends, and technological advancements.</p>
        </div>
        
        <div class="value-card">
          <div class="value-icon" style="background-color: rgba(241, 180, 76, 0.1); color: #f1b44c;">🌍</div>
          <h3>Global Community</h3>
          <p>We embrace diversity and inclusion, bringing together talent and opportunities from around the world.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="about-story">
    <div class="container">
      <div class="story-content">
        <div class="story-image">
          <div class="image-placeholder">
            <div class="placeholder-content">📖</div>
          </div>
        </div>
        <div class="story-text">
          <h2>Our Story</h2>
          <p>Freelano was born in 2023 when our founder, Suyash Koirala, experienced firsthand the challenges of freelancing. After working as a freelancer for several years and later hiring freelancers for his own projects, he saw a gap in the market for a platform that truly understood the needs of both sides.</p>
          <p>Starting with a small team of developers, designers, and former freelancers, we built a platform that addresses the pain points we experienced ourselves. What began as a simple matching service has grown into a comprehensive ecosystem for freelance collaboration.</p>
          <p>Today, Freelano connects thousands of freelancers with clients from around the world, facilitating projects across dozens of categories and skill sets. We're proud of how far we've come, but we're even more excited about where we're going.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="about-team">
    <div class="container">
      <div class="section-header">
        <h2>Meet Our Team</h2>
        <p>The passionate people behind Freelano</p>
      </div>
      
      <div class="team-grid">
        <div class="team-card">
          <div class="team-image">
            <img src="https://ui-avatars.com/api/?name=Suyash+Koirala&size=200&background=9b87f5&color=fff" alt="Suyash Koirala">
          </div>
          <h3>Suyash Koirala</h3>
          <p class="team-role">Founder & CEO</p>
          <p class="team-bio">Former freelancer with a passion for creating better work opportunities for independent professionals worldwide.</p>
        </div>
        
        <div class="team-card">
          <div class="team-image">
            <img src="https://ui-avatars.com/api/?name=Priya+Sharma&size=200&background=34c38f&color=fff" alt="Priya Sharma">
          </div>
          <h3>Priya Sharma</h3>
          <p class="team-role">Chief Technology Officer</p>
          <p class="team-bio">Tech innovator with 10+ years experience building scalable platforms and marketplace solutions.</p>
        </div>
        
        <div class="team-card">
          <div class="team-image">
            <img src="https://ui-avatars.com/api/?name=Alex+Chen&size=200&background=50a5f1&color=fff" alt="Alex Chen">
          </div>
          <h3>Alex Chen</h3>
          <p class="team-role">Head of Product</p>
          <p class="team-bio">Product specialist focused on creating intuitive user experiences that solve real problems.</p>
        </div>
        
        <div class="team-card">
          <div class="team-image">
            <img src="https://ui-avatars.com/api/?name=Sophia+Williams&size=200&background=f1b44c&color=fff" alt="Sophia Williams">
          </div>
          <h3>Sophia Williams</h3>
          <p class="team-role">Marketing Director</p>
          <p class="team-bio">Marketing strategist with extensive experience in growing digital marketplaces and communities.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="about-stats">
    <div class="container">
      <div class="stats-wrapper">
        <div class="stat-block">
          <div class="stat-number">15,000+</div>
          <div class="stat-label">Freelancers</div>
        </div>
        <div class="stat-block">
          <div class="stat-number">8,500+</div>
          <div class="stat-label">Clients</div>
        </div>
        <div class="stat-block">
          <div class="stat-number">32,000+</div>
          <div class="stat-label">Projects Completed</div>
        </div>
        <div class="stat-block">
          <div class="stat-number">120+</div>
          <div class="stat-label">Countries</div>
        </div>
      </div>
    </div>
  </section>

  <section class="cta-section">
    <div class="container">
      <div class="cta-content">
        <h2>Ready to Join Freelano?</h2>
        <p>Whether you're a freelancer looking for quality projects or a client in search of top talent, Freelano is here to help you succeed.</p>
        <div class="cta-buttons">
          <a href="register.html" class="btn-primary">Sign Up Now</a>
          <a href="contact.html" class="btn-outlined">Contact Us</a>
        </div>
      </div>
    </div>
  </section>

  <footer class="main-footer">
    <div class="container">
      <div class="footer-grid">
        <div class="footer-col">
          <h3 class="footer-logo">Freelano</h3>
          <p class="footer-description">Connecting talented freelancers with amazing clients since 2023.</p>
          <div class="social-links">
            <a href="#" class="social-link">FB</a>
            <a href="#" class="social-link">TW</a>
            <a href="#" class="social-link">IG</a>
            <a href="#" class="social-link">LI</a>
          </div>
        </div>
        
        <div class="footer-col">
          <h4>For Clients</h4>
          <ul class="footer-links">
            <li><a href="#">How to Hire</a></li>
            <li><a href="#">Talent Marketplace</a></li>
            <li><a href="#">Payment Protection</a></li>
            <li><a href="#">Client Success Stories</a></li>
          </ul>
        </div>
        
        <div class="footer-col">
          <h4>For Freelancers</h4>
          <ul class="footer-links">
            <li><a href="#">How to Find Work</a></li>
            <li><a href="#">Create a Winning Profile</a></li>
            <li><a href="#">Skills Tests</a></li>
            <li><a href="#">Freelancer Success Stories</a></li>
          </ul>
        </div>
        
        <div class="footer-col">
          <h4>Resources</h4>
          <ul class="footer-links">
            <li><a href="#">Help & Support</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="#">Trust & Safety</a></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
        </div>
      </div>

      <div class="footer-bottom">
        <p class="copyright">© 2023 Freelano. All rights reserved.</p>
        <div class="footer-legal">
          <a href="#">Privacy Policy</a>
          <a href="#">Terms of Service</a>
          <a href="#">Accessibility</a>
        </div>
      </div>
    </div>
  </footer>

  <script src="home.js"></script>
</body>
</html>