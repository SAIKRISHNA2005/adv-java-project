<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Audit Logs - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Audit Logs</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>Log ID</th>
                <th>User</th>
                <th>Action</th>
                <th>Date & Time</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Admin</td>
                <td>Approved Recipient Request #1</td>
                <td>2025-09-12 10:30 AM</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Donor: John Doe</td>
                <td>Added Donation: Rice 20kg</td>
                <td>2025-09-10 09:15 AM</td>
            </tr>
        </tbody>
    </table>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
