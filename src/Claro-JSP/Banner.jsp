[Plugin:ifInRange from="[PageInfo value='firstItemOnPage']"]
<link rel="stylesheet" href="https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/index.VUrfxw-z.css">
<div
  class="w-full relative py-7 overflow-hidden"
  id="banner_cintillo"
  data-date-init="[Element context='autofill' type='content' key='AT.FieldDate']"
  data-date-end="[Element context='autofill' type='content' key='AT.FieldDateEnd']"
  style="display: none;"
>
  <picture class="w-full h-full object-cover absolute top-0 left-0 z-0 bg_banner">
    [Element context="autofill" type="content" key="AT.FieldBackground" htmlencode="false"]
  </picture>
  <div class="w-full max-w-[1240px] mx-auto flex justify-center sm:w-[96%] relative">
    [Plugin:NoEquals text1="" text2="[Element context="autofill" type="content" key="AT.FieldBackground"]"]
    [Plugin:EndNoEquals]
    [IfEditMode][Component name="claro-diseno-pe/cmp-edicion-linea/fixed-inline-edit-list"][/IfEditMode]
    <div class="w-full max-w-[1000px] flex gap-4 md:gap-10 justify-center items-center relative z-10">
      <!-- Header con logo -->
      <div class="flex grow-0">
        <picture class="block h-auto self-center max-w-[80px] md:max-w-[140px]">
          [Element context="autofill" type="content" key="AT.FieldImage" htmlencode="false"]
        </picture>
      </div>

      <!-- Sección del Cintillo contador -->
      <div class="flex justify-center md:mx-auto items-center flex-col md:flex-row countdown_section">
        <div class="pr-5 md:pr-[15px] max-sm:pr-0 max-sm:mx-auto max-sm:mb-[4.5px] max-sm:pl-2.5">
          <h3 class="font-amx-regular text-sm md:text-lg leading-none">
            [Element context="autofill" type="content" key="AT.FieldDescription"]
          </h3>
        </div>

        <div class="flex flex-wrap h-fit pt-1 md:pt-0" id="countdown">
          <!-- Days -->
          <dl class="flex flex-wrap h-fit">
            <dt data-top="DÍA"
              class="flex flex-wrap relative h-fit after:content-[attr(data-top)] after:font-amx-regular after:text-[6px] after:block after:pt-2.5 after:pl-0.5 after:-mr-1.5  max-sm:after:pt-0 max-sm:after:mt-0 max-sm:after:text-[5px] max-sm:after:-mr-3">
              <h4 class="font-amx-black text-[22px] leading-normal h-fit md:text-[36px] max-sm:leading-[25px]">
                <span class="dia_digito1"></span><span class="dia_digito2"></span>
              </h4>
            </dt>
            <dd class="mx-[5px] h-fit max-sm:mx-1.5">
              <h4
                class="font-amx-black text-[25px] text-white leading-[47px] md:text-lg max-sm:text-lg max-sm:leading-[25px]">
                :</h4>
            </dd>
          </dl>

          <!-- Hours -->
          <dl class="flex flex-wrap h-fit">
            <dt data-top="HORAS"
              class="flex flex-wrap relative h-fit after:content-[attr(data-top)] after:font-amx-regular after:text-[6px] after:block after:pt-2.5 after:pl-0.5 after:-mr-1.5  max-sm:after:pt-0 max-sm:after:mt-0 max-sm:after:text-[5px] max-sm:after:-mr-3">
              <h4 class="font-amx-black text-[22px] leading-normal h-fit md:text-[36px] max-sm:leading-[25px]">
                <span class="hora_digito1"></span><span class="hora_digito2"></span>
              </h4>
            </dt>
            <dd class="mx-[5px] h-fit max-sm:mx-1.5">
              <h4
                class="font-amx-black text-[25px] text-white leading-[47px] md:text-lg max-sm:text-lg max-sm:leading-[25px]">
                :</h4>
            </dd>
          </dl>

          <!-- Minutes -->
          <dl class="flex flex-wrap h-fit">
            <dt data-top="MIN"
              class="flex flex-wrap relative h-fit after:content-[attr(data-top)] after:font-amx-regular after:text-[6px] after:block after:pt-2.5 after:pl-0.5 after:-mr-1.5  max-sm:after:pt-0 max-sm:after:mt-0 max-sm:after:text-[5px] max-sm:after:-mr-3">
              <h4 class="font-amx-black text-[22px] leading-normal h-fit md:text-[36px] max-sm:leading-[25px]">
                <span class="minuto_digito1"></span><span class="minuto_digito2"></span>
              </h4>
            </dt>
            <dd class="mx-[5px] h-fit max-sm:mx-1.5">
              <h4
                class="font-amx-black text-[25px] text-white leading-[47px] md:text-lg max-sm:text-lg max-sm:leading-[25px]">
                :</h4>
            </dd>
          </dl>

          <!-- Seconds -->
          <dl class="flex-wrap h-fit hidden md:flex">
            <dt data-top="SEG"
              class="flex flex-wrap relative h-fit after:content-[attr(data-top)] after:font-amx-regular after:text-[6px] after:block after:pt-2.5 after:pl-0.5 after:-mr-1.5  max-sm:after:pt-0 max-sm:after:mt-0 max-sm:after:text-[5px] max-sm:after:-mr-3">
              <h4 class="font-amx-black text-[22px] leading-normal h-fit md:text-[36px] max-sm:leading-[25px]">
                <span class="segundo_digito1"></span><span class="segundo_digito2"></span>
              </h4>
            </dt>
          </dl>
        </div>
      </div>
      <!-- Fin Cintillo contador -->

      <!-- Contenido de Cintillo Cyber -->
      <div class="flex justify-center md:mx-auto items-center flex-col md:flex-row cyber_section">
        <p class="text-sm md:text-lg xl:text-xl font-amx-medium">[Element context="autofill" type="content" key="AT.FieldDescription"]</p>
      </div>
      <!-- Fin Contenido de Cintillo Cyber -->

      <!-- Botón de ver más -->
      <div class="grow-0 flex lg:pl-[1%] md:pr-[5%]">
        <a href="[Element context='autofill' type='content' key='AT.FieldLink']" target="_blank"
          class="font-roboto font-bold text-[16px] leading-10 table rounded-[20px] self-center px-4 md:text-[15px] md:leading-9 max-sm:text-[11px] max-sm:px-2.5 max-sm:leading-[30px] view_more_btn">
          <span class="table-cell">[Element context="autofill" type="content" key="AT.FieldLinkText"]</span>
        </a>
      </div>

      <!-- Botón de cierre -->
      <a
        class="absolute top-0 right-1 h-full flex justify-center items-center z-2 cursor-pointer lg:-right-[4%] md:right-0 closeElement">
        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M17 1L1 17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          </path>
          <path d="M1 1L17 17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          </path>
        </svg>
      </a>
    </div>
  </div>
