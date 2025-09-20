<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Page Not Found - Food Bank</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">
  <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
  <main class="container text-center py-5 flex-grow-1">
    <h1 class="display-5 mb-3">404 - Page Not Found</h1>
    <p class="lead mb-4">The page you are looking for doesn't exist or may have been moved.</p>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp"><i class="bi bi-house-door me-2"></i>Go Home</a>
  </main>
  <%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>