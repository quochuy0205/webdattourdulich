-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 04:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dungcuthethao`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `mactdh` int(10) NOT NULL,
  `oder_code` varchar(100) NOT NULL,
  `MACHUYENDI` int(10) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`mactdh`, `oder_code`, `MACHUYENDI`, `soluongmua`) VALUES
(14, '3619', 97, 1),
(15, '3619', 83, 1),
(16, '9366', 97, 1),
(17, '9366', 83, 1),
(18, '5262', 96, 1),
(19, '5614', 96, 1),
(20, '2685', 96, 2),
(21, '2234', 81, 1),
(22, '3568', 96, 1),
(23, '3568', 81, 1),
(24, '5527', 96, 1),
(25, '5563', 96, 1),
(26, '9253', 81, 1),
(27, '5146', 97, 1),
(28, '5146', 115, 3),
(29, '1198', 97, 1),
(30, '6375', 96, 3),
(31, '6375', 97, 1),
(32, '6375', 81, 1),
(33, '6468', 80, 1),
(34, '3170', 122, 2),
(35, '9273', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `sohd` int(10) NOT NULL,
  `masp` int(10) NOT NULL,
  `mahd` int(10) NOT NULL,
  `soluong` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chuyendi`
--

CREATE TABLE `chuyendi` (
  `MACHUYENDI` int(255) NOT NULL,
  `TENCHUYENDI` varchar(255) NOT NULL,
  `GIA` float DEFAULT NULL,
  `MOTACHUYENDI` text NOT NULL,
  `HINHANH` varchar(255) NOT NULL,
  `MALOAICHUYENDI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chuyendi`
--

INSERT INTO `chuyendi` (`MACHUYENDI`, `TENCHUYENDI`, `GIA`, `MOTACHUYENDI`, `HINHANH`, `MALOAICHUYENDI`) VALUES
(2, 'Tour Cao Cấp Đà Nẵng 3N2D: HCM - Bảo Tàng Chăm - Hội An - Bà Nà', 5390000, 'Đà Nẵng - Vùng Đất Miền Trung Đáng Sống\r\nĐà Nẵng luôn thu hút du khách với bề dày lịch sử, văn hóa, ẩm thực đặc sắc, những bãi biển tuyệt đẹp và phong cảnh thiên nhiên hữu tình. Đây là quê hương của các di sản văn hóa, lịch sử thế giới được UNESCO công nhận như phố cổ Hội An, bài Chòi...Bên cạnh đó là những khách sạn, resorts đẳng cấp quốc tế nằm dọc bờ biển dài tuyệt đẹp cùng với các khu phức hợp giải trí nổi tiếng thế giới như Bà Nà Hills, cây cầu Vàng. Có thể cảm nhận vùng đất này như một bản giao hưởng tuyệt vời của một nền văn hóa, lịch sử giàu bản sắc hòa cùng thiên nhiên tươi đẹp và sự phát triển mạnh mẽ hướng đến tương lai.\r\nNhững trải nghiệm thú vị trong chương trình\r\nĐà Nẵng nổi bật lên giữa miền Trung bởi...\r\n- Ngũ Hành Sơn hay núi Non Nước là một thắng cảnh nổi tiếng, trong ký ức của nhiều người đây còn là vùng “địa linh” của xứ Quảng xưa nay.\r\n- Phố cổ Hội An như một bức tranh mộc mạc, giản dị và nên thơ, từng là một thương cảng quốc tế sầm uất, đã được UNESCO công nhận là di sản văn hóa thế giới năm 1999.\r\n- Bà Nà Núi Chúa: khu nghỉ dưỡng trên đỉnh núi xinh đẹp như bao trọn toàn bộ các dịch vụ vui chơi, giải trí cả nước nơi đây.', '4255_11d-130_Copy.jpg', 1),
(3, 'Tour Miền Bắc 5N4Đ: HCM - Hà Nội - Hạ Long - Ninh Bình - Sa Pa', 15180000, 'Hành Trình Liên Tuyến Khám Phá Xứ Bắc\r\nTừ thủ đô Hà Nội, ngàn năm văn hiến, nơi lưu giữ hồn cốt dân tộc với trường đại học đầu tiên của Việt Nam. Quảng trường Ba Đình với Lăng Bác, nhà sàn, ao cá, nơi an nghỉ vĩnh hằng của Hồ Chủ Tịch. Bồng bềnh khám phá Vịnh Hạ Long – kỳ quan thiên nhiên thế giới với ngàn đảo đá lô nhô giữa biển, như bức tường thành chắn gió, chắn bão cho bà con ngư dân. Bỗng bắt gặp những cánh cò, cánh le le chấp chới mặt nước mò tôm cá của vùng đất Ninh Bình.Một chiếc thuyền nhỏ lướt sóng, tiếng mái chèo khua nhẹ, đột ngột rẽ vào một hang động xuyên thuỷ, cảm giác mát lạnh như chiếc điều hoà khổng lồ phả vào người giữa ngày hè oi nóng.Ngược đường đèo dốc, quanh co trong mây vờn, núi biếc, những thửa ruộng bậc thang, tiếc suối tiếc thác…như làm cho Sapa mờ ảo trong sương. Tất cả như một bức tranh thuỷ mặc, đầy màu sắc, muôn hình muôn vẻ về một miền Bắc giàu vẻ đẹp tự nhiên, nụ cười mến khách.\r\n', 'tu-hao-vinh-ha-long-noi-rong-dap-xuong-tren-dat-viet-1641541693.jpg', 2),
(4, 'Tour Cao Cấp Miền Trung 4N3D: Quy Nhơn - Phú Yên Kỳ Thú', 7000000, '05h40: HDV đón đoàn tại sân bay Tân Sơn Nhất, làm các thủ tục cho đoàn đáp chuyến bay của Vietnam Airline/Bamboo (Sài Gòn – Quy Nhơn) Lúc 7h40.\r\n09h00: HDV đón Quý khách tại sân bay Phù Cát, đưa đoàn về tham quan:\r\n- Chùa Thiên Hưng – ngôi chùa nổi tiếng và có quy mô rộng lớn nhất tại Bình Định. Quý khách dâng hương, chiêm bái tại chùa.\r\n- Thăm quan Tây Sơn, đến làng Kiên Mỹ (Tây Sơn) – quê hương của 3 anh hùng áo vải cờ đào Nguyễn Nhạc, Nguyễn Huệ, Nguyễn Lữ.\r\nĐến nơi đây quý khách bồi hồi như sống lại với khí phách hào hùng của lịch sử cách đây hơn 200 năm của chiến thắng « Ngọc Hồi – Đống Đa » lừng lẫy. Đoàn tham quan các di tích còn xót lại như: cây Me, giếng nước, bến Trầu, tham gia chương trình lễ hội đặc sắc « lễ hội Đống Đa » với phần nghi lễ trang trọng và phần hội là những trò chơi dân gian mang đậm bản sắc miền đất võ như: đấu cờ người, chọi gà, trống trận và võ thuật cổ truyền Bình Định.\r\n11h30: Quý khách dùng bữa trưa tại nhà hàng. Đoàn về nhận phòng khách sạn nghỉ ngơi.\r\n14h00: Xe và hướng dẫn viên đưa đoàn đi tham quan\r\n- Tháp Đôi – Ngôi tháp Chăm cổ có từ thế kỷ XII trong lòng thành phố.\r\n- Cầu Thị Nại – cầu vượt biển dài nhất Việt Nam nối trung tâm thành phố Quy Nhơn với Khu Kinh Tế Nhơn Hội và bán đảo Phương Mai.\r\n15h00: Tiếp tục đến tham quan khu du lịch Gềnh Ráng – Tiên Sa với: đồi thi nhân Hàn Mặc Tử, dốc Mộng Cầm, bãi tắm Hoàng Hậu. Tìm hiểu tranh nghệ thuật bút lửa và cuộc đời của nhà thơ tài danh Hàn Mặc Tử cùng những nàng thơ của ông.\r\n19h00: Quý khách dùng bữa tối tại nhà hàng với hải sản biển Quy Nhơn, sau đó quay trở về trung tâm thành phố. Tự do nghỉ ngơi và khám phá thành phố biển về đêm.\r\n', 'top-10-dia-diem-du-lich-co-view-dep-va-hap-dan-tha-ho-check-in-tai-quy-nhon-202106151431049339.jpg', 2),
(5, 'Tour Cao Cấp Nha Trang 3N3Đ: Biển Dốc Lết - KDL Suối Hoa Lan - Đảo Khỉ', 4450000, '20h00: HDV đón quý khách tại Ga Sài Gòn, đón chuyến tàu SNT2, SE2 khởi hành đi Nha Trang, quý khách ăn tối tự túc trước khi lên tàu, nghĩ đêm trên tàu.\r\nLưu ý: Giờ  tàu và ký hiệu tàu có thể thay đổi tuỳ từng ngày đăng ký.\r\nNGÀY 1: BIỂN DỐC LẾT – THÁP BÀ PONAGA ( ĂN SÁNG, TRƯA, CHIỀU)\r\n5h00 - 5h30: Đoàn đến Ga Nha Trang, Xe đưa quý khách về nhà hàng làm vệ sinh cá nhân, dùng điểm tâm sáng.\r\nSau đó xe khởi hành đi Biển Dốc Lết, theo tuyến đường ven biển Nha Trang. Đến bãi biển Dốc Lết - một trong những bãi biển đẹp nhất của tỉnh Khánh Hòa. Được thiên nhiên ưu ái ban tặng cho vẻ đẹp hoang sơ, mộc mạc cùng với bãi cát dài, trắng mịn tinh khiết, màu nước biển trong xanh soi bóng những rặng dừa xanh ngắt. Tại đây, quý khách có thể thỏa sức tham gia các hoạt động thú vị như tự do vui chơi, tắm biển, hòa mình dưới làn nước trong xanh, mát rượi. \r\nTrưa: quý khách dùng cơm trưa tại nhà hàng ở Bãi Biển Dốc Lết. Xe đưa đoàn về lại Thành phố Nha Trang nhận phòng khách sạn nghỉ ngơi.\r\nChiều: đoàn khởi hành tham quan Tháp bà Ponagar được xây dựng từ cuối thế kỷ thứ 7 đến 12, Tháp là biểu tượng và là niềm tự hào của dân tộc Chăm. Từ lâu tháp bà Ponagar đã là một điểm đến quen thuộc không thể bỏ qua đối với những ai đã từng đến xứ Trầm Hương xinh đẹp.\r\nĐoàn dùng cơm tối tại nhà hàng, Quý khách tự do khám phá phố biển về đêm.', 'VNMNHA18.jpg', 1),
(6, 'Tour Đà Lạt 3N3D: Vườn Thượng Uyển - Kokoro Coffee - Puppy Farm', 3586000, 'TỐI NGÀY 01: TP.HỒ CHÍ MINH – ĐÀ LẠT:\r\nTối: 20h30, Xe và Hướng dẫn viên đón quý khách tại điểm hẹn, sắp xếp hành lý, gửi lời chào thân ái cùng lời chúc tết đầu năm tới Quý khách. Xe khởi hành, bắt đầu hành trình Tour Du Lịch Đà Lạt 3 ngày 3 đêm.\r\nQuý khách nghỉ ngơi trên xe. \r\nNGÀY 02: VƯỜN THƯỢNG UYỂN BAY - KOKORO COFFEE - BUFFET TỐI ( ĂN SÁNG, TRƯA, TỐI)\r\nSáng: Cùng đón bình minh trong không khí se lạnh của vùng cao nguyên, Đoàn có mặt tại Tp.Đà Lạt yêu thương, dùng điểm tâm tại nhà hàng. Đoàn bắt đầu tham quan “Thành Phố Ngàn Hoa” với:\r\n- Vườn Thượng Uyển Bay: đậm chất \"trời Tây\", Bốt điện thoại công cộng sơn đỏ gợi nhớ đến những tháng năm London hoa lệ, 400 cây hoa Nhật, 200 cây Mai Anh Đào, hoa giấy Thái rợp khắp không gian, không có khung cảnh đẹp nhất, chỉ có khung cảnh đẹp hơn; không có điều bất ngờ nhất, chỉ có điều bất ngờ hơn: Con đường tình yêu, Xe ngựa màu hồng, xích đu  giữa vườn cẩm tú cầu, Con đường ô và đèn lồng nhật bản,…sẽ là nhưng nơi lưu lại những thước hình tuyệt với.\r\n- Đà Lạt View Coffee: Nếu như cổng trời của chùa Linh Quy Pháp Ấn ở Bảo Lộc đã làm mưa gió trong suốt thời gian qua. Thì bây giờ không phải đi tới gần 200km mới được check in mà chỉ cần đi ngay tới Dalat View là bạn đã có thể làm được rồi, đã có những bức hình chụp với Cổng Trời Đà Lạt siêu hot. Điểm ấn tượng nhất là Cây cầu màu đỏ dài khoảng gần 40m với 1 vòng cung uốn lượn, giúp bạn thoả sức có được những bức ảnh lung linh. Trưa: Dùng bữa trưa tại Dalat View Coffee. Đoàn về khách san nhận phòng nghỉ ngơi.\r\nChiều: Đoàn tiếp tục tham quan các địa điểm nổi tiếng tại thành phố Đà Lạt.\r\n- KDL Lá Phong – Khám phá một Nhật Bản đẹp ngỡ ngàng giữa lòng Đà Lạt. Trong khu du lịch Lá Phong trồng hơn 2000 cây lá Phong, khoảng 500 cây Anh Đào, 20.000 cây Tùng Bút. Có nhiều cây đã hơn 10 năm tuổi và hàng trăm các loại cây lá kim đặc hữu quý hiếm ở Đà Lạt.\r\nTới đây Quý khách được chiêm ngưỡng kiến trúc độc đáo của Nhà Trăm Mái với diện tích lên đến 300m2 và có tới 132 chiếc mái – địa điểm check in cực chất.\r\nNgoài ra nhà trống nằm ngay bên cạnh căn nhà mái được thiết kế trông như một chiếc trống siêu to khổng lồ. Bên trong được mô phỏng bằng những bức tranh độc đáo và lạ mắt thu hút những ai yêu thích nghệ thuật.\r\n- Quán Cà phê KOKORO: nằm ở ngay bên cạnh hồ cá Koi. Quán cafe được thiết kế theo phong cách đơn giản với bức tường trắng in chữ Nhật Bản. Đây cũng chính là background siêu xinh để bạn có thể thỏa thích bấm máy chụp hình theo concept Nhật Bản thơ mộng.', 'images.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `madm` int(10) NOT NULL,
  `tendm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`madm`, `tendm`) VALUES
(1, 'Yoga'),
(2, 'Gym'),
(3, 'Máy tập thể dục '),
(4, 'Lưới'),
(5, 'Dụng cụ ngoài trời'),
(7, 'Bóng đá '),
(8, 'Bóng chuyền'),
(9, 'Cầu lông');

-- --------------------------------------------------------

--
-- Table structure for table `diemden`
--

CREATE TABLE `diemden` (
  `MADIEMDEN` int(11) NOT NULL,
  `MALOAIDIEMDEN` int(11) NOT NULL,
  `TENDIEMDEN` varchar(255) DEFAULT NULL,
  `MOTA` varchar(255) DEFAULT NULL,
  `HINHANH` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diemden`
--

INSERT INTO `diemden` (`MADIEMDEN`, `MALOAIDIEMDEN`, `TENDIEMDEN`, `MOTA`, `HINHANH`) VALUES
(0, 1, 'Thái Lan Vùng Đất Diệu Kì', 'Thái Lan – Vùng đất diệu kỳ Du lịch Thái Lan, đất nước thu hút du khách khắp thế giới không chỉ bởi sự hiếu khách, những nụ cười thân thiện; mà còn rất nhiều phong cảnh thiên nhiên tuyệt đẹp, hoang sơ. Du khách không thể bỏ qua thành phố náo nhiệt, trung', 'huong-dan-xin-visa-di-thai-lan-1568430459.jpg'),
(1, 1, 'Pháp - Miền Đất Hứa', 'Khám Phá Châu Âu Quyến Rũ Hãy tưởng tượng sự kết hợp hoàn hảo của văn hóa, lịch sử, thiên nhiên và ẩm thực mang tính biểu tượng. Chiêm ngưỡng những đại lộ rộng lớn của Paris, những món ăn ngon tự làm của Ý và những đỉnh núi đáng kinh ngạc của Thụy Sĩ.', 'van-hoa-nuoc-Phap-luon-khien-du-khach-phai-kham-pha.jpg'),
(2, 2, 'Hàn Quốc Xứ Sở Kim Chi', 'Thổn thức vẻ đẹp yêu kiều mùa thu ở đảo Nami\r\nHàn Quốc sở hữu một nền văn hóa châu Á phong phú và độc đáo, cảnh sắc thiên nhiên tuyệt đẹp, các di sản thế giới được UNESCO công nhận, ẩm thực đa dạng và các thành phố hiện đại bậc nhất thế giới như thủ đô Se', 'kr_00_00_m.jpg'),
(4, 1, 'Nhật Bản Đất Nước Mặt Trời Mọc', 'Du lịch Nhật Bản - đất nước \"Mặt trời mọc\" Nhật Bản luôn hấp dẫn du khách bởi sự giao thoa hài hòa giữa văn hóa đậm chất phương Đông với phồn hoa của văn minh hiện đại. Còn gì tuyệt vời hơn một lần trong đời được ngắm những cánh hoa anh đào hay băng qua n', '6c1b27ba4dec2a94f8a5887657715b4750820c91.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `madh` int(10) NOT NULL,
  `mand` int(10) NOT NULL,
  `oder_code` varchar(100) NOT NULL,
  `ghichu` varchar(250) NOT NULL,
  `trangthai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`madh`, `mand`, `oder_code`, `ghichu`, `trangthai`) VALUES
(49, 48, '3159', '', '4'),
(54, 45, '8111', '', '2'),
(55, 49, '3619', 'Giao hàng đến địa chỉ: Tân An- Càng Long - Trà Vinh', '2'),
(56, 49, '9366', '', '1'),
(57, 49, '5262', '', '1'),
(58, 49, '5614', '', '1'),
(59, 49, '2685', '', '1'),
(60, 49, '2234', '', '2'),
(61, 49, '3568', '', '1'),
(62, 49, '5527', '', '1'),
(63, 45, '5563', '', '2'),
(64, 45, '9253', '', '4'),
(65, 45, '5146', '', '3'),
(66, 45, '1198', '', '4'),
(67, 50, '6375', '', '4'),
(68, 45, '6468', '1', '1'),
(69, 45, '1884', '', '1'),
(70, 45, '6910', '', '1'),
(71, 45, '9293', '', '1'),
(72, 45, '4591', '', '1'),
(73, 45, '3170', 't', '1'),
(74, 45, '9273', 'ok', '2');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(10) NOT NULL,
  `mand` int(10) NOT NULL,
  `ngaydat` date NOT NULL,
  `thoigiangiaodukien` date NOT NULL,
  `diachigiaohang` varchar(100) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loaichuyendi`
--

CREATE TABLE `loaichuyendi` (
  `MALOAICHUYENDI` int(11) NOT NULL,
  `TENLOAICHUYENDI` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaichuyendi`
--

INSERT INTO `loaichuyendi` (`MALOAICHUYENDI`, `TENLOAICHUYENDI`) VALUES
(1, 'Tour Ngắn Ngày'),
(2, 'Tour Dài Ngày');

-- --------------------------------------------------------

--
-- Table structure for table `loaidiemden`
--

CREATE TABLE `loaidiemden` (
  `MALOAIDIEMDEN` int(11) NOT NULL,
  `TENLOAIDIEMDEN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaidiemden`
--

INSERT INTO `loaidiemden` (`MALOAIDIEMDEN`, `TENLOAIDIEMDEN`) VALUES
(1, 'Trong Nước'),
(2, 'Ngoài Nước');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `mand` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(80) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `phone` char(10) NOT NULL,
  `quyen` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`mand`, `username`, `password`, `name`, `diachi`, `phone`, `quyen`) VALUES
(1, 'admin', '123456', 'Admin', 'Trà Vinh', '0326873520', 1),
(45, 'tranquocdam', '123456', 'Trần Quốc Đảm', 'Long Đức-TP.Trà Vinh', '0326873522', 0),
(46, 'lequocanh', '123456', 'Lê Quốc Anh', 'Hòa Minh-Long Hòa', '0358975250', 0),
(49, 'minhluc', '123', 'Thạch Minh Lực', 'Hiếu Trung-Tiểu Cần-Trà Vinh', '0236892564', 0),
(50, 'thanhtrung', '123', 'Nguyễn Thành Trung', 'Tiểu Cần - Trà Vinh', '0389796572', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `madm` int(10) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `gia` float NOT NULL,
  `chitietsanpham` varchar(250) NOT NULL,
  `hinhanh` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `madm`, `tensp`, `gia`, `chitietsanpham`, `hinhanh`) VALUES
(87, 2, 'Bộ tạ tay tập luyện Bowflex 552', 5450000, 'Màu sắc: đen + đỏ.\r\nTrọng lượng tạ từ 5 – 52.5 Lbs (tương đương 2.27 – 23.8Kg) cho mỗi quả.\r\nKích thước mỗi quả tạ: 20.32 x 22.86 x 40 cm.\r\n1 bộ tạ tay Bowflex 552 gồm 2 quả tạ\r\nBảo hành: 1 năm.', 'ta-bowflex.jpg'),
(88, 2, 'Giàn tạ đa năng Ben 601502', 6750000, 'Chất liệu sử dụng thép hộp 50 x 50 x 30 mm.\r\nMàu sắc: đỏ đậm, đen, vàng và trắng.\r\nKích thước lắp đặt: 230 x 110 x 215 cm (dài x rộng x cao).\r\nTrọng lượng sản phẩm: 45 kg.\r\nTrọng lượng đóng thùng: 47 kg.\r\nTrọng lượng người tập tối đa: 150 kg', 'Bo-ghe-tap-ta-Ben-601502.jpg'),
(89, 2, 'Ghế tập tạ đa năng Xuki 2017', 1980000, 'Khung ghế màu xám.\r\nNệm ghế màu đỏ và đen kết hợp rất bắt mắt.\r\nTrọng lượng ghế tập tạ: 25 kg.\r\nDiện tích đặt sản phẩm: 1650 x 1520 x 2000 mm (dài x rộng x cao).', 'Gian-ta-xuki-2018.jpg'),
(90, 2, 'Ghế tập tạ đa năng TK-058', 3780000, 'Phần xà đơn có thể thay đổi chiều cao dễ dàng từ 1.65 m đến 2.35 m\r\nKích thước đóng thùng: 1480 x 900 x 130 mm.\r\nTrọng lượng sản phẩm: 33 kg.\r\nTrọng lượng người tập tối đa cho phép: 120 kg.', 'xa-don-xa-kep.jpg'),
(91, 2, 'Xà đơn xà kép đa năng MK680', 5450000, 'Trọng lượng bộ xà: 38 kg.\r\nTrọng lượng cả thùng: 40 kg.\r\nTải trọng người tập tối đa: 180 kg.\r\nKích thước thùng: gồm 2 kiện 105 x 38 x 15cm và 115 x 38 x 20cm.\r\nDiện tích lắp đặt: 103 x 104 x 208 cm.', 'xa-don-xa-kep-mk680-.jpg'),
(92, 2, 'Ghế tập tạ đa năng Thanh Xuân sport', 2249000, 'Khung dàn tạ được làm bằng thép cao cấp, Sơn tĩnh điện.\r\nĐiều chỉnh độ dốc mặt nệm theo bài tập.\r\nChuyên các bài tập về cơ bắp như Cơ ngực trên – Cơ ngực dưới.\r\nCơ vai trước – sau, Xô vai trước – sau, Cơ đùi trước – sau.\r\nGhế tập tạ đa năng Thanh Xuâ', '0187330-600x600.jpg'),
(93, 3, 'Ghế tập tạ GM4380', 6525000, 'Màu sắc: đen + cam + xám sáng.\r\nTrọng lượng bộ ghế tập: 44 kg.\r\nTrọng lượng đóng thùng: 48 kg.\r\nTrọng lượng tạ sử dụng tối đa: 200 kg.\r\nTrọng lượng người tập tối đa: 350 kg.\r\nDiện tích đặt ghế tạ: 1700 x 1070 x 1500 mm.', 'Tap-tay-truoc-ghe-tap-ta-GM-4380.jpg'),
(94, 2, 'Bộ tạ đa năng 4 in 1 loại 20Kg', 1550000, 'Tập tạ tay\r\nLàm tạ đòn\r\nLàm tạ ấm\r\nLàm dụng cụ hít đất', 'bo-ta-da-nang-4-in-1-1.jpg'),
(97, 1, 'Thảm yoga định tuyến Zera ', 385000, 'Dày thảm: 6mm\r\nKích thước: 61 x 180cm + Chất liệu: TPE + cao su\r\nXuất xứ: Việt Nam', 'tham-zera-dinh-tuyen.jpg'),
(98, 1, 'Thảm Yoga Eco TPe 8mm', 220000, 'Xuất xứ: Đài Loan.\r\nKích thước 180cm x 61cm x 0.8cm\r\nThảm Yoga có cấu tạo hai lớp riêng biệt,\r\nSản phẩm có chức năng cuộn tròn khi không sử dụng', 'tham_tap_yoga_eco_tpe_2_lop_800x530-604x400.jpg'),
(100, 1, 'Thảm tập yoga 8mm', 155000, '', 'tham-yoga-8mm-600x500.jpg'),
(101, 1, 'Thảm yoga Relax TPE', 195000, 'Độ bám cao, chống trơn trượt\r\nCó thể lau chùi hoặc chọn cách giặt thông', 'Tham-yoga-Relax-TPE-6-ly-2-lop.jpg'),
(102, 1, 'Thảm yoga TPE 2 lớp', 240000, 'Có nhiều màu : Xanh lam, Xanh lá, Xanh lá thẫm, Đỏ, Hồng, Tím.\r\n\r\n', 'tham-yoga-2-lop-TPE.jpg'),
(103, 1, 'Thảm Yoga TPE Relax ', 285000, 'Kích thước: 183cm x 61cm.\r\nĐộ dày: 6mm – 2 lớp.\r\nChất liệu thảm: TPE (Thermoplastic Elastomer).\r\nXuất xứ: Đài Loan.\r\nTặng kèm túi đựng thảm', 'Yoga-TPE-Relax-Dinh-Tuyen-600x501.jpg'),
(104, 1, 'Bóng tập thăng bằng Bosu', 1410000, '', 'bong-tap-the-luc-bosu0823_502x502-2.jpg'),
(105, 1, 'Bóng tập Yoga Brosman', 340000, 'Màu sắc: xanh và tím.\r\nTrọng lượng: 1.0 kg.\r\nBóng đường kính 65cm\r\nBóng đường kính 75cm', 'bong-tap-yoga.jpg'),
(106, 1, 'Bóng tập Yoga Gym Ball', 230000, 'Bóng tập được làm từ chất liệu cao cấp cho độ bền và độ đàn hồi cực tốt.\r\nBảo Hành 3 Tháng', 'bong_tap_yoga-247x149.jpg'),
(107, 1, 'Con lăn tập Yoga ', 350000, 'Màu sắc: xanh.\r\nKích thước con lăn: 33 x 14 cm\r\nTrọng lượng: 1 kg.\r\n ', 'uploaded-dung-cu-tap-yoga_Con-lan-massage-tap-Yoga-Foam-Roller_thumbcr_800x500-640x400.jpg'),
(108, 1, 'Dụng cụ gập bụng', 155000, 'Màu sắc: đen, đỏ, tím, xanh, cam.\r\nTrọng lượng: 1 kg.\r\nKích thước: 29 x 18.5cm (chiều cao điều chỉnh từ 18.5cm đến 21cm).\r\n ', 'tap-lung-voi-dung-cu-gap-bung.jpg'),
(109, 1, 'Gối tập Yoga', 150000, 'Kích thước gối tập Yoga: 23 x 15 x 7.6 cm (dài x rộng x dày).\r\nMàu sắc sản phẩm: xanh, tím vàng…\r\nGối tập Yoga được làm từ chất liệu EVA thân thiện với môi trường', 'Goi-tap-Yoga.jpg'),
(110, 1, 'Nước vệ sinh thảm Yoga', 55000, 'Vệ sinh, bảo vệ và ngăn ngừa mùi hôi trên thảm tập yoga\r\nGiữ bề mặt thảm yoga luôn khô ráo và sạch sẽ\r\nLàm sạch vết bẩn trên thảm tập yoga\r\nCó thể sử dụng cho tất loại thảm tập yoga đặc biệt TPE\r\nMùi hương lavender thơm mát dễ chịu\r\nHàng việt nam xuấ', 'img_2037.u5131.d20170609.t111414.746384.jpg'),
(115, 3, 'Xe đạp tập phục hồi chức năng TK8603R', 8149000, '– Màu sắc: đen + xám + đỏ.\r\nTrọng lượng bánh đà: 5 kg.\r\nTrọng lượng xe đạp: 42.5 kg.\r\nTrọng lượng cả thùng: 48.5 kg.\r\nTải trọng người tập tối đa: 150 kg.\r\nKích thước đóng thùng: 166.5 x 25.5 x 72 cm.\r\nDiện tích lắp đặt: 163 x 66 x 105 cm', 'xe-dap-tap-the-duc-tokado-tk-8603r.jpg'),
(116, 3, 'Xe đạp tập phục hồi chức năng R23900-C', 4980000, 'Khung xe được làm chắc chắn từ thép ống cực dày, chịu lực tốt và sơn tĩnh điện cao cấp chống bong tróc, rỉ sét.', 'xe-dap-phuc-hoi-R23900-C.jpg'),
(117, 3, 'Xe đạp tập AirBike Sport MK290', 5250000, 'Màu sắc: Đen.\r\nTrọng lượng sản phẩm: 30kg\r\nTrọng lượng bao bì: 34,2kg\r\nTrọng tải người tập tối đa: 120kg\r\nKích thước lắp đặt: 111 x 60 x 124 cm (D x R x C)', 'Xe-dap-tap-AirBike-Sport-MK290.jpg'),
(118, 3, 'Xe đạp tập thể dục Tokado TK007', 5849000, '– Màu sắc: vàng + đen + xám.\r\nTrọng lượng bánh đà: 13 kg.\r\nTrọng lượng xe đạp: 41 kg.\r\nTrọng lượng đóng thùng: 46 kg.\r\nTải trọng người tập tối đa: 135 kg.\r\nKích thước đóng thùng: 101.5 x 24.5 x 86 cm.\r\nDiện tích lắp đặt: 107 x 55 x 120 cm.', 'xe-dap-tap-tokado-tk007.jpg'),
(119, 3, 'Xe đạp tập thể dục Tokado TK1601', 7650000, 'Màu sắc: Đen + Đỏ.\r\nTrọng lượng xe đạp tập: 49.7 kg.\r\nTrọng lượng đóng thùng: 55.8 kg.\r\nKích thước lắp đặt: 1390 x 550 x 1620 mm.\r\nKích thước đóng thùng: 1195 x 450 x 670 mm.', 'Tokado-TK1601-600x500.jpg'),
(120, 3, 'Xe đạp phục hồi chức năng Dual Bike', 1650000, 'Màu sắc: đen.\r\nTrọng lượng xe đạp tập: 8 kg.\r\nTrọng lượng đóng thùng: 9 kg.\r\nKích thước đóng hộp: 470 x 430 x 130 mm.\r\nDiện tích đặt máy tập: 420 x 410 x 1050 mm.', 'Untitled-1.jpg'),
(121, 3, 'Xe đạp tập thể dục DB-JT101', 3650000, 'Màu sắc: Đen + Trắng+ Cam.\r\nTrọng lượng xe đạp tập: 25 kg.\r\nTrọng lượng đóng thùng: 29 kg.\r\nTải trọng tối đa: 120Kg.\r\nKích thước đóng thùng: 1030 x 195 x 840 mm\r\nKích thước lắp đặt: 1030 x 540 x 1100 mm.', 'xe-dap-tap-the-duc-DB-JT101-8-1.jpg'),
(122, 3, 'Máy tập thể dục leo núi Eurostar', 1350000, 'Màu sắc: đen + xanh kết hợp rất bắt mắt.\r\nTrọng lượng máy tập: 6.8 kg.\r\nTrọng lượng người tập tối đa: 120 kg.\r\nDiện tích lắp đặt: 40 x 40 x 20 cm', 'May-tap-leo-nui-Eurostar-2.jpg'),
(123, 3, 'Máy tập phục hồi chức năng Mini Bike', 2450000, 'Màu sắc: trắng + xanh.\r\nĐiện áp sử dụng: 220V/50Hz.\r\nCông suất tiêu thụ: 70W.\r\nTốc độ điều chỉnh: 12 mức độ.\r\nTốc độ vòng quay: 35 – 80 vòng/phút.\r\nKích thước lắp đặt: 48 x 38 x 29 cm.\r\nKích thước hộp đựng: 42 x 29 x 21 cm.', 'May-tap-phuc-hoi-chuc-nang-Mini-Bike.jpg'),
(124, 3, 'Xe đạp phục hồi chức năng BC-51053', 6250000, 'Trọng lượng bánh đà: 6 kg.\r\nTrọng lượng xe đạp: 33 kg.\r\nTrọng lượng đóng thùng: 35 kg.\r\nTải trọng người tập tối đa: 120 kg.\r\nKích thước thùng: 99.5 x 69.5 x 31 cm.\r\nDiện tích lắp đặt: 102 x 61 x 126 cm.', 'Xe-dap-phuc-hoi-chuc-nang-BC-51053-600x500.jpg'),
(125, 3, 'Xe đạp thể dục Tokado TK360R', 3950000, 'Màu sắc: Đen + Vàng + Xám.\r\nTrọng lượng xe đạp tập: 26.6 kg.\r\nTrọng lượng đóng thùng: 29.4 kg.\r\nKích thước lắp đặt: 125 x 48 x 114cm.\r\nKích thước đóng thùng: 78 x 28 x 66cm.', 'xe-dap-the-duc-Tokado-TK-360R.jpg'),
(126, 3, 'Xe đạp tập liên hoàn Life Span', 2650000, '', 'Xe-dap-tap-lien-hoan-Life-Span.jpg'),
(127, 3, 'Xe đạp tập thể dục HQ02', 2645000, 'Màu sắc: đen + xám + vàng.\r\nTrọng lượng bánh đà: 3.5 kg.\r\nTrọng lượng xe đạp tập: 18.5 kg.\r\nTrọng lượng đóng thùng: 20.5 kg.\r\nTrọng lượng người tập tối đa: 100 kg.\r\nDiện tích lắp đặt xe đạp tập: 782 x 470 x 1310 mm.', 'Xe-dap-tap-the-duc-Techgym-HQ-02-321x400.jpg'),
(128, 3, 'Xe đạp tập thể dục MK225', 5450000, 'Màu sắc: Đỏ đen.\r\nKích thước lắp đặt: 101 x 67 x 152cm (D x R x C).\r\nKích thước thùng: 99 x 27 x 68cm.\r\nTrọng lượng xe: 35Kg.\r\nTrọng lượng thùng: 37.5Kg.\r\nĐiều chỉnh độ nặng bánh đà: 8 cấp.\r\nChỉnh cao thấp yên: 6 nấc.', 'anh-xe-dap-tap-mk-225-1-600x500.jpg'),
(129, 3, 'Xe đạp tập thể dục Pro-09', 3450000, 'Màu sắc: Ghi, cam, đen.\r\nKích thước lắp đặt: 995 x 530 x 1240 mm (dài x rộng x cao)\r\nTrọng lượng xe: 17.5kg\r\nTrọng lượng cả thùng: 20.5kg\r\nTrọng tải người tập tối đa: 150kg\r\nBánh đà với đường kính 510mm, dày 45mm, chuyển động 2 chiều', 'Xe-dap-tap-the-duc-Pro-09.jpg'),
(130, 4, 'Lưới bóng chuyền tập luyện ', 500000, 'Thương hiệu: Vifa Sport.\r\nXuất xứ: Việt Nam.', 'luoi-bong-chuyen-419255.jpg'),
(131, 4, 'Lưới bóng chuyền thi đấu', 1050000, '', 'luoi-bong-chuyen-thi-dau-419537.jpg'),
(132, 4, 'Lưới bóng đá sân 5 ', 750000, 'Hãng sản xuất: Vifa – Việt Pháp.\r\nXuất xứ: Việt Nam.\r\nLàm từ chất liệu Twisted PE có độ bền cao.\r\nCỡ sợi: 4.0 mm\r\nCỡ ô: MS 145 mm.\r\nCó kích thước: 3.0 x 2.0 x 1.0 m.', 'lươi-cầu-môn-sân-5-người-600x459.jpg'),
(133, 4, 'Lưới cầu lông VifaSport', 195000, 'Hãng sản xuất: Vifa Sport (Việt Pháp).\r\nXuất xứ: Việt Nam.\r\nMàu sắc: trắng + đỏ sẫm.\r\nKích thước lưới: 6.0 x 0.76 m.', 'luoi-cau-long-vifa.jpg'),
(134, 4, 'Lưới khung thành sân7', 560000, '', 'luoi-bong-da-7-nguoi.jpg'),
(135, 4, 'Lưới Tennis 322648C', 1585000, '6 ô đôi M48mm, Sợi TW-PE 2.5 mm, 4 Band PVC\r\n6 ô đôi M48mm, Sợi TW-PE 2.5 mm, Band Polyester+PVC\r\n6 ô đôi M48mm, Sợi BR-PE 3.0 mm, Band Polyester+PVC', 'luoi-tennis-322648C-đa-nang.jpg'),
(136, 4, 'Lưới tennis cao cấp', 1550000, ' 6 ô đôi M48mm, Sợi TW-PE 2.5 mm, 4 Band PVC\r\n 6 ô đôi M48mm, Sợi TW-PE 2.5 mm, Band Polyester+PVC\r\n 6 ô đôi M48mm, Sợi BR-PE 3.0 mm, Band Polyester+PVC', '323348C-600x427.jpg'),
(137, 5, 'Bập bênh ngoài trời HQ628', 8690000, 'Trụ chính thép tròn phi 114, dày 3.00mm\r\nỐng phụ lthép tròn phi 48 dày 2.5mm\r\nPhần tay cầm được bọc nhựa.\r\nGhế ngồi làm chắc chắn bằng kim loại.\r\nMàu sắc: xanh + trắng.', 'uploaded-medias-201214_Bap-benh-ngoai-troi-HQ-628_thumb_1200x1200-2.jpeg'),
(138, 5, 'Dụng cụ tập kéo tay TBSport', 16900000, 'Vật liệu chính : Thép ống Ø114×3, Ống Ø76×3, Ø60 x 3, ghế ngồi thép dày 3mm.\r\nỐng kẽm nhúng nóng, sơn kẽm Epoxy ngoài trời.\r\nLắp đặt : Gắn cố định xuống nền.\r\nKích thước: DxRxC: 250 x 80 x 225(cm)\r\nSố người sử dụng cùng lúc : 02 người', 'dụng-cụ-kéo-tay-công-viên-600x459.jpg'),
(139, 5, 'Dụng cụ xoay eo vifa 711333', 18100000, '', 'MTCV-D140-Xoay-eo-2015-600x429.jpg'),
(140, 5, 'Ghế tập lưng bụng đơn HQ620', 7950000, '', 'ghế-tập-lưng-bụng-đơn.jpg'),
(141, 5, 'Máy chạy bộ ngoài trời HQ630', 14400000, '', 'máy-chạy-bộ-ngoài-trời-HQ-630.jpg'),
(142, 5, 'Máy đi bộ trên không đôi HQ624', 11450000, 'Trụ chính thép tròn phi 114, dày 3.00mm và được sơn chống rỉ.\r\nỐng phụ  thép tròn phi 48, phi 40 dày 2.75mm\r\nMàu sắc: xanh + trắng + vàng.\r\nTrọng lượng: kg.\r\nDiện tích lắp đặt: 180 x 35 x 120 cm.', 'may-di-bo-tren-khong-doi-HQ-624.jpg'),
(143, 5, 'Máy đi bộ trên không HQ607', 9200000, 'Trụ chính phi 114, dày 3.0mm\r\nỐng phụ phi 48, 40 dày 2.5mm và\r\nĐược sơn chống rỉ.\r\nMàu sắc: xanh + trắng + vàng.\r\nTrọng lượng: kg.\r\nDiện tích lắp đặt: 110 x 46 x 148 cm.', 'dungcudibotrenkhong.jpg'),
(144, 5, 'Máy tập tay ép ngực đôi HQ625', 19700000, 'Trụ chính thép tròn phi 114, dày 3.00mm và được sơn chống rỉ.\r\nỐng phụ làm từ thép tròn phi 60 dày 2.75mm\r\nPhi 48 + phi 42 dày 2.5mm và được sơn chống rỉ.\r\nGhế ngồi tập làm từ kim loại\r\nMàu sắc: xanh + trắng + vàng.\r\nDiện tích lắp đặt: 160 x 75 x 220', 'dungcutoanthan.jpg'),
(145, 5, 'Máy tập xoay eo ngoài trời HQ603', 10250000, 'Trụ chính làm từ thép tròn phi 114, dày 3mm.\r\nỐng phụ và phần cầm tay làm từ thép tròn phi 40, 48 và dày 2.5mm.\r\nMàu sắc: xanh + trắng + vàng.', 'May-tap-xoay-eo-HQ-603.jpg'),
(146, 5, 'Thang vận động ngoài trời HQ627', 8100000, '2 trụ chính thép tròn phi 114, dày 3.00mm\r\nỐng phụ thép tròn phi 40 dày 2.5mm\r\nĐược sơn chống rỉ.\r\nMàu sắc: xanh.', 'Thang-van-dong-ngoai-troi-HQ-627-2-292x400.jpg'),
(147, 5, 'Thiết Bị Tập Chạy Bộ ', 22205000, 'Khung của máy tập được làm từ thép hộp 50 x 50mm, 40 x 80mm, ống thép D34 và tấm nhám 3mm.\r\nMáy tập chạy bộ dùng cho 1 người tập và được gắn cố định xuống nền khi lắp đặt.\r\nMàu sắc: xanh + xám.\r\nKích thước lắp đặt: 1420 x 700 x 1330 mm (dài x rộng x ', 'thiet-bi-tap-chay-bo-s80029-247x217.jpg'),
(148, 5, 'Xà đơn 2 cấp HQ622', 7650000, 'Xà đơn 2 cấp HQ622 được thiết kế chắc chắn\r\nTrụ chính thép tròn phi 114, dày 3.00mm được sơn chống rỉ.\r\nỐng phụ thép tròn phi 34 dày 2.5mm được sơn chống rỉ.', 'uploaded-medias-201214_Xa-don-2-cap-HQ-622_thumbcr_530x373-247x184.jpeg'),
(149, 5, 'Xà đơn 3 hướng HQ-613', 9990000, 'Màu sắc: xanh + trắng.\r\nDiện tích lắp đặt: 150 x 150 x 230 cm.', 'xa-don-3-huong-HQ-613.jpg'),
(150, 7, 'lưới bóng đá giá rẻ sân 5', 410000, 'Dài: 3m10.\r\nCao: 2m.\r\nSâu: 1m.', 'luoibongda5nguoi.png'),
(151, 7, 'Bình xịt lạnh TAAN giảm đau', 230000, '', 'uploaded-medias-201214_Binh-xit-lanh-Taan_thumb_1200x1200-2-374x400.jpeg'),
(152, 7, 'Bóng đá Động lực UHV 1.02', 465000, '', 'bong-DL-UHV102.jpg'),
(153, 7, 'chai xịt lạnh Starbalm Cold Spray', 225000, '', 'chaixitlanh.jpg'),
(154, 7, 'Khung thành bóng đá 5 người', 6120000, 'kích thước Φ 60 3x2x1m\r\nSơn tĩnh điện, Ống kẽm.\r\nCó thể gắn cố định xuống sàn bằng thiết bị âm nền.', 'khung-thanh-bong-da-mini-S1615.jpg'),
(155, 7, 'Lưới bóng đá sân 11 Anh Việt', 1650000, '', '5203790luoi-bong-da-anh-viet-jpeg-2-247x187.jpg'),
(156, 1, 'Lưới bóng đá sân 5 người', 750000, 'Hãng sản xuất: Vifa – Việt Pháp.\r\nXuất xứ: Việt Nam.\r\nLàm từ chất liệu Twisted PE có độ bền cao.\r\nCỡ sợi: 4.0 mm\r\nCỡ ô: MS 145 mm.\r\nCó kích thước: 3.0 x 2.0 x 1.0 m.', 'lươi-cầu-môn-sân-5-người-600x459.jpg'),
(157, 7, 'Quả bóng đá Động Lực FIFA UHV 2.05', 789000, 'Thương hiệu: Động Lực.\r\nSản xuất tại: Việt Nam.', 'Qua-bong-da-Dong-Luc-FIFA-UHV-2_05.jpg'),
(158, 7, 'Quả bóng đá Động Lực in sao UHV 2.03', 430000, 'Thương hiệu: Động Lực.\r\nSản xuất tại: Việt Nam.', 'Dong-Luc-in-sao-UHV-203.jpg'),
(159, 7, 'Quả bóng đá Động Lực UCV 3.05 số 4', 220000, 'Thương hiệu: Động Lực.\r\nSản xuất tại: Việt Nam.', 'bong-dong-luc-so-4-UBH-3_05-1.jpg'),
(160, 7, 'Quả bóng đá Động Lực UCV 3.49', 250000, 'Thương hiệu: Động Lực.\r\nSản xuất tại: Việt Nam.', 'Bong-da-Dong-Luc-UCV-3.jpg'),
(161, 7, 'Quả bóng Động Lực Cup C1 CB 4.13', 185000, 'Hãng sản xuất: Động Lực.\r\nXuất xứ: Việt Nam.', 'qua-bong-Dong-Luc-Cup-C1-CB-4.jpg'),
(162, 7, 'Xe rải vôi sân bóng đá cỏ tự nhiên', 3350000, 'Sơn tĩnh điện màu xanh;\r\nBánh xe cao su Φ200;\r\nKhối lượng chứa 20 kg vôi;\r\nBề rộng line vôi 100mm;\r\nĐiều điều chỉnh được lượng vôi rải.', 'Xe-rải-vôi-sân-bóng-1-604x400.jpg'),
(163, 8, 'Lưới bóng chuyền tập luyện 419255', 500000, 'Thương hiệu: Vifa Sport.\r\nXuất xứ: Việt Nam.', 'luoi-bong-chuyen-419255.jpg'),
(164, 8, 'Lưới bóng chuyền thi đấu', 1050000, '', 'luoi-bong-chuyen-thi-dau-419537.jpg'),
(165, 8, 'Trụ bóng chuyền di động Thiên Trường TT 2025', 7950000, '', 'Tru-bong-chuyen-TT2025-600x500.jpg'),
(166, 8, 'Trụ bóng chuyền tập luyên', 3750000, '', 'tru-bong-chuyen.jpg'),
(167, 8, 'Trụ bóng chuyền thi đấu S30251', 8600000, '', 'Tru-bong-chuyen-thi-dau-600x500.jpg'),
(168, 9, 'Trụ cầu lông di động S27024', 2800000, '', 'tru-cau-long-di-dong-S27024-600x500.jpg'),
(169, 9, 'Trụ cầu lông Đức Long', 1650000, '', 'tru-cot-cau-long.jpg'),
(170, 9, 'Trụ cầu lông trường học ', 1250000, '', 'Tru-cau-long-truong-hoc-S27020-600x500.jpg'),
(171, 9, 'Quả cầu lông Ba Sao', 145000, 'Lông cầu: 16 lông vũ.\r\nTrọng lượng: 5.0 ± 0.2 gram.\r\nĐộ xoay (vòng/giây) 1 ± 3.\r\nQuy cách đóng hộp: 10 quả.', 'qua-cau-long-ba-sao-1.jpg'),
(172, 9, 'Quả cầu lông Thành Công ', 205000, '', 'qua-cau-long-thanh-cong-xanh.jpg'),
(173, 9, 'Thảm sân cầu lông Enlio ', 36400000, 'Màu sắc bề mặt thảm: xanh.\r\nKích thước cuộn thảm: 15 x 1.8 m.\r\nĐộ dày lớp chống mòn: 1.5 mm.\r\nĐộ dày thảm cầu lông: 4.7 mm.\r\nKích thước sân đấu: 13.4 x 6.1 m.\r\nKích thước thảm toàn sân: 15 x 7.2 m.\r\nDiện tích toàn sân: 108 m².', 'tham-san-cau-long-enlio-a-21345.jpg'),
(174, 9, 'Trụ cầu lông đa năng', 1290000, 'Màu sắc: xanh, trắng.\r\nTrọng lượng: 38 kg/trụ.\r\nChiều cao điều chỉnh tối đa: 2m.', 'Tru-cau-long-da-nang-truong-hoc.jpg'),
(175, 9, 'Trụ cầu lông đa năng L30', 900000, '', 'Tru-cau-long-da-nang-L30-280x280.jpg'),
(176, 9, 'Trụ cầu lông tập luyện', 1420000, 'Màu sắc: xanh.\r\nĐối trọng: 35 kg/trụ.\r\nChiều cao: 1.55 m.', 'tru-cau-long-tap-luyen-600x626.jpg'),
(177, 9, 'Trụ câu lông tập luyện ', 1450000, '', 'TK527.jpg'),
(178, 9, 'Vợt cầu lông Wish', 155000, '', 'vot-cau-long-hoc-sinh.jpg'),
(181, 1, 'gf1', 12, '', 'screencapture-localhost-81-websitenhahang-quanlybaiviet-index-php-2022-06-11-17_56_05.png'),
(182, 1, 'huy1', 12, 'uhuihio', 'pexels-quintin-gellar-313782.jpg'),
(183, 3, 'gf', 12000000, 'ssss', 'screencapture-localhost-81-websitenhahang-quanlybaiviet-index-php-2022-06-11-17_56_05.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`mactdh`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `mahd` (`mahd`),
  ADD KEY `chitiethoadon_ibfk_1` (`masp`);

--
-- Indexes for table `chuyendi`
--
ALTER TABLE `chuyendi`
  ADD PRIMARY KEY (`MACHUYENDI`),
  ADD KEY `fk_maloaichuyendi` (`MALOAICHUYENDI`);

--
-- Indexes for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `diemden`
--
ALTER TABLE `diemden`
  ADD PRIMARY KEY (`MADIEMDEN`),
  ADD KEY `diemden_loaidiemden` (`MALOAIDIEMDEN`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`madh`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `mand` (`mand`);

--
-- Indexes for table `loaichuyendi`
--
ALTER TABLE `loaichuyendi`
  ADD PRIMARY KEY (`MALOAICHUYENDI`);

--
-- Indexes for table `loaidiemden`
--
ALTER TABLE `loaidiemden`
  ADD PRIMARY KEY (`MALOAIDIEMDEN`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`mand`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `madm` (`madm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `mactdh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `chuyendi`
--
ALTER TABLE `chuyendi`
  MODIFY `MACHUYENDI` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `madh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaichuyendi`
--
ALTER TABLE `loaichuyendi`
  MODIFY `MALOAICHUYENDI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loaidiemden`
--
ALTER TABLE `loaidiemden`
  MODIFY `MALOAIDIEMDEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `mand` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `chuyendi`
--
ALTER TABLE `chuyendi`
  ADD CONSTRAINT `fk_maloaichuyendi` FOREIGN KEY (`MALOAICHUYENDI`) REFERENCES `loaichuyendi` (`MALOAICHUYENDI`);

--
-- Constraints for table `diemden`
--
ALTER TABLE `diemden`
  ADD CONSTRAINT `diemden_loaidiemden` FOREIGN KEY (`MALOAIDIEMDEN`) REFERENCES `loaidiemden` (`MALOAIDIEMDEN`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`mand`) REFERENCES `nguoidung` (`mand`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmucsanpham` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
