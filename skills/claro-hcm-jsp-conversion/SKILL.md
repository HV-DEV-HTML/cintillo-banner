---
name: claro-hcm-jsp-conversion
description: "Trigger: HCL DX, HCM JSP, CP HTML Avanzado, Claro CMS conversion. Prepare confirmed Claro CMS delivery artifacts."
license: Apache-2.0
metadata:
  author: "javiercastro"
  version: "1.1"
---

## Activation Contract

Load when converting, adapting, or reviewing an HTML component for confirmed Claro HCL DX delivery. HCL DX is the platform formerly called IBM WebSphere Portal/WCM; pages use portlets containing WCM items.

## Hard Rules

- Confirm the destination before conversion. Do not propose or convert to JSP or `CP HTML Avanzado` without confirmation.
- Inspect the source HTML and the applicable reference before mapping markup.
- Do not invent CMS keys, endpoints, dependencies, plugin syntax, or destination; request missing data.
- Do not include upload instructions, credentials, Playwright/DevTools automation, or editing URLs; those belong to a separate delivery skill.
- Balance and preserve `[Plugin:ifInRange]`, `[Plugin:Equals]`, `[Plugin:NotEquals]`, and `[IfEditMode]` directives exactly.
- Use `htmlencode="false"` only for CMS-managed markup, images, or URLs.
- Never edit generated `dist/` files or Banner's inline minified script.

## Decision Gates

| First gate: confirmed destination | Required artifact |
| --- | --- |
| Not confirmed | Stop; return the missing destination and CMS context. |
| Structured JSP / WCM item | Self-contained JSP with confirmed directives, placeholders, hooks, CSS, dependencies, and runtime. |
| `CP HTML Avanzado` | Free HTML delivery: retain full-document scripts, including Astro module scripts emitted after `</html>`, and declared dependencies. Do not assume `<body>` alone is sufficient. |

| Confirmed JSP component shape | CMS mapping |
| --- | --- |
| One fixed instance | Static component with content `[Element]` values |
| Repeated cards/items | List with `ifInRange`, per-item `[Element]`/`[Property]`, and edit-mode support |
| Page-managed shared content | `sitearea` `[Property]` and `[EditableProperty]` |

Map rendered content to `[Element]`; map fields exposed by the current context to `[Property]`; wrap editable sitearea fields in `[EditableProperty]`.

## Execution Steps

1. Confirm the destination, WCM context, source artifact, dependencies, and applicable reference; stop for missing data.
2. For JSP, select the component shape and map only confirmed keys; preserve selectors, IDs, data attributes, and hooks.
3. Add directives around the smallest valid region; verify every opening directive has a matching close. Scope CSS and retain required runtime locally.
4. For `CP HTML Avanzado`, preserve the required document fragments, module scripts, and declared dependencies as delivered by Astro.
5. For `Banner.jsp`, update assets and runtime deliberately from readable sources; preserve placeholders, date gating, and the bundled-script constraint.
6. Review the selected artifact for CMS syntax where applicable, encoding boundaries, responsive behavior, and undeclared dependencies.

## Output Contract

Return the confirmed destination, selected shape where applicable, confirmed mappings, changed files, preserved dependencies, validation performed, and blockers requiring CMS input.

## References

- `../../src/Claro-JSP/Banner.jsp` — special banner conversion reference.
- `/Users/javiercastro/Documents/projects/Claro-Home/JSPs/CP - ENTREGAS LIST.jsp` — repeatable-list reference.
- `/Users/javiercastro/Documents/projects/Claro-Home/JSPs/CP- MARCAS-LIST.jsp` — repeatable-list reference.
