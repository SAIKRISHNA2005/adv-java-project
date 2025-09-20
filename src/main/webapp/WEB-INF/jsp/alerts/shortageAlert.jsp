<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shortage Alerts - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Shortage Alerts</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>Food Item</th>
                <th>Category</th>
                <th>Required Quantity</th>
                <th>Requested By</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row -->
            <tr>
                <td>Wheat</td>
                <td>Grains</td>
                <td>50 kg</td>
                <td>NGO Helping Hands</td>
                <td>
                    <a href="${pageContext.request.contextPath}/app/inventory/add" class="btn btn-sm btn-primary">Donate Now</a>
                </td>
            </tr>
            <tr>
                <td>Tomatoes</td>
                <td>Vegetables</td>
                <td>20 kg</td>
                <td>Recipient: ABC Orphanage</td>
                <td>
                    <a href="${pageContext.request.contextPath}/app/inventory/add" class="btn btn-sm btn-primary">Donate Now</a>
                </td>
            </tr>
        </tbody>
    </table>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
