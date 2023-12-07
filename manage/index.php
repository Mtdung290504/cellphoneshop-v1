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