<?php
require_once dirname(__DIR__, 1) . '\services\perguntas.php';
require_once dirname(__DIR__, 1) . '\models\pergunta.php';

require dirname(__DIR__, 1) . '\cors.php';

$metodo = $_SERVER['REQUEST_METHOD'];
if (session_status() === PHP_SESSION_NONE) {
    session_start();

    if (!isset($_SESSION['pontuacao'])) {
    $_SESSION['pontuacao'] = 0;
    }

    if (!isset($_SESSION['numero_questao'])) {
    $_SESSION['numero_questao'] = 1;
    }

    if (!isset($_SESSION['ultima_questao'])) {
    $_SESSION['ultima_questao'] = 0;
    }

    if (!isset($_SESSION['ids_questoes_usadas'])) {
    $_SESSION['ids_questoes_usadas'] = [];
    }

}


switch ($metodo) {
    case 'GET':
        if($_SESSION['ultima_questao'] != $_SESSION["numero_questao"]){

           get_pergunta($_SESSION["numero_questao"]); 
            $_SESSION['ultima_questao'] = $_SESSION["numero_questao"];
        }
        else {
            echo json_encode(["erro" => "Para pedir uma nova questão o resultado da última questão deve ser informado."]);
        }
        break;
    case 'POST':
        $input = json_decode(file_get_contents("php://input"), true);
        create_pergunta(
            $input["questao"],
            $input["correta"],
            $input["falsa1"],
            $input["falsa2"],
            $input["falsa3"],
            $input["dificuldade"],
            $input["categoria"]
        );
        break;
    default:
        echo json_encode(["erro" => "Método não permitido"]);
        break;
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
        echo json_encode($dict_pergunta);
    }
}

function create_pergunta($questao, $correta, $falsa1, $falsa2, $falsa3, $dificuldade, $categoria){
    $response = registra_pergunta($questao, $correta, $falsa1, $falsa2, $falsa3, $dificuldade, $categoria);
    echo json_encode($response);
}