<script setup lang="ts">
import Competencies from '@/components/pages/Competencies.vue'
import Profile from '@/components/pages/Profile.vue'
import Experience from '@/components/pages/Experience.vue'
import Projects from '@/components/pages/Projects.vue'
</script>
<template>
  <main>
    <Profile />
    <Competencies />
    <Experience />
    <Projects />
  </main>
</template>
<style scoped>
.main {
  flex: 1;
  padding: 100px 0;
  display: flex;
  flex-direction: column;
  gap: 160px;
}
</style>
