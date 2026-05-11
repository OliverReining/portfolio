<script setup lang="ts">
import SectionBadge from '@/components/ui/SectionBadge.vue'
import TimelineItem from '@/components/ui/TimelineItem.vue'

interface TimelineEntry {
  date: string
  title: string
  content: string
}

const timeline: TimelineEntry[] = [
  {
    date: '2020 - Present',
    title: 'Senior Software Engineer at TechCorp',
    content:
      'Leading a team of developers to build scalable web applications using Vue.js and Node.js.',
  },
  {
    date: '2018 - 2020',
    title: 'Software Engineer at WebSolutions',
    content:
      'Developed and maintained client projects, focusing on frontend development with Vue.js.',
  },
  {
    date: '2016 - 2018',
    title: 'Junior Developer at CodeFactory',
    content:
      'Assisted in the development of internal tools and gained experience in full-stack development.',
  },
]
</script>
<template>
  <section id="experience">
    <SectionBadge tag="experience" title="Beruflicher Werdegang" />
    <div class="timeline">
      <TimelineItem v-for="item in timeline" :key="item.date" v-bind="item" />
    </div>
  </section>
</template>
<style scoped>
.timeline {
  display: flex;
  flex-direction: column;
  gap: 48px;
  position: relative;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 7px;
  top: 0;
  bottom: 0;
  width: 1px;
  background: var(--glass-border);
}
</style>
