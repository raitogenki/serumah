-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2016 at 05:54 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serumah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '53rum4h');

-- --------------------------------------------------------

--
-- Table structure for table `ambil_makul`
--

CREATE TABLE `ambil_makul` (
  `id_user` int(11) NOT NULL,
  `id_makul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE `makul` (
  `id_makul` int(11) NOT NULL,
  `kode_makul` varchar(10) NOT NULL,
  `nama_makul` varchar(50) NOT NULL,
  `tipe_makul` tinyint(1) NOT NULL,
  `semester` int(1) NOT NULL,
  `deskripsi_makul` text NOT NULL,
  `prasyarat` varchar(25) DEFAULT NULL,
  `sks` int(1) NOT NULL,
  `teori` int(1) NOT NULL,
  `praktikum` int(1) NOT NULL,
  `diperbarui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makul`
--

INSERT INTO `makul` (`id_makul`, `kode_makul`, `nama_makul`, `tipe_makul`, `semester`, `deskripsi_makul`, `prasyarat`, `sks`, `teori`, `praktikum`, `diperbarui`) VALUES
(1, '0953112010', 'Pendidikan Agama', 0, 1, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(2, '0953134803', 'Konsep Pemrograman', 0, 1, 'To Be Added', NULL, 4, 3, 1, '2016-12-11 08:49:12'),
(3, '0953123201', 'Sistem Digital', 0, 1, 'To Be Added', NULL, 3, 2, 1, '2016-12-11 08:49:12'),
(4, '0953123001', 'Kalkulus I', 0, 1, 'To Be Added', NULL, 3, 3, 0, '2016-12-11 08:49:12'),
(5, '0953123000', 'Fisika', 0, 1, 'To Be Added', NULL, 3, 3, 0, '2016-12-11 08:49:12'),
(6, '0953142005', 'Bahasa Inggris I', 0, 1, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(7, '0953112011', 'Bahasa Indonesia', 0, 1, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(8, '0953122004', 'Statistika', 0, 1, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(9, '0953223004', 'Kalkulus II', 0, 2, 'To Be Added', 'KAL I', 3, 3, 0, '2016-12-11 09:13:53'),
(10, '0953223600', 'Metematika Diskrit I', 0, 2, 'To Be Added', NULL, 3, 3, 0, '2016-12-11 09:13:53'),
(11, '0953233100', 'Struktur Data dan Algoritma I', 0, 2, 'To Be Added', NULL, 3, 2, 1, '2016-12-11 09:13:53'),
(12, '0953222601', 'Probabilitas', 0, 2, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(13, '0953233201', 'Organisasi Sistem Komputer', 0, 2, 'To Be Added', 'SD', 3, 2, 1, '2016-12-11 09:13:53'),
(14, '0953212012', 'Pendidikan Kewarganegaraan', 0, 2, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(15, '0953252009', 'Ilmu Sosial Budaya Dasar', 0, 2, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(16, '0953242008', 'Bahasa Inggris II', 0, 2, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(17, '0953322603', 'Matematika Diskrit II', 0, 3, 'To Be Added', 'MD I', 2, 2, 0, '2016-12-11 09:21:26'),
(18, '0953333101', 'Struktur Data dan Algoritma II', 0, 3, 'To Be Added', 'SDA I', 3, 2, 1, '2016-12-11 09:21:26'),
(19, '0953334400', 'Basis Data', 0, 3, 'To Be Added', NULL, 4, 3, 1, '2016-12-11 09:21:26'),
(20, '0953333203', 'Sistem Operasi', 0, 3, 'To Be Added', 'OSK', 3, 2, 1, '2016-12-11 09:21:26'),
(21, '0953333801', 'Pemrograman Beorientasi Objek', 0, 3, 'To Be Added', 'KP', 3, 2, 1, '2016-12-11 09:21:26'),
(22, '0953312010', 'Pendidikan Pancasila', 0, 3, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 09:21:26'),
(23, '0953323602', 'Aljabar Linier', 0, 3, 'To Be Added', 'KAL II', 3, 3, 0, '2016-12-11 09:21:26'),
(24, '0953423604', 'Metode Numerik', 0, 4, 'To Be Added', 'KAL II, AL', 3, 2, 1, '2016-12-11 09:26:41'),
(25, '0953422605', 'Riset Operasi', 0, 4, 'To Be Added', 'AL', 2, 2, 0, '2016-12-11 09:26:41'),
(26, '0953434203', 'Jaringan Komputer', 0, 4, 'To Be Added', 'SO', 4, 2, 2, '2016-12-11 09:26:41'),
(27, '0953433802', 'Pemrograman Web', 0, 4, 'To Be Added', 'BD, PBO', 3, 2, 1, '2016-12-11 09:26:41'),
(28, '0953434700', 'Rekayasa Perangkat Lunak', 0, 4, 'To Be Added', 'PBO', 4, 3, 1, '2016-12-11 09:26:41'),
(29, '0953523604', 'Teori Bahasa dan Automata', 0, 5, 'To Be Added', 'MD II', 3, 3, 0, '2016-12-11 09:36:15'),
(30, '0953533701', 'Analisis dan Perancangan Sistem', 0, 5, 'To Be Added', 'BD', 3, 2, 1, '2016-12-11 09:36:15'),
(31, '0953533401', 'Manajemen Proyek', 0, 5, 'To Be Added', 'RPL, JK', 3, 2, 1, '2016-12-11 09:36:15'),
(32, '0953532702', 'Pengujian Perangkat Lunak', 0, 5, 'To Be Added', 'RPL', 2, 2, 0, '2016-12-11 09:36:15'),
(33, '0953633502', 'Pengolahan Sinyal Digital', 0, 5, 'To Be Added', 'KAL II, AL', 3, 2, 1, '2016-12-11 09:36:15'),
(34, '0953533302', 'Artificial Intelligence', 0, 5, 'To Be Added', 'PROB, MD II', 3, 3, 0, '2016-12-11 09:36:15'),
(35, '0953643005', 'Metode Penelitian', 0, 6, 'To Be Added', NULL, 3, 2, 1, '2016-12-11 17:11:29'),
(36, '0953633206', 'Manajemen Jaringan', 0, 6, 'To Be Added', 'JK', 3, 2, 1, '2016-12-11 17:11:29'),
(37, '0953633205', 'Sistem Terdistribusi', 0, 6, 'To Be Added', 'BD, JK', 3, 2, 1, '2016-12-11 17:11:29'),
(38, '0953642503', 'Interaksi Manusia dan Komputer', 0, 6, 'To Be Added', 'PBO, PW', 2, 2, 0, '2016-12-11 17:11:29'),
(39, '0953633101', 'Desain dan Analisis Algoritma', 0, 6, 'To Be Added', 'SDA II', 3, 3, 0, '2016-12-11 17:11:29'),
(40, '0953733901', 'Kerja Praktek', 0, 7, 'To Be Added', '90 SKS', 3, 0, 3, '2016-12-11 17:14:49'),
(41, '0953712012', 'Etika Profesi', 0, 7, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 17:14:49'),
(42, '0953712406', 'Kewirausahaan', 0, 7, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 17:14:49'),
(43, '0953812013', 'KKN', 0, 8, 'To Be Added', '110 SKS', 2, 0, 2, '2016-12-11 17:14:49'),
(44, '0953836902', 'Tugas Akhir', 0, 8, 'To Be Added', '110 SKS', 6, 0, 6, '2016-12-11 17:14:49'),
(45, '0953523300', 'Logika Samar', 1, 3, 'To Be Added', 'MD I, KAL II', 3, 3, 0, '2016-12-11 17:18:51'),
(46, '0953623607', 'Metode Formal', 1, 3, 'To Be Added', 'SDA I', 3, 2, 1, '2016-12-11 17:18:51'),
(47, '0953433501', 'Teknik Multimedia', 1, 4, 'To Be Added', NULL, 3, 2, 1, '2016-12-11 17:18:51'),
(48, '0953433500', 'Komputer Grafik', 1, 4, 'To Be Added', 'AL, KP', 3, 2, 1, '2016-12-11 17:18:51'),
(49, '0953432205', 'Open Source', 1, 4, 'To Be Added', 'SO', 2, 2, 0, '2016-12-11 17:18:51'),
(50, '0953533803', 'Mobile App Development', 1, 5, 'To Be Added', 'PBO', 3, 2, 1, '2016-12-11 17:30:49'),
(51, '0953533403', 'Manajemen Sistem Informasi', 1, 5, 'To Be Added', 'BD, JK', 3, 3, 0, '2016-12-11 17:30:49'),
(52, '0953533301', 'Jaringan Syaraf Tiruan', 1, 5, 'To Be Added', 'AI', 3, 2, 1, '2016-12-11 17:30:49'),
(53, '0953533206', 'Wireless and Mobile Computing', 1, 5, 'To Be Added', 'JK, PBO', 3, 2, 1, '2016-12-11 17:30:49'),
(54, '0953533102', 'Kriptografi dan Keamanan Informasi', 1, 5, 'To Be Added', 'AL', 3, 3, 0, '2016-12-11 17:30:49'),
(55, '0953534401', 'Basis Data Lanjut', 1, 5, 'To Be Added', 'BD', 4, 3, 1, '2016-12-11 17:30:49'),
(56, '0953633610', 'Simulasi dan Pemodelan', 1, 6, 'To Be Added', 'PROB', 3, 2, 1, '2016-12-11 17:30:49'),
(57, '0953622609', 'Teknik Kompilasi', 1, 6, 'To Be Added', 'TBA', 2, 1, 1, '2016-12-11 17:30:49'),
(58, '0953432204', 'Komputasi Grid', 1, 6, 'To Be Added', NULL, 2, 2, 0, '2016-12-11 17:30:49'),
(59, '0953623608', 'Natural Language Processing', 1, 6, 'To Be Added', 'TBA', 3, 3, 0, '2016-12-11 17:30:49'),
(60, '0953633703', 'Jaminan Mutu Perangkat Lunak', 1, 6, 'To Be Added', 'RPL', 3, 3, 0, '2016-12-11 17:30:49'),
(61, '0953633303', 'Sistem Pakar', 1, 6, 'To Be Added', 'AI', 3, 3, 0, '2016-12-11 17:30:49'),
(62, '0953633304', 'Sistem Pendukung Keputusan', 1, 6, 'To Be Added', 'AI', 3, 3, 0, '2016-12-11 17:30:49'),
(63, '0953633704', 'Proyek Perangkat Lunak', 1, 6, 'To Be Added', 'RPL', 3, 1, 2, '2016-12-11 17:30:49'),
(64, '0953732805', 'Semantic Web', 1, 7, 'To Be Added', 'PW', 2, 2, 0, '2016-12-11 17:30:49'),
(65, '0953733804', 'Data Mining', 1, 7, 'To Be Added', 'AL, STAT, BD', 3, 2, 1, '2016-12-11 17:30:49'),
(66, '0953733504', 'Pengolahan Citra Digital', 1, 7, 'To Be Added', 'AL, STAT', 3, 3, 0, '2016-12-11 17:30:49'),
(67, '0953733407', 'E-Commerce', 1, 7, 'To Be Added', 'PW', 3, 3, 0, '2016-12-11 17:30:49'),
(68, '0953533404', 'Sistem Informasi Geografis', 1, 7, 'To Be Added', 'PBO', 3, 2, 1, '2016-12-11 17:30:49'),
(69, '0953033900', 'Kapita Selekta Ilmu Komputer', 1, 0, 'To Be Added', '90 SKS', 2, 2, 0, '2016-12-11 17:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isi_review` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_makul` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `membantu` int(4) NOT NULL,
  `tidak_membantu` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'M0514012', '123456', 'Berton Arie P A'),
(2, 'M0514018', '123456', 'Fransiska Meilani'),
(3, 'M0514019', '123456', 'Hanif Sulthan Rizqullah'),
(4, 'M0514035', '123456', 'Nadya Mareta'),
(5, 'M0514039', '123456', 'Nurcahyo Dwi Nugroho');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id_makul`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `makul`
--
ALTER TABLE `makul`
  MODIFY `id_makul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
