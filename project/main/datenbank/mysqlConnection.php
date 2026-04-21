<?php
// MYASQL DATABASE
$servername = "db_server";
$port = 3306; // standart port kann man weglassen
$username = "mangacourt";
$password = "mangacourtpassword";
$dbname = "mangacourt";

// create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error){
    die("Connection failed: " . $conn->connect_error);
} 