<?php

function getAllCountries() {
    global $conn;
    $sql = "SELECT country_id, countryname, shortcut FROM country ORDER BY countryname ASC";
    $result = mysqli_query($conn, $sql);
    $countries = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $countries[] = $row;
    }
    return $countries;
}

?>
