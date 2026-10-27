# cintillo-v2: design selector V1/V2 in one JSP

Plan: `/Users/javiercastro/.claude-havas/plans/bueno-te-cuento-que-velvety-matsumoto.md` (approved, reviewed by Opus).
Branch: `feat/cintillo-v2`. Writer: one Sonnet worker (delegated direct). TDD: no test runner in repo (only `npm run build`), so ordinary functional checks + chrome-devtools at localhost:4321.

## Objective
One `src/Claro-JSP/Cintillo.JSP` that renders V1 (current two-panel/Swiper) or V2 (single row from Figma) depending on a CMS selector; `src/pages/index.astro` mirrors it via `DESIGN_VERSION` in `src/config/banner.ts`. `Banner.jsp` untouched.

## Open items
- CMS key for the selector assumed `AT.DesignVersion` (options V1/V2, empty => V1). User must confirm/create it.
- Mobile campaign-active layout for V2 is our proposal (no Figma).

## Tasks
- [x] 0. Branch + fixture dates committed (6ecf3c2) — route: inline
- [x] 1. countdown.js optional `root` + guards
- [x] 2. config/banner.ts + BannerV1.astro + data-design-version
- [x] 3. Script: Swiper conditional, startCountdown root
- [x] 4. BannerV2.astro + Figma bg asset + fixture style
- [x] 5. V2 desktop CSS
- [x] 6. V2 responsive CSS
- [x] 7. V1 regression + sticky/close/hover
- [x] 8. Cintillo.JSP V1/V2 blocks + guarded vars
- [x] 9. Build both versions, identical hashes, update JSP hashes
- [x] 10. AGENTS.md / README.md update
- [ ] 11. (User) CMS field + preview checklist

## Progress / evidence
Tasks 1-10 routed to a delegated writer (writer trigger: 2+ non-trivial files, preparation reads).

Baseline V1 console (pre-existing): AMX font CORS errors from localhost, Swiper loop warning. Chrome min viewport width here is 500px.
- Task 1: countdown.js optional `root` + guards. Build OK; V1 countdown ticks (seconds 32 -> 30 over 2.2s); no new console errors. Commit: d87db05
- Task 2: config/banner.ts + BannerV1.astro + data-design-version. Build OK; V1 DOM rects at 1920 and 768 identical to baseline (digit-width jitter only). Commit: 1b42478
- Task 3: Swiper only when `.promotional-strip-swiper` exists; startCountdown gets banner root. Build OK; V1 at 768 initialized and rotated slide 0 -> 1 after 6s, countdown ticks, no horizontal scroll. V2 no-Swiper path verified in task 4. Commit: 4ca878d
- Task 4: BannerV2.astro + bg_cyberwow_v2.png (composited offline from Figma gradient + two WOW watermark masks into one 1920x70 image, since the CMS supplies a single bg image) + dev-only fixture `<style is:inline>` (V2 only). Build OK (V1 default); with V2: 8 digit spans, countdown ticks (18 -> 16s), no Swiper, no console errors. Commit: 5e4ddf6
- Task 5: V2 desktop CSS in global.css (defaults via :where, phase toggle, hover vars). Verified at 1920 vs Figma: countdown phase logo x=735 (Figma 731), label right edge 979 (979), counter starts 987 (987), 198px wide; campaign phase logo 463 (469), text 687 (693), button 165x40 white pill. CMS wins: fixture var change turned button red (after the .2s transition). Fixture style fixed (set:html, `html #banner_cintillo` prefix, because Vite injects global.css after the tag in dev). Commit: 7b85e43
- Task 6: V2 responsive CSS. Both phases at 1920/1280/1199/1024/769/768/541/540/375/360/320: scrollWidth == innerWidth, banner height 70, no child outside viewport, no overlaps (incl. close button), campaign text never clipped. Visual check at 375/320/768. Commit: c28407c
- Task 7 (verification only): V2 1920: sticky false at scrollY 50, true at 150 (fixed, top 55, h 70), unsticks on return; button hover -> #ffd400 from fixture hover var; close removes banner; console only pre-existing AMX font CORS errors. V1: DOM rects at 1920 and 768 identical to the pre-change baseline, rotation OK, sticky OK (top 55 desktop / 50 at 768), hover -> white, close removes banner. Chrome here cannot go below 500px without emulation, so V1 at 375 was only checked via baseline-vs-structure (same CSS untouched). Commit: b418315
- Task 8: Cintillo.JSP data-design-version, V1 in NotEquals V2, V2 in Equals V2, 7 CSS vars guarded with NotEquals "". Balance (python regex + stack): NotEquals 12/12, Equals 1/1, ifInRange 1/1, IfEditMode 1/1, stack empty. [Element] keys: only AT.DesignVersion added vs HEAD. Needs CMS preview: nested NotEquals inside the V1 NotEquals (AT.FieldBackground, AT.FieldLinkText); fallback in plan. Commit: e0cb2f7
- Task 9: builds with DESIGN_VERSION V1 and V2 emit identical dist/_assets listings (css index.BH4JZYC6 + index.DO-cEYY6, js ..._lang.DlwPLqHr, same image hashes). Cintillo.JSP now references index.DO-cEYY6.css (was BydG3LBI) and ..._lang.DlwPLqHr.js (was BWOboCRH); BH4JZYC6 unchanged. dist/ not committed; default restored to V1. Commit: c7ed48b
- Task 10: AGENTS.md and README.md updated (Tailwind obsolete, Cintillo.JSP primary, V1/V2 selector, phases, build/hash flow). README structure tree and tech list corrected. Commit: see git log (docs)
