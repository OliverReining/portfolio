<script setup lang="ts">
defineProps<{
  date: string
  title: string
  content: string
}>()
</script>

<template>
  <div>
    <span>{{ date }}</span>
    <h3>{{ title }}</h3>
    <p>{{ content }}</p>
  </div>
</template>

<style scoped>
div {
  position: relative;
  padding-left: 48px;
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
