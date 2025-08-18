<?php

require_once dirname(__DIR__, levels: 1) . '\database.php';
require_once 'perguntas.php';

function pularQuestao() {
    $_SESSION["numero_questao"] += 1;
    get_pergunta($_SESSION["numero_questao"]);
}