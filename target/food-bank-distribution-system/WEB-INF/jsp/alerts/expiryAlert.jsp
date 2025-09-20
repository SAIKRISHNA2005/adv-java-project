<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expiry Alerts - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Expiry Alerts</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>Food Item</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>Expiry Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example static row -->
            <tr>
                <td>Milk Powder</td>
                <td>Packaged</td>
                <td>10 units</td>
                <td class="text-danger">2025-09-16</td>
                <td>
                    <a href="${pageContext.request.contextPath}/app/requests/new" class="btn btn-sm btn-warning">Allocate Quickly</a>
                </td>
            </tr>
            <tr>
                <td>Bananas</td>
                <td>Fruits</td>
                <td>20 kg</td>
                <td class="text-danger">2025-09-15</td>
                <td>
                    <a href="${pageContext.request.contextPath}/app/requests/new" class="btn btn-sm btn-warning">Allocate Quickly</a>
                </td>
            </tr>
        </tbody>
    </table>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
