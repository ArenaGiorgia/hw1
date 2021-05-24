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
    <link rel="stylesheet" href="style/home.css">
    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap"
          rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
    <script src="script/hamburger.js" defer="true"></script>
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


        <a class="button" id="logout" href="logout.php"> logout</a>
        <div id="menutendina">
            <div></div>
            <div></div>
            <div></div>
        </div>


    </nav>

    <h1>
        Il tuo esame alla portata di un <a class="button" href="esami.php"> click!</a>
    </h1>
    <?php
    require_once "configurazione.php";
    /**
     * @var array $db contains sql connection parameters
     */
    $conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']) or die("error > " . mysqli_error($conn));
    $cf = $_SESSION['user'];
    $query_id = "SELECT nomecmp  FROM cliente where cf='$cf'";
    $res_id = mysqli_query($conn, $query_id);
    $nome = mysqli_fetch_assoc($res_id);
    $nome = $nome["nomecmp"];
    print_r('<h2>Bentornato/a  ' . $nome . '!' . '</h2>');
    ?>


</header>
<div id="barra"></div>
<section>
<div id="modal" class="hidden">

</div>
    <div id="topsection">
        <div class="sec">
            <h3>Orari di apertura</h3>
            <h4>Orario Prestazioni</h4>
            <p>Da lunedi a venerdi dalle 8.00 alle 18.00</p>
            <p>Sabato dalle 8.00 alle 12.00</p>
            <h4>Orari di ritiro referti</h4>
            <p>Da lunedi a venerdi dalle 17.00 alle 19.00</p>
            <p>Sabato dalle 18.00 alle 20.00</p>
        </div>
        <div id="mainpage">
            <h1>
                Teniamo alla tua salute!
            </h1>
            <p> Con sedi sparse in tutta Italia,da oltre trent'anni offriamo la massima qualità, serietà e attendibilità
                dei risultati ai nostri clienti </p>
            <div class="mpdiv">
                <div class="iconbox">
                    <a href="esami.php"><img src="img/outline_event_available_black_24dp.png"></a>
                    <div>
                        <h5> esami</h5>
                        <p> Molteplici tipologie di esami, con uno staff qualificato,vogliamo offrirti il meglio!</p>
                    </div>

                </div>
                <div class="iconbox">
                    <a href="esami.php"><img src="img/outline_bloodtype_black_24dp.png"></a>
                    <div>
                        <h5> Prelievi</h5>
                        <p> Prelievi a domicilio. Da oggi, un' infermiere previa prenotazione si recherà direttamente al
                            domicilio del cliente</p>
                    </div>

                </div>
                <div class="iconbox">
                    <a href="Ref.php"><img src="img/outline_fact_check_black_24dp.png"></a>
                    <div>
                        <h5> Referti online</h5>
                        <p> Da oggi accedi al tuo profilo per vedere il tuo referto senza il bisogno di recarti in
                            sede!</p>
                    </div>

                </div>

            </div>
            <div class="mpdiv">
                <div class="iconbox">
                    <a href="covid.php"><img src="img/outline_masks_black_24dp.png"></a>
                    <div>
                        <h5> Covid-19</h5>
                        <p>La sezione che ti permette di prenotare e conoscere il tuo esito direttamente online e a
                            prezzi imbattibili!</p>
                    </div>

                </div>
                <div class="iconbox">
                    <a><img src="img/outline_verified_black_24dp.png"></a>
                    <div>
                        <h5> Qualità & Convensioni</h5>
                        <p> Da sempre vogliamo offrirti il meglio ,grazie alle nostre attrezzature super moderne!</p>
                    </div>

                </div>

                <div class="iconbox">
                    <a href="sedi.php"><img src="img/outline_location_on_black_24dp.png"></a>
                    <div>
                        <h5>Come raggiungerci</h5>
                        <p>Grazie alle nostre sedi centralizzate raggiungerci non sarà un grosso problema!</p>
                    </div>
                </div>


            </div>

        </div>
    </div>
    <div id="bottomsection">
        <div class="sec">
            <a href="Covid.php">
                <h3>news</h3>
            </a>
            <img src="img/pexels-cottonbro-3957987.jpg">
        </div>
        <div id="bs_post">
            <div>
                <a href="chisiamo.php"><img src="img/outline_face_black_24dp.png"></a>
                <h3>
                    Staff
                </h3>

            </div>
            <div>
                <a href="esami.php"><img src="img/outline_science_black_24dp.png"></a>
                <h3>Tipologie</h3>
            </div>

            <div>
                <a href="Covid.php"><img src="img/outline_article_black_24dp.png"></a>
                <h3>Articoli</h3>
            </div>
        </div>
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