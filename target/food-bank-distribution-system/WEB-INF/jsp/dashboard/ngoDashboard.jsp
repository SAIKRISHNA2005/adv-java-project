<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NGO Dashboard - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="row g-4 mb-4">
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up">
                <div class="card-body text-center">
                    <h2>72</h2>
                    <div class="text-muted">Active Beneficiaries</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-1">
                <div class="card-body text-center">
                    <h2>14</h2>
                    <div class="text-muted">Deliveries Today</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-2">
                <div class="card-body text-center">
                    <h2>280 kg</h2>
                    <div class="text-muted">Food In Transit</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card stat-card shadow-sm card-hover animate-fade-up animate-delay-3">
                <div class="card-body text-center">
                    <h2>8</h2>
                    <div class="text-muted">Volunteers</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4">
        <!-- Request Bulk Supplies -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-primary text-white"><i class="bi bi-bag-plus-fill me-2"></i>Bulk Supplies</div>
                <div class="card-body">
                    <p class="card-text">Request bulk food items for distribution.</p>
                    <button type="button" class="btn btn-primary" data-action="quick-add" data-entity="Request">Request Supplies</button>
                </div>
            </div>
        </div>

        <!-- Assign & Distribute Donations -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-success text-white"><i class="bi bi-truck-front-fill me-2"></i>Assign & Distribute</div>
                <div class="card-body">
                    <p class="card-text">Manage and distribute donations to beneficiaries.</p>
                    <a href="${pageContext.request.contextPath}/app/distribution/assign" class="btn btn-success">Assign Now</a>
                </div>
            </div>
        </div>

        <!-- Track Beneficiaries -->
        <div class="col-md-4">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-header bg-secondary text-white"><i class="bi bi-people-fill me-2"></i>Beneficiaries</div>
                <div class="card-body">
                    <p class="card-text">Monitor the number of beneficiaries served.</p>
                    <a href="${pageContext.request.contextPath}/app/reports/beneficiaries" class="btn btn-secondary">View Report</a>
                    <div class="mt-3">
                        <a href="${pageContext.request.contextPath}/app/alerts/shortage" class="btn btn-outline-secondary btn-sm me-2">Shortage Alerts</a>
                        <a href="${pageContext.request.contextPath}/app/alerts/surplus" class="btn btn-outline-secondary btn-sm">Surplus Alerts</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-4 mt-1">
        <div class="col-lg-7">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-light"><i class="bi bi-flag me-2"></i>Ongoing Campaigns</div>
                <div class="card-body">
                    <div class="mb-3">
                        <div class="d-flex justify-content-between mb-1"><strong>Monsoon Relief</strong><span>70%</span></div>
                        <div class="progress" style="height:10px"><div class="progress-bar bg-success" style="width:70%"></div></div>
                    </div>
                    <div class="mb-3">
                        <div class="d-flex justify-content-between mb-1"><strong>School Lunch Drive</strong><span>45%</span></div>
                        <div class="progress" style="height:10px"><div class="progress-bar bg-primary" style="width:45%"></div></div>
                    </div>
                    <div>
                        <div class="d-flex justify-content-between mb-1"><strong>Community Kitchen</strong><span>85%</span></div>
                        <div class="progress" style="height:10px"><div class="progress-bar bg-warning" style="width:85%"></div></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-light"><i class="bi bi-award me-2"></i>Impact & Badges</div>
                <div class="card-body">
                    <div class="mb-2"><span class="badge bg-success me-2"><i class="bi bi-star-fill me-1"></i>100 Deliveries</span><span class="badge bg-primary"><i class="bi bi-people-fill me-1"></i>500 Beneficiaries</span></div>
                    <hr>
                    <h6 class="mb-2">Stories</h6>
                    <div class="small text-muted">“With timely deliveries, our shelter served meals all week.”</div>
                    <div class="small text-muted">“Fresh produce helped reduce our costs this month.”</div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
