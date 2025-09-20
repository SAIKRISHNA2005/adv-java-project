<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Dashboard - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="row g-4 mb-4">
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up">
                <div class="card-body text-center">
                    <h2>24</h2>
                    <div class="text-muted">Total Donations</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-1">
                <div class="card-body text-center">
                    <h2>8</h2>
                    <div class="text-muted">Pending Pickups</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-2">
                <div class="card-body text-center">
                    <h2>6</h2>
                    <div class="text-muted">Near Expiry</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-3">
                <div class="card-body text-center">
                    <h2>4.9</h2>
                    <div class="text-muted">Donor Rating</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4">
        <!-- Add New Donation -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-primary text-white"><i class="bi bi-gift-fill me-2"></i>Add Donation</div>
                <div class="card-body">
                    <p class="card-text">Submit donation details: food type, quantity, expiry date.</p>
                    <button type="button" class="btn btn-primary" data-action="quick-add" data-entity="Inventory"><i class="bi bi-plus-circle me-2"></i>Add Donation</button>
                </div>
            </div>
        </div>

        <!-- Track Past Donations -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-secondary text-white"><i class="bi bi-clock-history me-2"></i>Past Donations</div>
                <div class="card-body">
                    <p class="card-text">View and track donations submitted previously.</p>
                    <a href="${pageContext.request.contextPath}/app/inventory/view" class="btn btn-secondary"><i class="bi bi-list-ul me-2"></i>View Donations</a>
                </div>
            </div>
        </div>

        <!-- Alerts -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-warning"><i class="bi bi-exclamation-triangle-fill me-2"></i>Expiry Alerts</div>
                <div class="card-body">
                    <p class="card-text">Get notifications for donations nearing expiry.</p>
                    <a href="${pageContext.request.contextPath}/app/alerts/expiry" class="btn btn-warning"><i class="bi bi-bell-fill me-2"></i>View Alerts</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4 mt-1">
        <div class="col-lg-8">
            <div class="card shadow-sm border-0">
                <div class="card-header bg-light"><i class="bi bi-graph-up me-2"></i>Donation Trend (Placeholder)</div>
                <div class="card-body">
                    <div class="chart-placeholder"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-light"><i class="bi bi-clock-history me-2"></i>Recent Donations</div>
                <div class="card-body">
                    <ul class="timeline mb-0">
                        <li>Added 10 kg Apples</li>
                        <li>Added 25 kg Rice</li>
                        <li>Scheduled pickup for 5 kg Bread</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
