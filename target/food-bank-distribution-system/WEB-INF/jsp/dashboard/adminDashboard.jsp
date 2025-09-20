<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="d-flex align-items-center justify-content-between mb-4">
        <h2 class="mb-0">Admin Dashboard</h2>
        <span class="text-muted">Overview & Quick actions</span>
    </div>
    <div class="row g-4 mb-4">
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up">
                <div class="card-body text-center">
                    <h2>1,200</h2>
                    <div class="text-muted">Donors</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-1">
                <div class="card-body text-center">
                    <h2>3,450</h2>
                    <div class="text-muted">Requests</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-2">
                <div class="card-body text-center">
                    <h2>9,800 kg</h2>
                    <div class="text-muted">Stock</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-3">
                <div class="card-body text-center">
                    <h2>96%</h2>
                    <div class="text-muted">On-time Delivery</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4">
        <!-- Manage Users -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-primary text-white"><i class="bi bi-people-fill me-2"></i>Manage Users</div>
                <div class="card-body">
                    <p class="card-text">View, approve, or remove donors, recipients, and NGOs.</p>
                    <a href="${pageContext.request.contextPath}/app/admin/users" class="btn btn-primary"><i class="bi bi-person-gear me-2"></i>Manage Users</a>
                </div>
            </div>
        </div>

        <!-- Approve/Deny Requests -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-success text-white"><i class="bi bi-check2-circle me-2"></i>Requests</div>
                <div class="card-body">
                    <p class="card-text">Review and act on donation and food requests.</p>
                    <a href="${pageContext.request.contextPath}/app/requests/admin" class="btn btn-success"><i class="bi bi-inboxes me-2"></i>Review Requests</a>
                </div>
            </div>
        </div>

        <!-- View Reports -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-secondary text-white"><i class="bi bi-graph-up-arrow me-2"></i>Reports & Analytics</div>
                <div class="card-body">
                    <p class="card-text">Check inventory, donations, and distribution performance.</p>
                    <a href="${pageContext.request.contextPath}/app/reports/distribution" class="btn btn-secondary"><i class="bi bi-file-earmark-bar-graph me-2"></i>View Reports</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4 mt-1">
        <div class="col-lg-8">
            <div class="card shadow-sm border-0">
                <div class="card-header bg-light"><i class="bi bi-bar-chart-line me-2"></i>Monthly Distribution (Placeholder)</div>
                <div class="card-body">
                    <div class="chart-placeholder"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-light"><i class="bi bi-clock-history me-2"></i>Recent Activity</div>
                <div class="card-body">
                    <ul class="timeline mb-0">
                        <li>Approved recipient request #1021</li>
                        <li>Added 50 kg Rice to inventory</li>
                        <li>Assigned van to Delivery #204</li>
                        <li>Generated weekly report</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
