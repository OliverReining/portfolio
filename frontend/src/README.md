# Source Directory (`frontend/src/`)

This directory contains the Vue 3 application source code, styling assets, and global application entry points.

---

## 📂 Subdirectory and File Map

- **[main.ts](file:///home/oliver/projects/portfolio/frontend/src/main.ts)**: The primary JavaScript/TypeScript entrypoint. Imports `assets/main.css`, creates the Vue application instance from `App.vue`, and mounts it to `#app` inside `index.html`.
- **[App.vue](file:///home/oliver/projects/portfolio/frontend/src/App.vue)**: The root layout container. It orchestrates the vertical layout:
  - `<HeroLayer />` (Intro screen / header canvas)
  - `<PageContent />` (Sidebar and main content stream)
  - `<FooterComponent />` (Contact information and credits)
- **[assets/](file:///home/oliver/projects/portfolio/frontend/src/assets/)**:
  - `base.css`: The styling base defining typography (`Geist` & `Geist Mono`), margins, and CSS custom properties (design tokens).
  - `main.css`: Import aggregator.
  - `logo.svg`: Oliver Reining's vector logo asset.
- **[components/](file:///home/oliver/projects/portfolio/frontend/src/components/)**: Directory containing modular components, organized by domain. See [frontend/src/components/README.md](file:///home/oliver/projects/portfolio/frontend/src/components/README.md).
- **[env.d.ts](file:///home/oliver/projects/portfolio/frontend/env.d.ts)**: TypeScript triple-slash directives enabling compilation references.

---

## 🎨 Design System Tokens (`assets/base.css`)

Always use these custom CSS properties when designing or modifying UI elements to ensure visual consistency:

| Property | Value | Description |
|---|---|---|
| `--bg-base` | `#020202` | Deep black background |
| `--bg-surface` | `#0a0a0b` | Card & surface dark grey |
| `--accent` | `#00e5ff` | Laser Cyan highlights |
| `--accent-soft` | `rgba(0, 229, 255, 0.35)` | Glowing laser cyan tint |
| `--text-primary` | `#f4f4f5` | Bright off-white text |
| `--text-secondary`| `#a1a1aa` | Muted grey text |
| `--text-muted` | `#52525b` | Low-contrast labels / details |
| `--glass-bg` | `rgba(10, 10, 12, 0.8)` | Glossy backdrop color |
| `--glass-border` | `rgba(255, 255, 255, 0.08)`| Subtle translucent borders |
| `--font-sans` | `'Geist', sans-serif` | Clean geometric body font |
| `--font-mono` | `'Geist Mono', monospace`| Monospaced tech font |
| `--sidebar-width` | `380px` | Sidebar size for layout logic |

---

## 🤖 AI Agent Implementation Advice

- **App Layout Flow**: Note that the root elements (`HeroLayer`, `PageContent`, `Footer`) do not use router-views. The application relies on a single-page design with section tags scrolled to using the sidebar menu anchors.
- **Scroll Behavior**: Smooth scrolling is configured globally on the `html` element.
- **Responsive Layout**: Ensure that any layout modifications support mobile screen dimensions, adapting from the split sidebar-content layout to a stacked, mobile-menu-driven view.
