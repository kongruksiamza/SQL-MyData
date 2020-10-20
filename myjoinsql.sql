-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 11:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
('T001', 'เครื่องใช้ไฟฟ้า'),
('T002', 'เฟอร์นิเจอร์'),
('T003', 'ของเล่น'),
('T004', 'เสื้อผ้า'),
('T005', 'เครื่องสำอางค์'),
('T006', 'อุปกรณ์คอมพิวเตอร์');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `unit` varchar(255) NOT NULL,
  `type_id` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `unit`, `type_id`, `status`) VALUES
('P001', 'พัดลม', 150, 'เครื่อง', 'T001', 1),
('P002', 'โทรทัศน์', 5000, 'เครื่อง', 'T001', 2),
('P003', 'รถบังคับ', 300, 'ชุด', '', 1),
('P004', 'โคมไฟ', 150, 'อัน', 'T002', 1),
('P005', 'เสื้อโค้ท', 700, 'ตัว', 'T004', 1),
('P006', 'ตุ๊กตาหมีพูห์', 500, 'ตัว', 'T003', 1),
('P007', 'ผ้านวม', 300, 'ผืน', 'T004', 1),
('P008', 'กบไสไม้', 1500, 'เครื่อง', '', 1),
('P009', 'ตู้เย็น', 7000, 'เครื่อง', 'T001', 1),
('P010', 'แผ่นภาพจิ๊กซอว์', 900, 'แผ่น', 'T002', 1),
('P011', 'หนังสือเรียน', 400, 'เล่ม', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
