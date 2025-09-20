<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Common Header / Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark shadow-sm sticky-top navbar-gradient">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="${pageContext.request.contextPath}/index.jsp">
      <i class="bi bi-basket me-2"></i>
      <span>Food Bank</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto align-items-lg-center">
        <c:choose>
          <c:when test="${not empty sessionScope.userRole}">
            <c:set var="role" value="${sessionScope.userRole}" />
            <!-- Common for all logged-in users -->
            <li class="nav-item me-lg-2">
              <a class="nav-link" href="${pageContext.request.contextPath}/app/dashboard/${role}"><i class="bi bi-speedometer2 me-1"></i>Dashboard</a>
            </li>
            <li class="nav-item me-lg-2">
              <a class="nav-link" href="${pageContext.request.contextPath}/app/profile/${role}"><i class="bi bi-person-circle me-1"></i>Profile</a>
            </li>

            <!-- Role-based menus -->
            <c:if test="${role eq 'admin'}">
              <li class="nav-item dropdown me-lg-2">
                <a class="nav-link dropdown-toggle" href="#" id="adminMenu" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-gear-fill me-1"></i>Admin</a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="adminMenu">
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/admin/users">Manage Users</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/reports/analytics">Reports & Analytics</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/requests/admin">Review Requests</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown me-lg-2">
                <a class="nav-link dropdown-toggle" href="#" id="inventoryMenu" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-box-seam me-1"></i>Inventory</a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="inventoryMenu">
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/inventory/manage">Manage</a></li>
                  
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/inventory/view">View Donations</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/inventory/edit">Edit</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/inventory/manage-bento">Inventory Manage</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown me-lg-2">
                <a class="nav-link dropdown-toggle" href="#" id="distributionMenu" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-truck me-1"></i>Distribution</a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="distributionMenu">
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/distribution/assign">Assign</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/distribution/schedule">Schedule</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/distribution/routes">Routes</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/distribution/tracking-bento">Tracking (Bento)</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown me-lg-2">
                <a class="nav-link dropdown-toggle" href="#" id="alertsMenu" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-bell me-1"></i>Alerts</a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="alertsMenu">
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/alerts/expiry">Expiry</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/alerts/shortage">Shortage</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/alerts/surplus">Surplus</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/alerts/notifications">Notifications</a></li>
                </ul>
              </li>
            </c:if>

            <c:if test="${role eq 'donor'}">
              <li class="nav-item me-lg-2"><a class="nav-link" href="${pageContext.request.contextPath}/app/reports/history">My Donation History</a></li>

            </c:if>

            <c:if test="${role eq 'recipient' || role eq 'ngo'}">
              <li class="nav-item me-lg-2"><a class="nav-link" href="${pageContext.request.contextPath}/app/requests/track">Track Requests</a></li>
            </c:if>

            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/app/logout"><i class="bi bi-box-arrow-right me-1"></i>Logout</a>
            </li>
          </c:when>
          <c:otherwise>
            <li class="nav-item me-lg-2"><a class="nav-link" href="${pageContext.request.contextPath}/app/login"><i class="bi bi-box-arrow-in-right me-1"></i>Login</a></li>
            <li class="nav-item dropdown me-lg-2">
              <a class="nav-link dropdown-toggle" href="#" id="registerMenu" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-plus me-1"></i>Register</a>
              <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="registerMenu">
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/register/donor"><i class="bi bi-heart-fill text-danger me-2"></i>Donor</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/register/recipient"><i class="bi bi-people-fill text-primary me-2"></i>Recipient</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/app/register/ngo"><i class="bi bi-building-fill-gear text-success me-2"></i>NGO</a></li>
              </ul>
            </li>
          </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
  <style>
    body { font-family: 'Inter', system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial, "Apple Color Emoji", "Segoe UI Emoji"; }
  </style>
</nav>