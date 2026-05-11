<script setup lang="ts"></script>
<template>
  <div class="techstack-container">
    <div class="techstack-content">
      <span>ASP.NET Core</span><span>Vue.js</span><span>C#</span><span>Java</span
      ><span>JavaScript</span><span>TypeScript</span><span>Docker (Compose)</span
      ><span>PostgreSQL</span><span>MySQL</span><span>TailwindCSS</span>
    </div>
  </div>
</template>
<style scoped>
.techstack-container {
  width: 100%;
  background: var(--accent);
  color: #000;
  padding: 14px 0;
  overflow: hidden;
  display: flex;
  white-space: nowrap;
  font-family: var(--font-mono);
  font-weight: 800;
  font-size: 0.9rem;
  position: sticky;
  top: 0;
  z-index: 150;
}
.techstack-content {
  display: flex;
  animation: scroll-left 30s linear infinite;
}
span {
  margin: 0 3rem;
  text-transform: uppercase;
  letter-spacing: 2px;
}

@keyframes scroll-left {
  0% {
    transform: translateX(0);
  }

  100% {
    transform: translateX(-50%);
  }
}
</style>
