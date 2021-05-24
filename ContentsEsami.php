<?php
require_once "configurazione.php";
/**
 * @var array $db contains sql connection parameters
 */
//CONNESSIONE AL DB
$conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']) or die("error > " . mysqli_error($conn));
$query="select * from tipologia";

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
print_r($json);
?>