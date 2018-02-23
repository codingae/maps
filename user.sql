-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2018 at 05:35 PM
-- Server version: 10.0.33-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 5.6.33-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tes`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `tentang_toko` varchar(70) NOT NULL,
  `id_kecamatan` varchar(50) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `kode_pos` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `foto` text NOT NULL,
  `latitude` double NOT NULL,
  `longtitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `fullname`, `password`, `nama_toko`, `tentang_toko`, `id_kecamatan`, `alamat`, `kode_pos`, `email`, `no_hp`, `no_rek`, `foto`, `latitude`, `longtitude`) VALUES
(1, '1', 'hahhahahha', '1', 'shopee', '', '11', 'adoh', '123121', 'gmail', '122222222222', '828828', '', -6.8919604, 107.615613),
(9, '3', '09', '3', 'lapak bos', '', '11', '09', '09', '09', '222222222222', '788787', '', -7.7955798, 110.3694896),
(221, '2', '13111111', '2', 'toko baru1', '', '11', '131', '2222', '2', '0303993', '22', '', -7.2574715, 112.7520883),
(92983746, 'aku', 'coba1', '1', 'ud jaya', '', '11', 'qwerty1', '111111', 'haha@gmail.com', '085756-2-2-2', '111', '', -7.5509198, 112.2231814);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92983747;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
