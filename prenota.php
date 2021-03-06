<?php

//mostra i messaggi di errori ma non vengono loggati
ini_set('display_errors', 1);
ini_set('log_errors', 0);


$host = 'localHost';
$db = 'app_prenotazioni';
$user = 'root';
$pass = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

$pdo= new PDO($dsn, $user, $pass);

$codice_fiscale= 'BGTLSN00B157H';
$giorno = '2021-03-06';

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