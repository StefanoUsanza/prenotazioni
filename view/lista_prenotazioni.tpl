<?php $this->layout('main',['argomento'=> 'lista delle prerenotazioni']) ?>

<table>
    <thead><tr>
        <th>Codice fiscale</th><th>data prenotazione</th>
        <p> ciao <?=$username?></p>
    </tr></thead>
    <?php foreach($result as $row): ?>

    <tr>
        <td><strong><?php echo $row['codice_fiscale']?></strong></td>
        <td><strong><?php echo $row['giorno']?></strong></td>
    </tr>
    <?php endforeach ?>
</table>