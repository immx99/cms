-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2023 at 06:04 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `backset`
--

CREATE TABLE `backset` (
  `url` varchar(100) NOT NULL,
  `sessiontime` varchar(4) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `themesback` varchar(2) DEFAULT NULL,
  `responsive` varchar(2) DEFAULT NULL,
  `haha` datetime DEFAULT NULL,
  `namabisnis1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backset`
--

INSERT INTO `backset` (`url`, `sessiontime`, `footer`, `themesback`, `responsive`, `haha`, `namabisnis1`) VALUES
('http://localhost/cms', '60', 'Lincah Store', '6', '0', '2017-01-20 07:30:02', 'Toko ATK & Percetakan');

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `nota` varchar(20) NOT NULL,
  `tglmasuk` date DEFAULT NULL,
  `jammasuk` time DEFAULT NULL,
  `pelanggan` varchar(50) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `total_profit` double DEFAULT NULL,
  `uang_muka` int NOT NULL DEFAULT '0',
  `tgldeadline` date DEFAULT NULL,
  `jamdeadline` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `kasir` varchar(100) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`nota`, `tglmasuk`, `jammasuk`, `pelanggan`, `total`, `total_profit`, `uang_muka`, `tgldeadline`, `jamdeadline`, `status`, `kasir`, `catatan`, `no`) VALUES
('0003', '2017-01-15', '19:19:41', '1', 10000, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 16),
('0004', '2017-01-15', '19:19:42', '0001', 14000, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 17),
('0005', '2017-01-15', '19:19:42', '1', 21000, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 18),
('0006', '2017-01-15', '19:19:46', '0001', 14000, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 19),
('0007', '2019-11-25', '11:11:42', '0003', 10000, NULL, 0, '2019-11-26', '00:00:11', 'lunas', 'admin', 'yang bersih', 20),
('0008', '2019-11-25', '11:11:42', '0003', 7000, NULL, 0, '2019-11-26', '00:00:11', 'lunas', 'admin', 'yang bersih', 21),
('0009', '2022-01-11', '10:10:44', '0002', 31000, NULL, 0, '2021-12-06', '00:00:00', 'lunas', 'admin', '', 22),
('0010', '2022-06-29', '11:11:38', '', 22500, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'faris', '', 23),
('0011', '2022-06-29', '12:12:28', '', 10000, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'faris', '', 24),
('0012', '2022-07-06', '19:19:48', '0002', 0, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'coba', '', 25),
('0013', '2022-07-06', '19:19:48', '0002', 0, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'coba', '', 26),
('0014', '2023-08-19', '18:18:28', '', 25000, NULL, 0, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 27),
('0015', '2023-09-16', '13:13:33', '0007', 20075000, NULL, 0, '2023-09-30', '00:00:00', 'lunas', 'admin', '', 28),
('0016', '2023-09-16', '13:13:35', '0006', 105000, NULL, 0, '2023-09-30', '00:00:00', 'lunas', 'admin', '', 29),
('0017', '2023-09-16', '16:16:16', '0005', 165000, NULL, 0, '2023-09-16', '00:00:00', 'lunas', 'admin', '', 30),
('0018', '2023-09-16', '16:16:18', '0006', 220000, NULL, 0, '2023-09-21', '00:00:00', 'lunas', 'admin', '', 31),
('0019', '2023-09-19', '15:15:33', '0005', 49500, NULL, 0, '2023-09-30', '00:00:00', 'lunas', 'admin', '', 32),
('0020', '2023-09-19', '16:16:00', '0005', 495000, NULL, 0, '2023-09-30', '00:00:00', 'lunas', 'admin', '', 33),
('0021', '2023-09-20', '17:17:57', '0008', 407000, NULL, 0, '2023-09-26', '00:00:00', 'Diterima', 'admin', '', 34),
('0022', '2023-09-22', '06:06:51', '0004', 2345000, NULL, 0, '2023-09-30', '08:00:00', 'lunas', 'admin', '', 35),
('0023', '2023-09-26', '07:07:52', '', 345000, 100000, 0, '2023-09-26', '07:52:00', 'selesai', 'admin', '', 36),
('0024', '2023-09-26', '07:07:53', '0004', 275000, 75000, 0, '2023-09-26', '07:53:00', 'Diterima', 'admin', '', 37),
('0025', '2023-09-26', '07:07:54', '', 275000, 75000, 0, '2023-09-26', '07:54:00', 'Diterima', 'admin', '', 38),
('0026', '2023-09-26', '08:08:01', '', 250000, 75000, 0, '2023-09-26', '08:01:00', 'Diterima', 'admin', '', 39),
('0027', '2023-09-26', '08:08:02', '', 250000, 75000, 0, '2023-09-26', '08:02:00', 'Diterima', 'admin', '', 40),
('0028', '2023-09-26', '08:08:08', '', 200000, 60000, 0, '2023-09-26', '08:08:00', 'Diterima', 'admin', '', 41),
('0029', '2023-11-06', '15:15:59', '0004', 125000, 40000, 0, '2023-11-06', '15:59:00', 'Diterima', 'admin', '', 42),
('0030', '2023-12-06', '01:01:25', '0003', 310000, 99000, 300000, '2023-12-06', '01:25:00', 'Diterima', 'admin', '', 43),
('0031', '2023-12-08', '10:10:45', '0003', 300000, 90000, 0, '2023-12-08', '10:45:00', 'Diterima', 'admin', '', 44),
('0032', '2023-12-08', '10:10:48', '0005', 300000, 0, 0, '2023-12-08', '10:48:00', 'Diterima', 'admin', '', 45),
('0033', '2023-12-08', '10:10:53', '0003', 250000, 75000, 0, '2023-12-08', '10:53:00', 'Diterima', 'admin', '', 46),
('0034', '2023-12-08', '11:11:00', '0003', 1237000, 223000, 0, '2023-12-08', '11:00:00', 'Diterima', 'admin', '', 47),
('0035', '2023-12-08', '11:11:20', '0002', 481000, 72000, 0, '2023-12-08', '11:20:00', 'Diterima', 'admin', '', 48),
('0036', '2023-12-08', '11:11:24', '0005', 275000, 75000, 0, '2023-12-08', '11:24:00', 'Diterima', 'admin', '', 49),
('0037', '2023-12-08', '12:12:18', '0003', 250000, 75000, 0, '2023-12-08', '12:18:00', 'Diterima', 'admin', '', 50),
('0038', '2023-12-08', '12:12:20', '0006', 200000, 60000, 0, '2023-12-08', '12:20:00', 'Diterima', 'admin', '', 51),
('0039', '2023-12-08', '12:12:24', '0005', 250000, 75000, 0, '2023-12-08', '12:24:00', 'Diterima', 'admin', '', 52),
('0040', '2023-12-08', '12:12:30', '0004', 220000, 60000, 0, '2023-12-08', '12:30:00', 'Diterima', 'admin', '', 53),
('0041', '2023-12-08', '12:12:40', '0006', 200000, 60000, 0, '2023-12-08', '12:40:00', 'Diterima', 'admin', '', 54),
('0042', '2023-12-08', '12:12:44', '0006', 250000, 75000, 0, '2023-12-08', '12:44:00', 'Diterima', 'admin', '', 55),
('0043', '2023-12-08', '12:12:45', '0005', 200000, 60000, 0, '2023-12-08', '12:45:00', 'selesai', 'admin', '', 56),
('0044', '2023-12-08', '12:12:46', '0005', 220000, 60000, 0, '2023-12-08', '12:46:00', 'lunas', 'admin', '', 57),
('0045', '2023-12-08', '13:13:08', '0005', 250000, 75000, 250000, '2023-12-08', '13:08:00', 'lunas', 'admin', '', 58),
('0046', '2023-12-08', '14:14:47', 'Umum', 250000, 75000, 200000, '2023-12-08', '14:47:00', 'Diterima', 'admin', 'umum', 59);

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `startIpNum` int UNSIGNED NOT NULL,
  `endIpNum` int DEFAULT NULL,
  `locId` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chmenu`
--

CREATE TABLE `chmenu` (
  `userjabatan` varchar(20) NOT NULL,
  `menu1` varchar(1) DEFAULT '0',
  `menu2` varchar(1) DEFAULT '0',
  `menu3` varchar(1) DEFAULT '0',
  `menu4` varchar(1) DEFAULT '0',
  `menu5` varchar(1) DEFAULT '0',
  `menu6` varchar(1) DEFAULT '0',
  `menu7` varchar(1) DEFAULT '0',
  `menu8` varchar(1) DEFAULT '0',
  `menu9` varchar(1) DEFAULT '0',
  `menu10` varchar(1) DEFAULT '0',
  `menu11` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chmenu`
--

INSERT INTO `chmenu` (`userjabatan`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu11`) VALUES
('admin', '5', '5', '5', '5', '5', '5', '5', '5', '5', '0', '0'),
('demo', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', ''),
('user', '0', '1', '2', '3', '4', '1', '4', '0', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int NOT NULL,
  `aplikasi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`nama`, `tagline`, `alamat`, `notelp`, `signature`, `avatar`, `no`, `aplikasi`) VALUES
