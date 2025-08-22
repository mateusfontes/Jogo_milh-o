<template>
  <div class=" body">
    <section>
          <Modal v-model:show="mostrarModal">
            <h2>{{ mensagemFinal }}</h2>
            <RouterLink to="/" id="botaoJogarNovamente" @click.prevent="jogarNovamente">
              JOGAR NOVAMENTE
            </RouterLink>          
          </Modal>


          <div id="conteudo-esqueda">
              <div id="caixa-pergunta">
                  <h1 id="numero_questao">1</h1>
                  <h1 id="pergunta">Texto aqui</h1>
              </div>
              <h2 id="mensagem_milhao">Essa é a pergunta do milhão. Pare e mantenha o que acumulou até agora, ou continue e arrisque!!</h2>
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
                      <p id="limitePulos"></p>
                      <p id="limiteCartas"></p>
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
import { carregarPergunta, selecionarAlternativa, confirmarResposta, resetaQuizState, getQuizState, setHandleResultadoFinal, getPontuacaoAtual, pularQuestaoAtual, eliminarAlternativaFalsa } from "./jogo.js";
import Modal from "../modalResultadoFinal/index.vue";

const URL_PONTUACAO = 'http://localhost/Jogo_milh-o/back/routes/pontuacao.php'; // se não usar proxy, troque para http://localhost/PW/trabalho/back/routes/pontuacao.php

export default {
  name: "Jogo",
  
  methods: {
    // Disparado pelos 4 botões (1..4) via @click="cor_botao"
    cor_botao(event) {
      // seleciona/deseleciona a alternativa (amarelo)
      selecionarAlternativa(event.target.id);
    },

    handleResultadoFinal(tipo) {
  
      if(tipo=="GANHOU") {
        this.mensagemFinal = "🎉🤑🤩🥳😃 PARABÉNS VOCÊ GANHOU 1 MILHÃO!!!! 🎉🤑🤩🥳😃"
      }
      else if(tipo=="PERDEU") {
        this.mensagemFinal = "😨🥺😓😫😭😪 Você perdeu tudo 😨🥺😓😫😭😪"
      } 
      else if(tipo=="PAROU") {
        this.mensagemFinal = `Você parou o jogo com R$ ${getPontuacaoAtual()}`
      }

      this.mostrarModal = true
    },
    async jogarNovamente() {
      try {
        await fetch(URL_PONTUACAO, {
            method: 'PUT',
            credentials: 'include',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ resultado: 'PAROU' })
          });
      } catch (e) {
        console.error('PAROU:', e?.message || e);
      } finally {
        this.mostrarModal = false;
        this.$router.push('/'); 
      }
    },
  },

  components : {
    Modal
  }, 
  data() {
    return {
      mostrarModal: false,
      mensagemFinal: ""
    };
  },
  mounted() {
    setHandleResultadoFinal(this.handleResultadoFinal);

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
        this.handleResultadoFinal("PAROU")
        resetaQuizState();
      });
    }

    //Botão PULO
    const botao_pular = document.getElementById("coelho")
    botao_pular.addEventListener('click', pularQuestaoAtual)

    const botao_carta = document.getElementById("baralho")
    botao_carta.addEventListener('click', eliminarAlternativaFalsa)

  },
};
</script>


<style scoped>
@import url(../../assets/css/global.css);
@import url(../../assets/css/jogo.css);

#botaoJogarNovamente {
  margin-top: 15px;
  padding: 12px 24px;
  border: 3px solid rgb(63, 63, 212);
  background: rgb(63, 63, 212);
  color: white;
  font-weight: bold;
  font-size: 16px;
  border-radius: 8px;
  cursor: pointer;
  text-decoration: none; /* tira o sublinhado do RouterLink */
  transition: all 0.3s ease;
}

#botaoJogarNovamente:hover {
  background: white;
  color: rgb(63, 63, 212);
}

#botaoJogarNovamente:active {
  transform: scale(0.95);
}
</style>