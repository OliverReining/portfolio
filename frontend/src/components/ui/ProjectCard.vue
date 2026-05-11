<script setup lang="ts">
defineProps<{
  category: string
  title: string
  description: string
  codeSnippet?: string
}>()
</script>

<template>
  <div class="card">
    <div class="info">
      <span class="category">{{ category }}</span>
      <h3>{{ title }}</h3>
      <p>{{ description }}</p>
    </div>
    <div class="preview">
      <div class="window-controls">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <code v-if="codeSnippet">{{ codeSnippet }}</code>
      <div v-else class="placeholder">Preview coming soon...</div>
    </div>
  </div>
</template>

<style scoped>
.card {
  z-index: 10;
  position: sticky;
  top: 100px;
  background: var(--bg-surface);
  border: 1px solid var(--glass-border);
  border-radius: 32px;
  padding: 60px;
  margin-bottom: 120px;
  display: grid;
  grid-template-columns: 1fr 1.2fr;
  gap: 60px;
  box-shadow: 0 -30px 60px rgba(0, 0, 0, 0.5);
  backdrop-filter: blur(20px);
}

.category {
  font-family: var(--font-mono);
  color: var(--accent);
  text-transform: uppercase;
  font-size: 0.8rem;
  letter-spacing: 0.1em;
}

h3 {
  font-size: 2.5rem;
  margin: 20px 0;
  letter-spacing: -0.04em;
}

p {
  color: var(--text-secondary);
  font-size: 1.1rem;
  line-height: 1.6;
}

.preview {
  background: #050505;
  border: 1px solid var(--glass-border);
  border-radius: 16px;
  padding: 24px;
  font-family: var(--font-mono);
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
}

.window-controls {
  display: flex;
  gap: 8px;
  margin-bottom: 16px;
}

.window-controls span {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background: #333;
}

code {
  color: var(--text-secondary);
  font-size: 0.9rem;
  white-space: pre-wrap;
  word-break: break-all;
}

.placeholder {
  color: var(--text-muted);
  font-size: 0.9rem;
  margin-top: 20px;
}

@media (max-width: 1280px) {
  .card {
    grid-template-columns: 1fr;
    gap: 40px;
    padding: 40px;
  }
}

@media (max-width: 1024px) {
  .card {
    top: 40px;
  }
}
</style>
