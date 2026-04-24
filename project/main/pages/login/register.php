<?php
// register.php
session_start();
require_once "../../datenbank/mysqlConnection.php";
require "../../datenbank/GetData/user/saveUser.php";

?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Registrieren - MangaCourt</title>
    <link rel="stylesheet" href="../../mainstyle.css">
    <link rel="stylesheet" href="../../styles/registerStyle.css">
</head>
<body>

<div class="card">
    <h1>Registrieren</h1>

    <?php if ($error): ?>
        <p class="error"><?= htmlspecialchars($error) ?></p>
    <?php endif; ?>

    <form method="POST">
        <input type="text"     name="username" placeholder="Benutzername" required>
        <input type="email"    name="email"    placeholder="E-Mail"       required>
        <input type="password" name="password" placeholder="Passwort"     required>
        <select name="country">
        <?php
        $countries = mysqli_query($conn, "SELECT * FROM country");
            while ($c = mysqli_fetch_assoc($countries)):?>          
            <option value="<?= $c['country_id'] ?>"><?= $c['countryname'] ?></option>
                <?php endwhile; ?>
        </select>
        <button type="submit">Registrieren</button>
    </form>

    <div class="login-link">
        Bereits einen Account? <a href="login.php">Zum Login</a>
    </div>
</div>

</body>
</html>