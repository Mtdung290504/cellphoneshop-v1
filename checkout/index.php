<?php
    session_start();
    require_once(__DIR__.'/../utils/util.php');
    if(isLoggedIn()) { 
        require_once(__DIR__.'/../model/database.php');
        require_once(__DIR__.'/../model/user_functions.php');
        $user_id = getRequest('s', 'user_id');
        $request_url = getRequest('p', 'request_url');
        $request_page = getRequest('p', 'request_page');
        $id_product = getRequest('p', 'id_product');
        //Thực hiện kiểm tra tồn kho
        if($request_url && $request_page && $id_product) {
            if($request_page == "product_page") {

            } else if($request_page == "cart_page") {

            }
        } else {
            echo "<script>
                alert('Lỗi thông số!');
                window.location = '$request_url';
            </script>";
            exit();
        }
        require_once(__DIR__.'/../view/header.php');
        require_once(__DIR__.'/../view/check_out_form.php');
        require_once(__DIR__.'/../view/footer.php');
    } else {
        echo "<script>
            alert('Bạn cần đăng nhập để tiếp tục');
            window.location = '".getRootUrl()."login';
        </script>";
        exit();
    }
?>