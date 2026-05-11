<script setup lang="ts">
defineProps<{
  scale?: 'tall' | 'wide' | 'large'
  title: string
  description?: string
  category?: string
}>()
</script>

<template>
  <div class="card" :class="[scale && `scale-${scale}`]">
    <div class="card-content">
      <span v-if="category" class="category">{{ category }}</span>
      <h3>{{ title }}</h3>
      <p>{{ description }}</p>
    </div>
    <div class="card-glow"></div>
  </div>
</template>

<style scoped>
.card {
  background: var(--bg-surface);
  border: 1px solid var(--glass-border);
  border-radius: 24px;
  padding: 32px;
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  height: 100%;
}

.card:hover {
  border-color: var(--accent);
  transform: translateY(-4px) scale(1.01);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
}

.card-content {
  position: relative;
  z-index: 2;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
}

.category {
  font-family: var(--font-mono);
  font-size: 0.7rem;
  color: var(--accent);
  text-transform: uppercase;
  letter-spacing: 0.1em;
  margin-bottom: 12px;
  opacity: 0.7;
}

h3 {
  font-size: 1.4rem;
  margin-bottom: 12px;
  letter-spacing: -0.02em;
  color: var(--text-primary);
}

p {
  font-size: 0.95rem;
  color: var(--text-secondary);
  line-height: 1.5;
  margin: 0;
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

.card-glow {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: radial-gradient(
    circle at var(--mouse-x, 50%) var(--mouse-y, 50%),
    rgba(0, 229, 255, 0.05) 0%,
    transparent 70%
  );
  opacity: 0;
  transition: opacity 0.3s;
  pointer-events: none;
}

.card:hover .card-glow {
  opacity: 1;
}

.scale-large h3 {
  font-size: 2rem;
}

.scale-large p {
  font-size: 1.1rem;
}
</style>
