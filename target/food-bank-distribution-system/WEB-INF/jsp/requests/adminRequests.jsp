<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Requests - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Pending Requests</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>User</th>
                <th>Request Type</th>
                <th>Food Item</th>
                <th>Quantity</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row; replace with dynamic data -->
            <tr>
                <td>1</td>
                <td>Jane Doe</td>
                <td>Recipient</td>
                <td>Rice</td>
                <td>10 kg</td>
                <td class="text-warning">Pending</td>
                <td>
                    <a href="${pageContext.request.contextPath}/app/requests/approve?id=1" class="btn btn-sm btn-outline-success me-1"><i class="bi bi-check-lg"></i></a>
                    <a href="${pageContext.request.contextPath}/app/requests/deny?id=1" class="btn btn-sm btn-outline-danger"><i class="bi bi-x-lg"></i></a>
                </td>
            </tr>
        </tbody>
    </table>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
