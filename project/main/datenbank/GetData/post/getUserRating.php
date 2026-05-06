<?php
session_start();
require_once '../../mysqlConnection.php';

header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['rating' => null]);
    exit;
}

$user_id = intval($_SESSION['user_id']);
$manga_id = intval($_GET['manga_id'] ?? 0);
$chapter_id = intval($_GET['chapter_id'] ?? 0);

if ($manga_id <= 0 || $chapter_id <= 0) {
    echo json_encode(['rating' => null]);
    exit;
}

$sql = "SELECT rating_value FROM post_rating 
        WHERE created_by = $user_id 
        AND chapter_chapter_id = $chapter_id 
        AND manga_manga_id = $manga_id";

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

echo json_encode([
    'rating' => $row ? intval($row['rating_value']) : null
]);
?>
