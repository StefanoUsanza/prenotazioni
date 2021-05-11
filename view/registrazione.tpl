<?php $this->layout('main') ?>

<div class="container-fluid banner">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-md">
                <div class="navbar-brand">TAMPONANDO CON LE STELLE</div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">
                            <HOME>HOME</HOME>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8 offset-md-2 info">
            <form action="registrazione.php" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="username" id="username" aria-describedby="usernameHelp" placeholder="Inserisci l'username">
                </div>
                <div class="form-group">
                    <label for="codice_fiscale">Codice Fiscale</label>
                    <input type="text" class="form-control" name="codice_fiscale" id="codice_fiscale" aria-describedby="usernameHelp" placeholder="Inserisci il codice fiscale">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Inserisci la password">
                </div>
                <div class="form-group">
                    <label for="cpassword">Password</label>
                    <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Reinserisci la password">
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
            <div class="testo3">
                <p class="text-center aling-text-bottom">
                    Registrati per poter prenotare tamponi e vaccini
                </p>
            </div>
        </div>
    </div>
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>