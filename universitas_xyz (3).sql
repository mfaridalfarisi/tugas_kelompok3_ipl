-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 04:32 PM
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
-- Database: `universitas xyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen pembimbing`
--

CREATE TABLE `dosen pembimbing` (
  `name` varchar(30) NOT NULL,
  `nip` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no hp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen pembimbing`
--

INSERT INTO `dosen pembimbing` (`name`, `nip`, `email`, `no hp`) VALUES
('Jojo, S.Si., M.Si', 23415631, 'a2@gmail.com', '08122121');

-- --------------------------------------------------------

--
-- Table structure for table `dosen penguji`
--

CREATE TABLE `dosen penguji` (
  `nama` varchar(30) NOT NULL,
  `nip` int(11) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen penguji`
--

INSERT INTO `dosen penguji` (`nama`, `nip`, `jabatan`, `email`) VALUES
('Arie, S.Si., M.Si', 1972041819, 'dosen penguji', 'Arie08@gmail.cpm');

-- --------------------------------------------------------

--
-- Table structure for table `koordinator`
--

CREATE TABLE `koordinator` (
  `nama` varchar(30) NOT NULL,
  `nip` int(11) NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `koordinator`
--

INSERT INTO `koordinator` (`nama`, `nip`, `jabatan`) VALUES
('Debi, S.Si., M.Si', 23415634, 'koordinator');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nama` varchar(30) NOT NULL,
  `nim` int(11) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nilai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama`, `nim`, `kelas`, `jurusan`, `nilai`) VALUES
('Rahman', 341121100, 'A', 'informatika', '95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen pembimbing`
--
ALTER TABLE `dosen pembimbing`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `email` (`email`,`no hp`);

--
-- Indexes for table `koordinator`
--
ALTER TABLE `koordinator`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
