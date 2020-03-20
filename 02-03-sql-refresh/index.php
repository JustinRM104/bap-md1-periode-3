<?php
$hostname='localhost';
$username='root';
$password='';
$database='tracksdatabase';

try {
  $connection = new PDO('mysql:host='.$hostname.';dbname='.$database, $username, $password);
  $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $result = $connection->query("SELECT * FROM afspeellijst;");
}
catch(PDOException $e) {
  echo "Something gone wrong while connecting to the database.";
  exit;
}
?>

<!DOCTYPE html>
<html lang="nl" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Justin Rodriguez Montoya">
    <meta name="keywords" content="developer, html, css, js, javascript, portfolio, web-developer, web">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="style.css">

    <title>Muziek Tracks</title>
  </head>
  <body>
    <div class="top">
      <h1>De muziek database</h1>
      <h2>Door Justin</h2>
    </div>

    <nav>
      <a href="add.php">Voeg nummer toe</a>
      <a href="#">Nummer bijwerken</a>
      <a href="#">Nummer verwijderen</a>
    </nav>

    <div class="trackList">
      <?php
      foreach ($result as $key => $row) {
        ?>
        <section>

        </section>
        <?php
      }
      ?>
    </div>

  </body>
</html>
