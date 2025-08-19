<template>
  <body>
    <header>
      <h1>Painel Administrativo</h1>
      <p>Gerencie as perguntas do quiz</p>
    </header>

    <section class="cadastrar">
      <div class="conteudo">
        <h1>Cadastrar Nova Pergunta</h1>
        <p>Adicione uma nova pergunta ao banco de dados do quiz</p>

        <form id="form_pergunta" @submit.prevent="cadastrarPergunta">
          <div class="perguntas">
            <div class="area-texto">
              <h4>Texto da Pergunta</h4>
              <input 
                type="text" 
                name="pergunta" 
                placeholder="Digite a pergunta que deseja cadastrar" 
                v-model="pergunta.texto"
                required
              />
            </div>

            <h4>Alternativas</h4>

            <div class="alternativa">
              <h4 class="opcao">A</h4>
              <input 
                type="text" 
                name="altA" 
                placeholder="Digite a alternativa" 
                v-model="pergunta.altA"
                required
              />
            </div>

            <div class="alternativa">
              <h4 class="opcao">B</h4>
              <input 
                type="text" 
                name="altB" 
                placeholder="Digite a alternativa" 
                v-model="pergunta.altB"
                required
              />
            </div>

            <div class="alternativa">
              <h4 class="opcao">C</h4>
              <input 
                type="text" 
                name="altC" 
                placeholder="Digite a alternativa" 
                v-model="pergunta.altC"
                required
              />
            </div>

            <div class="alternativa">
              <h4 class="opcao">D</h4>
              <input 
                type="text" 
                name="altD" 
                placeholder="Digite a alternativa" 
                v-model="pergunta.altD"
                required
              />
            </div>

            <h4>dificuldade das perguntas</h4>
            <select id="dificuldade" name="dificuldade" v-model="pergunta.dificuldade" required>
              <option value="facil">Fácil - 10 pontos</option>
              <option value="medio">Médio - 20 pontos</option>
              <option value="dificil">Difícil - 40 pontos</option>
            </select>

            <h4>opção correta</h4>
            <select id="alternativa-correta" name="alternativa correta" v-model="pergunta.correta" required>
              <option value="A">A</option>
              <option value="B">B</option>
              <option value="C">C</option>
              <option value="D">D</option>
            </select>

            <h4>Categoria</h4>
            <select id="categoria" name="categoria" v-model="pergunta.categoria" required>
              <option value="conhecimentos-gerais">Conhecimentos Gerais</option>
              <option value="raciocinio-logico">Raciocínio Lógico</option>
              <option value="portugues">Português / Gramática</option>
              <option value="matematica">Matemática</option>
              <option value="geografia">Geografia</option>
              <option value="historia">História</option>
              <option value="ciencias">Ciências</option>
              <option value="cultura-pop">Cultura Pop / Entretenimento</option>
              <option value="esportes">Esportes</option>
              <option value="tecnologia">Tecnologia / Inovação</option>
              <option value="curiosidades">Curiosidades / Mistérios</option>
            </select>

            <button type="submit" class="botao-enviar" :disabled="loading">
              {{ loading ? 'Cadastrando...' : 'Cadastrar pergunta' }}
            </button>

            <p v-if="sucesso" style="color:green; margin-top:8px">{{ sucesso }}</p>
            <p v-if="erro" style="color:red; margin-top:8px">{{ erro }}</p>
          </div>
        </form>
      </div>
    </section>
  </body>
</template>

<script setup>
import { ref } from 'vue'

const API_URL = '/api/perguntas.php' // via vite.config.js → back/routes/perguntas.php

// estado do formulário
const pergunta = ref({
  texto: '',
  altA: '',
  altB: '',
  altC: '',
  altD: '',
  dificuldade: 'facil',              // opções: facil | medio | dificil
  correta: 'A',                      // A | B | C | D (a letra da correta)
  categoria: 'conhecimentos-gerais', // mantenha o slug que você usa no back
})

const loading = ref(false)
const sucesso = ref('')
const erro = ref('')

// mapeia para o que o back exige (FACIL|MEDIA|DIFICIL)
function normalizaDificuldade(d) {
  if (d === 'facil') return 'FACIL'
  if (d === 'medio') return 'MEDIA'
  return 'DIFICIL'
}

// validações simples de front
function valida(p) {
  if (!p.texto || !p.altA || !p.altB || !p.altC || !p.altD)
    return 'Preencha a pergunta e todas as alternativas.'
  const set = new Set([p.altA.trim(), p.altB.trim(), p.altC.trim(), p.altD.trim()])
  if (set.size < 4) return 'As alternativas devem ser diferentes entre si.'
  return null
}

// monta o payload que o PHP lê no json_decode(...): questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria
function buildPayload(p) {
  const mapa = { A: p.altA, B: p.altB, C: p.altC, D: p.altD }
  const corretaTexto = mapa[p.correta]
  const falsas = [p.altA, p.altB, p.altC, p.altD].filter(a => a !== corretaTexto)

  return {
    questao: p.texto,
    correta: corretaTexto,                 // texto da alternativa correta
    falsa1: falsas[0],
    falsa2: falsas[1],
    falsa3: falsas[2],
    dificuldade: normalizaDificuldade(p.dificuldade),
    categoria: p.categoria,
  }
}

// handler do submit (o template já deve ter: <form @submit.prevent="cadastrarPergunta">)
async function cadastrarPergunta() {
  erro.value = ''
  sucesso.value = ''

  const msg = valida(pergunta.value)
  if (msg) { erro.value = msg; return }

  loading.value = true
  try {
    const payload = buildPayload(pergunta.value)
    const res = await fetch(API_URL, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload),
      credentials: 'include', // mantém sessão do PHP, se necessário
    })

    // lê como texto para facilitar debug de erros do PHP
    const text = await res.text()
    let data = null
    try { data = JSON.parse(text) } catch(_) {}

    if (!res.ok || (data && data.erro)) {
      throw new Error((data && data.erro) || `Falha ao cadastrar (HTTP ${res.status})`)
    }

    sucesso.value = 'Pergunta cadastrada com sucesso!'
    // reseta o formulário
    pergunta.value = {
      texto: '',
      altA: '',
      altB: '',
      altC: '',
      altD: '',
      dificuldade: 'facil',
      correta: 'A',
      categoria: 'conhecimentos-gerais',
    }
  } catch (e) {
    erro.value = e.message || 'Erro inesperado.'
  } finally {
    loading.value = false
  }
}
</script>

<style scoped>
@import url('../../assets/css/global.css');
@import url('../../assets/css/cadastro.css');
</style>
