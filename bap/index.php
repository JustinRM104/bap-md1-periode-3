<?php
require 'server/functions.php';

$connection = dbConnect();
$musicTracks = NULL;
session_start();

try {
  $musicTracks = $connection->query('SELECT * FROM `playlist`');
}
catch (PDOException $e) {

  exit;
}


?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="img/logo.ico">
    <title>Music Tracks</title>
    <meta name="description" content="">
    <meta name="keywords" content="tracks, music, ">
    <meta name="author" content="Justin Rodriguez Montoya">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/master.css">
  </head>
  <body>
    <div class="bg"></div>

    <main id="box">
      <?php
      foreach ($musicTracks as $key => $row) {
        ?>
        <section>
          <?php
          if (substr($row["image"], 0, 4) == "http") {
            // use link for image
            ?> <img src="<?php echo $row["image"]; ?>" alt="" draggable="false"> <?php
          }
          else {
            // image stored in own folder
            ?> <img src="coverimages/<?php echo $row["image"]; ?>" alt="" draggable="false"> <?php
          }
          ?>
          <div class="info">
            <h2><?php echo $row["id"] . ". " . $row["title"] . "."; ?> </h2>
            <h3>● Artist: <?php echo $row["artist"] . "."; ?> </h3>
            <h3>● Album: <?php echo $row["album"] . "."; ?> </h3>
            <h3>● Length: <?php echo gmdate('H:i:s', $row["length"]) . "."; ?> </h3>
            <?php
            if (isset($_SESSION['userid'])) {
              ?><a href="edit.php?id=<?php echo $row["id"]; ?>" class="edit">EDIT</a> <?php
            }
            ?>
          </div>
        </section>
        <?php
      }
      ?>
    </main>

    <div class="buttons">
      <a href="add.php">ADD SONG</a>
      <a href="register.php">REGISTER</a>
      <?php
      if (isset($_SESSION['userid'])) {
        ?><a href="logout.php">LOGOUT</a><?php
      }
      else {
        ?><a href="login.php">LOGIN</a><?php
      }
      ?>
    </div>
  </body>
</html>
