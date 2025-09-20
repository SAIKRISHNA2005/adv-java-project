<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivery Schedule - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Delivery Schedule</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>Delivery ID</th>
                <th>Food Items</th>
                <th>Volunteer</th>
                <th>Vehicle</th>
                <th>Delivery Date</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row -->
            <tr>
                <td>1</td>
                <td>Rice & Grains</td>
                <td>John Doe</td>
                <td>Truck #A12</td>
                <td>2025-09-18</td>
                <td class="text-success">Assigned</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Fruits & Vegetables</td>
                <td>Jane Smith</td>
                <td>Van #V45</td>
                <td>2025-09-19</td>
                <td class="text-warning">Pending</td>
            </tr>
        </tbody>
    </table>
    </div>
    <a href="${pageContext.request.contextPath}/app/distribution/assign" class="btn btn-success mt-3"><i class="bi bi-plus-circle me-2"></i>Assign New Delivery</a>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
