<?php
// register.php
session_start();
require_once "../../datenbank/mysqlConnection.php";

$error   = "";
$success = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $email    = trim($_POST['email']);
    $country_id = $_POST['country'];

    // Prüfen ob Username schon existiert
    $check = "SELECT user_id FROM users WHERE username = ?";
    $stmt  = mysqli_prepare($conn, $check);
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);

    if (mysqli_stmt_num_rows($stmt) > 0) {
        $error = "Benutzername bereits vergeben!";
    } else {
        $hashed = password_hash($password, PASSWORD_DEFAULT);

        $sql  = "INSERT INTO users (username, password, email, country_country_id) VALUES (?, ?, ?, ?)";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "sssi", $username, $hashed, $email, $country_id);

        if (mysqli_stmt_execute($stmt)) {
            header("Location: login.php");
            exit();
        } else {
            $error = "Registrierung fehlgeschlagen!";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Registrieren - MangaCourt</title>
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