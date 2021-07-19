-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 04:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `penerima` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`) VALUES
(1, 2, '2021-07-09 17:00:25', 'Pembeli', 100),
(2, 3, '2021-07-09 17:34:59', 'Hilang', 100),
(3, 8, '2021-07-17 06:27:22', 'Pembeli', 200),
(4, 10, '2021-07-17 08:59:48', 'Pembeli', 400),
(5, 16, '2021-07-18 07:46:35', 'Terjual', 200),
(7, 11, '2021-07-18 07:59:58', 'Terjual', 100),
(8, 17, '2021-07-18 08:03:02', 'Hilang', 10),
(9, 12, '2021-07-19 06:05:11', 'Terjual', 50),
(10, 14, '2021-07-19 06:05:34', 'Terjual', 10),
(11, 15, '2021-07-19 06:06:00', 'Terjual', 40);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'mhmmdbasirun@gmail.com', '1800018006');

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `keterangan`, `qty`) VALUES
(3, 2, '2021-07-09 16:57:34', 'Armin', 198),
(5, 5, '2021-07-16 16:45:55', 'Pembeli', 600),
(6, 4, '2021-07-16 16:47:11', 'tedi', 1000),
(7, 6, '2021-07-16 16:49:46', 'Pembeli', 40),
(9, 8, '2021-07-16 17:26:35', 'basir', 500),
(10, 10, '2021-07-17 09:00:16', 'basir', 300),
(11, 15, '2021-07-18 07:47:31', 'Muhammad Basir', 50),
(12, 11, '2021-07-18 08:06:03', 'Muhammad Basir', 100),
(13, 14, '2021-07-19 06:02:23', 'Muhammad Basir', 50),
(14, 17, '2021-07-19 06:02:44', 'Muhammad Basir', 20),
(15, 12, '2021-07-19 06:03:42', 'Muhammad Basir', 80),
(16, 16, '2021-07-19 06:04:08', 'Muhammad Basir', 150);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idbarang`, `namabarang`, `deskripsi`, `stock`) VALUES
(11, 'ASUS VivoBook 15 A516', 'Laptop', 500),
(12, 'Tang Crimping Rj45', 'Alat khusus pemotong kabel', 430),
(13, 'Kabel Belden Cat5 UTP 305m Belden', 'Kabel LAN', 350),
(14, 'Vgen Ddr4  8gb', 'RAM', 240),
(15, 'TP-LINK TL-WR940N 450Mbps', 'Router', 160),
(16, 'Keyboard Logitech Classic Dst Mk100+Ms Usb', 'Keyboard', 550),
(17, 'Apple MacBook Pro 13 inch ', 'Laptop', 110);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
