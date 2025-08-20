<?php

require_once dirname(__DIR__, levels: 1) . '\database.php';
require_once 'perguntas.php';

function pularQuestao() {

    if ($_SESSION['pulos_usados'] < 3) {

        $_SESSION["numero_questao"] = $_SESSION["numero_questao"] + 1;
        $_SESSION['pulos_usados'] = $_SESSION['pulos_usados'] + 1;
        get_pergunta();

    }
    else {
        http_response_code(403);
        return json_encode(["erro" => "Limite de pulos alcançado."]);
    }


}

function revelarErrada() {

    if ($_SESSION['cartas_usadas'] < 3) {

        $_SESSION['cartas_usadas']++;

        $idPerguntaAtual = $_SESSION['id_questao_atual'];
        $perguntaAtual = getPerguntaByID($idPerguntaAtual);
        $alternativasErradas = [$perguntaAtual["falsa1"], $perguntaAtual["falsa2"], $perguntaAtual["falsa3"]];
        
        //Filtrar alternativasErradas tirando alternativas_reveladas
            $alternativasErradasFiltradas = array_filter($alternativasErradas, 
    function($alternativa) {
        return ! in_array(  $alternativa, 
                            haystack: $_SESSION['alternativas_reveladas']);
    });

        $falsaSorteada = $alternativasErradasFiltradas[array_rand($alternativasErradasFiltradas)];

        array_push($_SESSION['alternativas_reveladas'], $falsaSorteada);


        echo json_encode(["errada" => $falsaSorteada]);
    }
    else {
        http_response_code(403);
        return json_encode(["erro" => "Limite de cartas alcançado."]);
    }
        


}