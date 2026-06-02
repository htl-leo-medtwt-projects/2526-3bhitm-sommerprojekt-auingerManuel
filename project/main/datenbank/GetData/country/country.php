<?php

function getCountry($userId) {
    global $conn;
    $sql = "SELECT country.countryname FROM country 
            JOIN users ON country.country_id = users.country_country_id 
            WHERE users.user_id = " . intval($userId);
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