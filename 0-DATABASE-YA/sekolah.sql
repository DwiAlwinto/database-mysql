-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2024 at 07:07 PM
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
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_induk` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`) VALUES
(2, 'Ekonomi'),
(4, 'Kebudayan'),
(5, 'Otomotif'),
(6, 'Programmer'),
(7, 'Tata Busana');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_induk` int(12) NOT NULL,
  `kelas` int(2) NOT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `angkatan` int(4) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `Nilai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id`, `nama`, `no_induk`, `kelas`, `jurusan_id`, `angkatan`, `tanggal_daftar`, `Nilai`) VALUES
(2, 'Budi Susanto', 1002, 11, 2, 2014, '2014-02-19', 8),
(3, 'Dinda Anjani', 1003, 12, 4, 2014, '2014-01-08', 7),
(4, 'Ika Susanto', 1004, 11, 6, 2014, '2015-01-30', 9),
(5, 'Janney Ling', 1005, 12, 5, 2015, '2015-01-20', 9),
(6, 'Diska Anjani', 1006, 11, 7, 2015, '2015-01-26', 7),
(7, 'Lina Mutiara', 1007, 12, 6, 2016, '2016-02-29', 8),
(8, 'Alin Navira', 1008, 11, 6, 2016, '2016-01-15', 10),
(9, 'Bella Safira', 1009, 11, 6, 2015, '2015-01-19', 10),
(12, 'Delia Paramitha', 1010, 11, 2, 2015, '2014-01-17', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_induk` (`no_induk`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_induk` (`no_induk`),
  ADD KEY `fk_jurusanmurid` (`jurusan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `murid`
--
ALTER TABLE `murid`
  ADD CONSTRAINT `fk_jurusanmurid` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
