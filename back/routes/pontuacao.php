<?php

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


function respondeuQuestao($resultado) {
    
    switch($resultado){
        case $resultado == 'ACERTOU':
                $_SESSION['pontuacao'] += pontuacaoQuestao($_SESSION['numero_questao']);
                break;

        case $resultado == 'ERROU':
            $_SESSION['pontuacao'] /=  2;
            break;
        case $resultado == "PAROU":
            $_SESSION = [];
            session_destroy();
            exit();
        default:
            echo json_encode(["erro" => "Resultado inválido. Esperado -> 'ACERTOU', 'ERROU' ou 'PAROU'"]);
    }

    $_SESSION["numero_questao"] += 1;

}