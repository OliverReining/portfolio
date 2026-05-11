<script setup lang="ts">
import Competencies from './Projects.vue'
import Profile from './Profile.vue'
</script>
<template>
  <main>
    <Profile />
    <Competencies />
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
