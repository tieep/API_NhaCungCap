-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2024 at 04:07 PM
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
  `id_bh` varchar(10) NOT NULL,
  `id_kh` varchar(15) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `Serial` varchar(15) NOT NULL,
  `ngay_baohanh` date NOT NULL,
  `ngay_tramay` date NOT NULL
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
('QU001', '24'),
('QU001', '30'),
('QU001', '32'),
('QU001', '33'),
('QU001', '34');

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

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten`, `dia_chi`, `sdt`, `enable`) VALUES
('KH001', 'khach hang fff', 'hcm hanoi', '0555555555', 1),
('KH002', 'khach hang vippro', 'an do', '0123456789', 1);

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

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `ten`, `dia_chi`, `sdt`, `enable`) VALUES
('CC001', 'Nha cung cap abc', '123 hcm', '0666666666', 1),
('CC002', 'Nha cung cap xyz', '666 hanoi', '0777777777', 1);

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

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `so_luong`, `gia_nhap`, `gia_ban`, `hang`, `img`, `enable`) VALUES
('SP001', 'Acer 123', 0, 0, 0, 'Acer', 'SP001.png', 1),
('SP002', 'MSI 111', 0, 0, 0, 'MSI', 'SP002.png', 1),
('SP003', 'Dell 666', 0, 0, 0, 'Dell', 'SP003.png', 1);

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
('US001', 'admin', 'admin', 'Nam', '123', 'QU001', 'US001.png', 1),
('US002', 'Passdaiqua123', 'abbb', 'Nam', '021', 'QU001', 'null', 1),
('US003', 'Khongcopass123', 'abc hehe', 'Nam', '0333333333', 'QU001', 'null', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baohanh`
--
ALTER TABLE `baohanh`
  ADD PRIMARY KEY (`id_bh`);

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
