<script setup lang="ts">
defineProps<{
  category: string
  title: string
  description: string
  codeSnippet?: string
  index: number
}>()
</script>

<template>
  <div class="card" :style="{ top: `calc(100px + ${index * 24}px)` }">
    <div class="info">
      <span class="category">{{ category }}</span>
      <h3>{{ title }}</h3>
      <p>{{ description }}</p>
    </div>
    <div class="preview">
      <div class="window-header">
        <div class="window-controls">
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="window-title">main.ts</div>
      </div>
      <div class="code-editor">
        <code v-if="codeSnippet" class="code-content">{{ codeSnippet }}</code>
        <div v-else class="placeholder">Terminal Preview coming soon...</div>
      </div>
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
  color: var(--text-primary);
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
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
}

.window-header {
  height: 40px;
  background: #111;
  display: flex;
  align-items: center;
  padding: 0 16px;
  border-bottom: 1px solid var(--glass-border);
}

.window-controls {
  display: flex;
  gap: 6px;
}

.window-controls span {
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: #333;
}

.window-title {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  font-family: var(--font-mono);
  font-size: 0.7rem;
  color: var(--text-muted);
  text-transform: lowercase;
}

.code-editor {
  padding: 24px;
  flex: 1;
  display: flex;
  align-items: flex-start;
}

.code-content {
  color: #888;
  font-family: var(--font-mono);
  font-size: 0.9rem;
  line-height: 1.6;
  white-space: pre-wrap;
  word-break: break-all;
  border-left: 2px solid var(--accent);
  padding-left: 20px;
}

.placeholder {
  color: var(--text-muted);
  font-size: 0.85rem;
  font-family: var(--font-mono);
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
    margin-bottom: 80px;
    padding: 32px;
  }

  h3 {
    font-size: 2rem;
  }
}
</style>
