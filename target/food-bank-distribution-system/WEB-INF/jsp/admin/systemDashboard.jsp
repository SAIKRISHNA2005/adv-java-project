<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>System Dashboard - Admin</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
  <style>
    .bento{ display:grid; grid-template-columns: repeat(12,1fr); gap:1rem; }
    .tile{ background:#fff; border-radius:12px; padding:1rem; box-shadow:0 .5rem 1.25rem rgba(0,0,0,.06); }
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
    <h2 class="mb-0">System Dashboard</h2>
    <span class="text-muted">Analytics and KPIs</span>
  </div>

  <div class="bento">
    <div class="tile t-4">
      <div class="d-flex align-items-center justify-content-between">
        <div>
          <div class="text-muted small">Active Users</div>
          <div class="fs-4 fw-bold">1,820</div>
        </div>
        <i class="bi bi-people-fill text-primary fs-3"></i>
      </div>
    </div>
    <div class="tile t-4">
      <div class="d-flex align-items-center justify-content-between">
        <div>
          <div class="text-muted small">Pending Requests</div>
          <div class="fs-4 fw-bold">129</div>
        </div>
        <i class="bi bi-inboxes text-warning fs-3"></i>
      </div>
    </div>
    <div class="tile t-4">
      <div class="d-flex align-items-center justify-content-between">
        <div>
          <div class="text-muted small">On-time Delivery</div>
          <div class="fs-4 fw-bold">96%</div>
        </div>
        <i class="bi bi-truck text-success fs-3"></i>
      </div>
    </div>
    <div class="tile t-8">
      <h6 class="mb-3">System Health</h6>
      <div class="row g-3">
        <div class="col-md-6">
          <div class="p-3 rounded border bg-light">DB Latency: 12 ms</div>
        </div>
        <div class="col-md-6">
          <div class="p-3 rounded border bg-light">API Errors (24h): 0.3%</div>
        </div>
      </div>
    </div>
    <div class="tile t-4">
      <h6 class="mb-3">Quick Links</h6>
      <div class="vstack gap-2">
        <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/app/admin/users">Manage Users</a>
        <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/app/reports/distribution">Reports</a>
        <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/app/requests/admin">Review Requests</a>
      </div>
    </div>
    <div class="tile t-12">
      <h6 class="mb-3">KPI Overview</h6>
      <canvas id="chartMonthlyDistribution" height="180"></canvas>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>