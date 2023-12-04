<?php
    session_start();
    require_once(__DIR__.'/../utils/util.php');
    if(!isAdmin()) {
        header("Location: ".getRootUrl());
    }
    require_once(__DIR__.'/../model/classes.php');
    require_once(__DIR__.'/../model/user_functions.php');
    require_once(__DIR__.'/../model/database.php');
    require_once __DIR__.'/../view/admin_header.php';

    $sql = "(SELECT * FROM dienthoai HAVING ton_kho = 0) 
        UNION 
        (SELECT * FROM dienthoai HAVING ton_kho > 0)
        ORDER BY ma_dienthoai DESC";
    $list_phone_data = executeQuery($conn, $sql);

    require_once __DIR__.'/../view/manage.php';
    require_once __DIR__.'/../view/admin_footer.php';
?>