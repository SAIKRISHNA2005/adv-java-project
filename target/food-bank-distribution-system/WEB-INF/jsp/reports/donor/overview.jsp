<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Donor Reports Overview - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
  <h2 class="mb-4">Donor Reports & Insights</h2>
  <div class="row g-4">
    <div class="col-lg-6">
      <div class="card shadow-sm border-0 h-100">
        <div class="card-header bg-light"><i class="bi bi-graph-up-arrow me-2"></i>Monthly Donations</div>
        <div class="card-body">
          <canvas id="donorMonthlyDonations" height="160"></canvas>
        </div>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="card shadow-sm border-0 h-100">
        <div class="card-header bg-light"><i class="bi bi-pie-chart-fill me-2"></i>Category Split</div>
        <div class="card-body">
          <canvas id="donorCategorySplit" height="160"></canvas>
        </div>
      </div>
    </div>
  </div>
  <div class="row g-4 mt-1">
    <div class="col-12">
      <div class="alert alert-info">
        Data shown is demo only. Replace with backend data later.
      </div>
    </div>
  </div>
</div>

<script>
  // Initialize demo charts for donor overview using Chart.js (loaded globally in footer)
  document.addEventListener('DOMContentLoaded', function () {
    if (window.Chart) {
      const ctx1 = document.getElementById('donorMonthlyDonations');
      if (ctx1) {
        new Chart(ctx1, {
          type: 'line',
          data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [{ label: 'Donations (kg)', data: [12, 19, 9, 15, 22, 18], borderColor: '#0d6efd', backgroundColor: 'rgba(13,110,253,.2)', tension: .3 }]
          },
          options: { responsive: true, maintainAspectRatio: false }
        });
      }
      const ctx2 = document.getElementById('donorCategorySplit');
      if (ctx2) {
        new Chart(ctx2, {
          type: 'doughnut',
          data: {
            labels: ['Grains', 'Produce', 'Canned', 'Bakery'],
            datasets: [{ data: [35, 25, 20, 20], backgroundColor: ['#198754', '#0dcaf0', '#6c757d', '#ffc107'] }]
          },
          options: { responsive: true, maintainAspectRatio: false, plugins: { legend: { position: 'bottom' } } }
        });
      }
    }
  });
</script>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>