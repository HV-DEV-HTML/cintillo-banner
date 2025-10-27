[Plugin:ifInRange from="[PageInfo value='firstItemOnPage']"]
<link rel="stylesheet" href="https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/index.CRkwAt9L.css">
<div
  class="w-full relative py-7 overflow-hidden"
  id="banner_cintillo"
  data-date-init="[Element context='autofill' type='content' key='AT.FieldDate']"
  data-date-end="[Element context='autofill' type='content' key='AT.FieldDateEnd']"
  style="display: none;"
>
  [Plugin:NotEquals text1="" text2="[Element context="autofill" type="content" key="AT.FieldBackground"]"]
    <picture class="w-full h-full object-cover absolute top-0 left-0 z-0 bg_banner">
      [Element context="autofill" type="content" key="AT.FieldBackground" htmlencode="false"]
    </picture>
  [/Plugin:NotEquals]
  <div class="w-full max-w-[1240px] mx-auto flex justify-center sm:w-[96%] relative">
    [IfEditMode][Component name="claro-diseno-pe/cmp-edicion-linea/fixed-inline-edit-list"][/IfEditMode]
    <div class="w-full max-w-[1000px] flex gap-4 md:gap-10 justify-center items-center relative z-10">
      <!-- Header con logo -->
      <div class="grow-0 hidden md:flex logo_banner">
        <picture class="block h-auto self-center max-w-[74px] md:max-w-[140px]">
          [Element context="autofill" type="content" key="AT.FieldImage" htmlencode="false"]
        </picture>
      </div>

      <!-- Sección del Cintillo contador -->
      <div class="flex justify-center md:mx-auto items-center flex-col md:flex-row countdown_section">
        <div class="pr-5 md:pr-[15px] max-sm:pr-0 max-sm:mx-auto max-sm:mb-[4.5px] max-sm:pl-2.5">
          <h3 class="font-amx-regular text-sm md:text-lg leading-none">
            [Element context="autofill" type="content" key="AT.FieldTitleContador"]
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
      <div class="flex justify-center max-w-[224px] md:max-w-fit md:mx-auto items-center flex-col md:flex-row cyber_section">
        <p class="text-sm md:text-lg xl:text-xl font-roboto font-medium">[Element context="autofill" type="content" key="AT.FieldDescription"]</p>
      </div>
      <!-- Fin Contenido de Cintillo Cyber -->

      <!-- Botón de ver más -->
      [Plugin:NotEquals text1="" text2="[Element context="autofill" type="content" key="AT.FieldLinkText"]"]
        <div class="grow-0 flex lg:pl-[1%] md:pr-[5%]">
          <a href="[Element context='autofill' type='content' key='AT.FieldLink']" target="_blank"
            class="font-roboto font-bold text-[12px] py-3 px-4 rounded-[20px] self-center view_more_btn">
            <span class="table-cell">[Element context="autofill" type="content" key="AT.FieldLinkText"]</span>
          </a>
        </div>
      [/Plugin:NotEquals]
      <!-- Botón de cierre -->
      <button
					class="absolute -top-6 md:top-0 right-1 h-full flex justify-center items-center z-2 cursor-pointer lg:-right-[4%] md:right-0 closeElement">
					<svg class="size-4 lg:size-5" width="18" height="18" viewBox="0 0 18 18" fill="none"
						xmlns="http://www.w3.org/2000/svg">
						<path d="M17 1L1 17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
						</path>
						<path d="M1 1L17 17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
						</path>
					</svg>
      </button>
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
  #banner_cintillo .inlineEditToolbar{
		max-width: 200px !important;
	}
	#banner_cintillo .countdown_section{
		& h3{
			color: var(--countdown-text-color);
		}
		& h4{
			color: var(--countdown-text-color);
		}
    & dt::after{
			color: var(--countdown-text-color);
		}
	}
  #banner_cintillo .bg_banner img{
		width: 100%;
		height: 100%;
		object-fit: cover;
		@media (min-width: 1024px) {
			object-fit: fill;
		}
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
  [Plugin:Equals text1="Si" text2="[Element context="autofill" type="content" key="AT.ShowAfterFinished"]"]
    window.SHOWCYBERTOFINISHED = true;
  [/Plugin:Equals]
</script>

