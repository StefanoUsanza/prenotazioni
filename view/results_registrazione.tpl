<?php $this->layout('main',['argomento'=> 'registrazione effettuata']) ?>

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
                    <li class="nav-item">
                        <a class="nav-link" href="pre-login.php">
                            <HOME>LOGIN</HOME>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div>
            <p> ciao <?=$username?>, la registrazione è stata completata correttamente, accedi per utilizzare il servizio</p>
        </div>
        </div>
    <hr id="linea-registrazione">
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>