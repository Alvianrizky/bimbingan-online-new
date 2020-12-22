-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2020 at 02:33 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimbingan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
CREATE TABLE IF NOT EXISTS `dosen` (
  `NPP` int(30) NOT NULL,
  `Nama` varchar(300) NOT NULL,
  `Jabatan` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`NPP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`NPP`, `Nama`, `Jabatan`, `created_at`, `updated_at`) VALUES
(11223360, 'Herdiesel Santoso', 'Kaprodi Sistem Informasi', '2020-05-13 09:04:35', '0000-00-00 00:00:00'),
(11223362, 'Wahyu Widodo', 'Kaprodi Teknik Informatika', '2020-05-13 09:04:58', '0000-00-00 00:00:00'),
(11223364, 'Andri Safriyanto', 'Dosen', '2020-05-13 09:05:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'mahasiswa', 'Mahasiswa'),
(6, 'dosen', 'Dosen'),
(7, 'kaprodi', 'Ketua Program Studi'),
(11, 'kaprodi_SI', 'Ketua Program Studi Sistem Informasi'),
(12, 'kaprodi_TI', 'Ketua Program Studi Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `group_pesan`
--

DROP TABLE IF EXISTS `group_pesan`;
CREATE TABLE IF NOT EXISTS `group_pesan` (
  `GroupPesanID` int(30) NOT NULL AUTO_INCREMENT,
  `Name1` int(30) NOT NULL,
  `Name2` int(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`GroupPesanID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_pesan`
--

INSERT INTO `group_pesan` (`GroupPesanID`, `Name1`, `Name2`, `created_at`, `updated_at`) VALUES
(1, 11223364, 12171568, '2020-08-27 10:06:52', '0000-00-00 00:00:00'),
(2, 11223362, 12171566, '2020-09-13 14:34:44', '0000-00-00 00:00:00'),
(3, 11170386, 11223360, '2020-11-06 12:10:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `NIM` int(30) NOT NULL,
  `Nama` varchar(300) NOT NULL,
  `Prodi` varchar(100) NOT NULL,
  `Angkatan` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Prodi`, `Angkatan`, `created_at`, `updated_at`) VALUES
