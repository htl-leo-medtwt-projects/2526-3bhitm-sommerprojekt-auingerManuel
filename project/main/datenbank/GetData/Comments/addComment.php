<?php
session_start();

require_once '../../mysqlConnection.php';
require_once './comments.php';


// Komentar hinzufügen
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['user_id'])) {
    $postId = isset($_POST['post_id']) ? intval($_POST['post_id']) : null;
    $content = isset($_POST['comment_content']) ? trim($_POST['comment_content']) : null;
    $userId = $_SESSION['user_id'];
    
    if ($postId && $content && !empty($content)) {
        if (addComment($postId, $userId, $content)) {
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            exit;
        } else {
            echo "Error adding comment: " . mysqli_error($conn);
        }
    } else {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
        exit;
    }
} else {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}
?>
