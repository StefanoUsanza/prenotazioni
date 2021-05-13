<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

function generateRandomString($length = 45) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}


function random_str(
    int $length = 50,
    string $keyspace = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
): string {
    if ($length < 1) {
        throw new \RangeException("Length must be a positive integer");
    }
    $pieces = [];
    $max = mb_strlen($keyspace, '8bit') - 1;
    for ($i = 0; $i < $length; ++$i) {
        $pieces []= $keyspace[random_int(0, $max)];
    }
    return implode('', $pieces);
}

$codice_fiscale= $_SESSION['codice_fiscale'];
$giorno = $_POST['giorno'];
$codice_prenotazione = random_str();

//controllo numero massimo di prenotazioni nel giorno dato
$stmt = $pdo->query("select count(*) as n_prenotazioni from prenotazioni
where giorno='$giorno'");

$n_prenotazioni=0;

while($row =$stmt->fetch(PDO::FETCH_ASSOC)){
    $n_prenotazioni = $row['n_prenotazioni'];
}

if($n_prenotazioni>=$prenotazioni_max) {
    echo $template->render('prenotazioni_max');
}
else {
//query di inserimento preparata
    $sql = "INSERT INTO prenotazioni VALUES (null, :codice_fiscale, :giorno, :codice_prenotazione, '0', null, '0','0')";

//invio query al DB che la tiene in memoria
    $stm = $pdo->prepare($sql);

//invio dei dati per i segnaposto
    $stm->execute(
        [
            'codice_fiscale' => $codice_fiscale,
            'giorno' => $giorno,
            'codice_prenotazione' => $codice_prenotazione
        ]
    );
    //header('location:lista_prenotazioni.php');
    echo $template->render('qr_code', ['codice'=>$codice_prenotazione]);

    exit(0);
}