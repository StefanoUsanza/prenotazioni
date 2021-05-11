<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>prenotazioni</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <header>
        <?php if(isset($_SESSION['username'])): ?>
        ciao <?= $_SESSION['username'] ?> - <a href="logout.php">Logout</a>
        <?php endif; ?>
    </header>
<?= $this->section('content')?>
</body>
</html>