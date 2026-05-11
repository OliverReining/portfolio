<script setup lang="ts"></script>

<template>
  <aside>
    <div class="sidebar">
      <div>
        <div class="avatar">OR</div>
        <h2 class="name">Oliver Reining</h2>
        <p class="job-title">Software Architect</p>

        <nav>
          <a href="#profile" class="active"><span>profile</span></a>
          <a href="#competencies"><span>competencies</span></a>
          <a href="#experience"><span>experience</span></a>
          <a href="#projects"><span>projects</span></a>
        </nav>
      </div>
      <div class="social-links">
        <div>EMAIL</div>
        <div>GITHUB</div>
        <div>LINKEDIN</div>
        <div>SHOW CV</div>
      </div>
    </div>
  </aside>
</template>

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
  height: 100%;
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
  font-family: var(--font-mono);
  font-size: 0.7rem;
  color: var(--text-muted);
  line-height: 2;
}
</style>
