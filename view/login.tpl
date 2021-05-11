<?php $this->layout('main',['argomento'=> 'login page']) ?>

<form action="login.php" method="post">
    <fieldset>
        <legend>login</legend>
        <div class="row g-3 align-items-center">
            <div class="col-sm-2">
                <label for="username" class="col-form-label">Username</label>
            </div>
            <div class="col-auto">
                <input type="text" id="username" class="form-control" placeholder="username" name="username">
            </div>
        </div>

        <div class="row g-3 align-items-center">
            <div class="col-sm-2">
                <label for="password" class="col-form-label">Password</label>
            </div>
            <div class="col-auto">
                <input type="password" id="password" class="form-control" placeholder="password" name="password">
            </div>
        </div>

        <input type="submit" value="Log in" class="btn btn-primary">
    </fieldset>
</form>