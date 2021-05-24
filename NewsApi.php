<?php
//SESSION
session_start();
if(!isset($_SESSION['user'])) {
    header('Location:login.php');
    exit;
}
//HEADER
header('Content-Type: application/json');

function NewsApi(){
    $chiave_news="ca43d4e07c3f4958845be533bfd96ab9";
    $url = 'https://newsapi.org/v2/everything?' .
        'q=coronavirus&' .
        'language=it&' .
        'pageSize=8&' .
        'sortBy=popularity&' .
        'apiKey=' . $chiave_news;
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url );
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $result = curl_exec($curl);
    curl_close($curl);
    print_r($result);
}

NewsApi();


?>

