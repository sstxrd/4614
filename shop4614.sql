-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 05:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(7) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` float(9,2) NOT NULL,
  `p_ext` varchar(50) NOT NULL,
  `c_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_ext`, `c_id`) VALUES
(1, 'ลำโพง', 'อุปกรณ์สำหรับขยายเสียงแบบพกพา น่ารัก กะทัดรัด เหมาะสำหรับคนที่ชอบฟังเพลงแบบเปิดเสียงดัง ๆ ', 229.00, 'jpg', 2),
(2, 'หูฟัง', 'อุปกรณ์สำหรับฟังเสียงแบบส่วนตัว คลื่นเสียงสัญญาณชัดเจน มีทั้งแบบครอบหู (Over-ear) และแบบใส่ในหู (In-ear)', 339.00, 'jpg', 2),
(3, 'หูฟังไร้สาย', 'หูฟังที่เชื่อมต่อด้วยบลูทูธหรือสัญญาณไร้สายอื่นๆ มีความสะดวกในการใช้งาน พกพาง่าย ไม่มีสายรบกวน', 369.00, 'jpg', 2),
(4, 'แบตสำรอง', 'อุปกรณ์สำรองพลังงานสำหรับชาร์จอุปกรณ์อิเล็กทรอนิกส์ เช่น โทรศัพท์มือถือหรือแท็บเล็ต', 459.00, 'png', 2),
(5, 'กล้องถ่ายรูปดิจิตัล', 'กล้องที่ถ่ายภาพและวิดีโอในรูปแบบดิจิตอล ', 859.00, 'jpg', 1),
(6, 'เครื่องเล่นเกม', 'อุปกรณ์สำหรับเล่นวิดีโอเกม เช่น คอนโซล (PlayStation, Xbox) หรือเครื่องพกพา (Nintendo Switch)', 799.00, 'jpg', 1),
(7, 'แว่นอัจฉริยะ', 'แว่นตาที่มีฟังก์ชันพิเศษ เช่น AR/VR, การถ่ายภาพ, การแสดงข้อมูลบนเลนส์', 109999.00, 'jpg', 2),
(8, 'นาฬิกา', 'อุปกรณ์บอกเวลา ซึ่งมีทั้งแบบดิจิตอลและอะนาล็อก สามารถตั้งบนโต๊ะได้', 229.00, 'jpg', 3),
(9, 'นาฬิกาข้อมือ', 'นาฬิกาที่สวมใส่บนข้อมือ มีหลากหลายดีไซน์ และหลากหลายฟังก์ชันให้เลือกใช้งาน ', 1899.00, 'jpg', 3),
(10, 'นาฬิกาทราย', 'อุปกรณ์จับเวลาในรูปแบบของภาพหน้าจอโดยตัวจับเวลาเป็นแบบตัวเกมบล็อค ซึ่งอิงมาจากนาฬิกาทราย โดยมีความน่ารักผสมกับความสนุกและใช้สำหรับตกแต่ง', 669.00, 'png', 3),
(11, 'กระถางต้นไม้อัจฉริยะ', 'กระถางต้นไม้ที่มีฟังก์ชันพิเศษ เช่น ระบบรดน้ำอัตโนมัติ หรือเซ็นเซอร์วัดความชื้นในดิน และนอกจากนี้ยังออกแบบดีไซน์ให้มีความน่ารัก ลูกเล่นหลากหลาย ทำให้การปลูกต้นไม้จะไม่น่าเบื่ออีกต่อไป', 2569.00, 'png', 3),
(12, 'โปรเจ็กเตอร์', 'อุปกรณ์สำหรับฉายภาพหรือวิดีโอบนพื้นผิว เช่น ผนังหรือจอ ตัวอุปกรณ์เล็ก พกพาง่าย และใช้งานง่าย ไม่ต้องพกเครื่องมือให้ยุ่งยาก', 4859.00, 'png', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
