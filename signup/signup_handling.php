<?php
    $login_name = getRequest('p', 'login_name');
    $login_password = getRequest('p', 'login_password');
    $re_login_password = getRequest('p', 're_login_password');
    $user_name = getRequest('p', 'user_name');
    $user_tel = getRequest('p', 'user_tel');
    $user_email = getRequest('p', 'user_email');
    $user_address = getRequest('p', 'user_address');

    $error_login_name = $error_login_password = $error_re_login_password = '';

    if(getRequest('p', 'signup')) {
        $stmt = $conn->prepare('SELECT ten_dang_nhap FROM nguoidung WHERE ten_dang_nhap = ?');
        $stmt->bind_param("s", $login_name);
        $stmt->execute();
        $rs = $stmt->get_result()->num_rows;

        if($rs == 1) {
            $login_name = '';
            $error_login_name = '*Tên đăng nhập đã tồn tại';
        } else {
            if(!preg_match('/^[a-zA-Z0-9_]{6,20}$/', $login_name)) {
                $login_name = '';
                $error_login_name = '*Tên đăng nhập không hợp lệ!';
            }
            if(!preg_match('/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/', $login_password)) {
                $login_password = '';
                $re_login_password = '';
                $error_login_password = '*Mật khẩu không hợp lệ!';
            }
            if($re_login_password != $login_password) {
                $re_login_password = '';
                $error_re_login_password = '*Mật khẩu nhập lại không đúng!';
            }
            
            if($error_login_name == '' && $error_login_password == '' && $error_re_login_password == '') {
                $query = 'INSERT INTO nguoidung (ten_dang_nhap, mat_khau, ho_ten, dien_thoai, email, dia_chi)
                            VALUE (?, ?, ?, ?, ?, ?); ';
                $login_password = password_hash($login_password, PASSWORD_DEFAULT);
                $params = [$login_name, $login_password, $user_name, $user_tel, $user_email, $user_address];
                if(executeQuery($conn, $query, $params)) {
                    echo "<script>
                        alert('Đăng Ký Thành Công!');
                        location.href = '".getRootUrl()."/login';
                    </script>";  
                    exit();                  
                }
            }
        }
    } else if(getRequest('p', 'login')) {
        header("Location: ".getRootUrl()."/login");
        exit();
    } else {
        if(!isset($have_access)) {
            echo '<script>window.history.back();</script>';
            exit();
        }
    }
    
?>