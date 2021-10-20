-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 14, 2020 lúc 11:09 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoatuoialumbale`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `idCTDH` int(20) NOT NULL,
  `idDH` int(20) NOT NULL,
  `idSP` int(20) NOT NULL,
  `giaSP` int(20) NOT NULL,
  `soluongDH` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`idCTDH`, `idDH`, `idSP`, `giaSP`, `soluongDH`) VALUES
(1, 1, 6, 1000000, 1),
(2, 1, 24, 500000, 2),
(3, 3, 36, 750000, 1),
(4, 4, 15, 450000, 2),
(5, 4, 12, 600000, 2),
(6, 4, 3, 500000, 1),
(7, 5, 31, 1600000, 99),
(8, 6, 34, 650000, 1),
(9, 6, 40, 750000, 1),
(10, 6, 41, 1100000, 1),
(11, 7, 21, 900000, 1),
(12, 7, 17, 800000, 1),
(13, 7, 35, 1500000, 1),
(14, 8, 41, 1100000, 1),
(15, 8, 43, 500000, 1),
(16, 9, 7, 600000, 1),
(17, 9, 8, 450000, 1),
(18, 10, 1, 99000, 1),
(19, 10, 2, 99000, 1),
(20, 10, 3, 99000, 1),
(21, 11, 1, 99000, 1),
(22, 12, 1, 99000, 15),
(23, 13, 21, 89000, 1),
(24, 13, 10, 109000, 1),
(25, 13, 14, 239000, 1),
(26, 14, 20, 89000, 3),
(27, 14, 17, 119000, 1),
(28, 14, 15, 119000, 1),
(29, 15, 21, 89000, 1),
(30, 15, 20, 89000, 1),
(31, 16, 21, 89000, 1),
(32, 16, 20, 89000, 1),
(33, 17, 21, 89000, 1),
(34, 17, 20, 89000, 1),
(35, 18, 21, 89000, 1),
(36, 18, 20, 89000, 1),
(37, 19, 21, 89000, 2),
(38, 20, 22, 159000, 1),
(39, 20, 19, 99000, 1),
(40, 21, 30, 700000, 1),
(41, 22, 43, 230000, 1),
(42, 22, 39, 650000, 1),
(43, 23, 42, 270000, 1),
(44, 23, 39, 650000, 1),
(45, 24, 42, 270000, 1),
(46, 24, 39, 650000, 1),
(47, 25, 42, 270000, 12),
(48, 25, 39, 650000, 1),
(49, 26, 41, 540000, 1),
(50, 27, 41, 540000, 1),
(51, 28, 45, 5000000, 1),
(52, 29, 41, 540000, 1),
(53, 29, 40, 320000, 1),
(54, 30, 45, 5000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `idDH` int(20) NOT NULL,
  `idUser` int(20) NOT NULL,
  `nameDH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneDH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressDH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emailDH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tongtienDH` int(20) NOT NULL,
  `ngayDH` date NOT NULL,
  `statusDH` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`idDH`, `idUser`, `nameDH`, `phoneDH`, `addressDH`, `emailDH`, `tongtienDH`, `ngayDH`, `statusDH`) VALUES
(22, 19, 'Long', '12345678901', 'Quận 1', 'Long@gmail.com', 880000, '2020-06-10', 3),
(23, 19, 'Long', '12345678901', 'Quận 1', 'Long@gmail.com', 920000, '2020-06-10', 1),
(24, 19, 'Long', '12345678901', 'Quận 1', 'Long@gmail.com', 920000, '2020-06-10', 3),
(25, 19, 'Long', '12345678901', 'Quận 1', 'Long@gmail.com', 3890000, '2020-06-10', 1),
(26, 19, 'Long', '12345678901', 'Quận 1', 'Long@gmail.com', 540000, '2020-06-11', 3),
(27, 19, 'Long', '12345678901', 'Quận 1', 'Long@gmail.com', 540000, '2020-06-11', 1),
(28, 19, 'Long', '12345678901', 'Quận 1', 'Long@gmail.com', 5000000, '2020-06-13', 1),
(29, 21, 'Đạt ', '09012345678', 'Quận 3', 'dat@gmail.com', 860000, '2020-06-14', 1),
(30, 22, 'huy', '09098595451', 'Quan 5', 'huy@gmail.com', 5000000, '2020-06-14', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `idKM` int(20) NOT NULL,
  `tenKM` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenKM_kd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idUser` int(20) NOT NULL,
  `ngaydangKM` date NOT NULL,
  `ngaytuKM` date NOT NULL,
  `ngaydenKM` date NOT NULL,
  `motaKM` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanhKM` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`idKM`, `tenKM`, `tenKM_kd`, `idUser`, `ngaydangKM`, `ngaytuKM`, `ngaydenKM`, `motaKM`, `hinhanhKM`) VALUES
(1, 'COMBO MÓN NGON SAY MÊ (2-3 người)', 'combo mon ngon say me', 1, '2019-04-01', '2019-04-01', '2019-04-30', '<p><strong>COMBO MÓN NGON SAY MÊ (2-3 người)</strong></p>\r\n<p>Combo bao gồm: 1 Pizza Classic (cỡ M, đế đặc biệt viền phô mai/viền phô mai xúc xích), 1 Mỳ Ý (bất kỳ), 1 Cánh gà nướng BBQ/Cánh gà tẩm bột chiên giòn (10pcs).</p>\r\n<p>&diams;  Áp dụng tất cả các ngày trong tuần</p>\r\n\r\n', 'combo2-3nguoi.png'),
(2, 'MUA 1 TẶNG 1', 'mua 1 tang 1', 1, '2019-04-01', '2019-04-01', '2019-04-30', '<p><strong>MUA 1 TẶNG 1</strong></p>\r\n<p>Mua 1 Pizza bất kỳ từ size M tặng 1 Pizza (Pan/Crispy Thin) dòng Classic cùng cỡ.</br>\r\n&diams;  Áp dụng từ 17h-19h thứ 5 hàng tuần\r\n<p>&diams; Không áp dụng với các chương trình ưu đãi khác</p>\r\n', 'mua1tang1.png'),
(3, 'GIẢM 50% CHO PIZZA THỨ 2', 'giam 50% cho pizza thu 2', 1, '2019-04-01', '2019-04-01', '2019-04-30', '<p><strong> GIẢM 50% CHO PIZZA THỨ 2</strong></p>\r\n<p>Mua 1 Pizza (size M, L) và bất kỳ 1 nước kèm theo được giảm 50% Pizza cho Pizza thứ 2 (cùng size, giá trị thấp hơn hoặc bằng pizza nguyên giá). Áp dụng cho mua mang về hoặc giao hàng tận nơi khi đặt hàng qua website. Miễn phí giao hàng tận nơi trong phạm vi bán kính 3km</p>\r\n<p>&diams;  Chỉ áp dụng thứ 2 hàng tuần</p>\r\n<p>&diams;  Không áp dụng với các ưu đãi khác</p>\r\n', 'giam50.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idCL` int(20) NOT NULL,
  `tenCL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thutuCL` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`idCL`, `tenCL`, `thutuCL`) VALUES
