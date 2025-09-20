<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Inventory - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
  <style>
    .bento { display:grid; grid-template-columns: repeat(12,1fr); gap:1rem; }
    .tile { background:#fff; border-radius:12px; padding:1rem; box-shadow:0 .5rem 1.25rem rgba(0,0,0,.06); }
    .t-12{ grid-column: span 12; }
    .t-8{ grid-column: span 8; }
    .t-4{ grid-column: span 4; }
    .t-6{ grid-column: span 6; }
    @media (max-width: 992px){ .t-8,.t-6,.t-4{ grid-column: span 12; } }
    .chip { display:inline-flex; align-items:center; gap:.5rem; padding:.35rem .6rem; border-radius:999px; font-size:.8rem; }
    .chip.available { background:#e7f1ff; color:#0d6efd; }
    .chip.reserved { background:#fff3cd; color:#fd7e14; }
    .chip.distributed { background:#eaf7f1; color:#198754; }
    .chip.expired { background:#ffe8e8; color:#dc3545; }
  </style>
</head>
<body class="d-flex flex-column min-vh-100">
  <%@ include file="/WEB-INF/jsp/common/header.jsp" %>

  <div class="container my-4">
    <div class="d-flex align-items-center justify-content-between mb-3">
      <h2 class="mb-0">Inventory Management</h2>
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalAddItem">
        <i class="bi bi-plus-circle me-1"></i>Add Item
      </button>
    </div>

    <div class="bento">
      <!-- Filters -->
      <div class="tile t-4">
        <h6 class="mb-3">Filters</h6>
        <div class="vstack gap-2">
          <select class="form-select"><option>All Categories</option><option>Vegetables</option><option>Fruits</option><option>Cooked Food</option><option>Grains</option><option>Other</option></select>
          <select class="form-select"><option>Any Status</option><option>Available</option><option>Reserved</option><option>Distributed</option><option>Expired</option></select>
          <button class="btn btn-secondary" type="button"><i class="bi bi-funnel me-1"></i>Apply</button>
        </div>
      </div>

      <!-- List -->
      <div class="tile t-8">
        <div class="table-responsive">
          <table class="table align-middle">
            <thead>
              <tr>
                <th>Item</th>
                <th>Category</th>
                <th>Qty</th>
                <th>Expiry</th>
                <th>Status</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><strong>Rice</strong></td>
                <td>Grains</td>
                <td>25 kg</td>
                <td>2025-10-01</td>
                <td><span class="chip available">Available</span></td>
                <td class="text-end">
                  <a href="${pageContext.request.contextPath}/app/inventory/edit/1" class="btn btn-sm btn-outline-primary">Edit</a>
                  <button class="btn btn-sm btn-outline-danger">Delete</button>
                </td>
              </tr>
              <tr>
                <td><strong>Tomatoes</strong></td>
                <td>Vegetables</td>
                <td>10 kg</td>
                <td>2025-09-22</td>
                <td><span class="chip expired">Expired</span></td>
                <td class="text-end">
                  <a href="${pageContext.request.contextPath}/app/inventory/edit/2" class="btn btn-sm btn-outline-primary">Edit</a>
                  <button class="btn btn-sm btn-outline-danger">Delete</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>

      <!-- Bento analytics -->
      <div class="tile t-6">
        <h6 class="mb-3">Stock by Category</h6>
        <canvas id="chartDonationTrend" height="160"></canvas>
      </div>
      <div class="tile t-6">
        <h6 class="mb-3">Monthly Distribution</h6>
        <canvas id="chartMonthlyDistribution" height="160"></canvas>
      </div>
    </div>

    <div class="modal fade" id="modalAddItem" tabindex="-1" aria-labelledby="modalAddItemLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <form action="${pageContext.request.contextPath}/app/inventory/add" method="post">
            <div class="modal-header">
              <h5 class="modal-title" id="modalAddItemLabel">Add Inventory Item</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="mb-3">
                <label class="form-label">Item Name</label>
                <input type="text" name="foodName" class="form-control" required>
              </div>
              <div class="row">
                <div class="col-7 mb-3">
                  <label class="form-label">Quantity</label>
                  <input type="number" min="1" name="quantity" class="form-control" required>
                </div>
                <div class="col-5 mb-3">
                  <label class="form-label">Unit</label>
                  <select name="unit" class="form-select"><option>kg</option><option>g</option><option>units</option><option>liters</option></select>
                </div>
              </div>
              <div class="mb-3">
                <label class="form-label">Category</label>
                <select name="category" class="form-select"><option>Grains</option><option>Fruits</option><option>Vegetables</option><option>Packaged</option><option>Cooked</option><option>Other</option></select>
              </div>
              <div class="mb-3">
                <label class="form-label">Expiry Date</label>
                <input type="date" name="expiryDate" class="form-control">
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="submit" class="btn btn-primary">Add Item</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>