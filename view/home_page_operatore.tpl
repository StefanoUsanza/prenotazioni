<?php $this->layout('main') ?>

<div class="container-fluid banner">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-md">
                <div class="navbar-brand">TAMPONANDO CON LE STELLE</div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link">OPERATORE: <?=$_SESSION['username']?></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">LOG OUT</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8 offset-md-2 info">
            <a href="pre-esegui_operazione.php" class="btn btn-primary btn-block active" role="button" aria-pressed="true">Esegui operazione</a>
            <a href="vprenotazioniordierne.html" class="btn btn-primary btn-block active" role="button" aria-pressed="true">Visualizza prenotazioni odierne</a>
            <div class="testo4">
                <p class="text-center">
                    Esegui un tampone-vaccino o visualizza le prenotazioni odierne
                </p>
            </div>
        </div>
    </div>
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>