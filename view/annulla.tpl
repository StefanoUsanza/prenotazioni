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
            <h1>Annulla tampone</h1>
            <p>Inserisci il codice dell'utente</p>
            <form action="annulla.php" method="post">
                <div class="form-group">
                    <label for="codice">Codice prenotazione</label>
                    <input type="text" class="form-control" id="codice" placeholder="Codice prenotazione" name="codice">
                </div>
                <button type="submit" class="btn btn-primary" value="Invia la tua richiesta">Annulla</button>
            </form>
            <div class="testo3">
                <p class="text-center">
                    Inserire il codice della prenotazione da annullare
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
