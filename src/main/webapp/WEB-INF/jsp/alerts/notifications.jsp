<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notifications - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Notifications</h3>
    <div class="list-group shadow-sm">
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <div>
                <div class="fw-semibold">Request #210 approved</div>
                <div class="small text-muted">Your request has been approved and scheduled for delivery.</div>
            </div>
            <span class="badge bg-success">New</span>
        </div>
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <div>
                <div class="fw-semibold">Delivery window assigned</div>
                <div class="small text-muted">Expect delivery between 3-5 PM today.</div>
            </div>
            <span class="badge bg-info text-dark">Info</span>
        </div>
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <div>
                <div class="fw-semibold">Reminder</div>
                <div class="small text-muted">Be available to receive delivery at the scheduled time.</div>
            </div>
            <span class="badge bg-warning text-dark">Reminder</span>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>

