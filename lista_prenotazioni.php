<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');
if(isset($_SESSION['username'])){
    $cod=$_SESSION['codice_fiscale'];
    $username = $_SESSION['username'];

//query di inserimento preparata
$sql = "SELECT * FROM prenotazioni where prenotazioni.codice_fiscale='$cod' 
and prenotazioni.eseguito=0 and prenotazioni.annullato=0 order by prenotazioni.giorno asc";

$stmt = $pdo->query($sql);

$result = $stmt->fetchAll();

//template per visualizzare una tabella
echo $template->render('lista_prenotazioni', ['result'=>$result, 'username'=>$username]);
}
else{
    echo $template->render('login_errato');
}

