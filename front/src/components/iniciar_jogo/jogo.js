// ---------- CONFIG ----------
const URL_PERGUNTAS = 'http://localhost/Jogo_milh-o/back/routes/perguntas.php';
const URL_PONTUACAO = 'http://localhost/Jogo_milh-o/back/routes/pontuacao.php';
const URL_CATEGORIA = 'http://localhost/Jogo_milh-o/back/routes/categoria.php';
const URL_AJUDAS = 'http://localhost/Jogo_milh-o/back/routes/ajuda.php';


// ---------- ESTADO (exportado p/ o componente consultar) ----------
let gabaritoAtual    = '';
let bloqueado        = false;   // fim de jogo / PAROU
let selecionadoId    = null;    // 'button_a' | 'button_b' | 'button_c' | 'button_d'
let respondeuEsta    = false;   // já confirmou esta questão?
let podePedirProxima = true;    // só pedir GET depois do PUT, como o back exige
let numeroQuestaoAtual = 1
let callbackResultadoFinal = null;
let pontuacaoAtual = 0;

export function getQuizState() {
  return { gabaritoAtual, bloqueado, selecionadoId, respondeuEsta, podePedirProxima };
}

export function resetaQuizState() {
  gabaritoAtual    = '';
  bloqueado        = false;  
  selecionadoId    = null;   
  respondeuEsta    = false;  
  podePedirProxima = true;   
  numeroQuestaoAtual = 1;
  pontuacaoAtual = 0;
}

// ---------- UTILS DOM ----------
const setText = (id, val) => { const el = document.getElementById(id); if (el) el.textContent = val; };


function resetCoresBotoes() {
  ['button_a', 'button_b', 'button_c', 'button_d'].forEach(id => {
    const btn = document.getElementById(id);
    if (btn) {
      btn.style.backgroundColor = ''; // remove cor inline
      btn.disabled = false;
    }
  });
}


function marcarSelecionado(botaoId) {
  // limpa seleção anterior
  ['button_a', 'button_b', 'button_c', 'button_d'].forEach(id => {
    const b = document.getElementById(id);
    if (b && id !== botaoId) b.style.backgroundColor = '';
  });

  const btn = document.getElementById(botaoId);
  if (!btn) return;

  // toggle seleção
  if (selecionadoId === botaoId) {
    btn.style.backgroundColor = '';
    selecionadoId = null;
  } else {
    btn.style.backgroundColor = 'khaki'; // cor de "selecionado" (antes de confirmar)
    selecionadoId = botaoId;
  }
}

function setProximoComoConfirmar() {
  const prox = document.getElementById('proximo');
  if (prox) prox.textContent = 'CONFIRMAR';
}
function setProximoComoProximo() {
  const prox = document.getElementById('proximo');
  if (prox) prox.textContent = 'PROXIMO';
}

// preserva a imagem dentro do <h1 id="pontos">
function setPlacar(pontos) {
  pontuacaoAtual = pontos;
  const el = document.getElementById('pontos');
  if (!el) return;
  const img = el.querySelector('img');
  el.textContent = String(pontos) + ' ';
  if (img) el.appendChild(img);
}

// ---------- FETCH helper (cookies + parser robusto) ----------
async function fetchJSON(url, options = {}) {
  const res = await fetch(url, { credentials: 'include', ...options });
  const text = await res.text();

  const tryParse = (s) => { try { return JSON.parse(s); } catch { return null; } };

  // 1) tenta direto
  let json = tryParse(text);

  // 2) se falhar, tenta extrair o ÚLTIMO {...} do payload (caso venham dois JSON concatenados / lixo de debug)
  if (!json) {
    // primeiro tenta pegar o último objeto perto do fim; se não, qualquer um e usa o último
    const matches = text.match(/\{[\s\S]*\}(?![\s\S]*\{)/) || text.match(/\{[\s\S]*?\}/g);
    if (matches) {
      const candidate = Array.isArray(matches) ? matches[matches.length - 1] : matches[0];
      json = tryParse(candidate);
    }
  }

  if (!json) {
    console.error('Resposta não-JSON de', url, '=>', text);
    throw new Error('Resposta do servidor não é JSON.');
  }
  if (!res.ok || json?.erro) throw new Error(json?.erro || `HTTP ${res.status}`);
  return json;
}

// ---------- API ----------
async function getPergunta() {
  return fetchJSON(URL_PERGUNTAS, { method: 'GET' });
}
async function putPontuacao(textoAlternativa) {
  return fetchJSON(URL_PONTUACAO, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ "alternativa" : textoAlternativa })
  });
}

/**
 * Opcional: alterar categoria ANTES do jogo começar (antes do primeiro GET).
 * Ex.: await alterarCategoria('matematica');
 */
export async function alterarCategoria(categoria) {
  await fetchJSON(URL_PERGUNTAS, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ categoria })
  });
}

// ---------- RENDER ----------
function renderPergunta(q) {
  // Esperado: { questao, correta, falsa1, falsa2, falsa3, numero_questao, ... }
  
  setText('pergunta', q.questao || 'Pergunta');
  setText('numero_questao', q.numero_questao || '?')
  setText('A', q.alternativas[0]);
  setText('B', q.alternativas[1]);
  setText('C', q.alternativas[2]);
  setText('D', q.alternativas[3]);

  // reset estado visual e interno
  resetCoresBotoes();
  selecionadoId = null;
  respondeuEsta = false;
  setProximoComoConfirmar();
}

export function getPontuacaoAtual() {
  return pontuacaoAtual;
}

