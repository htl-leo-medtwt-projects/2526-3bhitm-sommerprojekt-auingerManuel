<?php

function getUserData($userId) {
    global $conn;
    $sql = "SELECT * FROM users WHERE user_id = " . intval($userId);
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result); 
}



?>