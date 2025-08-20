<?php
require_once dirname(__DIR__, 1) . '\services\perguntas.php';
require_once dirname(__DIR__, 1) . '\models\pergunta.php';

require dirname(__DIR__, 1) . '\cors.php';
require_once "dadosSecao.php";

$metodo = $_SERVER['REQUEST_METHOD'];

switch ($metodo) {
    case 'GET':
        if($_SESSION['id_questao_atual']){
            $dict_pergunta = getPerguntaByID($_SESSION['id_questao_atual']);
            $dict_pergunta = escondeRespostaCorreta($dict_pergunta);
            $dict_pergunta["numero_questao"] = $_SESSION['numero_questao'];
            echo json_encode($dict_pergunta);
        }
        else {
            get_pergunta(); 
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

