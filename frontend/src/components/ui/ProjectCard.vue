<script setup lang="ts">
const props = defineProps<{
  category: string
  title: string
  description: string
  insightType: 'code' | 'terminal' | 'system'
  insightTitle: string
  content: string
  index: number
}>()

// Visual logic for dynamic colors based on category
const categoryColor =
  {
    'Automation & AI': '#00e5ff',
    Infrastructure: '#ff0055',
    Automation: '#00ffaa',
    'Data Engineering': '#ffaa00',
    'Hardware & OS': '#7000ff',
  }[props.category] || '#00e5ff'
</script>

<template>
  <div
    class="card"
    :style="{
      top: `calc(100px + ${index * 24}px)`,
      '--accent-local': categoryColor,
    }"
  >
    <div class="info">
      <span class="category">{{ category }}</span>
      <h3>{{ title }}</h3>
      <p>{{ description }}</p>

      <div class="meta-pills">
        <span class="pill">{{ insightType }}</span>
        <span class="pill">STABLE</span>
      </div>
    </div>

    <div class="preview" :class="insightType">
      <div class="window-header">
        <div class="window-controls">
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="window-title">{{ insightTitle }}</div>
      </div>

      <div class="insight-body">
        <div v-if="insightType === 'terminal'" class="terminal-prompt">>_</div>
        <code class="content-text">{{ content }}</code>
      </div>

      <!-- Background Glow Decoration -->
      <div class="inner-glow"></div>
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
  /* Fixed margin & min-height to prevent "peeking" through */
  margin-bottom: 20vh;
  min-height: 500px;

  display: grid;
  grid-template-columns: 1fr 1.2fr;
  gap: 60px;
  box-shadow: 0 -30px 100px rgba(0, 0, 0, 0.8);
  backdrop-filter: blur(40px);
  transition: transform 0.3s ease;
}

/* Fix for the border peeking: The card below must be fully covered */
.card::after {
  content: '';
  position: absolute;
  bottom: -2px;
  left: 0;
  right: 0;
  height: 2px;
  background: var(--bg-surface);
  z-index: 5;
}

.category {
  font-family: var(--font-mono);
  color: var(--accent-local);
  text-transform: uppercase;
  font-size: 0.8rem;
  letter-spacing: 0.15em;
  font-weight: 600;
}

h3 {
  font-size: 2.8rem;
  margin: 24px 0;
  letter-spacing: -0.04em;
  color: var(--text-primary);
  line-height: 1.1;
}

p {
  color: var(--text-secondary);
  font-size: 1.15rem;
  line-height: 1.7;
  margin-bottom: 32px;
}

.meta-pills {
  display: flex;
  gap: 12px;
}

.pill {
  font-family: var(--font-mono);
  font-size: 0.65rem;
  padding: 6px 12px;
  border: 1px solid var(--glass-border);
  border-radius: 100px;
  color: var(--text-muted);
  text-transform: uppercase;
}

.preview {
  background: #020203;
  border: 1px solid var(--glass-border);
  border-radius: 20px;
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  box-shadow: inset 0 0 50px rgba(0, 0, 0, 0.5);
}

.window-header {
  height: 44px;
  background: #0a0a0c;
  display: flex;
  align-items: center;
  padding: 0 20px;
  border-bottom: 1px solid var(--glass-border);
}

.window-controls {
  display: flex;
  gap: 8px;
}

.window-controls span {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background: #1a1a1c;
}

.window-title {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  font-family: var(--font-mono);
  font-size: 0.75rem;
  color: var(--text-muted);
}

.insight-body {
  padding: 32px;
  flex: 1;
  font-family: var(--font-mono);
  position: relative;
  z-index: 2;
}

.terminal-prompt {
  color: var(--accent-local);
  margin-bottom: 8px;
  font-weight: bold;
}

.content-text {
  color: var(--text-secondary);
  font-size: 0.95rem;
  line-height: 1.6;
  white-space: pre-wrap;
}

/* Type Specific Styles */
.terminal .content-text {
  color: #a3be8c; /* Terminal Green */
}

.system .content-text {
  color: #88c0d0; /* Blueprint Blue */
}

.inner-glow {
  position: absolute;
  bottom: -50px;
  right: -50px;
  width: 200px;
  height: 200px;
  background: radial-gradient(circle, var(--accent-local) 0%, transparent 70%);
  opacity: 0.15;
  filter: blur(40px);
  pointer-events: none;
}

@media (max-width: 1280px) {
  .card {
    grid-template-columns: 1fr;
    gap: 40px;
    padding: 40px;
    min-height: auto;
  }
}

@media (max-width: 1024px) {
  .card {
    top: 60px;
    margin-bottom: 100px;
  }
}
</style>
