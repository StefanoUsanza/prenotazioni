<?php

include_once "config.php";
require 'vendor/autoload.php';

use League\Plates\Engine;
//creazione oggetto per gestire template
$template = new Engine('./view', 'tpl');

echo $template->render('prenota');
