<?php
require_once "configurazione.php";
//avvio la sessione
session_start();
/**
 * @var array $db contains sql connection parameters
 */
if(!empty($_SESSION["user"]))
{
    //vai alla home page
    header("Location:home.php");
    exit;
}
if(isset($_POST["cf"])&&isset($_POST["password"]))
{
   $connessione=mysqli_connect($db["host"],$db["user"],$db["password"],$db["name"]);
   echo "ho stabilito la connessione";
   $cf=mysqli_real_escape_string($connessione,$_POST["cf"]);
   $password=mysqli_real_escape_string($connessione,$_POST["password"]);
   $query="SELECT * FROM cliente WHERE cf = '$cf'";
   $res = mysqli_query($connessione, $query)or die(mysqli_error($connessione));
    // Verifica la correttezza delle credenziali
    if (mysqli_num_rows($res) > 0) {
        // Ritorna una sola riga, il che ci basta perché l'utente autenticato è solo uno
        $entry = mysqli_fetch_assoc($res);
        echo "query più di 0 righe";
        $password = mysqli_real_escape_string($connessione, $_POST['password']);
        $password = password_hash($password, PASSWORD_BCRYPT);
        $password = base64_encode($password);
        if (strcmp($password, $entry["password"])) {
            echo "password uguale";
            // Imposto una sessione dell'utente
            $_SESSION["user"] = $entry['cf'];
            header("Location: home.php");
            mysqli_free_result($res);
            mysqli_close($connessione);
            exit;
        }
    }
    $error = "Cf e/o password errati.";

}
else if (isset($_POST["cf"]) || isset($_POST["password"])) {
    // Se solo uno dei due è impostato
    $error = "Inserisci cf e password.";
}
?>

<html>
    <head>
        <link rel="stylesheet" href="style/home.css">
        <link rel='stylesheet' href='style/login.css'>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="img/StarLabsWhite.png">
        <link rel="stylesheet" href="style/home.css">
        <link rel="icon" href="img/StarLabsWhite.png">
        <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
        <title>Login-Starlabs</title>
    </head>
    <body>
    <nav>


        <div id="logo">

        </div>

        <div id="menu">
            <a href="home.php">home</a>
            <a href="PrenotazioneEffettuata.php">prenotazioni</a>
            <a href="sedi.php">sedi</a>
            <a href="chisiamo.php">chi siamo</a>
        </div>



        <a class="button" href="login.php"> login </a>

        <div id="menutendina">
            <div></div>
            <div></div>
            <div></div>
        </div>


    </nav>
        <section>

           <div id="icona">
           <h1>StarLabs</h1>
           <img src="img/StarLabsBlack.png">
           </div>
            
            <form name='login' method='post'>

                <div class="cf">
                    <div><label for='cf'>Inserisci codice fiscale</label></div>
                    <div><input type='text' name='cf' ></div>
                </div>
                <div class="password">
                    <div><label for='password'>Password</label></div>
                    <div><input type='password' name='password' ></div>
                </div>

                <div>
                    <input type='submit' value="Accedi">
                </div>
            </form>
            <div class="signup">Non hai un account? <a href="registrazione.php">Iscriviti</a>
        </section>
      
    </body>
</html>