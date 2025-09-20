<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NGO Profile - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
  <h2 class="mb-4">NGO Profile</h2>
  <div class="row g-4">
    <div class="col-lg-8">
      <div class="card shadow-sm border-0">
        <div class="card-header bg-info text-white"><i class="bi bi-building-gear me-2"></i>Organization Details</div>
        <div class="card-body">
          <form action="${pageContext.request.contextPath}/app/profile/update" method="post">
            <div class="row g-3">
              <div class="col-md-6">
                <label class="form-label">Organization Name</label>
                <input type="text" class="form-control" placeholder="Helping Hands NGO" />
              </div>
              <div class="col-md-6">
                <label class="form-label">Contact Person</label>
                <input type="text" class="form-control" placeholder="Alex Kumar" />
              </div>
              <div class="col-md-6">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" placeholder="contact@helpinghands.org" />
              </div>
              <div class="col-md-6">
                <label class="form-label">Phone</label>
                <input type="text" class="form-control" placeholder="+91 98765 43210" />
              </div>
              <div class="col-12">
                <label class="form-label">Primary Delivery Address</label>
                <input type="text" class="form-control" placeholder="12 Lake View Rd, Chennai" />
              </div>
              <div class="col-12 d-flex gap-2 mt-2">
                <button type="submit" class="btn btn-info text-white"><i class="bi bi-save me-1"></i>Save</button>
                <button type="button" class="btn btn-outline-danger" onclick="if(confirm('Delete account?')) location.href='${pageContext.request.contextPath}/app/profile/delete';"><i class="bi bi-trash me-1"></i>Delete</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="card shadow-sm border-0 h-100">
        <div class="card-header bg-light"><i class="bi bi-link-45deg me-2"></i>Quick Links</div>
        <div class="card-body d-grid gap-2">
          <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/app/requests/ngo">Request Supplies</a>
          <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/app/distribution/assign">Assign & Distribute</a>
          <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/app/reports/beneficiaries">Beneficiaries Report</a>
          <a class="btn btn-outline-warning" href="${pageContext.request.contextPath}/app/alerts/notifications">Notifications</a>
        </div>
      </div>
    </div>
  </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>