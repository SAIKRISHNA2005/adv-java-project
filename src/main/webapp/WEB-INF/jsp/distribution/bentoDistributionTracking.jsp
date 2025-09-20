<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Distribution Tracking - Food Bank</title>
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
    <h2 class="mb-0">Distribution & Logistics</h2>
    <span class="text-muted">Track deliveries & assign drivers</span>
  </div>

  <div class="bento">
    <div class="tile t-8">
      <h6 class="mb-3">Live Deliveries</h6>
      <div class="table-responsive">
        <table class="table align-middle">
          <thead><tr><th>#</th><th>Driver</th><th>Status</th><th>ETA</th><th></th></tr></thead>
          <tbody>
            <tr>
              <td>#204</td>
              <td>Ravi Kumar</td>
              <td><span class="badge text-bg-info">In Transit</span></td>
              <td>14:35</td>
              <td class="text-end"><button class="btn btn-sm btn-outline-primary">Details</button></td>
            </tr>
            <tr>
              <td>#205</td>
              <td>Priya</td>
              <td><span class="badge text-bg-warning">Scheduled</span></td>
              <td>16:10</td>
              <td class="text-end"><button class="btn btn-sm btn-outline-primary">Details</button></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="tile t-4">
      <h6 class="mb-3">Assign Driver</h6>
      <form action="${pageContext.request.contextPath}/app/distribution/assign" method="post" class="vstack gap-2">
        <input class="form-control" name="deliveryId" placeholder="Delivery ID">
        <select name="driverId" class="form-select"><option>Ravi Kumar</option><option>Priya</option><option>Akash</option></select>
        <button class="btn btn-success" type="submit">Assign</button>
      </form>
    </div>

    <div class="tile t-12">
      <h6 class="mb-3">Route Optimization (Google Maps Placeholder)</h6>
      <div class="chart-placeholder" style="height:260px;"></div>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>