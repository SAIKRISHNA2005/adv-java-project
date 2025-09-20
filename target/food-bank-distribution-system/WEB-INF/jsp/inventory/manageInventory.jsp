<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Inventory - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="d-flex align-items-center justify-content-between mb-3">
        <h3 class="mb-0">Inventory Management</h3>
        <div>
            <a href="addDonation.jsp" class="btn btn-success me-2"><i class="bi bi-plus-circle me-2"></i>Add New Item</a>
            <button class="btn btn-outline-secondary"><i class="bi bi-download me-2"></i>Export</button>
        </div>
    </div>
    <div class="row g-3 mb-3">
        <div class="col-md-3">
            <input class="form-control" placeholder="Search by name/category">
        </div>
        <div class="col-md-3">
            <select class="form-select">
                <option>All Categories</option>
                <option>Grains</option>
                <option>Fruits</option>
                <option>Vegetables</option>
                <option>Packaged</option>
            </select>
        </div>
        <div class="col-md-3">
            <select class="form-select">
                <option>Any Expiry</option>
                <option>Expiring Soon</option>
                <option>Fresh</option>
            </select>
        </div>
        <div class="col-md-3">
            <button class="btn btn-primary w-100"><i class="bi bi-funnel me-2"></i>Filter</button>
        </div>
    </div>
    <div class="table-responsive shadow-sm rounded">
    <table class="table table-hover align-middle mb-0">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Food Name</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>Expiry Date</th>
                <th>Donor</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Static example row -->
            <tr>
                <td>1</td>
                <td>Rice</td>
                <td>Grains</td>
                <td>20 kg</td>
                <td>2025-09-20</td>
                <td>John Doe</td>
                <td>
                    <a href="editInventory.jsp?id=1" class="btn btn-sm btn-outline-warning me-1"><i class="bi bi-pencil-square"></i></a>
                    <a href="../inventory/DeleteDonationServlet?id=1" class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i></a>
                </td>
            </tr>
        </tbody>
    </table>
    </div>
    <div class="row g-3 mt-3">
        <div class="col-md-4">
            <div class="card shadow-sm border-0">
                <div class="card-body text-center">
                    <div class="text-muted">Total Items</div>
                    <h4 class="mb-0">128</h4>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card shadow-sm border-0">
                <div class="card-body text-center">
                    <div class="text-muted">Expiring Soon</div>
                    <h4 class="mb-0 text-danger">12</h4>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card shadow-sm border-0">
                <div class="card-body text-center">
                    <div class="text-muted">Donor Count</div>
                    <h4 class="mb-0">34</h4>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
