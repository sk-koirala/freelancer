
document.addEventListener('DOMContentLoaded', function() {
    // Sidebar toggle functionality
    const menuToggle = document.getElementById('menu-toggle');
    const sidebar = document.querySelector('.sidebar');
    
    menuToggle.addEventListener('click', function() {
      sidebar.classList.toggle('open');
    });
    
    // Close sidebar when clicking outside (for mobile)
    document.addEventListener('click', function(event) {
      const isClickInside = sidebar.contains(event.target) || menuToggle.contains(event.target);
      if (!isClickInside && sidebar.classList.contains('open')) {
        sidebar.classList.remove('open');
      }
    });
    
    // Password modal functionality
    const changePasswordBtn = document.querySelector('.change-password-btn');
    const passwordModal = document.getElementById('passwordModal');
    const closeModal = document.querySelector('.close-modal');
    const passwordForm = document.getElementById('passwordForm');
    
    changePasswordBtn.addEventListener('click', function() {
      passwordModal.style.display = 'flex';
    });
    
    closeModal.addEventListener('click', function() {
      passwordModal.style.display = 'none';
    });
    
    // Close modal when clicking outside
    window.addEventListener('click', function(event) {
      if (event.target === passwordModal) {
        passwordModal.style.display = 'none';
      }
    });
    
    // Handle password form submission
    passwordForm.addEventListener('submit', function(event) {
      event.preventDefault();
      
      const currentPassword = document.getElementById('currentPassword').value;
      const newPassword = document.getElementById('newPassword').value;
      const confirmPassword = document.getElementById('confirmPassword').value;
      
      // Validate password
      if (newPassword !== confirmPassword) {
        alert('The new passwords do not match!');
        return;
      }
      
      // Here you would typically send the password change request to your server
      // This is a simulation for the static version
      alert('Password changed successfully!');
      passwordModal.style.display = 'none';
      passwordForm.reset();
    });
    
    // Edit profile button functionality
    const editProfileBtn = document.querySelector('.edit-btn');
    
    editProfileBtn.addEventListener('click', function() {
      alert('This would open the profile edit form in a real application!');
    });
    
    // Two-factor authentication button
    const twoFactorBtn = document.querySelector('.two-factor-btn');
    
    twoFactorBtn.addEventListener('click', function() {
      alert('This would initiate the two-factor authentication setup process in a real application!');
    });
    
    // Notification button functionality
    const notificationBtn = document.querySelector('.notification-btn');
    
    notificationBtn.addEventListener('click', function() {
      alert('You have 3 new notifications:\n- New freelancer registration\n- Project approval request\n- System maintenance scheduled');
    });
  });
