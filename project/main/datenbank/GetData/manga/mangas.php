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
    echo '<img src="./Images/logos/' . $manga['name'] . '.jpg" alt="' . $manga['name'] . '">';
    echo '<h3>' . $manga['name'] . '</h3>';
    echo '<p>By: ' . $manga['mangaka_name'] . '</p>';
    echo '</a>';

    if (isset($_SESSION['user_id']) && isFavManga($_SESSION['user_id'], $manga['manga_id'])) {
        echo "<div onclick='removeFromFavorites(" . $_SESSION['user_id'] . ", " . $manga['manga_id'] . ")' class='favInfoBox'><p>Remove from Favorites</p></div>";
    } else {    

    if (isset($_SESSION['user_id'])) {
    echo "<div onclick='addToFavorites(" . $_SESSION['user_id'] . ", " . $manga['manga_id'] . ")' class='favInfoBox'><p>Add to Favorites</p></div>";

    } else {
        echo "<div class='favInfoBox'><a href='./pages/Login/login.php'><p>Log in to add to Favorites</p></a></div>";
        }
    }

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



function getNamebyId($id) {
    global $conn;
    $sql = "SELECT name FROM manga WHERE manga_id = " . intval($id);
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['name'] ?? null; 
}


function isFavManga($userId, $mangaId) {
    global $conn;
    $sql = "SELECT * FROM favmangas WHERE user_user_id = " . intval($userId) . " AND manga_manga_id = " . intval($mangaId);
    $result = mysqli_query($conn, $sql);
    return mysqli_num_rows($result) > 0;
}


function getfavMangas($userId) {
    global $conn;
    $sql = "SELECT manga.manga_id, manga.name, mangaka.name AS mangaka_name 
            FROM favmangas 
            JOIN manga ON favmangas.manga_manga_id = manga.manga_id 
            JOIN mangaka ON manga.mangaka_mangaka_id = mangaka.mangaka_id
            WHERE favmangas.user_user_id = " . intval($userId);
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_all($result, MYSQLI_ASSOC); 
}


function printFavMangas($userId) {
    $favMangas = getfavMangas($userId);

    if (empty($favMangas)) {
        echo "<p>Du hast noch keine Favoriten hinzugefügt.</p>";
    } else {
        echo '<div class="arrow-left"><img src="../../Images/arrow-left.png" alt="Left Arrow"></div>';
        echo '<div class="fav-manga-list">';
        foreach ($favMangas as $manga) {
            echo '<div class="manga-item">';
            echo '<a href="./pages/Manga/manga.php?id=' . $manga['manga_id'] . '" class="manga-item">';
            echo '<img src="../../Images/logos/' . $manga['manga_id'] . '.jpg" alt="' . $manga['name'] . '">';
            echo '<h3>' . $manga['name'] . '</h3>';
            echo '<p>By: ' . $manga['mangaka_name'] . '</p>';
            echo '</a>';
            echo "<div onclick='removeFromFavorites_profil(" . $userId . ", " . $manga['manga_id'] . ")' class='removefav'><p>Remove from Favorites</p></div>";
            echo '</div>';
        }
        echo '</div>';
        echo '<div class="arrow-right"><img src="../../Images/arrow-right.png" alt="Right Arrow"></div>';
    }
}

?>