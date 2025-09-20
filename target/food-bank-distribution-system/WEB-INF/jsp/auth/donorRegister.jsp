<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="bg-light d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container flex-grow-1 pb-safe">
    <div class="row justify-content-center mt-5">
        <div class="col-md-7 col-lg-6">
            <div class="card shadow border-0">
                <div class="card-header text-center bg-success text-white">
                    <h4>Donor Registration</h4>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/app/register/donor" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>

                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>

                        <div class="mb-3">
                            <label for="contact" class="form-label">Contact Number</label>
                            <input type="text" class="form-control" id="contact" name="contact" required>
                        </div>

                        <div class="mb-3">
                            <label for="foodCategory" class="form-label">Food Category</label>
                            <select class="form-select" id="foodCategory" name="foodCategory" required>
                                <option value="" disabled selected>Select Category</option>
                                <option value="grains">Grains</option>
                                <option value="fruits">Fruits</option>
                                <option value="vegetables">Vegetables</option>
                                <option value="packaged">Packaged</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="frequency" class="form-label">Donation Frequency</label>
                            <select class="form-select" id="frequency" name="frequency" required>
                                <option value="" disabled selected>Select Frequency</option>
                                <option value="once">Once</option>
                                <option value="weekly">Weekly</option>
                                <option value="monthly">Monthly</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-gradient">Register</button>
                        </div>
                    </form>

                    <div class="mt-3 text-center">
                        <p>Already registered? <a href="${pageContext.request.contextPath}/app/login">Login here</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
