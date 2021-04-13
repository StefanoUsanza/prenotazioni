<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

$username= $_POST['username'];
$password = $_POST['password'];
$cpassword = $_POST['cpassword'];

//controllo nome utente duplicato
$stmt = $pdo->query("select username from utenti
where username='$username'");

$newUtente=true;

while($row =$stmt->fetch(PDO::FETCH_ASSOC)){
    if($row['username']!=null){
        echo 'nome utente già selezionato, provane un altro';
        $newUtente=false;
    }

    //utente già presente rinviare al modulo
}

if($password!=$cpassword && $newUtente==true){
    //password non corretta rinviare al modulo
    echo 'password errata, ricontrollala e riprova';
}

else if ($password==$cpassword && $newUtente==true){

    $password = password_hash($password,PASSWORD_DEFAULT);

    //query di inserimento preparata
    $sql = "INSERT INTO utenti VALUES (null, :username, :password)";

    //invio query al DB che la tiene in memoria
    $stm = $pdo->prepare($sql);

    //invio dei dati per i segnaposto
    $stm->execute(
        [
            'username' => $username,
            'password' => $password
        ]
    );
    //header('location:lista_prenotazioni.php');
    echo $template->render('registrazione', ['username' => $username, 'password' => $password]);
}