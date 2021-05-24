<?php
require_once  'configurazione.php';

session_start();
$error = array();
/**
 * @var array $db contains sql connection parameters
 */
if(isset($_SESSION["user"]))
{
    //vai alla home page
    header("Location:home.php");
    exit;
}
// Verifica l'esistenza di dati POST
if (isset($_POST["nome"]) && isset($_POST["cognome"]) && isset($_POST["email"]) && isset($_POST["cf"]) &&
    isset($_POST["genere"]) && isset($_POST["data_nascita"]) && isset($_POST["num_telefonico"]) &&
    isset($_POST["password"]) && isset($_POST["confirm_password"]))
{

    $conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']);
    echo"connessione stabilita";
    $_SESSION['data']=$_POST['data_nascita'];

    //TODO::COD FISCALE
    // Controlla che il cf rispetti il pattern specificato
    if(!preg_match('/^[A-Z]{6}\d{2}[A-Z]\d{2}[A-Z]\d{3}[A-Z]$/i', $_POST['cf'])) {
        $error[] = "cf non valido";
        echo "attenzione il cf non è valido";
    } else {
        $cf = mysqli_real_escape_string($conn, $_POST['cf']);
        $query = "SELECT cf FROM cliente WHERE cf = '$cf'";
        $res = mysqli_query($conn, $query);
        if (mysqli_num_rows($res) > 0) {
            $error[] = "Attenzione!!! Il codice fiscale che hai inserito è già in uso!";
            echo "arrivo al controllo del numero di righe";
        }
        mysqli_free_result($res);
    }
    //TODO::PASSWORD E CONF PASSWORD
    if(!preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/',$_POST["password"])) {
        $error[] = "Caratteri password insufficienti o sbagliati";

    }
    # CONFERMA PASSWORD
    if (strcmp($_POST["password"], $_POST["confirm_password"]) != 0) {
        $error[] = "Le password non coincidono";
    }
    //TODO::EMAIL
    if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $error[] = "Email non valida";
    } else {
        $email = mysqli_real_escape_string($conn, strtolower($_POST['email']));
        $res = mysqli_query($conn, "SELECT email FROM cliente WHERE email = '$email'");
        if (mysqli_num_rows($res) > 0) {
            $error[] = "Email già utilizzata";
        }
    }
    //TODO::GENERE
    if(strcmp($_POST['genere'], "m") || strcmp($_POST['genere'], "f"))
    {
        $genere=$_POST['genere'];
    }

    //TODO::RIMUOVERE ETA' DAI CAMPI E DAL DB E LASCIARE SOLO LA DATA DI NASCITA
    if(!date_parse($_POST['data_nascita'])){
        $error[] = "Formato data di nascita non corretto";
    }

    //TODO::PATTERN NUMERO TELEFONICO
    if(!preg_match('/^[0-9]*$/',$_POST['num_telefonico']))
    {
        $error[]="Ci sono errori nel numero";
    }
    else{
       $num_telefonico=$_POST['num_telefonico'];
    }

    echo $num_telefonico;

    //TODO::REGISTRAZIONE NEL DATABASE
    if (!$error) {
        $name = mysqli_real_escape_string($conn, $_POST['nome']);
        $surname = mysqli_real_escape_string($conn, $_POST['cognome']);
        $data = $_POST['data_nascita'];
        $nomecmp= $name. " ".$surname;
        $password = mysqli_real_escape_string($conn, $_POST['password']);
        $password = password_hash($password, PASSWORD_BCRYPT);
        $password = base64_encode($password);

        $query = "INSERT INTO cliente(nomecmp,cf,sesso,datanascita,n_tel,email,password) VALUES('$nomecmp', '$cf', '$genere', '$data', '$num_telefonico','$email','$password')";

        if (mysqli_query($conn, $query)) {
            $_SESSION["user"] = $_POST["cf"];
            $_SESSION["id_cliente"] = mysqli_insert_id($conn);
            $_SESSION["nomecmp"]=$nomecmp;
            mysqli_close($conn);
            header("Location: home.php");
            exit;
        } else {
            $error[] = "Errore di connessione al Database";
        }
    }

    mysqli_close($conn);
}
else if (isset($_POST["username"])) {
    $error = array("Riempi tutti i campi");
}

?>
<!DOCTYPE html>
<html>
<head>
    <link rel='stylesheet' href='style/login.css'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style/home.css">
    <script src="script/validazione.js" defer="true"></script>

    <link rel="icon" href="img/StarLabsWhite.png">
    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
    <title>Registrazione-StarLabs</title>
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
        <h1>Registrazione</h1>
        <img src="img/StarLabsBlack.png">
    </div>

    <form name='registrazione' method='post' enctype="multipart/form-data" autocomplete="off">

        <div class="nome">
            <div><label for='nome'>Nome</label></div>
            <div><input type='text' name='nome' placeholder='Es.Mario' <?php if(isset($_POST['nome'])) echo  "value=".$_POST['nome']; ?>></div>
        </div>
        <div class="cognome">
            <div><label for='cognome'>Cognome</label></div>
            <div><input type='text' name='cognome' placeholder='Es.Rossi'<?php if(isset($_POST['cognome'])) echo  "value=".$_POST['cognome']; ?>></div>
        </div>
        <div class="email">
            <div><label for='email'>Email</label></div>
            <div><input type='text' name='email' placeholder='Es. mariorossi@gmail.com' <?php if(isset($_POST['email'])) echo  "value=".$_POST['email']; ?>></div>

        </div>
        <div class="cf">
            <div><label for='cf'>Codice Fiscale</label></div>
            <div><input type='text' name='cf' placeholder='Es.MRARSS80A01C351N' <?php if(isset($_POST['cf'])) echo  "value=".$_POST['cf']; ?>></div>

        </div>
        <div class="genere">
            <div><label for='genere'>m</label></div>
            <div><input type='radio' name='genere' value="m"></div>
            <div><label for='genere'>f</label></div>
            <div><input type='radio' name='genere' value="f"></div>
            <span class="hidden">!!!</span>
        </div>
        <div class="data_nascita">
            <div><label for="data_nascita">Data Nascita</label></div>
            <div><input type='date' name='data_nascita' <?php if(isset($_POST['data_nascita'])) echo  "value=".$_POST['data_nascita']; ?></div>


        <div class="num_telefonico">
            <div><label for='num_telefonico'>Numero Telefonico</label></div>
            <div><input type='text' name='num_telefonico' placeholder='Es.3217845164' <?php if(isset($_POST['num_telefonico'])) echo  "value=".$_POST['num_telefonico']; ?>></div>
        </div>
        <div class="password">
            <div><label for='password'>Password</label></div>
            <div><input type='password' name='password' placeholder='Es.MarioRossi11#' ></div>
        </div>
        <div class="confirm_password">
            <div><label for='confirm-password'>Conferma Password</label></div>
            <div><input type='password' name='confirm_password' placeholder='Es.MarioRossi11#'></div>
        </div>


        <div>
            <input type='submit' value="Procedi">
        </div>
    </form>
    <div class="hidden error" id="error_display">

    </div>
</section>

</body>
</html>