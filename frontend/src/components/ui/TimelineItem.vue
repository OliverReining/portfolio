<script setup lang="ts">
defineProps<{
  date: string
  title: string
  content: string
}>()
</script>

<template>
  <div class="timeline-item">
    <div class="dot"></div>
    <div class="content">
      <span>{{ date }}</span>
      <h3>{{ title }}</h3>
      <p>{{ content }}</p>
    </div>
  </div>
</template>

<style scoped>
.timeline-item {
  position: relative;
  padding-left: 48px;
}

.dot {
  position: absolute;
  left: 0;
  top: 8px;
  width: 15px;
  height: 15px;
  background: var(--bg-base);
  border: 2px solid var(--accent);
  border-radius: 50%;
  z-index: 2;
  box-shadow: 0 0 15px var(--accent-soft);
}

.content {
  display: flex;
  flex-direction: column;
}
span {
  font-family: var(--font-mono);
  font-size: 0.8rem;
  color: var(--accent);
  margin-bottom: 8px;
  display: block;
}

h3 {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 8px;
}

p {
  color: var(--text-secondary);
  font-size: 1.1rem;
  max-width: 700px;
}
</style>
