
document.addEventListener('DOMContentLoaded', function() {
    // Initialize charts
    initUserGrowthChart();
    initRevenueChart();
    
    // Chart action buttons
    const chartActionBtns = document.querySelectorAll('.card-action-btn');
    chartActionBtns.forEach(btn => {
      btn.addEventListener('click', function() {
        // Remove active class from all buttons
        chartActionBtns.forEach(b => b.classList.remove('active'));
        // Add active class to clicked button
        this.classList.add('active');
        
        // Update chart based on selection (in a real app)
        const type = this.getAttribute('data-type');
        if (type === 'freelancers') {
          updateUserGrowthChart('freelancers');
        } else {
          updateUserGrowthChart('clients');
        }
      });
    });
    
    // Time range selection
    const timeRangeSelect = document.getElementById('timeRange');
    timeRangeSelect.addEventListener('change', function() {
      // In a real app, this would update all dashboard data based on the selected time range
      alert(`Dashboard data would update to show ${this.value} data`);
    });
    
    // View all activities button
    const viewAllBtn = document.querySelector('.view-all-btn');
    viewAllBtn.addEventListener('click', function() {
      alert('This would navigate to the full activity log page');
    });
  });
  
  // User Growth Chart
  function initUserGrowthChart() {
    const ctx = document.getElementById('userGrowthChart').getContext('2d');
    const userGrowthChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        datasets: [{
          label: 'Freelancers',
          data: [65, 79, 90, 101, 125, 142],
          borderColor: '#9b87f5',
          backgroundColor: 'rgba(155, 135, 245, 0.1)',
          tension: 0.4,
          fill: true
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false
          }
        },
        scales: {
          y: {
            beginAtZero: true,
            grid: {
              color: 'rgba(0, 0, 0, 0.05)'
            }
          },
          x: {
            grid: {
              display: false
            }
          }
        }
      }
    });
    
    // Store chart in window for later reference
    window.userGrowthChart = userGrowthChart;
  }
  
  function updateUserGrowthChart(type) {
    if (!window.userGrowthChart) return;
    
    const chart = window.userGrowthChart;
    
    if (type === 'freelancers') {
      chart.data.datasets[0].label = 'Freelancers';
      chart.data.datasets[0].data = [65, 79, 90, 101, 125, 142];
      chart.data.datasets[0].borderColor = '#9b87f5';
      chart.data.datasets[0].backgroundColor = 'rgba(155, 135, 245, 0.1)';
    } else {
      chart.data.datasets[0].label = 'Clients';
      chart.data.datasets[0].data = [42, 53, 62, 68, 77, 89];
      chart.data.datasets[0].borderColor = '#34c38f';
      chart.data.datasets[0].backgroundColor = 'rgba(52, 195, 143, 0.1)';
    }
    
    chart.update();
  }
  
  // Revenue Chart
  function initRevenueChart() {
    const ctx = document.getElementById('revenueChart').getContext('2d');
    const revenueChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        datasets: [{
          label: 'Revenue',
          data: [8450, 9320, 11250, 10200, 11800, 12450],
          backgroundColor: 'rgba(80, 165, 241, 0.6)',
          borderColor: '#50a5f1',
          borderWidth: 1,
          borderRadius: 4
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false
          }
        },
        scales: {
          y: {
            beginAtZero: true,
            grid: {
              color: 'rgba(0, 0, 0, 0.05)'
            },
            ticks: {
              callback: function(value) {
                return '$' + value;
              }
            }
          },
          x: {
            grid: {
              display: false
            }
          }
        }
      }
    });
  }
  