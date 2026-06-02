<?php
session_start();    

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $postId = $_POST['post_id'] ?? null;
    $ratingValue = $_POST['rating_value'] ?? 0;
    $salutation = $_POST['salutation'] ?? null;
    $userId = $_SESSION['user_id'] ?? null;
    $mangaId = $_POST['manga_id'] ?? null;
    $chapterId = $_POST['chapter_id'] ?? null;

    if ($userId !== null && $postId !== null) {
        require_once '../../mysqlConnection.php';
        require_once 'post.php';

        // Verify the post belongs to the user
        $userPost = getUserPost($mangaId, $chapterId, $userId);
        if ($userPost && $userPost['post_id'] == $postId) {
            if (updatePost($postId, $ratingValue, $salutation)) {
                header("Location: ../../../pages/post/post.php?manga_id=" . intval($mangaId) . "&chapter_id=" . intval($chapterId));
                exit();
            } else {
                echo "Fehler beim Aktualisieren des Posts: " . mysqli_error($GLOBALS['conn']);
            }
        } else {
            echo "Sie können nur Ihr eigenes Post aktualisieren.";
        }
    } else {
        echo "Ungültige Anfrage.";
    }
}
?>
