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
- [ ] 5. V2 desktop CSS
- [ ] 6. V2 responsive CSS
- [ ] 7. V1 regression + sticky/close/hover
- [ ] 8. Cintillo.JSP V1/V2 blocks + guarded vars
- [ ] 9. Build both versions, identical hashes, update JSP hashes
- [ ] 10. AGENTS.md / README.md update
- [ ] 11. (User) CMS field + preview checklist

## Progress / evidence
Tasks 1-10 routed to a delegated writer (writer trigger: 2+ non-trivial files, preparation reads).

Baseline V1 console (pre-existing): AMX font CORS errors from localhost, Swiper loop warning. Chrome min viewport width here is 500px.
- Task 1: countdown.js optional `root` + guards. Build OK; V1 countdown ticks (seconds 32 -> 30 over 2.2s); no new console errors. Commit: d87db05
- Task 2: config/banner.ts + BannerV1.astro + data-design-version. Build OK; V1 DOM rects at 1920 and 768 identical to baseline (digit-width jitter only). Commit: 1b42478
- Task 3: Swiper only when `.promotional-strip-swiper` exists; startCountdown gets banner root. Build OK; V1 at 768 initialized and rotated slide 0 -> 1 after 6s, countdown ticks, no horizontal scroll. V2 no-Swiper path verified in task 4. Commit: 4ca878d
- Task 4: BannerV2.astro + bg_cyberwow_v2.png (composited offline from Figma gradient + two WOW watermark masks into one 1920x70 image, since the CMS supplies a single bg image) + dev-only fixture `<style is:inline>` (V2 only). Build OK (V1 default); with V2: 8 digit spans, countdown ticks (18 -> 16s), no Swiper, no console errors. Commit: see git log (feat(banner))
