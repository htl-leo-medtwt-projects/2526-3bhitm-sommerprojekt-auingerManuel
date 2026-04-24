<?php
// login.php
session_start();



require_once "../../datenbank/mysqlConnection.php";
require "../../datenbank/GetData/user/loginUser.php";

?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Login - MangaCourt</title>
    <link rel="stylesheet" href="../../mainstyle.css">
    <link rel="stylesheet" href="../../styles/loginStyle.css">
</head>
<body>

<div class="card">
    <h1>MangaCourt Login</h1>

    <?php if ($error): ?>
        <p class="error"><?= htmlspecialchars($error) ?></p>
    <?php endif; ?>

    <form method="POST">
        <input type="text"     name="username" placeholder="Benutzername" required>
        <input type="password" name="password" placeholder="Passwort"     required>
        <button type="submit">Einloggen</button>
    </form>

    <div class="register-link">
        Noch kein Account? <a href="register.php">Jetzt registrieren</a>
    </div>
</div>

</body>
</html>