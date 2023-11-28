<?php
    function getRootUrl() {
        $uri = $_SERVER['REQUEST_URI'];
        $dirs = explode('/', $uri);
        $link = '';
        $deep = count($dirs);
        if($deep==3) {
            $link .= './';
        } else if($deep>3) {
            while($deep>3) {
                $link .= '../';
                $deep--;
            }
        }
        return $link;
    }

    function getRequest($type, $key) {
        switch ($type) {
            case 'g':
                return isset($_GET[$key]) ? $_GET[$key] : '';
            case 'p':
                return isset($_POST[$key]) ? $_POST[$key] : '';
            case 's':
                return isset($_SESSION[$key]) ? $_SESSION[$key] : '';
            case 'c':
                return isset($_COOKIE[$key]) ? $_COOKIE[$key] : '';
            default:
                return null;
        }
    }

    function executeQuery($connection, $query, $params = []) {
        $statement = $connection->prepare($query);
        if (!$statement) {
            throw new Exception("Lỗi trong quá trình chuẩn bị câu lệnh SQL.");
        }
    
        if (!empty($params)) {
            $types = '';
            $bindParams = [];
            foreach ($params as $param) {
                if (is_int($param)) {
                    $types .= 'i';
                } else if (is_float($param)) {
                    $types .= 'd';
                } else {
                    $types .= 's';
                }
                $bindParams[] = $param;
            }
            $statement->bind_param($types, ...$bindParams);
        }
    
        $result = $statement->execute();
        if (!$result) {
            throw new Exception("Lỗi trong quá trình thực thi truy vấn SQL.");
        }
    
        if (stripos($query, 'select') === 0) {
            $resultSet = $statement->get_result();
            $rows = [];
            while ($row = $resultSet->fetch_assoc()) {
                $rows[] = $row;
            }
            $statement->close();
            return (count($rows)>0) ? $rows : null;
        } else {
            $statement->close();
            return true;
        }
    }

    function isLoggedIn() {
        return (getRequest('s', 'user_login_name') && getRequest('s', 'user_login_password'));
    }

    function filterImageName(string $name) {
        return str_replace(array('/', '|'), '_',$name);
    }

    function getDiscountedPrice($price, $discount) {
        $price = $price - $price*$discount/100;
        $price = $price - $price%10000;
        return $price;
    }
?>