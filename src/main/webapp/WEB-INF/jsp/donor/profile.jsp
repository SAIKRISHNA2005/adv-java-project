<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Donor Profile - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
  <h2 class="mb-4">Donor Profile</h2>
  <div class="row g-4">
    <div class="col-lg-8">
      <div class="card shadow-sm border-0">
        <div class="card-header bg-primary text-white"><i class="bi bi-person-badge me-2"></i>Your Details</div>
        <div class="card-body">
          <form action="${pageContext.request.contextPath}/app/profile/update" method="post">
            <div class="row g-3">
              <div class="col-md-6">
                <label class="form-label">Full Name</label>
                <input type="text" class="form-control" placeholder="Jane Donor" />
              </div>
              <div class="col-md-6">
                <label class="form-label">Organization</label>
                <input type="text" class="form-control" placeholder="Acme Foods" />
              </div>
              <div class="col-md-6">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" placeholder="jane@example.com" />
              </div>
              <div class="col-md-6">
                <label class="form-label">Phone</label>
                <input type="text" class="form-control" placeholder="+1 555 123 4567" />
              </div>
              <div class="col-12">
                <label class="form-label">Preferred Pickup Address</label>
                <input type="text" class="form-control" placeholder="123 Main St, City" />
              </div>
              <div class="col-12 d-flex gap-2 mt-2">
                <button type="submit" class="btn btn-primary"><i class="bi bi-save me-1"></i>Save</button>
                <button type="button" class="btn btn-outline-danger" onclick="if(confirm('Delete account?')) location.href='${pageContext.request.contextPath}/app/profile/delete';"><i class="bi bi-trash me-1"></i>Delete</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="card shadow-sm border-0 h-100">
        <div class="card-header bg-light"><i class="bi bi-graph-up me-2"></i>Quick Links</div>
        <div class="card-body d-grid gap-2">
          <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/app/inventory/add">Add Donation</a>
          <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/app/inventory/view">View Donations</a>
          <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/app/reports/donor/overview">My Reports</a>
          <a class="btn btn-outline-warning" href="${pageContext.request.contextPath}/app/alerts/expiry">Expiry Alerts</a>
        </div>
      </div>
    </div>
  </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>