<?php
class Pergunta {
    public $questao;
    public $correta;
    public $falsa1;
    public $falsa2;
    public $falsa3;
    

    // Construtor
    public function __construct($questao, $correta, $falsa1, $falsa2, $falsa3) {
        $this->questao = $questao;
        $this->correta = $correta;
        $this->falsa1 = $falsa1;
        $this->falsa2 = $falsa2;
        $this->falsa3 = $falsa3;
    }

}
