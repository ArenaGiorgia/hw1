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
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        StarLabs s.r.l
    </title>
    <link rel="icon" href="img/StarLabsWhite.png">
    <link rel="stylesheet" href="style/Referti.css">
    <script src="script/sedi.js" defer="true"></script>

    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
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
    <div class="sbarra">
        <img src="img/outline_location_on_white_24dp.png">
        <h1>SEDI</h1>
    </div>
</header>

<section>
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
</html>
