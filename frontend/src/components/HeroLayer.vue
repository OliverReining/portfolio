<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

const isDismissed = ref(false)

const dismiss = () => {
  if (isDismissed.value) return
  isDismissed.value = true
  document.body.style.overflow = ''
}

const show = () => {
  if (!isDismissed.value) return
  isDismissed.value = false
  document.body.style.overflow = 'hidden'
  window.scrollTo(0, 0)
}

// Intent-based dismissal and re-activation
const handleWheel = (e: WheelEvent) => {
  if (!isDismissed.value && e.deltaY > 0) {
    dismiss()
  } else if (isDismissed.value && window.scrollY <= 0 && e.deltaY < -20) {
    show()
  }
}

const handleKey = (e: KeyboardEvent) => {
  const keys = ['Enter', ' ', 'ArrowDown', 'PageDown']
  if (keys.includes(e.key)) dismiss()
}

onMounted(() => {
  // Lock scroll on mount
  document.body.style.overflow = 'hidden'
  window.addEventListener('wheel', handleWheel, { passive: true })
  window.addEventListener('keydown', handleKey)
})

onUnmounted(() => {
  document.body.style.overflow = ''
  window.removeEventListener('wheel', handleWheel)
  window.removeEventListener('keydown', handleKey)
})
</script>

<template>
  <Transition name="hero-gate">
    <div v-if="!isDismissed" id="hero-layer" @click="dismiss" role="button" tabindex="0">
      <h1>
        <span>Oliver</span>
        <span class="outlined">Reining</span>
        <span>Software Engineer.</span>
      </h1>
      <div class="status">
        <span>Available for Projects</span>
        <span class="hint">Click or Scroll to Enter</span>
      </div>
    </div>
  </Transition>
</template>

<style scoped>
#hero-layer {
  position: fixed;
  inset: 0;
  background: #fff;
  color: #000;
  z-index: 500; /* Ensure it's above everything */
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 0 10vw;
  cursor: pointer;
  outline: none;
}

/* Transition Logic */
.hero-gate-enter-active,
.hero-gate-leave-active {
  transition: transform 0.8s cubic-bezier(0.16, 1, 0.3, 1);
}

.hero-gate-enter-from,
.hero-gate-leave-to {
  transform: translateY(-100%);
}

h1 {
  font-size: clamp(3rem, 12vw, 12rem);
  font-weight: 800;
  line-height: 0.85;
  letter-spacing: -0.05em;
  text-transform: uppercase;
  pointer-events: none;
}

h1 span {
  display: block;
  overflow: hidden;
}

.outlined {
  color: transparent;
  -webkit-text-stroke: 1.5px #000;
}

.status {
  position: absolute;
  bottom: 40px;
  left: 0;
  width: 100%;
  padding: 0 10vw;
  display: flex;
  justify-content: space-between;
  font-family: var(--font-mono);
  font-size: 0.85rem;
  text-transform: uppercase;
  pointer-events: none;
}

.hint {
  color: #000;
  animation: pulse 2s infinite;
}

@keyframes pulse {
  0%,
  100% {
    opacity: 1;
  }
  50% {
    opacity: 0.4;
  }
}
</style>
