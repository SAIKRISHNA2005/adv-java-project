<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Profile - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
  <style>
    .bento {
      display: grid;
      grid-template-columns: repeat(12, 1fr);
      gap: 1rem;
    }
    .tile { background: #fff; border-radius: 12px; padding: 1rem; box-shadow: 0 .5rem 1.25rem rgba(0,0,0,.06); }
    .t-12 { grid-column: span 12; }
    .t-8 { grid-column: span 8; }
    .t-4 { grid-column: span 4; }
    .t-6 { grid-column: span 6; }
    @media (max-width: 992px){ .t-8,.t-4,.t-6{ grid-column: span 12; } }
    .reveal { opacity: 0; transform: translateY(16px); transition: .5s ease; }
    .reveal-show { opacity: 1; transform: none; }
  </style>
</head>
<body class="d-flex flex-column min-vh-100">
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>
<div class="container my-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h2 class="mb-0">My Profile</h2>
    <span class="text-muted">Manage your account details</span>
  </div>

  <div class="bento">
    <!-- Profile Summary -->
    <div class="tile t-4 reveal">
      <div class="d-flex align-items-center">
        <div class="rounded-circle bg-primary text-white d-inline-flex align-items-center justify-content-center me-3" style="width:56px;height:56px;">
          <i class="bi bi-person-fill fs-4"></i>
        </div>
        <div>
          <h5 class="mb-1">${sessionScope.userName != null ? sessionScope.userName : 'User'}</h5>
          <div class="small text-muted">Role: ${sessionScope.userRole != null ? sessionScope.userRole : 'Guest'}</div>
        </div>
      </div>
      <hr>
      <div class="small">
        <div class="mb-1"><i class="bi bi-envelope me-2"></i>${sessionScope.userEmail}</div>
        <div class="mb-1"><i class="bi bi-telephone me-2"></i>${sessionScope.userPhone}</div>
        <div class="mb-1"><i class="bi bi-geo me-2"></i>${sessionScope.userAddress}</div>
      </div>
    </div>

    <!-- Edit Profile -->
    <div class="tile t-8 reveal">
      <h5 class="mb-3">Edit Details</h5>
      <form action="${pageContext.request.contextPath}/app/profile/update" method="post" class="row g-3">
        <div class="col-md-6">
          <label class="form-label">Full Name</label>
          <input type="text" name="fullName" class="form-control" value="${sessionScope.userName}">
        </div>
        <div class="col-md-6">
          <label class="form-label">Email</label>
          <input type="email" name="email" class="form-control" value="${sessionScope.userEmail}" disabled>
        </div>
        <div class="col-md-6">
          <label class="form-label">Phone</label>
          <input type="text" name="phone" class="form-control" value="${sessionScope.userPhone}">
        </div>
        <div class="col-md-6">
          <label class="form-label">Organization</label>
          <input type="text" name="organization" class="form-control" value="${sessionScope.organization}">
        </div>
        <div class="col-12">
          <label class="form-label">Address</label>
          <textarea name="address" rows="2" class="form-control">${sessionScope.userAddress}</textarea>
        </div>
        <div class="col-12 d-flex gap-2">
          <button type="submit" class="btn btn-primary"><i class="bi bi-save me-1"></i>Save Changes</button>
          <a href="${pageContext.request.contextPath}/app/profile/delete" class="btn btn-outline-danger"><i class="bi bi-trash me-1"></i>Delete Account</a>
        </div>
      </form>
    </div>

    <!-- Preferences -->
    <div class="tile t-6 reveal">
      <h5 class="mb-3"><i class="bi bi-bell-fill me-2"></i>Notification Preferences</h5>
      <form action="${pageContext.request.contextPath}/app/preferences/save" method="post" class="vstack gap-2">
        <div class="form-check form-switch">
          <input class="form-check-input" type="checkbox" id="prefExpiry" name="prefExpiry" checked>
          <label class="form-check-label" for="prefExpiry">Expiry Alerts</label>
        </div>
        <div class="form-check form-switch">
          <input class="form-check-input" type="checkbox" id="prefMatch" name="prefMatch" checked>
          <label class="form-check-label" for="prefMatch">Request Matches</label>
        </div>
        <div class="form-check form-switch">
          <input class="form-check-input" type="checkbox" id="prefDistribution" name="prefDistribution" checked>
          <label class="form-check-label" for="prefDistribution">Distribution Updates</label>
        </div>
        <button class="btn btn-success mt-2" type="submit">Save Preferences</button>
      </form>
    </div>

    <!-- Session -->
    <div class="tile t-6 reveal">
      <h5 class="mb-3"><i class="bi bi-shield-lock-fill me-2"></i>Session & Security</h5>
      <div class="small text-muted mb-2">Session auto-timeout: 30 minutes</div>
      <a href="${pageContext.request.contextPath}/app/logout" class="btn btn-warning"><i class="bi bi-box-arrow-right me-1"></i>Logout</a>
      <a href="${pageContext.request.contextPath}/app/auth/password" class="btn btn-outline-secondary ms-2"><i class="bi bi-key-fill me-1"></i>Change Password</a>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>