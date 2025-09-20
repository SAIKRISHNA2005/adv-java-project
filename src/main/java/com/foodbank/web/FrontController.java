package com.foodbank.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * FrontController to centralize routing to JSPs under WEB-INF and
 * handle basic POST actions for auth/registration flows.
 */
@WebServlet(name = "FrontController", urlPatterns = {"/app/*"})
public class FrontController extends HttpServlet {

    private Map<String, String> routeToJsp;

    @Override
    public void init() throws ServletException {
        routeToJsp = new HashMap<>();
        // Auth
        routeToJsp.put("/login", "/WEB-INF/jsp/auth/login.jsp");
        routeToJsp.put("/register/donor", "/WEB-INF/jsp/auth/donorRegister.jsp");
        routeToJsp.put("/register/recipient", "/WEB-INF/jsp/auth/recipientRegister.jsp");
        routeToJsp.put("/register/ngo", "/WEB-INF/jsp/auth/ngoRegister.jsp");
        routeToJsp.put("/forgot-password", "/WEB-INF/jsp/auth/forgotPassword.jsp");

        // Dashboards
        routeToJsp.put("/dashboard/admin", "/WEB-INF/jsp/dashboard/adminDashboard.jsp");
        routeToJsp.put("/dashboard/donor", "/WEB-INF/jsp/dashboard/donorDashboard.jsp");
        routeToJsp.put("/dashboard/recipient", "/WEB-INF/jsp/dashboard/recipientDashboard.jsp");
        routeToJsp.put("/dashboard/ngo", "/WEB-INF/jsp/dashboard/ngoDashboard.jsp");

        // Inventory
        routeToJsp.put("/inventory/manage", "/WEB-INF/jsp/inventory/manageInventory.jsp");
        routeToJsp.put("/inventory/add", "/WEB-INF/jsp/inventory/addDonation.jsp");
        routeToJsp.put("/inventory/view", "/WEB-INF/jsp/inventory/viewDonations.jsp");
        routeToJsp.put("/inventory/edit", "/WEB-INF/jsp/inventory/editInventory.jsp");

        // Distribution
        routeToJsp.put("/distribution/assign", "/WEB-INF/jsp/distribution/assignDistribution.jsp");
        routeToJsp.put("/distribution/schedule", "/WEB-INF/jsp/distribution/deliverySchedule.jsp");
        routeToJsp.put("/distribution/routes", "/WEB-INF/jsp/distribution/distributionRoute.jsp");

        // Requests
        routeToJsp.put("/requests/new", "/WEB-INF/jsp/requests/requestFood.jsp");
        routeToJsp.put("/requests/track", "/WEB-INF/jsp/requests/trackRequests.jsp");
        routeToJsp.put("/requests/admin", "/WEB-INF/jsp/requests/adminRequests.jsp");
        routeToJsp.put("/requests/ngo", "/WEB-INF/jsp/requests/ngoRequest.jsp");

        // Reports
        routeToJsp.put("/reports/history", "/WEB-INF/jsp/reports/donationHistory.jsp");
        routeToJsp.put("/reports/distribution", "/WEB-INF/jsp/reports/distributionReport.jsp");
        routeToJsp.put("/reports/beneficiaries", "/WEB-INF/jsp/reports/beneficiariesReport.jsp");
        routeToJsp.put("/reports/audit", "/WEB-INF/jsp/reports/auditLogs.jsp");

        // Alerts
        routeToJsp.put("/alerts/expiry", "/WEB-INF/jsp/alerts/expiryAlert.jsp");
        routeToJsp.put("/alerts/shortage", "/WEB-INF/jsp/alerts/shortageAlert.jsp");
        routeToJsp.put("/alerts/surplus", "/WEB-INF/jsp/alerts/surplusAlert.jsp");
        routeToJsp.put("/alerts/notifications", "/WEB-INF/jsp/alerts/notifications.jsp");

        // Admin
        routeToJsp.put("/admin/users", "/WEB-INF/jsp/admin/manageUsers.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || "/".equals(path)) {
            // Default route: show landing page (index.jsp) via redirect so assets load properly
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return;
        }
        if ("/logout".equals(path)) {
            if (request.getSession(false) != null) {
                request.getSession(false).invalidate();
            }
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return;
        }
        String target = routeToJsp.get(path);
        if (target == null) {
            forward(request, response, "/WEB-INF/jsp/errors/404.jsp");
            return;
        }
        forward(request, response, target);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }
        switch (path) {
            case "/login":
                // TODO: authenticate; for now route by role param
                String role = request.getParameter("role");
                if (role == null || role.isEmpty()) {
                    role = "recipient";
                }
                request.getSession(true).setAttribute("userRole", role);
                String dest = "/app/dashboard/" + role;
                response.sendRedirect(request.getContextPath() + dest);
                break;
            case "/register/donor":
                request.getSession(true).setAttribute("userRole", "donor");
                response.sendRedirect(request.getContextPath() + "/app/dashboard/donor");
                break;
            case "/register/recipient":
                request.getSession(true).setAttribute("userRole", "recipient");
                response.sendRedirect(request.getContextPath() + "/app/dashboard/recipient");
                break;
            case "/register/ngo":
                request.getSession(true).setAttribute("userRole", "ngo");
                response.sendRedirect(request.getContextPath() + "/app/dashboard/ngo");
                break;
            default:
                // For other POSTs not yet implemented, fallback to GET route
                String target = routeToJsp.get(path);
                if (target != null) {
                    forward(request, response, target);
                } else {
                    forward(request, response, "/WEB-INF/jsp/errors/404.jsp");
                }
        }
    }

    private void forward(HttpServletRequest request, HttpServletResponse response, String view)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}