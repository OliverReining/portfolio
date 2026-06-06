# Components Directory (`frontend/src/components/`)

This directory houses the layout elements and subfolder modules that form the UI of the portfolio.

---

## 📂 Subdirectories

- **[pages/](file:///home/oliver/projects/portfolio/frontend/src/components/pages/)**: Vue components representing discrete sections of the page content (e.g., Profile, Experience, Skills).
- **[ui/](file:///home/oliver/projects/portfolio/frontend/src/components/ui/)**: Highly modular, reusable design primitives and visual card layouts.
- **[icons/](file:///home/oliver/projects/portfolio/frontend/src/components/icons/)**: Placeholder folder for custom SVG icon assets.
- **`__tests__/`**: Unit test specifications verifying component behaviors.

---

## 📄 Root Component Files

These files manage the overall structure and layout shell of the viewport:

- **[App.vue](file:///home/oliver/projects/portfolio/frontend/src/App.vue)**: Mounts the main parts sequentially.
- **[HeroLayer.vue](file:///home/oliver/projects/portfolio/frontend/src/components/HeroLayer.vue)**: Renders the introductory top header card with high-impact typography and branding.
- **[Content.vue](file:///home/oliver/projects/portfolio/frontend/src/components/Content.vue)**: Integrates the sidebar layout, top `<TechBanner />`, and the main `<ContentStream />` in a side-by-side flex layout.
- **[Sidebar.vue](file:///home/oliver/projects/portfolio/frontend/src/components/Sidebar.vue)**: A sticky panel displaying basic contact info, social links, and current sections. Uses an `IntersectionObserver` to highlight which section is active as the user scrolls. Supports collapsing into a slide-over mobile drawer.
- **[TechBanner.vue](file:///home/oliver/projects/portfolio/frontend/src/components/TechBanner.vue)**: Layout status line providing visual design cues.
- **[ContentStream.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ContentStream.vue)**: A wrapper that lines up the main section pages (`Profile`, `Competencies`, `Experience`, `Projects`) sequentially for scrolling.
- **[Footer.vue](file:///home/oliver/projects/portfolio/frontend/src/components/Footer.vue)**: The bottom footer containing copyright credits and email contact info.

---

## 🤖 AI Agent Navigation Guidelines

1. **IntersectionObserver Logic**: If you add, rename, or delete pages, update both:
   - `navLinks` in [Sidebar.vue](file:///home/oliver/projects/portfolio/frontend/src/components/Sidebar.vue)
   - The components list inside [ContentStream.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ContentStream.vue)
2. **Scrolling ID Anchors**: Every component loaded in `ContentStream` must wrap its outer element in a `<section>` tag with an `id` matching the corresponding key in the sidebar links (`profile`, `competencies`, `experience`, `projects`).
3. **Glassmorphism Style**: Root layout panels (such as the Sidebar and Footer) use `--glass-bg` and `--glass-border` with `-webkit-backdrop-filter: blur(24px)` to achieve their frosted glass appearance.
