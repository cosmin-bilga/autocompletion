<?php

require_once "connection.php";

$conn = Connection::getConnection();

try {

    if (isset($_GET["id"])) {
        $id = $_GET["id"];
    }
    $sql = "SELECT * FROM animaux WHERE id=:id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':id' => $id]);
    $res = $stmt->fetch();
    echo (json_encode($res));
} catch (PDOException $e) {
    echo $e->getMessage();
}
