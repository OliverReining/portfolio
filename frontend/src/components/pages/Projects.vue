<script setup lang="ts">
import SectionBadge from '@/components/ui/SectionBadge.vue'
import ProjectCard from '@/components/ui/ProjectCard.vue'

interface Project {
  category: string
  title: string
  description: string
  insightType: 'code' | 'terminal' | 'system'
  insightTitle: string
  content: string
}

const projects: Project[] = [
  {
    category: 'Automation & AI',
    title: 'LLM Orchestration Tool',
    description:
      'Ein dynamischer Prompt-Generator mit Variablen-Injection zur Skalierung von Content-Workflows. Ermöglicht die strukturierte Erstellung von SEO-optimierten Texten durch Integration von Custom-GPT-Instruktionen.',
    insightType: 'code',
    insightTitle: 'generator.ts',
    content: `const prompt = (vars) => {
  return render('template.md', {
    ...vars,
    context: 'SEO_OPTIMIZED'
  });
};`,
  },
  {
    category: 'Infrastructure',
    title: 'Home Lab & PVE Cluster',
    description:
      'Zentralisierte Hosting-Umgebung auf Basis von Proxmox. Management von Microservices via Docker, automatisierte Backup-Strategien und sicherer Fernzugriff für private Cloud-Dienste und VPN.',
    insightType: 'terminal',
    insightTitle: 'pve-boot.log',
    content: `[ OK ] Started PVE API Proxy.
[ OK ] Found 4 ZFS Pools.
[ OK ] Cluster 'HomeLab' online.
> 12 VMs running
> 8 Containers online`,
  },
  {
    category: 'Automation',
    title: 'AI-Powered Mail Butler',
    description:
      'Intelligente E-Mail-Orchestrierung via n8n. Automatische Sortierung von Newslettern und Generierung wöchentlicher KI-Zusammenfassungen der wichtigsten Inhalte mittels LLM.',
    insightType: 'system',
    insightTitle: 'workflow.json',
    content: `SOURCE: IMAP_INBOX
LOGIC: n8n_Node_LLM_Summary
OUTPUT: Weekly_Digest.pdf
RECURRENCE: Every Monday 08:00`,
  },
  {
    category: 'Data Engineering',
    title: 'Automated Lead Management',
    description:
      'Ablösung von fehleranfälligen Google Sheets durch eine normalisierte PostgreSQL-Datenbank. Automatisierung des Datenflusses von der Lead-Quelle bis zum Kampagnen-Upload mittels n8n-Workflows.',
    insightType: 'code',
    insightTitle: 'schema.sql',
    content: `CREATE TABLE leads (
  id UUID PRIMARY KEY,
  source VARCHAR(255),
  status lead_status,
  created_at TIMESTAMP
);`,
  },
  {
    category: 'Hardware & OS',
    title: 'Custom System Engineering',
    description:
      'Konzeption und Bau von optimierten Workstations und Office-Systemen. Fokus auf Linux-Umgebungen und hochperformante Entwicklungs-Setups via Windows und WSL2.',
    insightType: 'terminal',
    insightTitle: 'system-info',
    content: `CPU: Ryzen 9 5950X
RAM: 64GB ECC
OS: Debian 12 (via WSL2)
DISK: NVMe RAID 1`,
  },
]
</script>

<template>
  <section id="projects">
    <SectionBadge tag="projects" title="Technical Projects." />
    <div class="projects-stack">
      <ProjectCard
        v-for="(project, index) in projects"
        :key="project.title"
        v-bind="project"
        :index="index"
      />
    </div>
  </section>
</template>

<style scoped>
.projects-stack {
  display: flex;
  flex-direction: column;
}
</style>