(11170386, 'Ana Suryaningsih', 'Sistem Informasi', '2017', '2020-05-13 08:57:56', '2020-05-17 09:20:07'),
(11170392, 'Intan Hidayah', 'Sistem Informasi', '2017', '2020-05-13 08:57:32', '2020-05-17 09:20:01'),
(11170403, 'Yulistiana', 'Sistem Informasi', '2017', '2020-05-13 08:58:53', '2020-05-17 09:19:54'),
(12171564, 'Linda Pratiwi', 'Teknik Informatika', '2017', '2020-05-13 08:47:33', '0000-00-00 00:00:00'),
(12171566, 'Miftakhul Huda Ari Santoso', 'Teknik Informatika', '2017', '2020-05-13 08:47:16', '0000-00-00 00:00:00'),
(12171568, 'Muhammad Alvian Rizky', 'Teknik Informatika', '2017', '2020-05-13 08:46:50', '0000-00-00 00:00:00'),
(12171570, 'Muhammad Munir Akromin', 'Teknik Informatika', '2017', '2020-05-13 08:48:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

DROP TABLE IF EXISTS `penelitian`;
CREATE TABLE IF NOT EXISTS `penelitian` (
  `PenelitianID` int(30) NOT NULL AUTO_INCREMENT,
  `NIM` int(30) DEFAULT NULL,
  `NPP` int(30) DEFAULT NULL,
  `Jenis` varchar(100) NOT NULL,
  `Judul` varchar(300) NOT NULL,
  `TahunAkademikID` int(30) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Info` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`PenelitianID`),
  KEY `NIM` (`NIM`),
  KEY `fk_penelitian_dosen` (`NPP`),
  KEY `fk_penelitian_tahun` (`TahunAkademikID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`PenelitianID`, `NIM`, `NPP`, `Jenis`, `Judul`, `TahunAkademikID`, `Status`, `Info`, `created_at`, `updated_at`) VALUES
(2, 12171568, 11223364, 'Kerja Praktek', 'Sistem Informasi Bimbingan Online STMIK El Rahma Yogyakarta Berbasis Web PHP Ajax dan Codeigniter', 10, 'On Proses', 0, '2020-08-27 09:43:39', '2020-08-27 09:43:43'),
(3, 12171566, 11223362, 'Kerja Praktek', 'Analisis Web STMIK El Rahma Yogyakarta', 10, 'On Proses', 0, '2020-09-13 14:29:53', '2020-09-13 14:29:55'),
(4, 12171564, 11223360, 'Kerja Praktek', 'Sistem Informasi Perpustakan STMIK El Rahma Yogyakarta', 10, 'On Proses', 0, '2020-09-13 14:32:42', '2020-09-15 07:17:42'),
(5, 11170386, 11223360, 'Kerja Praktek', 'Apa AJa dah', 10, 'On Proses', 0, '2020-11-06 12:09:52', '2020-11-06 12:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

DROP TABLE IF EXISTS `pengajuan`;
CREATE TABLE IF NOT EXISTS `pengajuan` (
  `PengajuanID` int(30) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(30) NOT NULL,
  `JenisPengajuan` varchar(100) NOT NULL,
  `JudulPenelitian` varchar(300) NOT NULL,
  `TahunAkademikID` int(30) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Info` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`PengajuanID`),
  KEY `fk_pengajuan_tahun` (`TahunAkademikID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`PengajuanID`, `NIM`, `JenisPengajuan`, `JudulPenelitian`, `TahunAkademikID`, `Status`, `Info`, `created_at`, `updated_at`) VALUES
(2, '12171568', 'Kerja Praktek', 'Sistem Informasi Bimbingan Online STMIK El Rahma Yogyakarta Berbasis Web PHP Ajax dan Codeigniter', 10, 'Disetujui', 0, '2020-08-27 09:43:27', '2020-08-27 09:43:34'),
(3, '12171566', 'Kerja Praktek', 'Analisis Web STMIK El Rahma Yogyakarta', 10, 'Disetujui', 0, '2020-09-13 14:29:37', '2020-09-13 14:29:52'),
(4, '12171564', 'Kerja Praktek', 'Sistem Informasi Perpustakan STMIK El Rahma Yogyakarta', 10, 'Disetujui', 0, '2020-09-13 14:32:07', '2020-09-13 14:32:37'),
(5, '11170386', 'Kerja Praktek', 'Apa AJa dah', 10, 'Disetujui', 0, '2020-11-06 12:07:55', '2020-11-06 12:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

DROP TABLE IF EXISTS `pesan`;
CREATE TABLE IF NOT EXISTS `pesan` (
  `PesanID` int(30) NOT NULL AUTO_INCREMENT,
  `GroupPesanID` int(30) NOT NULL,
  `ProposalID` int(30) DEFAULT NULL,
  `Name` int(30) NOT NULL,
  `Pesan` text NOT NULL,
  `Info` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`PesanID`),
  KEY `ProposalID` (`ProposalID`),
  KEY `fk_pesan_group_pesan` (`GroupPesanID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`PesanID`, `GroupPesanID`, `ProposalID`, `Name`, `Pesan`, `Info`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 11223364, 'test', 0, '2020-08-27 10:10:27', '0000-00-00 00:00:00'),
(2, 1, 1, 12171568, '', 0, '2020-09-13 13:48:24', '0000-00-00 00:00:00'),
(3, 2, 2, 12171566, '', 0, '2020-09-15 07:18:58', '0000-00-00 00:00:00'),
(4, 3, 3, 11170386, '', 0, '2020-11-06 12:10:52', '0000-00-00 00:00:00'),
(5, 3, 4, 11223360, '', 0, '2020-11-06 12:12:02', '0000-00-00 00:00:00'),
(6, 3, NULL, 11223360, 'cek', 0, '2020-11-06 12:13:51', '0000-00-00 00:00:00'),
(7, 3, NULL, 11223360, 'lagi ngapain', 0, '2020-11-06 12:14:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

DROP TABLE IF EXISTS `prodi`;
CREATE TABLE IF NOT EXISTS `prodi` (
  `ProdiID` int(30) NOT NULL AUTO_INCREMENT,
  `NamaProdi` varchar(150) NOT NULL,
  `Jenjang` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`ProdiID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

DROP TABLE IF EXISTS `proposal`;
CREATE TABLE IF NOT EXISTS `proposal` (
  `ProposalID` int(30) NOT NULL AUTO_INCREMENT,
  `PenelitianID` int(30) NOT NULL,
  `NamaBAB` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Keterangan` varchar(300) NOT NULL,
  `NamaFile` varchar(100) NOT NULL,
  `Info` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`ProposalID`),
  KEY `fk_proposal_penelitian` (`PenelitianID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`ProposalID`, `PenelitianID`, `NamaBAB`, `Status`, `Keterangan`, `NamaFile`, `Info`, `created_at`, `updated_at`) VALUES
(1, 2, 'BAB-1', 'Laporan Baru', '', '12171568-BAB-1-200913014824.pdf', 0, '2020-09-13 13:48:24', '2020-09-13 13:48:25'),
(2, 3, 'BAB-1', 'Laporan Baru', '', '12171566-BAB-1-200915071858.pdf', 0, '2020-09-15 07:18:58', '2020-09-15 07:19:00'),
(3, 5, 'BAB-1', 'Laporan Baru', 'kurang apa disini', '11170386-BAB-1-201106121052.pdf', 0, '2020-11-06 12:10:52', '2020-11-06 12:12:47'),
(4, 5, 'Revisi', 'Revisi', '', '11223360-Revisi-201106121202.pdf', 0, '2020-11-06 12:12:02', '2020-11-06 12:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `sk_penelitian`
--

DROP TABLE IF EXISTS `sk_penelitian`;
CREATE TABLE IF NOT EXISTS `sk_penelitian` (
  `SKID` int(30) NOT NULL AUTO_INCREMENT,
  `NomerSK` varchar(100) NOT NULL,
  `PenelitianID` int(30) NOT NULL,
  `Prodi` varchar(30) NOT NULL,
  `Jenis` varchar(30) NOT NULL,
  `TahunAkademikID` int(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`SKID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_penelitian`
--

INSERT INTO `sk_penelitian` (`SKID`, `NomerSK`, `PenelitianID`, `Prodi`, `Jenis`, `TahunAkademikID`, `created_at`, `updated_at`) VALUES
(1, '010/TI/SKep/IX/20', 2, 'Teknik Informatika', 'Kerja Praktek', 10, '2020-09-13 14:33:48', '0000-00-00 00:00:00'),
(2, '010/TI/SKep/IX/20', 3, 'Teknik Informatika', 'Kerja Praktek', 10, '2020-09-13 14:33:48', '0000-00-00 00:00:00'),
(3, '010/TI/SKep/IX/20', 4, 'Teknik Informatika', 'Kerja Praktek', 10, '2020-09-13 14:33:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

DROP TABLE IF EXISTS `tahun_akademik`;
CREATE TABLE IF NOT EXISTS `tahun_akademik` (
  `TahunAkademikID` int(30) NOT NULL AUTO_INCREMENT,
  `TahunAkademik` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`TahunAkademikID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`TahunAkademikID`, `TahunAkademik`, `Status`, `created_at`, `updated_at`) VALUES
(9, '2019/2020-1', '0', '2020-05-31 08:59:56', '2020-06-01 06:08:51'),
(10, '2019/2020-2', '1', '2020-05-31 09:00:04', '2020-06-01 06:08:51'),
(11, '2018/2019-1', '0', '2020-05-31 12:58:58', '2020-06-01 06:08:51'),
(12, '2018/2019-2', '0', '2020-05-31 12:59:05', '2020-06-01 06:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `phone`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$200Z6ZZbp3RAEXoaWcMA6uJOFicwNZaqk4oDhqTUiFXFe63MG.Daa', '', '0', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2020-11-06 12:08:41', 1, 'Admin', 'istrator', 'ADMIN'),
(2, '::1', '11170386', '$2y$08$4aP5MynpZghhE5J3H1ghbu1I3tJrp39J.zzO2T72Tq7o5J2tT8VKG', NULL, '082157699833', 'ana@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-06 12:11:33', '2020-11-06 12:07:11', 1, 'Ana Suryaningsih', NULL, NULL),
(3, '::1', '11223360', '$2y$08$A1RZzeAUd6h5mzIQ6EzehecPY0lxb30PJqPFZutzfnSleMl7bwX1G', NULL, '', 'si@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-06 12:11:59', '2020-11-06 12:09:09', 1, 'Herdiesel Santoso', NULL, NULL),
(4, '::1', '11223362', '$2y$08$OwTXXCyWUSbs1hzjvvAqn.eQco6zGT1kR9XRGXAovDsJX.2tzIare', NULL, '', 'ti@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-06 12:11:21', '2020-11-30 03:51:06', 1, 'Wahyu Widodo', NULL, NULL),
(5, '::1', '11223364', '$2y$08$dvFi7s9W6DVjKQhf9mWy2uh0gofXnaraqeFLXEcawWnGi4wNokCZC', NULL, '', 'dosen@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-06 12:11:43', NULL, 1, 'Andri Safriyanto', NULL, NULL),
(6, '::1', '12171564', '$2y$08$vCuSwAaYfJa/ZkS2yRBJD.fuYVmjBLxKFzy.Uv8KLiASp2Tvk4w4O', NULL, '', 'linda@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-06 12:11:07', NULL, 1, 'Linda Pratiwi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 11),
(5, 4, 12),
(6, 5, 6),
(7, 6, 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `fk_penelitian_dosen` FOREIGN KEY (`NPP`) REFERENCES `dosen` (`NPP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_penelitian_mahasiswa` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_penelitian_tahun` FOREIGN KEY (`TahunAkademikID`) REFERENCES `tahun_akademik` (`TahunAkademikID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `fk_pengajuan_tahun` FOREIGN KEY (`TahunAkademikID`) REFERENCES `tahun_akademik` (`TahunAkademikID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `fk_pesan_group_pesan` FOREIGN KEY (`GroupPesanID`) REFERENCES `group_pesan` (`GroupPesanID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pesan_proposal` FOREIGN KEY (`ProposalID`) REFERENCES `proposal` (`ProposalID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `fk_proposal_penelitian` FOREIGN KEY (`PenelitianID`) REFERENCES `penelitian` (`PenelitianID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
