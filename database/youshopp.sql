-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 07:05 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youshopp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `photo`) VALUES
(1, 'THE COFFEE HOUSE', 0, '1642853903_collection_one_products_img.jpg'),
(2, 'Tearoma', 0, '1642853890_collection_one_products_img_2.jpg'),
(3, 'TSINGTAO ', 0, '1642853882_products_bia_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'Phùng Minh Nhật', 'phungnhat04112000@gmail.com', '202cb962ac59075b964b07152d234b70', '123', '12'),
(2, 'na', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70', '0375616596', '12'),
(3, 'na', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70', '0375616596', '12'),
(4, 'Phùng Minh Nhật', 'phungnhat112000@gmail.com', '202cb962ac59075b964b07152d234b70', '0375616596', '12'),
(5, 'na', 'nvaa@gmail.com', '202cb962ac59075b964b07152d234b70', '0375616596', '12'),
(6, 'ip5', 'phungnhat2222@gmail.com', '202cb962ac59075b964b07152d234b70', '035', 'a'),
(7, 'ip5', 'ip5@gmail.com', '202cb962ac59075b964b07152d234b70', '1', '1'),
(8, 'Phùng Nhật', 'phungnhat6666@gmail.com', '202cb962ac59075b964b07152d234b70', '0375616596', '12'),
(9, 'Phùng Nhật', 'phungnhat3333@gmail.com', '202cb962ac59075b964b07152d234b70', '0375616596', '12');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(1, 'Cách pha cà phê rang xay chuẩn Barista', '<p>Pha phin l&agrave; c&aacute;ch pha chế (chiết xuất) c&agrave; ph&ecirc; l&acirc;u đời v&agrave; độc đ&aacute;o của người Việt. Đ&aacute;y phin được thiết kế c&oacute; nhiều lỗ nhỏ li ti, chỉ vừa đủ cho d&ograve;ng nước c&agrave; ph&ecirc; nhỏ giọt đi qua. C&agrave; ph&ecirc; pha phin to&aacute;t ra vẹn tr&ograve;n tinh t&uacute;y của c&agrave; ph&ecirc;, vị đậm nồng n&agrave;n, hương thơm say m&ecirc;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/picture1_6824349847774dabb018b81afd870b8c_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step-by-Step c&aacute;ch pha c&agrave; ph&ecirc; phin tại The Coffee House:</strong></p>\r\n\r\n<h3><strong>Step 1 - Chuẩn bị dụng cụ</strong></h3>\r\n\r\n<p>Đun s&ocirc;i nước đủ d&ugrave;ng để pha c&agrave; ph&ecirc; cũng như tr&aacute;ng qua phin v&agrave; cốc đựng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/picture2_9de721694bca462eb727f2bd36ef13ee_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Step 2 - C&acirc;n v&agrave; xay hạt c&agrave; ph&ecirc;</strong></h3>\r\n\r\n<p>Hạt c&agrave; ph&ecirc; tại The Coffee House được phối trộn theo tỉ lệ ri&ecirc;ng hạt Robusta v&agrave; Arabica để ph&ugrave; hợp với khẩu vị của người Việt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/picture3_312a5fcf2f92404eb9b507c469400017_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Step 3 - Chuẩn bị pha chế</strong></h3>\r\n\r\n<p>Cho bột c&agrave; ph&ecirc; v&agrave;o trong phin đ&atilde; tr&aacute;ng qua nước n&oacute;ng.</p>\r\n\r\n<p>N&eacute;n bột c&agrave; ph&ecirc; trong phin với một lực vừa phải, kh&ocirc;ng qu&aacute; chặt, kh&ocirc;ng qu&aacute; lỏng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/picture4_6ee8dd5b8f504e359303393097ab7323_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Step 4 - Pha chế</strong></h3>\r\n\r\n<p>Để c&agrave; ph&ecirc; bloom (nở) trong nước n&oacute;ng trong khoảng 1 ph&uacute;t.</p>\r\n\r\n<p>Tiếp tục th&ecirc;m nước n&oacute;ng v&agrave;o phin v&agrave; đậy nắp.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/picture5_76b225e5e72d466a8af65c61cdce70e6_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Người ta c&oacute; thể đ&aacute;nh gi&aacute; độ &ldquo;ngon&rdquo; của một ly c&agrave; ph&ecirc; qua tốc độ nhễu dưới đ&aacute;y phin: từng nhịp v&agrave; chậm r&atilde;i.</p>\r\n', '', 0, '1640006671_new-cachpharangxaybarista.png'),
(2, 'Cà phê sữa đá The Coffee House', '<h1>C&agrave; ph&ecirc; sữa đ&aacute; The Coffee House</h1>\r\n\r\n<p><strong><a href=\"https://youshop.vn/products/ca-phe-sua-da-hoa-tan-25-goi-22gr\">ho&agrave; tan The Coffee House</a>&nbsp;- T&uacute;i 25&nbsp;g&oacute;i x 22 g&nbsp;</strong><em>(nhấn&nbsp;tại đ&acirc;y)</em></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/internal-post-02_4895bf7e845a492c8f89c2dd8b3878c2_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong><a href=\"https://youshop.vn/blogs/news/ca-phe-sua-da-lon-the-coffee-house\">C&agrave; ph&ecirc; sữa đ&aacute; lon The Coffee House</a>&nbsp;</strong><em>(nhấn tại đ&acirc;y)</em></h2>\r\n\r\n<p><img src=\"https://product.hstatic.net/200000338811/product/internal-post-13_b1198e7aad5646018e0fa086cc3bf3e9_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, '1640007486_cafethecoffe.png'),
(3, 'Cà phê rang xay Original 1 The Coffee House_MỚI', '<p>Khởi đầu buổi s&aacute;ng tại nh&agrave; bằng một ly c&agrave; ph&ecirc; pha phin đậm vị thơm ngon, do ch&iacute;nh tại bạn pha. Tại sao kh&ocirc;ng nhỉ? Chỉ cần 1 g&oacute;i&nbsp;<em><strong>c&agrave; ph&ecirc; rang xay Original 1 của The Coffee House</strong></em>, bạn sẽ tha hồ thưởng thức c&agrave; ph&ecirc; pha phin đ&uacute;ng gu đậm truyền thống của Việt Nam ngon như tại qu&aacute;n.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/1200x1200_fb_youshop-4_76beff5bc4314017b0dad423d2cd2417_grande.png\" /></p>\r\n\r\n<p>Để mang đến ly c&agrave; ph&ecirc; thơm ngon cho c&aacute;c kh&aacute;ch h&agrave;ng của m&igrave;nh, c&aacute;c chuy&ecirc;n gia của The Coffee House đ&atilde; tuyển chọn thật kỹ c&aacute;c hạt c&agrave; ph&ecirc; tại n&ocirc;ng trại Đắk Lắk &ndash; nơi c&oacute; thổ nhưỡng th&iacute;ch hợp nhất để trồng được c&aacute;c hạt c&agrave; ph&ecirc; Robusta chất lượng v&agrave; đậm hương vị. C&aacute;c hạt c&agrave; ph&ecirc; tới phải đạt độ ch&iacute;n nhất định v&agrave; được chọn lựa kh&aacute; đồng đều từ c&aacute;c rẫy c&agrave; ph&ecirc; tại n&ocirc;ng trại Đắk Lắk. Hơn thế nữa The Coffee House c&ograve;n s&aacute;ng tạo v&agrave; cải tiến trong việc nghi&ecirc;n cứu quy tr&igrave;nh rang xay đảm bảo nhiệt độ rang ph&ugrave; hợp nhất, c&aacute;c hạt c&agrave; ph&ecirc; được trộn đều li&ecirc;n tục để nhiệt độ lan toả đều cho từng hạt trong c&ugrave;ng mẻ rang, điều n&agrave;y gi&uacute;p hạt c&agrave; ph&ecirc; được thơm dậy m&ugrave;i nhất m&agrave; kh&ocirc;ng g&acirc;y đắng kh&eacute;t.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_4716_copy_0d4f232b75bb4882bd02c0121c57f566_grande.jpg\" /></p>\r\n\r\n<p>Ngo&agrave;i việc đề cao chất lượng l&ecirc;n h&agrave;ng đầu, sản phẩm c&agrave; ph&ecirc; rang xay Original 1 c&ograve;n đem được ch&uacute; trọng để mang lại trải nghiệm c&agrave; ph&ecirc; kh&oacute; phai đ&oacute; l&agrave; hương vị đậm đ&agrave; của c&agrave; ph&ecirc; Việt Nam thuần tu&yacute;. Ch&uacute;ng t&ocirc;i cho rằng &ldquo;Pha chế c&agrave; ph&ecirc; l&agrave; một nghệ thuật m&agrave; Barista l&agrave; một nghệ sỹ&rdquo;, n&ecirc;n khi cầm g&oacute;i c&agrave; ph&ecirc; Original 1 của The Coffee House, bạn sẽ trở th&agrave;nh nghệ sỹ của ch&iacute;nh m&igrave;nh. C&ograve;n chần chờ g&igrave; m&agrave; kh&ocirc;ng thử ng&agrave;y hương vị mới của c&agrave; ph&ecirc; rang xay Original 1!</p>\r\n', '', 0, '1640007614_ca_phe_original_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `price`, `product_id`, `quantity`) VALUES
(3, 3, 1152000, 9, 8),
(4, 3, 48000, 8, 6),
(5, 3, 48000, 7, 1),
(6, 4, 95000, 15, 1),
(7, 4, 48000, 8, 1),
(8, 5, 1152000, 9, 2),
(9, 6, 336000, 14, 1),
(10, 7, 48000, 8, 2),
(11, 8, 336000, 14, 3),
(12, 9, 48000, 7, 3),
(13, 9, 48000, 8, 1),
(14, 10, 65000, 18, 1),
(15, 11, 180000, 20, 1),
(16, 12, 60000, 10, 1),
(17, 13, 95000, 15, 1),
(18, 14, 180000, 20, 1),
(19, 15, 1152000, 9, 1),
(20, 16, 65000, 18, 1),
(21, 17, 180000, 20, 1),
(22, 17, 95000, 15, 1),
(23, 18, 235000, 21, 1),
(24, 19, 95000, 15, 1),
(25, 20, 180000, 20, 1),
(26, 21, 169000, 16, 1),
(27, 22, 1152000, 9, 1),
(28, 23, 60000, 10, 1),
(29, 24, 1152000, 9, 1),
(30, 26, 95000, 15, 1),
(31, 27, 1152000, 9, 1),
(32, 28, 180000, 20, 1),
(33, 28, 95000, 15, 1),
(34, 29, 95000, 15, 1),
(35, 30, 1152000, 9, 1),
(36, 30, 95000, 15, 2),
(37, 31, 1152000, 9, 1),
(38, 32, 95000, 15, 1),
(39, 33, 180000, 20, 1),
(40, 34, 60000, 10, 1),
(41, 35, 180000, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL,
  `Times` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`, `Times`) VALUES
(14, 2, '2022-01-21', 180000, 0, '2022-01-21 12:41:37'),
(15, 2, '2022-01-21', 1094400, 0, '2022-01-21 12:44:07'),
(16, 6, '2022-01-25', 61750, 0, '2022-01-25 08:07:59'),
(17, 2, '2022-01-25', 270250, 0, '2022-01-25 08:15:45'),
(18, 6, '2022-01-25', 199750, 0, '2022-01-25 08:16:12'),
(19, 6, '2022-01-25', 90250, 0, '2022-01-25 08:29:40'),
(20, 6, '2022-01-25', 180000, 0, '2022-01-25 08:30:09'),
(21, 6, '2022-01-25', 160550, 0, '2022-01-25 08:31:30'),
(22, 6, '2022-01-25', 1094400, 0, '2022-01-25 08:32:04'),
(23, 6, '2022-01-25', 57000, 0, '2022-01-25 08:33:29'),
(24, 6, '2022-01-25', 1094400, 0, '2022-01-25 08:41:00'),
(25, 6, '2022-01-25', 0, 0, '2022-01-25 08:41:27'),
(26, 7, '2022-01-25', 90250, 0, '2022-01-25 11:11:31'),
(27, 7, '2022-01-25', 1094400, 0, '2022-01-25 11:11:45'),
(28, 6, '2022-01-25', 270250, 0, '2022-01-25 11:12:11'),
(29, 8, '2022-01-25', 90250, 0, '2022-01-25 11:13:05'),
(30, 8, '2022-01-25', 1274900, 1, '2022-01-25 12:00:38'),
(31, 8, '2022-01-25', 1094400, 0, '2022-01-25 11:34:23'),
(32, 8, '2022-01-25', 90250, 0, '2022-01-25 11:34:35'),
(33, 8, '2022-01-25', 180000, 0, '2022-01-25 11:36:35'),
(34, 8, '2022-01-25', 57000, 0, '2022-01-25 11:50:33'),
(35, 9, '2022-01-25', 360000, 1, '2022-01-25 12:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `hot` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(6, 'Cà Phê Sữa Đá Hòa Tan - Set 3 hộp', '<p>C&agrave; ph&ecirc; sữa đ&aacute; ho&agrave; tan The Coffee House l&agrave; sản phẩm c&agrave; ph&ecirc; uống liền thơm ngon như c&agrave; ph&ecirc; pha phin, ho&agrave; quyện với vị ngọt b&eacute;o của sữa quen thuộc, gi&uacute;p bạn th&ecirc;m tỉnh t&aacute;o v&agrave; hứng khởi cho một ng&agrave;y l&agrave;m việc thật hiệu quả.</p>\r\n', '<p>C&agrave; ph&ecirc; sữa đ&aacute; ho&agrave; tan The Coffee House l&agrave; sản phẩm c&agrave; ph&ecirc; uống liền thơm ngon như c&agrave; ph&ecirc; pha phin, ho&agrave; quyện với vị ngọt b&eacute;o của sữa quen thuộc, gi&uacute;p bạn th&ecirc;m tỉnh t&aacute;o v&agrave; hứng khởi cho một ng&agrave;y l&agrave;m việc thật hiệu quả. C&agrave; ph&ecirc; ho&agrave; tan thơm ngon đậm vị c&agrave; ph&ecirc; uống tại nh&agrave; ngon như tại qu&aacute;n, th&iacute;ch hợp uống n&oacute;ng v&agrave; lạnh. C&agrave; ph&ecirc; The Coffee House rất tiện lợi kh&ocirc;ng chỉ sử dụng trong gia đ&igrave;nh, văn ph&ograve;ng m&agrave; c&ograve;n c&oacute; thể l&agrave;m qu&agrave; tặng cho gia đ&igrave;nh, người th&acirc;n, bạn b&egrave;.</p>\r\n', 1, '1640505289_caphe-set3hop2.jpg', 132000, 5, 1),
(7, 'Cà phê 3IN1 Đậm vị Việt - The Coffee House (18 gói x 16 g)', '<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n', '<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_2803_5fd96146c430490c95eda6ae5e87767c_1024x1024.jpg\" /></p>\r\n\r\n<p>Cafe mang về tiện lợi, ph&ugrave; hợp sử dụng tại nh&agrave;, văn ph&ograve;ng hay đi du lịch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3429_a03d08d1f7e145a698035688102b3870_1024x1024.jpg\" /></p>\r\n\r\n<p>M&oacute;n qu&agrave; &yacute; nghĩa cho người th&acirc;n, bạn b&egrave; trong c&aacute;c dịp lễ trong năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3559_a3cf839ddf284be6b28f0996c1c2023e_1024x1024.jpg\" /></p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_2803_5fd96146c430490c95eda6ae5e87767c_1024x1024.jpg\" /></p>\r\n\r\n<p>Cafe mang về tiện lợi, ph&ugrave; hợp sử dụng tại nh&agrave;, văn ph&ograve;ng hay đi du lịch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3429_a03d08d1f7e145a698035688102b3870_1024x1024.jpg\" /></p>\r\n\r\n<p>M&oacute;n qu&agrave; &yacute; nghĩa cho người th&acirc;n, bạn b&egrave; trong c&aacute;c dịp lễ trong năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3559_a3cf839ddf284be6b28f0996c1c2023e_1024x1024.jpg\" /></p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_2803_5fd96146c430490c95eda6ae5e87767c_1024x1024.jpg\" /></p>\r\n\r\n<p>Cafe mang về tiện lợi, ph&ugrave; hợp sử dụng tại nh&agrave;, văn ph&ograve;ng hay đi du lịch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3429_a03d08d1f7e145a698035688102b3870_1024x1024.jpg\" /></p>\r\n\r\n<p>M&oacute;n qu&agrave; &yacute; nghĩa cho người th&acirc;n, bạn b&egrave; trong c&aacute;c dịp lễ trong năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3559_a3cf839ddf284be6b28f0996c1c2023e_1024x1024.jpg\" /></p>\r\n', 1, '1640179589_cafe1.png', 48000, 5, 1),
(8, 'Cà phê 3IN1 Đậm vị Việt - The Coffee House (18 gói x 16 g)', '<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n', '<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_2803_5fd96146c430490c95eda6ae5e87767c_1024x1024.jpg\" /></p>\r\n\r\n<p>Cafe mang về tiện lợi, ph&ugrave; hợp sử dụng tại nh&agrave;, văn ph&ograve;ng hay đi du lịch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3429_a03d08d1f7e145a698035688102b3870_1024x1024.jpg\" /></p>\r\n\r\n<p>M&oacute;n qu&agrave; &yacute; nghĩa cho người th&acirc;n, bạn b&egrave; trong c&aacute;c dịp lễ trong năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3559_a3cf839ddf284be6b28f0996c1c2023e_1024x1024.jpg\" /></p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_2803_5fd96146c430490c95eda6ae5e87767c_1024x1024.jpg\" /></p>\r\n\r\n<p>Cafe mang về tiện lợi, ph&ugrave; hợp sử dụng tại nh&agrave;, văn ph&ograve;ng hay đi du lịch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3429_a03d08d1f7e145a698035688102b3870_1024x1024.jpg\" /></p>\r\n\r\n<p>M&oacute;n qu&agrave; &yacute; nghĩa cho người th&acirc;n, bạn b&egrave; trong c&aacute;c dịp lễ trong năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3559_a3cf839ddf284be6b28f0996c1c2023e_1024x1024.jpg\" /></p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_2803_5fd96146c430490c95eda6ae5e87767c_1024x1024.jpg\" /></p>\r\n\r\n<p>Cafe mang về tiện lợi, ph&ugrave; hợp sử dụng tại nh&agrave;, văn ph&ograve;ng hay đi du lịch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3429_a03d08d1f7e145a698035688102b3870_1024x1024.jpg\" /></p>\r\n\r\n<p>M&oacute;n qu&agrave; &yacute; nghĩa cho người th&acirc;n, bạn b&egrave; trong c&aacute;c dịp lễ trong năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3559_a3cf839ddf284be6b28f0996c1c2023e_1024x1024.jpg\" /></p>\r\n', 1, '1640179756_cafehop3n1.png', 48000, 5, 1),
(9, 'Cà phê 3IN1 Đậm vị Việt - Thùng 24 hộp', '<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n', '<p>C&aacute;c chuy&ecirc;n gia The Coffee House tự h&agrave;o mang đến sản phẩm c&agrave; ph&ecirc; 3in1 với vị đậm đ&agrave;, hương thơm đặc trưng của ly c&agrave; ph&ecirc; sữa truyền thống. H&atilde;y khởi đầu ng&agrave;y mới thật nhiều hứng khởi c&ugrave;ng c&agrave; ph&ecirc; 3in1 đậm vị Việt của The Coffee House bạn nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_2803_5fd96146c430490c95eda6ae5e87767c_1024x1024.jpg\" /></p>\r\n\r\n<p>Cafe mang về tiện lợi, ph&ugrave; hợp sử dụng tại nh&agrave;, văn ph&ograve;ng hay đi du lịch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3429_a03d08d1f7e145a698035688102b3870_1024x1024.jpg\" /></p>\r\n\r\n<p>M&oacute;n qu&agrave; &yacute; nghĩa cho người th&acirc;n, bạn b&egrave; trong c&aacute;c dịp lễ trong năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_3559_a3cf839ddf284be6b28f0996c1c2023e_1024x1024.jpg\" /></p>\r\n', 1, '1640505358_cafe3IN1-24hop.png', 1152000, 5, 1),
(10, 'Cà phê rang xay Original 1 - The Coffee House (250g/Gói) - Pha phin', '<p>Khởi đầu buổi s&aacute;ng tại nh&agrave; bằng một ly c&agrave; ph&ecirc; pha phin đậm vị thơm ngon, do ch&iacute;nh tại bạn pha. Tại sao kh&ocirc;ng nhỉ? Chỉ cần 1 g&oacute;i c&agrave; ph&ecirc; rang xay Original 1 của The Coffee House, bạn sẽ tha hồ thưởng thức c&agrave; ph&ecirc; pha phin đ&uacute;ng gu đậm truyền thống của Việt Nam&nbsp;</p>\r\n', '', 1, '1640061573_capherangxayOrigin.png', 60000, 5, 1),
(11, 'Combo 2 gói - Cà Phê Rang Xay Peak Flavor', '', '<p>&nbsp; Trọng lượng: G&oacute;i 350g</p>\r\n\r\n<p>Với phương thức rang nhiệt độ v&agrave;ng, c&aacute;c chuy&ecirc;n gia c&agrave; ph&ecirc; của The Coffee House đ&atilde; lưu giữ gần như trọn vẹn hương thơm tinh tế, đặc trưng của c&agrave; ph&ecirc; Robusta của v&ugrave;ng Đăk N&ocirc;ng v&agrave; Arabica của v&ugrave;ng Cầu Đất, hai v&ugrave;ng trồng c&agrave; ph&ecirc; ngon nổi tiếng. R&oacute;t nhẹ nước s&ocirc;i v&agrave;o phin, hương thơm c&agrave; ph&ecirc; nhiều cung bậc lập t&uacute;c lan tỏa l&agrave;m căn ph&ograve;ng như bừng s&aacute;ng v&agrave; gi&uacute;p bạn tăng đầy cảm hứng.</p>\r\n', 1, '1640061871_cb2goi.jpg', 180000, 5, 1),
(12, 'Thùng 20 Hộp trà 4 vị - Oolong - Đào - Sen - Lài', '<p>Sản phẩm<strong>&nbsp;Re-Order</strong>, sẽ được giao cho kh&aacute;ch h&agrave;ng sau ng&agrave;y&nbsp;<strong>06/12,&nbsp;</strong>thời gian giao h&agrave;ng dự kiến từ 3-7 ng&agrave;y, mọi thắc mắc qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ hotline 1900 3454 để được hỗ trợ</p>\r\n', '<ul>\r\n	<li>Thương hiệu: Tearoma&nbsp;</li>\r\n	<li>Xuất xứ thương hiệu: Việt Nam</li>\r\n	<li>K&iacute;ch thước: Hộp qu&agrave; 20 x 21 x 9 (cm)&nbsp;</li>\r\n	<li>Trọng lượng: 160gr&nbsp;</li>\r\n	<li>Quy c&aacute;ch đ&oacute;ng g&oacute;i: Hộp giấy in m&agrave;u sang trọng&nbsp;</li>\r\n	<li>Hạn sử dụng: 24 th&aacute;ng kể từ ng&agrave;y sản xuất&nbsp;</li>\r\n	<li>Hướng dẫn bảo quản: Bảo quản sản phẩm nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bộ tr&agrave; t&uacute;i lọc Tearoma với 4 hương vị thơm ngon:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>- Hương Đ&agrave;o thơm ngọt&nbsp;</li>\r\n	<li>- Hương L&agrave;i thơm nồng n&agrave;n&nbsp;</li>\r\n	<li>- Hương Sen thơm thanh tao&nbsp;</li>\r\n	<li>- Tr&agrave; Oolong thơm đậm đ&agrave;&nbsp;</li>\r\n</ul>\r\n\r\n<p>Ngo&agrave;i 4 vị tr&agrave; thơm tinh tế, set tr&agrave; t&uacute;i lọc Tearoma c&ograve;n c&oacute; diện mạo tươi vui m&agrave;u sắc bắt mắt th&iacute;ch hợp để tự thưởng cho bản th&acirc;n v&agrave; l&agrave;m qu&agrave; tặng cho những người th&acirc;n y&ecirc;u nhất của bạn, chắc chắn kh&ocirc;ng thể bỏ qua set qu&agrave; tặng đ&aacute;ng y&ecirc;u n&agrave;y c&aacute;c bạn nh&eacute;.</p>\r\n', 0, '1640062243_thung20hoptra4vi.png', 3211000, 5, 2),
(13, 'Bia Tsingtao 1903 - Thùng 12 Lon', '<p>Hơn 100 năm c&ocirc;ng nghệ sản xuất Bia phong c&aacute;ch Đức. Nguy&ecirc;n liệu ch&acirc;u &Acirc;u v&agrave; &Uacute;c, được&nbsp;chưng cất từ&nbsp;nước tinh khiết m&ugrave;a xu&acirc;n Lao Sơn Tuyền c&ugrave;ng với hoa bia cao cấp thượng hạng để&nbsp;tạo ra sản phẩm Bia Tsingtao tuyệt hảo nhất.️&nbsp;</p>\r\n', '<h5>Thương hiệu Bia Tsingtao v&agrave; đồ uống Tsingtao được ưa chuộng tr&ecirc;n to&agrave;n thế giới, hiện diện tr&ecirc;n 100 quốc gia v&agrave; v&ugrave;ng l&atilde;nh thổ. Tsingtao Việt Nam ch&iacute;nh thức được th&agrave;nh lập v&agrave;o th&aacute;ng 07 năm 2020.</h5>\r\n\r\n<h5>Hơn 100 năm c&ocirc;ng nghệ sản xuất Bia phong c&aacute;ch Đức. Nguy&ecirc;n liệu ch&acirc;u &Acirc;u v&agrave; &Uacute;c, được&nbsp;chưng cất từ&nbsp;nước tinh khiết m&ugrave;a xu&acirc;n Lao Sơn Tuyền c&ugrave;ng với hoa bia cao cấp thượng hạng để&nbsp;tạo ra sản phẩm Bia Tsingtao tuyệt hảo nhất.️&nbsp;</h5>\r\n\r\n<h1><strong>TSINGTAO 1903 BEER</strong></h1>\r\n\r\n<h5><em>- Th&agrave;nh phần: đại mạch, ngũ cốc, hoa bia</em></h5>\r\n\r\n<h5><em>- Nồng độ cồn: 5,0%</em></h5>\r\n\r\n<h5><em>- Thể t&iacute;ch: 500ml/lon x 12&nbsp;lon/th&ugrave;ng</em></h5>\r\n\r\n<h5><em>- Hạn sử dụng: 12 th&aacute;ng kể từ ng&agrave;y sản xuất</em></h5>\r\n\r\n<h5><em>- Nhập khẩu ch&iacute;nh h&atilde;ng 100%</em></h5>\r\n\r\n<h5>Th&iacute;ch hợp sử dụng như loại bia giải kh&aacute;t v&agrave; ăn k&egrave;m với hầu như mọi loại thức ăn, đặc biệt l&agrave; c&aacute;c đồ ăn mang phong c&aacute;ch ch&acirc;u &Aacute;.</h5>\r\n\r\n<h5>Người dưới 18 tuổi kh&ocirc;ng được sử dụng rượu bia, chất uống c&oacute; cồn.&nbsp;Kh&ocirc;ng được l&aacute;i xe sau khi sử dụng bia rượu.</h5>\r\n', 0, '1640064240_internal_bia_12lon.png', 564000, 5, 3),
(14, 'Cà Phê Sữa Đá 180ml - Thùng 24 lon', '<p>C&agrave; ph&ecirc; sữa đ&aacute; ho&agrave; tan The Coffee House l&agrave; sản phẩm c&agrave; ph&ecirc; uống liền thơm ngon như c&agrave; ph&ecirc; pha phin, ho&agrave; quyện với vị ngọt b&eacute;o của sữa quen thuộc, gi&uacute;p bạn th&ecirc;m tỉnh t&aacute;o v&agrave; hứng khởi cho một ng&agrave;y l&agrave;m việc thật hiệu quả.&nbsp;</p>\r\n', '<p><img src=\"https://file.hstatic.net/200000338811/file/img_8739_ee97ca34df564f968f22124a407e9f9a_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&agrave; ph&ecirc; sữa đ&aacute; lon The Coffee House l&agrave; sản phẩm c&agrave; ph&ecirc; uống liền h&agrave;i ho&agrave; vị c&agrave; ph&ecirc; v&agrave; sữa tạo n&ecirc;n hương vị thơm ngon đ&uacute;ng gu cho giới trẻ. C&agrave; ph&ecirc; THE COFFEE HOUSE với thiết kế mang phong c&aacute;ch trẻ trung, năng động được giới trẻ y&ecirc;u th&iacute;ch. C&agrave; ph&ecirc; sữa đ&aacute; lon phục vụ cho nhu cầu uống liền, ướp lạnh kh&ocirc;ng cần đ&aacute;, kh&ocirc;ng cần mất thời gian pha chế m&agrave; vẫn đảm bảo thưởng thức được c&agrave; ph&ecirc; sữa đ&aacute; thơm ngon, ph&ugrave; hợp với giới trẻ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/img_8864_cf1d052d35a7407c9c7e4bb2d2ec65b7_grande.jpg\" /></p>\r\n', 1, '1640183061_cafe24thung.png', 336000, 5, 1),
(15, 'Cà Phê Rang Xay - Rich Finish', '', '', 1, '1640417479_caferich.png', 95000, 5, 1),
(16, 'Hộp trà 4 vị - Oolong - Đào - Sen - Lài', '', '', 0, '1640418033_bophienbangioihan.png', 169000, 5, 2),
(17, 'Tearoma Trà Oolong', '', '', 1, '1640418240_traollong1.png', 85000, 5, 2),
(18, 'Tearoma hương sen', '', '', 1, '1640418606_tràhươngsen.png', 65000, 5, 2),
(19, 'Tearoma Trà Lài', '', '', 1, '1640418700_Tràhươnglài.png', 65000, 5, 2),
(20, 'Combo Cà Phê Peak Flavor & Rich Finish', '', '<p>&nbsp; Trọng lượng: G&oacute;i 350g</p>\r\n\r\n<p>&nbsp; Với phương thức rang nhiệt độ v&agrave;ng, c&aacute;c chuy&ecirc;n gia c&agrave; ph&ecirc; của The Coffee House đ&atilde; lưu giữ gần như trọn vẹn hương thơm tinh tế, đặc trưng của c&agrave; ph&ecirc; Robusta của v&ugrave;ng Đăk N&ocirc;ng v&agrave; Arabica của v&ugrave;ng Cầu Đất, hai v&ugrave;ng trồng c&agrave; ph&ecirc; ngon nổi tiếng. R&oacute;t nhẹ nước s&ocirc;i v&agrave;o phin, hương thơm c&agrave; ph&ecirc; nhiều cung bậc lập t&uacute;c lan tỏa l&agrave;m căn ph&ograve;ng như bừng s&aacute;ng v&agrave; gi&uacute;p bạn tăng đầy cảm hứng.</p>\r\n', 1, '1640423794_Combo Cà Phê Peak Flavor & Rich Finish.jpg', 180000, 0, 1),
(21, 'Cà phê rang xay Original 1 - The Coffee House (1kg/Gói) - Pha phin', '<p>The Coffee House ra mắt c&agrave; ph&ecirc; rang xay Original No.1 với 100% hạt Robusta nguy&ecirc;n chất từ cao nguy&ecirc;n Đắk Lắk, mang đến cho bạn ly c&agrave; ph&ecirc; pha phin đ&uacute;ng gu đậm truyền thống của Việt Nam.</p>\r\n', '<p>The Coffee House ra mắt c&agrave; ph&ecirc; rang xay Original No.1 với 100% hạt Robusta nguy&ecirc;n chất từ cao nguy&ecirc;n Đắk Lắk, mang đến cho bạn ly c&agrave; ph&ecirc; pha phin đ&uacute;ng gu đậm truyền thống của Việt Nam.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/internal-post-2-08_f566cf72cd594d9abd9e2349495b988c_1024x1024.png\" /></p>\r\n\r\n<p>Kh&ocirc;ng những thế, với mong muốn mang đến cho kh&aacute;ch h&agrave;ng tr&atilde;i nghiệm ho&agrave;n hảo &ldquo;Đậm đ&agrave; từ nh&agrave; ra qu&aacute;n&rdquo;, The Coffee House đ&atilde; mang c&ocirc;ng thức c&agrave; ph&ecirc; pha tại qu&aacute;n - C&agrave; ph&ecirc; rang xay Original 1 để bạn lu&ocirc;n cảm nhận được sự quen thuộc khi sử dụng tại nh&agrave;.&nbsp;<br />\r\nThiết kế t&uacute;i c&agrave; ph&ecirc; pha phin c&oacute; th&ecirc;m zip giups bạn bảo quản ﻿dễ d&agrave;ng v&agrave; v&ocirc; c&ugrave;ng tiện lợi.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/internal-post-2-06_c60be0ae3cd34f8288f055a74c5a0651_1024x1024.png\" /></p>\r\n\r\n<p><br />\r\nVới 100% c&agrave; ph&ecirc; mộc sạch nguy&ecirc;n chất, c&agrave; ph&ecirc; pha phin Original 1 kh&ocirc;ng những mang đến hương vị c&agrave; ph&ecirc; đậm đ&agrave; m&agrave; c&ograve;n l&agrave; hương vị nguy&ecirc;n bản của c&agrave; ph&ecirc; &ndash; Những hạt c&agrave; ph&ecirc; Robusta được chọn lọc thủ c&ocirc;ng từ những hạt c&agrave; ph&ecirc; ch&iacute;n mọng tại c&aacute;c rẫy c&agrave; ph&ecirc;, n&ocirc;ng trại Đắk Lắk</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000338811/file/internal-post-2-07_fcb7e40adb2949bf83c64d4fbdad883e_1024x1024.png\" /></p>\r\n\r\n<p><br />\r\nKhởi đầu buổi s&aacute;ng tại nh&agrave; bằng một ly c&agrave; ph&ecirc; pha phin mộc sạch, do ch&iacute;nh tại bạn pha, tại sao kh&ocirc;ng nhỉ? Chỉ cần 1 g&oacute;i c&agrave; ph&ecirc; rang xay Original No.1 của The Coffee House, bạn sẽ tha hồ thưởng thức c&agrave; ph&ecirc; pha phin đ&uacute;ng gu đậm truyền thống tại nh&agrave; ngon như tại qu&aacute;n. &quot;</p>\r\n', 1, '1643114232_cafe1-details.png', 235000, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(1, 10, 5),
(2, 14, 4),
(3, 7, 5),
(4, 15, 5),
(5, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Phùng Minh Nhật', 'phungnhat04112000@gmail.com', 'e8491b850d76448d7f9f7586ee67eedf'),
(2, 'nva', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'nvaa', 'nvb@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(10, 'ip5', 'ip5@gmail.com', '202cb962ac59075b964b07152d234b70'),
(11, 'na', 'nvaa@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
