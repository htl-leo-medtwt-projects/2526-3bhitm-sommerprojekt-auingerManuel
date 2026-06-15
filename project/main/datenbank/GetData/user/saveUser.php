<?php

$error   = "";
$success = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $email    = trim($_POST['email']);
    $country_id = isset($_POST['country']) ? intval($_POST['country']) : null;

    // Validierung
    if (empty($username) || empty($password) || empty($email)) {
        $error = "Alle Felder sind erforderlich!";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $error = "Ungültige E-Mail-Adresse!";
    } elseif ($country_id === null || $country_id === 0) {
        $error = "Bitte wählen Sie ein Land aus!";
    } else {
        // Prüfen ob Username schon existiert
        $check = "SELECT user_id FROM users WHERE username = ?";
        $stmt  = mysqli_prepare($conn, $check);
        mysqli_stmt_bind_param($stmt, "s", $username);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);

        if (mysqli_stmt_num_rows($stmt) > 0) {
            $error = "Benutzername bereits vergeben!";
        } else {
            // Prüfen ob E-Mail schon existiert
            $checkEmail = "SELECT user_id FROM users WHERE email = ?";
            $stmtEmail = mysqli_prepare($conn, $checkEmail);
            mysqli_stmt_bind_param($stmtEmail, "s", $email);
            mysqli_stmt_execute($stmtEmail);
            mysqli_stmt_store_result($stmtEmail);

            if (mysqli_stmt_num_rows($stmtEmail) > 0) {
                $error = "E-Mail-Adresse wird bereits verwendet!";
            } else {
                $hashed = password_hash($password, PASSWORD_DEFAULT);
                $createdAt = date('Y-m-d');

                $sql  = "INSERT INTO users (username, password, email, country_country_id, created_at) VALUES (?, ?, ?, ?, ?)";
                $stmt = mysqli_prepare($conn, $sql);
                
                if (!$stmt) {
                    $error = "Datenbankfehler: " . mysqli_error($conn);
                } else {
                    mysqli_stmt_bind_param($stmt, "sssds", $username, $hashed, $email, $country_id, $createdAt);

                    if (mysqli_stmt_execute($stmt)) {
                        header("Location: login.php?success=Registrierung erfolgreich!");
                        exit();
                    } else {
                        $error = "Registrierung fehlgeschlagen: " . mysqli_stmt_error($stmt);
                    }
                    mysqli_stmt_close($stmt);
                }
            }
            mysqli_stmt_close($stmtEmail);
        }
       
    }
}

?>

