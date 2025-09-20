<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="d-flex align-items-center justify-content-between mb-3">
        <h3 class="mb-0">Manage Users</h3>
        <div>
            <button class="btn btn-outline-secondary me-2"><i class="bi bi-download me-2"></i>Export</button>
            <button class="btn btn-primary" type="button" data-action="quick-add" data-entity="User"><i class="bi bi-person-plus me-2"></i>Add User</button>
        </div>
    </div>

    <div class="row g-3 mb-3">
        <div class="col-md-3">
            <input class="form-control" placeholder="Search name/email">
        </div>
        <div class="col-md-3">
            <select class="form-select">
                <option>All Roles</option>
                <option>Admin</option>
                <option>Donor</option>
                <option>Recipient</option>
                <option>NGO</option>
            </select>
        </div>
        <div class="col-md-3">
            <select class="form-select">
                <option>Status: Any</option>
                <option>Active</option>
                <option>Pending</option>
                <option>Suspended</option>
            </select>
        </div>
        <div class="col-md-3">
            <button class="btn btn-success w-100"><i class="bi bi-funnel me-2"></i>Filter</button>
        </div>
    </div>

    <div class="table-responsive shadow-sm rounded">
        <table class="table table-hover align-middle mb-0">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>John Donor</td>
                    <td>john@example.com</td>
                    <td>Donor</td>
                    <td><span class="badge bg-success">Active</span></td>
                    <td>
                        <button class="btn btn-sm btn-outline-primary me-1"><i class="bi bi-pencil-square"></i></button>
                        <button class="btn btn-sm btn-outline-warning me-1"><i class="bi bi-slash-circle"></i></button>
                        <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Mary NGO</td>
                    <td>mary@ngo.org</td>
                    <td>NGO</td>
                    <td><span class="badge bg-warning text-dark">Pending</span></td>
                    <td>
                        <button class="btn btn-sm btn-outline-success me-1"><i class="bi bi-check-lg"></i></button>
                        <button class="btn btn-sm btn-outline-danger"><i class="bi bi-x-lg"></i></button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>

