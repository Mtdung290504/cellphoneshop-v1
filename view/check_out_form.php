<checkoutpage>
    <h3 class="title">Cellphone Shop - Thanh Toán</h3>

    <form method="post" action="">
        <div class="form-group">
            <label for="fullname">Họ tên:</label>
            <input type="text" id="fullname" required name="ho_ten"
            placeholder="Họ tên" value="<?php echo (isset($user_name))?$user_name:''?>">
        </div>

        <div class="form-group">
            <label for="phone">Số điện thoại:</label>
            <input type="tel" id="phone" required name="dien_thoai" 
            placeholder="Số điện thoại" value="<?php echo (isset($user_tel))?$user_tel:''?>">
        </div>

        <div class="form-group">
            <label for="address">Địa chỉ:</label>
            <textarea id="address" rows="3" required name="dia_chi" placeholder="Địa chỉ"><?php echo (isset($user_address))?$user_address:''?></textarea>
        </div>

        <h3>Danh sách điện thoại thanh toán:</h3>
        <div id="phone-list">
            <?php if($request_page == "product_page") {?>
                <div class="phone-item" data-price=<?php echo $gia_dienthoai?>>
                    <input type="hidden" name="request_url" value="<?php echo $request_url?>">
                    <input type="hidden" name="list_phone_type" value="single">
                    <input type="hidden" name="phone_id" value="<?php echo $id_product?>">
                    <img src="<?php echo getUrlProductImage($thumbnail_image)?>" alt="<?php echo filterImageName($thumbnail_image)?>">
                    <div class="phone-info">
                        <div class="phone-name"><?php echo $ten_dienthoai?></div>
                        Số lượng: <input id="phone-count" type="number" name="so_luong_dienthoai" min="1" max="<?php echo $ton_kho<5 ? $ton_kho : 5?>" value="1" onkeydown="return false">
                        <div class="phone-name"><?php echo number_format($gia_dienthoai, 0, ',', '.')?>đ</div>
                    </div>
                </div>
            <?php } else if($request_page == "cart_page") {
                    $ma_dienthoai_to_send = [];
                    $so_luong_to_send = [];
                    foreach ($request_phones as $key => $phone_data) {
                        $ma_dienthoai_to_send[] = $phone_data['ma_dienthoai'];
                        $so_luong_to_send[] = $so_luong[$key]['so_luong'];
                    ?>
                    <div class="phone-item">
                        <img src="<?php echo getUrlProductImage(
                            executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_data['ma_dienthoai']])[0]['link_anh']
                        )?>" alt="">
                        <div class="phone-info">
                            <div class="phone-name"><?php echo $phone_data['ten_dienthoai']?></div>
                            Số lượng: <?php echo $so_luong[$key]['so_luong'];?>
                            <div class="phone-name">
                                <?php echo number_format(
                                    getDiscountedPrice($phone_data['gia_ban_dienthoai'], $phone_data['giam_gia_dienthoai']), 
                                    0, ',', '.')?>đ
                            </div>
                        </div>
                    </div>
            <?php }?>
                <input type="hidden" name="request_url" value="<?php echo $request_url?>">
                <input type="hidden" name="list_phone_type" value="multiple">
                <input type="hidden" name="phone_id" value="<?php echo json_encode($ma_dienthoai_to_send)?>">
                <input type="hidden" name="so_luong_dienthoai" value="<?php echo json_encode($so_luong_to_send)?>">
            <?php }?>
        </div>

        <div class="price-box">
            Tổng tiền: <span class="total-price">
                <?php 
                    echo number_format($gia_dienthoai, 0, ',', '.');
                ?>đ
            </span>
        </div>

        <div class="form-group">
            <label>Phương thức thanh toán:</label><br>
            <div class="payment-option">
                <input type="radio" checked id="cash-on-delivery" name="payment-method" value="cash-on-delivery" required>
                <label for="cash-on-delivery">Thanh toán khi nhận hàng</label>
            </div>
            <div class="payment-option">
                <input type="radio" id="online-payment" name="payment-method" value="online-payment" required>
                <label for="online-payment">Thanh toán trực tuyến</label>
            </div>
        </div>

        <input type="submit" name="submit" value="Thanh toán" id="checkoutBtn" class="submit-btn">
    </form>
</checkoutpage>

<?php if($request_page == "product_page") {?>
    <script>
        document.querySelector('#phone-count').addEventListener('input', function() {
            let newPrice = <?php echo $gia_dienthoai?>*this.value;
            document.querySelector('span.total-price').innerHTML = formatMoney(newPrice)+"đ";
        });
    </script>
<?php }?>