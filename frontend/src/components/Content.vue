<script setup lang="ts">
import ContentStream from '@/components/ContentStream.vue'
import Sidebar from '@/components/Sidebar.vue'
import TechBanner from '@/components/TechBanner.vue'
</script>

<template>
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
  padding: 50px 60px;
  display: flex;
  gap: 100px;
}

@media (max-width: 1280px) {
  .app-container {
    gap: 40px;
    padding: 40px;
  }
}

@media (max-width: 1024px) {
  .app-container {
    flex-direction: column;
    margin-top: 0;
    padding: 20px;
  }
}
</style>
