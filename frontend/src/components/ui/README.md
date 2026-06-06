# UI Primitive Components (`frontend/src/components/ui/`)

This directory houses the reusable UI blocks, cards, and styling components that give the portfolio its unique "glassmorphic tech-blueprint" aesthetic.

---

## 📂 UI Components Reference

- **[SectionBadge.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/SectionBadge.vue)**:
  - **Props**: `tag: string`, `title: string`
  - **Purpose**: Displays section titles with a terminal-like prefix `>_ tag` (rendered in muted cyan) followed by a large geometric `<h2>` header.
- **[TimelineItem.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/TimelineItem.vue)**:
  - **Props**: `date: string`, `title: string`, `content: string`
  - **Purpose**: Renders timeline nodes. Uses absolute positioning for a custom glow indicator (`.dot`) aligned to the left vertical gridline.
- **[CompetenceCard.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/CompetenceCard.vue)**:
  - **Props**: `title: string`, `description?: string`
  - **Purpose**: A technical specification card featuring:
    - A randomly generated blueprint ID prefix (`ID-XXX-123`) derived from the title.
    - A dot-grid background overlay.
    - An interactive radial glow highlight (`.card-glow`) that follows the mouse cursor.
  - **Tech Detail**: Uses global `window.addEventListener('mousemove')` tracking and passes position coordinates into the component via CSS variables (`--mouse-x` and `--mouse-y`).
- **[ProjectCard.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/ProjectCard.vue)**:
  - **Props**: `category: string`, `title: string`, `description: string`, `insightType: 'code' | 'terminal' | 'system'`, `insightTitle: string`, `content: string`, `index: number`
  - **Purpose**: A large layout block dividing projects into descriptive text (left) and an interactive mock inspector window (right).
  - **Visual Effects**:
    - **Stacked Cards**: Uses `position: sticky; top: calc(100px + {index * 24}px)` styling. As the user scrolls down, subsequent cards stack slightly offset over previous ones.
    - **Custom Highlights**: Maps project categories to unique colors (Cyan for AI, Pink for Infrastructure, Mint for Automation, Orange for Data, Purple for Hardware).

---

## 🤖 AI Agent Implementation Advice

- **Interactive Hover Events**: The mouse hover glow in `CompetenceCard.vue` adds event listeners to `window` for tracking. If you duplicate or modify this effect, verify that handlers are correctly cleaned up inside `onUnmounted` to prevent memory leaks.
- **Stacked Scroll Offsets**: The sticky stacked layout in `ProjectCard.vue` requires cards to have a solid background (`--bg-surface`) and an `::after` separator to block transparency so cards don't bleed or overlap illegibly while stacking. Keep `margin-bottom: 20vh` to leave breathing room for the stack container.
- **Code Block Previews**: Inside `ProjectCard.vue`, the preview window relies on `<code class="content-text">` with `white-space: pre-wrap` for rendering format-sensitive code snippets and terminal outputs.
