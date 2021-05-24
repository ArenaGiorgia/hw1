<?php
require_once "configurazione.php";
/**
 * @var array $db contains sql connection parameters
 */
session_start();
if (!isset($_SESSION['user'])) {
    header('Location:login.php');
    exit;
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        StarLabs s.r.l
    </title>
    <link rel="icon" href="img/StarLabsWhite.png">
    <link rel="stylesheet" href="style/esami.css">
    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap"
          rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
    <script src="script/script.js" defer="true"></script>


</head>

<body>
<header>
    <nav>


        <div id="logo">

        </div>

        <div id="menu">
            <a href="home.php">home</a>
            <a href="PrenotazioneEffettuata.php">prenotazioni</a>
            <a href="sedi.php">sedi</a>
            <a href="chisiamo.php">chi siamo</a>
        </div>


        <a class="button" href="logout.php"> logout</a>

        <div id="menutendina">
            <div></div>
            <div></div>
            <div></div>
        </div>


    </nav>
    <div id="sbarra">
        <img src="img/outline_biotech_white_24dp.png">
        <h1>esami</h1>
        <div>
</header>


<section>

    <input type="text" id="ric" placeholder="Cerca Esami..." keyup="ricercaElementi()">

    <a href="PrenotazioneEffettuata.php" class="hidden" id="prenota">PRENOTA</a>
    <h1 class="hidden">Selezionati</h1>
    <div id="preferiti" class='hidden'>

    </div>
    <h1>Esami Disponibili</h1>
    <div id="main">

    </div>

</section>

<footer>

    <p>&copy Giorgia Arena</p>
    <img src="img/instagram (1).png">
    <img src="img/facebook (1).png">
    <img src="img/whatsapp (1).png">
    <p>046002279</p>

</footer>

</body>

</html>