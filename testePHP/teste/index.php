<?php
    if($_SERVER["REQUEST_METHOD"] === 'GET') {
        $msg = "";

        if($_SERVER["REQUEST_METHOD"] === 'POST') { 
            $loginBD = crypt("joao", "meupeniségrande");
            $senhaBD = crypt("carrilho", "meupeniségrande");

            $login = $_POST['nome'];    
            $senha = $_POST['senha'];

            if((trim($login) != "") && (trim($senha) != "")) {
                if(strlen($login) < 3) {
                    $msg = "Login não pode ser menor que 3 letras!";
                }
                else {
                    if(strlen($senha) < 5) {
                        $msg = "Senha não pode ser menor que 5 letras!";
                    }
                    else {
                        if((crypt($login, "meupeniségrande") != $loginBD) || (crypt($senha, "meupeniségrande") != $senhaBD)) {
                            $msg = "Login ou senha invalidos!";
                        }
                        else {
                            session_start();
                            $_SESSION['login'] = $login;
                            header('Location: home.php');
                        }
                    }
                }
            }
            else {
                $msg = "Login e senha não podem ser vazios!";
            }
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teste</title>
</head>
<body>
    <h1>Login</h1>
    <form method="POST">
        <input type="text" placeholder="Nome" name="nome"><br><br>
        <input type="password" placeholder="Senha" name="senha"><br><br>
        <input type="submit" value="Enviar" name="btn">
    </form>
    <p><?= $msg ?></p>
</body>
</html>