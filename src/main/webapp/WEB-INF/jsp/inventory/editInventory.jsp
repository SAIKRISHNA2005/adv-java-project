<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Inventory - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow border-0">
                <div class="card-header bg-warning text-dark text-center">
                    <h4>Edit Inventory Item</h4>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/app/inventory/edit" method="post">
                        <input type="hidden" name="id" value="1"> <!-- Example; dynamically set via JSTL -->

                        <div class="row g-3">
                            <div class="col-md-6 input-icon">
                                <i class="bi bi-tag"></i>
                                <input type="text" class="form-control" id="foodName" name="foodName" value="Rice" placeholder="Food Name" required>
                            </div>

                            <div class="col-md-6">
                                <select class="form-select" id="category" name="category" required>
                                    <option value="grains" selected>Grains</option>
                                    <option value="fruits">Fruits</option>
                                    <option value="vegetables">Vegetables</option>
                                    <option value="packaged">Packaged</option>
                                </select>
                            </div>

                            <div class="col-md-6 input-icon">
                                <i class="bi bi-123"></i>
                                <input type="number" class="form-control" id="quantity" name="quantity" value="20" placeholder="Quantity (kg / units)" min="1" required>
                            </div>

                            <div class="col-md-6 input-icon">
                                <i class="bi bi-calendar-event"></i>
                                <input type="date" class="form-control" id="expiryDate" name="expiryDate" value="2025-09-20" required>
                            </div>

                            <div class="col-12 d-grid">
                                <button type="submit" class="btn btn-gradient">Update Inventory</button>
                            </div>
                        </div>
                    </form>
                    <div class="mt-3 text-center">
                        <a href="${pageContext.request.contextPath}/app/inventory/manage">Back to Inventory</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