(5, 'Hoa bó', 1),
(6, 'Hoa giỏ', 2),
(7, 'Hoa bình', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `idPH` int(20) NOT NULL,
  `idUser` int(20) NOT NULL,
  `namePH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressPH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonePH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieudePH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `motaPH` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayPH` date NOT NULL,
  `statusPH` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`idPH`, `idUser`, `namePH`, `addressPH`, `phonePH`, `tieudePH`, `motaPH`, `ngayPH`, `statusPH`) VALUES
(1, 2, 'Tuấn Hùng', '123 ngô quyền, quận 5, tp hcm', '1234567890', 'Tuyệt Vời', '<p>ok\r\n</p>\r\n', '2017-05-19', 0),
(2, 0, 'Dân Thường', 'nhà đối diện', '2147483647', 'Cửa hàng đẹp', '<p>ok</p>\r\n', '2017-06-01', 1),
(3, 0, 'Cô hàng xóm', 'sát vách', '2147483647', 'Anh chủ shop đẹp trai', '<p>hoa dep\r\n</p>\r\n', '2018-04-16', 1),
(4, 5, 'Nguyễn Duy Vàng', '123 đường 3 tháng 2 quận 10 tp hcm', '01234567890', 'Chất lượng sản phẩm', '<p>phuc vu ok</p>\r\n', '2019-05-17', 1),
(5, 13, 'duy vang', '132 3 tháng 2 quận 10 tp hcm', '0911482088', 'dịch vụ', '<p>bong tuoi</p>\r\n', '2019-05-17', 1),
(6, 13, 'duy vang', '132 3 tháng 2 quận 10 tp hcm', '0911482088', 'Chất lượng sản phẩm', '<p>gia hoa vua phai</p>\r\n', '2019-05-18', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(20) NOT NULL,
  `idCL` int(20) NOT NULL,
  `maSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenSP_kd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giaSP` int(20) NOT NULL,
  `motaSP` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanhSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `idCL`, `maSP`, `tenSP`, `tenSP_kd`, `giaSP`, `motaSP`, `hinhanhSP`, `soluong`) VALUES
