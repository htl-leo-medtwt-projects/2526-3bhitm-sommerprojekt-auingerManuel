<?php
// login.php
session_start();
require_once "../../datenbank/mysqlConnection.php";

$error = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    $sql = "SELECT * FROM users WHERE username = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $user = mysqli_fetch_assoc($result);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id']  = $user['user_id'];
        header("Location: ../../index.php");
        exit();
    } else {
        $error = "Falscher Benutzername oder Passwort!";
    }
}
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Login - MangaCourt</title>
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