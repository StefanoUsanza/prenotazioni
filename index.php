<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');
$cod=$_SESSION['codice_fiscale'];

//query di inserimento preparata
$sql = "SELECT * FROM prenotazioni where prenotazioni.codice_fiscale='$cod' 
and prenotazioni.eseguito=0 and prenotazioni.annullato=0 order by prenotazioni.giorno asc";

$stmt = $pdo->query($sql);

$result = $stmt->fetchAll();

    echo $template->render('first_connection');

