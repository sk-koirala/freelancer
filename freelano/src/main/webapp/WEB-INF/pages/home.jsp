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
            <li><a href="${pageContext.request.contextPath}/home" class="active">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
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

 

  <section class="hero-section">
    <div class="container">
      <div class="hero-content">
        <div class="hero-text">
          <h1>Connect, Collaborate, Create with Freelano</h1>
          <p>The premier platform for freelancers and clients to work together seamlessly, delivering exceptional results on projects of any size.</p>
          <div class="hero-cta">
            <a href="${pageContext.request.contextPath}/register" class="btn-primary">Get Started</a>
            <a href="#how-it-works" class="btn-outlined">Learn More</a>
          </div>
        </div>
        <div class="hero-image">
          <div class="image-placeholder">
            <!-- In a real implementation, this would be an actual image -->
            <div class="placeholder-content">🚀</div>
          </div>
        </div>
      </div>
    </div>
    <div class="hero-shape"></div>
  </section>

  <section class="stats-section">
    <div class="container">
      <div class="stats-container">
        <div class="stat-item">
          <h3>15,000+</h3>
          <p>Freelancers</p>
        </div>
        <div class="stat-item">
          <h3>8,500+</h3>
          <p>Clients</p>
        </div>
        <div class="stat-item">
          <h3>32,000+</h3>
          <p>Projects Completed</p>
        </div>
        <div class="stat-item">
          <h3>$12M+</h3>
          <p>Paid to Freelancers</p>
        </div>
      </div>
    </div>
  </section>

  <section class="features-section" id="how-it-works">
    <div class="container">
      <div class="section-header">
        <h2>How Freelano Works</h2>
        <p>Our platform connects talented freelancers with clients looking for high-quality work, making collaboration seamless and efficient.</p>
      </div>

      <div class="features-grid">
        <div class="feature-card">
          <div class="feature-icon" style="background-color: rgba(155, 135, 245, 0.1); color: #9b87f5;">📝</div>
          <h3>Post Your Project</h3>
          <p>Describe your project, set your budget, and post it to our marketplace where skilled freelancers can find it.</p>
        </div>
        <div class="feature-card">
          <div class="feature-icon" style="background-color: rgba(52, 195, 143, 0.1); color: #34c38f;">👥</div>
          <h3>Find Top Talent</h3>
          <p>Browse through profiles of skilled freelancers or receive proposals from professionals interested in your project.</p>
        </div>
        <div class="feature-card">
          <div class="feature-icon" style="background-color: rgba(80, 165, 241, 0.1); color: #50a5f1;">🤝</div>
          <h3>Collaborate Efficiently</h3>
          <p>Use our built-in tools to communicate, share files, and track progress throughout the project lifecycle.</p>
        </div>
        <div class="feature-card">
          <div class="feature-icon" style="background-color: rgba(241, 180, 76, 0.1); color: #f1b44c;">💰</div>
          <h3>Secure Payments</h3>
          <p>Only release payment when you're completely satisfied with the work, ensuring quality and peace of mind.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="categories-section">
    <div class="container">
      <div class="section-header">
        <h2>Explore Categories</h2>
        <p>Find freelancers across a wide range of skills and industries</p>
      </div>

      <div class="categories-grid">
        <a href="#" class="category-card">
          <div class="category-icon">💻</div>
          <h3>Web Development</h3>
          <p>1,245 Freelancers</p>
        </a>
        <a href="#" class="category-card">
          <div class="category-icon">🎨</div>
          <h3>Graphic Design</h3>
          <p>982 Freelancers</p>
        </a>
        <a href="#" class="category-card">
          <div class="category-icon">📱</div>
          <h3>Mobile Apps</h3>
          <p>756 Freelancers</p>
        </a>
        <a href="#" class="category-card">
          <div class="category-icon">📊</div>
          <h3>Digital Marketing</h3>
          <p>892 Freelancers</p>
        </a>
        <a href="#" class="category-card">
          <div class="category-icon">✍️</div>
          <h3>Content Writing</h3>
          <p>1,129 Freelancers</p>
        </a>
        <a href="#" class="category-card">
          <div class="category-icon">🎬</div>
          <h3>Video & Animation</h3>
          <p>678 Freelancers</p>
        </a>
      </div>

      <div class="categories-cta">
        <a href="#" class="btn-outlined">View All Categories</a>
      </div>
    </div>
  </section>

  <section class="testimonials-section">
    <div class="container">
      <div class="section-header">
        <h2>What Our Users Say</h2>
        <p>Hear from freelancers and clients who have found success with Freelano</p>
      </div>

      <div class="testimonials-slider">
        <div class="testimonial-card active">
          <div class="testimonial-content">
            <div class="quote-icon">"</div>
            <p>Freelano changed the way I work. I've found amazing clients, completed challenging projects, and increased my income by 40% in just six months.</p>
          </div>
          <div class="testimonial-author">
            <img src="https://ui-avatars.com/api/?name=John+Smith&background=9b87f5&color=fff" alt="John Smith" class="author-image">
            <div class="author-info">
              <h4>John Smith</h4>
              <p>Full Stack Developer</p>
            </div>
            <div class="testimonial-rating">★★★★★</div>
          </div>
        </div>

        <div class="testimonial-card">
          <div class="testimonial-content">
            <div class="quote-icon">"</div>
            <p>As a small business owner, finding quality freelancers was always a challenge until I discovered Freelano. The platform's vetting process ensures I only work with top professionals.</p>
          </div>
          <div class="testimonial-author">
            <img src="https://ui-avatars.com/api/?name=Sarah+Johnson&background=34c38f&color=fff" alt="Sarah Johnson" class="author-image">
            <div class="author-info">
              <h4>Sarah Johnson</h4>
              <p>E-commerce Entrepreneur</p>
            </div>
            <div class="testimonial-rating">★★★★★</div>
          </div>
        </div>

        <div class="testimonial-card">
          <div class="testimonial-content">
            <div class="quote-icon">"</div>
            <p>The collaboration tools on Freelano are exceptional. I can easily communicate with my clients, share files, and track milestones. It's streamlined my entire workflow.</p>
          </div>
          <div class="testimonial-author">
            <img src="https://ui-avatars.com/api/?name=Michael+Wong&background=50a5f1&color=fff" alt="Michael Wong" class="author-image">
            <div class="author-info">
              <h4>Michael Wong</h4>
              <p>UX/UI Designer</p>
            </div>
            <div class="testimonial-rating">★★★★★</div>
          </div>
        </div>
      </div>

      <div class="testimonial-controls">
        <button class="testimonial-dot active" data-index="0"></button>
        <button class="testimonial-dot" data-index="1"></button>
        <button class="testimonial-dot" data-index="2"></button>
      </div>
    </div>
  </section>

  <section class="cta-section">
    <div class="container">
      <div class="cta-content">
        <h2>Ready to Transform Your Freelancing Experience?</h2>
        <p>Join thousands of freelancers and clients already using Freelano to achieve their goals.</p>
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
            <li><a href="#">Help and Support</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="#">Trust and Safety</a></li>
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

  <script
  type="text/javascript"
  src="${pageContext.request.contextPath}/js/home.js">
</script>
</body>
</html>

