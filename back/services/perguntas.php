<?php
require_once dirname(__DIR__, levels: 1) . '\database.php';

function escondeRespostaCorreta($questao) {
    $questao["alternativas"] = [$questao["falsa1"], 
                                            $questao["falsa2"], 
                                            $questao["falsa3"], 
                                            $questao["correta"]];

    shuffle($questao["alternativas"]);

    unset($questao["falsa1"]);
    unset($questao["falsa2"]);
    unset($questao["falsa3"]);
    unset($questao["correta"]);
    return $questao;

}

function sorteiaPergunta($dificuldade) {
    
    global $conexao;

    $idsPerguntasJaUsadas = $_SESSION['ids_questoes_usadas'];

    $query = "SELECT id, questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria 
    FROM perguntas WHERE dificuldade = '{$dificuldade}' and categoria = '{$_SESSION['categoria_perguntas']}'";

    $resultado = $conexao->query($query);

    if(! $resultado || $resultado == []) {
        return null;
    }


    $perguntas = $resultado->fetch_all(MYSQLI_ASSOC);

    $perguntasFiltradas = array_filter($perguntas, 
    function($pergunta) use ($idsPerguntasJaUsadas){
        return ! in_array(  $pergunta['id'], 
                            haystack: $idsPerguntasJaUsadas);
    });

    $perguntaSorteada = $perguntasFiltradas[array_rand($perguntasFiltradas)];

    $_SESSION['ids_questoes_usadas'][] = $perguntaSorteada['id'];

    $perguntaSorteada = escondeRespostaCorreta($perguntaSorteada);

    return $perguntaSorteada;

}

function registra_pergunta($questao, $correta, $falsa1, $falsa2, $falsa3, $dificuldade, $categoria) {
    global $conexao;

    $query = "INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
    ('{$questao}', '{$correta}', '{$falsa1}', '{$falsa2}', '{$falsa3}', '{$dificuldade}', '{$categoria}');";

    $resultado = $conexao->query($query);

    return $resultado;
}


function get_pergunta($numeroPergunta) {
    if($numeroPergunta >= 1 && $numeroPergunta <= 5) {
        $dificuldade = 'FACIL';
    }
    else if($numeroPergunta >= 6 && $numeroPergunta <= 10) {
        $dificuldade = 'MEDIA';
    }
    else if($numeroPergunta >= 11 && $numeroPergunta <= 16){
        $dificuldade = 'DIFICIL';
    }
    else {
        echo json_encode(["erro" => "Limite de perguntas alcançado"]);
    }

    if ($numeroPergunta >= 1 && $numeroPergunta <= 16){

        $dict_pergunta = sorteiaPergunta($dificuldade);
        $dict_pergunta["numero_questao"] = $_SESSION['numero_questao'];
        $_SESSION['id_questao_atual'] = $dict_pergunta["id"];
        echo json_encode($dict_pergunta);
    }
}

function create_pergunta($questao, $correta, $falsa1, $falsa2, $falsa3, $dificuldade, $categoria){
    $response = registra_pergunta($questao, $correta, $falsa1, $falsa2, $falsa3, $dificuldade, $categoria);
    echo json_encode($response);
   
}