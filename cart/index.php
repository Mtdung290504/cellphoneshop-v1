<?php
session_start();
// Tẩy cookie
// $cookies = $_COOKIE;
// foreach ($cookies as $name => $value) {
//     setcookie($name, '', time() - 3600, '/');
// }
require_once(__DIR__.'/../utils/util.php');
require_once(__DIR__.'/../model/user_functions.php');
require_once(__DIR__.'/../model/database.php');
require_once(__DIR__.'/../view/header.php');
// update_cookie_cart(1, 1);
// update_cookie_cart(3, 1);sleep(1);
// update_cookie_cart(6, 1);sleep(1);
// update_cookie_cart(8, 1);
// update_db_cart(1, 1);
// update_db_cart(1, 3);
// update_db_cart(1, 6);
// update_db_cart(1, 8);
// print_r( getRequest('c', 'cart'));
require_once(__DIR__.'/../view/cart.php');
require_once(__DIR__.'/../view/footer.php')
?>