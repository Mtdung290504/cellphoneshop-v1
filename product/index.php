<?php
    session_start();
    require_once __DIR__.'/../utils/util.php';
    require_once __DIR__.'/../model/database.php';
    require_once __DIR__.'/../model/classes.php';
    require_once __DIR__.'/../model/user_functions.php';

    //Xử lý bình luận và đánh giá sản phẩm
    if(getRequest('p', 'action') == 'rate') {
        $user_req_id = getRequest('s', 'user_id');
        if($user_req_id) {
            $luot_danhgia_moi =  user_do_rate($user_req_id, getRequest('p', 'phone_id'), getRequest('p', 'value'));
            $new_phone_rate = 0;
            $new_phone_rate_data = executeQuery($conn, "SELECT*FROM danhgia WHERE ma_dienthoai = ?", [getRequest('p', 'phone_id')]);
            if($new_phone_rate_data!=null) {
                foreach ($new_phone_rate_data as $value) {
                    $new_phone_rate += $value['gia_tri'];
                }
                $new_phone_rate /= count($new_phone_rate_data);
            }
            $new_phone_rate = round($new_phone_rate, 1);
            header("Content-Type: application/json");
            echo json_encode([$new_phone_rate, $luot_danhgia_moi]);
            exit();
        } else {
            exit();
        }
    }
    if(getRequest('p', 'submit-comment')) {
        $user_req_id = getRequest('s', 'user_id');
        if($user_req_id) {
            user_do_comment($user_req_id, getRequest('p', 'product_id'), getRequest('p', 'comment-content'));
        }
        $currentURL = $_SERVER['REQUEST_URI'];
        header("Location: $currentURL");
        exit();
    }

    require_once __DIR__.'/../view/header.php';
    //Tăng lượt xem
    $product_id = getRequest('g', 'product_id');
    $luot_xem_goc = executeQuery($conn, "SELECT luot_xem FROM dienthoai WHERE ma_dienthoai = ?", [$product_id])[0]['luot_xem'];
    executeQuery($conn, "UPDATE dienthoai SET luot_xem = ? WHERE ma_dienthoai = ?", [$luot_xem_goc+1, $product_id]);

    $phone_info_data = executeQuery($conn, "SELECT*FROM dienthoai WHERE ma_dienthoai = ?", [$product_id])[0];
    $phone_images_data = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ?", [$product_id]);
    $phone_spc_data = executeQuery($conn, "SELECT*FROM thong_so_ky_thuat_dienthoai WHERE ma_dienthoai = ? ORDER BY ma_thong_so", [$product_id]);
    $phone_rate_data = executeQuery($conn, "SELECT AVG(gia_tri) AS gia_tri_tb FROM danhgia WHERE ma_dienthoai = ?", [$product_id]);
    $phone_comment_data = executeQuery($conn, "SELECT*FROM binhluan WHERE ma_dienthoai = ? ORDER BY ma_binhluan DESC", [$product_id]);
    $phone_spc_title_data = executeQuery($conn, "SELECT ten_thong_so FROM thong_so_ky_thuat ORDER BY ma_thong_so");

    $phone_spc;
    $phone_spc_title = [];
    $phone_images = [];
    $phone_info;
    $phone_rate = 0;
    $user_rates_and_comments = [];
    $rate_count = $phone_info_data['luot_danh_gia'];
    $comment_count = $phone_info_data['luot_binh_luan'];
    
    if($phone_rate_data!=null) {
        $phone_rate = round($phone_rate_data[0]['gia_tri_tb'], 1);
    }
    
    if($phone_comment_data!=null) {
        foreach ($phone_comment_data as $value) {
            $user_id = $value['ma_nguoidung'];
            $user_rate_data_2 = executeQuery($conn, "SELECT*FROM danhgia WHERE ma_nguoidung = ? AND ma_dienthoai = ?", [$user_id, getRequest('g', 'product_id')]);
            $user_rate = ($user_rate_data_2 != null) ? $user_rate_data_2[0]['gia_tri'] : null;
            $user_comment = $value['noi_dung'];
            $user_rc = new User_rate_and_comment($user_id, $user_rate, $user_comment);
            $user_rates_and_comments[] = $user_rc;
        }
    }

    foreach ($phone_images_data as $value) {
        $phone_images[] = $value['link_anh']; 
    }
    
    foreach ($phone_spc_title_data as $value) {
        $phone_spc_title[] = $value['ten_thong_so'];
    }

    $phone_spc = new Specifications(
        $phone_spc_data[0]['gia_tri'],
        $phone_spc_data[1]['gia_tri'],
        $phone_spc_data[2]['gia_tri'],
        $phone_spc_data[3]['gia_tri'],
        $phone_spc_data[4]['gia_tri'],
        $phone_spc_data[5]['gia_tri'],
        $phone_spc_data[6]['gia_tri'],
        $phone_spc_data[7]['gia_tri'],
        $phone_spc_data[8]['gia_tri'],
        $phone_spc_data[9]['gia_tri'],
        $phone_spc_data[10]['gia_tri'],
        $phone_spc_data[11]['gia_tri'],
    );
    
    $phone_info = new Phone(
        $phone_info_data['ten_dienthoai'],
        $phone_info_data['gia_ban_dienthoai'],
        $phone_info_data['ma_hang'],
        $phone_info_data['giam_gia_dienthoai'],
        $phone_info_data['mo_ta_dienthoai'],
        $phone_images,
        $phone_spc
    );

    require_once __DIR__."/../view/top_nav.php";
    require_once __DIR__.'/../view/product_page.php';
    require_once __DIR__.'/../view/footer.php';
?>