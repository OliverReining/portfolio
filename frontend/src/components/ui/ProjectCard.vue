<script setup lang="ts">
defineProps<{
  category: string
  title: string
  description: string
  codeSnippet?: string
}>()
</script>

<template>
  <div>
    <span>{{ category }}</span>
    <h3>{{ title }}</h3>
    <p>{{ description }}</p>
    <code>{{ codeSnippet }}</code>
  </div>
</template>

<style scoped>
div {
  position: sticky;
  top: 100px;
  background: #0d0d0f;
  border: 1px solid var(--glass-border);
  border-radius: 32px;
  padding: 50px;
  margin-bottom: 120px;
  display: grid;
  grid-template-columns: 1.2fr 1fr;
  gap: 60px;
  box-shadow: 0 -30px 60px rgba(0, 0, 0, 0.5);
}
span {
  font-family: var(--font-mono);
  color: var(--accent);
}
h3 {
  font-size: 2.5rem;
  margin: 20px 0;
}
p {
  color: var(--text-secondary);
  margin-bottom: 32px;
}
</style>
