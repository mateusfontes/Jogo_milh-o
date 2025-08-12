<?php

require dirname(__DIR__, 1) . '\cors.php';

$metodo = $_SERVER['REQUEST_METHOD'];
if (session_status() === PHP_SESSION_NONE) {
    session_start();

    if (!isset($_SESSION['categoria_perguntas'])) {
    $_SESSION['categoria_perguntas'] = "conhecimentos-gerais";
    }
}



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