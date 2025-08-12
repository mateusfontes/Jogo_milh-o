<template>
  <section>
        <div class="img">
            <img src="../../assets/imgs/show-milhão.png" alt="">
        </div>

        <div class="opcao">
            <router-link to="/cadastrar-perguntas">CADASTRAR PERGUNTAS</router-link>
            <router-link to="/iniciar-jogo">INICIAR JOGO</router-link>
            <select id="categoria" name="categoria" required>
                <option value="conhecimentos-gerais">CONHECIMENTOS GERAIS</option>
                <option value="raciocinio-logico">RACIOCÍNIO LÓGICO</option>
                <option value="portugues">PORTUGUÊS / GRAMÁTICA</option>
                <option value="matematica">MATEMÁTICA</option>
                <option value="geografia">GEOGRAFIA</option>
                <option value="historia">HISTÓRIA</option>
                <option value="ciencias">CIÊNCIAS</option>
                <option value="cultura-pop">CULTURA POP / ENTRETENIMENTO</option>
                <option value="esportes">ESPORTES</option>
                <option value="tecnologia">TECNOLOGIA / INOVAÇÃO</option>
                <option value="curiosidades">CURIOSIDADES / MISTÉRIOS</option>
            </select>
        </div>
    </section>
</template>

<script setup>
import { onMounted, onBeforeUnmount, nextTick } from 'vue'

let onChange = null
let onClick = null

function getSelect() {
  return document.getElementById('categoria')
}
function getIniciarLink() {
  const links = Array.from(document.querySelectorAll('a'))
  return links.find(
    el => el.getAttribute('href')?.endsWith('/iniciar-jogo') ||
          el.textContent?.trim().toUpperCase() === 'INICIAR JOGO'
  ) || null
}
function setCategoria(val) {
  const cat = val || 'conhecimentos-gerais'
  localStorage.setItem('quiz_categoria', cat)
  const link = getIniciarLink()
  if (link) {
    const base = link.href.split('?')[0]
    link.href = `${base}?categoria=${encodeURIComponent(cat)}`
  }
}

onMounted(async () => {
  await nextTick()
  const select = getSelect()
  const link = getIniciarLink()
  if (!select || !link) return

  setCategoria(select.value)               // valor inicial

  onChange = () => setCategoria(select.value)
  select.addEventListener('change', onChange)

  // só garante que a URL está com a categoria atual antes de navegar
  onClick = (e) => {
    const a = e.target.closest('a')
    if (!a) return
    const isIniciar = a.getAttribute('href')?.includes('/iniciar-jogo') ||
                      a.textContent?.trim().toUpperCase() === 'INICIAR JOGO'
    if (!isIniciar) return
    setCategoria(select.value)
  }
  document.addEventListener('click', onClick)
})

onBeforeUnmount(() => {
  const select = getSelect()
  if (select && onChange) select.removeEventListener('change', onChange)
  if (onClick) document.removeEventListener('click', onClick)
})
</script>


<style scoped>
@import url('../../assets/css/global.css');
@import url('../../assets/css/pagina_inicial.css');
</style>