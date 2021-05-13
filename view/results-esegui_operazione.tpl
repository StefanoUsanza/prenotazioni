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
        <p> il tampone assocciato al codice <?=$codice?> è stato eseguito</p>
        <p> note: <?=$note?></p>
    </div>
    <hr style="color: transparent; border: 200px solid">
    <footer class="text-muted bg-transparent">
        <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
        </p>
    </footer>
</div>