<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

if($_SESSION['username'] != null){
    echo $template->render('prenota');
}
else
    echo $template->render('login_errato');
