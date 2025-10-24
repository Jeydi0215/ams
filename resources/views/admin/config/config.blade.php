<?php
// config.php - Localhost version

$servername = "127.0.0.1"; // or "localhost"
$username   = "root";      // default user in XAMPP/WAMP
$password   = "";          // default has no password
$dbname     = "afis";      // your local database name

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$conn->set_charset("utf8");
?>
