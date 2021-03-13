<?php

include_once "config.php";

//query di inserimento preparata
$sql = "SELECT * FROM prenotazioni";

$stmt = $pdo->query($sql);

$result = $stmt->fetchAll();

echo "<pre>";
var_dump($result);
echo  "</pre>";