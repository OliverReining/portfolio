<script setup lang="ts">
import ContentStream from './ContentStream.vue'
import Sidebar from './Sidebar.vue'
import TechBanner from './TechBanner.vue'
</script>
<template>
  <!-- PAGE CONTENT -->
  <div class="page-wrapper">
    <TechBanner />
    <div class="app-container">
      <Sidebar />
      <ContentStream />
    </div>
  </div>
</template>
<style scoped>
.page-wrapper {
  position: relative;
  z-index: 10;
  background: var(--bg-base);
  margin-bottom: var(--footer-height);
  box-shadow: 0 20px 100px rgba(0, 0, 0, 0.9);
}

.app-container {
  max-width: 1440px;
  margin: 60px auto 0;
  padding: 0 60px;
  display: flex;
  gap: 100px;
}
</style>
