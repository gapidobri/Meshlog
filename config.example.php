<?php

function openPdo() {
    $servername = "127.0.0.1";
    $dbname = "meshcore";
    $username = "meshcore";
    $password = "meshcore";

    $pdo = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8mb4", $username, $password);

    return $pdo;
}

?>