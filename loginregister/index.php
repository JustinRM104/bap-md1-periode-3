<?php
$hostname='localhost';
$username='root';
$password='';
$database='project_thewall';

try {
  $connection = new PDO('mysql:host='.$hostname.';dbname='.$database, $username, $password);
  $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // Tabellen
  $allPosts = $connection->query("SELECT * FROM uploads;");
  $loggedIn = false;

  session_start();
  if (isset($_SESSION['userid'])) {
    $loggedIn = true;
  }
  // Data van registratie

}
catch(PDOException $e) {
  echo "<p style=\"color: red; text-align: center; margin-top: 1em; text-shadow: 0px 0px .5em #ff9999;\">Er is een onbekende fout opgetreden.</p>";
  exit;
}
?>

<!DOCTYPE html>
<html lang="nl" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Justin Rodriguez Montoya, Mike Yang">
    <meta name="keywords" content="feed, fashion, kleding, streetware, jongvolwassen, broek, trui, verhaal, sociaal">
    <meta name="description" content="">

    <link rel="stylesheet" href="css/master.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="shortcut icon" href="img/logo.png">
    <title>FashaHolic | Feed</title>

    <script src="https://kit.fontawesome.com/7023acb312.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="bg"></div>

    <nav>
      <?php
      if ($loggedIn) {
        if (isset($_SESSION['pf'])) {
          ?><img src="profilepictures/<?php $_SESSION['pf'] ?>" alt="" class="myProfilePicture"><?php
        }
        else {
          ?><img src="img/defaultuser.jpg" alt="profilepicture" class="myProfilePicture"><?php
        }
        ?><h3 class="myUsername"> <?php echo ucfirst($_SESSION['username']); ?></h3><?php
      }

      ?>
      <a href="#"><span class="fas fa-home"></span> Feed</a>
      <a href="#"><span class="fas fa-bookmark"></span> Bookmarks</a>
      <a href="#"><span class="fas fa-user-edit"></span> Profiel Instellingen</a>
      <?php
      if ($loggedIn) {
        ?><a href="logout.php"><span class="fas fa-sign-in-alt"></span> Uitloggen</a><?php
      }
      else {
        ?><a href="login.php"><span class="fas fa-sign-in-alt"></span> Inloggen</a><?php
      }
      ?>
    </nav>

    <div class="feed">

      <div class="top" id="top">
        <h2><span class="fas fa-comments"></span> Feed</h2>
      </div>

      <form class="messageBox" action="index.html" method="POST">
        <input type="title" name="title" value="" placeholder="Titel" class="title" autocomplete="off" required>
        <textarea name="message" rows="8" cols="80" placeholder="Plaats een bericht" required></textarea>
        <div class="functions">
          <input type="file" id="real-file" hidden="hidden" enctype="multipart/form-data" accept=".jpg .svg .jpeg .png" required>
          <button type="button" id="custom-button">FOTO TOEVOEGEN</button>
          <span id="custom-text"></span>
        </div>
        <a href="#temp"><span class="far fa-paper-plane send"></span> Plaats</a>
      </form>

      <div class="posts">
        <?php
        foreach ($allPosts as $key => $row) {
          ?>
          <section>
            <div class="icons">
              <h5 class="fas fa-heart like"> <span><?php echo $row["Likes"] ?></span></h5>
              <h5 class="fas fa-bookmark save"> <span></span></h5>
            </div>
            <img src="img/defaultuser.jpg" alt="" class="profilePicture">
            <h2><?php echo $row["auteur"] ?><span> · 2 mar. 2020</span></h2>

            <?php if (substr($row["image"], 0, 4) == "http") {
              ?> <img src="<?php echo $row["image"] ?>" alt="<?php echo $row["auteur"] ?>" class="postImg"> <?php
            }
            else {
              ?> <img src="postimages/<?php echo $row["image"] ?>" alt="<?php echo $row["auteur"] ?>" class="postImg"> <?php
            } ?>
            <h3><?php echo $row["titel"] ?></h3>
            <p><?php echo $row["caption"] ?></p>
          </section>
          <?php
        }
        ?>
      </div>

      <h3 class="end">Dat was alles!</h3>
      <a href="#top" class="fas fa-angle-double-up"></a>

    </div>

    <script src="js/upload.js"></script>
  </body>
</html>
