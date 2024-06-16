<?php

    $turmas = array(
        "INFD3" => array(
            "16117" => "Amanda Oliveira Santos",
            "16557" => "Bruno Penteado Carrara",
            "16563" => "Cibele Souza de Almeida",
            "16119" => "Danilo Rafhael",
            "16121" => "Érika Cavalcanti"
        ),
        "CTI2" => array(
            "17427" => "Diogo Vinicius Oliveira",
            "17428" => "Douglas José Figueiredo",
            "17429" => "Emily Da Silva Farias"
        ),
        "INFN3" => array(
            "16227" => "Andre Ricardo Martins",
            "16573" => "Andre Schinor Mena Peres",
            "16228" => "Beatriz Santos de Mello",
            "16229" => "Caio Ramos Ballarin",
            "16231" => "Carlos Eduardo Lima"
        )
    );

    if($_SERVER['REQUEST_METHOD'] == 'GET'){

        $pesquisa = $_GET['turma'];
        if(array_key_exists($pesquisa, $turmas))
        {
            echo "<h1>Turma: $pesquisa</h1>";
            foreach($turmas as $turma => $alunos){
                if($turma == $pesquisa){
                    foreach($alunos as $ra => $nome){
                        echo $ra . " - " . $nome . "\n";
                    }
                }
            }
        }
        else{
            echo "<h1>Turma não encontrada</h1>";
            echo "<a href='index.html'>Voltar</a>";
        }

    }

?>