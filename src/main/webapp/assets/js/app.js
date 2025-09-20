// Global JS for Food Bank Frontend UIs
// - Handles simple reveal-on-scroll animations
// - Initializes demo charts if canvases are present

(function(){
  // Reveal on scroll using IntersectionObserver
  const revealClass = 'reveal';
  const revealedClass = 'reveal-show';
  const els = document.querySelectorAll('.' + revealClass);
  if ('IntersectionObserver' in window && els.length){
    const io = new IntersectionObserver((entries)=>{
      entries.forEach(e=>{
        if(e.isIntersecting){
          e.target.classList.add(revealedClass);
          io.unobserve(e.target);
        }
      })
    }, { threshold: 0.12 });
    els.forEach(el=> io.observe(el));
  } else {
    // Fallback
    els.forEach(el=> el.classList.add(revealedClass));
  }

  // Chart.js demo initializers (runs only if Chart is loaded and canvas exists)
  function initChart(id, cfg){
    const ctx = document.getElementById(id);
    if (!ctx || !window.Chart) return;
    // eslint-disable-next-line no-undef
    new Chart(ctx, cfg);
  }

  // Lightweight toast system using Bootstrap Toast
  function showToast(message, variant = 'primary'){
    let container = document.getElementById('fb-toast-container');
    if (!container){
      container = document.createElement('div');
      container.id = 'fb-toast-container';
      container.className = 'toast-container position-fixed top-0 end-0 p-3';
      document.body.appendChild(container);
    }
    const toastEl = document.createElement('div');
    toastEl.className = `toast align-items-center text-bg-${variant} border-0`;
    toastEl.role = 'alert';
    toastEl.innerHTML = `<div class="d-flex"><div class="toast-body">${message}</div><button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button></div>`;
    container.appendChild(toastEl);
    // eslint-disable-next-line no-undef
    const t = new bootstrap.Toast(toastEl, { delay: 2500 });
    t.show();
    toastEl.addEventListener('hidden.bs.toast', ()=> toastEl.remove());
  }

  // Flash message reader (?flash=...)
  (function(){
    const params = new URLSearchParams(window.location.search);
    const flash = params.get('flash');
    if (flash) showToast(decodeURIComponent(flash), 'success');
  })();

  // Quick modal form helper
  function openQuickForm({ title = 'Quick Action', fields = [], submitText = 'Submit', postTo, onSubmit }){
    // Backdrop blur
    document.body.style.setProperty('--fb-blur-bg', 'blur(2px)');
    document.body.classList.add('fb-blur');

    const modalWrap = document.createElement('div');
    modalWrap.innerHTML = `
    <div class="modal fade" tabindex="-1">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">${title}</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <form class="quick-form">
            <div class="modal-body">
              ${fields.map((f,i)=>{
                const id = `qf_${i}`;
                if (f.type === 'select'){
                  return `<div class=\"mb-3\"><label class=\"form-label\" for=\"${id}\">${f.label}</label><select id=\"${id}\" name=\"${f.name}\" class=\"form-select\">${(f.options||[]).map(o=>`<option value=\"${o}\">${o}</option>`).join('')}</select></div>`;
                }
                if (f.type === 'file'){
                  return `<div class=\"mb-3\"><label class=\"form-label\" for=\"${id}\">${f.label}</label><input id=\"${id}\" name=\"${f.name}\" type=\"file\" class=\"form-control\" ${(f.accept?`accept=\\\"${f.accept}\\\"`:'')} ${(f.multiple?'multiple':'')}></div>`;
                }
                return `<div class=\"mb-3\"><label class=\"form-label\" for=\"${id}\">${f.label}</label><input id=\"${id}\" name=\"${f.name}\" type=\"${f.type||'text'}\" class=\"form-control\" placeholder=\"${f.placeholder||''}\"></div>`;
              }).join('')}
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="submit" class="btn btn-primary">${submitText}</button>
            </div>
          </form>
        </div>
      </div>
    </div>`;
    document.body.appendChild(modalWrap);
    const modalEl = modalWrap.querySelector('.modal');
    // eslint-disable-next-line no-undef
    const modal = new bootstrap.Modal(modalEl, { backdrop: 'static' });
    modal.show();

    modalEl.addEventListener('hidden.bs.modal', ()=>{
      document.body.classList.remove('fb-blur');
      modalWrap.remove();
    });

    modalWrap.querySelector('.quick-form').addEventListener('submit', (e)=>{
      e.preventDefault();
      const formEl = e.currentTarget;

      // If a POST endpoint is provided, submit the actual form (supports file uploads)
      if (postTo){
        formEl.action = postTo;
        formEl.method = 'POST';
        if (formEl.querySelector('input[type="file"]')) {
          formEl.enctype = 'multipart/form-data';
        }
        modal.hide();
        formEl.submit();
        return;
      }

      const data = Object.fromEntries(new FormData(formEl).entries());
      if (onSubmit) onSubmit(data, { close: ()=> modal.hide() });
      else { modal.hide(); showToast('Submitted', 'success'); }
    });
  }

  // Attach data-action buttons (data-action="quick-add", data-entity="User|Inventory|Request")
  function wireActionButtons(){
    document.querySelectorAll('[data-action="quick-add"]').forEach(btn=>{
      btn.addEventListener('click', (e)=>{
        e.preventDefault();
        const entity = btn.getAttribute('data-entity') || 'Item';
        const ctx = (window.APP_CTX || '');
        if (entity === 'User'){
          openQuickForm({
            title: 'Add User',
            fields: [
              { label:'Name', name:'name' },
              { label:'Email', name:'email', type:'email' },
              { label:'Role', name:'role', type:'select', options:['Admin','Donor','Recipient','NGO'] }
            ],
            submitText: 'Add User',
            postTo: `${ctx}/app/admin/users/add`
          });
        } else if (entity === 'Inventory'){
          openQuickForm({
            title: 'Add Inventory Item',
            fields: [
              { label:'Food Name', name:'foodName' },
              { label:'Category', name:'category', type:'select', options:['Grains','Fruits','Vegetables','Packaged'] },
              { label:'Quantity', name:'quantity', type:'number', placeholder:'kg/units' },
              { label:'Photos', name:'images', type:'file', accept:'image/*', multiple:true }
            ],
            submitText: 'Add Item',
            postTo: `${ctx}/app/inventory/add`
          });
        } else if (entity === 'Request'){
          openQuickForm({
            title: 'Create Request',
            fields: [
              { label:'Food Item', name:'foodItem' },
              { label:'Quantity', name:'quantity', type:'number' },
              { label:'Remarks', name:'remarks' },
              { label:'Attachment', name:'attachments', type:'file', accept:'image/*,application/pdf', multiple:true }
            ],
            submitText: 'Submit Request',
            postTo: `${ctx}/app/requests/submit`
          });
        }
      });
    });
  }

  document.addEventListener('DOMContentLoaded', ()=>{
    wireActionButtons();

    // Initialize marquee duplications for seamless loop
    document.querySelectorAll('.marquee').forEach(mq=>{
      const track = mq.querySelector('.marquee-track');
      if (!track) return;
      // If already prepared, skip
      if (track.dataset.prepared) return;
      const group = track.querySelector('.marquee-group');
      if (!group) return;
      // Duplicate group once so total width ~2x for 50% translate loop
      const clone = group.cloneNode(true);
      track.appendChild(clone);
      track.dataset.prepared = '1';
    });
  });

  // Example charts for dashboards/reports
  initChart('chartMonthlyDistribution', {
    type: 'line',
    data: {
      labels: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
      datasets: [{
        label: 'Meals Delivered',
        data: [320,410,390,520,610,720,680,750,810,860,920,1010],
        borderColor: '#0d6efd',
        backgroundColor: 'rgba(13,110,253,0.15)',
        fill: true,
        tension: .35
      }]
    },
    options: { plugins: { legend: { display: false } }, scales: { x: { grid: { display:false }}, y: { beginAtZero:true }}}
  });

  initChart('chartDonationTrend', {
    type: 'bar',
    data: {
      labels: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
      datasets: [{
        label: 'Donations',
        data: [12,18,9,22,27,31,20],
        backgroundColor: ['#0d6efd','#20c997','#fd7e14','#6f42c1','#198754','#dc3545','#0dcaf0']
      }]
    },
    options: { plugins: { legend: { display: false } }, scales: { y: { beginAtZero:true }}}
  });
})();