<?php
    session_start();
    if(!isset($_SESSION['login'])) header('Location: error.php');
    else header('Location: content.php');
?>