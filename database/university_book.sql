-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2016 at 03:39 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(5) NOT NULL,
  `fac_name` varchar(128) NOT NULL,
  `fac_desc` varchar(255) NOT NULL,
  `fac_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `fac_name`, `fac_desc`, `fac_status`) VALUES
(1, 'นิติศาสตร์', 'ศึกษากฎหมายพื้นฐานต่างๆที่มีความสำคัญและจำเป็น', 1),
(2, 'บริหารธุรกิจ', 'การจัดการด้านธุรกิจในสาขาต่างๆ ', 1),
(3, 'วิทยาศาสตร์', 'ศึกษา ค้นคว้าวิชาการทางด้านคณิตศาสตร์และวิทยาศาสตร์', 1),
(4, 'รัฐศาสตร์', 'ศึกษาเกี่ยวกับทฤษฎีทางรัฐศาสตร์', 1),
(5, 'วิศวกรรมศาสตร์', 'ศึกษาด้านการวิเคราะห์และการออกแบบสิ่งก่อสร้าง', 1),
(6, 'ศิลปกรรมศาสตร์', 'ศึกษาภาคทฤษฎีและภาคปฏิบัติที่เกี่ยวข้องในแต่ละสาขาวิชา', 1),
(7, 'สื่อสารมวลชน', 'ศึกษาวิจัยด้านสื่อสารมวลชนที่เป็นการสร้างองค์ความรู้ใหม่ที่นำไปใช้ประโยชน์ด้านวิชาการและวิชาชีพ', 1),
(8, 'พัฒนาทรัพยากรมนุษย์', 'ศึกษาทฤษฎีการพัฒนาคน การพัฒนางาน การพัฒนาองค์กร', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(5) NOT NULL,
  `instuctor_id` varchar(30) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `nickname` varchar(64) NOT NULL,
  `faculty` int(2) NOT NULL,
  `position` int(2) NOT NULL,
  `pesonal_id` varchar(30) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_number` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `pic_profile` varchar(125) NOT NULL,
  `date_create` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`id`, `instuctor_id`, `firstname`, `lastname`, `nickname`, `faculty`, `position`, `pesonal_id`, `username`, `password`, `email`, `mobile_number`, `phone_number`, `pic_profile`, `date_create`, `status`) VALUES
(1, '257894', 'กนกนัย', 'ถาวรพานิช', 'นัย', 1, 7, '3770400404487', 'kanoknai', '1234', 'thavon@gmail.com', '08937738993', '02989389332', 'Kanoknai.jpg', '2016-01-12 00:00:00', 1),
(2, '257966', 'ดร.กมลวรรณ', 'จิรวิศิษฎ์', 'อ้อย', 1, 3, '2587489654247', 'kamonwan', '1122', 'kamonwan@gmail.com', '0873982932', '0298372323', '3.jpg', '2016-01-13 00:00:00', 1),
(3, '654785', 'กิตติวัฒน์', 'จันทร์แจ่มใส', 'กิตติ', 2, 5, '3568998748541', 'kittiwat', '4321', 'kittiwat@gmail.com', '0837298323', '0208398955', 'kittiwat.jpg', '2015-12-16 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(5) NOT NULL,
  `pos_name` varchar(255) NOT NULL,
  `pos_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `pos_name`, `pos_status`) VALUES
(1, 'อธิการบดี', 1),
(2, 'ศาสตราจารย์', 1),
(3, 'รองศาสตราจารย์', 1),
(4, 'ผู้ช่วยศาสตราจารย์', 1),
(5, 'อาจารย์ชำนาญการ', 1),
(6, 'อาจารย์พิเศษ', 1),
(7, 'อาจารย์', 1),
(8, 'คณะกรรมการผู้บริหาร ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
