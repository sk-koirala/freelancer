document.addEventListener('DOMContentLoaded', function() {
    // Mobile menu functionality
    const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
    const closeMenuBtn = document.querySelector('.close-menu-btn');
    const mobileMenu = document.querySelector('.mobile-menu');
    
    mobileMenuBtn.addEventListener('click', function() {
      mobileMenu.classList.add('open');
      document.body.style.overflow = 'hidden'; // Prevent scrolling when menu is open
    });
    
    closeMenuBtn.addEventListener('click', function() {
      mobileMenu.classList.remove('open');
      document.body.style.overflow = ''; // Re-enable scrolling
    });
    
    // Close menu when clicking outside
    document.addEventListener('click', function(event) {
      if (mobileMenu.classList.contains('open') && 
          !mobileMenu.contains(event.target) && 
          !mobileMenuBtn.contains(event.target)) {
        mobileMenu.classList.remove('open');
        document.body.style.overflow = '';
      }
    });
    
    // Testimonial slider functionality
    const testimonialCards = document.querySelectorAll('.testimonial-card');
    const testimonialDots = document.querySelectorAll('.testimonial-dot');
    let currentTestimonial = 0;
    
    // Function to show a specific testimonial
    function showTestimonial(index) {
      // Hide all testimonials
      testimonialCards.forEach(card => {
        card.classList.remove('active');
      });
      
      // Remove active class from all dots
      testimonialDots.forEach(dot => {
        dot.classList.remove('active');
      });
      
      // Show the selected testimonial
      testimonialCards[index].classList.add('active');
      testimonialDots[index].classList.add('active');
      currentTestimonial = index;
    }
    
    // Set up dot clicks
    testimonialDots.forEach((dot, index) => {
      dot.addEventListener('click', function() {
        showTestimonial(index);
      });
    });
    
    // Auto-rotate testimonials
    setInterval(function() {
      let nextTestimonial = (currentTestimonial + 1) % testimonialCards.length;
      showTestimonial(nextTestimonial);
    }, 5000);
    
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function(e) {
        e.preventDefault();
        
        const targetId = this.getAttribute('href');
        if (targetId === '#') return;
        
        const targetElement = document.querySelector(targetId);
        if (targetElement) {
          // Close mobile menu if open
          if (mobileMenu.classList.contains('open')) {
            mobileMenu.classList.remove('open');
            document.body.style.overflow = '';
          }
          
          // Calculate header height for offset
          const headerHeight = document.querySelector('.main-header').offsetHeight;
          
          // Scroll to target with offset for fixed header
          window.scrollTo({
            top: targetElement.offsetTop - headerHeight - 20,
            behavior: 'smooth'
          });
        }
      });
    });
  });
  