<?php
require 'server/functions.php';

$connection = dbConnect();
$id = $_GET["id"];
deleteTrack($id, $connection);

header("Location: index.php");
exit;
?>
