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
    title: 'Software Architecture',
    description:
      'Designing scalable, maintainable distributed systems using SOLID principles and clean code patterns.',
    scale: 'large',
    category: 'Architecture',
  },
  {
    title: 'Vue.js Ecosystem',
    description: 'Advanced knowledge of Vue 3, Composition API, Pinia, and Vite.',
    scale: 'wide',
    category: 'Frontend',
  },
  {
    title: 'TypeScript',
    description: 'Strong typing for robust and error-free applications.',
    category: 'Language',
  },
  {
    title: 'Cloud Native',
    description: 'Experience with Docker, Kubernetes, and modern CI/CD pipelines.',
    scale: 'tall',
    category: 'DevOps',
  },
  {
    title: 'Node.js',
    description: 'Building high-performance backend services and APIs.',
    category: 'Backend',
  },
  {
    title: 'UI/UX Design',
    description: 'Creating intuitive and aesthetically pleasing user interfaces.',
    scale: 'wide',
    category: 'Design',
  },
  // {
  //   title: 'Testing',
  //   description: 'Unit and E2E testing with Vitest and Playwright.',
  //   category: 'Quality',
  // },
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
