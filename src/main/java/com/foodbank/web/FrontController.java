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
        routeToJsp.put("/inventory/view", "/WEB-INF/jsp/inventory/viewDonations.jsp");
        routeToJsp.put("/inventory/edit", "/WEB-INF/jsp/inventory/editInventory.jsp");

        // Distribution
        routeToJsp.put("/distribution/assign", "/WEB-INF/jsp/distribution/assignDistribution.jsp");
        routeToJsp.put("/distribution/schedule", "/WEB-INF/jsp/distribution/deliverySchedule.jsp");
        routeToJsp.put("/distribution/routes", "/WEB-INF/jsp/distribution/distributionRoute.jsp");

        // Requests
        routeToJsp.put("/requests/track", "/WEB-INF/jsp/requests/trackRequests.jsp");
        routeToJsp.put("/requests/admin", "/WEB-INF/jsp/requests/adminRequests.jsp");

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

        // Reports - extended
        routeToJsp.put("/reports/analytics", "/WEB-INF/jsp/reports/analytics.jsp");
        routeToJsp.put("/reports/export/pdf", "/WEB-INF/jsp/reports/analytics.jsp"); // placeholder
        routeToJsp.put("/reports/export/excel", "/WEB-INF/jsp/reports/analytics.jsp"); // placeholder

        // Inventory - extended
        routeToJsp.put("/inventory/manage-bento", "/WEB-INF/jsp/inventory/bentoManageInventory.jsp");

        // Requests - extended
        routeToJsp.put("/requests/matching", "/WEB-INF/jsp/requests/bentoRequestMatching.jsp");
        routeToJsp.put("/requests/track-bento", "/WEB-INF/jsp/requests/bentoTrackRequests.jsp");

        // Distribution - extended
        routeToJsp.put("/distribution/tracking-bento", "/WEB-INF/jsp/distribution/bentoDistributionTracking.jsp");

        // Dashboard extras
        routeToJsp.put("/dashboard/notifications", "/WEB-INF/jsp/dashboard/notificationsCenter.jsp");

        // Profile
        routeToJsp.put("/profile", "/WEB-INF/jsp/auth/profile.jsp");
        routeToJsp.put("/profile/donor", "/WEB-INF/jsp/donor/profile.jsp");
        routeToJsp.put("/profile/recipient", "/WEB-INF/jsp/recipient/profile.jsp");
        routeToJsp.put("/profile/admin", "/WEB-INF/jsp/admin/profile.jsp");
        routeToJsp.put("/profile/ngo", "/WEB-INF/jsp/ngo/profile.jsp");

        // Donor-specific reports
        routeToJsp.put("/reports/donor/overview", "/WEB-INF/jsp/reports/donor/overview.jsp");

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
        // Role-based access guard
        String role = null;
        if (request.getSession(false) != null) {
            Object r = request.getSession(false).getAttribute("userRole");
            role = (r == null) ? null : r.toString();
        }
        if (!isAuthorized(role, path)) {
            if (role == null) {
                response.sendRedirect(request.getContextPath() + "/app/login");
            } else {
                response.sendRedirect(request.getContextPath() + "/app/dashboard/" + role);
            }
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
            case "/login": {
                // Simulated auth: set role from form
                String role = request.getParameter("role");
                if (role == null || role.isEmpty()) role = "recipient";
                request.getSession(true).setAttribute("userRole", role);
                response.sendRedirect(request.getContextPath() + "/app/dashboard/" + role);
                break;
            }
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
            case "/profile/update":
                // Pretend to save; redirect back to per-role profile
                String roleAfterUpdate = (request.getSession(false) != null && request.getSession(false).getAttribute("userRole") != null)
                        ? request.getSession(false).getAttribute("userRole").toString()
                        : null;
                String profilePath = (roleAfterUpdate == null) ? "/app/login" : "/app/profile/" + roleAfterUpdate;
                response.sendRedirect(request.getContextPath() + profilePath);
                break;
            case "/profile/delete":
                if (request.getSession(false) != null) request.getSession(false).invalidate();
                response.sendRedirect(request.getContextPath() + "/index.jsp?flash=Account%20deleted");
                break;
            case "/preferences/save":
                response.sendRedirect(request.getContextPath() + "/app/profile?flash=Preferences%20saved");
                break;
            case "/inventory/add":
                response.sendRedirect(request.getContextPath() + "/app/inventory/view?flash=Donation%20added");
                break;
            case "/requests/submit":
                response.sendRedirect(request.getContextPath() + "/app/requests/track?flash=Request%20submitted");
                break;
            case "/admin/users/add":
                response.sendRedirect(request.getContextPath() + "/app/admin/users?flash=User%20added");
                break;
            default:
                // Fallback: try GET route or 404
                String target = routeToJsp.get(path);
                if (target != null) {
                    forward(request, response, target);
                } else {
                    forward(request, response, "/WEB-INF/jsp/errors/404.jsp");
                }
        }
    }

    private boolean isAuthorized(String role, String path) {
        // Publicly accessible routes regardless of session
        if (path.startsWith("/login") || path.startsWith("/register") || path.startsWith("/forgot-password")) {
            return true;
        }
        // Unauthenticated users: everything else is blocked
        if (role == null) {
            return false;
        }
        // Admin can access everything
        if ("admin".equals(role)) return true;

        // Donor permissions
        if ("donor".equals(role)) {
            return path.equals("/dashboard/donor")
                    || path.equals("/profile") || path.equals("/profile/donor")
                    || path.startsWith("/reports/history")
                    || path.startsWith("/reports/donor/")
                    || path.startsWith("/requests/track")
                    || path.startsWith("/inventory/view")
                    || path.startsWith("/alerts/expiry")
                    || path.startsWith("/dashboard/notifications");
        }
        // Recipient permissions
        if ("recipient".equals(role)) {
            return path.equals("/dashboard/recipient")
                    || path.equals("/profile") || path.equals("/profile/recipient")
                    || path.startsWith("/requests/track")
                    || path.startsWith("/alerts/notifications")
                    || path.startsWith("/dashboard/notifications");
        }
        // NGO permissions
        if ("ngo".equals(role)) {
            return path.equals("/dashboard/ngo")
                    || path.equals("/profile") || path.equals("/profile/ngo")
                    || path.startsWith("/requests/track")
                    || path.startsWith("/distribution/assign")
                    || path.startsWith("/reports/beneficiaries")
                    || path.startsWith("/alerts/shortage") || path.startsWith("/alerts/surplus") || path.startsWith("/alerts/notifications")
                    || path.startsWith("/dashboard/notifications");
        }
        // Default deny
        return false;
    }

    private void forward(HttpServletRequest request, HttpServletResponse response, String view)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}