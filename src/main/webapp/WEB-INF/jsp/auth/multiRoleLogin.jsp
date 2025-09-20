<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign In - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
  <style>
    .bento { display:grid; grid-template-columns: repeat(12,1fr); gap:1rem; }
    .tile { background:#fff; border-radius:12px; padding:1rem; box-shadow:0 .5rem 1.25rem rgba(0,0,0,.06); }
    .t-12{ grid-column: span 12; }
    .t-8{ grid-column: span 8; }
    .t-4{ grid-column: span 4; }
    @media (max-width: 992px){ .t-8,.t-4{ grid-column: span 12; } }
  </style>
</head>
<body class="d-flex flex-column min-vh-100">
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>
<div class="container my-5" style="max-width: 920px;">
  <div class="bento">
    <div class="tile t-8">
      <h4 class="mb-3">Sign in</h4>
      <form action="${pageContext.request.contextPath}/app/login" method="post" class="vstack gap-3">
        <div class="form-floating">
          <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
          <label for="email">Email address</label>
        </div>
        <div class="form-floating">
          <input type="password" class="form-control" id="password" name="password" placeholder="Password">
          <label for="password">Password</label>
        </div>
        <div class="d-flex align-items-center justify-content-between">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="1" id="remember">
            <label class="form-check-label" for="remember">Remember me</label>
          </div>
          <a href="${pageContext.request.contextPath}/app/forgot" class="small">Forgot password?</a>
        </div>
        <button class="btn btn-primary" type="submit">Sign in</button>
      </form>
    </div>
    <div class="tile t-4">
      <h6 class="mb-3">Continue as</h6>
      <div class="vstack gap-2">
        <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/app/login?role=donor"><i class="bi bi-heart-fill me-1"></i>Donor</a>
        <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/app/login?role=recipient"><i class="bi bi-people-fill me-1"></i>Recipient</a>
        <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/app/login?role=admin"><i class="bi bi-shield-lock-fill me-1"></i>Admin</a>
      </div>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>