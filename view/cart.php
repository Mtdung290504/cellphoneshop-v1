<div class="cart-container">
<h1>Cellphones shop - Giỏ hàng</h1>

<table>
  <thead>
    <tr>
      <th>Hình ảnh</th>
      <th>Tên điện thoại</th>
      <th>Giá</th>
      <th>Số lượng</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <?php
        $count = 0;
        if(isLoggedIn()) {
            $cart = executeQuery($conn, "SELECT * FROM giohang WHERE ma_nguoidung = ?", [getRequest('s', 'user_id')]);
            if($cart != null) {
              global $count;
              foreach ($cart as $item) {
                $phone_id = $item['ma_dienthoai'];
                $phone_count = $item['so_luong'];
                $thumbnail_image = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_id])[0]['link_anh'];
                $phone_data = executeQuery($conn, "SELECT * FROM dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_id])[0];
                $phone_name = $phone_data['ten_dienthoai'];
                $phone_price = getDiscountedPrice($phone_data['gia_ban_dienthoai'], $phone_data['giam_gia_dienthoai']);
                $ton_kho = $phone_data['ton_kho'];
                $count++;
    ?>
      <tr class="product-item" data-product_id=<?php echo $phone_id?> data-product_price=<?php echo $phone_price?>>
          <td><img src="<?php echo getUrlProductImage($thumbnail_image)?>" alt="<?php echo $thumbnail_image?>"></td>
          <td><?php echo $phone_name?></td>
          <td><?php echo number_format($phone_price, 0, ',', '.');?>đ</td>
          <?php if($ton_kho>0) {?>
            <td><input type="number" name="phone_count_<?php echo $phone_id?>" value="<?php echo $phone_count<5 ? $phone_count : 5?>" min="1" max="<?php echo $ton_kho<5 ? $ton_kho : 5?>" onkeydown="return false"></td>
            <td><button class="delete-btn">X</button></td>
            <td><input type="checkbox" name="product" onchange="updateTotalPrice()"></td>
          <?php }else {?>
            <td style="text-align: center;"><p style="font-weight: bold; color: red; font-size: 18px;">Hết hàng</p></td>
            <td colspan="2"><button style="margin: auto;" class="delete-btn">X</button></td>
          <?php }?>
      </tr>
    <?php
              }
            }
        } else {
            $cart = isset($_COOKIE['cart']) ? json_decode($_COOKIE['cart'], true) : [];
            global $count;
            foreach ($cart as $item) {
                $phone_id = $item[0];
                $phone_count = $item[1];
                $thumbnail_image = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_id])[0]['link_anh'];
                $phone_data = executeQuery($conn, "SELECT * FROM dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_id])[0];
                $phone_name = $phone_data['ten_dienthoai'];
                $phone_price = getDiscountedPrice($phone_data['gia_ban_dienthoai'], $phone_data['giam_gia_dienthoai']);
                $ton_kho = $phone_data['ton_kho'];
                $count++; 
    ?>
      <tr class="product-item" data-product_id=<?php echo $phone_id?> data-product_price=<?php echo $phone_price?>>
          <td><img src="<?php echo getUrlProductImage($thumbnail_image)?>" alt="<?php echo $thumbnail_image?>"></td>
          <td><?php echo $phone_name?></td>
          <td><?php echo number_format($phone_price, 0, ',', '.');?>đ</td>
          <?php if($ton_kho>0) {?>
            <td><input type="number" name="phone_count_<?php echo $phone_id?>" value="<?php echo $phone_count<5 ? $phone_count : 5?>" min="1" max="<?php echo $ton_kho<5 ? $ton_kho : 5?>" onkeydown="return false"></td>
            <td><button class="delete-btn">X</button></td>
            <td><input type="checkbox" name="product" onchange="updateTotalPrice()"></td>
          <?php }else {?>
            <td style="text-align: center;"><p style="font-weight: bold; color: red; font-size: 18px;">Hết hàng</p></td>
            <td colspan="2"><button style="margin: auto;" class="delete-btn">X</button></td>
          <?php }?>
      </tr>
    <?php         
            }
        }
    ?>
  </tbody>
</table>

<div class="total">
  <h3><span>Tổng tiền:</span>
  <span id="total-amount">0</span>đ</h3>
</div>

<div class="actions">
  <button id="select-all-btn">Chọn tất cả</button>
  <button id="checkout-btn">Thanh toán</button>
</div>


<div class="empty-cart-message" style="<?php echo ($count>0)?'display: none;':'display:block;'?>">
    <p>Giỏ hàng của bạn trống.</p>
</div>


