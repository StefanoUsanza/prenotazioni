<?php $this->layout('main') ?>

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
                        <a class="nav-link" href="pre-home_page_utente.php">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">LOG OUT</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8 offset-md-2 info">
            <p class="text-center">
                Il tuo codice per la prenotazione è: <?=$codice?>
            </p>
            <div class="col-4 mx-auto d-flex justify-content-center flex-wrap">
                <img src="https://chart.googleapis.com/chart?cht=qr&chs=250x250&chl=<?php echo $codice?>&choe=UTF-8">
            </div>
            <div class="testo2">
                <p class="text-center">
                    Presenta il codice ad un operatore il giorno della prenotazione
                </p>
            </div>
        </div>

    </div>
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>

