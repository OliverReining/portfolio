<script setup lang="ts">
const currentYear = new Date().getFullYear()
const email = 'oliver.reining@gmail.com'
</script>
<template>
  <footer>
    <h2>INITIATE<br />SEQUENCE</h2>
    <a href="mailto:oliver.reining@gmail.com">{{ email }}</a>
    <a href="https://github.com/oliverreining" target="_blank">github</a>
    <a href="https://www.linkedin.com/in/oliver-reining-a379bb2b4/" target="_blank">linkedin</a>
  </footer>
</template>
<style scoped>
footer {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  height: var(--footer-height);
  background: var(--accent);
  color: #000;
  z-index: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
}

h2 {
  font-size: clamp(5rem, 15vw, 15rem);
  font-weight: 800;
  line-height: 0.8;
  margin-bottom: 5vh;
}

h2:hover {
  color: var(--text-primary);
  transition: color 0.5s;
}
a {
  text-transform: uppercase;
  color: var(--text-secondary);
  margin-top: 20px;
}
</style>
