<product-page>
    <div class="ctn">
        <div class="left">
            <div class="product-name">
                <h3><?php echo $phone_info->name?></h3>
                <hr>
            </div>
            <div class="product-image">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <?php
                        if($phone_info->image_links) { 
                            foreach ($phone_info->image_links as $img_link) {?>
                            <div class="swiper-slide">
                                <div class="img-container">
                                    <img src="<?php echo getRootUrl().'assets/images/product-images/'.filterImageName($img_link)?>" alt="<?php echo filterImageName($img_link)?>">
                                </div>
                            </div>
                    <?php }}?>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            </div>
            <h3 style="margin: 10px; font-size: 24px;">Đánh giá</h3>
            <div class="rating-box">
                <span class="star-wrapper">
                    <?php echo renderStars($phone_rate)?>
                </span>
                <span class="rating-count"><?php echo $phone_rate.'/5'?> - <?php echo $rate_count!=0? $rate_count.' Lượt đánh giá':'Chưa có lượt đánh giá nào'?></span>
            </div>
            <div class="comment-box">
                <h3>Bình luận (<?php echo $comment_count?>)</h3>
                <form action="" method="post">
                    <textarea name="comment" row="5" col="15" placeholder="Bình luận..."></textarea>
                    <input type="submit" value="Gửi">
                </form>
                <div class="comments">
                    <?php foreach ($user_rates_and_comments as $key => $value) {
                            $user_name = executeQuery($conn, "SELECT ho_ten FROM nguoidung WHERE ma_nguoidung = ?", [$key])[0]['ho_ten'];
                            if(!$user_name) {$user_name = "Người dùng ẩn danh";}
                            $user_rate = $value->rate;
                            foreach ($value->comments as $subvalue) {
                        ?>
                        <div class="comment">
                            <span class="user-name-container">
                                <span class="user-name"><?php echo $user_name?></span>
                                <div class="rating-box">
                                    <?php echo $user_rate!=0 ? '<div class="star-wrapper">'.renderStars($user_rate).'</div>' : 'Chưa đánh giá';?>
                                </div>
                            </span>
                            <span class="comment-content"><?php echo nl2br($subvalue)?></span>
                        </div>
                    <?php }}?>
                </div>
            </div>
        </div>

        <div class="right">
            <h3>Tính năng nổi bật</h3>
            <ul>
                <?php if($phone_info->decription) {
                    $list_decription = preg_split("/\r\n|\n|\r/", $phone_info->decription);
                    foreach ($list_decription as $decription) {
                ?>
                    <li><?php echo $decription?></li>
                <?php
                    }
                } ?>
            </ul>
            <div class="price-block">
                <span class="main-price"><?php echo number_format(getDiscountedPrice($phone_info->price, $phone_info->discount), 0, ',', '.')?>đ</span>
                <span class="price"><?php echo number_format($phone_info->price, 0, ',', '.')?>đ</span>
            </div>
            <div class="button-block">
                <a href="javascript:void(0);" class="button">Đặt hàng</a>
                <a href="javascript:void(0);" class="button" id="add-to-cart-btn">Thêm vào giỏ hàng</a>
            </div>
            <div class="spc-block">
                <h3>Thông số kỹ thuật</h3>
                <table>
                    <?php $phone_spc_arr = $phone_info->specifis->toArray();
                        $length = count($phone_spc_title);
                        for ($i=0; $i < $length; $i++) {?>
                        <tr>
                            <td><?php echo $phone_spc_title[$i]?></td>
                            <td><?php echo nl2br($phone_spc_arr[$i])?></td>
                        </tr>
                    <?php }?>
                </table>
            </div>
        </div>
    </div>
</product-page>
<script src="<?php echo getRootUrl().'assets/scripts2/swiper-bundle.min.js'?>"></script>
<script>
    var swiper = new Swiper('.swiper-container', {
    // Cấu hình tùy chọn của Swiper.js
    slidesPerView: 1,
    spaceBetween: 0,
    loop: true,
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
    autoplay: {
        delay: 2000, // Khoảng thời gian chờ giữa các slide (đơn vị: miligiây)
    },
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
      var addButton = document.querySelector('#add-to-cart-btn');
      
        addButton.addEventListener("click", function() {
            var productId = <?php echo getRequest('g', 'product_id')?>;
            // Gửi yêu cầu xóa sản phẩm bằng Ajax
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "<?php echo getRootUrl()?>cart/cart_process.php", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function() {
                if(xhr.readyState === 4 && xhr.status === 200) {
                    alert(xhr.responseText);
                }
            };
            xhr.send('action=add&phone_id='+productId);
        });

    //   var debounceTimeout;
    //   function handleInputChange(event) {
    //       clearTimeout(debounceTimeout);
    //       debounceTimeout = setTimeout(function() {
    //         var inputValue = event.target.value;
    //         var productItem = event.target.closest(".product-item");
    //         var productId = productItem.dataset.product_id;console.log(productId);
    //         // Gửi yêu cầu xóa sản phẩm bằng Ajax
    //         var xhr = new XMLHttpRequest();
    //         xhr.open("POST", "<?php echo getRootUrl()?>cart/cart_process.php", true);
    //         xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    //         xhr.onreadystatechange = function() {
    //         };
    //         xhr.send('action=update&phone_id='+productId+'&phone_count='+inputValue);
    //         console.log('action=update&phone_id='+productId+'&phone_count='+inputValue);
    //       }, 300); // Thời gian chờ debounce (ms)
    //   }

    //   for (let i=0; i<numberInputs.length; i++) {
    //       numberInputs[i].addEventListener("change", handleInputChange);
    //       numberInputs[i].addEventListener("change", updateTotalPrice);
    //   }
    });
</script>