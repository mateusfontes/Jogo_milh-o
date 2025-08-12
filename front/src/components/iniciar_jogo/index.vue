<template>
  <div class=" body">
    <section>
          <div id="conteudo-esqueda">
              <div id="caixa-pergunta">
                  <h1 id="numero_questao">1</h1>
                  <h1 id="pergunta">Texto aqui</h1>
              </div>
              <h2 id="mensagem_milhao">Essa é a pergunta do milhão. Clique Pare e mantenha o que acumulou até agora ou continue e arrisque!!</h2>
              <nav class="conteudo-opcoes">
                  <ul>
                    <button  @click="cor_botao" id="button_a" type="button">1</button>
                    <li id="A"></li>
                  </ul>

                  <ul>
                    <button @click="cor_botao" id="button_b" type="button">2</button>
                    <li id="B"></li>
                  </ul>

                  <ul>
                    <button @click="cor_botao" id="button_c" type="button">3</button>
                    <li id="C"></li>
                  </ul>

                  <ul>
                    <button @click="cor_botao" id="button_d" type="button">4</button>
                    <li id="D"></li>
                  </ul>
              </nav>
          </div>
          <div id="conteudo-direita">
              <div id="conteudo-superior-dir">
                  <h1 id="pontos">00000 <img src="../../assets/imgs/moeda.png" alt=""></h1>
                  <button id="parar"><img src="../../assets/imgs/parar.png" alt=""></button>
              </div>
              <div id="conteudo-ajuda">
                  <div id="ajuda">
                      <button><img id="coelho" src="../../assets/imgs/coelho.png" alt=""></button>
                      <button><img id="baralho" src="../../assets/imgs/baralho.png" alt=""></button>
                  </div>
              </div>
              <div id="conteudo-proximo">
                  <button id="proximo">PROXIMO</button>
              </div>
          </div>
      </section>
    </div>
</template>

<script>
import { carregarPergunta, selecionarAlternativa, confirmarResposta, getQuizState } from "./jogo.js";

const URL_PONTUACAO = 'http://localhost/Jogo_milh-o/back/routes/pontuacao.php'; // se não usar proxy, troque para http://localhost/PW/trabalho/back/routes/pontuacao.php

export default {
  name: "Jogo",
  
  methods: {
    // Disparado pelos 4 botões (1..4) via @click="cor_botao"
    cor_botao(event) {
      // seleciona/deseleciona a alternativa (amarelo)
      selecionarAlternativa(event.target.id);
    },
  },

  mounted() {
    // 1) carrega a primeira pergunta
    carregarPergunta();

    // 2) Botão PROXIMO:
    //    - se ainda não confirmou, CONFIRMA (PUT)
    //    - se já confirmou, carrega a PRÓXIMA (GET)
    const prox = document.getElementById('proximo');
    if (prox) {
      prox.addEventListener('click', async () => {
        const state = getQuizState();
        if (state.bloqueado) return;

        if (!state.respondeuEsta) {
          await confirmarResposta();      // confirma primeiro
        } else if (state.podePedirProxima) {
          await carregarPergunta();       // depois pede a próxima
        }
      });
    }

    // 3) Botão PARAR
    const parar = document.getElementById('parar');
    if (parar) {
      parar.addEventListener('click', async () => {
        try {
          await fetch(URL_PONTUACAO, {
            method: 'PUT',
            credentials: 'include',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ resultado: 'PAROU' })
          });
          // feedback simples na UI
          const p = document.getElementById('pergunta');
          if (p) p.textContent = 'Jogo encerrado. Você ficou com a sua pontuação.';
          if (prox) prox.disabled = true;
        } catch (e) {
          console.error('PAROU:', e?.message || e);
        }
      });
    }
  },
};
</script>


<style scoped>
@import url(../../assets/css/global.css);
@import url(../../assets/css/jogo.css);
</style>