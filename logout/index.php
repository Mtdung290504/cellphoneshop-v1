<?php
    require_once(__DIR__.'/../utils/util.php');
    session_start();
    session_destroy();
    header('Location: ..');
?>