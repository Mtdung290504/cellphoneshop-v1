<?php
    $servername = "localhost:3307";
    $username = "root";
    $password = "";
    $dbname = "cellphoneshopv0";
    
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->connect_error ? die("Connection failed: ".$conn->connect_error) : '';
?>