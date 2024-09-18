-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 10:18 AM
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
