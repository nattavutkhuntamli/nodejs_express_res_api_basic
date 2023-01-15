-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 02:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it_service_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_repair_status`
--

CREATE TABLE `tbl_repair_status` (
  `id` int(11) NOT NULL COMMENT 'รหัสเลขการซ่อม',
  `repair_id` int(11) NOT NULL COMMENT 'รหัสการซ่อม',
  `status` int(11) NOT NULL COMMENT 'สถานะการดำเนินงาน',
  `operator_id` int(11) NOT NULL COMMENT 'ช่างที่เป็นคนซ่อม',
  `comment` text NOT NULL COMMENT 'หมายเหตุ',
  `create_date` datetime DEFAULT current_timestamp() COMMENT 'วันที่บันทึกข้อมูล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='ตารางข้อมูลเก็บสถานะ';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL COMMENT 'username',
  `password` varchar(60) NOT NULL COMMENT 'password',
  `status` enum('0','1','2','3') NOT NULL DEFAULT '1' COMMENT 'สถานะ 1 พนักงานทั่วไป 2 admin 3 ช่างซ่อม\r\n0 ปิดใช้งาน',
  `fullname` varchar(100) NOT NULL COMMENT 'ชื่อ นามสกุล',
  `sex` varchar(20) NOT NULL COMMENT 'เพศ',
  `create_date` datetime DEFAULT current_timestamp(),
  `lastvisited` varchar(80) NOT NULL COMMENT 'login ล่าสุด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='ฐานข้อมูลพนักงาน ช่าง แอดมิน';

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `status`, `fullname`, `sex`, `create_date`, `lastvisited`) VALUES
(1, 'admin', 'aa123654', '2', 'nattavut khuntamli', 'male', '2023-01-15 19:26:38', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_repair_status`
--
ALTER TABLE `tbl_repair_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_repair_status`
--
ALTER TABLE `tbl_repair_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสเลขการซ่อม';

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
