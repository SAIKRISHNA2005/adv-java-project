<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Notifications - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
  <style>
    .bento { display:grid; grid-template-columns: repeat(12,1fr); gap:1rem; }
    .tile { background:#fff; border-radius:12px; padding:1rem; box-shadow:0 .5rem 1.25rem rgba(0,0,0,.06); }
    .t-12{ grid-column: span 12; }
    .t-8{ grid-column: span 8; }
    .t-4{ grid-column: span 4; }
    @media (max-width: 992px){ .t-8,.t-4{ grid-column: span 12; } }
  </style>
</head>
<body class="d-flex flex-column min-vh-100">
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>
<div class="container my-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h2 class="mb-0">Notification Center</h2>
    <div>
      <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/app/alerts/markAllRead"><i class="bi bi-check2-all me-1"></i>Mark All Read</a>
    </div>
  </div>

  <div class="bento">
    <div class="tile t-8">
      <ul class="list-group list-group-flush">
        <li class="list-group-item d-flex align-items-start">
          <i class="bi bi-bell-fill text-warning me-3"></i>
          <div>
            <div><strong>Expiry Alert</strong> - 10 kg Tomatoes expiring in 1 day</div>
            <div class="small text-muted">2 mins ago</div>
          </div>
        </li>
        <li class="list-group-item d-flex align-items-start">
          <i class="bi bi-check-circle-fill text-success me-3"></i>
          <div>
            <div><strong>Match Found</strong> - NGO GreenCare matched with your 25 kg Rice</div>
            <div class="small text-muted">1 hour ago</div>
          </div>
        </li>
        <li class="list-group-item d-flex align-items-start">
          <i class="bi bi-truck text-primary me-3"></i>
          <div>
            <div><strong>Distribution</strong> - Delivery #204 set "In Transit"</div>
            <div class="small text-muted">3 hours ago</div>
          </div>
        </li>
      </ul>
    </div>
    <div class="tile t-4">
      <h6 class="mb-3">Filters</h6>
      <form class="vstack gap-2">
        <select class="form-select"><option>All</option><option>Expiry</option><option>Match</option><option>Distribution</option></select>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" id="showUnread" checked>
          <label class="form-check-label" for="showUnread">Show Unread Only</label>
        </div>
        <button class="btn btn-primary" type="button">Apply</button>
      </form>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>