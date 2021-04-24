<?php $this->layout('main',['argomento'=> 'qr code della prenotazione']) ?>
<img src="https://chart.googleapis.com/chart?cht=qr&chs=150x150&chl=<?php echo $codice?>&choe=UTF-8">
<a href="prenota.html">Logout</a>