<script>
    document.querySelector('#select-all-btn').addEventListener('click', ()=> {
      let checkboxs = document.querySelectorAll('input[type="checkbox"]');
      checkboxs.forEach(checkbox => {
        checkbox.click();
      });
    });

    function updateTotalPrice() {
      var total = 0;
      var numberInputs = document.querySelectorAll('input[type="number"]');
      for (let i=0; i<numberInputs.length; i++) {
        var count = numberInputs[i].value;
        var productItem = numberInputs[i].closest(".product-item");
        var ischeck = productItem.querySelector('input[type="checkbox"]').checked;
        var price = productItem.dataset.product_price;
        total += ischeck ? Number(price)*Number(count) : 0;
      }
      document.querySelector('#total-amount').textContent = formatMoney(total);
    }
    updateTotalPrice();

    document.addEventListener("DOMContentLoaded", function() {
      var isMulti = 2;
      var deleteButtons = document.getElementsByClassName("delete-btn");
      var numberInputs = document.querySelectorAll('input[type="number"]');
      var checkoutButton = document.querySelector('#checkout-btn');
      
      for (let i=0; i<deleteButtons.length; i++) {
          deleteButtons[i].addEventListener("click", function() {
          if(isMulti != 0) {
            if(!confirm("Bạn muốn xóa sản phẩm này?")) {
              return;
            }            
          }
          var productItem = this.closest(".product-item");
          var productId = productItem.dataset.product_id;
          // Gửi yêu cầu xóa sản phẩm bằng Ajax
          var xhr = new XMLHttpRequest();
          xhr.open("POST", "<?php echo getRootUrl()?>cart/cart_process.php", true);
          xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
          xhr.onreadystatechange = function() {
              if(xhr.readyState === 4 && xhr.status === 200) {
                productItem.remove();
                setTimeout(updateTotalPrice, 100);
              }
          };
          xhr.send('action=delete&phone_id='+productId);
          });
      }

      var debounceTimeout;
      function handleInputChange(event) {
          clearTimeout(debounceTimeout);
          debounceTimeout = setTimeout(function() {
            var inputValue = event.target.value;
            var productItem = event.target.closest(".product-item");
            var productId = productItem.dataset.product_id;
            // Gửi yêu cầu xóa sản phẩm bằng Ajax
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "<?php echo getRootUrl()?>cart/cart_process.php", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function() {
            };
            xhr.send('action=update&phone_id='+productId+'&phone_count='+inputValue);
            console.log('action=update&phone_id='+productId+'&phone_count='+inputValue);
          }, 300); // Thời gian chờ debounce (ms)
      }

      for (let i=0; i<numberInputs.length; i++) {
          numberInputs[i].addEventListener("change", handleInputChange);
          numberInputs[i].addEventListener("change", updateTotalPrice);
      }

      checkoutButton.addEventListener('click', function() {
        let checkCount = 0;
        let phoneIdArr = [];
        let checkboxes = document.querySelectorAll('input[type="checkbox"]');
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                checkCount++;
                var productItem = checkboxes[i].closest(".product-item");
                phoneIdArr.push(productItem.dataset.product_id);
            }
        }
        if(checkCount==0) {
          alert('Vui lòng chọn ít nhất một sản phẩm!');
          return false;
        }
        let strSend = JSON.stringify(phoneIdArr);

        if('<?php echo isLoggedIn()?>') {
          let requestUrl = window.location.href;
          let form = document.createElement('form');
          form.method = 'post';
          form.action = '<?php echo getRootUrl()."checkout/index.php"?>';

          let reqUrlInput = document.createElement('input');
          reqUrlInput.type = 'hidden';
          reqUrlInput.name = 'request_url';
          reqUrlInput.value = requestUrl;

          let reqPageInput = document.createElement('input');
          reqPageInput.type = 'hidden';
          reqPageInput.name = 'request_page';
          reqPageInput.value = 'cart_page';

          let phoneIdInput = document.createElement('input');
          phoneIdInput.type = 'hidden';
          phoneIdInput.name = 'id_product';
          phoneIdInput.value = strSend;

          form.appendChild(reqUrlInput);
          form.appendChild(reqPageInput);
          form.appendChild(phoneIdInput);
          document.body.appendChild(form);
          
          form.submit();
        } else {
            if(confirm('Bạn có muốn đăng nhập để tiếp tục')) {
                window.location = '<?php echo getRootUrl()?>login';
            } else {
                return false;
            }
        }
      });
      // document.querySelector('#delete-selected-btn').addEventListener('click', function() {
      //   var checkboxes = document.querySelectorAll('input[type="checkbox"]');
      //   isMulti = 0;
      //   for (var i = 0; i < checkboxes.length; i++) {
      //       if (checkboxes[i].checked) {
      //           var productItem = checkboxes[i].closest(".product-item");
      //           productItem.style.display = "none";
      //           productItem.querySelector('.delete-btn').click();
      //       }
      //   }
      //   isMulti = 2;
      // });
    });
</script>
</div>