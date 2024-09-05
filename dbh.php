<?php

$servername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "bc-hris";

$conn = mysqli_connect($servername, $dbUsername, $dbPassword, $dbName);

if(!$conn) {
    echo "Database Connection Failed";
}
?>