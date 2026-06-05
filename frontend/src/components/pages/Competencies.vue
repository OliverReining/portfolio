<script setup lang="ts">
import { computed } from 'vue'
import CompetenceCard from '@/components/ui/CompetenceCard.vue'
import SectionBadge from '@/components/ui/SectionBadge.vue'

interface Competence {
  title: string
  description: string
  category: string
}

const competencies: Competence[] = [
  {
    title: 'Fullstack Dev',
    description:
      'Skalierbare Web-Apps mit C#, Vue.js 3 und TypeScript. Fokus auf Composition API und Backend-Architektur.',
    category: 'Development',
  },
  {
    title: 'Automation & AI',
    description:
      'Workflow-Design mit n8n und Integration von LLMs zur intelligenten Prozessautomatisierung.',
    category: 'Automation',
  },
  {
    title: 'Data Engineering',
    description:
      'ETL-Pipelines mit PowerQuery und Migration von Legacy-Daten in PostgreSQL-Datenbanken.',
    category: 'Development',
  },
  {
    title: 'Infrastructure',
    description:
      'Betrieb von Proxmox-Clustern, Docker-Containern und Linux-Systemen (Debian/Ubuntu).',
    category: 'Infrastructure',
  },
  {
    title: 'Dev Environment',
    description: 'Hochperformante Setups mittels WSL2, Git und VS Code auf Linux-Umgebungen.',
    category: 'Infrastructure',
  },
  {
    title: 'Hardware Engineering',
    description: 'Konzeption und Bau von High-End Workstations und Server-Hardware.',
    category: 'Infrastructure',
  },
]

// Automatically group by category for a scalable layout
const groupedCompetencies = computed(() => {
  const groups: Record<string, Competence[]> = {}
  competencies.forEach((item) => {
    if (!groups[item.category]) {
      groups[item.category] = []
    }
    groups[item.category]!.push(item)
  })
  return groups
})
</script>

<template>
  <section id="competencies">
    <SectionBadge tag="competencies" title="Tech Stack & Expertise" />

    <div class="category-flow">
      <div v-for="(items, category) in groupedCompetencies" :key="category" class="category-block">
        <h3 class="category-title">{{ category }}</h3>
        <div class="cards-grid">
          <CompetenceCard
            v-for="skill in items"
            :key="skill.title"
            :title="skill.title"
            :description="skill.description"
          />
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.category-flow {
  display: flex;
  flex-direction: column;
  gap: 60px;
}

.category-block {
  display: flex;
  flex-direction: column;
  gap: 24px;
}

.category-title {
  font-family: var(--font-mono);
  font-size: 0.8rem;
  color: var(--accent);
  text-transform: uppercase;
  letter-spacing: 0.2em;
  display: flex;
  align-items: center;
  gap: 16px;
}

.category-title::after {
  content: '';
  flex: 1;
  height: 1px;
  background: linear-gradient(90deg, var(--glass-border), transparent);
}

.cards-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  gap: 20px;
}

@media (max-width: 640px) {
  .cards-grid {
    grid-template-columns: 1fr;
  }
}
</style>
