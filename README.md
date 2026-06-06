# Oliver Reining Portfolio & Home Lab Infrastructure

Welcome! This repository houses the codebase and deployment configuration for **Oliver Reining's Developer Portfolio**. It is a modern, high-performance, single-page application built with **Vue 3**, **Vite**, **TypeScript**, and **Vanilla CSS**, featuring a premium "glassmorphic blueprint" dark-mode theme.

The application is containerized and deployed within a **Tailscale VPN network** using Tailscale Funnel to securely serve traffic to the public internet.

---

## 🛠️ Tech Stack & Architecture

- **Frontend**: [Vue 3](https://vuejs.org/) (Composition API, `<script setup>` syntax), [Vite](https://vite.dev/), [TypeScript](https://www.typescriptlang.org/), Vanilla CSS (design tokens & variables), [Prettier](https://prettier.io/).
- **Containerization**: Multistage [Dockerfile](file:///home/oliver/projects/portfolio/Dockerfile) (Stage 1: Node build, Stage 2: Nginx production stage on port 80).
- **Networking**: [Docker Compose](file:///home/oliver/projects/portfolio/docker-compose.yml) running sidecar containers:
  - `ts-portfolio`: Tailscale service handling network translation and certificate domain mapping.
  - `portfolio`: Static Nginx web server running in network mode sharing `ts-portfolio`'s stack.
- **Reverse Proxy / Funnel**: Tailscale Serve config [portfolio.json](file:///home/oliver/projects/portfolio/config/portfolio.json) routing public traffic securely from port 443 (HTTPS) to the container's local port 80.
- **CI/CD / Deployment**: [update.sh](file:///home/oliver/projects/portfolio/update.sh) script that runs a git pull poll and rebuilds the compose system automatically on changes.

---

## 📂 Project Directory Map (AI Agent Navigation Guide)

To help AI agents navigate this codebase efficiently, every major directory contains its own `README.md` mapping its responsibilities, dependencies, and file exports.

Below is the high-level map of the project layout:

```text
.
├── config/                      # Tailscale network configuration files
│   ├── README.md                # Config documentation (for AI agents)
│   └── portfolio.json           # Tailscale Serve/Funnel routing config
├── frontend/                    # Vue 3 Vite TypeScript application
│   ├── src/                     # Vue source code
│   │   ├── assets/              # Global styles (base.css, main.css) and logo
│   │   ├── components/          # Reusable Vue components and section layout
│   │   │   ├── pages/           # Portfolio section pages (Profile, Experience, etc.)
│   │   │   └── ui/              # Low-level visual UI primitive components
│   │   ├── App.vue              # App entry component (orchestrates header, content, footer)
│   │   ├── main.ts              # App mounting logic & global imports
│   │   └── README.md            # Src guide (for AI agents)
│   ├── package.json             # NPM dependencies and scripts
│   └── README.md                # Frontend development instructions (for AI agents)
├── Dockerfile                   # Multistage build file (Node -> Nginx)
├── docker-compose.yml           # Sidecar multi-container specification
└── update.sh                    # Automated pull-and-rebuild script
```

### 🧭 Where to Go Next:
- For **development commands, tools, and scripts**, see [frontend/README.md](file:///home/oliver/projects/portfolio/frontend/README.md).
- For the **frontend architecture and source code details**, see [frontend/src/README.md](file:///home/oliver/projects/portfolio/frontend/src/README.md).
- For details on **deployment, Docker, and Tailscale networking**, see [config/README.md](file:///home/oliver/projects/portfolio/config/README.md).

---

## 🚀 Getting Started

### Local Development (Frontend Only)
To run the Vue dev server locally with hot-reloading:
```bash
cd frontend
pnpm install
pnpm dev
```
Open [http://localhost:5173](http://localhost:5173) in your browser.

### Production Deployment (Docker + Tailscale)
To spin up the production stack locally (or on a server) with Tailscale routing:
1. Make sure you have Docker and Docker Compose installed.
2. Edit the `TS_AUTHKEY` in `docker-compose.yml` with your Tailscale auth key.
3. Start the stack:
   ```bash
   docker compose up -d --build
   ```
4. Verify Tailscale Serve is forwarding to your Nginx container.

---

## 🤖 AI Agent Guidelines
When editing this project:
1. **Maintain Design Tokens**: Do not write ad-hoc color values or pixel dimensions. Use CSS variables defined in [frontend/src/assets/base.css](file:///home/oliver/projects/portfolio/frontend/src/assets/base.css).
2. **Component Structure**:
   - Pages go into [frontend/src/components/pages/](file:///home/oliver/projects/portfolio/frontend/src/components/pages/).
   - UI primitives and cards go into [frontend/src/components/ui/](file:///home/oliver/projects/portfolio/frontend/src/components/ui/).
3. **Language**: Use TypeScript (`<script setup lang="ts">`) for all Vue components.
4. **Localization/Text**: All profile contents, experience details, and skill descriptions are in German or English. Keep the language natural and consistent.
