<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Distribution Report - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Food Distributed by Category</h3>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>Category</th>
                <th>Total Quantity Distributed</th>
                <th>Number of Deliveries</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Grains</td>
                <td>120 kg</td>
                <td>8</td>
            </tr>
            <tr>
                <td>Fruits</td>
                <td>90 kg</td>
                <td>6</td>
            </tr>
            <tr>
                <td>Vegetables</td>
                <td>75 kg</td>
                <td>5</td>
            </tr>
            <tr>
                <td>Packaged</td>
                <td>50 units</td>
                <td>4</td>
            </tr>
        </tbody>
    </table>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
