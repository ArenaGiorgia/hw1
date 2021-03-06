<?php
?>
<html lang="it">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Star labs è un catena di laboratori clinici e diagnostici sparsi in tutta Italia">
    <title>
        StarLabs s.r.l
    </title>
    <link rel="icon" href="img/StarLabsWhite.png">
    <link rel="stylesheet" href="style/covid.css">
    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <script src="script/api.js" defer="true"></script>

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


            <a class="button" href="logout.php"> logout </a>

            <div id="menutendina">
                <div></div>
                <div></div>
                <div></div>
            </div>


        </nav>
        <div class="sbarra">
            <img src="img/outline_coronavirus_white_24dp.png" alt="">
            <h1>covid-19</h1>
            </div>
    </header>



    <section>

        <form name="barra_ricerca" id="barra_ricerca">

            <input type="text" name="ric" id="ric" class= "bottoni" placeholder="Cerca Nazioni...">
           <input type="submit" id="sub" class="bottoni" value="ricerca">
        </form>

        <div class="main">
            </div>
        <div class="hidden sbarra">
            <img src="img/outline_coronavirus_white_24dp.png" alt="">
            <h1>news covid-19</h1>
        </div>
        <div class="hidden main" id="articoli">
        </div>

    </section>

    <footer>

        <p>&copy Giorgia Arena</p>
        <img src="img/instagram (1).png" alt="">
        <img src="img/facebook (1).png" alt="">
        <img src="img/whatsapp (1).png" alt="">
        <p>046002279</p>

    </footer>

</body>

</html>
