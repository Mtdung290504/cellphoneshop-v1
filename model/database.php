<?php
    $servername = "localhost:3307";
    $username = "root";
    $password = "";
    $dbname = "cellphoneshopv0";
    
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->connect_error ? die("Connection failed: ".$conn->connect_error) : '';

    require_once(__DIR__.'/../utils/util.php');
    require_once(__DIR__.'/../model/classes.php');
    require_once(__DIR__.'/../model/manage_functions.php');
?>