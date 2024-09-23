-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 10:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computerstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `baohanh`
--

CREATE TABLE `baohanh` (
  `id_kh` varchar(6) DEFAULT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `ngay_mua` date NOT NULL,
  `ngay_het_han` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cthoadon`
--

CREATE TABLE `cthoadon` (
  `id_hd` varchar(6) NOT NULL,
  `id_sp` varchar(6) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `id_pn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_sp` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `so_luong` int(5) NOT NULL,
  `don_gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctquyenchucnang`
--

CREATE TABLE `ctquyenchucnang` (
  `id_quyen` varchar(10) NOT NULL,
  `id_chuc_nang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ctquyenchucnang`
--

INSERT INTO `ctquyenchucnang` (`id_quyen`, `id_chuc_nang`) VALUES
('QU001', '00'),
('QU001', '01'),
('QU001', '02'),
('QU001', '03'),
('QU001', '04'),
('QU001', '05'),
('QU001', '06'),
('QU001', '07'),
('QU001', '08'),
('QU001', '09'),
('QU001', '10'),
('QU001', '11'),
('QU001', '12'),
('QU001', '13'),
('QU001', '14'),
('QU001', '15'),
('QU001', '16'),
('QU001', '20'),
('QU001', '21'),
('QU001', '22'),
('QU001', '23'),
('QU001', '24'),
('QU001', '30'),
('QU001', '31'),
('QU001', '32'),
('QU001', '33'),
('QU001', '34'),
('QU002', '01'),
('QU002', '03'),
('QU002', '05'),
('QU002', '07'),
('QU002', '09'),
('QU002', '11'),
('QU002', '21'),
('QU002', '33'),
('QU003', '02'),
('QU003', '03'),
('QU003', '06'),
('QU003', '08'),
('QU003', '12'),
('QU003', '13'),
('QU003', '16'),
('QU003', '22'),
('QU003', '23'),
('QU003', '32'),
('QU003', '33'),
('QU004', '00'),
('QU004', '01'),
('QU004', '02'),
('QU004', '03'),
('QU004', '04'),
('QU004', '05'),
('QU004', '06'),
('QU004', '07'),
('QU004', '08'),
('QU004', '09'),
('QU004', '10'),
('QU004', '20'),
('QU004', '30'),
('QU005', '00'),
('QU005', '04'),
('QU005', '10'),
('QU005', '14'),
('QU005', '20'),
('QU005', '24'),
('QU005', '34'),
('QU006', '00'),
('QU006', '01'),
('QU006', '02'),
('QU006', '03'),
('QU006', '13');

-- --------------------------------------------------------

--
-- Table structure for table `ctsanpham`
--

CREATE TABLE `ctsanpham` (
  `id_sp` varchar(6) NOT NULL,
  `serial` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hd` varchar(6) NOT NULL,
  `id_kh` varchar(6) DEFAULT NULL,
  `id_user` varchar(6) DEFAULT NULL,
  `ngay_xuat` date NOT NULL,
  `tong_tien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` varchar(6) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `dia_chi` varchar(50) NOT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` varchar(6) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `dia_chi` varchar(60) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieubaohanh`
--

CREATE TABLE `phieubaohanh` (
  `id_kh` varchar(15) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `serial` varchar(15) NOT NULL,
  `ngay_mua` date NOT NULL,
  `ngay_het_han` date NOT NULL,
  `id_hd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id_pn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_ncc` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_user` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngay_nhap` date NOT NULL,
  `tong_tien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id` varchar(10) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id`, `ten`, `enable`) VALUES
('QU001', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` varchar(5) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gia_nhap` int(11) DEFAULT NULL,
  `gia_ban` int(11) DEFAULT NULL,
  `hang` varchar(50) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(6) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `gioi_tinh` varchar(5) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `quyen` varchar(50) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `ten`, `gioi_tinh`, `sdt`, `quyen`, `img`, `enable`) VALUES
('US001', 'admin', 'admin', 'Nam', '123', 'QU001', 'US001.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baohanh`
--
ALTER TABLE `baohanh`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`id_hd`,`id_sp`),
  ADD KEY `id_hd` (`id_hd`,`id_sp`);

--
-- Indexes for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`id_pn`,`id_sp`),
  ADD KEY `id_pn` (`id_pn`,`id_sp`);

--
-- Indexes for table `ctquyenchucnang`
--
ALTER TABLE `ctquyenchucnang`
  ADD PRIMARY KEY (`id_quyen`,`id_chuc_nang`);

--
-- Indexes for table `ctsanpham`
--
ALTER TABLE `ctsanpham`
  ADD PRIMARY KEY (`id_sp`,`serial`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hd`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieubaohanh`
--
ALTER TABLE `phieubaohanh`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id_pn`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
