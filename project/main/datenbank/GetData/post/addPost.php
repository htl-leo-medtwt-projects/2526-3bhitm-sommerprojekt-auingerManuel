<?php
session_start();    


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $mangaId = $_POST['manga_id'];
    $chapterId = $_POST['chapter_id'];
    $salutation = $_POST['salutation'];
    $ratingValue = $_POST['rating_value'] ?? 0;
    $userId = $_SESSION['user_id'] ?? null;

    if ($userId !== null) {
        require_once '../../mysqlConnection.php';
        require_once 'post.php';

        if (createPost($mangaId, $chapterId, $salutation, $userId, $ratingValue)) {
            header("Location: ../../../pages/post/post.php?manga_id=" . intval($mangaId) . "&chapter_id=" . intval($chapterId));
            exit();
        } else {
            echo "Error creating post.";
        }
    } else {
        echo "You must be logged in to create a post.";
    }
}


function createPost($mangaId, $chapterId, $salutation, $userId, $ratingValue = 0) {
    global $conn;
    $sql = "INSERT INTO post (salutation, created_by, chapter_chapter_id, manga_manga_id, rating) 
            VALUES ('" . mysqli_real_escape_string($conn, $salutation) . "', " . intval($userId) . ", " . intval($chapterId) . ", " . intval($mangaId) . ", " . intval($ratingValue) . ")";
    return mysqli_query($conn, $sql);
}
?>