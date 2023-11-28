<nav class="menu">
    <ul class="menu-list">
        <li class="menu-item">
            <a>Hãng điện thoại</a>
            <ul class="submenu">
                <li><a href="#">Subitem 1.1</a></li>
                <li><a href="#">Subitem 1.2</a></li>
                <li><a href="#">Subitem 1.3</a></li>
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
    Danh mục sản phẩm
</h3>

<div class="choose-box">
    <p>Sắp xếp theo</p>
    <select>
        <option>-</option>
        <option>1Tùy chọn 1</option>
        <option>1</option>
    </select>
</div>

<div class="product-grid">
    <?php foreach ($list_phone_display as $phone) { ?>
        <div class="product-item"><a href="<?php echo getRootUrl().'product?product_id='.$phone->id?>">
            <div class="product-image">
                <img src="<?php echo getRootUrl().'/assets/images/product-images/'.filterImageName($phone->thumbnail_image)?>" alt="<?php echo filterImageName($phone->thumbnail_image)?>">
            </div>
            <div class="product-status <?php echo ($product_status) ? '' : 'no' ?>"><?php echo $product_status?></div>
            <div class="product-name"><?php echo $phone->name?></div>
            <div class="product-price">
                <span class="main-price"><?php echo number_format(getDiscountedPrice($phone->price, $phone->discount), 0, ',', '.')?>đ</span>
                <span class="price"><?php echo number_format($phone->price)?>đ</span>
            </div>
            <div class="product-rating">
                <span class="star-wrapper">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i> <!--far là sao rỗng-->
                <i class="fas fa-star-half-alt"></i>
                <i class="far fa-star"></i>
                </span>
                <span class="rating">3.5</span>
            </div>
        </a></div>
    <?php } ?>
</div>


<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
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