<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Food Bank Distribution System</title>
  <%@ include file="/WEB-INF/jsp/common/head-resources.jsp" %>

  <!-- Page-only styles to make the landing visually stunning -->
  <style>
    :root{
      --lndg-primary:#6f42c1;   /* purple */
      --lndg-secondary:#0d6efd; /* blue */
      --lndg-success:#20c997;   /* teal */
      --lndg-pink:#d63384;      /* pink */
      --lndg-orange:#fd7e14;    /* orange */
      --glass-bg:rgba(255,255,255,.08);
      --glass-brd:rgba(255,255,255,.35);
    }

    /* Gradient canvas background */
    .landing-hero{
      position:relative; overflow:hidden; min-height:86vh; display:flex; align-items:center;
      background: radial-gradient(1200px 600px at 10% 10%, rgba(111,66,193,.25), transparent 60%),
                  radial-gradient(900px 500px at 90% 20%, rgba(13,110,253,.20), transparent 60%),
                  radial-gradient(700px 500px at 20% 90%, rgba(32,201,151,.18), transparent 60%),
                  linear-gradient(135deg, #f8f9ff 0%, #f7faff 35%, #f5fbff 65%, #f8fff9 100%);
    }
    .blob{ position:absolute; filter: blur(38px); opacity:.55; transform: translateZ(0); }
    .blob.b1{ width:520px; height:520px; border-radius:50%; background:linear-gradient(135deg, var(--lndg-primary), var(--lndg-pink)); left:-120px; top:-120px; animation:float1 12s ease-in-out infinite; }
    .blob.b2{ width:420px; height:420px; border-radius:40% 60% 70% 30%/50% 30% 70% 50%; background:linear-gradient(135deg, var(--lndg-secondary), var(--lndg-success)); right:-100px; top:20%; animation:float2 14s ease-in-out infinite; }
    .blob.b3{ width:360px; height:360px; border-radius:50%; background:linear-gradient(135deg, var(--lndg-orange), var(--lndg-pink)); left:10%; bottom:-120px; animation:float3 16s ease-in-out infinite; }
    @keyframes float1{ 0%,100%{ transform:translate(0,0)} 50%{ transform:translate(18px, -12px)} }
    @keyframes float2{ 0%,100%{ transform:translate(0,0) rotate(0)} 50%{ transform:translate(-16px, 14px) rotate(6deg)} }
    @keyframes float3{ 0%,100%{ transform:translate(0,0)} 50%{ transform:translate(10px, -16px)} }

    /* Glass panel */
    .glass{ background:var(--glass-bg); border:1px solid var(--glass-brd); backdrop-filter: blur(12px) saturate(120%); box-shadow: 0 1.25rem 2.5rem rgba(0,0,0,.08); }
    .hero-title{ font-weight:800; line-height:1.05; }
    .gradient-text{ background: linear-gradient(90deg, var(--lndg-primary), var(--lndg-secondary), var(--lndg-success)); -webkit-background-clip:text; background-clip:text; color:transparent; }

    .hero-badges .badge{ background:rgba(255,255,255,.85); color:#212529; border:1px solid rgba(0,0,0,.05); }

    /* Bento grid */
    .bento{ display:grid; grid-template-columns: repeat(12,1fr); gap:1rem; }
    .tile{ border-radius:16px; padding:1.25rem; background:#fff; box-shadow:0 .75rem 1.5rem rgba(0,0,0,.06); transition: transform .25s ease, box-shadow .25s ease; }
    .tile:hover{ transform: translateY(-4px); box-shadow:0 1.25rem 2.5rem rgba(0,0,0,.10); }
    .t-6{ grid-column: span 6; } .t-4{ grid-column: span 4; } .t-8{ grid-column: span 8; } .t-12{ grid-column: span 12; }
    @media (max-width: 992px){ .t-6,.t-4,.t-8,.t-12{ grid-column: span 12; } }
    .tile-gradient{ background:linear-gradient(135deg, rgba(13,110,253,.08), rgba(111,66,193,.08)); }

    /* Marquee */
    .marquee{ overflow:hidden; position:relative; }
    .marquee-track{ display:flex; gap:2.5rem; animation:scroll 22s linear infinite; }
    @keyframes scroll{ from{ transform:translateX(0) } to{ transform:translateX(-50%) } }

    /* Counters */
    .counter{ font-weight:800; font-size:2.25rem; letter-spacing:.5px; }

    /* CTA band */
    .cta-band{ position:relative; overflow:hidden; border-radius:18px; padding:2rem; }
    .cta-band::before{ content:""; position:absolute; inset:0; background: radial-gradient(600px 240px at 10% 20%, rgba(111,66,193,.25), transparent 60%), radial-gradient(560px 240px at 90% 80%, rgba(13,110,253,.20), transparent 60%); }

    /* Small helpers */
    .icon-circle{ width:46px; height:46px; border-radius:12px; display:inline-flex; align-items:center; justify-content:center; color:#fff; }
    .ic-purple{ background: linear-gradient(135deg, #6f42c1, #9857e0); }
    .ic-blue{ background: linear-gradient(135deg, #0d6efd, #3d8bfd); }
    .ic-teal{ background: linear-gradient(135deg, #20c997, #5ddab6); }
    .ic-orange{ background: linear-gradient(135deg, #fd7e14, #ff9f4d); }
  </style>
</head>
<body class="d-flex flex-column min-vh-100">

  <%@ include file="/WEB-INF/jsp/common/header.jsp" %>

  <!-- HERO -->
  <section class="landing-hero">
    <div class="blob b1"></div>
    <div class="blob b2"></div>
    <div class="blob b3"></div>
    <div class="container position-relative">
      <div class="row align-items-center g-4">
        <div class="col-lg-7">
          <div class="p-4 p-md-5 glass rounded-4">
            <span class="badge rounded-pill bg-white text-dark mb-3 hero-badges"><i class="bi bi-stars me-2 text-warning"></i>Community Impact Platform</span>
            <h1 class="display-4 hero-title mb-3 reveal">End Hunger, Not Food — <span class="gradient-text">Food Bank</span></h1>
            <p class="lead text-secondary mb-4 reveal">A colorful, modern network connecting <strong>Donors</strong>, <strong>NGOs</strong>, and <strong>Recipients</strong> to deliver nutritious food fast and fairly across Chennai.</p>
            <div class="reveal">
              <a href="${pageContext.request.contextPath}/app/register/donor" class="btn btn-lg btn-gradient me-2"><i class="bi bi-heart-fill me-2"></i>Become a Donor</a>
              <a href="${pageContext.request.contextPath}/app/register/recipient" class="btn btn-lg btn-outline-primary"><i class="bi bi-bag-check me-2"></i>Request Food</a>
            </div>
            <div class="mt-4 small text-muted hero-badges reveal">Trusted by communities and partners across the city</div>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="tile tile-gradient rounded-4 p-4 p-md-5 shadow-sm reveal">
            <div class="d-flex align-items-center mb-3">
              <span class="icon-circle ic-purple me-3"><i class="bi bi-box-seam"></i></span>
              <div>
                <div class="fw-semibold">Smart Inventory</div>
                <div class="small text-muted">Track categories, expiries, and donors with ease.</div>
              </div>
            </div>
            <div class="d-flex align-items-center mb-3">
              <span class="icon-circle ic-blue me-3"><i class="bi bi-geo-alt"></i></span>
              <div>
                <div class="fw-semibold">Route Optimization</div>
                <div class="small text-muted">Efficient schedules reduce time and waste.</div>
              </div>
            </div>
            <div class="d-flex align-items-center">
              <span class="icon-circle ic-teal me-3"><i class="bi bi-bell"></i></span>
              <div>
                <div class="fw-semibold">Smart Alerts</div>
                <div class="small text-muted">Shortage, surplus, and expiry notifications.</div>
              </div>
            </div>
            <hr class="my-4">
            <div class="text-muted small">Works beautifully on mobile and desktop with modern UI.</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- BRAND MARQUEE -->
  <section class="py-3 bg-white">
    <div class="container">
      <div class="marquee rounded-3 py-3 px-2 bg-light">
        <div class="marquee-track">
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-shop fs-4 text-secondary"></i><span class="fw-semibold">City Kitchens</span>
          </div>
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-flower3 fs-4 text-success"></i><span class="fw-semibold">Fresh Farms</span>
          </div>
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-people fs-4 text-primary"></i><span class="fw-semibold">Community Care</span>
          </div>
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-basket fs-4 text-warning"></i><span class="fw-semibold">Food4All</span>
          </div>
          <!-- duplicate for seamless loop -->
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-shop fs-4 text-secondary"></i><span class="fw-semibold">City Kitchens</span>
          </div>
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-flower3 fs-4 text-success"></i><span class="fw-semibold">Fresh Farms</span>
          </div>
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-people fs-4 text-primary"></i><span class="fw-semibold">Community Care</span>
          </div>
          <div class="d-flex align-items-center gap-3">
            <i class="bi bi-basket fs-4 text-warning"></i><span class="fw-semibold">Food4All</span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- BENTO FEATURES -->
  <section class="py-5">
    <div class="container">
      <div class="bento">
        <div class="tile t-8">
          <div class="d-flex align-items-start">
            <span class="icon-circle ic-blue me-3"><i class="bi bi-clipboard2-check"></i></span>
            <div>
              <h4 class="mb-1">Real-time Inventory & Expiry</h4>
              <div class="text-muted">Keep a live view of availability, categories, and expiring items to minimize waste.</div>
            </div>
          </div>
          <div class="row g-3 mt-3">
            <div class="col-6"><div class="p-3 rounded bg-light">Grains • Fruits • Vegetables • Packaged</div></div>
            <div class="col-6"><div class="p-3 rounded bg-light">Near-expiry alerts and suggestions</div></div>
          </div>
        </div>
        <div class="tile t-4">
          <div class="d-flex align-items-start">
            <span class="icon-circle ic-teal me-3"><i class="bi bi-speedometer"></i></span>
            <div>
              <h5 class="mb-1">Fast Requests</h5>
              <div class="text-muted">Quick add forms with toast confirmations for a seamless flow.</div>
            </div>
          </div>
        </div>
        <div class="tile t-4">
          <div class="d-flex align-items-start">
            <span class="icon-circle ic-orange me-3"><i class="bi bi-truck"></i></span>
            <div>
              <h5 class="mb-1">Smart Distribution</h5>
              <div class="text-muted">Plan routes and schedules to reach more people faster.</div>
            </div>
          </div>
        </div>
        <div class="tile t-8">
          <div class="d-flex align-items-start">
            <span class="icon-circle ic-purple me-3"><i class="bi bi-shield-check"></i></span>
            <div>
              <h4 class="mb-1">Secure & Role-based Access</h4>
              <div class="text-muted">Admins, Donors, NGOs, and Recipients each get tailored views and actions.</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- STATS COUNTERS -->
  <section class="py-5 bg-light">
    <div class="container">
      <div class="row text-center g-4">
        <div class="col-md-3">
          <div class="tile">
            <div class="counter" data-target="12500">0</div>
            <div class="text-muted">Meals Served</div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="tile">
            <div class="counter" data-target="1200">0</div>
            <div class="text-muted">Registered Donors</div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="tile">
            <div class="counter" data-target="180">0</div>
            <div class="text-muted">NGO Partners</div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="tile">
            <div class="counter" data-target="20000">0</div>
            <div class="text-muted">Beneficiaries</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS (Carousel) -->
  <section class="py-5">
    <div class="container">
      <div id="t-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <div class="tile text-center">
                  <p class="lead mb-2">“We reduced food waste and reached more families than ever.”</p>
                  <div class="small text-muted">— City Kitchens</div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <div class="tile text-center">
                  <p class="lead mb-2">“The process is simple, fast, and transparent.”</p>
                  <div class="small text-muted">— NGO Coordinator</div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <div class="tile text-center">
                  <p class="lead mb-2">“We received fresh produce right on time.”</p>
                  <div class="small text-muted">— Recipient Home</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#t-carousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#t-carousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
  </section>

  <!-- CTA BAND -->
  <section class="pb-5">
    <div class="container">
      <div class="cta-band bg-primary text-white position-relative">
        <div class="row align-items-center g-3">
          <div class="col-lg-8">
            <h3 class="mb-1">Ready to make a difference?</h3>
            <div class="opacity-75">Join as a Donor or Request Support — every action counts.</div>
          </div>
          <div class="col-lg-4 text-lg-end">
            <a href="${pageContext.request.contextPath}/app/register/donor" class="btn btn-light me-2"><i class="bi bi-heart-fill me-2 text-danger"></i>Join as Donor</a>
            <a href="${pageContext.request.contextPath}/app/register/recipient" class="btn btn-outline-light">Request Support</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <%@ include file="/WEB-INF/jsp/common/footer.jsp" %>

  <!-- page-only scripts: counters + reveal-on-scroll reuse -->
  <script>
    // Counter animation
    document.addEventListener('DOMContentLoaded', function(){
      const counters = document.querySelectorAll('.counter');
      const ease = t => 1 - Math.pow(1 - t, 3);
      counters.forEach(el=>{
        const target = +el.getAttribute('data-target');
        let start = 0; const dur = 1400; const t0 = performance.now();
        const step = (t)=>{
          const p = Math.min(1, (t - t0)/dur);
          el.textContent = Math.floor(ease(p) * target).toLocaleString();
          if (p < 1) requestAnimationFrame(step); else el.textContent = target.toLocaleString();
        };
        requestAnimationFrame(step);
      });
    });
  </script>
</body>
</html>