<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>prenotazioni</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-default.min.css">
</head>
<body>
<h1>Portale prenotazioni</h1>
<h2>Lista delle prenotazioni</h2>

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
</body>
</html>