// Global JS for Food Bank Frontend UIs
// - Handles simple reveal-on-scroll animations
// - Initializes demo charts if canvases are present

(function(){
  // Reveal on scroll using IntersectionObserver
  const revealClass = 'reveal';
  const revealedClass = 'reveal-show';
  const els = document.querySelectorAll('.' + revealClass);
  if ('IntersectionObserver' in window && els.length){
    const io = new IntersectionObserver((entries)=>{
      entries.forEach(e=>{
        if(e.isIntersecting){
          e.target.classList.add(revealedClass);
          io.unobserve(e.target);
        }
      })
    }, { threshold: 0.12 });
    els.forEach(el=> io.observe(el));
  } else {
    // Fallback
    els.forEach(el=> el.classList.add(revealedClass));
  }

  // Chart.js demo initializers (runs only if Chart is loaded and canvas exists)
  function initChart(id, cfg){
    const ctx = document.getElementById(id);
    if (!ctx || !window.Chart) return;
    // eslint-disable-next-line no-undef
    new Chart(ctx, cfg);
  }

  // Example charts for dashboards/reports
  initChart('chartMonthlyDistribution', {
    type: 'line',
    data: {
      labels: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
      datasets: [{
        label: 'Meals Delivered',
        data: [320,410,390,520,610,720,680,750,810,860,920,1010],
        borderColor: '#0d6efd',
        backgroundColor: 'rgba(13,110,253,0.15)',
        fill: true,
        tension: .35
      }]
    },
    options: { plugins: { legend: { display: false } }, scales: { x: { grid: { display:false }}, y: { beginAtZero:true }}}
  });

  initChart('chartDonationTrend', {
    type: 'bar',
    data: {
      labels: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
      datasets: [{
        label: 'Donations',
        data: [12,18,9,22,27,31,20],
        backgroundColor: ['#0d6efd','#20c997','#fd7e14','#6f42c1','#198754','#dc3545','#0dcaf0']
      }]
    },
    options: { plugins: { legend: { display: false } }, scales: { y: { beginAtZero:true }}}
  });
})();