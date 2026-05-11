<script setup lang="ts">
defineProps<{
  tag: string
  title: string
}>()
</script>

<template>
  <span>{{ tag }}</span>
  <h2>{{ title }}</h2>
</template>

<style scoped>
span {
  font-family: var(--font-mono);
  color: var(--accent);
  font-size: 0.75rem;
  letter-spacing: 0.3em;
  text-transform: uppercase;
  margin-bottom: 20px;
  display: block;
}

h2 {
  font-size: clamp(2.5rem, 5vw, 4rem);
  font-weight: 800;
  line-height: 1.1;
  margin-bottom: 40px;
  letter-spacing: -0.04em;
}
</style>
