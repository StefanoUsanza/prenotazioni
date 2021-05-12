<?php $this->layout('main')?>

<div class="container-fluid banner">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-md">
                <div class="navbar-brand">TAMPONANDO CON LE STELLE</div>
                <ul class="nav">
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
    <table class="table table-sm table-bordered">
        <thead style="background: #566573">
        <tr>
            <th scope="col" class="text-white text-center bg-transparent">Codice fiscale</th>
            <th scope="col" class="text-white text-center bg-transparent">Codice prenotazione</th>
            <th scope="col" class="text-white text-center bg-transparent">Data</th>
        </tr>
        </thead>
        <tbody style="background: #212F3D">
    <?php foreach($result as $row): ?>

    <tr>
        <td class="text-white text-center bg-transparent"><strong><?php echo $row['codice_fiscale']?></strong></td>
        <td class="text-white text-center bg-transparent"><strong><?php echo $row['codice_prenotazione']?></strong></td>
        <td class="text-white text-center bg-transparent"><strong><?php echo $row['giorno']?></strong></td>
    </tr>
    <?php endforeach ?>
        </tbody>
    </table>
    <div class="testo4">
        <p class="text-center">
            Sito web per la prenotazione di tamponi e vaccini
        </p>
    </div>
</div>
</div>
<footer class="text-muted bg-transparent">
    <p class="text-left" style="color:#ffffff">© 2021 TAMPONANDO CON LE STELLE. All Rights Reserved.
    </p>
</footer>
</div>

