<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Distribution - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Assign Volunteers / Vehicles for Distribution</h3>
    <div class="row g-4">
        <div class="col-lg-7">
            <form action="${pageContext.request.contextPath}/app/distribution/assign" method="post">
                <div class="row g-3">
                    <div class="col-md-12">
                        <label for="deliveryId" class="form-label">Select Delivery</label>
                        <select class="form-select" id="deliveryId" name="deliveryId" required>
                            <option value="" disabled selected>Choose Delivery</option>
                            <option value="1">Delivery #1 - Rice & Grains</option>
                            <option value="2">Delivery #2 - Fruits & Vegetables</option>
                        </select>
                    </div>
                    <div class="col-md-6 input-icon">
                        <i class="bi bi-person-badge"></i>
                        <input type="text" class="form-control" id="volunteer" name="volunteer" placeholder="Volunteer Name" required>
                    </div>
                    <div class="col-md-6 input-icon">
                        <i class="bi bi-truck"></i>
                        <input type="text" class="form-control" id="vehicle" name="vehicle" placeholder="Vehicle Number / Type" required>
                    </div>
                    <div class="col-12 d-grid">
                        <button type="submit" class="btn btn-gradient">Assign Distribution</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-5">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-light"><i class="bi bi-info-circle me-2"></i>Guidelines</div>
                <div class="card-body">
                    <ul class="mb-0">
                        <li>Assign volunteers with valid ID and contact.</li>
                        <li>Prefer refrigerated vehicles for perishables.</li>
                        <li>Confirm route in the Routes page before dispatch.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="mt-3">
        <a href="${pageContext.request.contextPath}/app/distribution/schedule">View Delivery Schedule</a>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
