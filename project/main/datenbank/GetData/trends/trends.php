<?php
session_start();

require_once "../../mysqlConnection.php";

// Eingaben validieren
$allowedLimits = [3, 5, 10];
$limit = isset($_GET['limit']) && in_array((int)$_GET['limit'], $allowedLimits)
    ? (int)$_GET['limit']
    : 10;

$method = $_GET['method'] ?? 'votes';
$format = $_GET['format'] ?? 'html'; // 'html' or 'json'

header('Content-Type: ' . ($format === 'json' ? 'application/json' : 'text/html; charset=utf-8'));

if ($method === 'votes') {
    echo $format === 'json' ? json_encode(getTrendsMangaData('votes', $limit)) : displayTrendsList(getTrendsMangaData('votes', $limit));
} elseif ($method === 'comments') {
    echo $format === 'json' ? json_encode(getTrendsMangaData('comments', $limit)) : displayTrendsList(getTrendsMangaData('comments', $limit));
} else {
    echo json_encode(['error' => 'Unbekannte Methode']);
}


// SQL search
function getTrendsMangaData($method, $limit) {
    global $conn;
    
    if ($method === 'votes') {
        $sql = "SELECT 
                    manga.manga_id, 
                    manga.name, 
                    mangaka.name AS mangaka_name,
                    AVG(post.rating) AS avg_rating,
                    COUNT(post.post_id) AS num_posts
                FROM manga
                JOIN mangaka ON manga.mangaka_mangaka_id = mangaka.mangaka_id
                LEFT JOIN post ON manga.manga_id = post.manga_manga_id
                GROUP BY manga.manga_id, manga.name, mangaka.name
                ORDER BY avg_rating DESC
                LIMIT " . $limit;
    } else {
        $sql = "SELECT 
                    manga.manga_id,
                    manga.name,
                    mangaka.name AS mangaka_name,
                    COUNT(comments.comment_id) AS total_comments,
                    COUNT(DISTINCT post.post_id) AS num_posts
                FROM manga
                JOIN mangaka ON manga.mangaka_mangaka_id = mangaka.mangaka_id
                LEFT JOIN post ON manga.manga_id = post.manga_manga_id
                LEFT JOIN comments ON post.post_id = comments.post_post_id
                GROUP BY manga.manga_id, manga.name, mangaka.name
                ORDER BY total_comments DESC, num_posts DESC
                LIMIT " . $limit;
    }
    // Limit mithilfe von Ki
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        return ['error' => mysqli_error($conn)];
    }
    
    return mysqli_fetch_all($result, MYSQLI_ASSOC);
}


function displayTrendsList($mangas) {
    if (isset($mangas[0]['error'])) {
        return '<div class="trends-error">' . htmlspecialchars($mangas[0]['error']) . '</div>';
    }
    
    if (empty($mangas)) {
        return '<div class="trends-empty">Keine Trends verfügbar</div>';
    }
    
    $print = '<div class="trends-container">';
    
    // erste Manga besodere Darstellung
    $first = $mangas[0];
    $print .= '<a href="../Manga/manga.php?manga_id=' . $first['manga_id'] . '" class="trends-numberOne">';
    $print .= '<div class="trends-numberOne">';
    $print .= '<div class="trends-numberOne-inner">';
    $print .= '<img src="../../Images/logos/' . htmlspecialchars($first['name']) . '.jpg" alt="' . htmlspecialchars($first['name']) . '" class="trends-numberOne-img">';
    $print .= '<div class="trends-numberOne-info">';
    $print .= '<h2>' . htmlspecialchars($first['name']) . '</h2>';
    $print .= '<p class="trends-mangaka">by ' . htmlspecialchars($first['mangaka_name']) . '</p>';
    
    if (isset($first['avg_rating'])) {
        $print .= '<p class="trends-stat">Average Rating: ' . number_format($first['avg_rating'], 2) . '/5</p>';
    }
    if (isset($first['total_comments'])) {
        $print .= '<p class="trends-stat">Total Comments: ' . $first['total_comments'] . '</p>';
    }
    if (isset($first['num_posts'])) {
        $print .= '<p class="trends-stat"> Posts: ' . $first['num_posts'] . '</p>';
    }
    
    $print .= 
    '</div>
    </div>
    </div>
    </a>';
    
    
    // Rästliche Mangas in Grid
    if (count($mangas) > 1) {
        $print .= '<div class="trends-grid">';
        
        for ($i = 1; $i < count($mangas); $i++) {
            $manga = $mangas[$i];
            $print .= '<a href="../Manga/manga.php?manga_id=' . $manga['manga_id'] . '" class="trends-card-link">';
            $print .= '<div class="trends-card">';
            $print .= '<img src="../../Images/logos/' . htmlspecialchars($manga['name']) . '.jpg" alt="' . htmlspecialchars($manga['name']) . '" class="trends-card-img">';
            $print .= '<div class="trends-card-content">';
            $print .= '<h3>' . htmlspecialchars($manga['name']) . '</h3>';
            $print .= '<p class="trends-card-mangaka">' . htmlspecialchars($manga['mangaka_name']) . '</p>';
            
            if (isset($manga['avg_rating'])) {
                $print .= '<p class="trends-card-stat">' . number_format($manga['avg_rating'], 2) . '</p>';
            }
            if (isset($manga['total_comments'])) {
                $print .= '<p class="trends-card-stat">' . $manga['total_comments'] . '</p>';
            }
            
            $print .= '
            </div>
            </div>
            </a>
            ';
            
        }
        
        $print .= '</div>';
    }
    
    $print .= '</div>';
    
    return $print;
}

?>