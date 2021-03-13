<?php

include_once "config.php";

$codice_fiscale= $_POST['codice'];
$giorno = $_POST['giorno'];

//query di inserimento preparata
$sql = "INSERT INTO prenotazioni VALUES (null, :codice_fiscale, :giorno)";

//invio query al DB che la tiene in memoria
$stm = $pdo->prepare($sql);

//invio dei dati per i segnaposto
$stm-> execute(
[
    'codice_fiscale' => $codice_fiscale,
    'giorno' => $giorno
]
);

header('location:lista_prenotazioni.php');
exit(0);