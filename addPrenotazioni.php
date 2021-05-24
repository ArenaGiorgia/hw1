<?php
require_once "configurazione.php";
/**
 * @var array $db contains sql connection parameters
 */
session_start();

if (isset($_GET["json"]) && isset($_SESSION["user"])) {
    $json = $_GET["json"];
    $json = base64_decode($json);
    //CONNESSIONE AL MIO DB
    $conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']);
    $cf = $_SESSION['user'];
    $query_id = "SELECT id_cliente FROM cliente where cf='$cf'";
    $res_id = mysqli_query($conn, $query_id);
    $id_cliente = mysqli_fetch_assoc($res_id);
    $id_cliente=$id_cliente["id_cliente"];

    $arr = json_decode($json, true);

    foreach ($arr as $js) {
        $query = "SELECT id_tipologia from tipologia where id_tipologia=".$js['id_tipologia'];
        $res = mysqli_query($conn, $query);
        if (mysqli_num_rows($res) > 0) {
            $id_tipologia = mysqli_fetch_assoc($res);
            $id_tipologia=$id_tipologia["id_tipologia"];
            //SIGNIFICA CHE C'è SIA L'ID DELL' CLIENTE CHE LA TIPOLOGIA SELEZIONATA DALL'UTENTE ADESSO INSERISCO NEL DB
            $insert = "INSERT INTO PRENOTAZIONI(id_tipologia, id_cliente)VALUE('$id_tipologia','$id_cliente')";
            mysqli_query($conn, $insert);

        }
    }

}

