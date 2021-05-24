<?php
require_once "configurazione.php";
/**
 * @var array $db contains sql connection parameters
 */
session_start();

//CONNESSIONE AL DB
$conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']) or die("error > " . mysqli_error($conn));

$query1="select * from personale_medico";
$res1=mysqli_query($conn, $query1);
$array=array();
for($i=0;$i<mysqli_num_rows($res1);$i++)
{
    $fetch=  mysqli_fetch_assoc($res1);
    array_push($array,$fetch);
}
$json=json_encode($array);
mysqli_close($conn);
mysqli_free_result($res1);
print_r($json);
?>