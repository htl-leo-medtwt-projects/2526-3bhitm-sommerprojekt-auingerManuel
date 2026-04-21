<?php

function getCountry($id) {
    global $conn;
    $sql = "SELECT countryname FROM country WHERE country_id = " . intval($id);
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result); 
}

function getshortcut($id) {
    global $conn;
    $sql = "SELECT shortcut FROM country WHERE country_id = " . intval($id);
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result); 
}

?>