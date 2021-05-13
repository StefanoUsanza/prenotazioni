<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

if($_POST['codice']==null){
    echo $template->render('annulla_errato');
}
else{
$codice_prenotazione= $_POST['codice'];
$cod= $_SESSION['codice_fiscale'];
$stmt = $pdo->query("select * from prenotazioni
where prenotazioni.codice_prenotazione= '$codice_prenotazione' and prenotazioni.codice_fiscale= '$cod'
and eseguito=0 and annullato=0");
$temp=null;
    while($row =$stmt->fetch(PDO::FETCH_ASSOC)){
        $temp = $row['codice_prenotazione'];
    }
if($temp==null)
    echo $template->render('login_errato');
else{
    //query di inserimento preparata
    $sql = "UPDATE prenotazioni SET annullato=true where prenotazioni.codice_prenotazione= :codice
    and prenotazioni.codice_fiscale= '$cod'";

    //invio query al DB che la tiene in memoria
    $stm = $pdo->prepare($sql);

    //invio dei dati per i segnaposto
    $stm->execute(
        [
            'codice' => $codice_prenotazione
        ]
    );
        echo $template->render('results_annulla', ['codice' => $codice_prenotazione]);
    }
}