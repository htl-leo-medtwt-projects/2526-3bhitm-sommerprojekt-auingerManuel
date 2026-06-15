<?php


// SQL Statements 

function addComment($postId, $userId, $content) {
    global $conn;
    
   
    $createdAt = date('Y-m-d H:i:s');
    
    $sql = "INSERT INTO comments (content, created_at, post_post_id, user_user_id) 
            VALUES (?, ?, ?, ?)";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssii", $content, $createdAt, $postId, $userId);
    
    return $stmt->execute();
}

function getCommentsByPost($postId) {
    global $conn;
    
    $sql = "SELECT comments.comment_id, comments.content, comments.created_at, 
                   comments.user_user_id, users.username, users.imageName
            FROM comments
            JOIN users ON comments.user_user_id = users.user_id
            WHERE comments.post_post_id = ?
            ORDER BY comments.created_at DESC";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $postId);
    $stmt->execute();
    
    return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
}

function deleteComment($commentId, $userId) {
    global $conn;
    $commentId = intval($commentId);
    $userId = intval($userId);
    
    $sql = "DELETE FROM comments WHERE comment_id = $commentId AND user_user_id = $userId";
    return mysqli_query($conn, $sql);
}

function getCommentCount($postId) {
    global $conn;
    $postId = intval($postId);
    
    $sql = "SELECT COUNT(*) AS comment_count FROM comments WHERE post_post_id = $postId";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    
    return $row['comment_count'] ?? 0;
}

?>
