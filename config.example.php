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

$prenotazioni_max='n_max_prenotazioni';

session_start();