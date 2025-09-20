<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Surplus Food Alerts - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Surplus Food Alerts</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>Food Item</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>Available From</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row -->
            <tr>
                <td>Rice</td>
                <td>Grains</td>
                <td>15 kg</td>
                <td>2025-09-14</td>
                <td>
                    <button type="button" class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#modalRequestNow">Request Now</button>
                </td>
            </tr>
            <tr>
                <td>Bananas</td>
                <td>Fruits</td>
                <td>30 kg</td>
                <td>2025-09-14</td>
                <td>
                    <button type="button" class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#modalRequestNow">Request Now</button>
                </td>
            </tr>
        </tbody>
    </table>
    </div>

    <div class="modal fade" id="modalRequestNow" tabindex="-1" aria-labelledby="modalRequestNowLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <form action="${pageContext.request.contextPath}/app/requests/new" method="post">
            <div class="modal-header">
              <h5 class="modal-title" id="modalRequestNowLabel">Request Surplus Item</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="mb-3">
                <label class="form-label">Item</label>
                <input type="text" name="item" class="form-control" placeholder="e.g., Rice" required>
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
                <label class="form-label">Notes</label>
                <textarea name="notes" class="form-control" rows="2"></textarea>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="submit" class="btn btn-success">Submit Request</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
