<?php
// MYASQL DATABASE
$servername = "db_server";
$port = 3306; // standart port kann man weglassen
$username = "mangacourt";
$password = "mangacourtpassword";
$dbname = "mangacourt";

// Suppress mysqli errors and use custom error handling
mysqli_report(MYSQLI_REPORT_OFF);

// create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error){
    // Check if this is an AJAX request
    if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest') {
        header('Content-Type: application/json');
        echo json_encode(['success' => false, 'message' => 'Verbindungsfehler']);
        exit();
    } else {
        die("Verbindung fehlgeschlagen: " . $conn->connect_error);
    }
} 