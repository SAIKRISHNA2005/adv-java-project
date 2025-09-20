<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Track Requests - Food Bank</title>
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
    <h2 class="mb-0">Track Your Requests</h2>
    <span class="text-muted">Real-time status updates</span>
  </div>

  <div class="bento">
    <div class="tile t-8">
      <table class="table align-middle">
        <thead><tr><th>#</th><th>Item</th><th>Qty</th><th>Priority</th><th>Status</th><th></th></tr></thead>
        <tbody>
          <tr>
            <td>#1001</td>
            <td>Rice</td>
            <td>20 kg</td>
            <td><span class="badge text-bg-danger">High</span></td>
            <td><span class="badge text-bg-warning">Matched</span></td>
            <td class="text-end"><button class="btn btn-sm btn-outline-primary">Details</button></td>
          </tr>
          <tr>
            <td>#1002</td>
            <td>Milk</td>
            <td>15 liters</td>
            <td><span class="badge text-bg-secondary">Low</span></td>
            <td><span class="badge text-bg-info">In Transit</span></td>
            <td class="text-end"><button class="btn btn-sm btn-outline-primary">Details</button></td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="tile t-4">
      <h6 class="mb-2">Status Legend</h6>
      <ul class="small text-muted mb-0">
        <li>Requested → Matched → Scheduled → In Transit → Delivered</li>
      </ul>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>