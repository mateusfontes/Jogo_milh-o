<?php
$servidor = "localhost";
$port = 3306;
$usuario = "root";
$senha = "root";
$banco = "show_milhao";


$conexao = new mysqli($servidor, $usuario, 
$senha, $banco, $port);

if ($conexao->connect_error) {
    die("Erro na conexão: " . $conexao->connect_error);
}