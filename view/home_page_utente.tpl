<?php $this->layout('main',['argomento'=> 'home page']) ?>

<div class="container-fluid banner">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-md">
                <div class="navbar-brand">TAMPONANDO CON LE STELLE</div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link">UTENTE: <?=$_SESSION['username']?></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">LOG OUT</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8 offset-md-2 info">
            <div class="d-grid gap-1 col-6 mx-auto btn">
            <a href="pre-prenota.php" class="btn btn-primary" role="button" aria-pressed="true">Prenota tampone</a>
            <a href="pre-annulla.php" class="btn btn-primary" role="button" aria-pressed="true">Annulla tampone</a>
            <a href="vaccino.html" class="btn btn-primary" role="button" aria-pressed="true">Prenota vaccino</a>
            <a href="lista_prenotazioni.php" class="btn btn-primary" role="button" aria-pressed="true">Visualizza prenotazioni</a>
            </div>
            <div class="testo2">
                <p class="text-center">
                    Prenota un tampone-vaccino, oppure controlla le tue prenotazioni
                </p>
            </div>
        </div>
    </div>
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>