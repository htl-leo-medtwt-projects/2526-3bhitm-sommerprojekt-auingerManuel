<?php




function getMangas() {
    global $conn;
    $sql = "SELECT manga.manga_id, manga.name, mangaka.name AS mangaka_name 
            FROM manga 
            JOIN mangaka ON manga.mangaka_mangaka_id = mangaka.mangaka_id";
    $result = mysqli_query($conn, $sql);
$mangas = mysqli_fetch_all($result, MYSQLI_ASSOC);


echo '<div class="manga-list">';
foreach ($mangas as $manga) {
    echo '<div class="manga-item">';
    echo '<a href="./pages/Manga/manga.php?id=' . $manga['manga_id'] . '" class="manga-item">';
    echo '<img src="./Images/dummy.png" alt="' . $manga['name'] . '">';
    echo '<h3>' . $manga['name'] . '</h3>';
    echo '<p>By: ' . $manga['mangaka_name'] . '</p>';
    echo '</a>';
    echo "<div onclick='addToFavorites(" . $manga['manga_id'] . ")' class='addfav'><p>Add to Favorites</p></div>";
    echo '</div>';
}
echo '</div>';
}

function getManga($id) {
    global $conn;
    $sql = "SELECT manga.manga_id, manga.name, mangaka.name AS mangaka_name 
            FROM manga 
            JOIN mangaka ON manga.mangaka_mangaka_id = mangaka.mangaka_id
            WHERE manga.manga_id = " . intval($id);
    $result = mysqli_query($conn, $sql);
    $manga = mysqli_fetch_assoc($result);
    return $manga;
}
?>