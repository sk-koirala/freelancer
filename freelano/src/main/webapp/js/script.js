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
}); 