<script setup lang="ts">
import SectionBadge from '@/components/ui/SectionBadge.vue'
import TimelineItem from '@/components/ui/TimelineItem.vue'

interface TimelineEntry {
  date: string
  title: string
  content: string
}

const timeline: TimelineEntry[] = [
  {
    date: '2024 - 2026',
    title: 'Fachinformatiker für Anwendungsentwicklung (Umschulung)',
    content:
      'Erfolgreicher Abschluss mit Fokus auf Software-Architektur und Datenbankdesign. Abschlussprojekt: Entwicklung einer automatisierten Lead-Management-Lösung mittels PostgreSQL und n8n-Workflows zur Ablösung von Legacy-Tabellenstrukturen.',
  },
  {
    date: '2018 - 2024',
    title: 'Stock Management & Automation Lead (ID Logistics / Amazon)',
    content:
      'Verantwortlich für die Bestandsintegrität und das Reporting. Entwicklung komplexer Automatisierungstools mit VBA und PowerQuery, die manuelle Prozesse am Standort nahezu vollständig digitalisierten. Beförderung zum Abteilungsleiter und Aufbau eines Optimierungs-Teams.',
  },
  {
    date: '2011 - Heute',
    title: 'Self-Taught Infrastructure & Self-Hosting',
    content:
      'Langjährige Erfahrung im Aufbau und der Wartung von IT-Infrastruktur. Betrieb eines Proxmox-Heimservers mit Fokus auf Containerisierung (Docker), Automatisierung (n8n), Netzwerksicherheit (VPN/Tailscale) und Linux-Administration.',
  },
]
</script>
<template>
  <section id="experience">
    <SectionBadge tag="experience" title="Beruflicher Werdegang" />
    <div class="timeline">
      <TimelineItem v-for="item in timeline" :key="item.date" v-bind="item" />
    </div>
  </section>
</template>
<style scoped>
.timeline {
  display: flex;
  flex-direction: column;
  gap: 48px;
  position: relative;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 7px;
  top: 0;
  bottom: 0;
  width: 1px;
  background: var(--glass-border);
}
</style>
