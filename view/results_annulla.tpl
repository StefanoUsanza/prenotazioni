<?php $this->layout('main') ?>

<div class="container-fluid banner">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-md">
                <div class="navbar-brand">TAMPONANDO CON LE STELLE</div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="pre-home_page_utente.php">
                            <HOME>HOME</HOME>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">
                            <HOME>LOGOUT</HOME>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div>
            <p>la prenotazione con codice: <?=$codice?> è stata annulata</p>
        </div>
        </div>
    <hr id="linea-registrazione">
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>