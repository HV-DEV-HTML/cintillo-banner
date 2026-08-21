[Plugin:ifInRange from="[PageInfo value='firstItemOnPage']"]
<!-- Existing project asset reference; all component-critical styles are kept inline below. -->
<link rel="stylesheet" href="https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/index.7U2dxzBb.css">
<div
  id="banner_cintillo"
  class="promotional-strip"
  data-date-init="[Element context='autofill' type='content' key='AT.FieldDate']"
  data-date-end="[Element context='autofill' type='content' key='AT.FieldDateEnd']"
  data-date-campaign-end="[Element context='autofill' type='content' key='AT.FieldDateCampaignEnd']"
  data-campaign-phase="countdown"
  style="display: none;"
>
  <div class="swiper promotional-strip-swiper" aria-roledescription="carousel">
    <div class="swiper-wrapper promotional-strip-panels">
      <section class="swiper-slide campaign-panel" aria-label="Campaign countdown">
        [Plugin:NotEquals text1="" text2="[Element context="autofill" type="content" key="AT.FieldBackground"]"]
          <div class="campaign-background" aria-hidden="true">
            [Element context="autofill" type="content" key="AT.FieldBackground" htmlencode="false"]
          </div>
        [/Plugin:NotEquals]

        <div class="campaign-panel__content">
          <div class="campaign-brand">
            <div class="logo_banner" aria-hidden="true">
              [Element context="autofill" type="content" key="AT.FieldImage" htmlencode="false"]
            </div>
            <p class="campaign-label campaign-label--last-hours">
              [Element context="autofill" type="content" key="AT.FieldTitleLastHours"]
            </p>
          </div>

          <div class="countdown_section">
            <p class="campaign-label campaign-label--default">
              [Element context="autofill" type="content" key="AT.FieldTitleContador"]
            </p>
            <div id="countdown" class="countdown" aria-label="Tiempo restante">
              <dl class="countdown-unit">
                <dt><span class="dia_digito1">0</span><span class="dia_digito2">0</span></dt>
                <dd>DÍA</dd>
              </dl>
              <span class="countdown-separator" aria-hidden="true">:</span>
              <dl class="countdown-unit">
                <dt><span class="hora_digito1">0</span><span class="hora_digito2">0</span></dt>
                <dd>HORAS</dd>
              </dl>
              <span class="countdown-separator" aria-hidden="true">:</span>
              <dl class="countdown-unit">
                <dt><span class="minuto_digito1">0</span><span class="minuto_digito2">0</span></dt>
                <dd>MIN</dd>
              </dl>
              <span class="countdown-separator countdown-seconds" aria-hidden="true">:</span>
              <dl class="countdown-unit countdown-seconds">
                <dt><span class="segundo_digito1">0</span><span class="segundo_digito2">0</span></dt>
                <dd>SEG</dd>
              </dl>
            </div>
          </div>
        </div>
      </section>

      <section class="swiper-slide offer-panel" aria-label="Featured offer">
        <div class="offer-panel__content">
          <div class="offer-image">
            [Element context="autofill" type="content" key="AT.FieldOfferImage" htmlencode="false"]
          </div>
          <div class="offer-copy">
            <strong>[Element context="autofill" type="content" key="AT.FieldOfferTitle"]</strong>
            <span>[Element context="autofill" type="content" key="AT.FieldDescription"]</span>
          </div>
          [Plugin:NotEquals text1="" text2="[Element context="autofill" type="content" key="AT.FieldLinkText"]"]
            <a href="[Element context='autofill' type='content' key='AT.FieldLink']" target="_blank" rel="noopener noreferrer" class="view_more_btn">
              [Element context="autofill" type="content" key="AT.FieldLinkText"]
            </a>
          [/Plugin:NotEquals]
        </div>
      </section>
    </div>
    <div class="swiper-pagination" aria-label="Slide navigation"></div>
  </div>

  [IfEditMode][Component name="claro-diseno-pe/cmp-edicion-linea/fixed-inline-edit-list"][/IfEditMode]
  <button class="closeElement" type="button" aria-label="Cerrar banner">
    <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
      <path d="M17 1L1 17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
      <path d="M1 1L17 17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
    </svg>
  </button>
