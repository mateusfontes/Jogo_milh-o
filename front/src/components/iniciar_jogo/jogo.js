// ---------- CONFIG ----------
const URL_PERGUNTAS = '/api/perguntas.php';
const URL_PONTUACAO = '/api/pontuacao.php';


// ---------- ESTADO (exportado p/ o componente consultar) ----------
let gabaritoAtual    = '';
let bloqueado        = false;   // fim de jogo / PAROU
let selecionadoId    = null;    // 'button_a' | 'button_b' | 'button_c' | 'button_d'
let respondeuEsta    = false;   // já confirmou esta questão?
let podePedirProxima = true;    // só pedir GET depois do PUT, como o back exige

export function getQuizState() {
  return { gabaritoAtual, bloqueado, selecionadoId, respondeuEsta, podePedirProxima };
}

// ---------- UTILS DOM ----------
const setText = (id, val) => { const el = document.getElementById(id); if (el) el.textContent = val; };
const embaralhar = (arr) => [...arr].sort(() => Math.random() - 0.5);

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
async function putPontuacao(resultado) {
  return fetchJSON(URL_PONTUACAO, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ resultado })
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
  const alternativas = embaralhar([
    { id: 'A', text: q.correta, correta: true },
    { id: 'B', text: q.falsa1, correta: false },
    { id: 'C', text: q.falsa2, correta: false },
    { id: 'D', text: q.falsa3, correta: false },
  ]);

  setText('pergunta', q.questao || 'Pergunta');
  setText('A', alternativas[0]?.text || '');
  setText('B', alternativas[1]?.text || '');
  setText('C', alternativas[2]?.text || '');
  setText('D', alternativas[3]?.text || '');

  // guarda gabarito (texto da correta)
  gabaritoAtual = (alternativas.find(a => a.correta)?.text) || '';

  // reset estado visual e interno
  resetCoresBotoes();
  selecionadoId = null;
  respondeuEsta = false;
  setProximoComoConfirmar();
}

// ---------- FLUXO ----------
export async function carregarPergunta() {
  if (bloqueado) return;

  // se ainda não confirmou a atual, ignore o clique (o botão deve estar como CONFIRMAR)
  if (!respondeuEsta && !podePedirProxima) return;

  try {
    setText('pergunta', 'Carregando pergunta...');
    const q = await getPergunta();
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

// Confirma resposta (envia PUT) — depois o botão PROXIMO carrega a próxima
export async function confirmarResposta() {
  if (bloqueado || respondeuEsta) return;
  if (!selecionadoId) return; // nenhum selecionado, ignora

  const map  = { 'button_a':'A', 'button_b':'B', 'button_c':'C', 'button_d':'D' };
  const liId = map[selecionadoId];
  const escolhido = (document.getElementById(liId)?.textContent || '').trim();
  const acertou   = escolhido === gabaritoAtual;

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

  try {
    const resp = await putPontuacao(acertou ? 'ACERTOU' : 'ERROU');

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
  } catch (e) {
    console.error('PUT pontuação:', e?.message || e);
    // opcional: desfazer cor se quiser
  }
}
