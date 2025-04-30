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
      <h1>Contact Us</h1>
      <p>Have questions or feedback? We'd love to hear from you!</p>
    </div>
  </section>

  <section class="contact-section">
    <div class="container">
      <div class="contact-wrapper">
        <div class="contact-info">
          <h2>Get in Touch</h2>
          <p>Our team is here to help with any questions you might have about Freelano. Reach out to us using any of the methods below.</p>
          
          <div class="contact-methods">
            <div class="contact-method">
              <div class="method-icon" style="background-color: rgba(155, 135, 245, 0.1); color: #9b87f5;">📧</div>
              <div class="method-details">
                <h3>Email Us</h3>
                <p>support@freelano.com</p>
                <p>For general inquiries: info@freelano.com</p>
              </div>
            </div>
            
            <div class="contact-method">
              <div class="method-icon" style="background-color: rgba(52, 195, 143, 0.1); color: #34c38f;">📱</div>
              <div class="method-details">
                <h3>Call Us</h3>
                <p>+1 (555) 123-4567</p>
                <p>Mon-Fri: 9:00 AM - 6:00 PM EST</p>
              </div>
            </div>
            
            <div class="contact-method">
              <div class="method-icon" style="background-color: rgba(80, 165, 241, 0.1); color: #50a5f1;">📍</div>
              <div class="method-details">
                <h3>Visit Us</h3>
                <p>Tokha, Kathmandu</p>
                <p>Nepal, 44600</p>
              </div>
            </div>
          </div>
          
          <div class="social-contact">
            <h3>Follow Us</h3>
            <div class="social-links">
              <a href="#" class="social-link">FB</a>
              <a href="#" class="social-link">TW</a>
              <a href="#" class="social-link">IG</a>
              <a href="#" class="social-link">LI</a>
            </div>
          </div>
        </div>
        
        <div class="contact-form-container">
          <h2>Send Us a Message</h2>
          <form id="contactForm" class="contact-form">
            <div class="form-group">
              <label for="name">Full Name</label>
              <input type="text" id="name" placeholder="Enter your full name" required>
            </div>
            
            <div class="form-group">
              <label for="email">Email Address</label>
              <input type="email" id="email" placeholder="Enter your email" required>
            </div>
            
            <div class="form-group">
              <label for="subject">Subject</label>
              <input type="text" id="subject" placeholder="Enter message subject" required>
            </div>
            
            <div class="form-group">
              <label for="message">Message</label>
              <textarea id="message" placeholder="Type your message here..." rows="5" required></textarea>
            </div>
            
            <button type="submit" class="submit-btn">Send Message</button>
          </form>
        </div>
      </div>
    </div>
  </section>

  <section class="faq-section">
    <div class="container">
      <div class="section-header">
        <h2>Frequently Asked Questions</h2>
        <p>Find quick answers to common questions about Freelano</p>
      </div>
      
      <div class="faq-container">
        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I create an account on Freelano?</h3>
            <button class="toggle-btn">+</button>
          </div>
          <div class="faq-answer">
            <p>Creating an account on Freelano is simple! Click on the "Register" button in the top navigation, choose whether you want to sign up as a freelancer or a client, fill out the registration form with your details, and you're ready to go!</p>
          </div>
        </div>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>How does payment work on Freelano?</h3>
            <button class="toggle-btn">+</button>
          </div>
          <div class="faq-answer">
            <p>Freelano uses a secure escrow system for all payments. Clients deposit funds into escrow when a project begins, and the funds are only released to the freelancer once the work is completed and approved. This provides security for both parties involved.</p>
          </div>
        </div>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>What fees does Freelano charge?</h3>
            <button class="toggle-btn">+</button>
          </div>
          <div class="faq-answer">
            <p>Freelano charges a 5% fee to freelancers on completed projects and a 2% processing fee for clients. These fees help us maintain the platform, provide customer support, and develop new features to improve your experience.</p>
          </div>
        </div>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I find the right freelancer for my project?</h3>
            <button class="toggle-btn">+</button>
          </div>
          <div class="faq-answer">
            <p>You can post a project on our platform with detailed requirements, and interested freelancers will submit proposals. Alternatively, you can browse through our directory of freelancers, filter by skills and expertise, review their portfolios and ratings, and invite qualified candidates to apply for your project.</p>
          </div>
        </div>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>What if I'm not satisfied with the work?</h3>
            <button class="toggle-btn">+</button>
          </div>
          <div class="faq-answer">
            <p>If you're not satisfied with the delivered work, you can request revisions based on your initial project requirements. If issues persist, our dispute resolution team can step in to mediate and find a fair solution for both parties.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="cta-section">
    <div class="container">
      <div class="cta-content">
        <h2>Ready to Get Started?</h2>
        <p>Join thousands of freelancers and clients already using Freelano to achieve their goals.</p>
        <div class="cta-buttons">
          <a href="register.html" class="btn-primary">Sign Up Now</a>
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
  <script src="contact.js"></script>
</body>
</html>