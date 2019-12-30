-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2019 at 04:46 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btl`
--

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `id` int(11) NOT NULL,
  `diemThi` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diemQT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TKHP` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`id`, `diemThi`, `diemQT`, `TKHP`) VALUES
(1, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `id` int(11) NOT NULL,
  `maGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diaChi` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_catalog`
--

CREATE TABLE `menu_catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_catalog`
--

INSERT INTO `menu_catalog` (`id`, `name`, `metaTitle`, `created`, `updated`) VALUES
(2, 'Công nghệ thông tin', 'Cong-nghe-thong-tin', '2018-01-15 16:45:47', '2018-01-15 16:45:47'),
(3, 'Nhà Trường', 'Nha-Truong', '2018-01-15 17:08:01', '2019-12-27 14:58:37'),
(5, 'Đối Ngoại', 'Doi-Ngoai', '2018-01-15 17:26:21', '2019-12-27 14:58:54'),
(7, 'Giải trí', 'Giai-tri', '2018-01-19 14:35:22', '2018-01-19 14:35:22'),
(9, 'Giao thông', 'Giao-thong', '2018-01-19 14:41:53', '2018-01-19 14:41:53'),
(11, 'Sinh viên', 'Sinh-vien', '2019-12-27 14:23:52', '2019-12-27 14:23:52'),
(13, 'Giáo Viên', 'Giao-Vien', '2019-12-27 14:59:27', '2019-12-27 14:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `menu_list_blog`
--

CREATE TABLE `menu_list_blog` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalog` int(2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot` int(1) NOT NULL DEFAULT 1,
  `new` int(1) NOT NULL DEFAULT 1,
  `dateTime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_list_blog`
--

INSERT INTO `menu_list_blog` (`id`, `avatar`, `name`, `metaTitle`, `catalog`, `description`, `content`, `token`, `hot`, `new`, `dateTime`, `created`, `updated`) VALUES
(19, 'public/images/157745966511.jpg', 'Khai mạc đợt khảo sát chính thức phục vụ đánh giá ngoài 4 chương trình đào tạo', 'Khai-mac-dot-khao-sat-chinh-thuc-phuc-vu-danh-gia-ngoai-4-chuong-trinh-dao-tao', 2, '(TLU) – Ngày 26/12, Trường Đại học Thủy lợi diễn ra Khai mạc đợt khảo sát chính thức phục vụ đánh giá ngoài 4 chương trình đào tạo gồm Công nghệ Kỹ thuật xây dựng, Kỹ thuật xây dựng, Kinh tế, Quản trị kinh doanh...', '<p>(TLU) &ndash; Ng&agrave;y 26/12, Trường Đại học Thủy lợi diễn ra Khai mạc đợt khảo s&aacute;t ch&iacute;nh thức phục vụ đ&aacute;nh gi&aacute; ngo&agrave;i 4 chương tr&igrave;nh đ&agrave;o tạo gồm C&ocirc;ng nghệ Kỹ thuật x&acirc;y dựng, Kỹ thuật x&acirc;y dựng, Kinh tế, Quản trị kinh doanh</p>\r\n\r\n<p>Tham dự buổi lễ, về ph&iacute;a Trung t&acirc;m Kiểm định chất lượng gi&aacute;o dục &ndash; Đại học Quốc gia H&agrave; Nội c&oacute; TS Tạ Thị Thu Hiền &ndash; Ph&oacute; gi&aacute;m đốc phụ tr&aacute;ch Trung t&acirc;m; TS Đinh Văn To&agrave;n &ndash; Ph&oacute; gi&aacute;m đốc &ndash; Chủ tịch Hội đồng kiểm định v&agrave; l&agrave; th&agrave;nh vi&ecirc;n thường trực Đo&agrave;n ĐGN.</p>\r\n\r\n<p>Về ph&iacute;a đo&agrave;n chuy&ecirc;n gia ĐGN c&oacute; GS.TS Nguyễn Hữu Đức &ndash; Trưởng đo&agrave;n; GS.TS Ho&agrave;ng B&aacute; Thịnh &ndash; Ph&oacute; trưởng đo&agrave;n c&ugrave;ng c&aacute;c th&agrave;nh vi&ecirc;n l&agrave; thư k&yacute;, gi&aacute;m s&aacute;t vi&ecirc;n, quan s&aacute;t vi&ecirc;n.</p>\r\n\r\n<p>Về ph&iacute;a Trường Đại học Thủy lợi c&oacute; GS.TS Trịnh Minh Thụ - Hiệu trưởng, đại diện Đảng ủy, Ban gi&aacute;m hiệu, l&atilde;nh đạo c&aacute;c Ph&ograve;ng, ban chức năng; Khoa C&ocirc;ng tr&igrave;nh, Khoa Kinh tế v&agrave; Quản l&yacute;, c&aacute;c th&agrave;nh vi&ecirc;n Hội đồng Tự đ&aacute;nh gi&aacute; Trường c&ugrave;ng đ&ocirc;ng đảo c&aacute;n bộ vi&ecirc;n chức, giảng vi&ecirc;n v&agrave; sinh vi&ecirc;n.</p>\r\n\r\n<p>Ph&aacute;t biểu tại lễ khai mạc, GS.TS Trịnh Minh Thụ - Hiệu trưởng Trường Đại học Thủy lợi khẳng định: Nh&agrave; trường x&aacute;c định sứ mệnh của m&igrave;nh l&agrave; một trung t&acirc;m nghi&ecirc;n cứu khoa học v&agrave; đ&agrave;o tạo c&oacute; uy t&iacute;n trong c&aacute;c lĩnh vực về khoa học, kỹ thuật, kinh tế v&agrave; quản l&yacute;, đặc biệt l&agrave; lĩnh vực thủy lợi, thủy điện, t&agrave;i nguy&ecirc;n nước, m&ocirc;i trường, ph&ograve;ng chống v&agrave; giảm nhẹ thi&ecirc;n tai.</p>\r\n\r\n<p>Trong những năm qua, Trường Đại học Thủy lợi x&aacute;c định nhiệm vụ của m&igrave;nh l&agrave; kh&ocirc;ng ngừng n&acirc;ng cao chất lượng đ&agrave;o tạo, khẳng định lời cam kết với to&agrave;n x&atilde; hội. V&igrave; vậy, Trường đ&atilde; đầu tư nh&acirc;n lực, vật lực phục vụ c&ocirc;ng t&aacute;c kiểm định trường, kiểm định c&aacute;c chương tr&igrave;nh đ&agrave;o tạo. Nh&agrave; trường vui mừng l&agrave; cơ sở gi&aacute;o dục đầu ti&ecirc;n trong cả nước ho&agrave;n th&agrave;nh kiểm định chất lượng theo th&ocirc;ng tư 12/2017 của Bộ GD&amp;ĐT đạt kết quả cao nhất với 95,5% số ti&ecirc;u ch&iacute; đạt chuẩn. Ho&agrave;n tất v&agrave; nhận chứng chỉ 2 chương tr&igrave;nh ti&ecirc;n tiến theo chuẩn AUN-QA; 3 chương tr&igrave;nh đạt kiểm định Trung t&acirc;m kiểm định chất lượng gi&aacute;o dục &ndash; Đại học Quốc gia H&agrave; Nội.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh tự đ&aacute;nh gi&aacute;, Nh&agrave; trường đ&atilde; thực hiện nghi&ecirc;m t&uacute;c theo c&ocirc;ng văn số 1075 của Bộ GD&amp;ĐT từ việc th&agrave;nh lập hội đồng đến c&aacute;c Ban thư k&yacute;, Ban chuy&ecirc;n m&ocirc;n; c&ocirc;ng t&aacute;c lấy &yacute; kiến phản hồi từ c&aacute;c b&ecirc;n li&ecirc;n quan; ph&acirc;n t&iacute;ch c&aacute;c số liệu; viết v&agrave; c&ocirc;ng khai c&aacute;c b&aacute;o c&aacute;o tự đ&aacute;nh gi&aacute;&hellip;</p>\r\n', 'j8G6gfrs1N', 1, 1, '27/12/2019', '2019-12-27 15:13:57', '2019-12-27 15:14:25'),
(20, 'public/images/157745975521.jpg', 'Đại học Thủy lợi là một trong 30 trường đại học Việt Nam có công bố quốc tế nhiều nhất', 'Dai-hoc-Thuy-loi-la-mot-trong-30-truong-dai-hoc-Viet-Nam-co-cong-bo-quoc-te-nhieu-nhat', 2, 'Số lượng công bố quốc tế hàng năm của Việt Nam đã cán mốc gần 10.000 bài/năm (năm 2018) trong đó các cơ sở giáo dục đại học đóng góp tới 70%. Tốc độ gia tăng các bài báo WoS & Scopus hàng năm của Việt Nam tăng mạnh (34,7% đối với cả nước và 41,6% đối với ', '<p>Trong 5 năm đ&oacute;, cả nước đ&atilde; c&ocirc;ng bố 22.438 b&agrave;i b&aacute;o WoS, 29.932 b&agrave;i b&aacute;o Scopus v&agrave; tổng cộng 32.732 b&agrave;i trong CSDL t&iacute;ch hợp WoS &amp; Scopus. Đồng thời, số liệu tương ứng của c&aacute;c CSGDĐH l&agrave; 13.728 (WoS), 21.702 (Scopus) v&agrave; 23.144 b&agrave;i (WoS &amp; Scopus), chiếm trung b&igrave;nh khoảng 70% so với năng suất của cả nước.</p>\r\n\r\n<p>Về tổng số b&agrave;i b&aacute;o Scopus cao hơn số b&agrave;i b&aacute;o WoS 1,33 lần; tổng số b&agrave;i b&aacute;o WoS &amp; Scopus cao hơn số b&agrave;i b&aacute;o WoS 1,46 lần v&agrave; số b&agrave;i b&aacute;o Scopus 1,09 lần.</p>\r\n\r\n<p>Lưu &yacute;, tổng số b&agrave;i b&aacute;o WoS &amp; Scopus trong giai đoạn 2014-2018 của Việt Nam chỉ tương đương với năng suất c&ocirc;ng bố b&agrave;i b&aacute;o Scopus của Indonesia trong năm 2017 (21.300 b&agrave;i) hoặc năm 2018 (33.988 b&agrave;i).</p>\r\n\r\n<p>Năng suất khoa học - số lượng b&agrave;i b&aacute;o c&ocirc;ng bố tr&ecirc;n Việt Nam đang tăng qua từng năm v&agrave; c&oacute; dấu hiệu tăng mạnh hơn sau năm 2017.</p>\r\n\r\n<p>Trong giai đoạn 2014-2017, trung b&igrave;nh mỗi năm số lượng b&agrave;i b&aacute;o WoS &amp; Scopus tăng khoảng 18,8% (từ 4.332 b&agrave;i đến 7.217 b&agrave;i trong 3 năm). Tuy nhi&ecirc;n, chỉ trong một năm từ 2017-2018, số lượng b&agrave;i b&aacute;o đ&atilde; tăng l&ecirc;n 34,7% (từ 7.217 đến 9.719 b&agrave;i). Như vậy, năm 2018, Việt Nam đ&atilde; gần như đ&atilde; c&aacute;n mốc 10.000 c&ocirc;ng bố quốc tế một năm.</p>\r\n\r\n<p>Kết quả n&agrave;y cao hơn một ch&uacute;t so với năng suất c&ocirc;ng bố b&agrave;i b&aacute;o Scopus h&agrave;ng năm (v&iacute; dụ: 8.800 b&agrave;i năm 2018) của Trường ĐHQG Singapore. Trong số đ&oacute;, tốc độ gia tăng số c&ocirc;ng bố trong hai giai đoạn ph&acirc;n kỳ ấy của WoS l&agrave; 22,4% v&agrave; 30,5%; của Scopus l&agrave; 18,1% v&agrave; 33,7%.</p>\r\n\r\n<p>Tương tự, số lượng b&agrave;i b&aacute;o WoS &amp; Scopus của c&aacute;c CSGDĐH Việt Nam, từ 2014-2017, trung b&igrave;nh mỗi năm tăng 21,8%, nhưng chỉ t&iacute;nh ri&ecirc;ng năm từ 2017-2018, con số n&agrave;y tăng l&ecirc;n đến 41,6%. Trong đ&oacute;, tốc độ gia tăng số c&ocirc;ng bố trong hai giai đoạn ph&acirc;n kỳ ấy của WoS l&agrave; 29,4 % v&agrave; 38,5%; của Scopus l&agrave; 21.3% v&agrave; 41,1%.</p>\r\n', 'TIcOc7KJGO', 1, 1, '27/12/2019', '2019-12-27 15:15:55', '2019-12-27 15:15:55'),
(21, 'public/images/1577459821ta1.jpg', 'Bế giảng khóa học bồi dưỡng tiếng Anh cho công chức thuộc Bộ Nông nghiệp và Phát triển nông thôn năm 2019', 'Be-giang-khoa-hoc-boi-duong-tieng-Anh-cho-cong-chuc-thuoc-Bo-Nong-nghiep-va-Phat-trien-nong-thon-nam-2019', 3, 'Vừa qua Trường Đại học Thủy lợi đã tổ chức bế giảng khóa học bồi dưỡng tiếng Anh cho công chức thuộc Bộ Nông nghiệp và Phát triển nông thôn năm 2019...', '<p>Kh&oacute;a học bồi dưỡng tiếng Anh cho c&ocirc;ng chức thuộc Bộ N&ocirc;ng nghiệp v&agrave; Ph&aacute;t triển n&ocirc;ng th&ocirc;n năm 2019&nbsp; được Vụ Tổ chức c&aacute;n bộ - Bộ NN&amp;PTNT phối hợp với Trường Đại học Thủy lợi tổ chức nhằm ho&agrave;n thiện chuẩn đ&aacute;nh gi&aacute; vi&ecirc;n chức, c&ocirc;ng chức cho c&aacute;c c&aacute;n bộ đang c&ocirc;ng t&aacute;c trong ng&agrave;nh.</p>\r\n\r\n<p>Kh&oacute;a học k&eacute;o d&agrave;i 6 th&aacute;ng được x&acirc;y dựng theo chuẩn IEILS tương đương chuẩn tham chiếu B1, B2 khung ch&acirc;u &Acirc;u được Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo quy định.</p>\r\n\r\n<p>Theo Ban tổ chức, kh&oacute;a học c&oacute; 34 học vi&ecirc;n tham gia kiểm tra đầu v&agrave;o tiếng Anh với tr&igrave;nh độ kh&aacute; ch&ecirc;nh lệch v&agrave; mức điểm kh&aacute; thấp (từ&nbsp;0,5 đến 6 điểm - điểm IEILS). Từ t&igrave;nh h&igrave;nh cụ thể như vậy, Nh&agrave; trường đ&atilde; phối hợp c&ugrave;ng với Bộ NN&amp;PTNT x&acirc;y dựng khung chương tr&igrave;nh đ&agrave;o tạo ph&ugrave; hợp với tr&igrave;nh độ của học vi&ecirc;n, đồng thời lựa chọn những giảng vi&ecirc;n c&oacute; kinh nghiệm, c&oacute; uy t&iacute;n để tham gia giảng dạy cho lớp học.</p>\r\n\r\n<p>Sau 6 th&aacute;ng của kh&oacute;a học, với nhiều nỗ lực của bản th&acirc;n do hầu hết c&aacute;c học vi&ecirc;n đều vừa đi học vừa đi l&agrave;m, c&ocirc;ng việc cơ quan, c&ocirc;ng việc gia đ&igrave;nh đều bận rộn nhưng c&aacute;c anh chị hợc vi&ecirc;n đ&atilde; rất cố gắng nỗ lực để theo được lớp. Đến nay, ban tổ chức th&ocirc;ng b&aacute;o hầu hết c&aacute;c anh chị học vi&ecirc;n đều đạt điểm từ 4-4.5 điểm theo chuẩn IEILS, thậm ch&iacute; c&oacute; học vi&ecirc;n đạt được 6.5.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; về c&ocirc;ng t&aacute;c chuẩn bị, giảng dạy v&agrave; kết quả của học vi&ecirc;n, GS.TS Nguyễn Trung Việt cũng như b&agrave; Trần Thị Anh Thư cho rằng, c&aacute;c học vi&ecirc;n đ&atilde; rất nỗ lực. Kết quả h&ocirc;m nay l&agrave; th&agrave;nh quả xứng đ&aacute;ng cho những cố gắng, sự ham học hỏi, sự cần c&ugrave;, chăm chỉ của tất cả học vi&ecirc;n. V&agrave; đ&acirc;y cũng l&agrave; sự t&acirc;m huyết của c&aacute;c giảng vi&ecirc;n tham gia giảng dạy lớp học.</p>\r\n', 'RiNfSADSw6', 1, 1, '27/12/2019', '2019-12-27 15:17:01', '2019-12-27 15:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `maSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `password`, `token`, `created`, `updated`) VALUES
(3, 'public/images/a1.jpg', 'Dao Ninh Thai', 'thaimeo1131@gmail.com', '466cd2e807652fdcd6dfbed4018fdbb9', 'asdasdasd', '2018-01-15 04:50:50', '2019-12-29 16:53:49'),
(8, 'public/images/a2.jpg', 'Đào Văn Công', 'daocong1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'uONB8d6Val', '2019-12-27 12:44:46', '2019-12-29 16:54:10'),
(9, 'public/images/a3.jpg', 'Đào Thị Trang', 'trang1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'k131rQnNb7', '2019-12-27 14:40:57', '2019-12-29 16:54:30'),
(10, '', 'Đào Văn Thắng', 'thangdao1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'LxvORWiJum', '2019-12-27 14:41:49', '2019-12-27 14:41:49'),
(11, '', 'Đào Thị Tình', 'tinhtinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'DTikNw0swQ', '2019-12-27 14:42:13', '2019-12-27 14:42:13'),
(12, '', 'Đào Đức Minh', 'minhminh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'k9oIWxS75W', '2019-12-27 14:42:46', '2019-12-27 14:42:46'),
(13, '', 'Đào Thắng Văn', 'vanthang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'FCB0WQ3GA4', '2019-12-27 14:48:37', '2019-12-27 14:48:37'),
(14, '', 'Đào Thị Lý', 'ly@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '04NzBIIJnx', '2019-12-27 14:49:05', '2019-12-27 14:49:05'),
(15, '', 'Đào Vân Dung', 'dung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'oGQfmzqOGw', '2019-12-27 14:49:30', '2019-12-27 14:49:30'),
(16, '', 'Đào Công Lý', 'congly@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'OUlXssf2x6', '2019-12-27 14:50:08', '2019-12-27 14:50:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_catalog`
--
ALTER TABLE `menu_catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_list_blog`
--
ALTER TABLE `menu_list_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
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
-- AUTO_INCREMENT for table `diem`
--
ALTER TABLE `diem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_catalog`
--
ALTER TABLE `menu_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu_list_blog`
--
ALTER TABLE `menu_list_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
