<?php
ob_start();
session_start();
header('Content-Type: application/json');
require_once "../../mysqlConnection.php";

if (!isset($_SESSION['user_id'])) {
    ob_end_clean();
    echo json_encode(['success' => false, 'message' => 'Nicht eingeloggt']);
    exit();
}

$data = json_decode(file_get_contents('php://input'), true);
if (!$data) {
    ob_end_clean();
    echo json_encode(['success' => false, 'message' => 'Ungültige Daten']);
    exit();
}

$userId  = intval($data['user_id'] ?? 0);
$mangaId = intval($data['manga_id'] ?? 0);

if ($userId !== $_SESSION['user_id']) {
    ob_end_clean();
    echo json_encode(['success' => false, 'message' => 'Ungültige Anfrage']);
    exit();
}

if ($userId <= 0 || $mangaId <= 0) {
    ob_end_clean();
    echo json_encode(['success' => false, 'message' => 'Ungültige Parameter']);
    exit();
}

$sql  = "INSERT IGNORE INTO favmangas (user_user_id, manga_manga_id)
         VALUES (?, ?)";
$stmt = mysqli_prepare($conn, $sql);

if (!$stmt) {
    ob_end_clean();
    echo json_encode(['success' => false, 'message' => 'Datenbankfehler: ' . mysqli_error($conn)]);
    exit();
}

mysqli_stmt_bind_param($stmt, "ii", $userId, $mangaId);
$result = mysqli_stmt_execute($stmt);

if (!$result) {
    ob_end_clean();
    echo json_encode(['success' => false, 'message' => 'Fehler beim Hinzufügen']);
    exit();
}

ob_end_clean();
echo json_encode(['success' => true]);
?>