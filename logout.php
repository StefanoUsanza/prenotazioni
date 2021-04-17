<?php

include_once 'config.php';
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

//distrugge il file con informazioni di sessione
session_destroy();
//distrugge eventuali informazioni in mermoria RAM
$_SESSION= array();

echo $template->render('logout');