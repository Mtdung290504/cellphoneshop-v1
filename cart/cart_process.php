<?php
session_start();
require_once(__DIR__.'/../model/database.php');
require_once(__DIR__.'/../model/user_functions.php');
require_once(__DIR__.'/../utils/util.php');
if(isLoggedIn()) {
    $action = getRequest('p', 'action');
    if($action) {
        switch ($action) {
            case 'delete': 
                $phone_id = getRequest('p', 'phone_id');
                delete_from_db_cart(getRequest('s','user_id'), $phone_id);
                break;
            case 'update':
                $phone_id = getRequest('p', 'phone_id');
                $phone_count = getRequest('p', 'phone_count');
                update_db_cart(getRequest('s','user_id'), $phone_id, $phone_count);
                break;
        }
    }   
} else {
    $action = getRequest('p', 'action');
    if($action) {
        switch ($action) {
            case 'delete': 
                $phone_id = getRequest('p', 'phone_id');
                delete_from_cookie_cart(intval($phone_id));
                break;
            case 'update':
                $phone_id = getRequest('p', 'phone_id');
                $phone_count = getRequest('p', 'phone_count');
                update_cookie_cart($phone_id, $phone_count);
                break;
        }
    }
}
?>