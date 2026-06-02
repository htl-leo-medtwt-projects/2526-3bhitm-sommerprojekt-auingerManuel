<?php

function getChapterRating($chapter_id) {
    global $conn;
    $sql = "SELECT AVG(rating) AS avg_rating FROM post WHERE chapter_chapter_id = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $chapter_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $row = mysqli_fetch_assoc($result);
    return round($row['avg_rating'] ?? 0, 2);
}

function getMangaRating($manga_id) {
    global $conn;
    $sql = "SELECT AVG(chapter_avg) AS avg_rating
            FROM (
                SELECT AVG(rating) AS chapter_avg
                FROM post
                WHERE manga_manga_id = ?
                GROUP BY chapter_chapter_id
            ) AS chapter_ratings";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $manga_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $row = mysqli_fetch_assoc($result);
    return round($row['avg_rating'] ?? 0, 2);
}

?>