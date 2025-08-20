<?php
$servidor = "localhost";
$port = 3306;
$usuario = "root";
$senha = "M181988m*";
$banco = "show_milhao";


$conexao = new mysqli($servidor, $usuario, 
$senha, $banco, $port);

if ($conexao->connect_error) {
    die("Erro na conexão: " . $conexao->connect_error);
}

function getPerguntaByID($id) {
    global $conexao;

    $query = "SELECT id, questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria FROM perguntas
    WHERE id = '{$id}'";

    $resultado = $conexao->query($query);

    if(! $resultado || $resultado == []) {
        return null;
    }

    $perguntas = $resultado->fetch_all(MYSQLI_ASSOC);

    return $perguntas[0];

}