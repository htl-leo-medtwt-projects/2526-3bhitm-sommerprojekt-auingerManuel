<?php

function getChapter($id) {
    global $conn;
    $sql = "SELECT chapter.chapter_id, chapter.name, manga.name AS manga_name 
            FROM chapter 
            JOIN manga ON chapter.manga_manga_id = manga.manga_id
            WHERE chapter.manga_manga_id = " . intval($id);
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_all($result, MYSQLI_ASSOC); 
}

?>