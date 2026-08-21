# Coding Agent Guide

Use this repository to develop Claro Perú's campaign strip locally and maintain the HCM-ready JSP component. Treat `src/Claro-JSP/Banner.jsp` as the primary production reference; Astro is the readable local development and build environment.

## Quick path

1. Inspect both `src/pages/index.astro` and `src/Claro-JSP/Banner.jsp` before changing behavior or markup.
2. Make readable source changes in Astro/JavaScript/CSS, then deliberately mirror the required production changes in the JSP.
3. Run `npm run build` and verify both banner modes, campaign boundaries, responsive layout, close control, and sticky behavior.
4. Confirm that the JSP still contains valid HCM placeholders and references the intended built CSS asset.

## Project skills

- `skills/claro-hcm-jsp-conversion/SKILL.md` — Convert HTML components into self-contained Claro HCM/WHM JSP artifacts.

## Stack and important paths

| Path | Role |
| --- | --- |
| `src/Claro-JSP/Banner.jsp` | Deployable HCM CMS artifact and production reference. It contains HCM directives/placeholders, inline styles, and bundled/minified runtime JavaScript. |
| `src/pages/index.astro` | Local banner fixture and readable integration logic for Astro development. |
| `src/utils/countdown.js` | Readable CMS date parsing and countdown utilities bundled into the built page. |
| `src/layouts/Layout.astro` | Local page shell, Claro reset stylesheet, fonts, and global CSS import. |
| `src/styles/global.css` | Tailwind CSS v4 import, Claro fonts, theme tokens, and utilities. |
| `astro.config.mjs` | Static build configuration. Output uses `dist/`, `_assets/`, uncompressed HTML, and Claro's production asset prefix. |
| `dist/` | Generated, ignored Astro output. Never edit it by hand. |

The installed stack is Astro 5 with Vite and Tailwind CSS 4. TypeScript is supported in `.astro` scripts through Astro's base `tsconfig`; countdown utilities are plain JavaScript.

## Banner behavior and date invariant

- `CONTADOR_ACTIVO === true`: show `.countdown_section`, hide `.cyber_section`, and count toward the applicable campaign boundary.
- `CONTADOR_ACTIVO === false`: hide the countdown and logo, and show the promotional (`.cyber_section`) content.
- Production visibility is governed by the half-open campaign interval: show from `data-date-init` inclusive until `data-date-end` exclusive. A promotional campaign must not bypass this window.
- Before the start or after the end, the banner is hidden unless local `IS_DEVELOP` behavior or the configured post-countdown promotion explicitly keeps it visible.
- In HCM, `AT.ShowAfterFinished = "Si"` sets `SHOWCYBERTOFINISHED`; when a countdown finishes, the component switches to promotional content.
- `parseFechaCMS()` parses CMS-style English or supported Spanish month abbreviations, ignores the trailing timezone label, and applies a fixed UTC-5 offset. Preserve this contract unless the CMS date format and timezone behavior are changed together.

Test exact boundaries: just before start, at start, just before end, and at/after end. Also test both `CONTADOR_ACTIVO` values; date gating applies to the banner regardless of visual mode.

## HCM/JSP constraints

Do not normalize or escape CMS syntax. `Banner.jsp` relies on:

- `[Plugin:ifInRange]`, `[Plugin:Equals]`, and `[Plugin:NotEquals]` directives;
- `[Element ...]` placeholders for dates, campaign type, copy, images, links, and color values;
- `[IfEditMode]` and the inline-edit component;
- `htmlencode="false"` for CMS-provided image/background markup.

Campaign mode values are currently `Contador` and `Cyber` through `AT.TypeCampaing`. The key spelling is part of the CMS contract; do not "correct" it. Keep the initial `style="display: none;"` to avoid showing campaigns outside their window before JavaScript evaluates the dates.

Astro does **not** generate or update `src/Claro-JSP/Banner.jsp`. A build emits `dist/index.html` and a hashed `dist/_assets/index.*.css`; the JSP has its own explicit production CSS URL and inline minified script. Never edit generated files in `dist/` or the JSP's minified script directly. Change the readable sources, build, then intentionally synchronize the JSP artifact and its CSS filename without damaging CMS placeholders.

## Commands

Use the scripts defined in `package.json`:

```bash
npm run dev      # Start Astro's local development server
npm run build    # Build the static page into dist/
npm run preview  # Serve the completed dist/ build locally
npm run astro -- <args>  # Invoke the Astro CLI directly when needed
```

There is no repository test, lint, or type-check script. Do not claim one exists; `npm run build` is the available automated validation gate.

## Safe change workflow

1. Check the worktree first and preserve unrelated edits.
2. Compare the local Astro implementation with `Banner.jsp`; production may intentionally differ because of CMS placeholders.
3. Change readable source files, preserving existing DOM hooks such as `#banner_cintillo`, `.countdown_section`, `.cyber_section`, digit classes, and `.closeElement`.
4. Build and inspect the emitted CSS filename and browser behavior.
5. Synchronize only the necessary HTML, styles, bundled runtime, and asset reference into `Banner.jsp`.
6. Review the final diff for accidental placeholder changes, minified-code hand edits, or generated `dist/` files.

## Verification checklist

- [ ] `npm run build` succeeds.
- [ ] Countdown and promotional modes render correctly on desktop and mobile.
- [ ] Visibility matches `[data-date-init, data-date-end)` at all four boundary checks.
- [ ] Countdown reaches zero and post-finish promotion follows `AT.ShowAfterFinished`.
- [ ] Close removes the banner; sticky thresholds still behave at desktop and mobile widths.
- [ ] HCM directives, placeholder keys, edit-mode support, and `htmlencode="false"` locations remain intact.
- [ ] The JSP CSS URL matches the asset intended for deployment under `https://www.claro.com.pe/assets/havas/banner_cintillo/_assets/`.
- [ ] No generated `dist/` output or unrelated pre-existing changes are included.
