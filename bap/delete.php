<?php
require 'server/functions.php';

$connection = dbConnect();
$id = $_GET["id"];
$stmt = $connection->prepare("DELETE FROM playlist WHERE id=?");
$stmt->execute([$id]);
$deleted = $stmt->rowCount();

header("Location: index.php");
exit;

?>
