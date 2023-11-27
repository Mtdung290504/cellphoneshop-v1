<?php
    session_start();
    require_once(__DIR__.'/../utils/util.php');
    require_once(__DIR__.'/../model/database.php');
    require_once(__DIR__.'/../view/header.php');
    if(getRequest('s','user_login_name') && getRequest('s', 'user_login_password')) {
        header('Location: '.getRootUrl());
    }
    $have_access = true;
    require_once('login_handling.php');
?>

<?php require_once(__DIR__.'/../view/login_form.php')?>
<?php require_once(__DIR__.'/../view/footer.php')?>