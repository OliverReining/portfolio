<script setup lang="ts">
import { onMounted, onUnmounted, ref } from 'vue'

const activeSection = ref('profile')
const isMenuOpen = ref(false)
let obs: IntersectionObserver | null = null

const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value
  if (isMenuOpen.value) {
    document.body.style.overflow = 'hidden'
  } else {
    document.body.style.overflow = ''
  }
}

const closeMenu = () => {
  isMenuOpen.value = false
  document.body.style.overflow = ''
}

onMounted(() => {
  const callback = (entries: IntersectionObserverEntry[]) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        activeSection.value = entry.target.id
      }
    })
  }
  obs = new IntersectionObserver(callback, {
    rootMargin: '-20% 0px -70% 0px',
    threshold: 0,
  })

  document.querySelectorAll('section[id]').forEach((section) => {
    obs?.observe(section)
  })
})

onUnmounted(() => {
  obs?.disconnect()
  document.body.style.overflow = ''
})

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
</script>

<template>
  <button class="menu-toggle" :class="{ 'is-active': isMenuOpen }" @click="toggleMenu">
    <div class="hamburger">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </button>

  <Transition name="fade">
    <div v-if="isMenuOpen" class="backdrop" @click="closeMenu"></div>
  </Transition>

  <aside :class="{ 'is-open': isMenuOpen }">
    <div class="sidebar">
      <div>
        <div class="avatar">OR</div>
        <h2 class="name">Oliver Reining</h2>
        <p class="job-title">Fullstack Developer | Automation & Infrastructure</p>

        <nav>
          <a
            v-for="link in navLinks"
            :key="link.id"
            :href="`#${link.id}`"
            :class="{ active: activeSection === link.id }"
            @click="closeMenu"
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

<style scoped>
aside {
  flex: 0 0 var(--sidebar-width);
  min-height: 600px;
  height: calc(100vh - 120px);
  position: sticky;
  top: 60px;
  transition: transform 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.sidebar {
  background: var(--glass-bg);
  backdrop-filter: blur(24px);
  -webkit-backdrop-filter: blur(24px);
  border: 1px solid var(--glass-border);
  border-radius: 32px;
  padding: 48px;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  overflow-y: auto;
  scrollbar-width: none;
}

.sidebar::-webkit-scrollbar {
  display: none;
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
  color: var(--text-primary);
}
.menu-toggle {
  display: none;
  position: fixed;
  top: 24px;
  right: 24px;
  z-index: 200;
  background: var(--glass-bg);
  backdrop-filter: blur(12px);
  border: 1px solid var(--glass-border);
  width: 48px;
  height: 48px;
  border-radius: 12px;
  cursor: pointer;
  padding: 0;
  align-items: center;
  justify-content: center;
}

.hamburger {
  width: 20px;
  height: 14px;
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.hamburger span {
  display: block;
  width: 100%;
  height: 2px;
  background: var(--text-primary);
  border-radius: 2px;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.menu-toggle.is-active .hamburger span:nth-child(1) {
  transform: translateY(6px) rotate(45deg);
}
.menu-toggle.is-active .hamburger span:nth-child(2) {
  opacity: 0;
}
.menu-toggle.is-active .hamburger span:nth-child(3) {
  transform: translateY(-6px) rotate(-45deg);
}

.backdrop {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background: rgba(0, 0, 0, 0.6);
  backdrop-filter: blur(4px);
  z-index: 150;
}

@media (max-width: 1024px) {
  .menu-toggle {
    display: flex;
  }

  aside {
    position: fixed;
    top: 0;
    left: 0;
    width: 320px;
    height: 100vh;
    z-index: 160;
    transform: translateX(-100%);
    padding: 12px;
  }

  aside.is-open {
    transform: translateX(0);
  }

  .sidebar {
    border-radius: 0 24px 24px 0;
    padding: 40px;
  }
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
