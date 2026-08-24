[Plugin:ifInRange from="[PageInfo value='firstItemOnPage']"]
<!-- Existing project asset reference; all component-critical styles are kept inline below. -->
<link rel="stylesheet" href="https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/index.BH4JZYC6.css">
<link rel="stylesheet" href="https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/index.BydG3LBI.css">
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
    --offer-panel-color: [Element context="autofill" type="content" key="AT.ColorBg"];
    --offer-text-color: [Element context="autofill" type="content" key="AT.ColorText"];
    --countdown-btn-bg-color: [Element context="autofill" type="content" key="AT.ColorBgBtn"];
    --countdown-btn-text-color: [Element context="autofill" type="content" key="AT.ColorTextBtn"];
    --countdown-btn-hover-bg-color: [Element context="autofill" type="content" key="AT.ColorBgBtnHover"];
    --countdown-btn-hover-text-color: [Element context="autofill" type="content" key="AT.ColorTextBtnHover"];
    --countdown-close-color: [Element context="autofill" type="content" key="AT.ColorBtnClose"];
    position: relative;
    overflow: hidden;
    background: var(--countdown-bg-color);
    color: var(--countdown-text-color);
    font-family: Arial, sans-serif;
  }
</style>

<script type="module"
	src="https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/index.astro_astro_type_script_index_0_lang.BWOboCRH.js"></script>
[/Plugin:ifInRange]
