<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipient Dashboard - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="row g-4 mb-4">
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up">
                <div class="card-body text-center">
                    <h2>5</h2>
                    <div class="text-muted">Active Requests</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-1">
                <div class="card-body text-center">
                    <h2>12</h2>
                    <div class="text-muted">Delivered</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-2">
                <div class="card-body text-center">
                    <h2>3</h2>
                    <div class="text-muted">Pending</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-3">
                <div class="card-body text-center">
                    <h2>2</h2>
                    <div class="text-muted">Alerts</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4">
        <!-- Request Food -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-success text-white"><i class="bi bi-bag-check-fill me-2"></i>Request Food</div>
                <div class="card-body">
                    <p class="card-text">Request food from available inventory.</p>
                    <button type="button" class="btn btn-success" data-action="quick-add" data-entity="Request">Request Now</button>
                </div>
            </div>
        </div>

        <!-- Track Requests -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-secondary text-white"><i class="bi bi-list-check me-2"></i>Track Requests</div>
                <div class="card-body">
                    <p class="card-text">View your request history and status updates.</p>
                    <a href="${pageContext.request.contextPath}/app/requests/track" class="btn btn-secondary">Track Requests</a>
                </div>
            </div>
        </div>

        <!-- Notifications -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-warning"><i class="bi bi-bell-fill me-2"></i>Notifications</div>
                <div class="card-body">
                    <p class="card-text">Get alerts for approved or delivered requests.</p>
                    <a href="${pageContext.request.contextPath}/app/alerts/notifications" class="btn btn-warning">View Notifications</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4 mt-1">
        <div class="col-lg-8">
            <div class="card shadow-sm border-0">
                <div class="card-header bg-light"><i class="bi bi-activity me-2"></i>Request Timeline</div>
                <div class="card-body">
                    <ul class="timeline mb-0">
                        <li>Request #210 approved</li>
                        <li>Delivery scheduled for tomorrow</li>
                        <li>Request #198 delivered</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-light"><i class="bi bi-bell me-2"></i>Notifications</div>
                <div class="card-body">
                    <div class="alert alert-success py-2 mb-2">Your request #210 is approved</div>
                    <div class="alert alert-info py-2 mb-0">Delivery window: 3-5 PM</div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