('Lincah Store', 'CMS', 'Pramuka', '(021) 3153779', 'Terima kasih.', 'dist/upload/index.jpg', 0, 'laundry'),
('Lincah Store', 'CMS', 'Pramuka', '(021) 3153779', 'Terima kasih.', 'dist/upload/index.jpg', 1, 'kasir'),
('Lincah Store', 'CMS', 'Jl. Pramuka', '(021) 3153779', 'Terima kasih ', 'dist/upload/index.jpg', 2, 'cms');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`nama`, `avatar`, `tanggal`, `isi`, `id`) VALUES
('admin', 'dist/img/avatar5.png', '2023-09-25', '<h1>test diterima</h1><p>test lagi</p><p>ok</p><p>haitest lagi</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode`, `nama`, `no`) VALUES
('0001', 'admin', 28),
('0002', 'demo', 29),
('0003', 'user', 30);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`kode`, `nama`, `satuan`, `biaya`, `no`) VALUES
('0004', 'Buku Absensi', '0001', 15000, 5),
('0005', 'Buku Absensi', '', 5000000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `operasional`
--

CREATE TABLE `operasional` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kasir` varchar(20) DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operasional`
--

INSERT INTO `operasional` (`kode`, `nama`, `tanggal`, `biaya`, `keterangan`, `kasir`, `no`) VALUES
('0001', 'kategori2', '2019-11-22', 70001, '11assq', 'admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `telepon` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `kecamatan` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nohp` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `url` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `peta_lokasi` varchar(60) DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode`, `tgldaftar`, `nama`, `alamat`, `telepon`, `kecamatan`, `nohp`, `url`, `peta_lokasi`, `no`) VALUES
('0001', '2023-08-26 00:00:00', 'SMA Negeri 68 Jakarta', 'Jl. Salemba Raya  Jakarta Pusat', '', 'Senen', '', '', NULL, 1),
('0002', '2023-08-26 00:00:00', 'SMP Negeri 216 Jakarta', 'Jakarta Pusat', '', '', '', '', NULL, 2),
('0003', '2023-08-27 00:00:00', 'SMA Negeri 1 Jakarta', 'Jl. Budi Utomo No. 7, Pasar Baru, Kec. Sawah Besar, Jakarta 10710\r\nTel', '021-3865001', 'Sawah Besar', '021-3865001', '', NULL, 3),
('0004', '2023-08-27 00:00:00', 'SMA Negeri 4', 'Jl. Batu No. 3 Jakarta Pusat', '', 'Gambir', '', '', NULL, 4),
('0005', '2023-08-27 00:00:00', 'SMA Negeri 5', 'Jl. Raya Sumur Batu Jakarta Pusat', '4243869', 'Kemayoran', '4243869', '', NULL, 5),
('0006', '2023-08-27 00:00:00', 'SMA Negeri 7', 'Jl. Karet Ps. Baru Barat V Jakarta Pusat', '5720934', 'Tanah Abang', '5720934', '', NULL, 6),
('0007', '2023-08-27 00:00:00', 'SMA Negeri 10', 'Jl. Mangga Besar XIII Jakarta Pusat', '021-6590192', 'Sawah Besar', '021-6590192', '', NULL, 7),
('0008', '2023-08-27 00:00:00', 'SMA Negeri 20', 'Jl. Krekot Bunder III/1 Jakarta Pusat', '021-3440021', 'Sawah Besar', '021-3440021', '', NULL, 8),
('0009', '2023-08-27 00:00:00', 'SMA Negeri 24', 'Jl. Lapangan Tembak Senayan	 Jakarta Pusat', '5736984', 'Tanah Abang', '5736984', '', NULL, 9),
('0010', '2023-08-27 00:00:00', 'SMA Negeri 25', 'Jl. AM. Sangaji No. 22-24 Jakarta Pusat', '6331921', 'Gambir', '6331921', '', NULL, 10),
('0011', '2023-08-27 00:00:00', 'SMA Negeri 27', 'Jl. Mardani Raya Jakarta Pusat', '4245969', 'Johar Baru', '4245969', '', NULL, 11),
('0012', '2023-08-27 00:00:00', 'SMA Negeri 30', 'Jl. Jend. A. Yani Jakarta Pusat', '021-4244015', 'Cempaka Putih', '021-4244015', '', NULL, 12),
('0013', '2023-08-27 00:00:00', 'SMA Negeri 35', 'Jl. Mutiara Jakarta Pusat', '5736914', 'Tanah Abang', '5736914', '', NULL, 13),
('0014', '2023-08-27 00:00:00', 'SMA Negeri 77', 'Jl. Cempaka Putih Tengah Jakarta Pusat', '4266929', 'Cempaka Putih', '4266929', '', NULL, 14),
('0015', '2023-08-27 00:00:00', 'SMA Negeri 15', 'Jl. Agung Utara STS Blok A Jakarta Utara', '021 6452717', 'Tanjung Priok', '021 6452717', '', NULL, 15),
('0016', '2023-08-27 00:00:00', 'SMA Negeri 18', 'Jl. Warakas I Jakarta Utara', '021-4353561', 'Kec. Tanjung Priok', '021-4353561', '', NULL, 16),
('0017', '2023-08-27 00:00:00', 'SMA Negeri 40', 'Jl. Budi Mulia Raya Jakarta Utara', '6402464', 'Pademangan', '6402464', '', NULL, 17),
('0018', '2023-08-27 00:00:00', 'SMA Negeri 41', 'Jl. Laks. R. E. Martadinata Jakarta Utara', '(021) â€“ 6518840', 'Tanjung Priok', '(021) â€“ 6518840', '', NULL, 18),
('0019', '2023-08-27 00:00:00', 'SMA Negeri 45', 'Jl. Perintis Kemerdekaan Jakarta Utara', '4527345', 'Kelapa Gading', '4527345', '', NULL, 19),
('0020', '2023-08-27 00:00:00', 'SMA Negeri 52', 'Jl. Raya Tugu Semper Jakarta Utara', '4405378', 'Cilincing', '4405378', '', NULL, 20),
('0021', '2023-08-27 00:00:00', 'SMA Negeri 72', 'Jl. Prihatin Komp. TNI AL Jakarta Utara', '4502584', 'Kelapa Gading', '4502584', '', NULL, 21),
('0022', '2023-08-27 00:00:00', 'SMA Negeri 73', 'Jl. Cakung Jakarta Utara', '4401622', 'Kelapa Gading', '4401622', '', NULL, 22),
('0023', '2023-08-27 00:00:00', 'SMA Negeri 75', 'Jl. Tipar Cakung Jakarta Utara', '021 4402862', 'Cilincing', '021 4402862', '', NULL, 23),
('0024', '2023-08-27 00:00:00', 'SMA Negeri 80', 'Jl. Sunter Karya Selatan V No.80 Jakarta Utara', '64716130', 'Tanjung Priok', '64716130', '', NULL, 24),
('0025', '2023-08-27 00:00:00', 'SMA Negeri 83', 'Jl. Tipar Cakung Jakarta Utara', '4403010', 'Cilincing', '4403010', '', NULL, 25),
('0026', '2023-08-27 00:00:00', 'SMA Negeri 92', 'Jl. Asrama Pemadam Kebakaran Jakarta Utara Telp. 44832842', '', 'Cilincing', '', '', NULL, 26),
('0027', '2023-08-27 00:00:00', 'SMA Negeri 110', 'Jl. Bendungan Melayu Jakarta Utara Telp. 021-4350059', '', 'Koja', '', '', NULL, 27),
('0028', '2023-08-27 00:00:00', 'SMA Negeri 111', 'Jl. Bandengan Utara No. 80 Jakarta Utara Telp. 6611703', '', 'Penjaringan', '', '', NULL, 28),
('0029', '2023-08-27 00:00:00', 'SMA Negeri 114', 'Jl. Pedongkelan Jakarta Utara Telp. 4404611', '', 'Cilincing', '', '', NULL, 29),
('0030', '2023-08-27 00:00:00', 'SMA Negeri 115', 'Jl. Rorotan X Rorotan Jakarta Utara Telp. 44850555', '', 'Cilincing', '', '', NULL, 30),
('0031', '2023-08-27 00:00:00', 'SMA Negeri 2', 'Jl. Gajah Mada 175 Jakarta Barat Telp. 6294318', '', 'Taman Sari', '', '', NULL, 31),
('0032', '2023-08-27 00:00:00', 'SMA Negeri 16', 'Jl. Belibis Terusan No. 16 Jakarta Barat Telp. 5320137', '', 'Palmerah', '', '', NULL, 32),
('0033', '2023-08-27 00:00:00', 'SMA Negeri 17', 'Jl. Blandongan No. 27 Jakarta Barat Telp. 6493216', '', 'Taman Sari', '', '', NULL, 33),
('0034', '2023-08-27 00:00:00', 'SMA Negeri 19', 'Jl. Perniagaan No. 31 Jakarta  Barat Telp. 6902830', '', 'Tambora', '', '', NULL, 34),
('0035', '2023-08-28 00:00:00', 'SMA Negeri 3 Jakarta', 'Jl. Taman Setia Budi II, Kuningan, Kec. Setia Budi, Jakarta 12910\r\nTel', '', 'Setia Budi', '', '', NULL, 35),
('0036', '2023-08-28 00:00:00', 'SMA Negeri 6 Jakarta', 'Jl. Mahakam 1 Blok C No. 2, Kec. Kebayoran Baru, Jakarta 12130\r\nTelepo', '', 'Kebayoran Baru', '', '', NULL, 36),
('0037', '2023-08-28 00:00:00', 'SMA Negeri 8 Jakarta', 'Jl. Taman Bukit Duri, Kec. Tebet, Jakarta 12840\r\nTelepon: (021) 829545', '', 'Tebet', '', '', NULL, 37),
('0038', '2023-08-28 00:00:00', 'SMA Negeri 26 Jakarta', 'Jl. Tebet Barat IV, Tebet Barat, Kec. Tebet, Jakarta 12810\r\nTelepon: (', '', 'Tebet', '', '', NULL, 38),
('0039', '2023-08-28 00:00:00', 'SMA Negeri 28 Jakarta', 'Jl. Raya Ragunan, Jati Padang, Kec. Pasar Minggu, Jakarta 12540\r\nTelep', '', 'Pasar Minggu', '', '', NULL, 39),
('0040', '2023-08-28 00:00:00', 'SMA Negeri 29 Jakarta', 'Jl. Kramat No. 6, Kebayoran Lama Utara, Kec. Kebayoran Lama, Jakarta 1', '', 'Kebayoran Lama', '', '', NULL, 40),
('0041', '2023-08-28 00:00:00', 'SMA Negeri 32 Jakarta', 'Jl. Panjang Komp. Setneg Baru Cidodol, Grogol Selatan, Kec. Kebayoran ', '', 'Kebayoran Lama', '', '', NULL, 41),
('0042', '2023-08-28 00:00:00', 'SMA Negeri 34 Jakarta', '\r\nJl. Margasatwa Raya No. 1, Pondok Labu, Kec. Cilandak, Jakarta 12450', '', 'Cilandak', '', '', NULL, 42),
('0043', '2023-08-28 00:00:00', 'SMA Negeri 37 Jakarta', 'Jl. H No. 40, Kebon Baru, Kec. Tebet, Jakarta 12830\r\nTelepon: (021) 82', '', 'Tebet', '', '', NULL, 43),
('0044', '2023-08-28 00:00:00', 'SMA Negeri 38 Jakarta', 'Jl. Raya Lenteng Agung, Kec. Jagakarsa, Jakarta 12620\r\nTelepon: (021) ', '', 'Jagakarsa', '', '', NULL, 44),
('0045', '2023-08-28 00:00:00', 'SMA Negeri 43 Jakarta', 'Jl. Minangkabau Dalam, Menteng Atas, Kec. Setia Budi, Jakarta 12960\r\nT', '', 'Setia Budi', '', '', NULL, 45),
('0046', '2023-08-28 00:00:00', 'SMA Negeri 46 Jakarta', 'Jl. Masjid Darrusalam Blok A No. 23-25, Gandaria Utara, Kec. Kebayoran', '', 'Kebayoran Baru', '', '', NULL, 46),
('0047', '2023-08-28 00:00:00', 'SMA Negeri 47 Jakarta', 'Jl. Delman Utara I, Kec. Kebayoran Lama, Jakarta 12240\r\nTelepon: (021)', '', 'Kebayoran Lama', '', '', NULL, 47),
('0048', '2023-08-28 00:00:00', 'SMA Negeri 49 Jakarta', 'Jl. Pepaya No. 9, Kec. Jagakarsa, Jakarta 12620\r\nTelepon: (021) 727016', '', 'Jagakarsa', '', '', NULL, 48),
('0049', '2023-08-28 00:00:00', 'SMA Negeri 55 Jakarta', 'Jl. Minyak Raya, Duren Tiga, Kec. Pancoran, Jakarta 12760\r\nTelepon: (0', '', 'Pancoran', '', '', NULL, 49),
('0050', '2023-08-28 00:00:00', 'SMA Negeri 60 Jakarta', 'Jl. Kemang Timur I No. 6, Bangka, Kec. Mampang Prapatan, Jakarta 12730', '', 'Mampang Prapatan', '', '', NULL, 50),
('0051', '2023-08-28 00:00:00', 'SMA Negeri 63 Jakarta', 'Jl. AMD Manunggal V/57, Petukangan Utara, Kec. Pesanggrahan, Jakarta 1', '', 'Pesanggrahan', '', '', NULL, 51),
('0052', '2023-08-28 00:00:00', 'SMA Negeri 66 Jakarta', 'Jl. Bango III, Pondok Labu, Kec. Cilandak, Jakarta 12450\r\nTelepon: (02', '', 'Cilandak', '', '', NULL, 52),
('0053', '2023-08-28 00:00:00', 'SMA Negeri 70 Jakarta', '\r\nJl. Bulungan Blok C/1, Kramat Pela, Kec. Kebayoran Baru, Jakarta 121', '', 'Kebayoran Baru', '', '', NULL, 53),
('0054', '2023-08-28 00:00:00', 'SMA Negeri 74 Jakarta', 'Jl. Dharma Putra XI, Kec. Kebayoran Lama, Jakarta 12240\r\nTelepon: (021', '', 'Kebayoran Lama', '', '', NULL, 54),
('0055', '2023-08-28 00:00:00', 'SMA Negeri 79 Jakarta', 'Jl. Menteng Pulo Ujung, Menteng Atas, Kec. Setia Budi, Jakarta 12960\r\n', '', 'Setia Budi', '', '', NULL, 55),
('0056', '2023-08-28 00:00:00', 'SMA Negeri 82 Jakarta', 'Jl. Daha II No. 15A, Kec. Kebayoran Baru, Jakarta 12110\r\nTelepon: (021', '', 'Kebayoran Baru', '', '', NULL, 56),
('0057', '2023-08-28 00:00:00', 'SMA Negeri 86 Jakarta ', 'Jl. Bintaro Permai IV No. 36, Bintaro, Kec. Pesanggrahan, Jakarta 1233', '', 'Pesanggrahan', '', '', NULL, 57),
('0058', '2023-08-28 00:00:00', 'SMA Negeri 87 Jakarta', 'Jl. Mawar II, Bintaro, Kec. Pesanggrahan, Jakarta 12330\r\nTelepon: (021', '', 'Pesanggrahan', '', '', NULL, 58),
('0059', '2023-08-28 00:00:00', 'SMA Negeri 90 Jakarta', 'Jl. Sabar, Petukangan Selatan, Kec. Pesanggrahan, Jakarta 12270\r\nTelep', '', 'Pesanggrahan', '', '', NULL, 59),
('0060', '2023-08-28 00:00:00', 'SMA Negeri 97 Jakarta', 'Jl. Brigif 2, Ciganjur, Kec. Jagakarsa, Jakarta 12630\r\nTelepon: (021) ', '', 'Jagakarsa', '', '', NULL, 60),
('0061', '2023-08-28 00:00:00', 'SMA Negeri 108 Jakarta', 'Jl. Kesadaran Ulujami Raya, Kec. Pesanggrahan, Jakarta 12320\r\nTelepon:', '', 'Pesanggrahan', '', '', NULL, 61),
('0062', '2023-08-28 00:00:00', 'SMA Negeri 109 Jakarta', 'Jl. Gardu No. 31, Srengseng Sawah, Kec. Jagakarsa, Jakarta 12630\r\nTele', '', 'Jagakarsa', '', '', NULL, 62),
('0063', '2023-08-28 00:00:00', 'SMA Negeri Ragunan Jakart', 'Jl. Komp. GOR Ragunan, Kec. Pasar Minggu, Jakarta 12550\r\nTelepon: (021', '', 'Pasar Minggu', '', '', NULL, 63),
('0064', '0000-00-00 00:00:00', 'SMK Negeri 5 Jakarta', 'Jl. Pisangan Baru Timur 7, Pisangan Baru, Kec. Matraman, Jakarta 13110', NULL, 'Kec. Matraman', NULL, 'smkn5jkt.com', NULL, 64),
('0065', '2023-09-24 05:51:31', 'SMK Negeri 7 Jakarta', 'Jl. Tenggiri No. 1 Jati Jakarta 13220', ' ', 'Pulo Gadung', ' ', NULL, NULL, 65),
('0066', '2023-09-24 05:51:31', 'SMK Negeri 10 Jakarta', 'Jl. SMEA 6 Mayjend Sutoyo Cawang', ' (021) 8091773', 'Kramat Jati', ' (021) 8091773', NULL, NULL, 66),
('0067', '2023-09-24 05:51:31', 'SMK Negeri 22 Jakarta', 'Jl. Raya Condet Gedong Jakarta 13760', ' (021) 8400901', 'Pasar Rebo', ' (021) 8400901', NULL, NULL, 67),
('0068', '2023-09-24 05:51:31', 'SMK Negeri 24 Jakarta', 'Jl. Bambu Hitam Bambu Apus Jakarta 13890', ' (021) 8441976', 'Cipayung', ' (021) 8441976', NULL, NULL, 68),
('0069', '2023-09-24 05:51:31', 'SMK Negeri 26 Jakarta', 'Jl. Balai Pustaka Baru 1 Rawamangun Jakarta 13220', ' (021) 4720310', 'Pulo Gadung', ' (021) 4720310', NULL, NULL, 69),
('0070', '2023-09-24 05:51:31', 'SMK Negeri 40 Jakarta', 'Jl. Nanas 2 Utan Kayu Utara Jakarta 13120', ' (021) 8563329', 'Matraman', ' (021) 8563329', NULL, NULL, 70),
('0071', '2023-09-24 05:51:31', 'SMK Negeri 46 Jakarta', 'Jl. B7 Cipinang Pulo Cipinang Besar Utara Jakarta 13410', ' (021) 8195127', 'Jatinegara', ' (021) 8195127', NULL, NULL, 71),
('0072', '2023-09-24 05:51:31', 'SMK Negeri 48 Jakarta', 'Jl. Raden Inten 2 No. 3 Klender Jakarta 13470', ' (021) 8006204', 'Duren Sawit', ' (021) 8006204', NULL, NULL, 72),
('0073', '2023-09-24 05:51:31', 'SMK Negeri 50 Jakarta', 'Jl. Cipinang Muara 1 Cipinang Muara Jakarta 13420', ' (021) 8194466', 'Jatinegara', ' (021) 8194466', NULL, NULL, 73),
('0074', '2023-09-24 05:51:31', 'SMK Negeri 51 Jakarta', 'Jl. SMEA 33  SMIK Bambu Apus Jakarta 13890', ' (021) 29824771', 'Cipayung', ' (021) 29824771', NULL, NULL, 74),
('0075', '2023-09-24 05:51:31', 'SMK Negeri 52 Jakarta', 'Jl. Taruna Jaya Cibubur Jakarta 13720', ' (021) 8732519', 'Ciracas', ' (021) 8732519', NULL, NULL, 75),
('0076', '2023-09-24 05:51:31', 'SMK Negeri 58 Jakarta', 'Jl. SMIK Bambu Apus Jakarta 13890', ' (021) 8446304', 'Cipayung', ' (021) 8446304', NULL, NULL, 76),
('0077', '2023-09-24 05:51:31', 'SMK Negeri 64 Jakarta', 'Jl. Telaga Pekayon Jakarta 13710', ' 082213808616', 'Pasar Rebo', ' 082213808616', NULL, NULL, 77),
('0078', '2023-09-24 05:51:31', 'SMK Negeri 65 Jakarta', 'Jl. IPN Cipinang Besar Selatan Jakarta 13410', '', 'Jatinegara', '', NULL, NULL, 78),
('0079', '2023-09-24 05:51:31', 'SMK Negeri 66 Jakarta', 'Jl. SPG 7/Jl. Al Baidho Lubang Buaya Jakarta 13810', '', 'Cipayung', '', NULL, NULL, 79),
('0080', '2023-09-24 05:51:31', 'SMK Negeri 67 Jakarta', 'Jl. Telaga Pekayon Jakarta 13710', ' (021) 22327958', 'Pasar Rebo', ' (021) 22327958', NULL, NULL, 80),
('0081', '2023-09-24 05:51:31', 'SMK Negeri 68 Jakarta', 'Jl. Penganten Ali Jakarta 13740', '', 'Ciracas', ' ', NULL, NULL, 81),
('0082', '2023-09-24 05:51:31', 'SMK Negeri 69 Jakarta', 'Jl. Swadaya Rawabadung Jatinegara Jakarta 13930', ' 08118104666', 'Cakung', ' 08118104666', NULL, NULL, 82),
('0083', '2023-09-24 05:51:31', 'SMK Negeri 70 Jakarta', 'Jl. Tipar Kav. DKI Pondok Kelapa Jakarta 13450', ' (021) 94123641', 'Duren Sawit', ' (021) 94123641', NULL, NULL, 83),
('0084', '2023-09-24 05:51:31', 'SMK Negeri 71 Jakarta', 'Jl. Rajiman Widyodiningrat Jatinegara Jakarta 13930', '', 'Cakung', '', NULL, NULL, 84),
('0085', '2023-09-24 05:51:31', 'SMK Negeri 4 Jakarta', 'Jl. Rorotan VI No. 1 Rorotan Jakarta 14140', ' (021) 44850035', 'Cilincing', ' (021) 44850035', NULL, NULL, 85),
('0086', '2023-09-24 05:51:31', 'SMK Negeri 12 Jakarta', 'Jl. Kebon Bawang 15 Jakarta 14320', ' (021) 43913815', 'Tanjung Priok', ' (021) 43913815', NULL, NULL, 86),
('0087', '2023-09-24 05:51:31', 'SMK Negeri 23 Jakarta', 'Jl. Pademangan Timur III/9 Jakarta 14410', ' (021) 64714260', 'Pademangan', ' (021) 64714260', NULL, NULL, 87),
('0088', '2023-09-24 05:51:31', 'SMK Negeri 33 Jakarta', 'Jl. Gading Mas Timur 2 Pegangsaan Dua Jakarta 14250', ' (021) 4521568', 'Kelapa Gading', ' (021) 4521568', NULL, NULL, 88),
('0089', '2023-09-24 05:51:31', 'SMK Negeri 36 Jakarta', 'Jl. Baru Kosambi III Kalibaru Jakarta 14110', ' (021) 4401523', 'Cilincing', ' (021) 4401523', NULL, NULL, 89),
('0090', '2023-09-24 05:51:31', 'SMK Negeri 49 Jakarta', 'Jl. Sarang Bango No. 1 Marunda Jakarta 14150', ' (021) 44851079', 'Cilincing', ' (021) 44851079', NULL, NULL, 90),
('0091', '2023-09-24 05:51:31', 'SMK Negeri 55 Jakarta', 'Jl. Pademangan Timur VII Jakarta 14410', ' (021) 6412787', 'Pademangan', ' (021) 6412787', NULL, NULL, 91),
('0092', '2023-09-24 05:51:31', 'SMK Negeri 56 Jakarta', 'Jl. Pluit Raya Timur No. 1 Jakarta 14450', ' (021) 6602880', 'Penjaringan', ' (021) 6602880', NULL, NULL, 92),
('0093', '2023-09-24 05:51:31', 'SMK Negeri 9 Jakarta', 'Jl. Gedong Panjang II No. 17 Pekojan Jakarta 11240', ' (021) 6925936', 'Tambora', ' (021) 6925936', NULL, NULL, 93),
('0094', '2023-09-24 05:51:31', 'SMK Negeri 11 Jakarta', 'Jl. Pinangsia I No. 20 Pinangsia Jakarta 11110', ' (021) 6253261', 'Taman Sari', ' (021) 6253261', NULL, NULL, 94),
('0095', '2023-09-24 05:51:31', 'SMK Negeri 13 Jakarta', 'Jl. Rawa Belong II-E Jakarta 11480', ' (021) 5492970', 'Palmerah', ' (021) 5492970', NULL, NULL, 95),
('0096', '2023-09-24 05:51:31', 'SMK Negeri 17 Jakarta', 'Jl. G Slipi Jakarta 11410', ' (021) 5484134', 'Palmerah', ' (021) 5484134', NULL, NULL, 96),
('0097', '2023-09-24 05:51:31', 'SMK Negeri 35 Jakarta', 'Jl. Kerajinan No. 42 Krukut 11140', ' (021) 6343146', 'Taman Sari', ' (021) 6343146', NULL, NULL, 97),
('0098', '2023-09-24 05:51:31', 'SMK Negeri 42 Jakarta', 'Jl. Kamal Raya No. 2 Cengkareng Timur Jakarta 11730', ' (021) 6190365', 'Cengkareng', ' (021) 6190365', NULL, NULL, 98),
('0099', '2023-09-24 05:51:31', 'SMK Negeri 45 Jakarta', 'Jl. KPBD Sukabumi Selatan Jakarta 11560', ' (021) 5480075', 'Kebon Jeruk', ' (021) 5480075', NULL, NULL, 99),
('0100', '2023-09-24 05:51:31', 'SMK Negeri 53 Jakarta', 'Jl. Flamboyan No. 50a Jakarta 11730', ' (021) 29511482', 'Taman Sari', ' (021) 29511482', NULL, NULL, 100),
('0101', '2023-09-24 05:51:31', 'SMK Negeri 60 Jakarta', 'Jl. Duri Raya No. 15A Duri Kepa Jakarta 11510', ' (021) 56960049', 'Kebon Jeruk', ' (021) 56960049', NULL, NULL, 101),
('0102', '2023-09-24 05:51:31', 'SMK Negeri 72 Jakarta', 'Jl. Kayu Besar Bulak Jati No. 18 Cengkareng Barat Jakarta 11820', '', 'Cengkareng', '', NULL, NULL, 102),
('0103', '2023-09-24 05:51:31', 'SMK Negeri 73 Jakarta', 'Jl. Bangun Nusa Raya Cengkareng Timur Jakarta 11730', '', 'Cengkareng', '', NULL, NULL, 103),
('0104', '2023-09-24 05:51:31', 'SMK Negeri 6 Jakarta', 'Jl. Prof. Joko Sutono SH No. 2A Melawai Jakarta 12160', ' (021) 7208718', 'Kebayoran Baru', ' (021) 7208718', NULL, NULL, 104),
('0105', '2023-09-24 05:51:31', 'SMK Negeri 8 Jakarta', 'Jl. Raya Pejaten Pejaten Barat Jakarta 12510', ' (021) 7996493', 'Pasar Minggu', ' (021) 7996493', NULL, NULL, 105),
('0106', '2023-09-24 05:51:31', 'SMK Negeri 15 Jakarta', 'Jl. Mataram No. 1 Selong Jakarta 12110', ' (021) 7243559', 'Kebayoran Baru', ' (021) 7243559', NULL, NULL, 106),
('0107', '2023-09-24 05:51:31', 'SMK Negeri 18 Jakarta', 'Jl. Ciputat Raya Komp. Bank Mandiri Pondok Pinang Jakarta 12310', ' (021) 7513729', 'Kebayoran Lama', ' (021) 7513729', NULL, NULL, 107),
('0108', '2023-09-24 05:51:31', 'SMK Negeri 20 Jakarta', 'Jl. Melati No. 24 Cilandak Barat Jakarta 12430', ' (021) 7504162', 'Cilandak', ' (021) 7504162', NULL, NULL, 108),
('0109', '2023-09-24 05:51:31', 'SMK Negeri 25 Jakarta', 'Jl. Raya Ragunan Jati Padang Jakarta 12540', ' (021) 7805695', 'Pasar Minggu', ' (021) 7805695', NULL, NULL, 109),
('0110', '2023-09-24 05:51:31', 'SMK Negeri 28 Jakarta', 'Jl. Maritim No. 26 Cilandak Barat Jakarta 12430', ' (021) 7692004', 'Cilandak', ' (021) 7692004', NULL, NULL, 110),
('0111', '2023-09-24 05:51:31', 'SMK Negeri 29 Jakarta', 'Jl. Prof. Joko Sutono SH No. 1 Petogogan Jakarta 12170', ' (021) 7222471', 'Kebayoran Baru', ' (021) 7222471', NULL, NULL, 111),
('0112', '2023-09-24 05:51:31', 'SMK Negeri 30 Jakarta', 'Jl. Pakubuwono VI Gunung Jakarta 12120', ' (021) 7221253', 'Kebayoran Baru', ' (021) 7221253', NULL, NULL, 112),
('0113', '2023-09-24 05:51:31', 'SMK Negeri 32 Jakarta', 'Jl. Tebet Dalam IV No. 1 Tebet Barat Jakarta 12810', ' (021) 8290165', 'Tebet', ' (021) 8290165', NULL, NULL, 113),
('0114', '2023-09-24 05:51:31', 'SMK Negeri 37 Jakarta', 'Jl. Pertanian III Jakarta 12520', ' (021) 7805787', 'Pasar Minggu', ' (021) 7805787', NULL, NULL, 114),
('0115', '2023-09-24 05:51:31', 'SMK Negeri 41 Jakarta', 'Jl. Komp. Timah Pondok Labu Jakarta 12450', ' (021) 7512190', 'Cilandak', ' (021) 7512190', NULL, NULL, 115),
('0116', '2023-09-24 05:51:31', 'SMK Negeri 43 Jakarta', 'Jl. Cipulir I Cipulir Jakarta 12230', ' (021) 7257532', 'Kebayoran Lama', ' (021) 7257532', NULL, NULL, 116),
('0117', '2023-09-24 05:51:31', 'SMK Negeri 47 Jakarta', 'Jl. Raya Condet Pejaten Pejaten Barat Jakarta 12510', ' (021) 7995116', 'Pasar Minggu', ' (021) 7995116', NULL, NULL, 117),
('0118', '2023-09-24 05:51:31', 'SMK Negeri 57 Jakarta', 'Jl. Taman Margasatwa No. 38 B Jati Padang Jakarta 12540', ' (021) 7805396', 'Pasar Minggu', ' (021) 7805396', NULL, NULL, 118),
('0119', '2023-09-24 05:51:31', 'SMK Negeri 59 Jakarta', 'Jl. Peninggaran Barat I Kebayoran Lama Utara Jakarta 12240', ' (021) 7292899', 'Kebayoran Lama', ' (021) 7292899', NULL, NULL, 119),
('0120', '2023-09-24 05:51:31', 'SMK Negeri 62 Jakarta', 'Jl. Camat Gabun II Lenteng Agung Jakarta 12610', ' (021) 78888116', 'Jagakarsa', ' (021) 78888116', NULL, NULL, 120),
('0121', '2023-09-24 05:51:31', 'SMK Negeri 63 Jakarta', 'Jl. Aselih No. 100 Cipedak Jakarta 12630', ' (021) 7270419', 'Jagakarsa', ' (021) 7270419', NULL, NULL, 121),
('0122', '2023-09-24 05:51:31', 'SMA Negeri 1 Bekasi', 'Jl. H. Agus Salim No. 181 Bekasi 17112', ' (021) 8802538', 'Bekasi Timur', ' (021) 8802538', NULL, NULL, 122),
('0123', '2023-09-24 05:51:31', 'SMA Negeri 2 Bekasi', 'Jl. Tangkuban Perahu No. 1 Perumnas 2 Bekasi 17144', ' (021) 8843280', 'Bekasi Selatan', ' (021) 8843280', NULL, NULL, 123),
('0124', '2023-09-24 05:51:31', 'SMA Negeri 3 Bekasi', 'Jl. Pulo Ribung Raya Taman Galaxi Indah Bekasi 17148', ' (021) 8202515', 'Bekasi Selatan', ' (021) 8202515', NULL, NULL, 124),
('0125', '2023-09-24 05:51:31', 'SMA Negeri 4 Bekasi', 'Jl. Cemara Permai Perumahan Harapan Jaya Bekasi 17124', ' (021) 8848720', 'Bekasi Utara', ' (021) 8848720', NULL, NULL, 125),
('0126', '2023-09-24 05:51:31', 'SMA Negeri 5 Bekasi', 'Jl. Gamprit Jatiwaringin Asri Bekasi 17411', ' (021) 8460810', 'Pondok Gede', ' (021) 8460810', NULL, NULL, 126),
('0127', '2023-09-24 05:51:31', 'SMA Negeri 6 Bekasi', 'Jl. Asri Lestari Raya Perumahan Pondok Mitra Lestari Bekasi 17423', ' (021) 8216704', 'Jatiasih', ' (021) 8216704', NULL, NULL, 127),
('0128', '2023-09-24 05:51:31', 'SMA Negeri 7 Bekasi', 'Jl. Lingkar Tata Kota No. 107 Bekasi 17433', ' (021) 8454056', 'Jatisampurna', ' (021) 8454056', NULL, NULL, 128),
('0129', '2023-09-24 05:51:31', 'SMA Negeri 8 Bekasi', 'Jl. Irigasi No. 1 Pekayon Jaya Bekasi 17148', ' (021) 82409416', 'Bekasi Selatan', ' (021) 82409416', NULL, NULL, 129),
('0130', '2023-09-24 05:51:31', 'SMA Negeri 9 Bekasi', 'Jl. Raya Legenda Bekasi 17158', ' (021) 82603374', 'Mustika Jaya', ' (021) 82603374', NULL, NULL, 130),
('0131', '2023-09-24 05:51:31', 'SMA Negeri 10 Bekasi', 'Jl. Flamboyan Raya Perum Harapan Indah Bekasi 17131', ' (021) 88975928', 'Medan Satria', ' (021) 88975928', NULL, NULL, 131),
('0132', '2023-09-24 05:51:31', 'SMA Negeri 11 Bekasi', 'Jl. Wibawa Mukti Komp Perwira Tinggi TNI-AU Bekasi 17426', ' (021) 70993351', 'Jatiasih', ' (021) 70993351', NULL, NULL, 132),
('0133', '2023-09-24 05:51:31', 'SMA Negeri 12 Bekasi', 'Jl. I Gusti Ngurah Rai Kranji Bekasi 17135', ' (021) 8850863', 'Bekasi Barat', ' (021) 8850863', NULL, NULL, 133),
('0134', '2023-09-24 05:51:31', 'SMA Negeri 13 Bekasi', 'Jl. Pariwisata Raya Perum Bekasi Baru Bekasi 17115', ' (021) 82409656', 'Rawalumbu', ' (021) 82409656', NULL, NULL, 134),
('0135', '2023-09-24 05:51:31', 'SMA Negeri 14 Bekasi', 'Jl. Ceri Raya Alinda Kencana Permai Kaliabang Tengah Bekasi 17125', ' (021) 88882062', 'Bekasi Utara', ' (021) 88882062', NULL, NULL, 135),
('0136', '2023-09-24 05:51:31', 'SMA Negeri 15 Bekasi', 'Jl. H. Open Ciketing Udik Bekasi 17153', ' (021) 8253627', 'Bantar Gebang', ' (021) 8253627', NULL, NULL, 136),
('0137', '2023-09-24 05:51:31', 'SMA Negeri 16 Bekasi', 'Jl. Arteri Tol JORR Jatimelati Bekasi 17415', ' (021) 84306875', 'Pondok Melati', ' (021) 84306875', NULL, NULL, 137),
('0138', '2023-09-24 05:51:31', 'SMA Negeri 17 Bekasi', 'Jl. H. Ilyas No. 17 Jaka Mulya Bekasi 17146', ' (021) 82400917', 'Bekasi Selatan', ' (021) 82400917', NULL, NULL, 138),
('0139', '2023-09-24 05:51:31', 'SMA Negeri 18 Bekasi', 'Jl. Kintamani No. 7 Aren Jaya Bekasi 17111', ' (021) 82653176', 'Bekasi Timur', ' (021) 82653176', NULL, NULL, 139),
('0140', '2023-09-24 05:51:31', 'SMA Negeri 19 Bekasi', 'Jl. Mawar Padurenan Bekasi', '', 'Mustika Jaya', '', NULL, NULL, 140),
('0141', '2023-09-24 05:51:31', 'SMA Negeri 20 Bekasi', 'Jl. Swadaya Ceger No. 42 Harapan Jaya Bekasi 17124', ' (021) 88388124', 'Bekasi Utara', ' (021) 88388124', NULL, NULL, 141),
('0142', '2023-09-24 05:51:31', 'SMA Negeri 21 Bekasi', 'Jl. Semeru 1 Jatimakmur Bekasi 17413', '', 'Pondok Gede', '', NULL, NULL, 142),
('0143', '2023-09-24 05:51:31', 'SMA Negeri 22 Bekasi', 'Jl. Rawa Tengah Cikiwul Bekasi 17152', '', 'Bantar Gebang', '', NULL, NULL, 143),
('0144', '2023-09-24 05:51:31', 'SMA Negeri 1 Depok', 'Jl. Nusantara Raya No. 137 Depok 16432', ' (021) 7520137', 'Pancoran Mas', ' (021) 7520137', NULL, NULL, 144),
('0145', '2023-09-24 05:51:31', 'SMA Negeri 2 Depok', 'Jl. Gede Raya No. 177 Depok 16417', ' (021) 7708359', 'Sukmajaya', ' (021) 7708359', NULL, NULL, 145),
('0146', '2023-09-24 05:51:31', 'SMA Negeri 3 Depok', 'Jl. Raden Saleh No. 45 Depok 16412', ' (021) 7700310', 'Sukmajaya', ' (021) 7700310', NULL, NULL, 146),
('0147', '2023-09-24 05:51:31', 'SMA Negeri 4 Depok', 'Jl. Jeruk Raya No. 1 Sukatani Depok 16454', ' (021) 8743464', 'Tapos', ' (021) 8743464', NULL, NULL, 147),
('0148', '2023-09-24 05:51:31', 'SMA Negeri 5 Depok', 'Perum Bukit Rivaria Sektor IV Depok 16519', ' (021) 8600092', 'Sawangan', ' (021) 8600092', NULL, NULL, 148),
('0149', '2023-09-24 05:51:31', 'SMA Negeri 6 Depok', 'Jl. Limo Raya No. 30 Depok 16514', ' (021) 7545041', 'Limo', ' (021) 7545041', NULL, NULL, 149),
('0150', '2023-09-24 05:51:31', 'SMA Negeri 7 Depok', 'Jl. Masjid Al-Amsir Leuwinanggung Depok 16456', ' (021) 70080777', 'Tapos', ' (021) 70080777', NULL, NULL, 150),
('0151', '2023-09-24 05:51:31', 'SMA Negeri 8 Depok', 'Jl. HM. Nasir No. 84 Depok 16415', ' (021) 87915148', 'Cilodong', ' (021) 87915148', NULL, NULL, 151),
('0152', '2023-09-24 05:51:31', 'SMA Negeri 9 Depok', 'Jl. Bali Perum Megapolitan Estate Depok 16514', ' (021) 7532555', 'Cinere', ' (021) 7532555', NULL, NULL, 152),
('0153', '2023-09-24 05:51:31', 'SMA Negeri 10 Depok', 'Jl. Raya Curug Depok 16517', ' (0251) 8617795', 'Bojongsari', ' (0251) 8617795', NULL, NULL, 153),
('0154', '2023-09-24 05:51:31', 'SMA Negeri 11 Depok', 'Jl. Kemang II No. 11A Depok 16412', ' (021) 77200224', 'Sukmajaya', ' (021) 77200224', NULL, NULL, 154),
('0155', '2023-09-24 05:51:31', 'SMA Negeri 12 Depok', 'Jl. Raya Cipayung Jaya No. 47 Depok 16437', ' (021) 77889102', 'Cipayung', ' (021) 77889102', NULL, NULL, 155),
('0156', '2023-09-24 05:51:31', 'SMA Negeri 13 Depok', 'Jl. Pedurenan Depok Depok 16452', ' (021) 22851004', 'Cimanggis', ' (021) 22851004', NULL, NULL, 156),
('0157', '2023-09-24 05:51:31', 'SMA Negeri 14 Depok', 'Jl. Mandar No. 30 Beji Timur Depok', ' (021) 7521957', 'Beji', ' (021) 7521957', NULL, NULL, 157),
('0158', '2023-09-24 05:51:31', 'SMA Negeri 15 Depok', 'Jl. Kampung Tipar Mekarsari Depok 16452', ' (021) 8729232', 'Cimanggis', ' (021) 8729232', NULL, NULL, 158),
('0159', '2023-09-24 05:51:31', 'SMA Negeri 1 Tangerang', 'Jl. Daan Mogot No. 50 Tangerang 15111', ' (021) 5523161', 'Tangerang', ' (021) 5523161', NULL, NULL, 159),
('0160', '2023-09-24 05:51:31', 'SMA Negeri 2 Tangerang', 'Jl. TMP Taruna Sukaasih Tangerang 15111', ' (021) 5524912', 'Tangerang', ' (021) 5524912', NULL, NULL, 160),
('0161', '2023-09-24 05:51:31', 'SMA Negeri 3 Tangerang', 'Jl. KH Hasyim Ashari No. 6 Tangerang 15151', ' (021) 7305758', 'Karang Tengah', ' (021) 7305758', NULL, NULL, 161),
('0162', '2023-09-24 05:51:31', 'SMA Negeri 4 Tangerang', 'Jl. Padasuka I Pabuaran Tumpeng Tangerang 15112', ' (021) 5520538', 'Karawaci', ' (021) 5520538', NULL, NULL, 162),
('0163', '2023-09-24 05:51:31', 'SMA Negeri 5 Tangerang', 'Jl. Ciujung Raya No. 3 Perumnas I Tangerang 15116', ' (021) 5520357', 'Karawaci', ' (021) 5520357', NULL, NULL, 163),
('0164', '2023-09-24 05:51:31', 'SMA Negeri 6 Tangerang', 'Jl. Nyimas Melati Tangerang 15121', ' (021) 5587229', 'Neglasari', ' (021) 5587229', NULL, NULL, 164),
('0165', '2023-09-24 05:51:31', 'SMA Negeri 7 Tangerang', 'Jl. Perintis Kemerdekaan I No. 2 Tangerang 15118', ' (021) 5531642', 'Tangerang', ' (021) 5531642', NULL, NULL, 165),
('0166', '2023-09-24 05:51:31', 'SMA Negeri 8 Tangerang', 'Jl. Besi Raya Perumnas II Tangerang 15138', ' (021) 55657434', 'Cibodas', ' (021) 55657434', NULL, NULL, 166),
('0167', '2023-09-24 05:51:31', 'SMA Negeri 9 Tangerang', 'Jl. H. Jali No. 9 Tangerang 15144', ' (021) 70285041', 'Pinang', ' (021) 70285041', NULL, NULL, 167),
('0168', '2023-09-24 05:51:31', 'SMA Negeri 10 Tangerang', 'Jl. KH Hasyim Ashari Kp. Sasak Tangerang 15122', ' (021) 70600202', 'Cipondoh', ' (021) 70600202', NULL, NULL, 168),
('0169', '2023-09-24 05:51:31', 'SMA Negeri 11 Tangerang', 'Jl. Jend. Gatot Subroto KM 68 Jatake', ' (021) 5915543', 'Jatiuwung', ' (021) 5915543', NULL, NULL, 169),
('0170', '2023-09-24 05:51:31', 'SMA Negeri 12 Tangerang', 'Jl. HOS Cokroaminoto Larangan Utara Tangerang 15154', ' (021) 73458340', 'Larangan', ' (021) 73458340', NULL, NULL, 170),
('0171', '2023-09-24 05:51:31', 'SMA Negeri 13 Tangerang', 'Jl. HOS Cokroaminoto Komp. Griya Kencana 2 Tangerang 15151', ' 082110680397 (WA)', 'Ciledug', ' 082110680397 (WA)', NULL, NULL, 171),
('0172', '2023-09-24 05:51:31', 'SMA Negeri 14 Tangerang', 'Jl. Pembangunan I Darussalam II Batusari', ' (021) 5531735', 'Batuceper', ' (021) 5531735', NULL, NULL, 172),
('0173', '2023-09-24 05:51:31', 'SMA Negeri 15 Tangerang', 'Jl. Villa Tangerang Indah Tangerang 15131', ' (021) 5513466', 'Periuk', ' (021) 5513466', NULL, NULL, 173),
('0174', '2023-09-24 05:51:31', 'SMA Negeri 1 Tangerang Selatan', 'Jl. Pendidikan No. 49 Tangerang Selatan 15411', ' (021) 7401602', 'Ciputat', ' (021) 7401602', NULL, NULL, 174),
('0175', '2023-09-24 05:51:31', 'SMA Negeri 2 Tangerang Selatan', 'Jl. Raya Serpong Puspitek Muncul Tangerang Selatan 15314', ' (021) 7560956', 'Setu', ' (021) 7560956', NULL, NULL, 175),
('0176', '2023-09-24 05:51:31', 'SMA Negeri 3 Tangerang Selatan', 'Jl. Benda Timur XI Komp. Pamulang Permai 2 Tangerang Selatan 15416', ' (021) 74633772', 'Pamulang', ' (021) 74633772', NULL, NULL, 176),
('0177', '2023-09-24 05:51:31', 'SMA Negeri 4 Tangerang Selatan', 'Jl. WR Supratman No. 1 Pondok Ranji Tangerang Selatan 15412', ' (021) 7423962', 'Ciputat Timur', ' (021) 7423962', NULL, NULL, 177),
('0178', '2023-09-24 05:51:31', 'SMA Negeri 5 Tangerang Selatan', 'Puri Bintaro Hijau Blok F IV Tangerang Selatan 15226', ' (021) 73461414', 'Pondok Aren', ' (021) 73461414', NULL, NULL, 178),
('0179', '2023-09-24 05:51:31', 'SMA Negeri 6 Tangerang Selatan', 'Komp. Pamulang Permai I Tangerang Selatan 15417', ' (021) 7417023', 'Pamulang', ' (021) 7417023', NULL, NULL, 179),
('0180', '2023-09-24 05:51:31', 'SMA Negeri 7 Tangerang Selatan', 'Jl. Villa Melati Mas Raya No. 7 Pondok Jagung Tangerang Selatan 15323', ' (021) 5388818', 'Serpong Utara', ' (021) 5388818', NULL, NULL, 180),
('0181', '2023-09-24 05:51:31', 'SMA Negeri 8 Tangerang Selatan', 'Jl. Cirendeu Raya No. 5 Cirendeu', ' (021) 7445375', 'Ciputat Timur. Tangerang Selatan 15419', ' (021) 7445375', NULL, NULL, 181),
('0182', '2023-09-24 05:51:31', 'SMA Negeri 9 Tangerang Selatan', 'Jl. Hidup Baru No. 31 Serua Raya Tangerang Selatan 15414', ' (021) 74638445', 'Ciputat', ' (021) 74638445', NULL, NULL, 182),
('0183', '2023-09-24 05:51:31', 'SMA Negeri 10 Tangerang Selatan', 'Jl. Raya Tegal Rotan Bintaro Sektor 9 Tangerang 15413', ' (021) 74862423', 'Ciputat', ' (021) 74862423', NULL, NULL, 183),
('0184', '2023-09-24 05:51:31', 'SMA Negeri 11 Tangerang Selatan', 'Jl. Sumatea I Rawa Lele Jombang', ' (021) 74863119', 'Ciputat', ' (021) 74863119', NULL, NULL, 184),
('0185', '2023-09-24 05:51:31', 'SMA Negeri 12 Tangerang Selatan', 'Jl. Raya Cilenggang 1 Tangerang Selatan 15310', ' (021) 53161212', 'Serpong', ' (021) 53161212', NULL, NULL, 185),
('0186', '2023-09-24 05:51:31', 'SMA Negeri 1 Bogor', 'Jl. Ir. H. Juanda No. 16 Bogor 16122', ' (0251) 8321758', 'Bogor Tengah', ' (0251) 8321758', NULL, NULL, 186),
('0187', '2023-09-24 05:51:31', 'SMA Negeri 2 Bogor', 'Jl. Kranji Ujung No. 1 Budi Agung Bogor 16165', ' (0251) 8318761', 'Tanah Sareal', ' (0251) 8318761', NULL, NULL, 187),
('0188', '2023-09-24 05:51:31', 'SMA Negeri 3 Bogor', 'Jl. Pakuan No. 4 Baranangsiang Bogor 16143', ' (0251) 8321747', 'Bogor Timur', ' (0251) 8321747', NULL, NULL, 188),
('0189', '2023-09-24 05:51:31', 'SMA Negeri 4 Bogor', 'Jl. Dreded No. 36 Empang Bogor 16132', ' (0251) 8323951', 'Bogor Selatan', ' (0251) 8323951', NULL, NULL, 189),
('0190', '2023-09-24 05:51:31', 'SMA Negeri 5 Bogor', 'Jl. Manunggal No. 22 Menteng Bogor 16111', ' (0251) 8325688', 'Bogor Barat', ' (0251) 8325688', NULL, NULL, 190),
('0191', '2023-09-24 05:51:31', 'SMA Negeri 6 Bogor', 'Jl. Walet No. 13 Bogor 16161', ' (0251) 8331732', 'Tanah Sareal', ' (0251) 8331732', NULL, NULL, 191),
('0192', '2023-09-24 05:51:31', 'SMA Negeri 7 Bogor', 'Jl. Palupuh No. 7 Tegal Gundil Bogor 16152', ' (0251) 8326739', 'Bogor Utara', ' (0251) 8326739', NULL, NULL, 192),
('0193', '2023-09-24 05:51:31', 'SMA Negeri 8 Bogor', 'Jl. BTN Ciparigi No. 60 Ciparigi Bogor 16157', ' (0251) 8652927', 'Bogor Utara', ' (0251) 8652927', NULL, NULL, 193),
('0194', '2023-09-24 05:51:31', 'SMA Negeri 9 Bogor', 'Jl. Kartini No. 1 Ciwaringin Bogor 16114', ' (0251) 8324361', 'Bogor Tengah', ' (0251) 8324361', NULL, NULL, 194),
('0195', '2023-09-24 05:51:31', 'SMK Negeri 1 Depok', 'Jl. Bhakti Suci No. 100 Cimpaeun Depok 16959', ' (021) 87907233', 'Tapos', ' (021) 87907233', NULL, NULL, 195),
('0196', '2023-09-24 05:51:31', 'SMK Negeri 2 Depok', 'Jl. Abdul Wahab Sawangan Lama Depok 16517', ' (021) 8601593', 'Sawangan', ' (021) 8601593', NULL, NULL, 196),
('0197', '2023-09-24 05:51:31', 'SMK Negeri 3 Depok', 'Jl. Tabroni Kalimulya Depok 16413', ' 0895323114443', 'Ciloding', ' 0895323114443', NULL, NULL, 197),
('0198', '2023-09-24 05:51:31', 'SMK Negeri 4 Depok', 'Jl. Kramat No. 3 Sukatani Depok 16954', ' (021) 80453380', 'Tapos', ' (021) 80453380', NULL, NULL, 198),
('0199', '2023-09-24 05:51:31', 'SMK Negeri 1 Bogor', 'Jl. Heulang No. 6 Bogor 16161', ' (0251) 8334384', 'Tanah Sareal', ' (0251) 8334384', NULL, NULL, 199),
('0200', '2023-09-24 05:51:31', 'SMK Negeri 2 Bogor', 'Jl. Pangeran Sogiri No. 404 Tanah Baru Bogor 16154', ' (0251) 8652085', 'Bogor Utara', ' (0251) 8652085', NULL, NULL, 200),
('0201', '2023-09-24 05:51:31', 'SMK Negeri 3 Bogor', 'Jl. Raya Pajajaran No. 84 Bogor 16151', ' (0251) 8327120', 'Bogor Tengah', ' (0251) 8327120', NULL, NULL, 201),
('0202', '2023-09-24 05:51:31', 'SMK Negeri 4 Bogor', 'Jl. Raya Tajur Kp. Buntar Muarasari', ' (0251) 7547381', 'Bogor Selatan', ' (0251) 7547381', NULL, NULL, 202),
('0203', '2023-09-24 05:51:31', 'SMK Negeri 1 Tangerang', 'Jl. Perintis Kemerdekaan II Babakan Tangerang 15118', ' (021) 5522534', 'Tangerang', ' (021) 5522534', NULL, NULL, 203),
('0204', '2023-09-24 05:51:31', 'SMK Negeri 2 Tangerang', 'Jl. Veteran No. 2 Sukasari Tangerang 15118', ' (021) 5522736', 'Tangerang', ' (021) 5522736', NULL, NULL, 204),
('0205', '2023-09-24 05:51:31', 'SMK Negeri 3 Tangerang', 'Jl. Moh. Yamin Babakan Tangerang 15118', ' (021) 5521213', 'Tangerang', ' (021) 5521213', NULL, NULL, 205),
('0206', '2023-09-24 05:51:31', 'SMK Negeri 4 Tangerang', 'Jl. Veteran No. 1A Babakan Tangerang 15118', ' (021) 5523429', 'Tangerang', ' (021) 5523429', NULL, NULL, 206),
('0207', '2023-09-24 05:51:31', 'SMK Negeri 5 Tangerang', 'Jl. Tripraja No. 1 Panunggangan Utara Tangerang 15143', ' (021) 55780074', 'Pinang', ' (021) 55780074', NULL, NULL, 207),
('0208', '2023-09-24 05:51:31', 'SMK Negeri 6 Tangerang', 'Jl. AMD Manunggal X Kedaung Wetan Tangerang 15128', ' (021) 55726324', 'Neglasari', ' (021) 55726324', NULL, NULL, 208),
('0209', '2023-09-24 05:51:31', 'SMK Negeri 7 Tangerang', 'Jl. Sangego Raya Pintu Air 10 Koang Jaya Tangerang 15112', ' (021) 5539970', 'Karawaci', ' (021) 5539970', NULL, NULL, 209),
('0210', '2023-09-24 05:51:31', 'SMK Negeri 8 Tangerang', 'Jl. H. Djasirin No. 4 Jatiuwung Tangerang 15138', ' (021) 55655616', 'Cibodas', ' (021) 55655616', NULL, NULL, 210),
('0211', '2023-09-24 05:51:31', 'SMK Negeri 9 Tangerang', 'Jl. Villa Tangerang Regency Sangiang Gebang Raya Tangerang 15132', ' (021) 5587475', 'Periuk', ' (021) 5587475', NULL, NULL, 211),
('0212', '2023-09-24 05:51:31', 'SMK Negeri 1 Tangerang Selatan', 'Jl. Raya Ciater Ciater Tangerang Selatan 15310', ' (021) 75872366', 'Serpong', ' (021) 75872366', NULL, NULL, 212),
('0213', '2023-09-24 05:51:31', 'SMK Negeri 2 Tangerang Selatan', 'Jl. Raya Pondok Aren No. 52 Tangerang Selatan 15224', ' (021) 7319996', 'Pondok Aren', ' (021) 7319996', NULL, NULL, 213),
('0214', '2023-09-24 05:51:31', 'SMK Negeri 3 Tangerang Selatan', 'Jl. Raya Puspitek Perum Puri Serpong 1 Tangerang Selatan 15343', ' (021) 29435151', 'Setu', ' (021) 29435151', NULL, NULL, 214),
('0215', '2023-09-24 05:51:31', 'SMK Negeri 4 Tangerang Selatan', 'Jl. Sumatera Tidore Jombang Tangerang Selatan 15414', ' 0895321171444', 'Ciputat', ' 0895321171444', NULL, NULL, 215),
('0216', '2023-09-24 05:51:31', 'SMK Negeri 5 Tangerang Selatan', 'Jl. Benda Barat 7 No. 31 Pondok Benda Tangerang Selatan 15416', ' (021) 7406229', 'Pamulang', ' (021) 7406229', NULL, NULL, 216),
('0217', '2023-09-24 05:51:31', 'SMK Negeri 6 Tangerang Selatan', 'Jl. Griya Asri No. 7 Jelupang Tangerang Selatan 15323', ' 087772000701', 'Serpong Utara', ' 087772000701', NULL, NULL, 217),
('0218', '2023-09-24 05:51:31', 'SMK Negeri 7 Tangerang Selatan', 'Jl. Cempaka 3 Rengas Tangerang Selatan 15444', ' 081295839086', 'Ciputat Timur', ' 081295839086', NULL, NULL, 218),
('0219', '2023-09-24 05:51:31', 'SMK Negeri 1 Depok', 'Jl. Bhakti Suci No. 100 Cimpaeun Depok 16959', ' (021) 87907233', 'Tapos', ' (021) 87907233', NULL, NULL, 219),
('0220', '2023-09-24 05:51:31', 'SMK Negeri 2 Depok', 'Jl. Abdul Wahab Sawangan Lama Depok 16517', ' (021) 8601593', 'Sawangan', ' (021) 8601593', NULL, NULL, 220),
('0221', '2023-09-24 05:51:31', 'SMK Negeri 3 Depok', 'Jl. Tabroni Kalimulya Depok 16413', ' 0895323114443', 'Ciloding', ' 0895323114443', NULL, NULL, 221),
('0222', '2023-09-24 05:51:31', 'SMK Negeri 4 Depok', 'Jl. Kramat No. 3 Sukatani Depok 16954', ' (021) 80453380', 'Tapos', ' (021) 80453380', NULL, NULL, 222),
('0223', '2023-09-24 05:51:31', 'SMK Negeri 1 Bekasi', 'Jl. Bintara VIII No. 2 Bintara Bekasi 17134', ' (021) 88951151', 'Bekasi Barat', ' (021) 88951151', NULL, NULL, 223),
('0224', '2023-09-24 05:51:31', 'SMK Negeri 2 Bekasi', 'Jl. Lap Bola Rawa Butun Ciketing Udik Bekasi 17153', ' (021) 82483479', 'Bantar Gebang', ' (021) 82483479', NULL, NULL, 224),
('0225', '2023-09-24 05:51:31', 'SMK Negeri 3 Bekasi', 'Perum Mutiara Gading Timur Blok L5 No. 1 Mustika Jaya Bekasi 17158', ' (021) 82616466', 'Mustika Jaya', ' (021) 82616466', NULL, NULL, 225),
('0226', '2023-09-24 05:51:31', 'SMK Negeri 4 Bekasi', 'Jl. Gandaria Kranggan Wetan Jatirangga', ' (021) 29064472', 'Jati Sampurna', ' (021) 29064472', NULL, NULL, 226),
('0227', '2023-09-24 05:51:31', 'SMK Negeri 5 Bekasi', 'Perum Villa Indah Permai Blok E 27 Teluk Pucung Bekasi 17121', ' (021) 88986203', 'Bekasi Utara', ' (021) 88986203', NULL, NULL, 227),
('0228', '2023-09-24 05:51:31', 'SMK Negeri 6 Bekasi', 'Jl. Kusuma Utara X Perum Wisma Jaya No. 169 Duren Jaya', ' (021) 88350006', 'Bekasi Timur', ' (021) 88350006', NULL, NULL, 228),
('0229', '2023-09-24 05:51:31', 'SMK Negeri 7 Bekasi', 'Jl. Perumahan Asabri Indah Jatisari Bekasi 17426', ' (021) 29377135', 'Jati Asih', ' (021) 29377135', NULL, NULL, 229),
('0230', '2023-09-24 05:51:31', 'SMK Negeri 8 Bekasi', 'Jl. Bojong Asih No. 11 Bojong Rawa Lumbu Bekasi 17116', ' (021) 82436199', 'Rawa Lumbu', ' (021) 82436199', NULL, NULL, 230),
('0231', '2023-09-24 05:51:31', 'SMK Negeri 9 Bekasi', 'Jl. Cikunir Raya Gg. H. Abas Jaka Mulya Bekasi 17146', ' (021) 82436175', 'Bekasi Selatan', ' (021) 82436175', NULL, NULL, 231),
('0232', '2023-09-24 05:51:31', 'SMK Negeri 10 Bekasi', 'Jl. Servas Jatimelati Bekasi 17414', ' (021) 21284911', 'Pondok Melati', ' (021) 21284911', NULL, NULL, 232),
('0233', '2023-09-24 05:51:31', 'SMK Negeri 11 Bekasi', 'Jl. Mutiara Raya No. 81A Perum Bulak Macan Permai Harapan Jaya', ' (021) 29286271', 'Bekasi Utara', ' (021) 29286271', NULL, NULL, 233),
('0234', '2023-09-24 05:51:31', 'SMK Negeri 12 Bekasi', 'Jl. Kemang Sari IV Jatibening Baru Bekasi 17412', ' (021) 85501773', 'Pondok Gede', ' (021) 85501773', NULL, NULL, 234),
('0235', '2023-09-24 05:51:31', 'SMK Negeri 13 Bekasi', 'Jl. Gunung Perahu No. 255 Harapan Jaya Bekasi 17124', ' 081808302020', 'Bekasi Utara', ' 081808302020', NULL, NULL, 235),
('0236', '2023-09-24 05:51:31', 'SMK Negeri 14 Bekasi', 'Jl. Pulo Kalimanggis Jatikarya Bekasi 17435', ' (021) 28676287', 'Jati Sampurna', ' (021) 28676287', NULL, NULL, 236),
('0237', '2023-09-24 05:51:31', 'SMK Negeri 15 Bekasi', 'Jl. Kelapa Dua Padurenan Bekasi 17156', ' (021) 85504415', 'Mustika Jaya', ' (021) 85504415', NULL, NULL, 237),
('0238', '2023-09-24 05:51:31', 'SMP Negeri 1', 'Jl. Cikini Raya No. 87 Cikini Menteng', '3.19E+07', '', '3.19E+07', NULL, NULL, 238),
('0239', '2023-09-24 05:51:31', 'SMP Negeri 10', 'Jl. Sumur Batu Sumur Batu Kemayoran', '2.14E+08', '', '2.14E+08', NULL, NULL, 239),
('0240', '2023-09-24 05:51:31', 'SMP Negeri 100', 'Jl. Obsidian No. 1 Kapuk Cengkareng', '021. 6195170', '', '021. 6195170', NULL, NULL, 240),
('0241', '2023-09-24 05:51:31', 'SMP Negeri 101', 'Jl. Palmerah Utara II/210 C Palmerah Palmerah', '021-5481510', '', '021-5481510', NULL, NULL, 241),
('0242', '2023-09-24 05:51:31', 'SMP Negeri 102', 'Jl. Sederhana Raya Cijantung II Gedong Pasar Rebo', '8401794', '', '8401794', NULL, NULL, 242),
('0243', '2023-09-24 05:51:31', 'SMP Negeri 103', 'Jl. RA. Fadilah Cijantung Cijantung Pasar Rebo', '8400005', '', '8400005', NULL, NULL, 243),
('0244', '2023-09-24 05:51:31', 'SMP Negeri 104', 'Jl. Mampang Prapatan XIII Tegal Parang Mampang Prapatan', '7990565', '', '7990565', NULL, NULL, 244),
('0245', '2023-09-24 05:51:31', 'SMP Negeri 105', 'Jl. Raya Kembangan Selatan No. 54 Kembangan Selatan Kembangan', '021-58901059', '', '021-58901059', NULL, NULL, 245),
('0246', '2023-09-24 05:51:31', 'SMP Negeri 106', 'Jl. H. Baping No. 28 Ciracas Ciracas', '8412710', '', '8412710', NULL, NULL, 246),
('0247', '2023-09-24 05:51:31', 'SMP Negeri 107', 'Jl. Raya Pejaten barat Pejaten Barat Pasar Minggu', '7990977', '', '7990977', NULL, NULL, 247),
('0248', '2023-09-24 05:51:31', 'SMP Negeri 108', 'Jl. Flamboyan No. 53 Cengkareng Barat Cengkareng', '5550754', '', '5550754', NULL, NULL, 248),
('0249', '2023-09-24 05:51:31', 'SMP Negeri 109', 'Jl. Kesehatan No.105 Cipinang Melayu Makasar', '8.66E+07', '', '8.66E+07', NULL, NULL, 249),
('0250', '2023-09-24 05:51:31', 'SMP Negeri 11', 'Jl. Kerinci VII Blok E Gunung Kebayoran Baru', '2.17E+08', '', '2.17E+08', NULL, NULL, 250),
('0251', '2023-09-24 05:51:31', 'SMP Negeri 110', 'Jl. Kemajuan Pesanggrahan Pesanggrahan', '021-7342288', '', '021-7342288', NULL, NULL, 251),
('0252', '2023-09-24 05:51:31', 'SMP Negeri 111', 'Jl. Bhakti VII/2 Kemanggisan Palmerah', '021-5482423', '', '021-5482423', NULL, NULL, 252),
('0253', '2023-09-24 05:51:31', 'SMP Negeri 112', 'Jl. Al Teluk Gong Pejagalan Pejagalan Penjaringan', '6630332', '', '6630332', NULL, NULL, 253),
('0254', '2023-09-24 05:51:31', 'SMP Negeri 113', 'Jl. Kampung Bandan Ancol Pademangan', '6909030', '', '6909030', NULL, NULL, 254),
('0255', '2023-09-24 05:51:31', 'SMP Negeri 114', 'Jl. H.M. Darpi No. 2 Plumpang Semper Tugu Utara K o j a', '(021) 43936225', '', '(021) 43936225', NULL, NULL, 255),
('0256', '2023-09-24 05:51:31', 'SMP Negeri 115', 'Jl. Tebet Utara III/K.H Abdullah Syafei Tebet Timur T e b e t', '2.18E+08', '', '2.18E+08', NULL, NULL, 256),
('0257', '2023-09-24 05:51:31', 'SMP Negeri 116', 'Jl.Sunter Permai Raya Sunter Agung Sunter Agung Tanjung Priok', '6408125', '', '6408125', NULL, NULL, 257),
('0258', '2023-09-24 05:51:31', 'SMP Negeri 117', 'Jl. Pahlawan Revolusi Pondok Bambu Duren Sawit', '8610050', '', '8610050', NULL, NULL, 258),
('0259', '2023-09-24 05:51:31', 'SMP Negeri 118', 'JL. PRAMUKASARI I NO. 19 Rawasari Cempaka Putih', '4245169, 4228154', '', '4245169, 4228154', NULL, NULL, 259),
('0260', '2023-09-24 05:51:31', 'SMP Negeri 119', 'Jl. Harapan Jaya IX No. 5 Cempaka Baru Kemayoran', '4245304', '', '4245304', NULL, NULL, 260),
('0261', '2023-09-24 05:51:31', 'SMP Negeri 12', 'Jl. Wijaya IX / 50 Melawai Kebayoran Baru', '021-7208095', '', '021-7208095', NULL, NULL, 261),
('0262', '2023-09-24 05:51:31', 'SMP Negeri 120', 'Jl. Kamal Muara Raya No. 9 Kamal Muara Penjaringan', '5557952', '', '5557952', NULL, NULL, 262),
('0263', '2023-09-24 05:51:31', 'SMP Negeri 121', 'Jl. Plumpang Semper No.20 Tugu Selatan K o j a', '021-43930682', '', '021-43930682', NULL, NULL, 263),
('0264', '2023-09-24 05:51:31', 'SMP Negeri 122', 'Jl. SMP 122 No. 26 Kapuk Muara Penjaringan', '7.03E+07', '', '7.03E+07', NULL, NULL, 264),
('0265', '2023-09-24 05:51:31', 'SMP Negeri 123', 'Jl. Kelapa Gading I Komplek PT. HII Kelapa Gading Timur Kelapa Gading', '4525929', '', '4525929', NULL, NULL, 265),
('0266', '2023-09-24 05:51:31', 'SMP Negeri 124', 'Jl. Kemang Timur I/5 Bangka Mampang Prapatan', '7988101', '', '7988101', NULL, NULL, 266),
('0267', '2023-09-24 05:51:31', 'SMP Negeri 125', 'Jl. Utan Jati Pegadungan Kalideres', '5417532', '', '5417532', NULL, NULL, 267),
('0268', '2023-09-24 05:51:31', 'SMP Negeri 126', 'Jl. SMP 126 Batu Ampar Kramat Jati', '8094151', '', '8094151', NULL, NULL, 268),
('0269', '2023-09-24 05:51:31', 'SMP Negeri 127', 'Jl. Raya Kebon Jeruk No. 126A Kebon Jeruk Kebon Jeruk', '5480114', '', '5480114', NULL, NULL, 269),
('0270', '2023-09-24 05:51:31', 'SMP Negeri 128', 'Jl. Herkules Komplek Skadron Halim Perdana Kusumah Makasar', '2.18E+08', '', '2.18E+08', NULL, NULL, 270),
('0271', '2023-09-24 05:51:31', 'SMP Negeri 129', 'Jl. Warakas VI Papanggo Tanjung Priok', '4.39E+07', '', '4.39E+07', NULL, NULL, 271),
('0272', '2023-09-24 05:51:31', 'SMP Negeri 13', 'Jl. Tirtayasa Raya Blok O/1 Melawai Kebayoran Baru', '021-7262939', '', '021-7262939', NULL, NULL, 272),
('0273', '2023-09-24 05:51:31', 'SMP Negeri 130', 'Jl. KS. Tubun I Kota Bambu Utara Kota Bambu Utara Palmerah', '2.16E+09', '', '2.16E+09', NULL, NULL, 273),
('0274', '2023-09-24 05:51:31', 'SMP Negeri 131', 'Jl. R.M. Kahfi I No. 50 Cipedak Jagakarsa', '7270218', '', '7270218', NULL, NULL, 274),
('0275', '2023-09-24 05:51:31', 'SMP Negeri 131 Terbuka', 'Jl. R.M. Kahfi I No. 50 Cipedak Jagakarsa', '7270218', '', '7270218', NULL, NULL, 275),
('0276', '2023-09-24 05:51:31', 'SMP Negeri 132', 'Jl. Tawangmangu No.2 Kedaung Kali Angke Cengkareng', '2.16E+08', '', '2.16E+08', NULL, NULL, 276),
('0277', '2023-09-24 05:51:31', 'SMP Negeri 133', 'Pulau Pramuka Pulau Panggang Kepulauan Seribu Utara', '021-34228517', '', '021-34228517', NULL, NULL, 277),
('0278', '2023-09-24 05:51:31', 'SMP Negeri 134', 'Jl. Taman Maruya Ilir Blok A No. 18 Meruya Utara Kembangan', '5842449', '', '5842449', NULL, NULL, 278),
('0279', '2023-09-24 05:51:31', 'SMP Negeri 135', 'Jl. Teluk Palu No. 35 Pondok Bambu Duren Sawit', '021-8617871', '', '021-8617871', NULL, NULL, 279),
('0280', '2023-09-24 05:51:31', 'SMP Negeri 136', 'Jl. Bendungan Melayu No. 80 Tugu Selatan K o j a', '4.39E+07', '', '4.39E+07', NULL, NULL, 280),
('0281', '2023-09-24 05:51:31', 'SMP Negeri 137', 'Jl. Cemp. Putih Barat No. 15/26 Cempaka Putih Barat Cempaka Putih', '4244612', '', '4244612', NULL, NULL, 281),
('0282', '2023-09-24 05:51:31', 'SMP Negeri 138', 'Jl. Pahlawan Komarudin Cakung Jak-tim Pulo Gebang Cakung', '4608257', '', '4608257', NULL, NULL, 282),
('0283', '2023-09-24 05:51:31', 'SMP Negeri 138 Terbuka', 'Jl. Pahlawan Komaruddin Pulo Gebang Cakung', '4608257', '', '4608257', NULL, NULL, 283),
('0284', '2023-09-24 05:51:31', 'SMP Negeri 139', 'Jl. Bunga Rampai X Malaka Jaya Duren Sawit', '8622390', '', '8622390', NULL, NULL, 284),
('0285', '2023-09-24 05:51:31', 'SMP Negeri 14', 'Jl. Matrman Raya No. 177 Bali Mester Jatinegara', '2.18E+08', '', '2.18E+08', NULL, NULL, 285),
('0286', '2023-09-24 05:51:31', 'SMP Negeri 140', 'Jl. Komp. Sekneg Blok A. Sunter Agung Tanjung Priok', '6459389', '', '6459389', NULL, NULL, 286),
('0287', '2023-09-24 05:51:31', 'SMP Negeri 141', 'Jl. Pondok Jaya VIII/15 B Pela Mampang Mampang Prapatan', '7192868', '', '7192868', NULL, NULL, 287),
('0288', '2023-09-24 05:51:31', 'SMP Negeri 141 Terbuka', 'Jl. Pondok Jaya VIII/15B Pela Mampang Mampang Prapatan', '7192868', '', '7192868', NULL, NULL, 288),
('0289', '2023-09-24 05:51:31', 'SMP Negeri 142', 'Jl. Joglo Raya Kembangan Joglo Kembangan', '5844666', '', '5844666', NULL, NULL, 289),
('0290', '2023-09-24 05:51:31', 'SMP Negeri 143', 'Jl. Cilincing Bakti IX Cilincing Cilincing', '4402004', '', '4402004', NULL, NULL, 290),
('0291', '2023-09-24 05:51:31', 'SMP Negeri 144', 'Jl. Raya Bekasi Km. 23 Cakung Cakung Barat Cakung', '021 - 4617313', '', '021 - 4617313', NULL, NULL, 291),
('0292', '2023-09-24 05:51:31', 'SMP Negeri 145', 'Jl. Menteng Pulo Ujung Menteng Atas Setia Budi', '021 8298205', '', '021 8298205', NULL, NULL, 292),
('0293', '2023-09-24 05:51:31', 'SMP Negeri 146', 'Jl. Balai Rakyat Ujung Menteng Cakung', '4612295', '', '4612295', NULL, NULL, 293),
('0294', '2023-09-24 05:51:31', 'SMP Negeri 147', 'Jl. Jambore Cibubur Cibubur Ciracas', '8719292', '', '8719292', NULL, NULL, 294),
('0295', '2023-09-24 05:51:31', 'SMP Negeri 148', 'Jl. BB. I. Cipinang Muara Cipinang Muara Jatinegara', '8199585', '', '8199585', NULL, NULL, 295),
('0296', '2023-09-24 05:51:31', 'SMP Negeri 149', 'Jl. Cipinang Besar Selatan Cipinang Besar Selatan Jatinegara', '8506210', '', '8506210', NULL, NULL, 296),
('0297', '2023-09-24 05:51:31', 'SMP Negeri 15', 'Jl. Prof. Supomo Menteng Menteng Dalam T e b e t', '8312669', '', '8312669', NULL, NULL, 297),
('0298', '2023-09-24 05:51:31', 'SMP Negeri 150', 'Jl. Batu Tumbuh VII Kramat Jati Kramat Jati', '2.18E+08', '', '2.18E+08', NULL, NULL, 298),
('0299', '2023-09-24 05:51:31', 'SMP Negeri 151', 'Jl. Kepil No.1 . Perumpel II Rawa Badak Selatan K o j a', '4303682', '', '4303682', NULL, NULL, 299),
('0300', '2023-09-24 05:51:31', 'SMP Negeri 152', 'Jl. Sunter Jaya IV Sunter Jaya Tanjung Priok', '6507186', '', '6507186', NULL, NULL, 300),
('0301', '2023-09-24 05:51:31', 'SMP Negeri 153', 'Jl. Panjang Cidodol No. 1 Grogol Selatan Kebayoran Lama', '7394260', '', '7394260', NULL, NULL, 301),
('0302', '2023-09-24 05:51:31', 'SMP Negeri 154', 'Jl. Pengadengan Brt XIII No. 46 Pengadegan Pancoran', '7991643', '', '7991643', NULL, NULL, 302),
('0303', '2023-09-24 05:51:31', 'SMP Negeri 155', 'Jl. Cikoko Barat IV Cikoko Pancoran', '7987400', '', '7987400', NULL, NULL, 303),
('0304', '2023-09-24 05:51:31', 'SMP Negeri 156', 'Jl. Kramat Pulo Gundul III No. 4 Johar Baru Johar Baru', '2.14E+08', '', '2.14E+08', NULL, NULL, 304),
('0305', '2023-09-24 05:51:31', 'SMP Negeri 157', 'Jl. Al Baidho Lubang Buaya Cipayung', '8404810', '', '8404810', NULL, NULL, 305),
('0306', '2023-09-24 05:51:31', 'SMP Negeri 158', 'Jl. TB.Badarudin Jatinegara Kaum Pulo Gadung', '4721772', '', '4721772', NULL, NULL, 306),
('0307', '2023-09-24 05:51:31', 'SMP Negeri 158 Terbuka', 'Jl. TB. Badaruddin Jatinegara Kaum Pulo Gadung', '021 4721772', '', '021 4721772', NULL, NULL, 307),
('0308', '2023-09-24 05:51:31', 'SMP Negeri 159', 'Jl. Jembatan Besi Raya No. 24 Jembatan Besi Tambora', '(021)6302655', '', '(021)6302655', NULL, NULL, 308),
('0309', '2023-09-24 05:51:31', 'SMP Negeri 16', 'Jl. Palmerah Barat 59 Grogol Utara Kebayoran Lama', '5483415', '', '5483415', NULL, NULL, 309);
INSERT INTO `pelanggan` (`kode`, `tgldaftar`, `nama`, `alamat`, `telepon`, `kecamatan`, `nohp`, `url`, `peta_lokasi`, `no`) VALUES
('0310', '2023-09-24 05:51:31', 'SMP Negeri 160', 'Jl. SMP 160 TMII Ceger Cipayung', '8441330', '', '8441330', NULL, NULL, 310),
('0311', '2023-09-24 05:51:31', 'SMP Negeri 161', 'Jl. Delman Utama I Kebayoran Lama Utara Kebayoran Lama', '7247127', '', '7247127', NULL, NULL, 311),
('0312', '2023-09-24 05:51:31', 'SMP Negeri 162', 'Jl. Marunda Baru IV No. 1 Marunda Cilincing', '4.49E+07', '', '4.49E+07', NULL, NULL, 312),
('0313', '2023-09-24 05:51:31', 'SMP Negeri 162 Terbuka', 'Jl. Marunda Baru IV No. 1 Marunda Cilincing', '2.14E+09', '', '2.14E+09', NULL, NULL, 313),
('0314', '2023-09-24 05:51:31', 'SMP Negeri 163', 'Jl. Empang III Pejaten Timur Pasar Minggu', '7994079', '', '7994079', NULL, NULL, 314),
('0315', '2023-09-24 05:51:31', 'SMP Negeri 164', 'Jl. Darma Putra Raya No. 10 Kebayoran Lama Selatan Kebayoran Lama', '7260333', '', '7260333', NULL, NULL, 315),
('0316', '2023-09-24 05:51:31', 'SMP Negeri 165', 'Jl. Balai Rakyat III No.16 Pondok Bambu Duren Sawit', '8614106', '', '8614106', NULL, NULL, 316),
('0317', '2023-09-24 05:51:31', 'SMP Negeri 166', 'Jl. Kedondong Jagakarsa Jagakarsa', '2.17E+08', '', '2.17E+08', NULL, NULL, 317),
('0318', '2023-09-24 05:51:31', 'SMP Negeri 167', 'Jl. Lingkar Duren Sawit Duren Sawit Duren Sawit', '8620641', '', '8620641', NULL, NULL, 318),
('0319', '2023-09-24 05:51:31', 'SMP Negeri 168', 'Jl. P. Komarudin Buaran Cakung Cakung Barat Cakung', '4610680', '', '4610680', NULL, NULL, 319),
('0320', '2023-09-24 05:51:31', 'SMP Negeri 169', 'Jl. Peta Utara Pegadungan Pegadungan Kalideres', '2.16E+08', '', '2.16E+08', NULL, NULL, 320),
('0321', '2023-09-24 05:51:31', 'SMP Negeri 17', 'Jl. Karang Anyar 9 - 14 Karang Anyar Sawah Besar', '021 - 6390329', '', '021 - 6390329', NULL, NULL, 321),
('0322', '2023-09-24 05:51:31', 'SMP Negeri 170', 'Jl. Kepu Pegangsaan Dua No. 17 Pegangsaan Dua Kelapa Gading', '4602817', '', '4602817', NULL, NULL, 322),
('0323', '2023-09-24 05:51:31', 'SMP Negeri 171', 'Jl. H. Baping Rambutan Ciracas', '2.18E+08', '', '2.18E+08', NULL, NULL, 323),
('0324', '2023-09-24 05:51:31', 'SMP Negeri 172', 'Jl. Stasiun Cakung Pulo Gebang Cakung', '4805079', '', '4805079', NULL, NULL, 324),
('0325', '2023-09-24 05:51:31', 'SMP Negeri 173', 'Jl. Alur Laut No. 57 Rawa Badak Utara K o j a', '4303610', '', '4303610', NULL, NULL, 325),
('0326', '2023-09-24 05:51:31', 'SMP Negeri 174', 'Jl. H. Baping Susukan Ciracas', '021-8411005', '', '021-8411005', NULL, NULL, 326),
('0327', '2023-09-24 05:51:31', 'SMP Negeri 175', 'Jl. Kebagusan Wates Jagakarsa Jagakarsa', '7811978', '', '7811978', NULL, NULL, 327),
('0328', '2023-09-24 05:51:31', 'SMP Negeri 176', 'Jl. Raya Duri Kosambi Duri Kosambi Cengkareng', '021-5415850', '', '021-5415850', NULL, NULL, 328),
('0329', '2023-09-24 05:51:31', 'SMP Negeri 177', 'Jl. Raya Kodam Bintaro Pesanggrahan Pesanggrahan', '021-7355975/73889246', '', '021-7355975/73889246', NULL, NULL, 329),
('0330', '2023-09-24 05:51:31', 'SMP Negeri 178', 'Jl. Mawar No. 6 Bintaro Bintaro Pesanggrahan', '021 - 73883370', '', '021 - 73883370', NULL, NULL, 330),
('0331', '2023-09-24 05:51:31', 'SMP Negeri 179', 'Jl. Kalisari Kalisari Pasar Rebo', '8711073', '', '8711073', NULL, NULL, 331),
('0332', '2023-09-24 05:51:31', 'SMP Negeri 179 Terbuka', 'Jl. Kalisari Kalisari Pasar Rebo', '8711073', '', '8711073', NULL, NULL, 332),
('0333', '2023-09-24 05:51:31', 'SMP Negeri 18', 'Jl. Menteng No. 3 Kebon Sirih Menteng', '3193556', '', '3193556', NULL, NULL, 333),
('0334', '2023-09-24 05:51:31', 'SMP Negeri 180', 'Jl. Bambu Wulung Bambu Apus Cipayung', '8441501', '', '8441501', NULL, NULL, 334),
('0335', '2023-09-24 05:51:31', 'SMP Negeri 181', 'Jl. Masjid I No.5 Karet Tengsin Tanah Abang', '5738060', '', '5738060', NULL, NULL, 335),
('0336', '2023-09-24 05:51:31', 'SMP Negeri 182', 'Jl. Kalibata Timur I Kalibata Pancoran', '7994641', '', '7994641', NULL, NULL, 336),
('0337', '2023-09-24 05:51:31', 'SMP Negeri 183', 'Jl. Cempaka Baru VII No. 47 Cempaka Baru Kemayoran', '4245884', '', '4245884', NULL, NULL, 337),
('0338', '2023-09-24 05:51:31', 'SMP Negeri 184', 'Jl. Lapan Pekayon Pasar Rebo', '021 8711341', '', '021 8711341', NULL, NULL, 338),
('0339', '2023-09-24 05:51:31', 'SMP Negeri 185', 'Jl. Kemandoran I Grogol Utara Grogol Utara Kebayoran Lama', '5307631', '', '5307631', NULL, NULL, 339),
('0340', '2023-09-24 05:51:31', 'SMP Negeri 186', 'Jl. Peta Barat Kalideres Kalideres Kalideres', '5412241/29405763', '', '5412241/29405763', NULL, NULL, 340),
('0341', '2023-09-24 05:51:31', 'SMP Negeri 187', 'Jl. Gaga Utama Semanan Kalideres', '021 5455859', '', '021 5455859', NULL, NULL, 341),
('0342', '2023-09-24 05:51:31', 'SMP Negeri 188', 'Jl. Tanah Merdeka Rambutan Ciracas', '2.18E+08', '', '2.18E+08', NULL, NULL, 342),
('0343', '2023-09-24 05:51:31', 'SMP Negeri 189', 'Jl. H. Rausin No.89 Kelapa Dua Kebon Jeruk', '5300625', '', '5300625', NULL, NULL, 343),
('0344', '2023-09-24 05:51:31', 'SMP Negeri 19', 'Jl. Bumi Blok E No. 21 Gunung Kebayoran Baru', '021-7250219', '', '021-7250219', NULL, NULL, 344),
('0345', '2023-09-24 05:51:31', 'SMP Negeri 190', 'Jl. Prepedan Kamal Kamal Kalideres', '021 5552419', '', '021 5552419', NULL, NULL, 345),
('0346', '2023-09-24 05:51:31', 'SMP Negeri 190 Terbuka', 'Jl. Prepedan Kamal Kamal Kalideres', '021 5552419', '', '021 5552419', NULL, NULL, 346),
('0347', '2023-09-24 05:51:31', 'SMP Negeri 191', 'Jl. Duta Raya No. 2 Duri Kepa Kebon Jeruk', '(021) 5659736', '', '(021) 5659736', NULL, NULL, 347),
('0348', '2023-09-24 05:51:31', 'SMP Negeri 192', 'Jl. Kramat IV No.100 Lubang Buaya Cipayung', '8467464', '', '8467464', NULL, NULL, 348),
('0349', '2023-09-24 05:51:31', 'SMP Negeri 193', 'Jl. Irigasi Ujung Menteng Cakung', '2.15E+08', '', '2.15E+08', NULL, NULL, 349),
('0350', '2023-09-24 05:51:31', 'SMP Negeri 194', 'Jl. Pendidikan Komp. IKIP IX Duren Sawit Duren Sawit', '021-8628255', '', '021-8628255', NULL, NULL, 350),
('0351', '2023-09-24 05:51:31', 'SMP Negeri 195', 'Jl. Sawah Barat Duren Sawit 48 Duren Sawit Duren Sawit', '2.19E+08', '', '2.19E+08', NULL, NULL, 351),
('0352', '2023-09-24 05:51:31', 'SMP Negeri 196', 'Jl. Mabes TNI Pondok Ranggon Cipayung', '8441985', '', '8441985', NULL, NULL, 352),
('0353', '2023-09-24 05:51:31', 'SMP Negeri 197', 'Jl. Raya Kedoya Utara No.100 Kedoya Utara Kebon Jeruk', '5801793', '', '5801793', NULL, NULL, 353),
('0354', '2023-09-24 05:51:31', 'SMP Negeri 198', 'Jl. Pertanian Klender Klender Duren Sawit', '8616425', '', '8616425', NULL, NULL, 354),
('0355', '2023-09-24 05:51:31', 'SMP Negeri 199', 'Jl. Arabika VIII Blok AC3 Pondok Kopi Duren Sawit', '021-8624937', '', '021-8624937', NULL, NULL, 355),
('0356', '2023-09-24 05:51:31', 'SMP Negeri 2', 'Jl. Mardani Raya Johar Baru Johar Baru', '4243788', '', '4243788', NULL, NULL, 356),
('0357', '2023-09-24 05:51:31', 'SMP Negeri 20', 'Jl. Komp. Bulak Rantai Kramat Jati Kramat Jati', '7.09E+07', '', '7.09E+07', NULL, NULL, 357),
('0358', '2023-09-24 05:51:31', 'SMP Negeri 20 Terbuka', 'Jl. Rantai Mas KPAD Bulak Rantai Kampung Tengah Kramat Jati', '7.09E+07', '', '7.09E+07', NULL, NULL, 358),
('0359', '2023-09-24 05:51:31', 'SMP Negeri 200', 'Jl. Rorotan IX No. 2 Rorotan Cilincing', '4.49E+07', '', '4.49E+07', NULL, NULL, 359),
('0360', '2023-09-24 05:51:31', 'SMP Negeri 201', 'Jl. Kayu Besar Cengkareng Timur Cengkareng', '(021) 5553675', '', '(021) 5553675', NULL, NULL, 360),
('0361', '2023-09-24 05:51:31', 'SMP Negeri 202', 'Jl. Buluh Perindu IV/I Duren Sawit Duren Sawit', '8612292', '', '8612292', NULL, NULL, 361),
('0362', '2023-09-24 05:51:31', 'SMP Negeri 203', 'Jl. Raya Kalisari - LAPAN Kalisari Pasar Rebo', '8707228', '', '8707228', NULL, NULL, 362),
('0363', '2023-09-24 05:51:31', 'SMP Negeri 204', 'Jl. Peta Utara Pegadungan Pegadungan Kalideres', '5450436', '', '5450436', NULL, NULL, 363),
('0364', '2023-09-24 05:51:31', 'SMP Negeri 205', 'Jl. Semanan Raya No. 2 Semanan Kalideres', '021 5446287', '', '021 5446287', NULL, NULL, 364),
('0365', '2023-09-24 05:51:31', 'SMP Negeri 206', 'Jl. Meruya Selatan Meruya Selatan Kembangan', '5850137', '', '5850137', NULL, NULL, 365),
('0366', '2023-09-24 05:51:31', 'SMP Negeri 207', 'Jl. Raya Maruya Utara Rt.07/02 Meruya Srengseng Kembangan', '2.16E+08', '', '2.16E+08', NULL, NULL, 366),
('0367', '2023-09-24 05:51:31', 'SMP Negeri 208', 'Jl. Raya Centex Ciracas Ciracas', '8411088', '', '8411088', NULL, NULL, 367),
('0368', '2023-09-24 05:51:31', 'SMP Negeri 209', 'Jl. Pelita Kampung Tengah Kramat Jati', '8009013', '', '8009013', NULL, NULL, 368),
('0369', '2023-09-24 05:51:31', 'SMP Negeri 21', 'Jl. Bandengan Utara 80 Penjaringan Penjaringan', '6691850', '', '6691850', NULL, NULL, 369),
('0370', '2023-09-24 05:51:31', 'SMP Negeri 210', 'Jl. Raya Centex Ciracas Ciracas', '8411183', '', '8411183', NULL, NULL, 370),
('0371', '2023-09-24 05:51:31', 'SMP Negeri 211', 'Jl. Srengseng Sawah Srengseng Sawah Jagakarsa', '7270204', '', '7270204', NULL, NULL, 371),
('0372', '2023-09-24 05:51:31', 'SMP Negeri 212', 'Jl. Benda Atas Cilandak timur Pejaten Timur Pasar Minggu', '7800417', '', '7800417', NULL, NULL, 372),
('0373', '2023-09-24 05:51:31', 'SMP Negeri 213', 'Jl. Malaka I Perlum. Klender Malaka Sari Duren Sawit', '8621548', '', '8621548', NULL, NULL, 373),
('0374', '2023-09-24 05:51:31', 'SMP Negeri 214', 'Jl. Rajawali Halim Perdana Kusumah Makasar', '2.18E+08', '', '2.18E+08', NULL, NULL, 374),
('0375', '2023-09-24 05:51:31', 'SMP Negeri 215', 'Jl. Melati Taman Maruya Ilir Blok B Meruya Utara Kembangan', '5850391', '', '5850391', NULL, NULL, 375),
('0376', '2023-09-24 05:51:31', 'SMP Negeri 216', 'Jl. Salemba Raya No. 18 Kenari S e n e n', '3.19E+07', '', '3.19E+07', NULL, NULL, 376),
('0377', '2023-09-24 05:51:31', 'SMP Negeri 216 Terbuka', 'Jl. Salemba Raya No. 18 Kenari S e n e n', '3.19E+07', '', '3.19E+07', NULL, NULL, 377),
('0378', '2023-09-24 05:51:31', 'SMP Negeri 217', 'Jl. Gongseng Raya Baru Pasar Rebo', '8401389', '', '8401389', NULL, NULL, 378),
('0379', '2023-09-24 05:51:31', 'SMP Negeri 218', 'Jl. Manara Jati Padang Jati Padang Pasar Minggu', '7807305', '', '7807305', NULL, NULL, 379),
('0380', '2023-09-24 05:51:31', 'SMP Negeri 219', 'Jl. Raya Joglo Komp.Pemadam Kebakaran Joglo Kembangan', '2.16E+08', '', '2.16E+08', NULL, NULL, 380),
('0381', '2023-09-24 05:51:31', 'SMP Negeri 22', 'Jl. Jembatan Batu No. 74 Pinangsia Taman Sari', '6269841', '', '6269841', NULL, NULL, 381),
('0382', '2023-09-24 05:51:31', 'SMP Negeri 220', 'Jl. Mangga I Duri Kepa Kebon Jeruk', '5687919', '', '5687919', NULL, NULL, 382),
('0383', '2023-09-24 05:51:31', 'SMP Negeri 221', 'Jl. Sunter Karya Selatan Sunter Agung Tanjung Priok', '021-6458213', '', '021-6458213', NULL, NULL, 383),
('0384', '2023-09-24 05:51:31', 'SMP Negeri 222', 'Jl. Raya Ceger TMII Ceger Cipayung', '021-8445662', '', '021-8445662', NULL, NULL, 384),
('0385', '2023-09-24 05:51:31', 'SMP Negeri 223', 'Jl. Surilang No. 6 Gedong Pasar Rebo', '8403316', '', '8403316', NULL, NULL, 385),
('0386', '2023-09-24 05:51:31', 'SMP Negeri 224', 'Jl. SMPN 224 Kebon Duaratus Kamal Kalideres', '5560202', '', '5560202', NULL, NULL, 386),
('0387', '2023-09-24 05:51:31', 'SMP Negeri 225', 'Jl. Warung Gantung Kp. Kojan Kalideres Kalideres Kalideres', '2.15E+08', '', '2.15E+08', NULL, NULL, 387),
('0388', '2023-09-24 05:51:31', 'SMP Negeri 226', 'Jl. Kayu Kapur No. 2 Pondok Labu Cilandak', '7501270', '', '7501270', NULL, NULL, 388),
('0389', '2023-09-24 05:51:31', 'SMP Negeri 227', 'Jl. Mesjid Al Fajri Pejaten Barat Pasar Minggu', '7971338', '', '7971338', NULL, NULL, 389),
('0390', '2023-09-24 05:51:31', 'SMP Negeri 228', 'Jl. Sumur Batu Raya No. 6 Sumur Batu Kemayoran', '4202430', '', '4202430', NULL, NULL, 390),
('0391', '2023-09-24 05:51:31', 'SMP Negeri 229', 'Jl. Raya Kebon Jeruk NO. 39 Kebon Jeruk Kebon Jeruk', '5303652', '', '5303652', NULL, NULL, 391),
('0392', '2023-09-24 05:51:31', 'SMP Negeri 23', 'Jl. Pademangan Timur VI Pademangan Timur Pademangan', '6.47E+07', '', '6.47E+07', NULL, NULL, 392),
('0393', '2023-09-24 05:51:31', 'SMP Negeri 230', 'Jl. TPU - Pondok Ranggon Pondok Ranggon Cipayung', '021-8440283', '', '021-8440283', NULL, NULL, 393),
('0394', '2023-09-24 05:51:31', 'SMP Negeri 231', 'Jl. Raya Tugu Semper Semper Barat Cilincing', '4400643', '', '4400643', NULL, NULL, 394),
('0395', '2023-09-24 05:51:31', 'SMP Negeri 232', 'Jl. Gading Raya No. 16 Pisangan Timur Pulo Gadung', '4712538', '', '4712538', NULL, NULL, 395),
('0396', '2023-09-24 05:51:31', 'SMP Negeri 233', 'Jl. H. Abdur Rachman No. 68 Cibubur Ciracas', '8705357', '', '8705357', NULL, NULL, 396),
('0397', '2023-09-24 05:51:31', 'SMP Negeri 234', 'Jl. Kayu Tinggi Cakung Timur Cempaka IV Cakung Timur Cakung', '4611559', '', '4611559', NULL, NULL, 397),
('0398', '2023-09-24 05:51:31', 'SMP Negeri 234 Terbuka', 'Jl. Raya Kayu Tinggi Cakung Timur Cakung', '4611559', '', '4611559', NULL, NULL, 398),
('0399', '2023-09-24 05:51:31', 'SMP Negeri 235', 'Jl. Pesanggrahan Raya No.101 Pesanggrahan Pesanggrahan', '021 7340973', '', '021 7340973', NULL, NULL, 399),
('0400', '2023-09-24 05:51:31', 'SMP Negeri 236', 'Jl. Raya Penggilingan Komp. PIK Penggilingan Cakung', '4604272', '', '4604272', NULL, NULL, 400),
('0401', '2023-09-24 05:51:31', 'SMP Negeri 237', 'Jl. Bambu Petung Bambu Apus Cipayung', '8448460', '', '8448460', NULL, NULL, 401),
('0402', '2023-09-24 05:51:31', 'SMP Negeri 238', 'Jl. Kalibata VI No. 2 Duren Tiga Pancoran', '7991565', '', '7991565', NULL, NULL, 402),
('0403', '2023-09-24 05:51:31', 'SMP Negeri 239', 'Jl. Nangka 58 Tanjung Barat Jagakarsa', '7818319', '', '7818319', NULL, NULL, 403),
('0404', '2023-09-24 05:51:31', 'SMP Negeri 24', 'Jl. Dukuh V Dukuh Kramat Jati', '8404434', '', '8404434', NULL, NULL, 404),
('0405', '2023-09-24 05:51:31', 'SMP Negeri 240', 'Jl. H. Raya No. 16 B Gandaria Utara Kebayoran Baru', '021-7204711', '', '021-7204711', NULL, NULL, 405),
('0406', '2023-09-24 05:51:31', 'SMP Negeri 241', 'Pulau Tidung Pulau Tidung Kepulauan Seribu Selatan', '021 - 33111241', '', '021 - 33111241', NULL, NULL, 406),
('0407', '2023-09-24 05:51:31', 'SMP Negeri 242', 'Jl. Lenteng Agung Lenteng Agung Jagakarsa', '2.18E+08', '', '2.18E+08', NULL, NULL, 407),
('0408', '2023-09-24 05:51:31', 'SMP Negeri 243', 'Jl. Cipinang Jaya II Cipinang Besar Utara Jatinegara', '8199916', '', '8199916', NULL, NULL, 408),
('0409', '2023-09-24 05:51:31', 'SMP Negeri 244', 'Jl. Cilincing Bakti VI No.28 Cilincing Cilincing', '4400872', '', '4400872', NULL, NULL, 409),
('0410', '2023-09-24 05:51:31', 'SMP Negeri 244 Terbuka', 'Jl. Cilincing Bakti VI Cilincing Cilincing', '2.14E+08', '', '2.14E+08', NULL, NULL, 410),
('0411', '2023-09-24 05:51:31', 'SMP Negeri 245', 'Jl. H. Muchtar Raya Petukangan Utara Pesanggrahan', '021 - 5849265', '', '021 - 5849265', NULL, NULL, 411),
('0412', '2023-09-24 05:51:31', 'SMP Negeri 246', 'Jl. SPG 7 Lubang Buaya Cipayung', '8404491', '', '8404491', NULL, NULL, 412),
('0413', '2023-09-24 05:51:31', 'SMP Negeri 247', 'Jl. Mampang Prapatan XIII Tegal Parang Mampang Prapatan', '021-7943835', '', '021-7943835', NULL, NULL, 413),
('0414', '2023-09-24 05:51:31', 'SMP Negeri 248', 'Jl. Kamal Raya Cengkareng Timur Cengkareng', '021 5451352', '', '021 5451352', NULL, NULL, 414),
('0415', '2023-09-24 05:51:31', 'SMP Negeri 249', 'Jl. Jaya 25 No.41 Cengkareng Barat Cengkareng', '5550245', '', '5550245', NULL, NULL, 415),
('0416', '2023-09-24 05:51:31', 'SMP Negeri 25', 'Jl. BB. I. Cipinang Muara Cipinang Muara Jatinegara', '8195679', '', '8195679', NULL, NULL, 416),
('0417', '2023-09-24 05:51:31', 'SMP Negeri 250', 'Jl. KHM. Naim III Cipete Utara Kebayoran Baru', '7200396', '', '7200396', NULL, NULL, 417),
('0418', '2023-09-24 05:51:31', 'SMP Negeri 251', 'Jl. Mawar Kamp. Asem Cijantung Pasar Rebo', '021-8711079', '', '021-8711079', NULL, NULL, 418),
('0419', '2023-09-24 05:51:31', 'SMP Negeri 252', 'Jl. H. Naman Pondok Kelapa Pondok Kelapa Duren Sawit', '8640755 , Fax 86905247', '', '8640755 , Fax 86905247', NULL, NULL, 419),
('0420', '2023-09-24 05:51:31', 'SMP Negeri 252 Terbuka', 'Jl. H. Naman Pondok Kelapa Duren Sawit Duren Sawit', '8640755', '', '8640755', NULL, NULL, 420),
('0421', '2023-09-24 05:51:31', 'SMP Negeri 253', 'Jl. Antariksa Kp. Alang-alang Cipedak Jagakarsa', '2.18E+08', '', '2.18E+08', NULL, NULL, 421),
('0422', '2023-09-24 05:51:31', 'SMP Negeri 254', 'Jl. Gandaria V Jagakarsa - Jaksel Jagakarsa Jagakarsa', '7270842', '', '7270842', NULL, NULL, 422),
('0423', '2023-09-24 05:51:31', 'SMP Negeri 255', 'Jl. Radin Inten II Duren Sawit Duren Sawit Duren Sawit', '8601993', '', '8601993', NULL, NULL, 423),
('0424', '2023-09-24 05:51:31', 'SMP Negeri 256', 'Jl. Balai Rakyat Cakung Timur Cakung Timur Cakung', '4603753', '', '4603753', NULL, NULL, 424),
('0425', '2023-09-24 05:51:31', 'SMP Negeri 257', 'Jl. Kelurahan Rambutan Rambutan Ciracas', '8404160', '', '8404160', NULL, NULL, 425),
('0426', '2023-09-24 05:51:31', 'SMP Negeri 257 Terbuka', 'Jl. Kelurahan Rambutan Rambutan Ciracas', '8404160', '', '8404160', NULL, NULL, 426),
('0427', '2023-09-24 05:51:31', 'SMP Negeri 258', 'Jl. Cibubur II Blok Duku Cibubur Ciracas', '021-8705669', '', '021-8705669', NULL, NULL, 427),
('0428', '2023-09-24 05:51:31', 'SMP Negeri 259', 'Jl. Laksmana VIII Komplek Karyawan TMII Bambu Apus Cipayung', '2.18E+08', '', '2.18E+08', NULL, NULL, 428),
('0429', '2023-09-24 05:51:31', 'SMP Negeri 26', 'Jl. Kebon Pala I Kampung Melayu Jatinegara', '8196643', '', '8196643', NULL, NULL, 429),
('0430', '2023-09-24 05:51:31', 'SMP Negeri 260', 'Pulau Harapan Pulau Harapan Kepulauan Seribu Utara', '8.78E+10', '', '8.78E+10', NULL, NULL, 430),
('0431', '2023-09-24 05:51:31', 'SMP Negeri 261', 'Jl. Muara Angke Pluit Pluit Penjaringan', '6682126', '', '6682126', NULL, NULL, 431),
('0432', '2023-09-24 05:51:31', 'SMP Negeri 261 Terbuka', 'Jl. Muara Angke Pluit Penjaringan', '6682126', '', '6682126', NULL, NULL, 432),
('0433', '2023-09-24 05:51:31', 'SMP Negeri 262', 'Jl. Kayu Tinggi Cakung Timur Cakung Timur Cakung', '4612276', '', '4612276', NULL, NULL, 433),
('0434', '2023-09-24 05:51:31', 'SMP Negeri 262 Terbuka', 'Jl. Kayu Tinggi Cakung Cakung Timur Cakung', '4612276', '', '4612276', NULL, NULL, 434),
('0435', '2023-09-24 05:51:31', 'SMP Negeri 263', 'Jl. Dukuh IV Dukuh Kramat Jati', '8413638', '', '8413638', NULL, NULL, 435),
('0436', '2023-09-24 05:51:31', 'SMP Negeri 264', 'Jl. Barkah I Rawa Buaya Cengkareng', '021-5810740-5810741', '', '021-5810740-5810741', NULL, NULL, 436),
('0437', '2023-09-24 05:51:31', 'SMP Negeri 264 Terbuka', 'Jl. Barkah I 001/03 Rawabuaya Rawa Buaya Cengkareng', '(021) 5810740-5810741', '', '(021) 5810740-5810741', NULL, NULL, 437),
('0438', '2023-09-24 05:51:31', 'SMP Negeri 265', 'Jl. Asem Baris II/10 Kebon Baru T e b e t', '021- 8302935', '', '021- 8302935', NULL, NULL, 438),
('0439', '2023-09-24 05:51:31', 'SMP Negeri 266', 'Jl. Cilincing Bakti VI Cilincing Cilincing', '2.14E+08', '', '2.14E+08', NULL, NULL, 439),
('0440', '2023-09-24 05:51:31', 'SMP Negeri 267', 'Jl. Mairin Swadarma Raya Ulujami Pesanggrahan Pesanggrahan', '021-5852291', '', '021-5852291', NULL, NULL, 440),
('0441', '2023-09-24 05:51:31', 'SMP Negeri 268', 'Jl. SD Inpres Kebon Pala Makasar', '2.18E+08', '', '2.18E+08', NULL, NULL, 441),
('0442', '2023-09-24 05:51:31', 'SMP Negeri 269', 'Jl. Harapan Mulia Harapan Mulia Kemayoran', '2.14E+08', '', '2.14E+08', NULL, NULL, 442),
('0443', '2023-09-24 05:51:31', 'SMP Negeri 27', 'Jl. LINGKAR KOMP.PTB Duren Sawit Duren Sawit Duren Sawit', '8615189', '', '8615189', NULL, NULL, 443),
('0444', '2023-09-24 05:51:31', 'SMP Negeri 270', 'Jl. Kompi Udin Pegangsaan Dua Kelapa Gading', '4529223', '', '4529223', NULL, NULL, 444),
('0445', '2023-09-24 05:51:31', 'SMP Negeri 271', 'Jl. Pahlawan Sukabumi Sel.VI/F1 Sukabumi Selatan Kebon Jeruk', '021-5330627', '', '021-5330627', NULL, NULL, 445),
('0446', '2023-09-24 05:51:31', 'SMP Negeri 272', 'JL. AL BAIDHO 1 Lubang Buaya Cipayung', '2.19E+09', '', '2.19E+09', NULL, NULL, 446),
('0447', '2023-09-24 05:51:31', 'SMP Negeri 273', 'Jl. Kampung Bali 24/I Kampung Bali Tanah Abang', '3143012', '', '3143012', NULL, NULL, 447),
('0448', '2023-09-24 05:51:31', 'SMP Negeri 274', 'Jl. Empang Bahagia Raya 4B Jelambar Grogol Petamburan', '5684386', '', '5684386', NULL, NULL, 448),
('0449', '2023-09-24 05:51:31', 'SMP Negeri 275', 'Jl. Jengki Cipinang Asem Kebon Pala Makasar', '8004083', '', '8004083', NULL, NULL, 449),
('0450', '2023-09-24 05:51:31', 'SMP Negeri 276', 'Jl. Srengseng Sawah Srengseng Sawah Jagakarsa', '7866427', '', '7866427', NULL, NULL, 450),
('0451', '2023-09-24 05:51:31', 'SMP Negeri 277', 'Jl. Sindang Terusan No. 34 A Rawa Badak Utara K o j a', '4.39E+07', '', '4.39E+07', NULL, NULL, 451),
('0452', '2023-09-24 05:51:31', 'SMP Negeri 278', 'Jl. Kamal Benda Raya No. 16 Kamal Kalideres', '021 5557944', '', '021 5557944', NULL, NULL, 452),
('0453', '2023-09-24 05:51:31', 'SMP Negeri 279', 'Jl. Mahoni No. 44 Lagoa K o j a', '4.39E+07', '', '4.39E+07', NULL, NULL, 453),
('0454', '2023-09-24 05:51:31', 'SMP Negeri 28', 'Jl. Mardani No.17 Johar Baru Johar Baru', '4246165', '', '4246165', NULL, NULL, 454),
('0455', '2023-09-24 05:51:31', 'SMP Negeri 28 Terbuka', 'Jl. Mardani No. 17 Johar Baru Johar Baru', '4246165', '', '4246165', NULL, NULL, 455),
('0456', '2023-09-24 05:51:31', 'SMP Negeri 280', 'Jl. Cilacap No. 5 Menteng Menteng', '021-3155527', '', '021-3155527', NULL, NULL, 456),
('0457', '2023-09-24 05:51:31', 'SMP Negeri 281', 'Jl. Kerja Bakti No. 1 Kramat Jati Kramat Jati', '8091021', '', '8091021', NULL, NULL, 457),
('0458', '2023-09-24 05:51:31', 'SMP Negeri 282', 'Jl. Taman Nyiur (BI) Sunter Agung Tanjung Priok', '021-6505777', '', '021-6505777', NULL, NULL, 458),
('0459', '2023-09-24 05:51:31', 'SMP Negeri 283', 'Jl. Bambu Hitam Bambu Apus Cipayung', '021 84598876', '', '021 84598876', NULL, NULL, 459),
('0460', '2023-09-24 05:51:31', 'SMP Negeri 284', 'Jl. Raya Rawa Bebek Pulo Gebang Cakung', '4806031', '', '4806031', NULL, NULL, 460),
('0461', '2023-09-24 05:51:31', 'SMP Negeri 285', 'Jln. Pulau Edam Pulau Untung Jawa Kepulauan Seribu Selatan', '(021)32403951', '', '(021)32403951', NULL, NULL, 461),
('0462', '2023-09-24 05:51:31', 'SMP Negeri 286', 'JL.RAWA KEPA VIII Tomang Grogol Petamburan', '2.16E+08', '', '2.16E+08', NULL, NULL, 462),
('0463', '2023-09-24 05:51:31', 'SMP Negeri 287', 'Jl. Sarbini I Pinang Ranti Makasar', '2.18E+08', '', '2.18E+08', NULL, NULL, 463),
('0464', '2023-09-24 05:51:31', 'SMP Negeri 288', 'PULAU LANCANG Pulau Tidung Kepulauan Seribu Selatan', '0', '', '0', NULL, NULL, 464),
('0465', '2023-09-24 05:51:31', 'SMP Negeri 289', 'Jl. Tipar Cakung Suka Pura Cilincing', '2.14E+08', '', '2.14E+08', NULL, NULL, 465),
('0466', '2023-09-24 05:51:31', 'SMP Negeri 29', 'Jl. Bumi Blok E Gunung Kebayoran Baru', '7247493', '', '7247493', NULL, NULL, 466),
('0467', '2023-09-24 05:51:31', 'SMP Negeri 3', 'Jl. Manggarai Utara IV/6 Manggarai T e b e t', '8303844', '', '8303844', NULL, NULL, 467),
('0468', '2023-09-24 05:51:31', 'SMP Negeri 30', 'Jl. Anggrek No. 4 Koja Rawa Badak Utara K o j a', '( 021 ) 43911051-43931669', '', '( 021 ) 43911051-43931669', NULL, NULL, 468),
('0469', '2023-09-24 05:51:31', 'SMP Negeri 31', 'Jl. Peninggaran Barat III Kebayoran Lama Utara Kebayoran Lama', '021-7239730', '', '021-7239730', NULL, NULL, 469),
('0470', '2023-09-24 05:51:31', 'SMP Negeri 32', 'Jl. Pejagalan No. 51 Pekojan Tambora', '(021)6917188', '', '(021)6917188', NULL, NULL, 470),
('0471', '2023-09-24 05:51:31', 'SMP Negeri 33', 'Jl. Menara Air I Manggarai T e b e t', '8304489', '', '8304489', NULL, NULL, 471),
('0472', '2023-09-24 05:51:31', 'SMP Negeri 34', 'Jl. Pademangan Timur VII Pademangan Timur Pademangan', '021-64716137 / 64711045', '', '021-64716137 / 64711045', NULL, NULL, 472),
('0473', '2023-09-24 05:51:31', 'SMP Negeri 35', 'Jl.Kayu Manis Gg.Kh.Raiman 71B Condet Bale Kembang Kramat Jati', '8004945', '', '8004945', NULL, NULL, 473),
('0474', '2023-09-24 05:51:31', 'SMP Negeri 36', 'Jl. Pedati Cipinang Cempedak Jatinegara', '8197363', '', '8197363', NULL, NULL, 474),
('0475', '2023-09-24 05:51:31', 'SMP Negeri 37', 'Jl. Taman Wijaya Kusuma Raya Pondok Labu Cilandak', '021-7695272', '', '021-7695272', NULL, NULL, 475),
('0476', '2023-09-24 05:51:31', 'SMP Negeri 38', 'Jl. Karet Pasar Baru Barat I No.14 Karet Tengsin Tanah Abang', '2.16E+09', '', '2.16E+09', NULL, NULL, 476),
('0477', '2023-09-24 05:51:31', 'SMP Negeri 39', 'Jl. Gajah Mada No. 3 - 5 Petojo Utara Gambir', '021-63851721', '', '021-63851721', NULL, NULL, 477),
('0478', '2023-09-24 05:51:31', 'SMP Negeri 4', 'Jl. Perwira No. 10 Pasar Baru Pasar Baru Sawah Besar', '021-3844414', '', '021-3844414', NULL, NULL, 478),
('0479', '2023-09-24 05:51:31', 'SMP Negeri 40 SSN', 'Jl. Danau Limboto Pejompongan Bendungan Hilir Tanah Abang', '5737815', '', '5737815', NULL, NULL, 479),
('0480', '2023-09-24 05:51:31', 'SMP Negeri 41', 'Jl. Harsono RM. Ragunan Pasarminggu Ragunan Pasar Minggu', '7.88E+07', '', '7.88E+07', NULL, NULL, 480),
('0481', '2023-09-24 05:51:31', 'SMP Negeri 41 Terbuka', 'Jl. Harsono RM. Ragunan Pasarminggu Ragunan Pasar Minggu', '7814294', '', '7814294', NULL, NULL, 481),
('0482', '2023-09-24 05:51:31', 'SMP Negeri 42', 'Jl. Pademangan III Pademangan Timur Pademangan', '6400355', '', '6400355', NULL, NULL, 482),
('0483', '2023-09-24 05:51:31', 'SMP Negeri 43', 'Jl. Kapten P. Tendean No. 11 Mampang Prapatan Mampang Prapatan', '7988023', '', '7988023', NULL, NULL, 483),
('0484', '2023-09-24 05:51:31', 'SMP Negeri 44', 'JL. GADING RAYA VII Pisangan Timur Pulo Gadung', '4891725', '', '4891725', NULL, NULL, 484),
('0485', '2023-09-24 05:51:31', 'SMP Negeri 45', 'Jl. Utama Raya No. 45 Cengkareng Barat Cengkareng', '(021) 6191705 / Fax. (021) 54373201', '', '(021) 6191705 / Fax. (021) 54373201', NULL, NULL, 485),
('0486', '2023-09-24 05:51:31', 'SMP Negeri 46', 'Jl. Rukun Pejaten Timur Pejaten Timur Pasar Minggu', '2.18E+08', '', '2.18E+08', NULL, NULL, 486),
('0487', '2023-09-24 05:51:31', 'SMP Negeri 47', 'Jl. Rawasari Timur Cempaka Putih Timur Cempaka Putih', '4200349', '', '4200349', NULL, NULL, 487),
('0488', '2023-09-24 05:51:31', 'SMP Negeri 48', 'Jl. Raya Keb. Lama No. 192 Cipulir Kebayoran Lama', '7396648', '', '7396648', NULL, NULL, 488),
('0489', '2023-09-24 05:51:31', 'SMP Negeri 48 Terbuka', 'Jl. Raya Keb. Lama No. 192 Cipulir Kebayoran Lama', '7396648', '', '7396648', NULL, NULL, 489),
('0490', '2023-09-24 05:51:31', 'SMP Negeri 49', 'Jl. Raya Bogor Km. 20 Kramat Jati Kramat Jati', '0218090200, 02149043250', '', '0218090200, 02149043250', NULL, NULL, 490),
('0491', '2023-09-24 05:51:31', 'SMP Negeri 5', 'Jl. DR. Sutomo No. 5 Pasar Baru Pasar Baru Sawah Besar', '021 - 3844986', '', '021 - 3844986', NULL, NULL, 491),
('0492', '2023-09-24 05:51:31', 'SMP Negeri 50', 'Jl. Nusa I Kramat Jati Kramat Jati', '8091734', '', '8091734', NULL, NULL, 492),
('0493', '2023-09-24 05:51:31', 'SMP Negeri 51', 'Jl. Kejaksaan Kav. Pd. Bambu Pondok Bambu Duren Sawit', '021-8617042', '', '021-8617042', NULL, NULL, 493),
('0494', '2023-09-24 05:51:31', 'SMP Negeri 51 Terbuka', 'Jl. Kejaksaan Kavling Pondok Bambu Duren Sawit', '021-8617042', '', '021-8617042', NULL, NULL, 494),
('0495', '2023-09-24 05:51:31', 'SMP Negeri 52', 'Jl. Cipinang Elok Cipinang Muara Jatinegara', '8196452', '', '8196452', NULL, NULL, 495),
('0496', '2023-09-24 05:51:31', 'SMP Negeri 53', 'Jl. Tanah Merdeka 33 Kalibaru Cilincing', '4403082', '', '4403082', NULL, NULL, 496),
('0497', '2023-09-24 05:51:31', 'SMP Negeri 54', 'Jl. Balndongan No.37 Glodok Taman Sari', '6398734', '', '6398734', NULL, NULL, 497),
('0498', '2023-09-24 05:51:31', 'SMP Negeri 55', 'Jl. Bahari IV A.11 Tanjung Priok Tanjung Priok', '021 - 4373413', '', '021 - 4373413', NULL, NULL, 498),
('0499', '2023-09-24 05:51:31', 'SMP Negeri 55 Terbuka', 'Jl. Bahari IV A.11 Tanjung Priok Tanjung Priok Tanjung Priok', '021 - 4373413', '', '021 - 4373413', NULL, NULL, 499),
('0500', '2023-09-24 05:51:31', 'SMP Negeri 56', 'Jl. Jeruk Purut 1 Cilandak Timur Pasar Minggu', '021-7803516', '', '021-7803516', NULL, NULL, 500),
('0501', '2023-09-24 05:51:31', 'SMP Negeri 57', 'Jl. Halimun No. 2B Guntur Setia Budi', '8280960', '', '8280960', NULL, NULL, 501),
('0502', '2023-09-24 05:51:31', 'SMP Negeri 58', 'Jl. Setiabudi Barat 8K Setia Budi Setia Budi', '5224233/5279992', '', '5224233/5279992', NULL, NULL, 502),
('0503', '2023-09-24 05:51:31', 'SMP Negeri 59', 'Jl. Bendungan Jago No. 40 Serdang Kemayoran', '4254310', '', '4254310', NULL, NULL, 503),
('0504', '2023-09-24 05:51:31', 'SMP Negeri 6', 'Jl. Bulak Timur I/7 Klender Duren Sawit Klender Duren Sawit', '021-8614103', '', '021-8614103', NULL, NULL, 504),
('0505', '2023-09-24 05:51:31', 'SMP Negeri 60', 'Jl. Sangihe No. 26 Cideng Gambir', '6.39E+07', '', '6.39E+07', NULL, NULL, 505),
('0506', '2023-09-24 05:51:31', 'SMP Negeri 61', 'Jl. Z.Slipi Dalam Slipi Palmerah', '021-5485067', '', '021-5485067', NULL, NULL, 506),
('0507', '2023-09-24 05:51:31', 'SMP Negeri 61 Terbuka', 'Jl. Slipi Dalam Slipi Palmerah', '2.15E+08', '', '2.15E+08', NULL, NULL, 507),
('0508', '2023-09-24 05:51:31', 'SMP Negeri 62', 'Jl. Jatinegara Timur IV Rawa Bunga Jatinegara', '8195366', '', '8195366', NULL, NULL, 508),
('0509', '2023-09-24 05:51:31', 'SMP Negeri 62 Terbuka', 'Jl. Jatinegara Timur IV Rawa Bunga Jatinegara', '8195366', '', '8195366', NULL, NULL, 509),
('0510', '2023-09-24 05:51:31', 'SMP Negeri 63', 'Jl. Perniagaan No. 31 Tambora Tambora', '(021)6904630-6916141', '', '(021)6904630-6916141', NULL, NULL, 510),
('0511', '2023-09-24 05:51:31', 'SMP Negeri 64', 'Jl. Karang Anyar 11 - 12 Karang Anyar Sawah Besar', '021- 6289762', '', '021- 6289762', NULL, NULL, 511),
('0512', '2023-09-24 05:51:31', 'SMP Negeri 65', 'Jl. Metro Kencana Raya Sunter Tanjung Priok Tanjung Priok', '6503746', '', '6503746', NULL, NULL, 512),
('0513', '2023-09-24 05:51:31', 'SMP Negeri 66', 'Jl. Masjid Annur Kb. Lama Grogol Selatan Kebayoran Lama', '7262921', '', '7262921', NULL, NULL, 513),
('0514', '2023-09-24 05:51:31', 'SMP Negeri 67', 'Jl. Minangkabau Dalam No.3 Menteng Atas Setia Budi', '8291525', '', '8291525', NULL, NULL, 514),
('0515', '2023-09-24 05:51:31', 'SMP Negeri 67 Terbuka', 'Jl. Mingkabau Dalam No. 3 Menteng Atas Setia Budi', '021 829 1525', '', '021 829 1525', NULL, NULL, 515),
('0516', '2023-09-24 05:51:31', 'SMP Negeri 68', 'Jl. Cipete III No. 4 Cipete Selatan Cilandak', '7695722', '', '7695722', NULL, NULL, 516),
('0517', '2023-09-24 05:51:31', 'SMP Negeri 69', 'Jl. Tanjung Duren Timur No. 16 Tanjung Duren Selatan Grogol Petamburan', '5656602', '', '5656602', NULL, NULL, 517),
('0518', '2023-09-24 05:51:31', 'SMP Negeri 7', 'Jl. Balai Rayat Utan Kayu Utara Utan Kayu Utara Matraman', '8583817', '', '8583817', NULL, NULL, 518),
('0519', '2023-09-24 05:51:31', 'SMP Negeri 7 Terbuka', 'Jl. Balai Rayat Utan Kayu Utara Utan Kayu Utara Matraman', '8583817', '', '8583817', NULL, NULL, 519),
('0520', '2023-09-24 05:51:31', 'SMP Negeri 70', 'Jl. H. Awaludin IV Kebon Melati Tanah Abang', '3102278', '', '3102278', NULL, NULL, 520),
('0521', '2023-09-24 05:51:31', 'SMP Negeri 71', 'Jl. Rawasari Timur Komplek Perkantoran No.12 Cempaka Putih Timur', '4213554', '', '4213554', NULL, NULL, 521),
('0522', '2023-09-24 05:51:31', 'SMP Negeri 72', 'Jl. Petojo Binatu No. 2 Petojo Utara Gambir', '021-6327871', '', '021-6327871', NULL, NULL, 522),
('0523', '2023-09-24 05:51:31', 'SMP Negeri 73', 'Jl. Tebet Timur IIA No. 1 Tebet Timur T e b e t', '8295378', '', '8295378', NULL, NULL, 523),
('0524', '2023-09-24 05:51:31', 'SMP Negeri 74', 'Jl. Pemuda No.6 dan Jl.Mustika Jaya Rawamangun Pulo Gadung', '4892521', '', '4892521', NULL, NULL, 524),
('0525', '2023-09-24 05:51:31', 'SMP Negeri 75 SSN', 'Jl. Raya Kebon Jeruk No.19 Kebon Jeruk Kebon Jeruk', '2.15E+08', '', '2.15E+08', NULL, NULL, 525),
('0526', '2023-09-24 05:51:31', 'SMP Negeri 76', 'Jl. Percetakan Negara II Johar Baru Johar Baru', '4248479', '', '4248479', NULL, NULL, 526),
('0527', '2023-09-24 05:51:31', 'SMP Negeri 77', 'Jl. Cemp. Putih Tengah XVIII Cempaka Putih Timur Cempaka Putih', '4245377', '', '4245377', NULL, NULL, 527),
('0528', '2023-09-24 05:51:31', 'SMP Negeri 78', 'Jl. Perunggu No. 56 Harapan Mulia Kemayoran', '6.22E+10', '', '6.22E+10', NULL, NULL, 528),
('0529', '2023-09-24 05:51:31', 'SMP Negeri 79', 'Jl. Dakota Raya Kemayoran Gempol Galindra Kebon Kosong Kemayoran', '021-4208740', '', '021-4208740', NULL, NULL, 529),
('0530', '2023-09-24 05:51:31', 'SMP Negeri 79 Terbuka', 'Jl. Dakota Raya Kebon Kosong Kemayoran', '(021) 4208740', '', '(021) 4208740', NULL, NULL, 530),
('0531', '2023-09-24 05:51:31', 'SMP Negeri 8', 'Jl. Pegangsaan Barat No. 1 Menteng Menteng', '3145570', '', '3145570', NULL, NULL, 531),
('0532', '2023-09-24 05:51:31', 'SMP Negeri 80', 'Jl. Kayatun Kayatun Trikora Halim. P Halim Perdana Kusumah Makasar', '8090092', '', '8090092', NULL, NULL, 532),
('0533', '2023-09-24 05:51:31', 'SMP Negeri 81', 'Jl. Monumen Pancasila Lubang Buaya Cipayung', '8408656', '', '8408656', NULL, NULL, 533),
('0534', '2023-09-24 05:51:31', 'SMP Negeri 82', 'Jl. Komp. BDN Pesing Wijaya Kusuma Grogol Petamburan', '5667126', '', '5667126', NULL, NULL, 534),
('0535', '2023-09-24 05:51:31', 'SMP Negeri 83', 'Jl. Empang Bahagia Jelambar Grogol Petamburan', '5672648', '', '5672648', NULL, NULL, 535),
('0536', '2023-09-24 05:51:31', 'SMP Negeri 84', 'Jl. Kramat Jaya Blok R Gang VIII No.60 Lagoa K o j a', '021- 44830557', '', '021- 44830557', NULL, NULL, 536),
('0537', '2023-09-24 05:51:31', 'SMP Negeri 84 Terbuka', 'Jl. Semangka No.1 Lagoa K o j a', '021-43930708', '', '021-43930708', NULL, NULL, 537),
('0538', '2023-09-24 05:51:31', 'SMP Negeri 85', 'Jl. Margasatwa No. 8 Pondok Labu Cilandak', '7657652', '', '7657652', NULL, NULL, 538),
('0539', '2023-09-24 05:51:31', 'SMP Negeri 86', 'Jl. RS. Fatmawati Komp. BNI Cilandak Barat Cilandak', '7513818', '', '7513818', NULL, NULL, 539),
('0540', '2023-09-24 05:51:31', 'SMP Negeri 86 Terbuka', 'Jl. RS. Fatmawati Komp. BNI Cilandak Barat Cilandak', '7513818', '', '7513818', NULL, NULL, 540),
('0541', '2023-09-24 05:51:31', 'SMP Negeri 87', 'Jl. Ciputat Raya Pond. Pinang Pondok Pinang Kebayoran Lama', '7657687', '', '7657687', NULL, NULL, 541),
('0542', '2023-09-24 05:51:31', 'SMP Negeri 88', 'Jl. Anggrek Garuda Slipi Kemanggisan Palmerah', '5480779', '', '5480779', NULL, NULL, 542),
('0543', '2023-09-24 05:51:31', 'SMP Negeri 89', 'Jl. Tanjung Duren Barat IV Tanjung Duren Utara Grogol Petamburan', '5672531, 56964483', '', '5672531, 56964483', NULL, NULL, 543),
('0544', '2023-09-24 05:51:31', 'SMP Negeri 9', 'Jl. Usman No.6 Kelapa Dua Wetan Kelapa Dua Wetan Ciracas', '8719966', '', '8719966', NULL, NULL, 544),
('0545', '2023-09-24 05:51:31', 'SMP Negeri 90', 'Jl. Raya Bekasi Km. 18 Jatinegara Cakung', '4603764', '', '4603764', NULL, NULL, 545),
('0546', '2023-09-24 05:51:31', 'SMP Negeri 91', 'Jl. Raya Bogor Km. 28 Pekayon Pekayon Pasar Rebo', '8718877', '', '8718877', NULL, NULL, 546),
('0547', '2023-09-24 05:51:31', 'SMP Negeri 92', 'Jl. Perhubungan XII Rawamangun Jati Pulo Gadung', '4713051', '', '4713051', NULL, NULL, 547),
('0548', '2023-09-24 05:51:31', 'SMP Negeri 93', 'Jl. Gunung Sahari Raya No. 81 Gunung Sahari Selatan Kemayoran', '4247349', '', '4247349', NULL, NULL, 548),
('0549', '2023-09-24 05:51:31', 'SMP Negeri 94', 'Jl. Tanah Abang V/29 Petojo Selatan Gambir', '3805680', '', '3805680', NULL, NULL, 549),
('0550', '2023-09-24 05:51:31', 'SMP Negeri 95', 'Jl. Ganggeng III No. 3 Sungai Bambu Tanjung Priok', '4353273', '', '4353273', NULL, NULL, 550),
('0551', '2023-09-24 05:51:31', 'SMP Negeri 95 Terbuka', 'Jl. Ganggeng III No. 3 Sungai Bambu Tanjung Priok', '4353273', '', '4353273', NULL, NULL, 551),
('0552', '2023-09-24 05:51:31', 'SMP Negeri 96', 'Jl. Margasatwa Komplek Timah Pondok Labu Pondok Labu Cilandak', '2.18E+08', '', '2.18E+08', NULL, NULL, 552),
('0553', '2023-09-24 05:51:31', 'SMP Negeri 97', 'Jl. Galur Sari Raya Utan Kayu Selatan Matraman', '021-8196209', '', '021-8196209', NULL, NULL, 553),
('0554', '2023-09-24 05:51:31', 'SMP Negeri 98', 'Jl. Raya Depok Lenteng Agung Lenteng Agung Jagakarsa', '7867633 / 78890839', '', '7867633 / 78890839', NULL, NULL, 554),
('0555', '2023-09-24 05:51:31', 'SMP Negeri 99', 'Jl. Sirap Kayu Putih Pulo Gadung', '(021)-4891456', '', '(021)-4891456', NULL, NULL, 555),
('0556', '2023-09-24 05:51:31', 'SMP Negeri OR', 'Komplek Gelora Ragunan Ragunan Pasar Minggu', '021-7801662', '', '021-7801662', NULL, NULL, 556),
('0557', '2023-09-24 05:51:31', 'SMP Negeri Satu Atap 01 Pulau Pari', 'Pulau Pari Pulau Pari Kepulauan Seribu Selatan', '0', '', '0813789667', NULL, NULL, 557),
('0558', '2023-09-24 05:51:31', 'SMP Negeri Satu Atap 02 Pulau Sabira', 'Pulau Sabira Pulau Harapan Kepulauan Seribu Utara', '8.79E+10', '', '8.79E+10', NULL, NULL, 558);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`kode`, `nama`, `no`) VALUES
('0010', 'Pcs', 10),
('0011', 'Pak', 11),
('0012', 'Lembar', 12),
('0013', '%', 14);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `satuan_eceran` varchar(20) DEFAULT NULL,
  `harga_eceran` int DEFAULT NULL,
  `jumlah_per_pack` int DEFAULT '1',
  `jumlah_eceran` int DEFAULT '0',
  `harga_modal` float DEFAULT NULL,
  `total_modal` float DEFAULT NULL,
  `profit` float DEFAULT NULL,
  `profit_eceran` float DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`kode`, `nama`, `satuan`, `biaya`, `jumlah`, `satuan_eceran`, `harga_eceran`, `jumlah_per_pack`, `jumlah_eceran`, `harga_modal`, `total_modal`, `profit`, `profit_eceran`, `remark`, `no`) VALUES
