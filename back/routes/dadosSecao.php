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

    if (!isset($_SESSION['id_questao_atual'])) {
        $_SESSION['id_questao_atual'] = null;
    }

    if (!isset($_SESSION['categoria_perguntas'])) {
        $_SESSION['categoria_perguntas'] = "conhecimentos-gerais";
    }

    if (!isset($_SESSION['pulos_usados'])) {
        $_SESSION['pulos_usados'] = 0;
    }

}