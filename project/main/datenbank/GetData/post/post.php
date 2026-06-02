<?php


function getPost($mangaId, $chapterId) {
    global $conn;
    $sql = "SELECT post.post_id, post.create_at, post.salutation, post.rating, post.created_by AS user_id, users.username AS bloger_name
            FROM post 
            JOIN users ON post.created_by = users.user_id
            WHERE post.manga_manga_id = " . intval($mangaId) . " AND post.chapter_chapter_id = " . intval($chapterId) . "
            ORDER BY post.create_at DESC";
    $result = mysqli_query($conn, $sql);
    $posts = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $posts[] = $row;
    }
    return $posts;
}

function getUserByPost($postId) {
    global $conn;
    $sql = "SELECT users.* FROM users JOIN post ON users.user_id = post.created_by WHERE post.post_id = " . intval($postId);
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result); 
}


function deletePost($postId, $userId) {
    global $conn;
    $sql = "DELETE FROM post WHERE post_id = " . intval($postId) . " AND created_by = " . intval($userId);
    return mysqli_query($conn, $sql);
}

function getCountOfposts($mangaId, $chapterId) {
    global $conn;
    $sql = "SELECT COUNT(*) AS post_count FROM post WHERE manga_manga_id = " . intval($mangaId) . " AND chapter_chapter_id = " . intval($chapterId);
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['post_count'] ?? 0;
}


function checkAlreadyPosted($mangaId, $chapterId, $userId) {
    global $conn;
    $sql = "SELECT post_id FROM post WHERE manga_manga_id = " . intval($mangaId) . " AND chapter_chapter_id = " . intval($chapterId) . " AND created_by = " . intval($userId);
    $result = mysqli_query($conn, $sql);
    return mysqli_num_rows($result) > 0;
}

function getUserPost($mangaId, $chapterId, $userId) {
    global $conn;
    $sql = "SELECT post_id, rating, salutation FROM post WHERE manga_manga_id = " . intval($mangaId) . " AND chapter_chapter_id = " . intval($chapterId) . " AND created_by = " . intval($userId);
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        return mysqli_fetch_assoc($result);
    }
    return null;
}

function updatePostRating($postId, $ratingValue) {
    global $conn;
    $sql = "UPDATE post SET rating = " . intval($ratingValue) . " WHERE post_id = " . intval($postId);
    return mysqli_query($conn, $sql);
}

function updatePost($postId, $ratingValue, $salutation) {
    global $conn;
    $salutation = mysqli_real_escape_string($conn, $salutation);
    $sql = "UPDATE post SET rating = " . intval($ratingValue) . ", salutation = '" . $salutation . "' WHERE post_id = " . intval($postId);
    return mysqli_query($conn, $sql);
}

?>