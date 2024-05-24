<?php
    if($_SERVER['REQUEST_METHOD'] === 'GET') {
        $msg = "";

        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            $loginBD = crypt('joao', 'penisgigante');
            $senhaBD = crypt('carrilho', 'penisgigante');

            $login = $_POST['login'];
            $password = $_POST['password'];

            if((trim($login) != '') && (trim($password != ''))) {
                if(strlen($login) < 3) {
                    $msg = 'Login não pode ser menor que 3 letras!';
                }
                else {
                    if(strlen($password) < 5) {
                        $msg = 'Senha não pode ser menor que 5 letras!';
                    } 
                    else {
                        if((crypt($login, 'penisgigante') != $loginBD) || (crypt($senha, 'penisgrande') != $senhaBD)) {
                            $msg = 'Login ou senha inválidos!';
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
                $msg = 'Informe seu login e sua senha!';
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
    <form method="post">
        <input type="text" placeholder="Login" name="login"><br><br>
        <input type="password" placeholder="Senha" name="password"><br><br>
        <input type="submit" value="Entrar" name="btn">
    </form>
    <p><?= $msg ?></p>
</body>
</html>