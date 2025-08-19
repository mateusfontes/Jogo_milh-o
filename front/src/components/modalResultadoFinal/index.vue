<template>
  <div
    v-if="show"
    class="modal-overlay"
    @click.self="close"
  >
    <div class="modal-content">
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  name: "ModalResultadoFinal",
  props: {
    show: {
      type: Boolean,
      default: false
    }
  },
  emits: ["update:show"]
};
</script>

<style scoped>
.modal-overlay {
  position: fixed;
  top: 0; 
  left: 0; 
  right: 0; 
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);

  display: flex;
  justify-content: center;
  align-items: center;

  z-index: 1000;
  
  pointer-events: auto;
}

.modal-content {
  background: white;
  padding: 1.5rem;
  border-radius: 8px;
  min-width: 300px;
  max-width: 90%;
  box-shadow: 0 4px 15px rgba(0,0,0,0.3);
  position: relative;
}

</style>