</div>

<style>
  #banner_cintillo{
    --countdown-bg-color: [Element context="autofill" type="content" key="AT.ColorBg"];
    --countdown-text-color: [Element context="autofill" type="content" key="AT.ColorText"];
    --countdown-btn-bg-color: [Element context="autofill" type="content" key="AT.ColorBgBtn"];
    --countdown-btn-text-color: [Element context="autofill" type="content" key="AT.ColorTextBtn"];
    --countdown-close-color: [Element context="autofill" type="content" key="AT.ColorBtnClose"];
    --countdown-btn-bg-color-hover: color-mix(in srgb, var(--countdown-btn-bg-color), black 30%);
    background-color: var(--countdown-bg-color);
  }
  .toolbar-opened .stControlBody #banner_cintillo{
		display: block !important;
	}
	.headerEv+.wrapper {
		padding-top: 88px;
	}

	@media (min-width: 1024px) {
		.headerEv+.wrapper {
			padding-top: 96px;
		}
	}
	#banner_cintillo .countdown_section{
		& h3{
			color: var(--countdown-text-color);
		}
		& h4{
			color: var(--countdown-text-color);
		}
	}
  #banner_cintillo .bg_banner img{
		width: 100%;
		height: 100%;
		object-fit: fill;
	}
	#banner_cintillo .cyber_section{
		& p{
			color: var(--countdown-text-color);
		}
	}
	#banner_cintillo .view_more_btn{
		background-color: var(--countdown-btn-bg-color);
		color: var(--countdown-btn-text-color);
		transition: all 0.3s ease-in-out;
		&:hover{
			background-color: var(--countdown-btn-bg-color-hover);
		}
	}
	#banner_cintillo .closeElement{
		color: var(--countdown-close-color);
	}
	#banner_cintillo.sticky {
		position: fixed;
		top: 55px;
		right: 0;
		left: 0;
		z-index: 10;
	}

	@media screen and (max-width: 820px) {
		#banner_cintillo.sticky {
			top: 50px;
		}
	}

	@media screen and (max-width: 660px) {
		#countdown {
			padding-top: 0px;
			height: 30px;
		}

		#banner_cintillo {
			padding: 10px 0;
		}
	}

	@media screen and (max-width: 540px) {
		#banner_cintillo {
			padding: 8px 0;
		}
	}
  .headerEv .hdMainLeft .logo img{
		max-width: fit-content;
	}
