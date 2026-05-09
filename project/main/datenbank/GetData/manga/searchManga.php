<?php
session_start();

require_once "../../../datenbank/mysqlConnection.php";

header('Content-Type: application/json');

if (!isset($_GET['search'])) {
    echo json_encode(['error' => 'No search term provided']);
    exit();
}

$searchTerm = mysqli_real_escape_string($conn, $_GET['search']);

$sql = "SELECT manga.manga_id, manga.name, mangaka.name AS mangaka_name 
        FROM manga 
        JOIN mangaka ON manga.mangaka_mangaka_id = mangaka.mangaka_id
        WHERE manga.name LIKE '%$searchTerm%' OR mangaka.name LIKE '%$searchTerm%'";

$result = mysqli_query($conn, $sql);
$mangas = mysqli_fetch_all($result, MYSQLI_ASSOC);

echo json_encode($mangas);
?>
