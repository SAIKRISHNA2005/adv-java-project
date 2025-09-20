<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NGO Bulk Request - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow border-0">
                <div class="card-header bg-success text-white text-center">
                    <h4>Request Bulk Supplies</h4>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/app/requests/ngo" method="post">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label for="foodCategory" class="form-label">Food Category</label>
                                <select class="form-select" id="foodCategory" name="foodCategory" required>
                                    <option value="" disabled selected>Select Category</option>
                                    <option value="Grains">Grains</option>
                                    <option value="Fruits">Fruits</option>
                                    <option value="Vegetables">Vegetables</option>
                                    <option value="Packaged">Packaged</option>
                                </select>
                            </div>
                            <div class="col-md-6 input-icon">
                                <i class="bi bi-basket"></i>
                                <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Quantity (kg/units)" min="1" required>
                            </div>
                            <div class="col-md-12 input-icon">
                                <i class="bi bi-geo-alt"></i>
                                <input type="text" class="form-control" id="distributionArea" name="distributionArea" placeholder="Distribution Area" required>
                            </div>
                            <div class="col-12 d-grid">
                                <button type="submit" class="btn btn-gradient">Submit Bulk Request</button>
                            </div>
                        </div>
                    </form>
                    <div class="mt-3 text-center">
                        <a href="${pageContext.request.contextPath}/app/requests/track">Track Your Requests</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
