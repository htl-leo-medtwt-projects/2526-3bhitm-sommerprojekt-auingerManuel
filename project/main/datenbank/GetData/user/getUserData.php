<?php

function getUserData($userId) {
    global $conn;
    $sql = "SELECT * FROM users WHERE user_id = " . intval($userId);
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result); 
}


function getUserDataByUsername($username) {
    global $conn;
    $sql = "SELECT * FROM users WHERE username = '" . mysqli_real_escape_string($conn, $username) . "'";
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result); 
}   

function getUserIDbyName($username) {
    global $conn;
    $sql = "SELECT user_id FROM users WHERE username = '" . mysqli_real_escape_string($conn, $username) . "'";
    $result = mysqli_query($conn, $sql);
    if ($row = mysqli_fetch_assoc($result)) {
        return $row['user_id'];
    }
    return null; 
}

function getUsernameByID($userId) {
    global $conn;
    $sql = "SELECT username FROM users WHERE user_id = " . intval($userId);
    $result = mysqli_query($conn, $sql);
    if ($row = mysqli_fetch_assoc($result)) {
        return $row['username'];
    }
    return null; 
}


?>
