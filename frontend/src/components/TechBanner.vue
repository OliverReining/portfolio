<script setup lang="ts">
const skills = [
  'ASP.NET Core',
  'JavaScript',
  'TypeScript',
  'Vue.js',
  'C#',
  'n8n Automation',
  'Proxmox (PVE)',
  'Docker / Compose',
  'PostgreSQL',
  'Linux',
  'WSL2',
  'TailwindCSS',
  'RESTAPI',
  'LLM Integration',
  'RAG Systems',
  'GitHub Actions',
  'Kubernetes',
  'Microservices',
  'Hardware Assembly',
]
</script>

<template>
  <div class="techstack-container">
    <div class="techstack-track">
      <div class="techstack-content">
        <span v-for="skill in skills" :key="skill">{{ skill }}</span>
      </div>
      <div class="techstack-content">
        <span v-for="skill in skills" :key="`dup-${skill}`">{{ skill }}</span>
      </div>
    </div>
  </div>
</template>

<style scoped>
.techstack-container {
  width: 100%;
  background: var(--accent);
  color: #000;
  padding: 14px 0;
  overflow: hidden;
  display: flex;
  white-space: nowrap;
  font-family: var(--font-mono);
  font-weight: 800;
  font-size: 0.85rem;
  position: sticky;
  top: 0;
  z-index: 150;
}

.techstack-track {
  display: flex;
  width: max-content;
  animation: scroll-left 40s linear infinite;
}

.techstack-content {
  display: flex;
  flex-shrink: 0;
}

span {
  display: flex;
  align-items: center;
  margin: 0 2rem;
  text-transform: uppercase;
  letter-spacing: 2px;
}

@keyframes scroll-left {
  0% {
    transform: translateX(0);
  }
  100% {
    /* Wir scrollen genau um die Breite EINER Inhalts-Liste */
    transform: translateX(-50%);
  }
}

/* Pause bei Hover (optional, aber cool für Leser) */
.techstack-container:hover .techstack-track {
  animation-play-state: paused;
}
</style>
