<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

$username= $_POST['username'];
$codice_fiscale = $_POST['codice_fiscale'];
$password = $_POST['password'];
$cpassword = $_POST['cpassword'];

//controllo utente duplicato tramite il codice fiscale
$stmt = $pdo->query("select codice_fiscale from utenti
where codice_fiscale='$codice_fiscale'");

$newUtente=true;

while($row =$stmt->fetch(PDO::FETCH_ASSOC)){
    if($row['codice_fiscale']!=null){
        echo 'codice fiscale già registrato';
        $newUtente=false;
    }

    //utente già presente rinviare al modulo
}

if($password!=$cpassword && $newUtente==true){
    //password non corretta rinviare al modulo
    echo 'password errata, ricontrollala e riprova';
}
//dati inseriti correttamente
else if ($password==$cpassword && $newUtente==true){

    $password = password_hash($password,PASSWORD_DEFAULT);

    //query di inserimento preparata
    $sql = "INSERT INTO utenti VALUES (null, :username, :password, :codice_fiscale, 0)";

    //invio query al DB che la tiene in memoria
    $stm = $pdo->prepare($sql);

    //invio dei dati per i segnaposto
    $stm->execute(
        [
            'username' => $username,
            'password' => $password,
            'codice_fiscale' => $codice_fiscale
        ]
    );
    //header('location:lista_prenotazioni.php');
    echo $template->render('results_registrazione', ['username' => $username, 'password' => $password, 'codice_fiscale' => $codice_fiscale]);
}