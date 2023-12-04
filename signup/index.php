<?php
    session_start();
    require_once(__DIR__.'/../utils/util.php');
    require_once(__DIR__.'/../model/database.php');
    require_once(__DIR__.'/../view/header.php');
    if(isLoggedIn()) {
        echo "<script>window.location = '".getRootUrl()."'</script>";
        exit();
    }
    $have_access = true;
    require_once('signup_handling.php');
?>

<?php require_once(__DIR__.'/../view/signup_form.php')?>
<?php require_once(__DIR__.'/../view/footer.php')?>