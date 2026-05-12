<script setup lang="ts">
const email = 'oliver.reining@gmail.com'
</script>

<template>
  <footer>
    <a :href="`mailto:${email}`" class="initiate-link">
      <h2>INITIATE<br />SEQUENCE</h2>
    </a>
    <div class="social-links">
      <a href="https://github.com/oliverreining" target="_blank">github</a>
      <a href="https://www.linkedin.com/in/oliver-reining-a379bb2b4/" target="_blank">linkedin</a>
    </div>
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

.initiate-link {
  text-decoration: none;
  color: inherit;
  transition: transform 0.3s ease;
}

.initiate-link:hover {
  transform: scale(1.02);
}

h2 {
  font-size: clamp(3rem, 15vw, 15rem);
  font-weight: 800;
  line-height: 0.8;
  margin: 0;
  cursor: pointer;
}

.initiate-link:hover h2 {
  color: var(--text-primary);
  transition: color 0.5s;
}

.social-links {
  display: flex;
  gap: 32px;
  margin-top: 60px;
}

@media (max-width: 768px) {
  h2 {
    font-size: clamp(2.5rem, 18vw, 6rem);
  }
  
  .social-links {
    margin-top: 80px;
    gap: 24px;
  }
  
  footer {
    padding: 0 20px;
  }
}

.social-links a {
  text-transform: uppercase;
  color: #000;
  font-family: var(--font-mono);
  font-size: 0.9rem;
  text-decoration: none;
  opacity: 0.6;
  transition: opacity 0.3s;
}

.social-links a:hover {
  opacity: 1;
}
</style>
