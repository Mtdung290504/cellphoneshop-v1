<?php
    session_start();
    require_once(__DIR__.'/../utils/util.php');
    if(!isAdmin()) {
        header("Location: ".getRootUrl());
    }
    require_once(__DIR__.'/../model/classes.php');
    require_once(__DIR__.'/../model/manage_functions.php');
    require_once(__DIR__.'/../model/database.php');
    require_once __DIR__.'/../view/admin_header.php';

    $list_phone_data = "";
    function getListPhoneData() {
        global $list_phone_data, $conn;
        $sql = "SELECT * FROM dienthoai WHERE da_xoa IS NULL ORDER BY ma_dienthoai DESC";
        $list_phone_data = executeQuery($conn, $sql);
    }

    if(!getRequest('g', 'action')) {
        getListPhoneData();
        require_once __DIR__.'/../view/manage.php';        
    } else {
        $action = getRequest('g', 'action');
        switch ($action) {
            case 'them_sanpham':
                break;
            case 'nhap_hang':
                $product_id = getRequest('g', 'product_id');
                $gia_nhap = getRequest('p', 'phone_price');
                $so_luong = getRequest('p', 'phone_count');
                if($gia_nhap && $so_luong) {
                    import_phone($product_id, $so_luong, $gia_nhap);
                    echo "<script>alert('Nhập thành công $so_luong sản phẩm có ID là $product_id\nTổng giá: $gia_nhap*$so_luong')</script>";
                    header("Location: ".getRootUrl()."manage");
                    exit();
                }
                $phone_data = executeQuery($conn, "SELECT * FROM dienthoai WHERE ma_dienthoai = ?", [$product_id])[0];
                require_once __DIR__.'/../view/import_phone.php'; 
                break;       
            case 'sua_sanpham':
                $product_id = getRequest('g', 'product_id');
                break;
            case 'xoa_sanpham':
                $product_id = getRequest('g', 'product_id');
                delete_phone($product_id);
                getListPhoneData();
                require_once __DIR__.'/../view/manage.php'; 
                break;
            default:
                header("Location: ".getRootUrl()."manage");
                break;
        }
    }

    require_once __DIR__.'/../view/admin_footer.php';
?>