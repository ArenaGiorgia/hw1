<?php

require_once "configurazione.php";
/**
 * @var array $db contains sql connection parameters
 */
session_start();
$cf=$_SESSION["user"];
//CONNESSIONE AL DB
$conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']) or die("error > " . mysqli_error($conn));
$query_id="select id_cliente from cliente where cf='$cf'";

$res_id = mysqli_query($conn, $query_id);
$id_cliente = mysqli_fetch_assoc($res_id);
$id_cliente=$id_cliente["id_cliente"];

$query1="select * from esito e, vista1 v where e.prestazione=v.id_prest and v.id_cliente='$id_cliente'";
$res1=mysqli_query($conn, $query1);
$array=array();
for($i=0;$i<mysqli_num_rows($res1);$i++)
{
    $fetch=  mysqli_fetch_assoc($res1);
    array_push($array,$fetch);
}
$json=json_encode($array);
mysqli_close($conn);
mysqli_free_result($res_id);
mysqli_free_result($res1);

print_r($json);

?>