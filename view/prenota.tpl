<?php $this->layout('main',['argomento'=> 'prenota tampone']) ?>

<form action="prenota.php" method="post">
    <fieldset>
        <legend>Prenota tampone</legend>
        <label for="codice">Codice fiscale</label>
        <input type="text" id="codice" placeholder="Codice fiscale" name="codice"/>
        <label for="giorno">Giorno</label>
        <input type="date" id="giorno" placeholder="Giorno" name="giorno"/>
        <input type="submit" value="Invia la tua richiesta">
    </fieldset>
</form>