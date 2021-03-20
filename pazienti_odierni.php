<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

//query di inserimento preparata
$sql = "select codice_fiscale,codice_prenotazione from prenotazioni
where giorno=curdate()";

$stmt = $pdo->query($sql);

$result = $stmt->fetchAll();

//template per visualizzare una tabella
echo $template->render('pazienti_odierni', ['result'=>$result]);