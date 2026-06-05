<script setup lang="ts">
import { ref, onMounted, onUnmounted, computed } from 'vue'

const props = defineProps<{
  title: string
  description?: string
}>()

const cardRef = ref<HTMLElement | null>(null)

// Technical ID based on title for the "Blueprint" look
const techId = computed(() => {
  return `ID-${props.title.substring(0, 3).toUpperCase()}-${Math.floor(Math.random() * 900 + 100)}`
})

const handleMouseMove = (e: MouseEvent) => {
  if (!cardRef.value) return
  const rect = cardRef.value.getBoundingClientRect()
  const x = e.clientX - rect.left
  const y = e.clientY - rect.top
  cardRef.value.style.setProperty('--mouse-x', `${x}px`)
  cardRef.value.style.setProperty('--mouse-y', `${y}px`)
}

onMounted(() => {
  window.addEventListener('mousemove', handleMouseMove)
})

onUnmounted(() => {
  window.removeEventListener('mousemove', handleMouseMove)
})
</script>

<template>
  <div ref="cardRef" class="blueprint-card">
    <div class="blueprint-content">
      <div class="blueprint-header">
        <span class="tech-id">{{ techId }}</span>
        <div class="header-line"></div>
      </div>

      <div class="body">
        <h3>{{ title }}</h3>
        <p>{{ description }}</p>
      </div>

      <div class="blueprint-footer">
        <div class="corner-accent"></div>
        <span class="status-code">0x7F_READY</span>
      </div>
    </div>

    <!-- Blueprint Grid Effect -->
    <div class="grid-overlay"></div>
    <div class="card-glow"></div>
  </div>
</template>

<style scoped>
.blueprint-card {
  background: #080809;
  border: 1px solid var(--glass-border);
  padding: 24px;
  position: relative;
  overflow: hidden;
  transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
  min-height: 200px;
  display: flex;
  flex-direction: column;
}

.blueprint-card:hover {
  border-color: var(--accent);
  box-shadow: 0 0 30px rgba(0, 229, 255, 0.1);
  transform: scale(1.02);
}

.blueprint-content {
  position: relative;
  z-index: 2;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.blueprint-header {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 24px;
}

.tech-id {
  font-family: var(--font-mono);
  font-size: 0.6rem;
  color: var(--accent);
  opacity: 0.6;
}

.header-line {
  flex: 1;
  height: 1px;
  background: var(--glass-border);
}

.body h3 {
  font-size: 1.2rem;
  margin-bottom: 12px;
  letter-spacing: -0.01em;
  color: var(--text-primary);
}

.body p {
  font-size: 0.85rem;
  color: var(--text-secondary);
  line-height: 1.6;
}

.blueprint-footer {
  margin-top: 32px;
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
}

.corner-accent {
  width: 12px;
  height: 12px;
  border-left: 1px solid var(--accent);
  border-bottom: 1px solid var(--accent);
  opacity: 0.4;
}

.status-code {
  font-family: var(--font-mono);
  font-size: 0.55rem;
  color: var(--text-muted);
  letter-spacing: 0.1em;
}

.grid-overlay {
  position: absolute;
  inset: 0;
  background-image: radial-gradient(var(--glass-border) 0.5px, transparent 0.5px);
  background-size: 16px 16px;
  opacity: 0.1;
  pointer-events: none;
}

.card-glow {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: radial-gradient(
    400px circle at var(--mouse-x, 50%) var(--mouse-y, 50%),
    rgba(0, 229, 255, 0.08) 0%,
    transparent 60%
  );
  opacity: 0;
  transition: opacity 0.3s;
  pointer-events: none;
}

.blueprint-card:hover .card-glow {
  opacity: 1;
}

.blueprint-card:hover .grid-overlay {
  opacity: 0.2;
}
</style>
