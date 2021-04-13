<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

$username= $_POST['username'];
$password = $_POST['password'];

//controllo nome utente duplicato
$stmt = $pdo->query("select * from utenti
where username='$username'");

$riga = $stmt->fetch();

//utente non registrato
if($riga === false){
    echo $template->render('login_errato');
}
//utente trovato, verificare la password
else {
    $pass = $riga['password'];
    //verifica password corretta
    if(password_verify($password,$pass)){
        echo $template->render('login_corretto', ['username' => $username, 'password' => $password]);
    }
    //verifica password errata
    else{
        echo $template->render('login_errato');
    }

}
