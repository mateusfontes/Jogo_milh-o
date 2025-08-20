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
        return json_encode(["erro" => "Limite de pulos alcançados."]);
    }


}