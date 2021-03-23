<?php
include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

$data_inizio =  $_POST['data_inizio'];
$data_fine =  $_POST['data_fine'];

$sql = "select giorno,count(*) as n_prenotazioni from prenotazioni
where giorno between '$data_inizio' and '$data_fine'
group by giorno";

$stmt = $pdo->query($sql);

$result = $stmt->fetchAll();

echo $template->render('operazioni_giornaliere', ['result'=>$result]);