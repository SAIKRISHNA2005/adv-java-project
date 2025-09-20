<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NGO Registration - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="bg-light d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container flex-grow-1">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card shadow border-0">
                <div class="card-header text-center bg-warning text-dark">
                    <h4>NGO Registration</h4>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/app/register/ngo" method="post">
                        <div class="mb-3">
                            <label for="orgName" class="form-label">Organization Name</label>
                            <input type="text" class="form-control" id="orgName" name="orgName" required>
                        </div>

                        <div class="mb-3">
                            <label for="contact" class="form-label">Contact Number</label>
                            <input type="text" class="form-control" id="contact" name="contact" required>
                        </div>

                        <div class="mb-3">
                            <label for="serviceAreas" class="form-label">Service Areas</label>
                            <input type="text" class="form-control" id="serviceAreas" name="serviceAreas" placeholder="Areas you serve" required>
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-warning text-dark">Register</button>
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
