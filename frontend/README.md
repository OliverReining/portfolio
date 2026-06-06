# Frontend Directory (`frontend/`)

This directory contains the main web application: a modern, interactive single-page portfolio built with **Vue 3**, **Vite**, **TypeScript**, and **Vanilla CSS**.

---

## 📂 Subdirectory structure

- **[src/](file:///home/oliver/projects/portfolio/frontend/src)**: The Vue application code, assets, styles, and components. See [frontend/src/README.md](file:///home/oliver/projects/portfolio/frontend/src/README.md) for architecture.
- **[public/](file:///home/oliver/projects/portfolio/frontend/public)**: Static assets that are copied directly to the output root (e.g., CV file, favicon).
- **[package.json](file:///home/oliver/projects/portfolio/frontend/package.json)**: Node dependencies, package engine requirements, and CLI scripts.
- **[.prettierrc.json](file:///home/oliver/projects/portfolio/frontend/.prettierrc.json)**: Formatting settings.
- **tsconfig files**: Typescript compiler definitions for the build pipeline and IDE services.
- **vite.config.ts** & **vitest.config.ts**: Tooling configuration for the Vite bundler and Vitest unit testing library.

---

## 🚀 Development Lifecycle

### 📦 Installation
Use **pnpm** to manage dependencies:
```bash
pnpm install
```

### ⚡ Local Development Server
Launch the development server with Hot Module Replacement (HMR):
```bash
pnpm dev
```
Open your browser to the URL printed in the terminal (usually `http://localhost:5173`).

### 🛠️ Production Build & Type-checking
Runs `vue-tsc` to perform complete type-checking on `.vue` and `.ts` files, then builds and minifies static files into `/dist`:
```bash
pnpm build
```

### 🧪 Unit Testing
Runs unit tests via Vitest:
```bash
pnpm test:unit
```

### 🧹 Formatting
Format files using Prettier:
```bash
pnpm format
```

---

## 🤖 AI Agent Guidelines for Development

1. **Composition API**: Always use `<script setup lang="ts">` syntax in `.vue` files.
2. **Path Alias**: The project has path aliasing configured. Use `@/` to import from `frontend/src/`:
   ```ts
   import TimelineItem from '@/components/ui/TimelineItem.vue'
   ```
3. **No Styling Frameworks**: Styling is done entirely with scoped **Vanilla CSS**. Avoid adding libraries like Tailwind unless explicitly requested. Design tokens should be retrieved from custom properties in [base.css](file:///home/oliver/projects/portfolio/frontend/src/assets/base.css).
4. **Volar & IDE settings**: The VS Code workspace configures Volar as the language service. Do not install Vetur.
