<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');
//controllo codice vuoto
if($_POST['codice']==null || $_POST['codice_fiscale']==null){
    echo $template->render('errore_operazione');
}
else {
    $codice_fiscale = $_POST['codice_fiscale'];
    $codice_prenotazione = $_POST['codice'];
    $note = $_POST['note'];

    $stmt = $pdo->query("select * from prenotazioni
    where prenotazioni.codice_prenotazione= '$codice_prenotazione'
    and codice_fiscale= '$codice_fiscale' and eseguito=0 and annullato=0");

    $temp = null;
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $temp = $row['codice_prenotazione'];
    }
    //controllo validità dei dati
    if ($temp == null) {
        echo $template->render('errore_operazione');
    } else {
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
}