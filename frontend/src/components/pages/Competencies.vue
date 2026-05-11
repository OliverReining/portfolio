<script setup lang="ts">
import CompetenceCard from '@/components/ui/CompetenceCard.vue'
import SectionBadge from '@/components/ui/SectionBadge.vue'
</script>
<template>
  <section id="competencies">
    <SectionBadge tag="competencies" title="insert title here" />
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
  </section>
</template>
<style scoped>
.competence-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  grid-auto-rows: minmax(200px, auto);
}
</style>
