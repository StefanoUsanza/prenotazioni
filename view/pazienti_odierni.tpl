<?php $this->layout('main',['argomento'=> 'lista delle prerenotazioni odierne']) ?>

<table>
    <thead><tr>
        <th>Codice fiscale</th><th>codice prenotazione</th>
    </tr></thead>
    <?php foreach($result as $row): ?>

    <tr>
        <td><strong><?php echo $row['codice_fiscale']?></strong></td>
        <td><strong><?php echo $row['codice_prenotazione']?></strong></td>
    </tr>
    <?php endforeach ?>
</table>