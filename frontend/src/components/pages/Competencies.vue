<script setup lang="ts">
import CompetenceCard from '@/components/ui/CompetenceCard.vue'
import SectionBadge from '@/components/ui/SectionBadge.vue'

interface Competence {
  title: string
  description: string
  scale?: 'tall' | 'wide' | 'large'
  category?: string
}

const competencies: Competence[] = [
  {
    title: 'Automation & AI',
    description:
      'Orchestrierung komplexer Workflows mit n8n und Integration der OpenAI API zur Effizienzsteigerung.',
    scale: 'large',
    category: 'Automation',
  },
  {
    title: 'Fullstack Dev',
    description: 'Entwicklung moderner Anwendungen mit C#, Vue.js 3 (Composition API) und TypeScript.',
    scale: 'wide',
    category: 'Development',
  },
  {
    title: 'Infrastructure',
    description: 'Management von Proxmox-Clustern, Docker-Containern und Linux-Systemen (Debian/Ubuntu).',
    scale: 'tall',
    category: 'SysAdmin',
  },
  {
    title: 'Data Engineering',
    description: 'Legacy-Migrationen von Excel/Sheets nach PostgreSQL und SQL Server via PowerQuery.',
    category: 'Data',
  },
  {
    title: 'Dev Environment',
    description: 'Hochperformante Workflows mit WSL2, Git und VS Code auf optimierten Linux-Umgebungen.',
    category: 'Environment',
  },
  {
    title: 'Hardware Engineering',
    description: 'Konzeption, Bau und Wartung von Custom-PCs und Server-Hardware.',
    scale: 'wide',
    category: 'Hardware',
  },
]
</script>

<template>
  <section id="competencies">
    <SectionBadge tag="competencies" title="Core Competencies" />
    <div class="competence-grid">
      <CompetenceCard
        v-for="skill in competencies"
        :key="skill.title"
        :title="skill.title"
        :description="skill.description"
        :scale="skill.scale"
        :category="skill.category"
      />
    </div>
  </section>
</template>

<style scoped>
.competence-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  grid-auto-rows: 180px;
  grid-auto-flow: dense;
}

@media (max-width: 1024px) {
  .competence-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 640px) {
  .competence-grid {
    grid-template-columns: 1fr;
    grid-auto-rows: auto;
    gap: 16px;
  }

  /* Reset Bento Spans on Mobile for readability */
  .competence-grid :deep(.scale-large),
  .competence-grid :deep(.scale-wide),
  .competence-grid :deep(.scale-tall) {
    grid-column: span 1 !important;
    grid-row: span 1 !important;
  }
}
</style>
