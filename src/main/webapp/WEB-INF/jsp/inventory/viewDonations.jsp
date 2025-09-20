<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Donations - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">My Donations</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Food Name</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>Expiry Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row; replace with JSTL/Servlet dynamic data -->
            <tr>
                <td>1</td>
                <td>Rice</td>
                <td>Grains</td>
                <td>20 kg</td>
                <td>2025-09-20</td>
                <td>
                    <a href="editInventory.jsp?id=1" class="btn btn-sm btn-outline-warning me-1"><i class="bi bi-pencil-square"></i></a>
                    <a href="../inventory/DeleteDonationServlet?id=1" class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i></a>
                </td>
            </tr>
        </tbody>
    </table>
    </div>
    <a href="${pageContext.request.contextPath}/app/inventory/add" class="btn btn-success mt-3"><i class="bi bi-plus-circle me-2"></i>Add New Donation</a>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
