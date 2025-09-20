<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="bg-light d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container flex-grow-1">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-header text-center bg-primary text-white">
                    <h4>Login</h4>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/app/login" method="post">
                        <div class="row g-3">
                            <div class="col-md-12">
                                <label for="role" class="form-label">Login As</label>
                                <select class="form-select" id="role" name="role" required>
                                    <option value="" disabled selected>Select Role</option>
                                    <option value="donor">Donor</option>
                                    <option value="recipient">Recipient</option>
                                    <option value="ngo">NGO</option>
                                    <option value="admin">Admin</option>
                                </select>
                            </div>
                            <div class="col-md-12 input-icon">
                                <i class="bi bi-envelope"></i>
                                <input type="text" class="form-control" id="email" name="email" placeholder="Email / Username" required>
                            </div>
                            <div class="col-md-12 input-icon">
                                <i class="bi bi-lock"></i>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                            </div>
                            <div class="col-12 text-end">
                                <a href="${pageContext.request.contextPath}/app/forgot-password">Forgot Password?</a>
                            </div>
                            <div class="col-12 d-grid">
                                <button type="submit" class="btn btn-gradient">Login</button>
                            </div>
                        </div>
                    </form>

                    <!-- Register Links -->
                    <div class="mt-3 text-center">
                        <p>New User? 
                            <a href="${pageContext.request.contextPath}/app/register/donor">Register as Donor</a> | 
                            <a href="${pageContext.request.contextPath}/app/register/recipient">Register as Recipient</a> | 
                            <a href="${pageContext.request.contextPath}/app/register/ngo">Register as NGO</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
