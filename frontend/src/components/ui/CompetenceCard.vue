<script setup lang="ts">
defineProps<{
  scale?: string
  title: string
  description?: string
}>()
</script>

<template>
  <div class="card" :class="[scale && `scale-${scale}`]">
    <h3>{{ title }}</h3>
    <p>{{ description }}</p>
  </div>
</template>

<style scoped>
.card {
  background: var(--bg-surface);
  border: 1px solid var(--glass-border);
  border-radius: 24px;
  padding: 32px;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  transition: 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  height: 100%;
}
.card:hover {
  border-color: var(--accent);
  transform: translateY(-5px);
}
h3 {
  font-size: 1.25rem;
  margin-bottom: 8px;
  letter-spacing: -0.02em;
}
p {
  font-size: 0.9rem;
  color: var(--text-secondary);
  line-height: 1.4;
}
.scale-large {
  grid-column: span 2;
  grid-row: span 2;
}
.scale-wide {
  grid-column: span 2;
}
.scale-tall {
  grid-row: span 2;
}
</style>
