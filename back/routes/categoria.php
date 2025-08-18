<?php

require dirname(__DIR__, 1) . '\cors.php';
require_once "dadosSecao.php";

$metodo = $_SERVER['REQUEST_METHOD'];


$tipos_categoria = ["conhecimentos-gerais", "raciocinio-logico", "portugues" , 
"matematica", "geografia", "historia", "ciencias", "cultura-pop", 
"esportes", "tecnologia", "curiosidades"];

switch ($metodo) {
    case 'GET':
        
        echo json_encode(["categoria" => $_SESSION['categoria_perguntas']]);
        
        break;
    case 'PUT':
        $input = json_decode(file_get_contents("php://input"), true);
        if(in_array($input["categoria"], $tipos_categoria) ) {
            
            $_SESSION["categoria_perguntas"] = $input["categoria"];
            echo json_encode(["Sucesso" => "Categoria alterada"]);
           
            
        }
        else {
            echo json_encode(["erro" => "Valor inválido."]);
        }
        break;
    default:
        echo json_encode(["erro" => "Método não permitido"]);
        break;
}