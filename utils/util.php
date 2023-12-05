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
    
        if(strpos($query, 'SELECT') !== false && strpos($query, 'SELECT') < 5) {
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

    function isAdmin() {
        return (isLoggedIn() && getRequest('s', 'is_admin'));
    }

    function filterImageName(string $name) {
        return str_replace(array('/', '|'), '_',$name);
    }

    function getUrlProductImage(string $name) {
        return getRootUrl().'assets/images/product-images-sandbox/'.filterImageName($name);
    }

    function getDiscountedPrice($price, $discount) {
        $price = $price - $price*$discount/100;
        $price = $price - $price%10000;
        return $price;
    }

    function renderStars($starCount) {
        $result = '';
        $id_star = 1;
      
        $fullStars = floor($starCount);
        for ($i = 0; $i < $fullStars; $i++) {
          $result .= '<i class="fas fa-star" data-value="'.$id_star.'"></i>';
          $id_star++;
        }
      
        $decimal = $starCount - $fullStars;
        if ($decimal >= 0.5) {
          $result .= '<i class="fas fa-star-half-alt" data-value="'.$id_star.'"></i>';
          $id_star++;
        } else if ($decimal > 0 && $decimal < 0.5) {
          $result .= '<i class="far fa-star" data-value="'.$id_star.'"></i>';
          $id_star++;
        }

        $emptyStars = 5 - ceil($starCount);
        for ($i = 0; $i < $emptyStars; $i++) {
          $result .= '<i class="far fa-star" data-value="'.$id_star.'"></i>';
          $id_star++;
        }
      
        return $result;
      }
?>