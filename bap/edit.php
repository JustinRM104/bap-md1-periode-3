<?php
require 'server/functions.php';

$connection = dbConnect();

$id = $_GET['id'];
$stmt = $connection->prepare("SELECT * FROM playlist WHERE id=:id");
$stmt->execute(['id' => $id]);
$data = $stmt->fetch();

if (isset($_POST['submit'])) {
  $title = $_POST['title'];
  $artist = $_POST['artist'];
  $album = $_POST['album'];
  $image = $_POST['image'];
  $length = $_POST['length'];

  $sql = "UPDATE playlist SET title=?, artist=?, album=?, length=?, image=? WHERE id=?";
  $stmt= $connection->prepare($sql);
  $stmt->execute([$title, $artist, $album, $length, $image, $id]);

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
    <form class="" action="edit.php?id=<?php echo $id; ?>" method="post">
      <input type="text" name="title" value="<?php echo $data["title"]; ?>" placeholder="Title" autocomplete="off">
      <input type="text" name="artist" value="<?php echo $data["artist"]; ?>" placeholder="Artist" autocomplete="off">
      <input type="text" name="album" value="<?php echo $data["album"]; ?>" placeholder="Album" autocomplete="off">
      <input type="text" name="image" value="<?php echo $data["image"]; ?>" placeholder="Cover Image Url" autocomplete="off">
      <input type="text" name="length" value="<?php echo $data["length"]; ?>" placeholder="Length" autocomplete="off">
      <input type="submit" name="submit" value="Edit Track" class="submit">
      <a href="delete.php?id=<?php echo $id; ?>" class="back">DELETE TRACK</a>
      <a href="index.php" class="back">GO BACK</a>
    </form>
  </body>
</html>
