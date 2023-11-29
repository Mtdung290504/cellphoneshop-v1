<?php

use Illuminate\Support\Arr;

    require_once __DIR__.'/../utils/util.php';
    require_once __DIR__.'/../view/header.php';
    require_once __DIR__.'/../model/database.php';
    require_once __DIR__.'/../model/classes.php';
    $phone_info_data = executeQuery($conn, "SELECT*FROM dienthoai WHERE ma_dienthoai = ?", [getRequest('g', 'product_id')])[0];
    $phone_images_data = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ?", [getRequest('g', 'product_id')]);
    $phone_spc_data = executeQuery($conn, "SELECT*FROM thong_so_ky_thuat_dienthoai WHERE ma_dienthoai = ? ORDER BY ma_thong_so", [getRequest('g', 'product_id')]);
    $phone_rate_data = executeQuery($conn, "SELECT*FROM danhgia WHERE ma_dienthoai = ?", [getRequest('g', 'product_id')]);
    $phone_comment_data = executeQuery($conn, "SELECT*FROM binhluan WHERE ma_dienthoai = ?", [getRequest('g', 'product_id')]);
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
        foreach ($phone_rate_data as $value) {
            $phone_rate += $value['gia_tri'];
            $user = new User_rate_and_comment($value['gia_tri'], []);
            $user_rates_and_comments[$value['ma_nguoidung']] = $user;
        }
        $phone_rate /= count($phone_rate_data);
    }
    $phone_rate = round($phone_rate, 1);
    
    if($phone_comment_data!=null) {
        foreach ($phone_comment_data as $value) {
            if($user_rates_and_comments[$value['ma_nguoidung']]) {
                $user_rates_and_comments[$value['ma_nguoidung']]->comments[] = $value['noi_dung'];
            } else {
                $user = new User_rate_and_comment(0, []);
                $user->comments[] = $value['noi_dung'];
                $user_rates_and_comments[$value['ma_nguoidung']] = $user; 
            }
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

    require_once __DIR__.'/../view/product_page.php';
    require_once __DIR__.'/../view/footer.php';
?>