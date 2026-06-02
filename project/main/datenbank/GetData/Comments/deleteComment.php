<?php
session_start();
require_once '../../mysqlConnection.php';
require_once './comments.php';

// Kommentar löschen
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['user_id'])) {
    $commentId = isset($_POST['comment_id']) ? intval($_POST['comment_id']) : null;
    $postId = isset($_POST['post_id']) ? intval($_POST['post_id']) : null;
    $userId = $_SESSION['user_id'];
    
    if ($commentId && deleteComment($commentId, $userId)) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'error' => 'Failed to delete comment']);
    }
} else {
    echo json_encode(['success' => false, 'error' => 'Unauthorized']);
}
?>
