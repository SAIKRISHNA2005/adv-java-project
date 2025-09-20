<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Request & Matching - Food Bank</title>
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
    <h2 class="mb-0">Food Request & Smart Matching</h2>
    <span class="text-muted">Create request and view auto-matches</span>
  </div>

  <div class="bento">
    <div class="tile t-6">
      <h6 class="mb-3">Create Request</h6>
      <form action="${pageContext.request.contextPath}/app/requests/create" method="post" class="row g-3">
        <div class="col-md-6">
          <label class="form-label">Category</label>
          <select name="category" class="form-select"><option>Vegetables</option><option>Fruits</option><option>Cooked Food</option><option>Grains</option><option>Other</option></select>
        </div>
        <div class="col-md-6">
          <label class="form-label">Quantity</label>
          <div class="input-group">
            <input type="number" name="quantity" class="form-control" placeholder="e.g. 25">
            <select name="unit" class="form-select"><option>kg</option><option>pieces</option><option>liters</option></select>
          </div>
        </div>
        <div class="col-md-6">
          <label class="form-label">Priority</label>
          <select name="priority" class="form-select"><option>High</option><option>Medium</option><option>Low</option></select>
        </div>
        <div class="col-md-6">
          <label class="form-label">Location</label>
          <input type="text" name="location" class="form-control" placeholder="Area / Pincode">
        </div>
        <div class="col-12">
          <button type="submit" class="btn btn-primary">Submit Request</button>
        </div>
      </form>
    </div>

    <div class="tile t-6">
      <h6 class="mb-3">Auto Matches</h6>
      <div class="list-group">
        <a class="list-group-item list-group-item-action" href="#">
          <div class="d-flex w-100 justify-content-between">
            <h6 class="mb-1">25 kg Rice - Donor City Kitchens</h6>
            <small class="text-success">High Match</small>
          </div>
          <small class="text-muted">2.4 km away • Available • Expires in 20 days</small>
        </a>
        <a class="list-group-item list-group-item-action" href="#">
          <div class="d-flex w-100 justify-content-between">
            <h6 class="mb-1">10 kg Tomatoes - Fresh Farms</h6>
            <small class="text-warning">Medium Match</small>
          </div>
          <small class="text-muted">5.1 km away • Reserved</small>
        </a>
      </div>
    </div>

    <div class="tile t-12">
      <h6 class="mb-3">Matching Map (Placeholder)</h6>
      <div class="chart-placeholder" style="height:220px;"></div>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>