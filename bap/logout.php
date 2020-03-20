<?php
require 'server/functions.php';
$connection = dbConnect();

try {
  session_start();
  session_destroy();

  header("Location: index.php");
}

catch(PDOException $e) {
  echo "<p style=\"color: red; text-align: center; margin-top: 1em; text-shadow: 0px 0px .5em #ff9999;\">Er is een onbekende fout opgetreden.</p>";
  exit;
}

?>
