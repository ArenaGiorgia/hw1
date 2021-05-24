<?php
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
    <script src="script/Prenotazioni.js" defer="true"></script>


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
        <img src="img/elenc.png">
        <h1>prenotazioni effettuate</h1>
        <div>
</header>


<section>

    <div class="pren">
        <h3>Le prenotazione sono avvenute con successo!<h3><img src="img/outline_verified_black_24dp.png">
    </div>
    <p>Vai all'elenco delle prenotazioni effettuate, a breve il nostro team la contatterà per comunicarle la data di effettuazione della prestazione!</p>
    <div class="pren">
        <button id="aprielenco">ELENCO PRENOTAZIONI</button>
        <a href="esami.php"<a><button>INDIETRO</button></a>
    </div>


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
