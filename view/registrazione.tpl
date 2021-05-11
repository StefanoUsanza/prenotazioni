<?php $this->layout('main',['argomento'=> 'registrazione']) ?>

<form action="registrazione.php" method="post">
    <div class="row g-3 align-items-center">
        <div class="col-sm-2">
            <label for="username" class="col-form-label">Username</label>
        </div>
        <div class="col-auto">
            <input type="text" id="username" name="username" class="form-control" aria-describedby="usernameHelpInline">
        </div>
    </div>

    <div class="row g-3 align-items-center">
        <div class="col-sm-2">
            <label for="codice_fiscale" class="col-form-label">codice fiscale</label>
        </div>
        <div class="col-auto">
            <input type="text" id="codice_fiscale" name="codice_fiscale" class="form-control" aria-describedby="usernameHelpInline">
        </div>
    </div>

    <div class="row g-3 align-items-center">
        <div class="col-sm-2">
            <label for="password" class="col-form-label">Password</label>
        </div>
        <div class="col-auto">
            <input type="password" id="password" name="password" class="form-control" aria-describedby="passwordHelpInline">
        </div>
    </div>
    <div class="row g-3 align-items-center">
        <div class="col-sm-2">
            <label for="cpassword" class="col-form-label">Conferma Password</label>
        </div>
        <div class="col-auto">
            <input type="password" id="cpassword" name="cpassword" class="form-control" aria-describedby="passwordHelpInline">
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Registrati</button>
</form>