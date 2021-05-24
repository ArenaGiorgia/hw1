<?php
require_once "configurazione.php";
/**
 * @var array $db contains sql connection parameters
 */
session_start();
//CONNESSIONE AL DB
$conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']) or die("error > " . mysqli_error($conn));
$cf = $_SESSION['user'];
$query_id = "SELECT id_cliente FROM cliente where cf='$cf'";
$res_id = mysqli_query($conn, $query_id);
$id_cliente = mysqli_fetch_assoc($res_id);
$id_cliente=$id_cliente["id_cliente"];

//$query="select * from prenotazioni where id_cliente='$id_cliente'";
$query="select * from prenotazioni join tipologia t on prenotazioni.id_tipologia = t.id_tipologia
where id_cliente='$id_cliente'";
$res = mysqli_query($conn, $query);
$array=array();
for($i=0;$i<mysqli_num_rows($res);$i++)
{
    $fetch=  mysqli_fetch_assoc($res);
    array_push($array,$fetch);
}
$json=json_encode($array);
mysqli_close($conn);
mysqli_free_result($res);
mysqli_free_result($res_id);
print_r($json);
?>