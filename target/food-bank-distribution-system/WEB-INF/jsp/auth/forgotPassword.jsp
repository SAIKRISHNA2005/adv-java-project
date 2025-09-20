<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="bg-light d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container pb-safe">
    <div class="row justify-content-center mt-5">
        <div class="col-md-5">
            <div class="card shadow">
                <div class="card-header text-center bg-danger text-white">
                    <h4>Forgot Password</h4>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/app/forgot-password" method="post">
                        <div class="mb-3">
                            <label for="email" class="form-label">Enter your Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                    </form>
                    <div class="mt-3 text-center">
                        <a href="${pageContext.request.contextPath}/app/login">Back to Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
