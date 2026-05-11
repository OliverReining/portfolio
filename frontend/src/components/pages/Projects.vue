<script setup lang="ts">
import SectionBadge from '@/components/ui/SectionBadge.vue'
import ProjectCard from '@/components/ui/ProjectCard.vue'

interface Project {
  category: string
  title: string
  description: string
  codeSnippet?: string
}

const Projects: Project[] = [
  {
    category: 'Open Source',
    title: 'Vue.js DevTools',
    description:
      'Contributed to the Vue.js DevTools project, improving performance and adding new features.',
  },
  {
    category: 'Personal Project',
    title: 'Portfolio Website',
    description:
      'Built a personal portfolio website using Vue 3 and Vite to showcase my projects and skills.',
  },
  {
    category: 'Freelance',
    title: 'E-commerce Platform',
    description:
      'Developed a full-stack e-commerce platform for a local business, utilizing Node.js and Vue.js.',
    codeSnippet: 'public async IAsyncEnumerable Stream...',
  },
]
</script>
<template>
  <section id="projects">
    <SectionBadge tag="projects" title="Verified Codebases." />
    <ProjectCard v-for="project in Projects" :key="project.title" v-bind="project" />
  </section>
</template>
<style scoped></style>
