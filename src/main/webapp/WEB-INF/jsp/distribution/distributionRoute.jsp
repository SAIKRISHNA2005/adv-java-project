<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Distribution Routes - Food Bank</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
    <style>
        #map {
            height: 500px;
            width: 100%;
        }
    </style>
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<div class="container my-5">
    <h3 class="mb-4">Distribution Routes</h3>
    <div class="row g-4">
        <div class="col-lg-4">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-warning"><i class="bi bi-geo-alt-fill me-2"></i>Create Route</div>
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label class="form-label">Start Location</label>
                            <input type="text" class="form-control" placeholder="Warehouse / Source" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Stops (comma-separated)</label>
                            <input type="text" class="form-control" placeholder="Stop A, Stop B, Stop C" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Vehicle</label>
                            <select class="form-select">
                                <option>Van</option>
                                <option>Truck</option>
                                <option>Bike</option>
                            </select>
                        </div>
                        <div class="d-grid">
                            <button type="button" class="btn btn-warning">Plan Route</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div id="map" class="border rounded shadow-sm" style="height: 420px;"></div>
            <div class="card shadow-sm border-0 mt-3">
                <div class="card-body">
                    <h5 class="card-title mb-2">Route Summary</h5>
                    <ul class="mb-0">
                        <li>Estimated Distance: —</li>
                        <li>Estimated Time: —</li>
                        <li>Stops Covered: —</li>
                    </ul>
                    <p class="text-muted mb-0 mt-2">Map integration coming soon (Google Maps or OpenStreetMap).</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
