<?php

require dirname(__DIR__, 1) . '\cors.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();

    if (!isset($_SESSION['pontuacao'])) {
    $_SESSION['pontuacao'] = 0;
    }

    if (!isset($_SESSION['numero_questao'])) {
    $_SESSION['numero_questao'] = 1;
    }

    if (!isset($_SESSION['ids_questoes_usadas'])) {
    $_SESSION['ids_questoes_usadas'] = [];
    }

    if (!isset($_SESSION['categoria_perguntas'])) {
    $_SESSION['categoria_perguntas'] = "conhecimentos-gerais";
    }

    
}




$metodo = $_SERVER['REQUEST_METHOD'];


switch ($metodo) {

    case 'PUT':
        $input = json_decode(file_get_contents("php://input"), true);
        respondeuQuestao($input['resultado']); //ACERTOU ou ERROU
        echo json_encode(["pontuacao" => $_SESSION['pontuacao']]);

        break;
    default:
        http_response_code(405);
        echo json_encode(["erro" => "Método não permitido"]);
        break;
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
    exit();

}

function respondeuQuestao($resultado) {
    
    switch($resultado){
        case $resultado == 'ACERTOU':
                if($_SESSION['numero_questao'] == 16){
                    $_SESSION['pontuacao'] = 1000000;
                    echo json_encode(["jogo_finalizado" => "Usuário ganhou 1 milhão"]);
                    restauraSessao();

                }
                $_SESSION['pontuacao'] += pontuacaoQuestao($_SESSION['numero_questao']);
                break;

        case $resultado == 'ERROU':
            $_SESSION['pontuacao'] /=  2;
            break;
        case $resultado == "PAROU":
            echo json_encode(["Pontuacao_final" => $_SESSION['pontuacao']]);
            restauraSessao();            
            
        default:
            echo json_encode(["erro" => "Resultado inválido. Esperado -> 'ACERTOU', 'ERROU' ou 'PAROU'"]);
    }

    $_SESSION["numero_questao"] += 1;

}