<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');
//controllo codice vuoto
if($_POST['codice']==null){
    echo $template->render('login_errato');

}
else {
    $codice_prenotazione = $_POST['codice'];
    $note = $_POST['note'];

//query di inserimento preparata
    $sql = "UPDATE prenotazioni SET eseguito=true, prenotazioni.note= :note where prenotazioni.codice_prenotazione= :codice";

//invio query al DB che la tiene in memoria
    $stm = $pdo->prepare($sql);

//invio dei dati per i segnaposto
    $stm->execute(
        [
            'codice' => $codice_prenotazione,
            'note' => $note
        ]
    );
    echo $template->render('results-esegui_operazione', ['codice' => $codice_prenotazione, 'note' => $note]);
}