<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reporting & Analytics - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
  <style>
    .bento { display:grid; grid-template-columns: repeat(12,1fr); gap:1rem; }
    .tile { background:#fff; border-radius:12px; padding:1rem; box-shadow:0 .5rem 1.25rem rgba(0,0,0,.06); }
    .t-12{ grid-column: span 12; }
    .t-8{ grid-column: span 8; }
    .t-4{ grid-column: span 4; }
    .t-6{ grid-column: span 6; }
    @media (max-width: 992px){ .t-8,.t-6,.t-4{ grid-column: span 12; } }
  </style>
</head>
<body class="d-flex flex-column min-vh-100">
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>
<div class="container my-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h2 class="mb-0">Reports & Analytics</h2>
    <div>
      <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/app/reports/export/pdf"><i class="bi bi-filetype-pdf me-1"></i>Export PDF</a>
      <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/app/reports/export/excel"><i class="bi bi-file-earmark-spreadsheet me-1"></i>Export Excel</a>
    </div>
  </div>

  <div class="bento">
    <div class="tile t-6">
      <h6 class="mb-3">Impact Metrics</h6>
      <ul class="list-unstyled mb-0">
        <li class="mb-2"><strong>Food Saved:</strong> 9,800 kg</li>
        <li class="mb-2"><strong>People Fed:</strong> 20,000+</li>
        <li class="mb-2"><strong>Waste Reduced:</strong> 35%</li>
      </ul>
    </div>
    <div class="tile t-6">
      <h6 class="mb-3">User Activity</h6>
      <canvas id="chartDonationTrend" height="160"></canvas>
    </div>
    <div class="tile t-12">
      <h6 class="mb-3">Distribution Analytics</h6>
      <canvas id="chartMonthlyDistribution" height="180"></canvas>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>