<script type="module">function w(i){const t=i.match(/([A-Za-z]+) (\d{1,2}), (\d{4}), (\d{1,2}):(\d{2}):(\d{2}) ([AP]M)/);if(!t){console.error("Fecha inválida (formato no reconocido):",i);const y=new Date(i);return isNaN(y)?null:y}const[,o,n,s,c,r,l,m]=t,g={Jan:0,Feb:1,Mar:2,Apr:3,May:4,Jun:5,Jul:6,Aug:7,Sep:8,Oct:9,Nov:10,Dec:11,Ene:0,Abr:3,Ago:7,Set:8,Dic:11}[o.slice(0,3)];if(typeof g>"u")return console.error("Mes inválido:",o),null;let a=parseInt(c,10);return m==="PM"&&a!==12&&(a+=12),m==="AM"&&a===12&&(a=0),new Date(Date.UTC(parseInt(s,10),g,parseInt(n,10),a+5,parseInt(r,10),parseInt(l,10)))}function h(i){const t=i.toString().padStart(2,"0");return[t[0],t[1]]}function _(i){const t=new Date().getTime(),o=i.getTime()-t;if(o<0)return document.querySelector(".dia_digito1").textContent="0",document.querySelector(".dia_digito2").textContent="0",document.querySelector(".hora_digito1").textContent="0",document.querySelector(".hora_digito2").textContent="0",document.querySelector(".minuto_digito1").textContent="0",document.querySelector(".minuto_digito2").textContent="0",document.querySelector(".segundo_digito1").textContent="0",document.querySelector(".segundo_digito2").textContent="0",!1;const n=Math.floor(o/(1e3*60*60*24)),s=Math.floor(o%(1e3*60*60*24)/(1e3*60*60)),c=Math.floor(o%(1e3*60*60)/(1e3*60)),r=Math.floor(o%(1e3*60)/1e3),[l,m]=h(n),[S,g]=h(s),[a,L]=h(c),[y,q]=h(r);return document.querySelector(".dia_digito1").textContent=l,document.querySelector(".dia_digito2").textContent=m,document.querySelector(".hora_digito1").textContent=S,document.querySelector(".hora_digito2").textContent=g,document.querySelector(".minuto_digito1").textContent=a,document.querySelector(".minuto_digito2").textContent=L,document.querySelector(".segundo_digito1").textContent=y,document.querySelector(".segundo_digito2").textContent=q,!0}function p(i,t){!_(i)&&typeof t=="function"&&t();const n=setInterval(function(){_(i)||(clearInterval(n),typeof t=="function"&&t())},1e3);return n}const x=typeof window.CONTADOR_ACTIVO<"u"&&window.CONTADOR_ACTIVO,C=typeof window.SHOWCYBERTOFINISHED<"u"&&window.SHOWCYBERTOFINISHED,I=100,D=70,e=document.querySelector("#banner_cintillo"),d=e.querySelector(".logo_banner"),u=e.querySelector(".countdown_section"),f=e.querySelector(".cyber_section"),v=e.querySelector(".closeElement");x?(u?.classList.remove("hidden"),f?.classList.add("hidden"),d?.classList.remove("hidden"),d?.classList.add("flex")):(e.classList.add("cyber"),u?.classList.add("hidden"),f?.classList.remove("hidden"),d?.classList.add("hidden"),d?.classList.remove("flex"));if(!e)console.error("Banner cintillo no encontrado");else{const i=e.getAttribute("data-date-init"),t=e.getAttribute("data-date-end"),o=new Date,n=w(i);console.log({dateInit:n}),console.log(n.toLocaleString());const s=w(t);console.log({dateEnd:s}),console.log(s.toLocaleString());let c,r=!1;const l=typeof window.IS_DEVELOP<"u"&&window.IS_DEVELOP;if(console.log({isDevelopMode:l}),o<n){c=n,r=l;const S=n.getTime()-o.getTime();setTimeout(()=>{e.removeAttribute("style"),x&&(u?.classList.remove("hidden"),f?.classList.add("hidden"),d?.classList.remove("hidden"),d?.classList.add("flex")),u&&p(s,()=>{C&&(e.classList.add("cyber"),u?.classList.add("hidden"),f?.classList.remove("hidden"),d?.classList.add("hidden"),d?.classList.remove("flex"))})},S)}else o>=n&&o<s?(c=s,r=!0):(c=s,r=l,C&&!l&&(r=C));r&&c?(e.removeAttribute("style"),u&&p(c,()=>{C&&(e.classList.add("cyber"),u?.classList.add("hidden"),f?.classList.remove("hidden"),d?.classList.add("hidden"),d?.classList.remove("flex"))})):e.style.display="none";const m=window.matchMedia("(max-width: 541px)").matches?D:I;window.addEventListener("scroll",function(){window.scrollY>m?e?.classList.add("sticky"):e?.classList.remove("sticky")}),v&&v.addEventListener("click",function(){e?.remove()})}</script>

[/Plugin:ifInRange]