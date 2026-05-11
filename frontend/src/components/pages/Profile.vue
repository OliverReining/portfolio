<script setup lang="ts">
import SectionBadge from '@/components/ui/SectionBadge.vue'
</script>
<template>
  <section id="profile">
    <SectionBadge tag="profile" title="Über mich" />
    <div>
      <p>
        Alles fing mit einem PC aus Schrott-Teilen an, den ich mit elf Jahren zusammengebaut habe.
        Seitdem ist die IT meine Leidenschaft. In meinem Job in der Logistik habe ich gemerkt, dass
        ich nicht nur Prozesse begleiten, sondern sie digital lösen will. Dort habe ich angefangen,
        das komplette Reporting mit VBA und PowerQuery zu automatisieren, was am Ende einen echten
        Unterschied für den Standort gemacht hat.
      </p>
      <p>
        Das war der Moment, in dem ich mich für die Umschulung zum Fachinformatiker entschieden
        habe. Heute kombiniere ich diese praktische Erfahrung in der Prozessoptimierung mit modernen
        Technologien wie Vue.js und C#. Egal ob es um KI-gestützte Workflows mit n8n oder den Aufbau
        einer eigenen Server-Infrastruktur auf Proxmox geht, ich entwickle am liebsten Werkzeuge,
        die echte Probleme lösen.
      </p>
    </div>
  </section>
</template>
<style scoped>
p {
  font-size: 1.25rem;
  color: var(--text-secondary);
  max-width: 800px;
  margin-bottom: 24px;
}

strong {
  color: var(--text-primary);
}
</style>
