-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 09:59 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `deleted`) VALUES
(1, 'Đồ Nam ', 0),
(2, 'Đồ Nữ ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `email`, `phone_number`, `note`, `created_at`, `status`) VALUES
(9, 'Nguyễn Anh Tú', 'Nguyenanhtuan@gmail.com', '0963666895', 'abc', NULL, 0),
(10, 'Nguyễn Thị Yến', 'chiyendangyeu@gmail.com', '0356987456', 'Xin chào, tôi muốn hỏi về phí vận chuyển và thời gian giao hàng cho đơn hàng của mình.', NULL, 0),
(11, 'Trần Quang Khải ', 'anhnuoi1993@gmail.com', '0963666895', 'd', NULL, 0),
(12, 'Nguyễn Hà My ', 'nhidangyeu@gmail.com', '0963666895', 'Xin chào, tôi muốn hỏi về phí vận chuyển và thời gian giao hàng cho đơn hàng của mình.', '2023-08-27 08:04:17', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `thumbnail`) VALUES
(1, 2, '1.png'),
(2, 2, '2.png'),
(3, 2, '3.png'),
(4, 2, '4.png'),
(5, 3, '1113.jpg'),
(6, 3, '1114.jpg'),
(7, 3, '1115.jpg'),
(8, 3, '1116.jpg'),
(9, 4, '12.jpg'),
(10, 4, '11.jpg'),
(11, 4, '10.jpg'),
(12, 4, '9.jpg'),
(13, 5, '5.jpg'),
(14, 5, '6.jpg'),
(15, 5, '7.jpg'),
(16, 5, '8.jpg'),
(17, 6, '25.jpg'),
(18, 6, '26.jpg'),
(19, 6, '27.jpg'),
(20, 6, '28.jpg'),
(21, 7, '21.jpg'),
(22, 7, '222.jpg'),
(23, 7, '23.jpg'),
(24, 7, '24.jpg'),
(25, 8, '45.jpg'),
(26, 8, '46.jpg'),
(27, 8, '47.jpg'),
(28, 8, '48.jpg'),
(29, 9, '33.jpg'),
(30, 9, '34.jpg'),
(31, 9, '35.jpg'),
(32, 9, '36.jpg'),
(33, 10, '29.jpg'),
(34, 10, '30.jpg'),
(35, 10, '31.jpg'),
(36, 10, '32.jpg'),
(37, 11, '41.jpg'),
(38, 11, '42.jpg'),
(39, 11, '43.jpg'),
(40, 11, '44.jpg'),
(41, 12, '5.png'),
(42, 12, '6.png'),
(43, 12, '7.png'),
(44, 12, '8.png'),
(45, 13, '9.png'),
(46, 13, '10.png'),
(47, 13, '11.png'),
(48, 13, '12.png'),
(49, 14, '13.png'),
(50, 14, '14.png'),
(51, 14, '15.png'),
(52, 14, '16.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `pttt` varchar(20) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `code_order` int(20) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `user_id`, `full_name`, `email`, `phone_number`, `address`, `note`, `total`, `pttt`, `order_date`, `status`, `code_order`, `deleted`) VALUES
(2, 2, 'Lê Anh Nuôi', 'anhnuoi1993@gmail.com', '0963666895', '142 P. Nguyễn Đình Hoàn', 'shop liên hệ lại với mình nhé ', 4500000, 'Thanh toán khi giao ', '2023-08-20 20:35:50', 2, 468, 0),
(3, 2, 'Nguyễn Minh Đức', 'ducminh123@gmail.com', '0358669999', '142 P. Nguyễn Đình Hoàn', 'Liên hệ lại với mình qua sdt nhé ', 2260000, 'Thanh toán online (C', '2023-08-20 21:32:44', 2, 36, 0),
(4, 2, 'Nguyễn Hải Hậu', 'mrhieu376@gmail.com', '0356987456', '142 P. Nguyễn Đình Hoàn', 'Liên hệ với mình nhé ', 1840000, 'Thanh toán khi giao ', '2023-08-20 21:50:54', 1, 152, 0),
(5, 2, 'Nguyễn Tuấn Anh', 'anhnguyen@gmail.com', '0365786651', '142 P. Nguyễn Đình Hoàn', 'Liên hệ lại với mình nha shop ', 3640000, 'Thanh toán khi giao ', '2023-08-20 21:56:17', 0, 407, 0),
(6, 2, 'Nguyễn Bá Khá ', 'anhnuoi1993@gmail.com', '0289668571', 'Bến Xe Giáp Bát ', 'Liên hệ lại với mình nhé ', 600000, 'Thanh toán khi giao ', '2023-08-21 15:20:52', 0, 416, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `total_product` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `total_product`, `quantity`, `product_size`) VALUES
(1, 2, 2, 1100000, 2, 'S'),
(2, 2, 5, 3360000, 6, 'M'),
(3, 3, 10, 1100000, 2, 'S'),
(4, 3, 8, 1120000, 2, 'S'),
(5, 4, 6, 900000, 2, 'S'),
(6, 4, 6, 900000, 2, 'M'),
(7, 5, 6, 3600000, 8, 'S'),
(8, 6, 8, 560000, 1, 'M');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `product_brand` varchar(55) DEFAULT NULL,
  `desciption` longtext DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `thumbnail`, `product_brand`, `desciption`, `quantity`, `price`, `created_at`, `updated_at`, `deleted`) VALUES
(2, 1, 'Áo Khoác Thời Trang Thể Thao Unisex Nam Nữ Adidas Firebird Track - ED6070', 'sg-11134201-23010-5gktq2p70xlv27-1678845268202.jpg', 'Adidas', '- Chiếc áo khoác thể thao Firebird này giữ nguyên vẻ ngoài vốn có của nó. Thiết kế cổ đứng tương phản 3 sọc đậm chất của phong cách cổ điển nhưng lại mang xu hướng hiện đại.\r\n- Chất liệu 100% polyeter tái chế thân thiện bên trong được phủ một lớp nỉ bông mỏng cho một cảm giác mềm mại,\r\nsản phẩm được trang bị 2 túi với khóa zip an toàn tiện lợi khi mang những đồ dùng cá nhân.', 35, 550000, '2023-08-20 17:30:41', '2023-08-20 17:30:41', 0),
(3, 1, 'Bộ Quần Áo Thể Thao Nam Uniqlo Tennis Roger Federer Open', '300.jpg', 'Adidas', 'Bộ Quần Áo Thể Thao Uniqlo Tennis Roger Federer\r\n\r\n- Uniqlo đã thực hiện với những thiết kế phối kết hợp màu hiện đại thời trang đặc trưng của của bộ muôn tennis đã tạo nên sự đặc biệt và nổi bật trong thế giới thời trang thể thao.\r\n- Chất liệu polyester dệt dạng thun lạnh đi kèm với nó là công nghệ Dry - Ex thấm hút mồ hôi bay hơi ẩm nhanh, làm khô siêu tốc giúp cơ thể luôn khô ráo thoáng mát. Mẫu thiết kế đặc biệt này dành riêng cho tay vợt Roger Federer', 35, 560000, '2023-08-20 20:09:33', '2023-08-20 20:09:33', 0),
(4, 1, 'Bộ Quần Áo Nam Tennis Lacoste SPORT Regular Fit Color-block', 'anh999.jpg', 'Nike', 'Bộ Quần Áo Nam Tennis Lacoste SPORT Regular Fit Color-block\r\n\r\n- Một thiết kế mới có chất lượng hoàn hảo, với chất liệu cao cấp cùng các công nghệ dệt hiện đại giúp sản phẩm nên mềm mại, nhẹ nhàng hơn, tạo cho người mang cảm giác êm ái và thoải mái - thoáng mát\r\n\r\n- Các mũi khâu, logo được thêu in tỉ mỉ, thủ công tạo nên sự hoàn hảo\r\n\r\n- Đặc biệt hơn là những sản phẩm của shop luôn lựa chọn các thiết kế mới nhất\r\n\r\n- hot trend và có thể được mặc với bất kỳ trang phục nào với thiết kế độc đáo để giúp nổi bật tổng thể trang phục của bạn. Cùng với chất lượng và độ bền cao, đây là lựa chọn sáng suốt của những quý ông năng động và lịch lãm.', 45, 560000, '2023-08-20 20:11:06', '2023-08-20 20:11:06', 0),
(5, 1, 'Bộ Quần Áo Thể Thao Nam Uniqlo Tennis Kei Nishikori', '0ede8ea8-8ff1-4446-b236-7bad85524e80-jpeg.jpeg', 'Nike', 'Bộ Quần Áo Thể Thao Nam Uniqlo Tennis Kei Nishikori\r\n\r\n- Uniqlo đã thực hiện với những thiết kế phối kết hợp màu hiện đại thời trang đặc trưng của của bộ muôn tennis đã tạo nên sự đặc biệt và nổi bật trong thế giới thời trang thể thao.\r\n- Chất liệu polyester dệt dạng thun lạnh đi kèm với nó là công nghệ Dry - Ex thấm hút mồ hôi bay hơi ẩm nhanh, làm khô siêu tốc giúp cơ thể luôn khô ráo thoáng mát. Mẫu thiết kế đặc biệt này dành riêng cho tay vợt Kei Nishikori', 24, 560000, '2023-08-20 20:12:38', '2023-08-20 20:12:38', 0),
(6, 1, 'Áo Khoác Gió Unisex Cho Nam Nữ Nike Sportswear Big Swoosh Woven Jacket AR3133-010', '15.jpg', 'Lacoste', 'Áo Khoác Gió Unisex Cho Nam Nữ Nike Sportswear Big Swoosh Woven Jacket AR3133-010\r\n\" Một thiết kế lấy cảm cổ điển Áo khoác và quần đước cắt ghép tạo nên sự nổi bật bởi \" Big Logo Nike\" phía trước và sau. Mang một luồng gió mới đến với hiện đại đã thu hút được sự yêu thích của những tín đồ thời trang và tạo nên một phong cách mới cho sự phát triển thời trang thể thao hiện nay đó là CLASSIC \"\r\n\r\n- Sản phẩm được thiết kế trên chất liệu dù Woven cao cấp chống tia UV, chống nắng, chống nước lên đến 70%.\r\n- Lót lưới cách nhiệt bên trong áo thoáng khí, thoải mái khi hoạt động và giữ nhiệt trong những chuyến đi xa.\r\n- Form Oversize rộng rãi , thoải mái xu hướng thời trang mới của giới trẻ.', 35, 450000, '2023-08-20 20:27:41', '2023-08-20 20:27:41', 0),
(7, 1, 'Bộ Quần Áo Thể Thao Mùa Đông Hoodie + Jogger Unisex Nam Nữ NK Air Jordan JumpMan Fleece', '13.jpg', 'Adidas', 'Bộ Quần Áo Thể Thao Mùa Đông Hoodie + Jogger Unisex Nam Nữ NK Air Jordan JumpMan Fleece\r\n\r\n- Một thiết kế mới có chất lượng hoàn hảo, với chất liệu cao cấp cùng các công nghệ dệt hiện đại giúp sản phẩm nên mềm mại, nhẹ nhàng hơn, tạo cho người mang cảm giác êm ái và thoải mái - thoáng mát\r\n\r\n- Các mũi khâu, logo được thêu in tỉ mỉ, thủ công tạo nên sự hoàn hảo - Đặc biệt hơn là những sản phẩm của shop luôn lựa chọn các thiết kế mới nhất - hot trend và có thể được mặc với bất kỳ trang phục nào với thiết kế độc đáo để giúp nổi bật tổng thể trang phục của bạn. Cùng với chất lượng và độ bền cao, đây là lựa chọn sáng suốt của những quý ông năng động và lịch lãm.', 12, 1300000, '2023-08-20 20:29:43', '2023-08-20 20:29:43', 0),
(8, 1, 'Bộ Quần Áo Thể Thao Uniqlo Tennis Roger Federer', '223.jpg', 'Uniqlo', 'Bộ Quần Áo Thể Thao Uniqlo Tennis Roger Federer\r\n\r\n- Uniqlo đã thực hiện với những thiết kế phối kết hợp màu hiện đại thời trang đặc trưng của của bộ muôn tennis đã tạo nên sự đặc biệt và nổi bật trong thế giới thời trang thể thao.\r\n- Chất liệu polyester dệt dạng thun lạnh đi kèm với nó là công nghệ Dry - Ex thấm hút mồ hôi bay hơi ẩm nhanh, làm khô siêu tốc giúp cơ thể luôn khô ráo thoáng mát. Mẫu thiết kế đặc biệt này dành riêng cho tay vợt Roger Federer.', 18, 560000, '2023-08-20 21:23:23', '2023-08-20 21:23:23', 0),
(9, 2, 'Áo Khoác Gió Unisex Nam Nữ Nike Sportswear Big Swoosh Woven Jacket Ar3133-658', '16.jpg', 'Adidas', 'Áo Khoác Gió Unisex Nam Nữ Nike Sportswear Big Swoosh Woven Jacket Ar3133-658\r\n        \" Một thiết kế lấy cảm cổ điển Áo khoác và quần đước cắt ghép tạo nên sự nổi bật bởi \" Big Logo Nike\" phía trước và sau. Mang một luồng gió mới đến với hiện đại đã thu hút được sự yêu thích của những tín đồ thời trang và tạo nên một phong cách mới cho sự phát triển thời trang thể thao hiện nay đó là CLASSIC \"\r\n- Sản phẩm được thiết kế trên chất liệu dù Woven cao cấp chống tia UV, chống nắng, chống nước lên đến 70%.  \r\n- Lót lưới cách nhiệt bên trong áo thoáng khí,  thoải mái khi hoạt động và giữ nhiệt trong những chuyến đi xa.\r\n- Form Oversize rộng rãi , thoải mái xu hướng thời trang mới của giới trẻ.', 29, 450000, '2023-08-20 21:25:01', '2023-08-20 21:30:00', 0),
(10, 1, 'Áo Khoác Gió Nike Windrunner Wild Run CK0683-424', '17.jpg', 'Adidas', 'Áo Khoác Gió Nike Windrunner Wild Run CK0683-424\r\n- Một thiết kế mới có chất lượng hoàn hảo, với chất liệu cao cấp cùng các công nghệ dệt hiện đại giúp sản phẩm nên mềm mại, nhẹ nhàng hơn, tạo cho người mang cảm giác êm ái và thoải mái - thoáng mát\r\n- Các mũi khâu, logo được thêu in tỉ mỉ, thủ công tạo nên sự hoàn hảo\r\n- Đặc biệt hơn là những sản phẩm của shop luôn lựa chọn các thiết kế mới nhất - hot trend và có thể được mặc với bất kỳ trang phục nào với thiết kế độc đáo để giúp nổi bật tổng thể trang phục của bạn. Cùng với chất lượng và độ bền cao, đây là lựa chọn sáng suốt của những quý ông năng động và lịch lãm.\r\n\r\n', 32, 550000, '2023-08-20 21:27:13', '2023-08-20 21:27:13', 0),
(11, 1, 'Áo Thun Cộc Tay Thể Thao Boxing Moay Thái Reebok UFC SHANGHAI', '22.jpg', 'Nike', 'Áo Thun Cộc Tay Thể Thao Boxing Moay Thái Reebok UFC SHANGHAI\r\n\r\n- Chiếc áo đến từ Brand Reebok UFC nổi tiếng với những tay đấm uy lực Reebok đã cho ra sản phẩm với logo uy mãnh của những chiến binh.\r\n- Được làm bằng chất liệu Polyeste dệt 4 chiều dày dặn cho một cảm giác mặc biền bỉ chắc chắn với logo in nhiệt sắc nét là một sản phẩm siêu chất lượng cao cho quý khách', 108, 180000, '2023-08-20 21:28:48', '2023-08-20 21:28:48', 0),
(12, 2, 'Áo Khoác Bomber Thời Trang Thể Thao Unisex Nam Nữ Adidas VRCT Jacket', '51.png', 'Adidas', 'Áo Khoác Bomber Thời Trang Thể Thao Unisex Nam Nữ Adidas VRCT Jacket\r\n\r\n- Thiết kế đặc biệt và nổi bật với bản kỉ niệm 70 năm. Áo khoác adidas VRCT tiếp tục truyền thống lâu đời của áo khoác letterman cổ điển. Một biểu tượng của thành tích và niềm tự hào - Mẫu áo khoác siêu hot của Adidas form hiện đại được mọi người ưa chuộng\r\n\r\n- Hàng “Cực Phẩm” Nam - Nữ đều mặc được', 23, 480000, '2023-08-25 15:19:17', '2023-08-25 15:20:15', 0),
(13, 1, 'Quần Dài Thể Thao Unisex Nam Nữ NK Sportswear Woven Pant Black - AR9895-010', '53.png', 'Nike', 'Quần Dài Thể Thao Unisex Nam Nữ NK Sportswear Woven Pant Black - AR9895-010\r\n\" Đi trên phiên bản Cập Nhật của mẫu cổ điển với áo jacket. Logo Swoosh cũng được phác hoạ trên mẫu quần này trong một thiết kế khối màu,  túi khoá an toàn tiện dụng, Chất liệu Polyester woven nhẹ cùng với lớp lưới bên trong giúp điều hoà nhiệt cho một cảm giác mặc thoải mái nhất khi mặc \"  ', 14, 380000, '2023-08-25 15:28:48', '2023-08-25 15:31:01', 0),
(14, 2, 'Bộ Quần Áo Thể Thao Unisex Nam Nữ Adidas SST Track - Màu Xanh Lá', '07f7598b626aaa1fed6cbcada5ea8451-1666063174671.jpg', 'Adidas', 'Bộ Quần Áo Thể Thao Unisex Nam Nữ Adidas SST Track Jacket - Màu Xanh Lá\r\n- Được thiết kế vào năm 1979 để đào tạo quần vợt. Nó nhanh chóng trở thành một phong cách đường phố adidas mang tính biểu tượng. Những trang phục mang những nét đặc trưng này đúng với thiết kế ban đầu.\r\n- Được làm bằng chất liệu mềm mại dày dặn nhờ sự pha trộn giữa 70% polyester và 30% cotton thể thao nguyên bản, mượt mà cả trong lẫn ngoài và hơi co giãn.', 24, 360000, '2023-08-25 20:23:36', '2023-08-25 20:23:36', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sizes`
--

CREATE TABLE `product_sizes` (
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sizes`
--

INSERT INTO `product_sizes` (`product_id`, `size_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(14, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name_size` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name_size`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone`, `address`, `avatar`, `password`, `role`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Nguyễn Hà My ', 'nhidangyeu@gmail.com', '0963666895', '12 Ngõ 143 Xuân Phương Nam Từ Liêm Hà Nội ', 'hinh-anh-gai-trung-quoc.jpg', '12345', 1, '2023-08-20 19:47:28', '2023-08-20 19:49:55', 0),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`product_id`,`size_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_sizes_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
