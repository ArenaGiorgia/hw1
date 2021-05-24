<?php
require_once "configurazione.php";
/**
 * @var array $db contains sql connection parameters
 */
if (!isset($_POST['cf'])) exit;

$cf = $_POST["cf"];
$conn = mysqli_connect($db['host'], $db['user'], $db['password'], $db['name']) or die("error > " . mysqli_error($conn));
header('Content-Type: application/json');
//query per vedere se effettivamente c'è un utente con quel codice fiscale
$query = "select cf from cliente where cf='$cf'";

$res = mysqli_query($conn, $query);

echo json_encode(array("exists" => $exist = mysqli_num_rows($res) > 0));
mysqli_close($conn);
mysqli_free_result($res);
?>