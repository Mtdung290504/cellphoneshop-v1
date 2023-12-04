<?php
    require_once __DIR__."/../utils/util.php";
    session_start();
    session_destroy();
    echo "<script>window.location = '".getRootUrl()."'</script>";
    exit();
?>