<?php
session_start();
require_once "../../mysqlConnection.php";


if (!isset($_SESSION['user_id'])) {
    echo json_encode(['success' => false, 'message' => 'Nicht eingeloggt']);
    exit();
}

$data = json_decode(file_get_contents('php://input'), true);
$userId = intval($data['user_id']);
$mangaId = intval($data['manga_id']);


if ($userId !== $_SESSION['user_id']) {
    echo json_encode(['success' => false, 'message' => 'Ungültige Anfrage']);
    exit();
}

$sql = "DELETE FROM favmangas WHERE user_user_id = ? AND manga_manga_id = ?";
$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "ii", $userId, $mangaId);
$result = mysqli_stmt_execute($stmt);
echo json_encode(['success' => $result]);

?>