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
                        <a class="nav-link" href="pre-home_page_operatore.php">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">LOG OUT</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8 offset-md-2 info">
            <h1>Esegui tampone</h1>
            <p>Inserisci il codice dell'utente</p>
            <form action="esegui_operazione.php" method="post">
                <div class="form-group">
                    <label for="codice">Codice prenotazione</label>
                    <input type="text" class="form-control" name="codice" id="codice" placeholder="Codice prenotazione">
                </div>
                <div class="form-group">
                    <label for="Note">Note</label>
                    <textarea class="form-control" name="note" id="note" placeholder="Note"></textarea>
                </div>
                <button type="submit" class="btn btn-primary" value="registra tampone">Esegui</button>
            </form>
            <div class="testo2">
                <p class="text-center">
                    inserisci il codice per eseguire l'operazione
                </p>
            </div>
        </div>
    </div>
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>

