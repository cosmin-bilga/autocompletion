<?php

require_once "connection.php";

$conn = Connection::getConnection();

try {

    if (isset($_GET["search"])) {
        $search = $_GET["search"];
    }
    $sql = "SELECT * FROM animaux WHERE nom LIKE :name LIMIT 10";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':name' => $search . "%"]);
    $res = $stmt->fetchAll();
    $sql = "SELECT * FROM animaux WHERE nom LIKE :name LIMIT 10";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':name' => "_%" . $search . "%"]);
    $res2 = $stmt->fetchAll();
    echo (json_encode([$res, $res2]));
} catch (PDOException $e) {
    echo $e->getMessage();
}