</style>
<script>
  [Plugin:Equals text1="Contador" text2="[Element context="autofill" type="content" key="AT.TypeCampaing"]"]
    window.CONTADOR_ACTIVO = true;
  [/Plugin:Equals]
  [Plugin:Equals text1="Cyber" text2="[Element context="autofill" type="content" key="AT.TypeCampaing"]"]
    window.CONTADOR_ACTIVO = false;
  [/Plugin:Equals]
</script>

<script type="module">function C(e){const o=e.match(/([A-Za-z]+) (\d{1,2}), (\d{4}), (\d{1,2}):(\d{2}):(\d{2}) ([AP]M)/);if(!o){console.error("Fecha inválida (formato no reconocido):",e);const m=new Date(e);return isNaN(m)?null:m}const[,t,i,c,r,s,d,a]=o,u={Jan:0,Feb:1,Mar:2,Apr:3,May:4,Jun:5,Jul:6,Aug:7,Sep:8,Oct:9,Nov:10,Dec:11,Ene:0,Abr:3,Ago:7,Set:8,Dic:11}[t.slice(0,3)];if(typeof u>"u")return console.error("Mes inválido:",t),null;let l=parseInt(r,10);return a==="PM"&&l!==12&&(l+=12),a==="AM"&&l===12&&(l=0),new Date(Date.UTC(parseInt(c,10),u,parseInt(i,10),l+5,parseInt(s,10),parseInt(d,10)))}function f(e){const o=e.toString().padStart(2,"0");return[o[0],o[1]]}function h(e){const o=new Date().getTime(),t=e.getTime()-o;if(t<0)return document.querySelector(".dia_digito1").textContent="0",document.querySelector(".dia_digito2").textContent="0",document.querySelector(".hora_digito1").textContent="0",document.querySelector(".hora_digito2").textContent="0",document.querySelector(".minuto_digito1").textContent="0",document.querySelector(".minuto_digito2").textContent="0",document.querySelector(".segundo_digito1").textContent="0",document.querySelector(".segundo_digito2").textContent="0",!1;const i=Math.floor(t/(1e3*60*60*24)),c=Math.floor(t%(1e3*60*60*24)/(1e3*60*60)),r=Math.floor(t%(1e3*60*60)/(1e3*60)),s=Math.floor(t%(1e3*60)/1e3),[d,a]=f(i),[y,u]=f(c),[l,S]=f(r),[m,p]=f(s);return document.querySelector(".dia_digito1").textContent=d,document.querySelector(".dia_digito2").textContent=a,document.querySelector(".hora_digito1").textContent=y,document.querySelector(".hora_digito2").textContent=u,document.querySelector(".minuto_digito1").textContent=l,document.querySelector(".minuto_digito2").textContent=S,document.querySelector(".segundo_digito1").textContent=m,document.querySelector(".segundo_digito2").textContent=p,!0}function q(e){h(e);const o=setInterval(function(){h(e)||clearInterval(o)},1e3);return o}const x=typeof window.CONTADOR_ACTIVO<"u"&&window.CONTADOR_ACTIVO,D=100,A=70,n=document.querySelector("#banner_cintillo"),g=n.querySelector(".countdown_section"),_=n.querySelector(".cyber_section"),w=n.querySelector(".closeElement");x?(g?.classList.remove("hidden"),_?.classList.add("hidden")):(g?.classList.add("hidden"),_?.classList.remove("hidden"));if(!n)console.error("Banner cintillo no encontrado");else{const e=n.getAttribute("data-date-init"),o=n.getAttribute("data-date-end"),t=new Date,i=C(e);console.log({dateInit:i}),console.log(i.toLocaleString());const c=C(o);console.log({dateEnd:c}),console.log(c.toLocaleString());let r,s=!1;const d=typeof window.IS_DEVELOP<"u"&&window.IS_DEVELOP;console.log({isDevelopMode:d}),t<i?(r=i,s=d):t>=i&&t<c?(r=c,s=!0):(r=c,s=d),s&&r?(n.removeAttribute("style"),g&&q(r)):n.style.display="none";const a=window.matchMedia("(max-width: 541px)").matches?A:D;window.addEventListener("scroll",function(){window.scrollY>a?n?.classList.add("sticky"):n?.classList.remove("sticky")}),w&&w.addEventListener("click",function(){n?.remove()})}</script>

[/Plugin:ifInRange]