('0001', 'Amplop Coklat F4  240 x 345', '0011', 55000, 3, '0012', 3000, 100, 0, 40000, 120000, 15000, 2600, '3', 77),
('0002', 'Amplop Coklat A4  220 x 330', '0011', 50000, 4, NULL, 0, NULL, NULL, 35000, 140000, 15000, 0, '3', 78),
('0003', 'Amplop Coklat Kabinet  120 x 240', '0011', 25000, 1, NULL, 0, NULL, NULL, 17000, 17000, 8000, 0, '3', 79),
('0004', 'Amplop Coklat Kabinet Merk Kiky 120 x 240', '0011', 10000, 20, NULL, 0, NULL, NULL, 6000, 120000, 4000, 0, '3', 80),
('0005', 'Amplop Putih No 90 110 x 230', '0011', 29000, 26, NULL, 0, NULL, NULL, 21000, 546000, 8000, 0, '3', 81),
('0006', 'Amplop Putih No 110 114 x 162', '0011', 23000, 7, NULL, 0, NULL, NULL, 18000, 126000, 5000, 0, '3', 82),
('0007', 'Amplop Putih No 104   95 x 152', '0011', 21000, 15, NULL, 0, NULL, NULL, 16000, 240000, 5000, 0, '3', 83),
('0008', 'Ballpoint / Pulpen Standart AE7 Hitam ', '0011', 23000, 23, '0010', 3000, NULL, NULL, 19000, 437000, 4000, 4000, '3', 84),
('0009', 'Ballpoint / Pulpen Standart AE7 Biru ', '0011', 23000, 12, '0010', 3000, NULL, NULL, 19000, 228000, 4000, 4000, '3', 85),
('0010', 'Ballpoint / Pulpen Standart AE7 Merah ', '0011', 23000, 15, '0010', 3000, NULL, NULL, 19000, 285000, 4000, 4000, '3', 86),
('0011', 'Ballpoint / Pulpen Faster C600 ', '0011', 28000, 35, '0010', 4000, NULL, NULL, 23000, 805000, 5000, 5000, '3', 87),
('0012', 'Ballpoint / Pulpen Faster C6 ', '0011', 38000, 25, '0010', 5000, NULL, NULL, 28000, 700000, 10000, 10000, '3', 88),
('0013', 'Ballpiont / Pulpen Joyko Gel ', '0011', 28000, 12, '0010', 0, NULL, NULL, 22000, 264000, 6000, 0, '3', 89),
('0014', 'Ballpoint / Pulpen Kenko Gel ', '0011', 38000, 16, '0010', 0, NULL, NULL, 28000, 448000, 10000, 0, '3', 90),
('0015', 'Ballpoint / Pulpen Artline 8210 Hitam ', '0011', 20000, 54, '0010', 3000, NULL, NULL, 15000, 810000, 5000, 5000, '3', 91),
('0016', 'Ballpoint / Pulpen Artline 8210 Biru ', '0010', 20000, NULL, '0010', 3000, NULL, NULL, 15000, NULL, 5000, 5000, '3', 92),
('0017', 'Ballpoint / Pulpen Artline 8210 Merah ', '0010', 20000, NULL, '0010', 3000, NULL, NULL, 15000, NULL, 5000, 5000, '3', 93),
('0018', 'Ballpoint / Pulpen Artline Drawing 0.1 ', '0011', 120000, 17, '0010', 0, NULL, NULL, 90000, 1530000, 30000, 0, '3', 94),
('0019', 'Ballpoint / Pulpen Artline Drawing 0.2 ', '0011', 120000, 7, '0010', 0, NULL, NULL, 90000, 630000, 30000, 0, '3', 95),
('0020', 'Ballpoint / Pulpen E-Pro 00.3 ', '0011', 28000, 10, '0010', 3000, NULL, NULL, 20000, 200000, 8000, 8000, '3', 96),
('0021', 'Ballpoint / Pulpen Skyco ', '0011', 18000, 36, '0010', 2000, NULL, NULL, 12000, 432000, 6000, 6000, '3', 97),
('0022', 'Ballpoint / Pulpen Yamano ', '0010', 11000, NULL, '0010', 1500, NULL, NULL, 8000, NULL, 3000, 3000, '3', 98),
('0023', 'Ballpoint / Pulpen Pilot Balliner Hitam ', '0011', 200000, 5, '0010', 18000, NULL, NULL, 175000, 875000, 25000, 25000, '3', 99),
('0024', 'Ballpoint / Pulpen Pilot Balliner Biru ', NULL, 200000, NULL, '0010', 0, NULL, NULL, 175000, NULL, 25000, 0, '3', 100),
('0025', 'Ballpoint / Pulpen Snowman OPF/45 ', '10', 38000, NULL, '0010', 10000, NULL, NULL, 28000, NULL, 10000, 10000, '3', 101),
('0026', 'Bak Stample Besar 90 x 120', '0010', 0, 1, '0010', 17000, NULL, NULL, 10000, 10000, -10000, -10000, '3', 102),
('0027', 'Bak Stample Sedang 80 x 120', '0010', 0, 16, '0010', 15000, NULL, NULL, 9000, 144000, -9000, -9000, '3', 103),
('0028', 'Bendera Merah Putih uk 90 x 135 90 x 135 ', '0010', 0, 7, '0010', 55000, NULL, NULL, 35000, 245000, -35000, -35000, '3', 104),
('0029', 'Bendera Merah Putih uk 80 x 120cm 80 x 120', '0010', 0, 9, '0010', 50000, NULL, NULL, 30000, 270000, -30000, -30000, '3', 105),
('0030', 'Bendera Merah Putih uk 120 x 180cm 120 x 180', '0010', 0, 7, '0010', 110000, NULL, NULL, 70000, 490000, -70000, -70000, '3', 106),
('0031', 'Bendera Merah Putih uk 150 x 225cm 150 x 225', '0010', 0, 4, '0010', 140000, NULL, NULL, 100000, 400000, -100000, -100000, '3', 107),
('0032', 'Bendera Latihan Upacara 90 x 135', '0010', 0, 4, '0010', 95000, NULL, NULL, 60000, 240000, -60000, -60000, '3', 108),
('0033', 'Bendera Umbul - Umbul 30 x 270', '0010', 0, 42, '0010', 30000, NULL, NULL, 18000, 756000, -18000, -18000, '3', 109),
('0034', 'Bendera Selendang Paskibra 10 x 150', NULL, 0, NULL, '0010', 25000, NULL, NULL, 13000, NULL, -13000, -13000, '3', 110),
('0035', 'Bendera Osis SMA 80 x 120', '0010', 0, 3, '0010', 60000, NULL, NULL, 30000, 90000, -30000, -30000, '3', 111),
('0036', 'Bendera Osis SMP 80 x 120', '0010', 0, 2, '0010', 60000, NULL, NULL, 30000, 60000, -30000, -30000, '3', 112),
('0037', 'Bendera Tut Wuri Handayani 80 x 120', '0010', 0, 6, '0010', 60000, NULL, NULL, 30000, 180000, -30000, -30000, '3', 113),
('0038', 'Bendera Jaya Raya 80 x 120', '0010', 0, 6, '0010', 60000, NULL, NULL, 30000, 180000, -30000, -30000, '3', 114),
('0039', 'Bendera PGRI 80 x 120', '0010', 0, 7, '0010', 60000, NULL, NULL, 30000, 210000, -30000, -30000, '3', 115),
('0040', 'Bendera UKS 80 x 120', '0010', 0, 2, '0010', 60000, NULL, NULL, 30000, 60000, -30000, -30000, '3', 116),
('0041', 'Bendera PMI 80 x 120', '0010', 0, 3, '0010', 60000, NULL, NULL, 30000, 90000, -30000, -30000, '3', 117),
('0042', 'Bendera Pramuka Tunas 80 x 120', '0010', 0, 8, '0010', 60000, NULL, NULL, 30000, 240000, -30000, -30000, '3', 118),
('0043', 'Bendera Pramuka Pandu 80 x 120', '0010', 0, 9, '0010', 60000, NULL, NULL, 30000, 270000, -30000, -30000, '3', 119),
('0044', 'Binder Clip No 107 19 mm', '0010', 60000, 3, '0010', 7000, NULL, NULL, 4000, 12000, 56000, 56000, '3', 120),
('0045', 'Binder Clip No 111 25 mm', '0011', 75000, 21, '0010', 9000, NULL, NULL, 5500, 115500, 69500, 69500, '3', 121),
('0046', 'Binder Clip No 155 32 mm', '0011', 130000, 16, '0010', 13000, NULL, NULL, 7000, 112000, 123000, 123000, '3', 122),
('0047', 'Binder Clip No 200 41 mm', '0011', 0, 17, '0010', 16000, NULL, NULL, 12000, 204000, -12000, -12000, '3', 123),
('0048', 'Binder Clip No 260 51 mm', '0011', 0, 13, '0010', 21000, NULL, NULL, 16000, 208000, -16000, -16000, '3', 124),
('0049', 'Bag File Plastik Tali Siku ', '0010', 0, 11, '0010', 4000, NULL, NULL, 3000, 33000, -3000, -3000, '3', 125),
('0050', 'Bag File Plastik Kancing ', '0010', 0, 4, '0010', 5000, NULL, NULL, 4000, 16000, -4000, -4000, '3', 126),
('0051', 'Bag School Kancing Zipper ', '0010', 0, 34, '0010', 17000, NULL, NULL, 12000, 408000, -12000, -12000, '3', 127),
('0052', 'Bag School Zipper  ', '0010', 0, 12, '0010', 15000, NULL, NULL, 11000, 132000, -11000, -11000, '3', 128),
('0053', 'Stabilo ', '0010', 0, 20, '0010', 7000, NULL, NULL, 4500, 90000, -4500, -4500, '3', 129),
('0054', 'Block Note Paperline A5 15 x 21', NULL, 20000, NULL, '0010', 5000, NULL, NULL, 0, NULL, 20000, 20000, '3', 130),
('0055', 'Boxfile Folio Plastik Bindex 26 x 32', NULL, 0, NULL, '0010', 30000, NULL, NULL, 26000, NULL, -26000, -26000, '3', 131),
('0056', 'Buku Ekspedisi bergaris 11 x 31', '0010', 0, 11, '0010', 14000, NULL, NULL, 11000, 121000, -11000, -11000, '3', 132),
('0057', 'Buku Folio Bergaris 21 x 31', '0010', 0, 5, '0010', 20000, NULL, NULL, 17000, 85000, -17000, -17000, '3', 133),
('0058', 'Buku Quarto Bergaris 16 x 21', '0010', 0, 7, '0010', 15000, NULL, NULL, 13000, 91000, -13000, -13000, '3', 134),
('0059', 'Burung Garuda Fiber ', '10', 0, NULL, '0010', 300000, NULL, NULL, 0, NULL, 0, 0, '3', 135),
('0060', 'Cover Jilid ( Bufallo ) 21 x 33', '0010', 0, 57, '0010', 40000, NULL, NULL, 0, 0, 0, 0, '3', 136),
('0061', 'Cover Jilid ( TIK / BC ) 21 x 33', '0011', 0, 11, '0010', 30000, NULL, NULL, 0, 0, 0, 0, '3', 137),
('0062', 'Cover Jilid ( Plastik Mika Bening ) 21 x 33', '0010', 0, NULL, '0010', 45000, NULL, NULL, 0, NULL, 0, 0, '3', 138),
('0063', 'Cover Jilid ( Plastik Mika Warna ) 21 x 33', '10', 0, NULL, '0010', 45000, NULL, NULL, 0, NULL, 0, 0, '3', 139),
('0064', 'Clip Paper Warna kecil ', '0011', 0, 4, '0010', 5000, NULL, NULL, 3500, 14000, -3500, -3500, '3', 140),
('0065', 'Clip Paper No 3 ( Kecil ) Kecil', '0011', 25000, 4, '0010', 2500, NULL, NULL, 1500, 6000, 23500, 23500, '3', 141),
('0066', 'Clip Paper No 1 ( Sedang ) Sedang', '0011', 30000, 1, '0010', 3000, NULL, NULL, 1800, 1800, 28200, 28200, '3', 142),
('0067', 'Clip Paper No 5 ( Besar ) Besar', '0011', 50000, 1, '0010', 5500, NULL, NULL, 4000, 4000, 46000, 46000, '3', 143),
('0068', 'Clip Board / Papan Jalan ', '0010', 0, 2, '0010', 15000, NULL, NULL, 11000, 22000, -11000, -11000, '3', 144),
('0069', 'Cutter Besar L 500 Besar', '0010', 0, 15, '0010', 18000, NULL, NULL, 12500, 187500, -12500, -12500, '3', 145),
('0070', 'Cutter Kecil A 300 Kecil', '0010', 0, 25, '0010', 12000, NULL, NULL, 6500, 162500, -6500, -6500, '3', 146),
('0071', 'Cutter Re-Type Besar Besar', '0010', 0, 8, '0010', 20000, NULL, NULL, 14000, 112000, -14000, -14000, '3', 147),
('0072', 'Cutter Re-Type Kecil Kecil', '0010', 0, 7, '0010', 12000, NULL, NULL, 7500, 52500, -7500, -7500, '3', 148),
('0073', 'Cutter Refill / Isi Cutter L 150 ( Besar ) Besar', '0010', 75000, 24, '0010', 7000, NULL, NULL, 4000, 96000, 71000, 71000, '3', 149),
('0074', 'Cutter Refill / Isi Cutter A 100 ( Kecil ) Kecil', '0010', 40000, 88, '0010', 4000, NULL, NULL, 2500, 220000, 37500, 37500, '3', 150),
('0075', 'Double Tape 1/4 inci ', '0010', 0, 62, '0010', 2500, NULL, NULL, 1500, 93000, -1500, -1500, '3', 151),
('0076', 'Double Tape 1/2 inci ', '0010', 0, 18, '0010', 4000, NULL, NULL, 3000, 54000, -3000, -3000, '3', 152),
('0077', 'Double Tape 1 inci ', '0010 ', 0, NULL, '0010', 7000, NULL, NULL, 6000, NULL, -6000, -6000, '3', 153),
('0078', 'Dispenser Solasi Kecil Kecil', '0010', 0, 4, '0010', 19000, NULL, NULL, 13000, 52000, -13000, -13000, '3', 154),
('0079', 'Dispenser Solasi Besar No 50  Besar', '0010', 0, 1, '0010', 26000, NULL, NULL, 21000, 21000, -21000, -21000, '3', 155),
('0080', 'Dispenser Lakban ', '0010', 0, 1, '0010', 20000, NULL, NULL, 0, 0, 0, 0, '3', 156),
('0081', 'Gunting Kecil ', '0010', 0, 96, '0010', 10000, NULL, NULL, 6000, 576000, -6000, -6000, '3', 157),
('0082', 'Gunting Sedang ', '0010', 0, 33, '0010', 13000, NULL, NULL, 8000, 264000, -8000, -8000, '3', 158),
('0083', 'Gunting Besar ', '0010', 0, 20, '0010', 17000, NULL, NULL, 12000, 240000, -12000, -12000, '3', 159),
('0084', 'Kwitansi Kecil Kecil', '0010', 35000, 32, '0010', 4000, NULL, NULL, 3000, 96000, 32000, 32000, '3', 160),
('0085', 'Kwitansi Sedang Sedang', '0010', 45000, 12, '0010', 6000, NULL, NULL, 4000, 48000, 41000, 41000, '3', 161),
('0086', 'Kwitansi Besar Besar', '0010', 50000, 1, '0010', 7000, NULL, NULL, 4500, 4500, 45500, 45500, '3', 162),
('0087', 'Kertas HVS F4 75gsm F4', '0010 ', 0, NULL, '0010', 58000, NULL, NULL, 50000, NULL, -50000, -50000, '3', 163),
('0088', 'Kertas HVS A4 75gsm A4', '0010 ', 0, NULL, '0010', 55000, NULL, NULL, 46000, NULL, -46000, -46000, '3', 164),
('0089', 'Kertas HVS F4 80gsm F4', '0010 ', 0, NULL, '0010', 65000, NULL, NULL, 57000, NULL, -57000, -57000, '3', 165),
('0090', 'Kertas HVS A4 80gsm A4', '0010 ', 0, NULL, '0010', 57000, NULL, NULL, 50000, NULL, -50000, -50000, '3', 166),
('0091', 'Kertas Double Folio Bergaris isi 200 ', '0010', 0, NULL, '0010', 38000, NULL, NULL, 35000, NULL, -35000, -35000, '3', 167),
('0092', 'Kertas Double Folio Bergaris isi 100 ', '0011', 0, 2, '0010', 27000, NULL, NULL, 25000, 50000, -25000, -25000, '3', 168),
('0093', 'Label Tom & Jerry  No 103 ', '0010 ', 0, NULL, '0010', 9000, NULL, NULL, 7000, NULL, -7000, -7000, '3', 169),
('0094', 'Lem Cair ', '0010 ', 0, NULL, '0010', 10000, NULL, NULL, 6000, NULL, -6000, -6000, '3', 170),
('0095', 'Lem Glue Stick 15 Gram  15 gram', '0010', 110000, 48, '0010', 7000, NULL, NULL, 5000, 240000, 105000, 105000, '3', 171),
('0096', 'Lem Glue Stick 8 Gram 8 gram', '0010', 110000, 48, '0010', 4000, NULL, NULL, 3000, 144000, 107000, 107000, '3', 172),
('0097', 'Lem FOX 150 Gram 150 gram', '0010', 0, 48, '0010', 16000, NULL, NULL, 11000, 528000, -11000, -11000, '3', 173),
('0098', 'Lem Kertas Diakol Kecil ', '0010 ', 0, NULL, '0010', 0, NULL, NULL, 0, NULL, 0, 0, '3', 174),
('0099', 'Lem Kertas Diakol Sedang ', '0010 ', 0, NULL, '0010', 3000, NULL, NULL, 0, NULL, 0, 0, '3', 175),
('0100', 'Map Bufalo Stop Map F4', '0011', 0, 25, '0010', 70000, NULL, NULL, 52000, 1300000, -52000, -52000, '3', 176),
('0101', 'Map Bufalo Snellhecter ', '0010', 0, 12, '0010', 0, NULL, NULL, 0, 0, 0, 0, '3', 177),
('0102', 'Map Plastik Snellhecter Seagul ', '0010', 0, 22, '0010', 0, NULL, NULL, 0, 0, 0, 0, '3', 178),
('0103', 'Map Plastik Clip / Jepit ', '0011', 0, 8, '0010', 0, NULL, NULL, 0, 0, 0, 0, '3', 179),
('0104', 'Map Plastik Bussines File Snellhecter ', '0010', 50000, 5, '0010', 5000, NULL, NULL, 44000, 220000, 6000, 6000, '3', 180),
('0105', 'Map L Folder ', '0010', 25000, 22, '0010', 2500, NULL, NULL, 18000, 396000, 7000, 7000, '3', 181),
('0106', 'Map Documen Keeper isi 20 20 lembar', '0010 ', 0, NULL, '0010', 21000, NULL, NULL, 14500, NULL, -14500, -14500, '3', 182),
('0107', 'Map Documen Keeper isi 40 40 lembar', '0010 ', 0, NULL, '0010', 25000, NULL, NULL, 19000, NULL, -19000, -19000, '3', 183),
('0108', 'Map Documen Keeper isi 60 60 lembar', '0010 ', 0, NULL, '0010', 28000, NULL, NULL, 24000, NULL, -24000, -24000, '3', 184),
('0109', '\'Name Tag, Tali size ID Card \'', '0010 ', 0, NULL, '0010', 0, NULL, NULL, 0, NULL, 0, 0, '3', 185),
('0110', 'Nota Kontan Besar 3 fly 1/2 Folio', '0010 ', 0, NULL, '0010', 10000, NULL, NULL, 8000, NULL, -8000, -8000, '3', 186),
('0111', 'Nota Kontan Kecil 3 fly 1/4 Folio', '0010 ', 0, NULL, '0010', 6000, NULL, NULL, 4000, NULL, -4000, -4000, '3', 187),
('0112', 'Nota Kontan Besar 2 fly 1/2 Folio', '0010', 0, 30, '0010', 8000, NULL, NULL, 6000, 180000, -6000, -6000, '3', 188),
('0113', 'Nota Kontan Kecil 2 fly 1/4 Folio', '0010', 0, 33, '0010', 5000, NULL, NULL, 3500, 115500, -3500, -3500, '3', 189),
('0114', 'Nota Kontan Kecil 1 fly 1/4 Folio', '0010', 0, 30, '0010', 3000, NULL, NULL, 2000, 60000, -2000, -2000, '3', 190),
('0115', 'Odner Karton Folio ', '0010 ', 300000, NULL, '0010', 26000, NULL, NULL, 20000, NULL, 280000, 280000, '3', 191),
('0116', '\'Odner Karton Kwitansi / 1,5 Folio \'', '0010 ', 300000, NULL, '0010', 26000, NULL, NULL, 20000, NULL, 280000, 280000, '3', 192),
('0117', 'Peforator Punch Kertas Besar no 85 Besar', '0010 ', 0, NULL, '0010', 60000, NULL, NULL, 43000, NULL, -43000, -43000, '3', 193),
('0118', 'Peforator Punch Kertas Sedang no 40 Sedang', '0010 ', 0, NULL, '0010', 30000, NULL, NULL, 24000, NULL, -24000, -24000, '3', 194),
('0119', 'Peforator Punch Kertas Kecil no 30 Kecil', '0010', 0, 0, '0010', 18000, NULL, NULL, 13000, 0, -13000, -13000, '3', 195),
('0120', 'Pensil 2B Faber Castle ', '0011', 60000, 7, '0010', 0, NULL, NULL, 47000, 329000, 13000, 0, '3', 196),
('0121', 'Pensil 2B Joyko ', '0011', 17000, 1, '0010', 2500, NULL, NULL, 13000, 13000, 4000, 4000, '3', 197),
('0122', 'Penghapus Stip Pensil Joyko Kecil ', '0010', 40000, 13, '0010', 2000, NULL, NULL, 35000, 455000, 5000, 5000, '3', 198),
('0123', 'Penghapus White Board Gunindo ', '0010', 95000, 16, '0010', 0, NULL, NULL, 80000, 1280000, 15000, 0, '3', 199),
('0124', 'Penggaris Plastik 30 cm ', '0010', 25000, 15, '0010', 4000, NULL, NULL, 0, 0, 25000, 25000, '3', 200),
('0125', 'Penggaris Besi 30 cm ', '0010', 40000, 14, '0010', 8000, NULL, NULL, 0, 0, 40000, 40000, '3', 201),
('0126', 'Penggari 1 meter Kayu ', '0010 ', 0, NULL, '0010', 28000, NULL, NULL, 22000, NULL, -22000, -22000, '3', 202),
('0127', 'Penggaris Busur Kayu ', '0010 ', 0, NULL, '0010', 32000, NULL, NULL, 24500, NULL, -24500, -24500, '3', 203),
('0128', 'Penggaris Jangka Kayu ', '0010 ', 0, NULL, '0010', 50000, NULL, NULL, 43000, NULL, -43000, -43000, '3', 204),
('0129', 'Penggaris Segitiga Kayu ', '0010 ', 0, NULL, '0010', 45000, NULL, NULL, 35000, NULL, -35000, -35000, '3', 205),
('0130', 'Pembersih Spray White Board ', '0010', 0, 47, '0010', 40000, NULL, NULL, 25000, 1175000, -25000, -25000, '3', 206),
('0131', 'Post it Kertas Brilliant Cubes ', '0010 ', 0, NULL, '0010', 25000, NULL, NULL, 18000, NULL, -18000, -18000, '3', 207),
('0132', 'Pembatas Kertas Notes Kecil Joyko ', '0010', 0, 9, '0010', 7000, NULL, NULL, 5500, 49500, -5500, -5500, '3', 208),
('0133', 'Rautan Sedang ', '0010', 0, 7, '0010', 3000, NULL, NULL, 1700, 11900, -1700, -1700, '3', 209),
('0134', 'Rautan Kecil ', '0010', 0, 12, '0010', 2000, NULL, NULL, 1000, 12000, -1000, -1000, '3', 210),
('0135', 'Solasi Lakban Bening ( Besar ) ', '0010', 14000, 28, '0010', 15000, NULL, NULL, 12000, 336000, 2000, 2000, '3', 211),
('0136', 'Solasi Lakban Coklat ( Besar ) ', '0010', 0, 21, '0010', 15000, NULL, NULL, 12000, 252000, -12000, -12000, '3', 212),
('0137', 'Solasi Lakban Hitam Besar ', '0010', 0, 9, '0010', 16000, NULL, NULL, 13000, 117000, -13000, -13000, '3', 213),
('0138', 'Solasi Lakban Hitam Sedang ', '0010', 0, 15, '0010', 12000, NULL, NULL, 9000, 135000, -9000, -9000, '3', 214),
('0139', 'Solasi Lakban Hitam Kecil ', '0010 ', 0, NULL, '0010', 10000, NULL, NULL, 7000, NULL, -7000, -7000, '3', 215),
('0140', 'Solasi Kertas 2 inci ', '0010', 0, 15, '0010', 12000, NULL, NULL, 8000, 120000, -8000, -8000, '3', 216),
('0141', 'Solasi Kertas 1 inci ', '0010', 0, 30, '0010', 8000, NULL, NULL, 4000, 120000, -4000, -4000, '3', 217),
('0142', 'Solasi Bening 24 mm ', '0010', 0, 10, '0010', 7000, NULL, NULL, 5000, 50000, -5000, -5000, '3', 218),
('0143', 'Solasi Bening 12 mm ', '0010', 0, 14, '0010', 5000, NULL, NULL, 3500, 49000, -3500, -3500, '3', 219),
('0144', 'Paku Payung / Thumb Tacks ', '0011', 0, 11, '0010', 1500, NULL, NULL, 1000, 11000, -1000, -1000, '3', 220),
('0145', 'Spidol Kecil ', '0010', 0, NULL, '0010', 2000, NULL, NULL, 0, NULL, 0, 0, '3', 221),
('0146', 'Spidol 12 Warna ', '0010', 0, 0, '0010', 19000, NULL, NULL, 14000, 0, -14000, -14000, '3', 222),
('0147', 'Spidol White Board Snowman ( Hitam ) ', '0010', 96000, 23, '0010', 10000, NULL, NULL, 85000, 1955000, 11000, 11000, '3', 223),
('0148', 'Spidol White Board Snowman ( Biru ) ', '0011', 96000, 7, '0010', 10000, NULL, NULL, 85000, 595000, 11000, 11000, '3', 224),
('0149', 'Spidol White Board Snowman ( Merah ) ', '0011', 96000, 9, '0010', 9000, NULL, NULL, 85000, 765000, 11000, 11000, '3', 225),
('0150', 'Spidol Refill / Tinta White Board Snowman Hitam ', '0011', 215000, 3, '0010', 0, NULL, NULL, 185000, 555000, 30000, 0, '3', 226),
('0151', 'Spidol Refill / Tinta White Board Snowman Biru ', '0011', 215000, 4, '0010', 0, NULL, NULL, 185000, 740000, 30000, 0, '3', 227),
('0152', 'Spidol Refill / Tinta White Board Snowman Merah ', '0011', 0, 1, '0010', 0, NULL, NULL, 185000, 185000, -185000, 0, '3', 228),
('0153', 'Spidol Permanent ', '0010 ', 90000, NULL, '0010', 10000, NULL, NULL, 80000, NULL, 10000, 10000, '3', 229),
('0154', 'Staples HD no 10 Max ', '0010', 0, 5, '0010', 20000, NULL, NULL, 15000, 75000, -15000, -15000, '3', 230),
('0155', 'Staples HD no 10 Joyko ', '0010', 0, 11, '0010', 15000, NULL, NULL, 10000, 110000, -10000, -10000, '3', 231),
('0156', 'Staples HD no 50 ', '0010', 0, 10, '0010', 60000, NULL, NULL, 45000, 450000, -45000, -45000, '3', 232),
('0157', 'Staples Refill / isi staples No 10 ', '0010', 35000, 64, '0010', 2500, NULL, NULL, 25000, 1600000, 10000, 10000, '3', 233),
('0158', 'Staples Refill / isi staples No 3 ', '0010 ', 0, NULL, '0010', 8000, NULL, NULL, 4500, NULL, -4500, -4500, '3', 234),
('0159', 'Staples Refill / isi staples No 23/8 ', '0011', 0, 1, '0010', 13000, NULL, NULL, 8500, 8500, -8500, -8500, '3', 235),
('0160', 'Staples Refill / isi staples No 23/10 ', '0011', 0, 1, '0010', 17000, NULL, NULL, 11000, 11000, -11000, -11000, '3', 236),
('0161', 'Staples Refill / isi staples No 23/13 ', '0011', 0, 1, '0010', 23000, NULL, NULL, 15000, 15000, -15000, -15000, '3', 237),
('0162', 'Stop Map Karton Manila isi 50 ', '0010', 0, NULL, '0010', 40000, NULL, NULL, 32000, NULL, -32000, -32000, '3', 238),
('0163', 'Snellhecter Karton Manila isi 50 ', '0010', 0, NULL, '0010', 60000, NULL, NULL, 45000, NULL, -45000, -45000, '3', 239),
('0164', 'Tip ex pen ', '0010', 0, NULL, '0010', 9000, NULL, NULL, 6000, NULL, -6000, -6000, '3', 240),
('0165', 'Tip ex Retype Fluid set ', '0010', 0, NULL, '0010', 15000, NULL, NULL, 11000, NULL, -11000, -11000, '3', 241),
('0166', 'Tinta Stemple Joyko Hitam ', '0010', 0, 15, '0010', 10000, NULL, NULL, 5000, 75000, -5000, -5000, '3', 242),
('0167', 'Tinta Stemple Joyko Biru ', '0010', 0, 9, '0010', 10000, NULL, NULL, 5000, 45000, -5000, -5000, '3', 243),
('0168', 'Tinta Stample Joyko Ungu ', '0010', 0, 2, '0010', 10000, NULL, NULL, 5000, 10000, -5000, -5000, '3', 244),
('0169', 'Tiang Bendera Pataka 1 tiang ', '0010', 0, NULL, '0010', 200000, NULL, NULL, 130000, NULL, -130000, -130000, '3', 245),
('0170', 'Tiang Bendera Pataka 2 tiang ', '0010', 0, NULL, '0010', 350000, NULL, NULL, 260000, NULL, -260000, -260000, '3', 246),
('0171', 'Tiang Bendera Pataka 3 tiang ', '0010', 0, NULL, '0010', 480000, NULL, NULL, 390000, NULL, -390000, -390000, '3', 247),
('0172', 'Tiang Bendera Pataka 4 tiang ', '0010', 0, NULL, '0010', 570000, NULL, NULL, 440000, NULL, -440000, -440000, '3', 248),
('0173', 'Acco Snellhecter Paper Fastener ', '0010', 0, NULL, '0010', 12000, NULL, NULL, 8500, NULL, -8500, -8500, '3', 249),
('0174', 'Crayon Staedler 12 colour kecil ', '0010', 0, 2, '0010', 15000, NULL, NULL, 11000, 22000, -11000, -11000, '3', 250),
('0175', 'Magnet Buttons White Board ', '0010', 0, 2, '0010', 12000, NULL, NULL, 7500, 15000, -7500, -7500, '3', 251),
('0176', 'Push Pins Mading ', '0010', 0, NULL, '0010', 5000, NULL, NULL, 3500, NULL, -3500, -3500, '3', 252),
('0177', 'Tip-X Correction Tape ', '0010', 0, 10, '0010', 10000, NULL, NULL, 6500, 65000, -6500, -6500, '3', 253),
('0178', 'Solasi Nachi Tape 12mm ', '0011', 0, 6, '0010', 9000, NULL, NULL, 6000, 36000, -6000, -6000, '3', 254),
('0179', 'Solasi Nachi Tape 24mm ', '0011', 0, 11, '0010', 13000, NULL, NULL, 10000, 110000, -10000, -10000, '3', 255),
('0180', 'Termometer Dinding ', '0010', 0, NULL, '0010', 20000, NULL, NULL, 14000, NULL, -14000, -14000, '3', 256),
('0181', 'Jangka Besi Kecil ', '0010', 0, NULL, '0010', 15000, NULL, NULL, 9000, NULL, -9000, -9000, '3', 257),
('0182', 'Sempoa Kecil ', '0010', 0, 6, '0010', 17000, NULL, NULL, 10000, 60000, -10000, -10000, '3', 258),
('0183', 'Stick Note ', '0010', 0, 12, '0010', 7000, NULL, NULL, 4000, 48000, -4000, -4000, '3', 259),
('0184', 'White Glue Retype 30 gr ', '0010', 0, NULL, '0010', 5000, NULL, NULL, 2500, NULL, -2500, -2500, '3', 260),
('0185', 'Dollar Fixol Glue 50 gr ', '0010', 0, NULL, '0010', 10000, NULL, NULL, 7000, NULL, -7000, -7000, '3', 261),
('0186', 'Dollar Fixol Glue 142 gr ', '0010', 0, NULL, '0010', 15000, NULL, NULL, 12000, NULL, -12000, -12000, '3', 262),
('0187', 'Kertas Karbon 100 lembar F4', '0010', 0, NULL, '0010', 75000, NULL, NULL, 55000, NULL, -55000, -55000, '3', 263),
('0188', 'Kertas Fax 210mm x 300mm ', '0010', 0, NULL, '0010', 27000, NULL, NULL, 18000, NULL, -18000, -18000, '3', 264),
('0189', 'Bingkai Foto Biasa size A3 Plus 32 x 48cm', '0010', 0, NULL, '0010', 55000, NULL, NULL, 37000, NULL, -37000, -37000, '3', 265),
('0190', 'Kertas HVS A4 merk KIKY isi 100 lembar A4', '0011', 0, 14, '0012', 25000, NULL, NULL, 19000, 266000, -19000, -19000, '3', 266),
('0191', 'Sampul buku plastik Folio ', '0010', 0, NULL, '0010', 45000, NULL, NULL, 30000, NULL, -30000, -30000, '3', 267),
('0192', 'Sampul buku plastik Quarto ', '0012', 0, NULL, '0010', 35000, NULL, NULL, 22000, NULL, -22000, -22000, '3', 268),
('0193', 'Kalender pendidikan ', '0010', 0, NULL, '0010', 25000, NULL, NULL, 20000, NULL, -20000, -20000, '3', 269),
('0194', 'Calculator ', '0010', 0, NULL, '0010', 125000, NULL, NULL, 85000, NULL, -85000, -85000, '3', 270),
('0195', 'Amplop Coklat tali ', '0010', 0, NULL, '0010', 62000, NULL, NULL, 50000, NULL, -50000, -50000, '3', 271),
('0196', 'Map kancing ', '0011', 46000, NULL, '0010', 4000, NULL, NULL, 34000, NULL, 12000, 12000, '3', 272),
('0197', 'Globe Diameter 30cm ', '0010', 0, NULL, '0010', 320000, NULL, NULL, 225000, NULL, -225000, -225000, '3', 273),
('0198', 'Gambar Wakil Presiden ', '0012', 0, NULL, '0010', 8000, NULL, NULL, 3500, NULL, -3500, -3500, '3', 274),
('0199', 'Tissu Tessa ', '0010', 0, NULL, '0010', 17500, NULL, NULL, 13125, NULL, -13125, -13125, '3', 275),
('0200', 'Buku Tulis Sinar Dunia isi 38 ', '0010', 0, NULL, '0010', 4000, NULL, NULL, 2700, NULL, -2700, -2700, '3', 276),
('0201', 'Bingkai Foto Gold 25 x 35 ', '0010', 0, 34, '0010', 35000, NULL, NULL, 25000, 850000, -25000, -25000, '3', 277),
('0202', 'Bingkai Foto Gold 34 x 49 ', '0010', 0, NULL, '0010', 70000, NULL, NULL, 47000, NULL, -47000, -47000, '3', 278),
('0203', 'KIT Mekanika SMA ', '0010', 0, NULL, '0010', 2000000, NULL, NULL, 1500000, NULL, -1500000, -1500000, '3', 279),
('0204', 'KIT Listrik & Magnet SMA ', '0010', 0, NULL, '0010', 2000000, NULL, NULL, 1500000, NULL, -1500000, -1500000, '3', 280),
('0205', 'KIT Optik ', '0010', 0, NULL, '0010', 1300000, NULL, NULL, 970000, NULL, -970000, -970000, '3', 281),
('0206', 'KIT Thermo Dinamika ', '0010', 0, NULL, '0010', 2500000, NULL, NULL, 1950000, NULL, -1950000, -1950000, '3', 282),
('0207', 'NERACA Ohauss 3114 ', '0010', 0, NULL, '0010', 1100000, NULL, NULL, 950000, NULL, -950000, -950000, '3', 283),
('0208', 'Aquades ( H2O) 5 liter ', '0010', 0, NULL, '0010', 90000, NULL, NULL, 80000, NULL, -80000, -80000, '3', 284),
('0209', 'Loose Leafe A5 isi 50 ', '0010', 0, NULL, '0010', 7000, NULL, NULL, 4500, NULL, -4500, -4500, '3', 285),
('0210', 'Lensa Cembung ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 30000, NULL, -30000, -30000, '3', 286),
('0211', 'Lensa Cekung ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 30000, NULL, -30000, -30000, '3', 287),
('0212', 'Jangka Sorong ', '0010', 0, NULL, '0010', 90000, NULL, NULL, 67000, NULL, -67000, -67000, '3', 288),
('0213', 'Mikrometer Sekrup ', '0010', 0, NULL, '0010', 115000, NULL, NULL, 90000, NULL, -90000, -90000, '3', 289),
('0214', '\'Magnet ( U, Batang, Silinder)  \'', '0010', 0, NULL, '0010', 30000, NULL, NULL, 22000, NULL, -22000, -22000, '3', 290),
('0215', 'Magnet Jarum ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 25000, NULL, -25000, -25000, '3', 291),
('0216', 'Lensa Datar ', '0010', 0, NULL, '0010', 135000, NULL, NULL, 100000, NULL, -100000, -100000, '3', 292),
('0217', 'Prisma Kaca ', '0010', 0, NULL, '0010', 135000, NULL, NULL, 100000, NULL, -100000, -100000, '3', 293),
('0218', 'Cermin Cekung ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 25000, NULL, -25000, -25000, '3', 294),
('0219', 'Cermin Cembung ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 25000, NULL, -25000, -25000, '3', 295),
('0220', 'Cermin Datar ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 25000, NULL, -25000, -25000, '3', 296),
('0221', 'Genetik 5 Warna ', '0010', 0, NULL, '0010', 135000, NULL, NULL, 100000, NULL, -100000, -100000, '3', 297),
('0222', 'PH Meter ', '0010', 0, NULL, '0010', 205000, NULL, NULL, 80000, NULL, -80000, -80000, '3', 298),
('0223', 'KIT Listrik dan Magnet SMP ', '0010', 0, NULL, '0010', 2000000, NULL, NULL, 1500000, NULL, -1500000, -1500000, '3', 299),
('0224', 'KIT Optika SMP ', '0010', 0, NULL, '0010', 1300000, NULL, NULL, 970000, NULL, -970000, -970000, '3', 300),
('0225', 'KIT Mekanika SMP ', '0010', 0, NULL, '0010', 2000000, NULL, NULL, 1500000, NULL, -1500000, -1500000, '3', 301),
('0226', 'KIT Matematika SD ', '0010', 0, NULL, '0010', 820000, NULL, NULL, 600000, NULL, -600000, -600000, '3', 302),
('0227', 'KIT IPA SD ', '0010', 0, NULL, '0010', 820000, NULL, NULL, 650000, NULL, -650000, -650000, '3', 303),
('0228', 'Model Tata Surya dan Gerhana ', '0010', 0, NULL, '0010', 320000, NULL, NULL, 225000, NULL, -225000, -225000, '3', 304),
('0229', 'Globe Dim 30 Stainless ', '0010', 0, NULL, '0010', 550000, NULL, NULL, 400000, NULL, -400000, -400000, '3', 305),
('0230', 'Kerangka Besar ', '0010', 0, NULL, '0010', 850000, NULL, NULL, 650000, NULL, -650000, -650000, '3', 306),
('0231', 'Kerangka Mini  ', '0010', 0, NULL, '0010', 570000, NULL, NULL, 450000, NULL, -450000, -450000, '3', 307),
('0232', 'Torso Pria ', '0010', 0, NULL, '0010', 700000, NULL, NULL, 550000, NULL, -550000, -550000, '3', 308),
('0233', 'Torso Wanita ', '0010', 0, NULL, '0010', 700000, NULL, NULL, 550000, NULL, -550000, -550000, '3', 309),
('0234', 'Torso Dwifungsi ', '0010', 0, NULL, '0010', 800000, NULL, NULL, 650000, NULL, -650000, -650000, '3', 310),
('0235', 'Model Mata ', '0010', 0, NULL, '0010', 190000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 311),
('0236', 'Model Ginjal  ', '0010', 0, NULL, '0010', 190000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 312),
('0237', 'Model Hidung ', '0010', 0, NULL, '0010', 210000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 313),
('0238', 'Model Kepala Tengkorak ', '0010', 0, NULL, '0010', 250000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 314),
('0239', 'Model Gigi ', '0010', 0, NULL, '0010', 250000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 315),
('0240', 'Model Hati ', '0010', 0, NULL, '0010', 250000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 316),
('0241', 'Model Telinga ', '0010', 0, NULL, '0010', 250000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 317),
('0242', 'Model Paru-Paru ', '0010', 0, NULL, '0010', 250000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 318),
('0243', 'Model Jantung ', '0010', 0, NULL, '0010', 250000, NULL, NULL, 180000, NULL, -180000, -180000, '3', 319),
('0244', 'Mikroskop XSP 104D 500x ', '0010', 0, NULL, '0010', 1300000, NULL, NULL, 970000, NULL, -970000, -970000, '3', 320),
('0245', 'Objek Glass / Preparat ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 25000, NULL, -25000, -25000, '3', 321),
('0246', 'Cover Glass 20x20 mm ', '0010', 0, NULL, '0010', 45000, NULL, NULL, 35000, NULL, -35000, -35000, '3', 322),
('0247', 'Lup / Kaca Pembesar Dim 75 ', '0010', 0, NULL, '0010', 55000, NULL, NULL, 40000, NULL, -40000, -40000, '3', 323),
('0248', 'Pipet Panjang 16 cm ', '0010', 0, NULL, '0010', 2500, NULL, NULL, 1600, NULL, -1600, -1600, '3', 324),
('0249', 'Pipet Pendek 10 cm ', '0010', 0, NULL, '0010', 1500, NULL, NULL, 1000, NULL, -1000, -1000, '3', 325),
('0250', 'Table Balance 100 gram ', '0010', 0, NULL, '0010', 350000, NULL, NULL, 260000, NULL, -260000, -260000, '3', 326),
('0251', 'TDS Meter Hidroponik ', '0010', 0, NULL, '0010', 55000, NULL, NULL, 40000, NULL, -40000, -40000, '3', 327),
('0252', 'Lakmus PH Meter ', '0010', 0, NULL, '0010', 17000, NULL, NULL, 12000, NULL, -12000, -12000, '3', 328),
('0253', 'Tabung Reaksi 13 ml ', '0010', 0, NULL, '0010', 7000, NULL, NULL, 4000, NULL, -4000, -4000, '3', 329),
('0254', 'Fehling A ', '0010', 0, 1, '0010', 85000, NULL, NULL, 60000, 60000, -60000, -60000, '3', 330),
('0255', 'Fehling B ', '0010', 0, 1, '0010', 135000, NULL, NULL, 100000, 100000, -100000, -100000, '3', 331),
('0256', 'Benedict ', '0010', 0, 3, '0010', 135000, NULL, NULL, 100000, 300000, -100000, -100000, '3', 332),
('0257', 'Spirtus Biru ', '0010', 0, NULL, '0010', 45000, NULL, NULL, 35000, NULL, -35000, -35000, '3', 333),
('0258', 'Kompas Bidik Metal ', '0010', 0, NULL, '0010', 45000, NULL, NULL, 35000, NULL, -35000, -35000, '3', 334),
('0259', 'Papan White Board uk 120 x 240 cm ', '0010', 0, NULL, '0010', 1000000, NULL, NULL, 750000, NULL, -750000, -750000, '3', 335),
('0260', 'Rak Tabung Reaksi ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 25000, NULL, -25000, -25000, '3', 336),
('0261', 'Buku Gambar SIDU A3 ', '0010', 0, 5, '0010', 12000, NULL, NULL, 9000, 45000, -9000, -9000, '3', 337),
('0262', 'Buku Gambar SIDU A4 ', '0010', 0, 5, '0010', 8000, NULL, NULL, 5000, 25000, -5000, -5000, '3', 338),
('0263', 'Kertas Origami SIDU isi 100 ', '0011', 0, 1, '0010', 14000, NULL, NULL, 10000, 10000, -10000, -10000, '3', 339),
('0264', 'Vandel / Pataka Meja ', '0010', 0, NULL, '0010', 28000, NULL, NULL, 22000, NULL, -22000, -22000, '3', 340),
('0265', 'Bendera Vandel size 14 x 21 cm ', '0010', 0, NULL, '0010', 10000, NULL, NULL, 7500, NULL, -7500, -7500, '3', 341),
('0266', 'Peta Indonesia Kecil Bagus ', '0010', 0, NULL, '0010', 165000, NULL, NULL, 125000, NULL, -125000, -125000, '3', 342),
('0267', 'Peta Dunia Kecil Bagus ', '0010', 0, NULL, '0010', 165000, NULL, NULL, 125000, NULL, -125000, -125000, '3', 343),
('0268', 'Peta Indonesia Kecil Biasa ', '0010', 0, NULL, '0010', 130000, NULL, NULL, 90000, NULL, -90000, -90000, '3', 344),
('0269', 'Peta Dunia Kecil Biasa ', '0010', 0, NULL, '0010', 130000, NULL, NULL, 90000, NULL, -90000, -90000, '3', 345),
('0270', 'Gelas Ukur 5 ml ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 27000, NULL, -27000, -27000, '3', 346),
('0271', 'Corong Kaca 50 ml  ', '0010', 0, NULL, '0010', 27000, NULL, NULL, 20000, NULL, -20000, -20000, '3', 347),
('0272', 'Cawan Uap 60 ml ', '0010', 0, NULL, '0010', 20000, NULL, NULL, 15000, NULL, -15000, -15000, '3', 348),
('0273', 'Cawan Crucible 30 ml ', '0010', 0, NULL, '0010', 27000, NULL, NULL, 20000, NULL, -20000, -20000, '3', 349),
('0274', 'Pipet Kaca 10 ml ', '0010', 0, NULL, '0010', 27000, NULL, NULL, 20000, NULL, -20000, -20000, '3', 350),
('0275', 'Tabung Reaksi Tutup 10 ml ', '0010', 0, NULL, '0010', 8000, NULL, NULL, 5000, NULL, -5000, -5000, '3', 351),
('0276', 'Erlenmeyer 50 ml ', '0010', 0, NULL, '0010', 35000, NULL, NULL, 25000, NULL, -25000, -25000, '3', 352),
('0277', 'Beaker Glass 250 ', '0010', 0, NULL, '0010', 47000, NULL, NULL, 35000, NULL, -35000, -35000, '3', 353),
('0278', 'Kawat Penyangga  ', '0010', 0, NULL, '0010', 0, NULL, NULL, 14000, NULL, -14000, 0, '3', 354),
('0279', 'Kaki Tiga  ', '0010', 0, NULL, '0010', 0, NULL, NULL, 30000, NULL, -30000, 0, '3', 355),
('0280', 'Penjepit Tabung Reaksi ', '0010', 0, NULL, '0010', 0, NULL, NULL, 5000, NULL, -5000, 0, '3', 356),
('0281', 'Lumpang Mortil Alu ', '0010', 0, NULL, '0010', 0, NULL, NULL, 30000, NULL, -30000, 0, '3', 357),
('0282', 'Kasa Asbes ', '0010', 0, NULL, '0010', 0, NULL, NULL, 15000, NULL, -15000, 0, '3', 358),
('0283', 'Batang Pengaduk  ', '0010', 0, NULL, '0010', 0, NULL, NULL, 10000, NULL, -10000, 0, '3', 359),
('0284', 'Cawan Petri  ', '0010', 0, NULL, '0010', 0, NULL, NULL, 20000, NULL, -20000, 0, '3', 360),
('0285', 'Spatel Tounge ', '0010', 0, NULL, '0010', 0, NULL, NULL, 15000, NULL, -15000, 0, '3', 361),
('0286', 'Loding Cawan  ', '0010', 0, NULL, '0010', 0, NULL, NULL, 20000, NULL, -20000, 0, '3', 362),
('0287', 'Bak Instrumen ', '0010', 0, NULL, '0010', 40000, NULL, NULL, 30000, NULL, -30000, -30000, '3', 363),
('0288', 'KIT Rangkain listrik SD  ', '0010', 0, NULL, '0010', 550000, NULL, NULL, 430000, NULL, -430000, -430000, '3', 364),
('0289', 'Torso Jenazah Laki/Wanita ', '0010', 0, NULL, '0010', 1100000, NULL, NULL, 800000, NULL, -800000, -800000, '3', 365),
('0290', 'Peta Dunia Sedang Glosy ', '0010', 0, NULL, '0010', 160000, NULL, NULL, 125000, NULL, -125000, -125000, '3', 366),
('0291', 'Peta Dunia Sedang Kain ', '0010', 0, NULL, '0010', 180000, NULL, NULL, 155000, NULL, -155000, -155000, '3', 367),
('0292', 'Peta Indonesia Sedang Kain ', '0010', 0, NULL, '0010', 180000, NULL, NULL, 155000, NULL, -155000, -155000, '3', 368),
('0293', 'Kait/Hook Bendera 7,5cm ', '0010', 9000, 0, '0010', 9000, 0, 0, 7000, NULL, 2000, NULL, '3', 369),
('0294', '\'Kait/Hook Bendera 5,5cm \'', '0010', 6000, NULL, '0010', 6000, NULL, NULL, 4000, NULL, 2000, 2000, '3', 370),
('0295', '\'Ring Bendera 3,5cm \'', '0010', 2000, NULL, '0010', 2000, NULL, NULL, 1500, NULL, 500, 500, '3', 371),
('0296', 'Ring Bendera 2cn ', '0010', 1500, NULL, '0010', 1500, NULL, NULL, 1000, NULL, 500, 500, '3', 372),
('0297', 'Map Upacara 1 set ', '0010', 150000, NULL, '0010', 150000, NULL, NULL, 115000, NULL, 35000, 35000, '3', 373),
('0298', 'Peta Dunia Besar ', '0010', 250000, NULL, '0010', 0, NULL, NULL, 230000, NULL, 20000, 0, '3', 374),
('0300', 'Diskon', '0013', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, 375),
('0301', 'test', '0010', 2000, 5, '0010', 2000, 1, 0, 1500, 7500, 500, 500, NULL, 378);

--
-- Triggers `stock`
--
DELIMITER $$
CREATE TRIGGER `total_modal` BEFORE UPDATE ON `stock` FOR EACH ROW IF (NEW.jumlah_per_pack!=1) THEN
	SET NEW.total_modal = NEW.jumlah * NEW.harga_modal + 	 NEW.jumlah_eceran*NEW.harga_modal/NEW.jumlah_per_pack;
	SET NEW.profit=NEW.biaya-NEW.harga_modal;
    SET NEW.profit_eceran=NEW.harga_eceran -				NEW.harga_modal/NEW.jumlah_per_pack;
ELSE 
	SET NEW.total_modal = NEW.jumlah * NEW.harga_modal;
    SET NEW.profit=NEW.biaya-NEW.harga_modal;
    IF (NEW.harga_eceran!=0) THEN
    	SET NEW.profit_eceran=NEW.profit;
    ELSE 
    	SET NEW.profit_eceran=0;
    END IF;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `total_modal_insert` BEFORE INSERT ON `stock` FOR EACH ROW IF (NEW.jumlah_per_pack!=1) THEN
	SET NEW.total_modal = NEW.jumlah * NEW.harga_modal + 	 NEW.jumlah_eceran*NEW.harga_modal/NEW.jumlah_per_pack;
	SET NEW.profit=NEW.biaya-NEW.harga_modal;
    SET NEW.profit_eceran=NEW.harga_eceran -				NEW.harga_modal/NEW.jumlah_per_pack;
ELSE 
	SET NEW.total_modal = NEW.jumlah * NEW.harga_modal;
    SET NEW.profit=NEW.biaya-NEW.harga_modal;
    IF (NEW.harga_eceran!=0) THEN
    	SET NEW.profit_eceran=NEW.profit;
    ELSE 
    	SET NEW.profit_eceran=0;
    END IF;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaksimasuk`
--

CREATE TABLE `transaksimasuk` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `satuan` varchar(100) NOT NULL,
  `jumlah` double DEFAULT NULL,
  `hargaakhir` int DEFAULT NULL,
  `biayaakhir` int DEFAULT NULL,
  `profitakhir` float DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksimasuk`
--

INSERT INTO `transaksimasuk` (`nota`, `kode`, `nama`, `biaya`, `satuan`, `jumlah`, `hargaakhir`, `biayaakhir`, `profitakhir`, `no`) VALUES
('0007', '0001', 'Cuci Kering', 5000, 'Kg', 2, 10000, 10000, NULL, 51),
('0008', '0002', 'Karpet', 7000, 'M', 1, 7000, 7000, NULL, 52),
('0009', '0001', 'Cuci Kering', 5000, 'Kg', 2, 10000, 10000, NULL, 62),
('0009', '0002', 'Karpet', 7000, 'M', 3, 21000, 21000, NULL, 63),
('0010', '0001', 'Cuci Kering', 5000, 'Kg', 1, 5000, 5000, NULL, 64),
('0010', '0002', 'Karpet', 7000, 'M', 2, 14000, 14000, NULL, 65),
('0010', '0003', 'Cuci Setrika', 7000, 'Kg', 0.5, 3500, 3500, NULL, 66),
('0011', '0001', 'Cuci Kering', 5000, 'Kg', 2, 10000, 10000, NULL, 69),
('0014', '0001', 'Cuci Kering', 5000, 'Kg', 5, 25000, 25000, NULL, 70),
('0015', '0004', 'Buku Absensi', 15000, 'Buah', 5, 75000, 75000, NULL, 73),
('0015', '0005', 'Buku Absensi', 5000000, '', 4, 20000000, 20000000, NULL, 74),
('0016', '0004', 'Buku Absensi', 15000, 'Buah', 7, 105000, 105000, NULL, 75),
('0017', '0001', 'Amplop Coklat F4 240 x 345', 55000, 'Pack', 3, 165000, 165000, NULL, 76),
('0018', '0001', 'Amplop Coklat F4 240 x 345', 55000, 'Pack', 4, 220000, 220000, NULL, 77),
('0019', '0001', 'Amplop Coklat F4 240 x 345', 55000, 'Pack', 1, 55000, 55000, NULL, 112),
('0019', '0003', 'Diskon', 0, '%', 10, -5500, -5500, NULL, 113),
('0020', '0001', 'Amplop Coklat F4 240 x 345', 55000, 'Pack', 10, 550000, 550000, NULL, 115),
('0020', '0003', 'Diskon', NULL, '%', 10, -55000, 0, NULL, 116),
('0021', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 250000, NULL, 119),
('0021', '0004', 'Amplop Coklat Kabinet Merk Kiky 120 x 240', 10000, 'Pak', 5, 50000, 50000, NULL, 117),
('0021', '0005', 'Amplop Putih No 90 110 x 230', 29000, 'Pak', 3, 87000, 87000, NULL, 118),
('0021', '0021', 'Ballpoint / Pulpen Skyco ', 2000, 'Pcs', 4, 8000, 8000, NULL, 120),
('0021', '0074', 'Cutter Refill / Isi Cutter A 100 ( Kecil ) Kecil', 4000, 'Pcs', 3, 12000, 12000, NULL, 121),
('0022', '0001', 'Amplop Coklat F4  240 x 345', 3000, 'Lembar', 5, 15000, 15000, 14250, 122),
('0022', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 4, 200000, 0, 60000, 126),
('0022', '0151', 'Spidol Refill / Tinta White Board Snowman Biru ', 215000, 'Pak', 10, 2150000, 2150000, 300000, 123),
('0022', '0300', 'Diskon', NULL, '%', 10, -20000, 0, -20000, 127),
('0023', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 4, 200000, 0, 60000, 128),
('0023', '0005', 'Amplop Putih No 90 110 x 230', 29000, 'Pak', 5, 145000, 0, 40000, 129),
('0024', '0001', 'Amplop Coklat F4  240 x 345', 55000, 'Pak', 5, 275000, 0, 75000, 130),
('0025', '0001', 'Amplop Coklat F4  240 x 345', 55000, 'Pak', 5, 275000, 0, 75000, 131),
('0026', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 132),
('0027', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 133),
('0028', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 4, 200000, 0, 60000, 134),
('0029', '0003', 'Amplop Coklat Kabinet  120 x 240', 25000, 'Pak', 5, 125000, 0, 40000, 135),
('0030', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 136),
('0030', '0004', 'Amplop Coklat Kabinet Merk Kiky 120 x 240', 10000, 'Pak', 6, 60000, 0, 24000, 137),
('0031', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 6, 300000, 0, 90000, 141),
('0032', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 6, 300000, 0, 0, 142),
('0033', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 143),
('0034', '0001', 'Amplop Coklat F4  240 x 345', 55000, 'Pak', 5, 275000, 0, 75000, 144),
('0034', '0003', 'Amplop Coklat Kabinet  120 x 240', 25000, 'Pak', 3, 75000, 0, 24000, 145),
('0034', '0005', 'Amplop Putih No 90 110 x 230', 29000, 'Pak', 3, 87000, 0, 24000, 146),
('0034', '0023', 'Ballpoint / Pulpen Pilot Balliner Hitam ', 200000, 'Pak', 4, 800000, 0, 100000, 147),
('0035', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 0, 148),
('0035', '0003', 'Amplop Coklat Kabinet  120 x 240', 25000, 'Pak', 3, 75000, 0, 24000, 150),
('0035', '0004', 'Amplop Coklat Kabinet Merk Kiky 120 x 240', 10000, 'Pak', 4, 40000, 0, 16000, 149),
('0035', '0005', 'Amplop Putih No 90 110 x 230', 29000, 'Pak', 4, 116000, 0, 32000, 151),
('0036', '0001', 'Amplop Coklat F4  240 x 345', 55000, 'Pak', 5, 275000, 0, 75000, 152),
('0037', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 153),
('0038', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 4, 200000, 0, 60000, 154),
('0039', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 155),
('0040', '0001', 'Amplop Coklat F4  240 x 345', 55000, 'Pak', 4, 220000, 0, 60000, 156),
('0041', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 4, 200000, 0, 60000, 157),
('0042', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 158),
('0043', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 4, 200000, 0, 60000, 159),
('0044', '0001', 'Amplop Coklat F4  240 x 345', 55000, 'Pak', 4, 220000, 0, 60000, 160),
('0045', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 161),
('0046', '0002', 'Amplop Coklat A4  220 x 330', 50000, 'Pak', 5, 250000, 0, 75000, 162);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userna_me` varchar(20) NOT NULL,
  `pa_ssword` varchar(70) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `tglaktif` date DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userna_me`, `pa_ssword`, `nama`, `alamat`, `nohp`, `tgllahir`, `tglaktif`, `jabatan`, `avatar`, `no`) VALUES
('admin', '334e03092634df1c0ca009db6f6b4919317b5d4f', 'admin', 'jl jalan ======  passwd=md5(sha1(passwd))', '0875757777', '0000-00-00', '2016-10-08', 'admin', 'dist/img/avatar5.png', 1),
('coba', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'Coba', 'Harapan Baru', NULL, NULL, '2021-12-04', 'user', 'dist/img/avatar2.png', 8),
('faris', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'Endang Faris Manuti', 'Yadara Babarsari Yogya', '0875757777', '0000-00-00', '2022-06-29', 'user', 'dist/upload/WhatsApp Image 2022-06-29 at 10.15.52 AM.jpeg', 3),
('mimi', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'Nurhalmi', 'Duta Harapan', '', '0000-00-00', '2023-08-19', 'user', 'dist/upload/index.jpg', 15),
('ngurah', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'I Gusti Ngurah Sudhiarta', 'Jatiwaringin', '', '0000-00-00', '2022-06-29', 'user', 'dist/upload/index.jpg', 12),
('nur', '76043f4ed2fa1a835152dcb49304cc4cd214ea52', 'NURHAYATI', 'DURI UTARA ', '087870064133', '1986-10-18', '2023-09-26', 'user', 'dist/upload/index.jpg', 16),
('rochadi', '32581f1930309c62f78094815348a9f492325a09', 'Daniel Rochadi', 'BSD', '', '0000-00-00', '2023-05-07', 'user', 'dist/upload/index.jpg', 13),
('user', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'User', 'pramuka', '0833674865784', NULL, NULL, NULL, NULL, 14),
('waluyojati', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'Waluyo Jati', 'Jl. Pramuka Gundih', '', '0000-00-00', '2022-06-05', 'user', 'dist/upload/waluyo.jpg', 10),
('wartono', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'Wartono Purwanto', 'jl jalan', '0875757777', '0000-00-00', '2022-01-11', 'user', 'dist/img/avatar5.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backset`
--
ALTER TABLE `backset`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`nota`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`startIpNum`);

--
-- Indexes for table `chmenu`
--
ALTER TABLE `chmenu`
  ADD PRIMARY KEY (`userjabatan`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD KEY `id` (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `operasional`
--
ALTER TABLE `operasional`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no3` (`no`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `transaksimasuk`
--
ALTER TABLE `transaksimasuk`
  ADD PRIMARY KEY (`nota`,`kode`,`satuan`) USING BTREE,
  ADD KEY `barang` (`nama`),
  ADD KEY `no5_2` (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userna_me`),
  ADD KEY `no` (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `startIpNum` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3758096129;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `operasional`
--
ALTER TABLE `operasional`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `transaksimasuk`
--
ALTER TABLE `transaksimasuk`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
