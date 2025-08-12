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

          <button type="submit" class="botao-enviar">Cadastrar pergunta</button>
        </div>
      </form>

    </div>
  </section>
  </body>
</template>

<script setup>
import { ref } from 'vue';

// Cria um objeto reativo para armazenar os dados do formulário
const pergunta = ref({
  texto: '',
  altA: '',
  altB: '',
  altC: '',
  altD: '',
  dificuldade: 'facil',
  correta: 'A',
  categoria: 'conhecimentos-gerais'
});

// Função para lidar com o envio do formulário
function cadastrarPergunta() {
  // Lógica para enviar os dados para o banco de dados
  console.log('Pergunta cadastrada:', pergunta.value);
  // Limpa o formulário após o envio
  pergunta.value = {
    texto: '',
    altA: '',
    altB: '',
    altC: '',
    altD: '',
    dificuldade: 'facil',
    correta: 'A',
    categoria: 'conhecimentos-gerais'
  };
}
</script>

<style scoped>
@import url('../../assets/css/global.css');
@import url('../../assets/css/cadastro.css');
</style>