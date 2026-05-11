<script setup lang="ts">
import SectionBadge from './ui/SectionBadge.vue'
</script>
<template>
  <SectionBadge tag="01 // profile" title="Über mich" />
  <div>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo labore corporis odit, ratione
      voluptates omnis tempore aliquid sunt rerum cum quia ea iste placeat quas enim totam eos
      debitis quam.
    </p>
    <p>
      <strong>Lorem ipsum</strong> dolor sit amet consectetur adipisicing elit. Fuga ex dicta
      magnam, hic quam tempore, est distinctio et alias omnis dolorem ab culpa earum ad tempora
      reprehenderit animi repellendus cumque.
    </p>
  </div>
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
