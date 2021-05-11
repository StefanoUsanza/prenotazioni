<?php $this->layout('main') ?>

<div class="container-fluid banner">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-md">
                <div class="navbar-brand">TAMPONANDO CON LE STELLE</div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">LOG OUT</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8 offset-md-2 info">
            <div class="it-datepicker-wrapper">
                <form action="prenota.php" method="post">
                <div class="form-group">
                    <input class="form-control it-date-datepicker" name="giorno" id="giorno" type="date" placeholder="Giorno">
                    <input type="submit" class="btn btn-primary btn-block" value="Prenota tampone">
                </div>
                </form>
            </div>

            <div class="testo1">
                <p class="text-center">
                    seleziona una data per prenotare il tampone
                </p>
            </div>
        </div>
    </div>
    <hr id="linea">
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>