// ---------- FLUXO ----------
export async function carregarPergunta() {
  if (bloqueado) return;

  // se ainda não confirmou a atual, ignore o clique (o botão deve estar como CONFIRMAR)
  if (!respondeuEsta && !podePedirProxima) return;

  

  try {
    setText('pergunta', 'Carregando pergunta...');
    const q = await getPergunta();
    numeroQuestaoAtual = q.numero_questao

    const mensagem_milhao = document.getElementById("mensagem_milhao")
    if(q.numero_questao == 16) {
      mensagem_milhao.style.display = 'flex'
    }
    else {
      mensagem_milhao.style.display = 'none'
    }

    renderPergunta(q);
    podePedirProxima = false; // travamos até confirmar (PUT)
  } catch (e) {
    const msg = String(e?.message || e);
    if (msg.includes('Limite de perguntas alcançado')) {
      setText('pergunta', '🎉 Limite de perguntas alcançado! Fim de jogo.');
      bloqueado = true;
      ['button_a', 'button_b', 'button_c', 'button_d'].forEach(id => {
        const btn = document.getElementById(id); if (btn) btn.disabled = true;
      });
      const prox = document.getElementById('proximo');
      if (prox) prox.disabled = true;
    } else if (msg.includes('Para pedir uma nova questão')) {
      console.warn('Backend bloqueou nova GET: confirme a questão atual antes.');
    } else {
      setText('pergunta', 'Erro ao carregar pergunta. Tente novamente');
    }
    console.error('GET pergunta:', msg);
  }
}

// Seleciona/deseleciona alternativa (NÃO envia ao back)
export function selecionarAlternativa(botaoId) {
  if (bloqueado || respondeuEsta) return;
  marcarSelecionado(botaoId);
}

export function setHandleResultadoFinal(cb) {
  callbackResultadoFinal = cb;
}


async function enviaResposta(textoAlternativa) {
  try {
    const resp = await putPontuacao(textoAlternativa);
    
    // se o backend devolver pontuação, atualiza o placar (sem perder o ícone)
    if (resp && typeof resp.pontuacao !== 'undefined') {
      setPlacar(resp.pontuacao);
    }

    respondeuEsta    = true;
    podePedirProxima = true;

    // trava alternativas e muda o botão para "PRÓXIMO"
    ['button_a', 'button_b', 'button_c', 'button_d'].forEach(id => {
      const b = document.getElementById(id); if (b) b.disabled = true;
    });
    setProximoComoProximo();

    return resp.acertou;
  } catch (e) {
    console.error('PUT pontuação:', e?.message || e);
    // opcional: desfazer cor se quiser
  }
}

// Confirma resposta (envia PUT) — depois o botão PROXIMO carrega a próxima
export async function confirmarResposta() {
  if (bloqueado || respondeuEsta) return;
  if (!selecionadoId) return; // nenhum selecionado, ignora

  const map  = { 'button_a':'A', 'button_b':'B', 'button_c':'C', 'button_d':'D' };
  const liId = map[selecionadoId];
  const escolhido = (document.getElementById(liId)?.textContent || '').trim();

  const acertou = enviaResposta(escolhido)

  // feedback imediato no botão escolhido
  const btn = document.getElementById(selecionadoId);
  if (btn) btn.style.backgroundColor = acertou ? 'lightgreen' : 'lightcoral';

  // se errou, pinta também a alternativa correta de verde
  if (!acertou) {
    for (const id in map) {
      const liAlt = map[id];
      const texto = (document.getElementById(liAlt)?.textContent || '').trim();
      if (texto === gabaritoAtual) {
        const btnCorreto = document.getElementById(id);
        if (btnCorreto) btnCorreto.style.backgroundColor = 'lightgreen';
        break;
      }
    }
  }

  if(numeroQuestaoAtual == 16){
    resetaQuizState();
    callbackResultadoFinal(acertou ? "GANHOU" : "PERDEU");

  }
}

export async function pularQuestaoAtual() {
  const tipo = "PULO"


  const urlRequisicao = new URL(URL_AJUDAS)

  urlRequisicao.searchParams.set("tipo", tipo)

  const response = await fetch(urlRequisicao, {
      method: "GET",
      credentials: "include",       
      headers: { Accept: "application/json" }
    })

  if (response.status === 403) {
    setText("limitePulos", "**Limite de pulos atingidos.**");
  }

  const novaPergunta = await response.json()

  numeroQuestaoAtual = novaPergunta.numero_questao
  renderPergunta(novaPergunta)

}

function pegaAlternativas() {
  return [document.getElementById("A").textContent,
  document.getElementById("B").textContent,
  document.getElementById("C").textContent,
  document.getElementById("D").textContent]
}

function indentificaErrada(textoErrada) {
  const alternativas = pegaAlternativas()
  if(alternativas[0] === textoErrada) {
    return "A"
  }
  if(alternativas[1] === textoErrada) {
    return "B"
  }
  if(alternativas[2] === textoErrada) {
    return "C"
  }
  if(alternativas[3] === textoErrada) {
    return "D"
  }
}

export async function eliminarAlternativaFalsa() {
  const tipo = "CARTA"

  const urlRequisicao = new URL(URL_AJUDAS)

  urlRequisicao.searchParams.set("tipo", tipo)

  const response = await fetch(urlRequisicao, {
      method: "GET",
      credentials: "include",
      headers: { Accept: "application/json" }
    })

  if (response.status === 403) {
    setText("limiteCartas", "**Limite de cartas atingidos.**");
  }
  else {
    const dados = await response.json()
    const erradaTexto = dados.errada
    
    const alternativa = indentificaErrada(erradaTexto)

    setText(alternativa, "------------------")

  }

}