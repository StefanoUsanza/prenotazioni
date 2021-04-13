<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

//query di inserimento preparata
$sql = "SELECT * FROM prenotazioni order by prenotazioni.giorno asc";

$stmt = $pdo->query($sql);

$result = $stmt->fetchAll();

if(isset($_SESSION['username'])){

    $username = $_SESSION['username'];

    //template per visualizzare una tabella
    echo $template->render('lista_prenotazioni', ['result'=>$result, 'username'=>$username]);
}
else{
    echo $template->render('login_errato');
}

