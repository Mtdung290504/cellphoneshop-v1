<nav class="menu">
    <ul class="menu-list">
        <li class="menu-item">
            <a>Hãng điện thoại</a>
            <ul class="submenu">
                <?php foreach ($list_firm_data as $value) {?>
                    <li><a href="<?php echo getRootUrl().'?firm='.$value['ma_hang']?>"><?php echo $value['ten_hang']?></a></li>
                <?php }?>
            </ul>
        </li>

        <li class="menu-item cart-icon">
            <a href="<?php echo getRootUrl().'/cart'?>">
                <i class="fa fa-shopping-cart"></i>
                <p>Giỏ hàng</p>
            </a>
            <div class="cart-count" style="display: <?php echo ($cart_count && $cart_count != 0) ? 'flex' : 'none' ?>"><?php echo "<p>$cart_count</p>"?></div>
        </li>
    </ul>
</nav>


<div class="swiper-container">
    <div class="swiper-wrapper">
        <?php foreach ($list_slide_image as $value) { ?>
            <div class="swiper-slide">
                <img src="<?php echo getRootUrl().'assets/images/slide-images/'.$value['link_anh']?>" alt="<?php echo $value['link_anh']?>">
            </div>
        <?php } ?>
    </div>
    <div class="swiper-pagination"></div>
</div>

<h3 style="display: block; text-align: center; font-size: 27px; width: 100%; margin: 40px 0 60px 0;">
    <?php echo $firm_name ? "Điện thoại $firm_name" : "Danh mục sản phẩm"?>
</h3>

<div class="choose-box">
    <p>Sắp xếp theo</p>
    <select>
        <option>Mới nhất</option>
        <option>Tùy chọn 1</option>
        <option>Tùy chọn 2</option>
    </select>
</div>

<div class="product-grid">
    <?php foreach ($list_phone_display as $phone) { ?>
        <div class="product-item"><a href="<?php echo getRootUrl().'product?product_id='.$phone->id?>">
            <div class="product-image">
                <img src="<?php echo getUrlProductImage($phone->thumbnail_image)?>" alt="<?php echo filterImageName($phone->thumbnail_image)?>">
            </div>
            <div class="product-status <?php echo ($phone->status) ? '' : 'no' ?>"><?php echo $phone->status?></div>
            <div class="product-name"><?php echo $phone->name?></div>
            <div class="product-price">
                <span class="main-price"><?php echo number_format(getDiscountedPrice($phone->price, $phone->discount), 0, ',', '.')?>đ</span>
                <span class="price"><?php echo ($phone->discount > 0 && $phone->price != getDiscountedPrice($phone->price, $phone->discount))?number_format($phone->price, 0, ',', '.').'đ':''?></span>
            </div>
            <div class="product-rating">
                <?php if($phone->stars != 0) {?>
                    <span class="star-wrapper">
                        <?php echo renderStars($phone->stars)?>
                    </span>
                    <span class="rating"><?php echo $phone->stars.'/5'?></span>
                <?php } else{echo '<span class="none-star">Chưa có lượt đánh giá</span>';}?>
            </div>
        </a></div>
    <?php } ?>
</div>


<script src="<?php echo getRootUrl().'assets/scripts2/swiper-bundle.min.js'?>"></script>
<script>
    var swiper = new Swiper('.swiper-container', {
    // Cấu hình tùy chọn của Swiper.js
    slidesPerView: 2,
    spaceBetween: 10,
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