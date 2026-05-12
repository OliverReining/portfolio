<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

const isHidden = ref(false)

const handleScroll = () => {
  if (window.scrollY > 10) {
    isHidden.value = true
  } else {
    isHidden.value = false
  }
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<template>
  <!-- HERO LAYER -->
  <div id="hero-layer" :class="{ hidden: isHidden }">
    <h1>
      <span>Oliver</span>
      <span class="outlined">Reining</span>
      <span>Software Architect.</span>
    </h1>
    <div class="status">
      <span>Available for Projects</span>
      <span>Scroll to Enter</span>
    </div>
  </div>
</template>

<style scoped>
#hero-layer {
  position: fixed;
  inset: 0;
  background: #fff;
  color: #000;
  z-index: 200;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 0 10vw;
  transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
  will-change: transform;
}

#hero-layer.hidden {
  transform: translateY(-100%);
}

h1 {
  font-size: clamp(3rem, 12vw, 12rem);
  font-weight: 800;
  line-height: 0.85;
  letter-spacing: -0.05em;
  text-transform: uppercase;
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
}
</style>
