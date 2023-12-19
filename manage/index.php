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
                $list_firm = executeQuery($conn, "SELECT * FROM hang_dienthoai");
                $phone_name = getRequest('p', 'name');
                if($phone_name) {
                    // foreach ($_POST as $key => $value) {
                    //     // echo "$$key = getRequest('p', '$key');<br>";
                    //     echo $key.": ".var_dump($value); echo "<br>";
                    // }
                    $images = getRequest('p', 'images');
                    $price = getRequest('p', 'price');
                    $discount = getRequest('p', 'discount');
                    $description = getRequest('p', 'description');
                    $firm = getRequest('p', 'firm');
                    $other_firm = getRequest('p', 'other_firm');
                    //Thong so dienthoai
                    $screen_size = getRequest('p', 'screen_size');
                    $screen_technology = getRequest('p', 'screen_technology');
                    $behind_cam = getRequest('p', 'behind_cam');
                    $front_cam = getRequest('p', 'front_cam');
                    $chipset = getRequest('p', 'chipset');
                    $ram = getRequest('p', 'ram');
                    $internal_memory = getRequest('p', 'internal_memory');
                    $pin = getRequest('p', 'pin');
                    $sim = getRequest('p', 'sim');
                    $os = getRequest('p', 'os');
                    $screen_resolution = getRequest('p', 'screen_resolution');
                    $screen_feature = getRequest('p', 'screen_feature');
                    
                    //Xu ly hang moi
                    if($other_firm) {
                        executeQuery($conn, "INSERT INTO hang_dienthoai(ten_hang) VALUE (?)", [$other_firm]);
                        $firm = $conn->insert_id;
                    }

                    $phone_spc = new Specifications(
                        $screen_size, $screen_technology, $behind_cam, $front_cam, $chipset,
                        $ram, $internal_memory, $pin, $sim, $os, $screen_resolution, $screen_feature
                    );
                    //var_dump($phone_spc);

                    //Xu ly anh
                    $image_names = [];
                    $files = $_FILES['images'];
                    foreach($files['name'] as $key => $name) {
                        $filename = $name;
                        $image_names[] = $filename;
                        $temp = $files['tmp_name'][$key];
                        //echo "File name: $filename,  Temp name: $temp<br>";
                        move_uploaded_file($temp, getUrlProductImageFolder().$filename);
                    }
                    $phone_to_add = new Phone(
                        $phone_name, $price, $firm, $discount, $description, $image_names, $phone_spc
                    );
                    add_phone($phone_to_add);
                    // foreach ($phone_to_add as $att) {
                    //     var_dump($att);echo"<br>";
                    // }
                    echo "<script>
                        alert('Thêm sản phẩm thành công');
                        window.location.href = '".getRootUrl()."manage';
                    </script>";
                    exit();
                }
                require_once __DIR__.'/../view/add_phone.php';
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
                if($product_id) {
                    $phone_name = getRequest('p', 'name');
                    //xử lý submit
                    if($phone_name) {
                        $price = getRequest('p', 'price');
                        $discount = getRequest('p', 'discount');
                        $description = getRequest('p', 'description');
                        $firm = getRequest('p', 'firm');
                        $other_firm = getRequest('p', 'other_firm');
                        //Thong so dienthoai
                        $screen_size = getRequest('p', 'screen_size');
                        $screen_technology = getRequest('p', 'screen_technology');
                        $behind_cam = getRequest('p', 'behind_cam');
                        $front_cam = getRequest('p', 'front_cam');
                        $chipset = getRequest('p', 'chipset');
                        $ram = getRequest('p', 'ram');
                        $internal_memory = getRequest('p', 'internal_memory');
                        $pin = getRequest('p', 'pin');
                        $sim = getRequest('p', 'sim');
                        $os = getRequest('p', 'os');
                        $screen_resolution = getRequest('p', 'screen_resolution');
                        $screen_feature = getRequest('p', 'screen_feature');

                        if($other_firm) {
                            executeQuery($conn, "INSERT INTO hang_dienthoai(ten_hang) VALUE (?)", [$other_firm]);
                            $firm = $conn->insert_id;
                        }
    
                        $phone_spc = new Specifications(
                            $screen_size, $screen_technology, $behind_cam, $front_cam, $chipset,
                            $ram, $internal_memory, $pin, $sim, $os, $screen_resolution, $screen_feature
                        );
                        $phone_to_update = new Phone(
                            $phone_name, $price, $firm, $discount, $description, [], $phone_spc
                        );
                        // var_dump($phone_spc);
                        update_phone($product_id, $phone_to_update);
                        echo "<script>
                            alert('Cập nhật sản phẩm thành công!'); 
                            window.location.href='".getRootUrl()."manage'</script>";
                        exit();
                    }

                    //xử lý truy cập trang.
                    $list_firm = executeQuery($conn, "SELECT * FROM hang_dienthoai");
                    $phone_info_data = executeQuery($conn, "SELECT * FROM dienthoai WHERE ma_dienthoai = ?", [$product_id]);
                    $phone_images_data = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ?", [$product_id]);
                    $phone_spc_data = executeQuery($conn, "SELECT*FROM thong_so_ky_thuat_dienthoai WHERE ma_dienthoai = ? ORDER BY ma_thong_so", [$product_id]);

                    $phone_images = [];
                    $phone_spc = null;
                    if($phone_info_data && $phone_images_data && $phone_spc_data) {
                        $phone_info_data = $phone_info_data[0];
                        foreach ($phone_images_data as $value) {
                            $phone_images[] = $value['link_anh']; 
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
                        require_once __DIR__."/../view/update_phone.php";
                    } else {
                        header("Location: ".getRootUrl()."manage");
                    }
                }
                break;

            case 'xoa_sanpham':
                $product_id = getRequest('g', 'product_id');
                delete_phone($product_id);
                getListPhoneData();
                require_once __DIR__.'/../view/manage.php'; 
                break;

            case 'tk_doanhthu':
                $list_phone_data = executeQuery($conn, "SELECT * FROM dienthoai WHERE da_xoa IS NULL ORDER BY ma_dienthoai DESC");
                $tong_doanh_thu = 0;
                require_once __DIR__.'/../view/thongke_doanhthu.php';
                break;
            default:
                header("Location: ".getRootUrl()."manage");
                break;
        }
    }

    require_once __DIR__.'/../view/admin_footer.php';
?>