(1, 5, 'hb', 'con ga', 'con ga con', 1, 'sadasd', '', 12),
(30, 5, 'HB001', 'Hoa bó Hướng Dương', 'Hoa bo Huong Duong', 700000, '<p>Hoa ch&iacute;nh l&agrave; m&oacute;n qu&agrave; tuyệt vời hơn hẳn những m&oacute;n qu&agrave; kh&aacute;c mang đến hạnh ph&uacute;c ngất ng&acirc;y cho người nhận lẫn người tặng. Khi tặng lẵng hoa t&igrave;nh y&ecirc;u kh&ocirc;ng chỉ gi&uacute;p cho người nhận cảm thấy hạnh ph&uacute;c m&agrave; người nhận c&ograve;n cảm thấy vui vẻ lạ thường. Niềm vui được nh&acirc;n đ&ocirc;i đ&uacute;ng nghĩa sẽ mang đến hạnh ph&uacute;c trọn vẹn cho cả đ&ocirc;i b&ecirc;n.</p>\r\n', 'hoa-huong-duong-bo-s964-jpg-20200522142136awwrimKNI9_thum.jpg', 4),
(31, 5, 'HB002', 'Bó hoa cát tường', 'Bo hoa cat tuong', 450000, '<p>B&oacute; hoa l&agrave;m từ c&aacute;t</p>\r\n', 'bo-hoa-cat-tuong-s831-jpg-20200522142825WjSLNybvoV_thum.jpg', 2),
(32, 5, 'HB003', 'Bó hoa chúc mừng sinh', 'Bo hoa chuc mung sinh nhat', 200000, '<p>B&oacute; hoa tặng sinh nhật</p>\r\n', 'bochantinh.png', 6),
(33, 5, 'HB004', 'Bó hoa đẹp', 'Bo hoa dep', 150000, '<p>B&oacute; hoa rất đẹp</p>\r\n', 'bo-hoa-dep-s1546-jpg-20200522140127o6AnhL2vag_thum.jpg', 3),
(34, 5, 'HB005', 'Bó hoa hồng', 'Bo hoa hong', 300000, '<p>B&oacute; hoa m&agrave;u&nbsp;hồng</p>\r\n', 'bo-hoa-hong-s1473-jpg-20191031100322frK53WxsFz_thum.jpg', 6),
(35, 5, 'HB006', 'Bó hoa tươi', 'Bo hoa tuoi', 300000, '<p>B&oacute; tươi tắn</p>\r\n', 'bo-hoa-tuoi-s968-jpg-202005221417553kycy3NCOX_thum.jpg', 9),
(36, 5, 'HB007', 'Hoa tốt nghiệp', 'Hoa tot nghiep', 750000, '<p>Hoa&nbsp;ch&uacute;c mừng tốt nghiệp</p>\r\n', 'chuc-mung-tot-nghiep-s1475-jpg-20191031100432O3v5VHDfAJ_thum.jpg', 2),
(38, 6, 'HG001', 'Hoa giỏ đẹp', 'Hoa gio dep', 250000, '<p>Giỏ hoa rất đẹp</p>\r\n', 'gio-hoa-dep-jpg-20190920100443mZ1RtXzK97_thum.jpg', 4),
(39, 6, 'HG002', 'Hoa giỏ tươi', 'Hoa gio tuoi', 650000, '<p>Hoa c&ograve;n tươi</p>\r\n', 'gio-hoa-tuoi-jpg-20190616181627S2l4IPNC0j_thum.jpg', 7),
(40, 6, 'HG003', 'Hoa giỏ hồng', 'Hoa gio hong', 320000, '<p>Hoa giỏ m&agrave;u hồng</p>\r\n', 'hoa-hong-jpg-20180811033823k1W3maFXp9_thum.jpg', 3),
(41, 7, 'HBH001', 'Hoa cắm bình', 'Hoa cam binh', 540000, '<p>Hoa được cắm v&agrave;o b&igrave;nh</p>\r\n', 'hoa-binh-s829-jpg-20200523105603rbqEMArWlQ_thum.jpg', 10),
(42, 7, 'HBH002', 'Hoa hướng dương', 'Hoa huong duong', 270000, '<p>Hoa hướng dương được cắm v&agrave;o b&igrave;nh</p>\r\n', 'hoa-cam-binh-s542-jpg-20200523141424F1LgAw6N8C_thum.jpg', 12),
(45, 7, 'HB008', 'Hoa Bình Đen', 'hoa binh den', 5000000, '<p>Hoa Đen</p>\r\n', 'hoabinh.png', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `idUser` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` int(12) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(1) NOT NULL,
  `note` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`idUser`, `username`, `password`, `name`, `cmnd`, `address`, `email`, `phone`, `level`, `note`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 123456789, '123 admin', 'admin@gmail.com', '0120147841', 2, 0),
(17, 'admin2', '202cb962ac59075b964b07152d234b70', 'asd123', 1234567890, 'asdasd', 'a@admin.com', '09012345678', 2, 0),
(19, 'long1', '25d55ad283aa400af464c76d713c07ad', 'Long', 1234567890, 'Quận 1', 'Long@gmail.com', '12345678901', 0, 0),
(20, 'long2', '25d55ad283aa400af464c76d713c07ad', 'Long', 1234567890, 'Quận 2', 'Long2@gmail.com', '12345678910', 1, 0),
(21, 'dat1', '25d55ad283aa400af464c76d713c07ad', 'Đạt ', 1234567890, 'Quận 3', 'dat@gmail.com', '09012345678', 0, 0),
(22, 'huy1', '202cb962ac59075b964b07152d234b70', 'huy1', 1233212311, 'Quan 5', 'huy@gmail.com', '09098595452', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`idCTDH`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idDH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`idKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idCL`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`idPH`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `hinhanhSP` (`hinhanhSP`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `idCTDH` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idDH` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `idKM` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `idCL` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `idPH` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
