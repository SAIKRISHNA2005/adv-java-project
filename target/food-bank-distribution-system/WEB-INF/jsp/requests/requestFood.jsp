<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Food - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <div class="row g-4">
        <div class="col-lg-7">
            <div class="card shadow border-0">
                <div class="card-header bg-success text-white text-center">
                    <h4>Request Food</h4>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/app/requests/submit" method="post">
                        <div class="mb-3">
                            <label for="foodItem" class="form-label">Select Food Item</label>
                            <select class="form-select" id="foodItem" name="foodItem" required>
                                <option value="" disabled selected>Choose Food</option>
                                <option value="Rice">Rice</option>
                                <option value="Fruits">Fruits</option>
                                <option value="Vegetables">Vegetables</option>
                                <option value="Packaged">Packaged</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="quantity" class="form-label">Quantity (kg/units)</label>
                            <input type="number" class="form-control" id="quantity" name="quantity" min="1" required>
                        </div>

                        <div class="mb-3">
                            <label for="remarks" class="form-label">Additional Remarks</label>
                            <textarea class="form-control" id="remarks" name="remarks" rows="3" placeholder="Any specific needs"></textarea>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-success">Submit Request</button>
                        </div>
                    </form>
                    <div class="mt-3 text-center">
                        <a href="${pageContext.request.contextPath}/app/requests/track">Track Your Requests</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-light"><i class="bi bi-lightbulb me-2"></i>Tips</div>
                <div class="card-body">
                    <ul class="mb-3">
                        <li>Choose items that match your immediate needs.</li>
                        <li>Prefer items with longer shelf-life when possible.</li>
                        <li>Provide clear remarks for special dietary needs.</li>
                    </ul>
                    <div class="alert alert-info mb-0">Delivery windows are assigned daily between 3-7 PM.</div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
