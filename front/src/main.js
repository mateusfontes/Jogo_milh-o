// Importa a função `createApp` do pacote 'vue'.
// Esta função é o ponto de partida para criar uma instância da sua aplicação Vue.
import { createApp } from 'vue';

// Importa o componente principal da sua aplicação, chamado `App.vue`.
// Ele serve como o componente raiz onde os outros componentes, como o roteador, serão "montados".
import App from './App.vue';

// Importa a configuração do roteador da sua pasta './router'.
// O arquivo './router/index.js' contém todas as definições das rotas da sua aplicação.
// É importante usar o caminho correto para o arquivo, que é o 'index.js' dentro da pasta 'router'.
import router from './router/index.js';

import './assets/css/global.css'
// Cria a instância da sua aplicação Vue, passando o componente `App` como o componente raiz.
const app = createApp(App);

// Usa o roteador na aplicação.
// Isso "instala" o Vue Router e torna a navegação disponível para todos os componentes.
app.use(router);

// Monta a aplicação no elemento HTML com o id "app".
// A aplicação Vue controlará todo o conteúdo dentro dessa tag no seu arquivo `index.html`.
app.mount('#app');