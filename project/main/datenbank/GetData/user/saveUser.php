<?php

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

