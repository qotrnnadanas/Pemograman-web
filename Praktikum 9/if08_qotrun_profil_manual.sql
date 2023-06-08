-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 09:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if08_qotrun_profil_manual`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Tentang kami', 'Tentang prodak'),
(2, 'Even', 'Tentang even');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penulis`
--

CREATE TABLE `tb_penulis` (
  `id` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `foto` varchar(220) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_penulis`
--

INSERT INTO `tb_penulis` (`id`, `nama`, `foto`, `deskripsi`) VALUES
(1, 'Putru Arini', 'https://pict.sindonews.net/dyn/732/pena/news/2023/06/07/187/1119819/profil-putri-ariani-penyanyi-difabel-indonesia-yang-sukses-pukau-panggung-americas-got-talent-qrj.jpg', 'Ariani Nisma Putri, atau yang lebih dikenal sebagai Putri Ariani, adalah seorang penyanyi pop solo Disabilitas Netra wanita berkebangsaan Indonesia. Namanya mulai dikenal semenjak mengikuti kompetisi Indonesia\'s Got Talent 2014 dan berhasil meraih posisi sebagai pemenang.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `id` int(10) NOT NULL,
  `judul` varchar(220) NOT NULL,
  `category` int(4) NOT NULL,
  `konten` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(220) NOT NULL,
  `penulis` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`id`, `judul`, `category`, `konten`, `tgl_posting`, `gambar`, `penulis`) VALUES
(1, 'Putri Arini', 1, 'Ariani Nisma Putri, atau yang lebih dikenal sebagai Putri Ariani, adalah seorang penyanyi pop solo Disabilitas Netra wanita berkebangsaan Indonesia. Namanya mulai dikenal semenjak mengikuti kompetisi Indonesia\'s Got Talent 2014 dan berhasil meraih posisi sebagai pemenang.', '2023-06-07', 'https://thumb.zigi.id/frontend/thumbnail/2022/03/07/zigi-6225ce4d50e87-putri-ariani_910_512.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penulis`
--
ALTER TABLE `tb_penulis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `penulis` (`penulis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_penulis`
--
ALTER TABLE `tb_penulis`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `tb_category` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `penulis` FOREIGN KEY (`penulis`) REFERENCES `tb_penulis` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
