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

if($username==null || $codice_fiscale==null || $password==null || $cpassword==null){
    echo $template->render('errore_registrazione');
}
else {
//controllo utente duplicato tramite il codice fiscale
    $stmt = $pdo->query("select codice_fiscale from utenti
    where codice_fiscale='$codice_fiscale'");

    $newUtente = true;

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        if ($row['codice_fiscale'] != null) {
            $newUtente = false;
        }
    }

    $stmt = $pdo->query("select username from utenti
    where username='$username'");

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        if ($row['username'] != null) {
            $newUtente = false;
        }
    }

    if ($password != $cpassword && $newUtente == true) {
        //password non corretta rinviare al modulo
        echo $template->render('errore_registrazione');
    } //dati inseriti correttamente
    else if ($password == $cpassword && $newUtente == true) {

        $password = password_hash($password, PASSWORD_DEFAULT);

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
        echo $template->render('results_registrazione', ['username' => $username, 'password' => $password, 'codice_fiscale' => $codice_fiscale]);
    }
    else if($newUtente==false){
        echo $template->render('errore_registrazione');
    }
}