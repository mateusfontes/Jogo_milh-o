<?php
require_once dirname(__DIR__, levels: 1) . '\database.php';


function getAlternativaCorretaQuestaoAtual() {
    $idQuestaoAtual = $_SESSION['id_questao_atual'];
    $questaoAtual = getPerguntaByID($idQuestaoAtual);

    return $questaoAtual["correta"];

}

function isAlternativaCorreta($alternativa) {
    $alternativaCorreta = getAlternativaCorretaQuestaoAtual();
    if($alternativa == $alternativaCorreta) {
        return true;
    }
    else {
        return false;
    }
}
function pontuacaoQuestao($numero_questao) {
    $map_pontuacaoProduto = [
    'FACIL' => 1000,
    'MEDIA' => 10000,
    'DIFICIL' => 100000,
    ];

    $map_pontuacaoSubtracao = [
        'FACIL' => 0,
        'MEDIA' => 5,
        'DIFICIL' => 10,
    ];

    if($numero_questao >= 1 && $numero_questao <= 5) {
        $dificuldade = 'FACIL';
    }
    else if($numero_questao >= 6 && $numero_questao <= 10) {
        $dificuldade = 'MEDIA';
    }
    else {
        $dificuldade = 'DIFICIL';
    }

    $produto = $map_pontuacaoProduto[$dificuldade];
    $subtracao = $map_pontuacaoSubtracao[$dificuldade];

    return ($numero_questao - $subtracao) * $produto;
}

function restauraSessao() {
    unset($_SESSION['ultima_questao']);
    unset($_SESSION['ids_questoes_usadas']);
    unset($_SESSION['numero_questao']);
    unset($_SESSION['pontuacao']);
    unset($_SESSION['id_questao_atual']);
    unset($_SESSION['pulos_usados']);
    unset($_SESSION['cartas_usadas']);
    unset($_SESSION['alternativas_reveladas']);
    exit();

}

function pararJogo() {
    echo json_encode(value: ["Pontuacao_final" => $_SESSION['pontuacao']]);
    restauraSessao();    
}

function respondeuQuestao($alternativa) {
    

    $acertou = isAlternativaCorreta($alternativa);

    if ($acertou) {
        if($_SESSION['numero_questao'] == 16){
            $_SESSION['pontuacao'] = 1000000;
            echo json_encode(["jogo_finalizado" => "Usuário ganhou 1 milhão"]);
            restauraSessao();

        }
        else {
            $_SESSION['pontuacao'] += pontuacaoQuestao($_SESSION['numero_questao']);
        }                

    }
    else {
        if($_SESSION['numero_questao'] == 16){
                $_SESSION['pontuacao'] = 0;
                echo json_encode(["jogo_finalizado" => "Usuário perdeu tudo"]);
                restauraSessao();
        }
        else {
            $_SESSION['pontuacao'] /=  2;
        }
    }

    

    $_SESSION["numero_questao"] = $_SESSION["numero_questao"] + 1;
    $_SESSION['id_questao_atual'] = null;

    return $acertou;
}

