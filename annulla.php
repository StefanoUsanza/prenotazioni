<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

$codice_prenotazione= $_POST['codice'];

//query di inserimento preparata
$sql = "UPDATE prenotazioni SET annullato=true where prenotazioni.codice_prenotazione= :codice";

//invio query al DB che la tiene in memoria
$stm = $pdo->prepare($sql);

//invio dei dati per i segnaposto
$stm->execute(
    [
        'codice' => $codice_prenotazione
    ]
);
//header('location:lista_prenotazioni.php');
echo $template->render('annulla', ['codice' => $codice_prenotazione]);
