<?php $this->layout('main') ?>

<div class="container-fluid banner">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-md">
                <div class="navbar-brand">TAMPONANDO CON LE STELLE</div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">
                            <HOME>HOME</HOME>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8 offset-md-2 info">
            <form action="login.php" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="username" class="form-control" name="username" id="username" aria-describedby="usernameHelp" placeholder="Inserisci l'username">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Inserisci la password">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
            <div class="testo1">
                <p class="text-center aling-text-bottom">
                    Sito web per la prenotazione di tamponi e vaccini
                </p>
            </div>
        </div>
    </div>
</div>
<footer class="text-muted bg-dark">
    <p class="text-left">© 2020 D&D_API. All Rights Reserved.
    </p>
</footer>