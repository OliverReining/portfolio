<script setup lang="ts">
import CompetenceCard from './ProjectCard.vue'
import SectionBadge from './ui/SectionBadge.vue'
</script>
<template>
  <SectionBadge tag="02 // competencies" title="Projects" />
  <div class="competence-grid">
    <CompetenceCard
      scale="tall"
      title="tall card"
      description="Designing scalable, maintainable distributed systems using SOLID principles and clean code patterns."
    />
    <CompetenceCard title="normal card" description="card description." />
    <!-- <CompetenceCard title="normal card" description="card description." /> -->
    <CompetenceCard
      scale="wide"
      title="wide card"
      description="Designing scalable, maintainable distributed systems using SOLID principles and clean code patterns."
    />
    <CompetenceCard
      scale="large"
      title="large card"
      description="Designing scalable, maintainable distributed systems using SOLID principles and clean code patterns."
    />
    <CompetenceCard title="normal card" description="card description." />
    <CompetenceCard title="normal card" description="card description." />
  </div>
</template>
<style scoped>
.competence-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  grid-auto-rows: minmax(200px, auto);
}
</style>
