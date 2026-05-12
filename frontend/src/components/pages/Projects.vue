<script setup lang="ts">
import SectionBadge from '@/components/ui/SectionBadge.vue'
import ProjectCard from '@/components/ui/ProjectCard.vue'

interface Project {
  category: string
  title: string
  description: string
  codeSnippet?: string
}

const Projects: Project[] = [
  {
    category: 'Automation & AI',
    title: 'LLM Orchestration Tool',
    description:
      'Ein dynamischer Prompt-Generator mit Variablen-Injection zur Skalierung von Content-Workflows. Ermöglicht die strukturierte Erstellung von SEO-optimierten Texten durch Integration von Custom-GPT-Instruktionen.',
    codeSnippet: '{{variablen}} | PowerQuery | API',
  },
  {
    category: 'Infrastruktur',
    title: 'Home Lab & PVE Cluster',
    description:
      'Zentralisierte Hosting-Umgebung auf Basis von Proxmox. Management von Microservices via Docker, automatisierte Backup-Strategien und sicherer Fernzugriff für private Cloud-Dienste und VPN.',
    codeSnippet: 'Proxmox | Docker | Tailscale | Debian',
  },
  {
    category: 'Automation',
    title: 'AI-Powered Mail Butler',
    description:
      'Intelligente E-Mail-Orchestrierung via n8n. Automatische Sortierung von Newslettern und Generierung wöchentlicher KI-Zusammenfassungen der wichtigsten Inhalte mittels LLM.',
    codeSnippet: 'n8n | IMAP | LLM | Docker',
  },
  {
    category: 'Data Engineering',
    title: 'Automated Lead Management',
    description:
      'Ablösung von fehleranfälligen Google Sheets durch eine normalisierte PostgreSQL-Datenbank. Automatisierung des Datenflusses von der Lead-Quelle bis zum Kampagnen-Upload mittels n8n-Workflows.',
    codeSnippet: 'n8n | PostgreSQL | API | k8s',
  },
  {
    category: 'Hardware & OS',
    title: 'Custom System Engineering',
    description:
      'Konzeption und Bau von optimierten Workstations und Office-Systemen. Fokus auf Linux-Umgebungen und hochperformante Entwicklungs-Setups via Windows und WSL2.',
    codeSnippet: 'Linux | WSL2 | Hardware Assembly',
  },
]
</script>
<template>
  <section id="projects">
    <SectionBadge tag="projects" title="Verified Codebases." />
    <ProjectCard
      v-for="(project, index) in Projects"
      :key="project.title"
      v-bind="project"
      :index="index"
    />
  </section>
</template>
<style scoped></style>
