create database if not exists cellphoneshopv0 character set UTF8 collate utf8_vietnamese_ci;
use cellphoneshopv0;

CREATE TABLE if not exists hang_dienthoai(
    ma_hang INT PRIMARY KEY AUTO_INCREMENT,
    ten_hang nvarchar(30) NOT NULL 
);
INSERT INTO hang_dienthoai (ten_hang) 
VALUES
    ('Apple'),
    ('Samsung'),
    ('Xiaomi'),
    ('OPPO'),
    ('realme'),
    ('vivo'),
    ('Nokia'),
    ('ASUS'),
    ('Nubia'),
    ('TECNO'),
    ('OnePlus');

CREATE TABLE if not exists thong_so_ky_thuat(
    ma_thong_so INT PRIMARY KEY AUTO_INCREMENT,
    ten_thong_so nvarchar(30) NOT NULL
);
INSERT INTO thong_so_ky_thuat (ten_thong_so) 
VALUES
    ('Kích thước màn hình'),
    ('Công nghệ màn hình'),
    ('Camera sau'),
    ('Camera trước'),
    ('Chipset'),
    ('Dung lượng RAM'),
    ('Bộ nhớ trong'),
    ('Pin'),
    ('Thẻ SIM'),
    ('Hệ điều hành'),
    ('Độ phân giải màn hình'),
    ('Tính năng màn hình');
    
CREATE TABLE if not exists dienthoai(
    ma_dienthoai INT PRIMARY KEY AUTO_INCREMENT,
    ten_dienthoai nvarchar(30) NOT NULL,
    gia_nhap_dienthoai INT NOT NULL,
    gia_ban_dienthoai INT NOT NULL,
    giam_gia_dienthoai INT DEFAULT 0,
    mo_ta_dienthoai TEXT NOT NULL,
    ton_kho INT DEFAULT 0,
    da_ban INT DEFAULT 0,
    luot_xem INT DEFAULT 0,
    luot_binh_luan INT DEFAULT 0,
    luot_danh_gia INT DEFAULT 0,
    luot_them_gio_hang INT DEFAULT 0,
    ma_hang INT NOT NULL,
    FOREIGN KEY (ma_hang) REFERENCES hang(ma_hang)
);

CREATE TABLE if not exists anh_dienthoai(
    ma_anh INT PRIMARY KEY AUTO_INCREMENT,
    link_anh varchar(200) NOT NULL,
    ma_dienthoai INT NOT NULL,
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai)
);

CREATE TABLE if not exists thong_so_ky_thuat_dienthoai(
    ma_thong_so INT NOT NULL,
    ma_dienthoai INT NOT NULL,
    gia_tri TEXT NOT NULL,
    FOREIGN KEY (ma_thong_so) REFERENCES thong_so_ky_thuat(ma_thong_so),
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai)
);

CREATE TABLE if not exists nhap_dienthoai(
    ma_nhap INT PRIMARY KEY AUTO_INCREMENT,
    ma_dienthoai INT NOT NULL,
    ngay_nhap DATE NOT NULL,
    so_luong_nhap INT NOT NULL,
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai)
);

CREATE TABLE if not exists ban_dienthoai(
    ma_ban INT PRIMARY KEY AUTO_INCREMENT,
    ma_dienthoai INT NOT NULL,
    ngay_ban DATE NOT NULL,
    so_luong_ban INT NOT NULL,
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai)
);

CREATE TABLE if not exists nguoidung(
    ma_nguoidung INT PRIMARY KEY AUTO_INCREMENT,
    quyen_admin tinyint(1) DEFAULT 0,
    ten_dang_nhap varchar(30) NOT NULL,
    mat_khau varchar(200) NOT NULL,
    ho_ten nvarchar(30),
    email varchar(30),
    dien_thoai varchar(30),
    dia_chi TEXT
);

CREATE TABLE if not exists lich_su_giao_dich(
    ma_giao_dich INT PRIMARY KEY AUTO_INCREMENT,
    ma_nguoidung INT NOT NULL, 
    FOREIGN KEY (ma_nguoidung) REFERENCES nguoidung(ma_nguoidung),
    ma_dienthoai INT NOT NULL, 
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai),
    so_luong INT NOT NULL,
    ngay_giao_dich DATE NOT NULL
);

CREATE TABLE if not exists binhluan(
    -- XÁC MINH ROBOT KHI BÌNH LUẬN
    ma_binhluan INT PRIMARY KEY AUTO_INCREMENT,
    ma_nguoidung INT NOT NULL, 
    FOREIGN KEY (ma_nguoidung) REFERENCES nguoidung(ma_nguoidung),
    ma_dienthoai INT NOT NULL, 
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai),
    noi_dung TEXT NOT NULL
);

CREATE TABLE if not exists danhgia( 
    -- NHỚ ĐỐI VỚI MỖI 1 SP, MỖI NGƯỜI DÙNG CHỈ CÓ ĐÚNG 1 GIÁ TRỊ ĐÁNH GIÁ.
    -- NẾU ĐÁNH GIÁ TRÙNG THÌ BÁO ĐÃ ĐÁNH GIÁ RỒI.
    ma_danhgia INT PRIMARY KEY AUTO_INCREMENT,
    ma_nguoidung INT NOT NULL, 
    FOREIGN KEY (ma_nguoidung) REFERENCES nguoidung(ma_nguoidung),
    ma_dienthoai INT NOT NULL, 
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai),
    gia_tri INT NOT NULL
);

CREATE TABLE if not exists giohang(
    ma_giohang INT PRIMARY KEY AUTO_INCREMENT,
    ma_nguoidung INT NOT NULL, 
    FOREIGN KEY (ma_nguoidung) REFERENCES nguoidung(ma_nguoidung),
    ma_dienthoai INT NOT NULL, 
    FOREIGN KEY (ma_dienthoai) REFERENCES dienthoai(ma_dienthoai),
    so_luong INT NOT NULL
);
