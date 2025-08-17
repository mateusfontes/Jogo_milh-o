<?php

require dirname(__DIR__, 1) . '\cors.php';
require_once dirname(__DIR__, levels: 1) . '\services\pontuacao.php';

$metodo = $_SERVER['REQUEST_METHOD'];


switch ($metodo) {

    case 'PUT':
        $input = json_decode(file_get_contents("php://input"), true);

        if(isset($input['alternativa'])) {
            $acertou = respondeuQuestao($input['alternativa']);
        }
        else {
            pararJogo();
        }
        
        echo json_encode(["pontuacao" => $_SESSION['pontuacao'], "acertou" => $acertou]);
        break;
    default:
        http_response_code(405);
        echo json_encode(["erro" => "Método não permitido"]);
        break;
}