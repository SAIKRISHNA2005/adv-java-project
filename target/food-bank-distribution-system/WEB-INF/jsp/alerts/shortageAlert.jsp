<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shortage Alerts - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Shortage Alerts</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>Food Item</th>
                <th>Category</th>
                <th>Required Quantity</th>
                <th>Requested By</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row -->
            <tr>
                <td>Wheat</td>
                <td>Grains</td>
                <td>50 kg</td>
                <td>NGO Helping Hands</td>
                <td>
                    <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#modalDonateNow">Donate Now</button>
                </td>
            </tr>
            <tr>
                <td>Tomatoes</td>
                <td>Vegetables</td>
                <td>20 kg</td>
                <td>Recipient: ABC Orphanage</td>
                <td>
                    <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#modalDonateNow">Donate Now</button>
                </td>
            </tr>
        </tbody>
    </table>
    </div>

    <div class="modal fade" id="modalDonateNow" tabindex="-1" aria-labelledby="modalDonateNowLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <form action="${pageContext.request.contextPath}/app/inventory/add" method="post">
            <div class="modal-header">
              <h5 class="modal-title" id="modalDonateNowLabel">Donate to Shortage</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="mb-3">
                <label class="form-label">Food Item</label>
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
              <button type="submit" class="btn btn-primary">Donate</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
