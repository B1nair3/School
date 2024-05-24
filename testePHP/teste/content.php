<?php
    session_start()
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>
<body>
    <h1>Bem vindo de volta <?= $_SESSION['login']; ?>!</h1>
    <a href="logout.php">Logout</a>
</body>
</html>