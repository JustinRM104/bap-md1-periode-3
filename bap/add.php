<?php
require 'server/functions.php';

$connection = dbConnect();

if (isset($_POST['submit'])) {
  $title = $_POST['title'];
  $artist = $_POST['artist'];
  $album = $_POST['album'];
  $image = $_POST['image'];
  $length = $_POST['length'];

  $sql = "INSERT INTO playlist (`title`, `artist`, `album`, `length`, `image`) VALUES (?,?,?,?,?)";
  $stmt= $connection->prepare($sql);
  $stmt->execute([$title, $artist, $album, $length, $image]);
  header("Location: index.php");
  exit;

}

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="img/logo.ico">
    <title>Music Tracks | Add</title>
    <meta name="description" content="">
    <meta name="keywords" content="tracks, music, ">
    <meta name="author" content="Justin Rodriguez Montoya">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/master.css">
  </head>
  <body>
    <form class="" action="add.php" method="post">
      <input type="text" name="title" value="" placeholder="Title" autocomplete="off">
      <input type="text" name="artist" value="" placeholder="Artist" autocomplete="off">
      <input type="text" name="album" value="" placeholder="Album" autocomplete="off">
      <input type="text" name="image" value="" placeholder="Cover Image Url" autocomplete="off">
      <input type="text" name="length" value="" placeholder="Length" autocomplete="off">
      <input type="submit" name="submit" value="Add Track" class="submit">
      <a href="index.php" class="back">GO BACK</a>
    </form>
  </body>
</html>
