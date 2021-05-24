<?php
//SESSION
session_start();
if(!isset($_SESSION['user'])) {
    header('Location:login.php');
    exit;
}
function VaccovidApi()
{
    $curl = curl_init();

    curl_setopt_array($curl, [
        CURLOPT_URL => "https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/npm-covid-data/europe",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => [
            "x-rapidapi-host: vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com",
            "x-rapidapi-key: 096005b443msh9c637cfcb5b8a56p11abccjsncfe2bc870b65"
        ],
    ]);

    $response = curl_exec($curl);
    print_r($response);

    curl_close($curl);
}

VaccovidApi();