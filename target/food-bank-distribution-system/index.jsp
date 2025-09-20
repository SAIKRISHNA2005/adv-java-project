<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Bank Distribution System</title>
    <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>
</head>
<body class="d-flex flex-column min-vh-100">

    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
    <!-- Hero Section -->
    <section class="hero-section text-center section gradient-bg">
        <div class="container">
            <h1 class="display-4 fw-bold animate-fade-up">Fight Hunger. Reduce Waste.</h1>
            <p class="lead mb-4 animate-fade-up animate-delay-1">A seamless platform connecting <strong>Donors</strong>, <strong>NGOs</strong>, and <strong>Recipients</strong> across Chennai.</p>
            <div class="animate-fade-up animate-delay-2">
                <a href="${pageContext.request.contextPath}/app/register/donor" class="btn btn-gradient btn-lg mx-2"><i class="bi bi-heart-fill me-2"></i>Become a Donor</a>
                <a href="${pageContext.request.contextPath}/app/register/recipient" class="btn btn-primary btn-lg mx-2"><i class="bi bi-people-fill me-2"></i>Request Food</a>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="section bg-light">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm card-hover animate-fade-up">
                        <div class="card-body">
                            <div class="feature-icon mb-2"><i class="bi bi-person-plus"></i></div>
                            <h5 class="card-title">Easy Registration</h5>
                            <p class="card-text">Quick onboarding for donors, recipients, and NGOs.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm card-hover animate-fade-up animate-delay-1">
                        <div class="card-body">
                            <div class="feature-icon mb-2" style="background:#eaf7f1;color:#198754"><i class="bi bi-clipboard2-check"></i></div>
                            <h5 class="card-title">Inventory & Expiry</h5>
                            <p class="card-text">Track stock, expiries, and reduce waste effectively.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm card-hover animate-fade-up animate-delay-2">
                        <div class="card-body">
                            <div class="feature-icon mb-2" style="background:#fff3cd;color:#fd7e14"><i class="bi bi-bell"></i></div>
                            <h5 class="card-title">Smart Alerts</h5>
                            <p class="card-text">Get notified of surpluses and shortages instantly.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm card-hover animate-fade-up animate-delay-3">
                        <div class="card-body">
                            <div class="feature-icon mb-2" style="background:#ffe8e8;color:#dc3545"><i class="bi bi-geo-alt"></i></div>
                            <h5 class="card-title">Route Planning</h5>
                            <p class="card-text">Optimize deliveries with efficient routes and schedules.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="section">
        <div class="container">
            <div class="row g-4 text-center">
                <div class="col-md-3">
                    <div class="card stat-card shadow-sm card-hover">
                        <div class="card-body">
                            <h2>12,500+</h2>
                            <div class="text-muted">Meals Served</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card stat-card shadow-sm card-hover">
                        <div class="card-body">
                            <h2>1,200+</h2>
                            <div class="text-muted">Registered Donors</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card stat-card shadow-sm card-hover">
                        <div class="card-body">
                            <h2>180+</h2>
                            <div class="text-muted">NGO Partners</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card stat-card shadow-sm card-hover">
                        <div class="card-body">
                            <h2>20,000+</h2>
                            <div class="text-muted">Beneficiaries</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- How It Works Section -->
    <section class="section bg-light">
        <div class="container">
            <div class="row align-items-center g-4">
                <div class="col-lg-6">
                    <div class="chart-placeholder"></div>
                </div>
                <div class="col-lg-6">
                    <h3>How It Works</h3>
                    <ul class="timeline">
                        <li>Donors register and post available food with expiries.</li>
                        <li>Recipients/NGOs request items based on needs.</li>
                        <li>Admin/NGO schedules delivery and optimizes routes.</li>
                        <li>Distribution completed and reports generated.</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Partners Section -->
    <section class="section">
        <div class="container text-center">
            <h3 class="mb-4">Our Partners</h3>
            <div class="row g-3 align-items-center">
                <div class="col-6 col-md-3"><div class="p-4 border rounded">City Kitchens</div></div>
                <div class="col-6 col-md-3"><div class="p-4 border rounded">Fresh Farms</div></div>
                <div class="col-6 col-md-3"><div class="p-4 border rounded">Community Care</div></div>
                <div class="col-6 col-md-3"><div class="p-4 border rounded">Food4All</div></div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="section bg-light">
        <div class="container">
            <h3 class="text-center mb-4">What People Say</h3>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card shadow-sm h-100 border-0 card-hover">
                        <div class="card-body">
                            <p class="mb-2">“We reduced food waste and reached more families.”</p>
                            <div class="small text-muted">— Local Restaurant</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm h-100 border-0 card-hover">
                        <div class="card-body">
                            <p class="mb-2">“The process is simple and transparent.”</p>
                            <div class="small text-muted">— NGO Coordinator</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm h-100 border-0 card-hover">
                        <div class="card-body">
                            <p class="mb-2">“We received fresh produce on time.”</p>
                            <div class="small text-muted">— Recipient Home</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Section -->
    <section class="section">
        <div class="container">
            <h3 class="text-center mb-4">Frequently Asked Questions</h3>
            <div class="accordion" id="faq">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="q1">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#a1">Who can donate?</button>
                    </h2>
                    <div id="a1" class="accordion-collapse collapse show" data-bs-parent="#faq">
                        <div class="accordion-body">Individuals, restaurants, and organizations with safe, consumable food.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="q2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a2">How fast is delivery?</button>
                    </h2>
                    <div id="a2" class="accordion-collapse collapse" data-bs-parent="#faq">
                        <div class="accordion-body">Deliveries are scheduled daily; urgent items are prioritized.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="q3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a3">Is there any fee?</button>
                    </h2>
                    <div id="a3" class="accordion-collapse collapse" data-bs-parent="#faq">
                        <div class="accordion-body">No. The platform is free for donors, NGOs, and recipients.</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="section gradient-bg text-center">
        <div class="container">
            <h3 class="mb-3">Ready to make a difference?</h3>
            <a href="${pageContext.request.contextPath}/app/register/donor" class="btn btn-gradient btn-lg me-2">Join as Donor</a>
            <a href="${pageContext.request.contextPath}/app/register/recipient" class="btn btn-outline-primary btn-lg">Request Support</a>
        </div>
    </section>

    <%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>
