<template>
  <aside>
    <div class="sidebar">
      <div>
        <div class="avatar">OR</div>
        <h2 class="name">Oliver Reining</h2>
        <p class="job-title">Software Architect</p>

        <nav>
          <a
            v-for="link in navLinks"
            :key="link.id"
            :href="`#${link.id}`"
            :class="{ active: activeSection === link.id }"
          >
            <span>{{ link.label }}</span>
          </a>
        </nav>
      </div>
      <div class="social-links">
        <a
          v-for="link in socialLinks"
          :key="link.label"
          :href="link.url"
          target="_blank"
          rel="noopener noreferrer"
        >
          <span>{{ link.label }}</span>
        </a>
      </div>
    </div>
  </aside>
</template>

<script setup lang="ts">
import { onMounted, onUnmounted, ref } from 'vue'

const navLinks = [
  { id: 'profile', label: 'profile' },
  { id: 'competencies', label: 'competencies' },
  { id: 'experience', label: 'experience' },
  { id: 'projects', label: 'projects' },
]
const socialLinks = [
  { label: 'EMAIL', url: 'mailto:oliver.reining@gmail.com' },
  { label: 'GITHUB', url: 'https://github.com/' },
  { label: 'LINKEDIN', url: 'https://linkedin.com/' },
  { label: 'SHOW CV', url: '/cv.pdf' },
]

const activeSection = ref('profile')
let obs: IntersectionObserver | null = null

onMounted(() => {
  const callback = (entries: IntersectionObserverEntry[]) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting && entry.intersectionRatio > 0.6) {
        activeSection.value = entry.target.id
      }
    })
  }
  obs = new IntersectionObserver(callback, {
    rootMargin: '0px',
    threshold: 0.6,
  })

  document.querySelectorAll('section[id]').forEach((section) => {
    obs?.observe(section)
  })
})

onUnmounted(() => {
  obs?.disconnect()
})
</script>

<style scoped>
aside {
  flex: 0 0 var(--sidebar-width);
  height: 80vh;
  position: sticky;
  top: 0;
}
.sidebar {
  background: var(--glass-bg);
  backdrop-filter: blur(24px);
  -webkit-backdrop-filter: blur(24px);
  border: 1px solid var(--glass-border);
  border-radius: 32px;
  padding: 48px;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.avatar {
  width: 64px;
  height: 64px;
  background: #000;
  border: 1px solid var(--accent);
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: var(--font-mono);
  font-weight: bold;
  color: var(--accent);
  margin-bottom: 32px;
  position: relative;
  overflow: hidden;
}
.name {
  font-size: 2rem;
  letter-spacing: -0.04em;
  margin-bottom: 12px;
}
.job-title {
  font-family: var(--font-mono);
  color: var(--accent);
  font-size: 0.8rem;
  margin-bottom: 32px;
}
nav a {
  display: flex;
  align-items: center;
  gap: 20px;
  color: var(--text-muted);
  text-decoration: none;
  font-family: var(--font-mono);
  font-size: 0.8rem;
  text-transform: uppercase;
  margin-bottom: 24px;
  transition: 0.3s;
}
nav a:hover,
nav a.active {
  color: var(--text-primary);
}
nav span {
  width: 0;
  height: 1px;
  background: var(--accent);
  transition: 0.3s;
}
nav span:hover,
nav a.active span {
  width: 20px;
}
.social-links {
  display: flex;
  flex-direction: column;
  gap: 8px;
}
.social-links a {
  font-family: var(--font-mono);
  font-size: 0.7rem;
  color: var(--text-muted);
  text-decoration: none;
  transition: 0.3s;
}
.social-links a:hover {
  color: var(--accent);
}
</style>