</div>

<style>
  #banner_cintillo {
    --countdown-bg-color: [Element context="autofill" type="content" key="AT.ColorBg"];
    --countdown-text-color: [Element context="autofill" type="content" key="AT.ColorText"];
    --countdown-btn-bg-color: [Element context="autofill" type="content" key="AT.ColorBgBtn"];
    --countdown-btn-text-color: [Element context="autofill" type="content" key="AT.ColorTextBtn"];
    --countdown-close-color: [Element context="autofill" type="content" key="AT.ColorBtnClose"];
    position: relative;
    min-height: 140px;
    overflow: hidden;
    background: var(--countdown-bg-color);
    color: var(--countdown-text-color);
    font-family: Arial, sans-serif;
  }
  #banner_cintillo .promotional-strip-swiper { position: relative; width: 100%; overflow: hidden; }
  #banner_cintillo .promotional-strip-panels { display: flex; width: 200%; }
  #banner_cintillo .campaign-panel, #banner_cintillo .offer-panel { position: relative; box-sizing: border-box; width: 50%; min-height: 140px; flex: 0 0 50%; }
  #banner_cintillo .campaign-background { position: absolute; inset: 0; z-index: 0; overflow: hidden; }
  #banner_cintillo .campaign-background img { width: 100%; height: 100%; object-fit: cover; }
  #banner_cintillo .campaign-panel__content, #banner_cintillo .offer-panel__content { position: relative; z-index: 1; display: flex; align-items: center; justify-content: center; gap: 28px; width: min(1000px, 94%); min-height: 140px; margin: auto; }
  #banner_cintillo .campaign-brand { display: flex; align-items: center; gap: 14px; }
  #banner_cintillo .logo_banner img { display: block; max-width: 82px; max-height: 30px; }
  #banner_cintillo .campaign-label { margin: 0; font-size: 18px; font-weight: 700; }
  #banner_cintillo .campaign-label--last-hours { display: none; }
  #banner_cintillo[data-campaign-phase="last-hours"] .campaign-label--default { display: none; }
  #banner_cintillo[data-campaign-phase="last-hours"] .campaign-label--last-hours { display: block; }
  #banner_cintillo .countdown_section { display: flex; align-items: center; gap: 14px; }
  #banner_cintillo .countdown { display: flex; align-items: center; }
  #banner_cintillo .countdown-unit { display: flex; align-items: end; margin: 0; }
  #banner_cintillo .countdown-unit dt { font-size: 36px; line-height: 1; font-weight: 900; }
  #banner_cintillo .countdown-unit dd { margin: 0 0 2px 4px; font-size: 7px; font-weight: 700; }
  #banner_cintillo .countdown-separator { margin: 0 9px; font-size: 25px; font-weight: 900; }
  #banner_cintillo .offer-panel__content { gap: 22px; }
  #banner_cintillo .offer-image { width: 143px; height: 105px; flex: 0 0 143px; }
  #banner_cintillo .offer-image img { width: 100%; height: 100%; object-fit: contain; }
  #banner_cintillo .offer-copy { display: flex; flex-direction: column; gap: 6px; color: var(--countdown-text-color); }
  #banner_cintillo .offer-copy strong { font-size: 22px; }
  #banner_cintillo .offer-copy span { font-size: 16px; }
  #banner_cintillo .view_more_btn { padding: 12px 18px; border-radius: 22px; background: var(--countdown-btn-bg-color); color: var(--countdown-btn-text-color); font-weight: 700; text-decoration: none; white-space: nowrap; }
  #banner_cintillo .view_more_btn:hover { filter: brightness(.75); }
  #banner_cintillo .closeElement { position: absolute; top: 0; right: 18px; z-index: 3; display: flex; align-items: center; height: 100%; border: 0; padding: 0; background: transparent; color: var(--countdown-close-color); cursor: pointer; }
  #banner_cintillo .swiper-pagination { display: none; }
  #banner_cintillo.sticky { position: fixed; top: 55px; right: 0; left: 0; z-index: 10; }
  @media (max-width: 768px) {
    #banner_cintillo { min-height: 118px; }
    #banner_cintillo .promotional-strip-panels { transition: transform .5s ease; }
    #banner_cintillo .campaign-panel, #banner_cintillo .offer-panel { min-height: 118px; }
    #banner_cintillo .campaign-panel__content, #banner_cintillo .offer-panel__content { min-height: 118px; gap: 10px; width: calc(100% - 42px); }
    #banner_cintillo .campaign-brand { flex-direction: column; gap: 4px; }
    #banner_cintillo .campaign-label { font-size: 11px; text-align: center; }
    #banner_cintillo .countdown_section { flex-direction: column; gap: 3px; }
    #banner_cintillo .countdown-unit dt { font-size: 24px; }
    #banner_cintillo .countdown-unit dd { font-size: 5px; }
    #banner_cintillo .countdown-separator { margin: 0 5px; font-size: 18px; }
    #banner_cintillo .offer-panel__content { justify-content: flex-start; padding: 0 20px; }
    #banner_cintillo .offer-image { width: 90px; height: 76px; flex-basis: 90px; }
    #banner_cintillo .offer-copy strong { font-size: 15px; }
    #banner_cintillo .offer-copy span { font-size: 12px; }
    #banner_cintillo .view_more_btn { padding: 9px 12px; font-size: 11px; }
    #banner_cintillo .swiper-pagination { position: absolute; right: 0; bottom: 7px; left: 0; z-index: 2; display: flex; justify-content: center; gap: 5px; }
    #banner_cintillo .swiper-pagination button { width: 7px; height: 7px; border: 0; border-radius: 50%; padding: 0; background: rgba(255,255,255,.5); cursor: pointer; }
    #banner_cintillo .swiper-pagination button[aria-current="true"] { background: var(--countdown-text-color); }
    #banner_cintillo .closeElement { right: 8px; }
    #banner_cintillo.sticky { top: 50px; }
  }
  @media (prefers-reduced-motion: reduce) { #banner_cintillo .promotional-strip-panels { transition: none; } }
</style>

<script>
(function () {
  var banner = document.getElementById('banner_cintillo');
  if (!banner) return;
  var maxTransitionDelay = 60000;
  var mobileLayout = window.matchMedia('(max-width: 768px)');
  var reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
  var wrapper = banner.querySelector('.promotional-strip-panels');
  var pagination = banner.querySelector('.swiper-pagination');
  var interval = null, transition = null, carousel = null, closed = false, slide = 0, touchStart = null;
  var init = parseCmsDate(banner.getAttribute('data-date-init'));
  var end = parseCmsDate(banner.getAttribute('data-date-end'));
  var campaignEnd = parseCmsDate(banner.getAttribute('data-date-campaign-end'));

  function parseCmsDate(value) {
    if (typeof value !== 'string') return null;
    var match = value.trim().match(/^([A-Za-z]+) (\d{1,2}), (\d{4}), (\d{1,2}):(\d{2}):(\d{2}) ([AP]M)(?: .*)?$/);
    if (!match) return null;
    var months = { Jan:0, Feb:1, Mar:2, Apr:3, May:4, Jun:5, Jul:6, Aug:7, Sep:8, Oct:9, Nov:10, Dec:11, Ene:0, Abr:3, Ago:7, Set:8, Dic:11 };
    var month = months[match[1].slice(0, 3)], day = +match[2], year = +match[3], hour = +match[4], minute = +match[5], second = +match[6];
    if (typeof month === 'undefined' || day < 1 || day > new Date(Date.UTC(year, month + 1, 0)).getUTCDate() || hour < 1 || hour > 12 || minute > 59 || second > 59) return null;
    if (match[7] === 'PM' && hour !== 12) hour += 12;
    if (match[7] === 'AM' && hour === 12) hour = 0;
    return new Date(Date.UTC(year, month, day, hour + 5, minute, second));
  }
  function setDigits(target) {
    var value = String(Math.max(0, target)).padStart(2, '0');
    return [value.charAt(0), value.charAt(1)];
  }
  function updateCountdown(target) {
    var distance = target.getTime() - Date.now();
    var values = distance <= 0 ? [0, 0, 0, 0] : [Math.floor(distance / 86400000), Math.floor(distance % 86400000 / 3600000), Math.floor(distance % 3600000 / 60000), Math.floor(distance % 60000 / 1000)];
    var names = ['dia', 'hora', 'minuto', 'segundo'];
    names.forEach(function (name, index) { var digits = setDigits(values[index]); banner.querySelector('.' + name + '_digito1').textContent = digits[0]; banner.querySelector('.' + name + '_digito2').textContent = digits[1]; });
    return distance > 0;
  }
  function clearTimers() { if (interval !== null) { clearInterval(interval); interval = null; } if (transition !== null) { clearTimeout(transition); transition = null; } }
  function schedule(date, callback) { function check() { if (closed) return; var remaining = date.getTime() - Date.now(); if (remaining <= 0) callback(); else transition = setTimeout(check, Math.min(remaining, maxTransitionDelay)); } check(); }
  function renderPagination() {
    if (!pagination) return;
    pagination.innerHTML = '';
    [0, 1].forEach(function (index) { var button = document.createElement('button'); button.type = 'button'; button.setAttribute('aria-label', 'Ir a la diapositiva ' + (index + 1)); button.setAttribute('aria-current', index === slide ? 'true' : 'false'); button.addEventListener('click', function () { setSlide(index); }); pagination.appendChild(button); });
  }
  function setSlide(index) { slide = index; if (wrapper && mobileLayout.matches) wrapper.style.transform = 'translateX(-' + (index * 50) + '%)'; renderPagination(); }
  function syncMobile() { if (mobileLayout.matches) { setSlide(slide); } else if (wrapper) { wrapper.style.transform = ''; } }
  function startMobileInteraction() { if (reducedMotion.matches) return; carousel = setInterval(function () { if (!closed && mobileLayout.matches) setSlide(slide === 0 ? 1 : 0); }, 5000); }
  function reveal() { banner.style.removeProperty('display'); window.requestAnimationFrame(syncMobile); }
  function hide() { banner.style.display = 'none'; }
  function syncState() {
    if (closed) return;
    clearTimers();
    var now = new Date();
    if (now < init) { hide(); schedule(init, syncState); return; }
    if (now < end) { banner.dataset.campaignPhase = 'countdown'; reveal(); interval = setInterval(function () { if (!updateCountdown(end)) syncState(); }, 1000); updateCountdown(end); schedule(end, syncState); return; }
    if (now < campaignEnd) { banner.dataset.campaignPhase = 'last-hours'; reveal(); interval = setInterval(function () { if (!updateCountdown(campaignEnd)) syncState(); }, 1000); updateCountdown(campaignEnd); schedule(campaignEnd, syncState); return; }
    hide();
  }

  renderPagination();
  mobileLayout.addEventListener('change', syncMobile);
  if (wrapper) { wrapper.addEventListener('touchstart', function (event) { touchStart = event.touches[0].clientX; }, { passive: true }); wrapper.addEventListener('touchend', function (event) { if (touchStart === null || !mobileLayout.matches) return; var delta = event.changedTouches[0].clientX - touchStart; if (Math.abs(delta) > 30) setSlide(delta < 0 ? 1 : 0); touchStart = null; }, { passive: true }); }
  window.addEventListener('scroll', function () { banner.classList.toggle('sticky', window.scrollY > (mobileLayout.matches ? 70 : 100)); });
  banner.querySelector('.closeElement').addEventListener('click', function () { closed = true; clearTimers(); if (carousel !== null) { clearInterval(carousel); carousel = null; } mobileLayout.removeEventListener('change', syncMobile); banner.remove(); });
  if (init && end && campaignEnd && init < end && end < campaignEnd) { syncState(); startMobileInteraction(); } else { hide(); }
}());
</script>
[/Plugin:ifInRange]
