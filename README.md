# Banner Cintillo - Contador de Campaña

Banner dinámico con contador regresivo para campañas de marketing en el sitio web de Claro Perú. Soporta dos modos: **Contador** (con cuenta regresiva) y **Cyber** (contenido estático).

## 📋 Tabla de Contenidos

- [Características](#-características)
- [Tecnologías](#-tecnologías)
- [Estructura del Proyecto](#-estructura-del-proyecto)
- [Instalación](#-instalación)
- [Comandos](#-comandos)
- [Configuración](#-configuración)
- [Uso en CMS Claro](#-uso-en-cms-claro)
- [Personalización](#-personalización)
- [Arquitectura del Código](#-arquitectura-del-código)

## ✨ Características

- ✅ **Contador regresivo dinámico** - Cuenta días, horas, minutos y segundos
- ✅ **Dos modos de campaña** - Contador o Cyber (contenido estático)
- ✅ **Responsive design** - Optimizado para desktop, tablet y móvil
- ✅ **Sticky behavior** - Se fija en la parte superior al hacer scroll
- ✅ **Personalizable vía CSS Variables** - Colores configurables desde el CMS
- ✅ **Sin dependencias externas** - JavaScript vanilla, sin jQuery
- ✅ **Optimizado para producción** - Build con Astro y Vite
- ✅ **Integración con CMS** - Archivo JSP listo para desplegar

## 🛠 Tecnologías

- **[Astro](https://astro.build/)** - Framework web moderno
- **CSS plano** - Estilos en `src/styles/global.css` (el proyecto ya no usa Tailwind)
- **TypeScript** - Tipado estático
- **JavaScript Vanilla** - Sin dependencias de librerías externas
- **Vite** - Build tool ultra-rápido

## 📁 Estructura del Proyecto

```text
cintillo-banner/
├── src/
│   ├── Claro-JSP/
│   │   ├── Cintillo.JSP            # JSP principal (diseño V1 y V2, selector en el CMS)
│   │   └── Banner.jsp              # Diseño anterior (referencia, no se modifica)
│   ├── components/
│   │   ├── BannerV1.astro          # Marcado V1 (dos paneles + Swiper en mobile)
│   │   ├── BannerV2.astro          # Marcado V2 (una sola fila)
│   │   └── DevFixtureV2.astro      # Fixture local: imita las variables CSS del JSP (solo V2)
│   ├── layouts/
│   │   └── Layout.astro            # Layout base con fuentes y estilos
│   ├── pages/
│   │   └── index.astro             # Página principal con el banner
│   ├── styles/
│   │   └── global.css              # Estilos globales y fuentes
│   └── utils/
│       └── countdown.js            # Funciones utilitarias del contador
├── dist/                           # Build de producción (generado)
├── astro.config.mjs                # Configuración de Astro
└── package.json
```

## 🚀 Instalación

1. **Clonar el repositorio**
```bash
git clone <repository-url>
cd cintillo-banner
```

2. **Instalar dependencias**
```bash
npm install
```

3. **Iniciar servidor de desarrollo**
```bash
npm run dev
```

El proyecto estará disponible en `http://localhost:4321`

## 🧞 Comandos

| Comando                   | Acción                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Instala las dependencias                         |
| `npm run dev`             | Inicia el servidor de desarrollo en `localhost:4321` |
| `npm run build`           | Construye el sitio de producción en `./dist/`    |
| `npm run preview`         | Previsualiza la construcción localmente          |

## ⚙️ Configuración

### Variables Globales

En `src/pages/index.astro` se definen las variables globales:

```javascript
window.IS_DEVELOP = true;              // Modo desarrollo (muestra banner siempre)
window.CONTADOR_ACTIVO = true;         // true: Modo Contador | false: Modo Cyber
window.SHOWCYBERTOFINISHED = true;     // true: Muestra contenido cyber al terminar el contador
```

### Configuración de Build

En `astro.config.mjs`:

```javascript
export default defineConfig({
  compressHTML: false,
  build: {
    assets: '_assets',
    assetsPrefix: 'https://www.claro.com.pe/assets/havas/banner_cintillo'
  }
});
```

## 🎨 Diseño V1 / V2 (`Cintillo.JSP`)

`src/Claro-JSP/Cintillo.JSP` es el JSP principal y contiene ambos diseños. Un selector del CMS decide cuál se renderiza:

| Campo | Key CMS | Valores |
|-------|---------|---------|
| **Diseño** | `AT.DesignVersion` | `V1` (o vacío) = dos paneles + Swiper en mobile; `V2` = fila única de 70px |

> La clave `AT.DesignVersion` debe crearse en el CMS (opción V1/V2) antes de publicar el JSP.

- El JSP escribe el valor en `data-design-version` de `#banner_cintillo`; un único script y un único CSS sirven a ambos diseños.
- V2 reutiliza los mismos campos que V1: logo (`AT.FieldImage`), "Empieza en:" (`AT.FieldTitleContador`), texto de campaña (`AT.FieldDescription`), botón (`AT.FieldLinkText` / `AT.FieldLink`), fondo (`AT.FieldBackground`), colores (`AT.ColorBgBtn`, `AT.ColorTextBtn`, `AT.ColorBgBtnHover`, `AT.ColorTextBtnHover`, `AT.ColorBtnClose`) y fechas (`AT.FieldDate`, `AT.FieldDateEnd`, `AT.FieldDateCampaignEnd`). `AT.ColorBg` / `AT.ColorText` solo afectan al panel blanco de V1.
- Fases (`data-campaign-phase`): `countdown` (hasta `AT.FieldDateEnd`) muestra "Empieza en:" + contador; `last-hours` (hasta `AT.FieldDateCampaignEnd`) muestra el texto de campaña y el botón; después el banner se oculta.
- Local: ejecuta `PUBLIC_DESIGN_VERSION=V2 npm run dev` (o define esa variable en un `.env`, ignorado por git) para previsualizar V2 en `localhost:4321`; sin la variable se ve V1. Con `V2` el fixture inyecta un `<style>` que imita las variables CSS que emite el JSP.
- Después de `npm run build`, actualiza en `Cintillo.JSP` los nombres hasheados del CSS y del JS (`index.*.css`, `index.astro_astro_type_script_index_0_lang.*.js`) y sube `dist/_assets` al hosting de Claro. El build es idéntico para V1 y V2.

## 🎯 Uso en CMS Claro

### Archivo JSP

El archivo `src/Claro-JSP/Banner.jsp` está listo para ser desplegado en el CMS de Claro. Este archivo incluye:

1. **Link al CSS compilado**
```jsp
<link rel="stylesheet" href="https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/index.VUrfxw-z.css">
```

2. **Estructura HTML con placeholders del CMS**
```jsp
[Element context="autofill" type="content" key="AT.FieldDate"]
[Element context="autofill" type="content" key="AT.FieldDateEnd"]
[Element context="autofill" type="content" key="AT.FieldDescription"]
```

3. **Script JavaScript minificado** (inline)

### Campos del CMS

El componente requiere los siguientes campos en el CMS:

#### Campos Obligatorios

| Campo | Key CMS | Descripción | Ejemplo |
|-------|---------|-------------|---------|
| **Fecha Inicio** | `AT.FieldDate` | Fecha de inicio de la campaña | `Oct 10, 2025, 12:15:00 AM Central Daylight Time` |
| **Fecha Fin** | `AT.FieldDateEnd` | Fecha de fin de la campaña | `Oct 23, 2025, 05:00:00 PM Central Daylight Time` |
| **Descripción** | `AT.FieldDescription` | Texto del banner | `Empieza en:` o `Descuentos en equipos...` |
| **Tipo de Campaña** | `AT.TypeCampaing` | Tipo: `Contador` o `Cyber` | `Contador` |

#### Campos de Diseño

| Campo | Key CMS | Descripción | Ejemplo |
|-------|---------|-------------|---------|
| **Imagen Logo** | `AT.FieldImage` | Logo de la campaña (HTML) | `<img src="..." alt="CYBER WOW">` |
| **Fondo** | `AT.FieldBackground` | Imagen de fondo (HTML) | `<img src="..." alt="background">` |
| **Link** | `AT.FieldLink` | URL del botón "Ver más" | `https://www.tiendaclaro.pe/...` |
| **Texto del Link** | `AT.FieldLinkText` | Texto del botón | `Ver más` |

#### Campos de Colores (CSS Variables)

| Campo | Key CMS | Descripción | Ejemplo |
|-------|---------|-------------|---------|
| **Color de Fondo** | `AT.ColorBg` | Color de fondo del banner | `#DA291C` |
| **Color de Texto** | `AT.ColorText` | Color del texto y números | `#FFFFFF` |
| **Color Botón** | `AT.ColorBgBtn` | Color de fondo del botón | `#DA291C` |
| **Color Texto Botón** | `AT.ColorTextBtn` | Color del texto del botón | `#FFFFFF` |
| **Color Botón Cerrar** | `AT.ColorBtnClose` | Color del ícono de cerrar | `#5f5e5e` |

### Proceso de Despliegue

1. **Build del proyecto**
```bash
npm run build
```

2. **Subir archivos al servidor**
   - Subir el contenido de `dist/_assets/` a: `https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/`

3. **Copiar el archivo JSP**
   - Copiar `src/Claro-JSP/Banner.jsp` al CMS de Claro
   - Configurar los campos en el CMS según la tabla anterior

4. **Configurar el tipo de campaña**
   - **Modo Contador**: `AT.TypeCampaing = "Contador"`
   - **Modo Cyber**: `AT.TypeCampaing = "Cyber"`

## 🎨 Personalización

### CSS Variables

El banner utiliza CSS Variables para facilitar la personalización:

```css
#banner_cintillo {
  --countdown-bg-color: #DA291C;           /* Color de fondo */
  --countdown-text-color: #FFFFFF;          /* Color de texto */
  --countdown-btn-bg-color: #DA291C;        /* Color del botón */
  --countdown-btn-text-color: #FFFFFF;      /* Color texto botón */
  --countdown-close-color: #5f5e5e;         /* Color botón cerrar */
  --countdown-btn-bg-color-hover: ...;      /* Color hover (auto) */
}
```

### Responsive Breakpoints

- **Desktop**: > 1024px
- **Tablet**: 541px - 1024px
- **Mobile**: < 541px

### Comportamiento Sticky

El banner se vuelve sticky (fijo) al hacer scroll:

- **Desktop**: Después de 100px de scroll
- **Mobile**: Después de 70px de scroll

## 🏗 Arquitectura del Código

### Módulo `countdown.js`

Contiene funciones utilitarias reutilizables:

#### `parseFechaCMS(str)`
Parsea fechas en formato CMS a objetos Date de JavaScript.

```javascript
const date = parseFechaCMS("Oct 10, 2025, 12:15:00 AM Central Daylight Time");
```

#### `splitDigits(num)`
Divide un número en dos dígitos individuales.

```javascript
const [d0, d1] = splitDigits(25); // ["2", "5"]
```

#### `updateCountdown(targetDate)`
Actualiza el DOM con los valores del contador regresivo.

```javascript
updateCountdown(new Date('2025-12-31'));
```

#### `startCountdown(targetDate, onFinish)`
Inicia el intervalo del contador y retorna el ID del intervalo. Acepta un callback opcional que se ejecuta cuando el contador llega a 0.

```javascript
const intervalId = startCountdown(targetDate, () => {
  console.log('¡Contador terminado!');
  // Ejecutar acciones al finalizar
});
```

### Lógica de Negocio (`index.astro`)

La lógica de negocio determina cuándo mostrar el banner:

```javascript
if (now < dateInit) {
  // Antes de iniciar - Solo visible en modo desarrollo
  targetDate = dateInit;
  shouldShow = isDevelopMode;
} else if (now >= dateInit && now < dateEnd) {
  // En curso - Visible para todos
  targetDate = dateEnd;
  shouldShow = true;
} else {
  // Terminó - Solo visible en modo desarrollo
  targetDate = dateEnd;
  shouldShow = isDevelopMode;
}
```

### Modos de Campaña

#### Modo Contador (`CONTADOR_ACTIVO = true`)
- Muestra el contador regresivo
- Oculta el contenido cyber
- Actualiza cada segundo
- Si `SHOWCYBERTOFINISHED = true`, automáticamente cambia al modo cyber cuando el contador llega a 0

#### Modo Cyber (`CONTADOR_ACTIVO = false`)
- Oculta el contador
- Muestra contenido estático
- No ejecuta el contador

#### Transición Automática
Cuando `SHOWCYBERTOFINISHED = true` y el contador llega a 0:
- Se oculta el contador
- Se muestra el contenido cyber
- Se oculta el logo del banner
- Se agrega la clase `cyber` al banner

## 📝 Notas Importantes

1. **Formato de Fechas**: Las fechas deben estar en formato: `MMM DD, YYYY, HH:MM:SS AM/PM Central Daylight Time`

2. **Timezone**: El código asume UTC-5 (hora de Perú/CDT)

3. **Modo Desarrollo**: Cuando `IS_DEVELOP = true`, el banner siempre es visible (útil para pruebas)

4. **Transición Automática**: Cuando `SHOWCYBERTOFINISHED = true`, el banner cambia automáticamente del modo contador al modo cyber cuando el tiempo llega a 0

5. **Assets Path**: Asegúrate de que el `assetsPrefix` en `astro.config.mjs` apunte a la URL correcta del servidor

6. **Cache**: Después de actualizar los assets, puede ser necesario limpiar el caché del navegador

## 🐛 Troubleshooting

### El contador no se muestra
- Verificar que `CONTADOR_ACTIVO = true`
- Verificar que las fechas estén en el formato correcto
- Verificar que `IS_DEVELOP = true` para pruebas

### Los estilos no se aplican
- Verificar que el CSS esté correctamente cargado
- Verificar la URL del `assetsPrefix`
- Limpiar caché del navegador

### Error: "Cannot read properties of undefined"
- Verificar que `targetDate` tenga un valor válido
- Verificar que las fechas del CMS estén configuradas

## 📄 Licencia

Este proyecto es propiedad de Claro Perú.

---

**Desarrollado para Claro Perú** | Última actualización: Octubre 2025
