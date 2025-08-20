<?php

require dirname(__DIR__, 1) . '\cors.php';
require_once dirname(__DIR__, levels: 1) . '\services\ajuda.php';
require_once "dadosSecao.php";


$metodo = $_SERVER['REQUEST_METHOD'];


switch ($metodo) {
    case 'GET':
        $input = json_decode(file_get_contents("php://input"), true);
        $ajuda = $_GET["tipo"]; //PULO, CARTA

        if($ajuda == "PULO") {
            pularQuestao();
        }
        else if ($ajuda == "CARTA") {
            revelarErrada();
        }
        else {
            echo json_encode(["erro" => "Método não permitido"]);
        }
        break;
    default:
        echo json_encode(["erro" => "Método não permitido"]);
        break;
}

