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
                                    <img src="<?php echo getUrlProductImage($img_link)?>" alt="<?php echo filterImageName($img_link)?>">
                                </div>
                            </div>
                    <?php }}?>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            </div>
            <h3 style="margin: 10px; font-size: 24px;">Đánh giá</h3>
            <div class="rating-box phone-rating-box">
                <span class="star-wrapper">
                    <?php echo renderStars($phone_rate)?>
                </span>
                <span class="rating-count"><?php echo $phone_rate.'/5'?> - <?php echo $rate_count!=0? $rate_count.' Lượt đánh giá':'Chưa có lượt đánh giá nào'?></span>
            </div>
            <div class="comment-box">
                <h3>Bình luận (<?php echo $comment_count?>)</h3>
                <form id="comment-form" action="" method="post">
                    <textarea name="comment-content" required row="5" col="15" placeholder="Bình luận..."></textarea>
                    <input type="hidden" name="product_id" value=<?php echo getRequest('g', 'product_id')?>>
                    <input name="submit-comment" type="submit" value="Gửi">
                </form>
                <div class="comments">
                    <?php foreach ($user_rates_and_comments as $value) {
                            $user_name = executeQuery($conn, "SELECT ho_ten FROM nguoidung WHERE ma_nguoidung = ?", [$value->user_id])[0]['ho_ten'];
                            if(!$user_name) {$user_name = "Người dùng ẩn danh";}
                        ?>
                        <div class="comment">
                            <span class="user-name-container">
                                <span class="user-name"><?php echo $user_name?></span>
                                <div class="rating-box">
                                    <?php echo ($value->rate != null) ? '<div class="star-wrapper">'.renderStars($value->rate).'</div>' : 'Chưa đánh giá';?>
                                </div>
                            </span>
                            <span class="comment-content"><?php echo nl2br($value->comment)?></span>
                        </div>
                    <?php }?>
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
                <?php echo ($phone_info_data['ton_kho'] != 0)
                    ? '<a href="javascript:void(0);" class="button" id="check-out-btn">Đặt hàng</a>'
                        .'<a href="javascript:void(0);" class="button" id="add-to-cart-btn">Thêm vào giỏ hàng</a>'
                    : '<a style="cursor: block; background-color: red;" class="button">Hết hàng</a>'
                ?>
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
      var checkOutButton = document.querySelector('#check-out-btn');
      var addButton = document.querySelector('#add-to-cart-btn');
      var starsContainer = document.querySelector('.phone-rating-box .star-wrapper');
      var commentForm = document.querySelector('form#comment-form');

      //Xử lý sự kiện thêm giỏ hàng
      if(addButton) {
        addButton.addEventListener("click", function() {
            var productId = <?php echo getRequest('g', 'product_id')?>;
            // Gửi yêu cầu thêm sản phẩm bằng Ajax
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
      }

      //Xử lý nút mua hàng
      if(checkOutButton) {
        checkOutButton.addEventListener('click', function() {
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
                reqPageInput.value = 'product_page';

                let phoneIdInput = document.createElement('input');
                phoneIdInput.type = 'hidden';
                phoneIdInput.name = 'id_product';
                phoneIdInput.value = '<?php echo $product_id?>';

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
      }

      //Xử lý form bình luận
      commentForm.addEventListener('submit', function(event) {
        if('<?php echo isLoggedIn()?>') {
        } else {
            event.preventDefault();
            if(confirm('Bạn có muốn đăng nhập để bình luận?')) {
                window.location = "<?php echo getRootUrl()?>login";
            }
        }
      });

      //Xử lý đánh giá
        var debounceTimeout;
        function starClick(event) {
            if('<?php echo isLoggedIn()?>') {
                clearTimeout(debounceTimeout);
                    debounceTimeout = setTimeout(function() {
                    var xhr = new XMLHttpRequest();
                    xhr.open("POST", "<?php echo getRootUrl()?>product/index.php", true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    xhr.onreadystatechange = function() {
                        if(xhr.readyState === 4 && xhr.status === 200) {
                            let res = JSON.parse(xhr.responseText);
                            resetStars(res[0]);
                            resetDisplayCount(res[0], res[1]);
                        }
                    };
                    xhr.send(`action=rate&phone_id=${<?php echo getRequest('g', 'product_id')?>}&value=${event.target.dataset.value}`); 
                }, 300);               
            } else {
                if(confirm('Bạn có muốn đăng nhập để đánh giá?')) {
                    window.location = "<?php echo getRootUrl()?>login";
                }
            }
        }

        function addStarEvent() {
            stars = starsContainer.querySelectorAll('i');
            stars.forEach(star => {
                star.addEventListener('mouseover', function() {
                    let idHoverStar = this.dataset.value;
                    stars.forEach(substar => {
                        let idStar = substar.dataset.value;
                        if (idStar <= idHoverStar) {
                            substar.classList.remove('far');
                            substar.classList.remove('fa-star-half-alt');
                            substar.classList.add('fas');
                            substar.classList.add('fa-star');
                        } else {
                            substar.classList.remove('fas');
                            substar.classList.remove('fa-star-half-alt');
                            substar.classList.add('fa-star');
                            substar.classList.add('far');
                        }
                    });
                });
                star.addEventListener('mouseout', function() {
                    starsContainer.innerHTML = '<?php echo renderStars($phone_rate)?>';
                    addStarEvent();
                });
                star.addEventListener('click', starClick);
            });
        }
        addStarEvent();

        function resetStars(new_rate) {
            starsContainer.innerHTML = renderStars(new_rate);
            stars = starsContainer.querySelectorAll('i');
            stars.forEach(star => {
                star.addEventListener('mouseover', function() {
                    let idHoverStar = this.dataset.value;
                    stars.forEach(substar => {
                        let idStar = substar.dataset.value;
                        if (idStar <= idHoverStar) {
                            substar.classList.remove('far');
                            substar.classList.add('fas');
                        } else {
                            substar.classList.remove('fas');
                            substar.classList.add('far');
                        }
                    });
                });
                star.addEventListener('mouseout', function() {
                    starsContainer.innerHTML = renderStars(new_rate);
                    addStarEvent();
                });
                star.addEventListener('click', starClick);
            });
        }
        function resetDisplayCount(new_rate, new_rate_count) {
            document.querySelector('.rating-count').innerHTML = `${new_rate}/5 - ${new_rate_count!=0 ? new_rate_count+" Lượt đánh giá" : "Chưa có lượt đánh giá"}`;
        }
    });
</script>