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
import {resetaQuizState} from '../iniciar_jogo/jogo'

let onChange = null
let onClick = null

function getSelect() {
  return document.getElementById('categoria')
}



function getIniciarLink() {
  const links = Array.from(document.querySelectorAll('a'))
  return links.find(el =>
    el.getAttribute('href')?.endsWith('/iniciar-jogo') ||
    el.textContent?.trim().toUpperCase() === 'INICIAR JOGO'
  ) || null
}

async function setCategoria(val) {
  const cat = val
  console.log("Em setCategoria: ", val)
  // 1) Persistência local + atualização do link (usando URL API)
  localStorage.setItem('quiz_categoria', cat)
  const link = getIniciarLink()
  if (link) {
    try {
      const url = new URL(link.href, window.location.origin) // cobre href relativo
      url.searchParams.set('categoria', cat)
      link.href = url.toString()
    } catch {
      // fallback simples se href for algo muito custom
      const base = (link.href || '').split('?')[0]
      link.href = `${base}?categoria=${encodeURIComponent(cat)}`
    }
  }

  try {
    const resp = await fetch('http://localhost/Jogo_milh-o/back/routes/categoria.php', {
      method: 'PUT',
      credentials: 'include',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ categoria: cat }),
    })



    if (!resp.ok) {
      console.warn('Falha ao salvar categoria no back:', resp.status)
    }
  } catch (err) {
    console.warn('Erro na requisição de categoria:', err)
  }
}

async function getCategoria() {
  try {
    const resp = await fetch('http://localhost/Jogo_milh-o/back/routes/categoria.php', {
      method: 'GET',
      credentials: 'include',
      headers: {
        'Accept': 'application/json'
      }
    });

    if (!resp.ok) {
      throw new Error(`Erro na requisição: ${resp.status}`);
    }

    const data = await resp.json();
    
    return data;
  } catch (err) {
    
    return null;
  }
}


onMounted(async () => {
  await nextTick()
  const select = getSelect()
  const link = getIniciarLink()
  resetaQuizState();
  if (!select || !link) return

  

  const categoriaAtual = await getCategoria();  
  select.value = categoriaAtual.categoria;


  onChange = () => setCategoria(select.value)
  select.addEventListener('change', onChange)

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