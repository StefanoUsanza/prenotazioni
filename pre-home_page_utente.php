<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

if(isset($_SESSION['username'])){
    echo $template->render('home_page_utente',['username'=>$_SESSION['username']]);
}
else
    echo $template->render('login_errato');