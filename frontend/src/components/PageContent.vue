<script setup lang="ts">
import ContentStream from './ContentStream.vue'
import Sidebar from './Sidebar.vue'
// import TechBanner from './TechBanner.vue'
</script>
<template>
  <!-- PAGE CONTENT -->
  <div class="page-wrapper">
    <!-- <TechBanner /> -->
    <div class="app-container">
      <Sidebar />
      <ContentStream />
    </div>
  </div>
</template>
<style scoped></style>
