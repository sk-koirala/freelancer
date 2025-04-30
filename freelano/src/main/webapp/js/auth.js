
document.addEventListener('DOMContentLoaded', function() {
    // Toggle password visibility
    const togglePassword = document.querySelector('.toggle-password');
    if (togglePassword) {
      togglePassword.addEventListener('click', function() {
        const passwordInput = document.getElementById('password');
        if (passwordInput.type === 'password') {
          passwordInput.type = 'text';
          this.textContent = '🔒';
        } else {
          passwordInput.type = 'password';
          this.textContent = '👁️';
        }
      });
    }
    
    // Role selector
    const roleOptions = document.querySelectorAll('.role-option');
    roleOptions.forEach(option => {
      option.addEventListener('click', function() {
        // Remove active class from all options
        roleOptions.forEach(opt => opt.classList.remove('active'));
        // Add active class to clicked option
        this.classList.add('active');
        
        // If we're on login page, update form action based on role
        const loginForm = document.getElementById('loginForm');
        if (loginForm) {
          const role = this.getAttribute('data-role');
          if (role === 'admin') {
            loginForm.setAttribute('action', 'dashboard.html');
          } else if (role === 'freelancer') {
            loginForm.setAttribute('action', 'freelancer-dashboard.html');
          } else {
            loginForm.setAttribute('action', 'client-dashboard.html');
          }
        }
      });
    });
    
    // Login form submission
    const loginForm = document.getElementById('loginForm');
    if (loginForm) {
      loginForm.addEventListener('submit', function(event) {
        event.preventDefault();
        
        // Get form data
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        const activeRole = document.querySelector('.role-option.active').getAttribute('data-role');
        
        // Basic validation
        if (!email || !password) {
          alert('Please fill in all fields');
          return;
        }
        
        // In a real application, you would send this data to a server for authentication
        console.log('Login attempt:', { email, password, role: activeRole });
        
        // Simulate successful login
        if (activeRole === 'admin' && email === 'suyashkoirala11@gmail.com') {
          window.location.href = 'dashboard.html';
        } else if (activeRole === 'admin') {
          alert('Admin access denied. Please use the correct admin credentials.');
        } else if (activeRole === 'freelancer') {
          // Simulate freelancer login (in a real app, this would check credentials)
          window.location.href = 'dashboard.html'; // Redirecting to admin dashboard for demo
        } else {
          // Simulate client login (in a real app, this would check credentials)
          window.location.href = 'dashboard.html'; // Redirecting to admin dashboard for demo
        }
      });
    }
    
    // Registration form submission
    const registerForm = document.getElementById('registerForm');
    if (registerForm) {
      registerForm.addEventListener('submit', function(event) {
        event.preventDefault();
        
        // Get form data
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const activeRole = document.querySelector('.role-option.active').getAttribute('data-role');
        const termsAccepted = document.getElementById('terms').checked;
        
        // Basic validation
        if (!name || !email || !password || !confirmPassword) {
          alert('Please fill in all fields');
          return;
        }
        
        if (password !== confirmPassword) {
          alert('Passwords do not match');
          return;
        }
        
        if (!termsAccepted) {
          alert('Please accept the terms and conditions');
          return;
        }
        
        // In a real application, you would send this data to a server for registration
        console.log('Registration attempt:', { name, email, password, role: activeRole });
        
        // Simulate successful registration
        alert('Registration successful! Please log in.');
        window.location.href = 'login.html';
      });
    }
  });