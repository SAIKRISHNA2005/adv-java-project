<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Requests - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">My Requests</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Food Item</th>
                <th>Quantity</th>
                <th>Request Type</th>
                <th>Status</th>
                <th>Remarks</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row; replace with JSTL/Servlet dynamic data -->
            <tr>
                <td>1</td>
                <td>Rice</td>
                <td>10 kg</td>
                <td>Recipient</td>
                <td class="text-success">Approved</td>
                <td>Urgent delivery requested</td>
            </tr>
        </tbody>
    </table>
    </div>
    <a href="${pageContext.request.contextPath}/app/requests/new" class="btn btn-success mt-3"><i class="bi bi-plus-circle me-2"></i>Submit New Request</a>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
