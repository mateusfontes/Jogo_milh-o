// Importa as funções `createRouter` e `createWebHistory` do pacote 'vue-router'.
// createRouter é a função principal para criar o roteador.
// createWebHistory cria um histórico de navegação limpo, sem o caractere # na URL.
import { createRouter, createWebHistory } from 'vue-router';

// Importa os componentes das páginas.
// Os caminhos são relativos ao arquivo atual (`index.js`).
// Sua estrutura de pastas parece ter os componentes de página em `src/components/`,
// então o caminho `../components/.../index.vue` está correto.
import IniciarJogo from '../components/iniciar_jogo/index.vue';
import CadastrarPerguntas from '../components/cadastrar_perguntas/index.vue';
import PaginaInicial from '../components/pagina_inicial/index.vue';

// Define o array de rotas. Cada objeto configura uma rota.
const routes = [
  {
    // `path: '/'` define a URL para a rota raiz, a página inicial do site.
    path: '/', 
    // `name` é um nome opcional para a rota, usado para navegação programática.
    name: 'PaginaInicial',
    // `component` é o componente que será renderizado quando esta rota for ativada.
    component: PaginaInicial
  },
  {
    path: '/iniciar-jogo', // URL para a página de iniciar o jogo.
    name: 'IniciarJogo',
    component: IniciarJogo
  },
  {
    path: '/cadastrar-perguntas', // URL para a página de cadastro.
    name: 'CadastrarPerguntas',
    component: CadastrarPerguntas
  }
];

// Cria a instância do roteador com a configuração definida.
const router = createRouter({
  // `history` é a forma recomendada de configurar o histórico de navegação no Vue Router 4.
  history: createWebHistory(),
  // `routes` passa o array de rotas para o roteador.
  routes
});

// Exporta o roteador para que ele possa ser importado e usado no arquivo `main.js`.
export default router;