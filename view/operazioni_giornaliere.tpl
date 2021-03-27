<?php $this->layout('main',['argomento'=> 'lista delle operazioni odierne']) ?>

<table>
    <thead><tr>
        <th>data prenotazione</th><th>numero prenotazioni</th>
    </tr></thead>
    <?php foreach($result as $row): ?>

    <tr>
        <td><strong><?php echo $row['giorno']?></strong></td>
        <td><strong><?php echo $row['n_prenotazioni']?></strong></td>
    </tr>
    <?php endforeach ?>
</table>
