# Portfolio Section Pages (`frontend/src/components/pages/`)

This folder contains the major semantic sections of the portfolio site. These are imported and mounted sequentially inside the main content scroll pane.

---

## 📂 Section Components

- **[Profile.vue](file:///home/oliver/projects/portfolio/frontend/src/components/pages/Profile.vue)**:
  - **Purpose**: "Über mich" (About Me) section.
  - **Content**: German-language description of Oliver Reining's background, journey from stock manager to developer, and passion for software development and automation.
- **[Competencies.vue](file:///home/oliver/projects/portfolio/frontend/src/components/pages/Competencies.vue)**:
  - **Purpose**: Tech Stack & Expertise matrix.
  - **UI/Dependencies**: Iterates over a flat list of skill items, groups them dynamically using a computed block, and renders a grid of [CompetenceCard.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/CompetenceCard.vue) instances.
  - **Categories**: Development, Automation, Infrastructure.
- **[Experience.vue](file:///home/oliver/projects/portfolio/frontend/src/components/pages/Experience.vue)**:
  - **Purpose**: "Beruflicher Werdegang" (Professional timeline).
  - **UI/Dependencies**: Renders a vertical timeline axis utilizing [TimelineItem.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/TimelineItem.vue) blocks for each milestone.
- **[Projects.vue](file:///home/oliver/projects/portfolio/frontend/src/components/pages/Projects.vue)**:
  - **Purpose**: "Technical Projects" catalog.
  - **UI/Dependencies**: Renders custom detailed projects with interactive code/terminal/system insight previews using [ProjectCard.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/ProjectCard.vue) components.

---

## 🤖 AI Agent Guidelines for Section Pages

- **Adding New Sections**: If you add a new page file:
  1. Define a `<section id="my-new-id">` as the root element of your component.
  2. Use [SectionBadge.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ui/SectionBadge.vue) at the top of the section for consistent headers.
  3. Import and add the component to [ContentStream.vue](file:///home/oliver/projects/portfolio/frontend/src/components/ContentStream.vue).
  4. Register the ID in the navigation list within [Sidebar.vue](file:///home/oliver/projects/portfolio/frontend/src/components/Sidebar.vue).
- **Data Modeling**: Currently, pages define their text content or data arrays locally inside the `<script setup>` tag. Keep data arrays strictly typed with interfaces (e.g. `interface Project`, `interface Competence`, etc.).
