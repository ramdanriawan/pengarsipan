-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2017 at 01:31 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengarsipan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

DROP TABLE IF EXISTS `tbl_disposisi`;
CREATE TABLE IF NOT EXISTS `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(2, 'Nur Hafid', 'Segera Koordinasi Pelaksanaan Zakat Fitrah', 'Segera', '2016-06-12', 'Segera Laksanakan', 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

DROP TABLE IF EXISTS `tbl_instansi`;
CREATE TABLE IF NOT EXISTS `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepala` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepala`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Pusat Penelitian Dan Pengembangan ', 'Hasil Hutan', 'aktif', 'Jl. Gunung Batu No.5 Bogor 16610. ', 'Dr.Ir. Dwi Sudharto, M.Si.', '-', 'http://www.pustekolah.org', 'fpc.052017@gmail.com', 'logo1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

DROP TABLE IF EXISTS `tbl_sett`;
CREATE TABLE IF NOT EXISTS `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 100, 5, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

DROP TABLE IF EXISTS `tbl_surat_keluar`;
CREATE TABLE IF NOT EXISTS `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `input` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `input`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(1, 6676, 'sgahghaghsa', 'shjhsjhjs', 'shggshg', 'admin', '2017-10-15', '2017-08-29', '8165-flower11.jpg', 'shsggh', 1),
(3, 883, 'hjj', '88', 'jj', 'ad', '2017-10-29', '2017-08-29', '3849-Flower wallpaper, camomile.jpg', 'jk', 1),
(4, 883, 'hjj', '88', 'jj', 'ad', '2017-10-29', '2017-08-29', '3849-Flower wallpaper, camomile.jpg', 'jk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

DROP TABLE IF EXISTS `tbl_surat_masuk`;
CREATE TABLE IF NOT EXISTS `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` int(11) NOT NULL,
  `input` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `input`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(11, 1, '001/PPH/VI/2016', 'Pondok Pesantren Hidayatullah Nganjuk', 'Permohonan Zakat Fitrah', 0, 'A.1', '2016-06-09', '2016-07-24', '601-surat masuk 1.jpg', 'Penting', 1),
(15, 2, '638/UN22.7/KS/2014', 'Kementerian Pendidikan Dan Kebudayaan      Universitas Tanjungpura Fakultas Kehutanan', 'Permohohan Sebagai Narasumber', 0, '', '2017-03-24', '2017-09-05', '7723-scan0001.jpg', 'Penting', 1),
(16, 11, '99', 'jj', 'hh', 0, '', '2017-10-11', '2017-10-10', '8158-Flower wallpaper, camomile.jpg', 'hh', 1),
(17, 1, '1234567', 'asdfghj', 'asdfghjkjhgfdsa', 0, '', '2017-10-14', '2017-10-14', '4005-flower1.jpg', 'asdfghjkl', 1),
(18, 2, '2', '2', '2', 2, '2', '2017-10-14', '2017-10-18', 'sfsf', 'sfdsdf', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '-', 1),
(2, 'disposisi', '944d0f3ad1dc4fa234c3a0bc5cb963aa', 'Petugas Disposisi', '-', 2),
(4, 'novia', '827ccb0eea8a706c4c34a16891f84e7b', 'novia', '12345', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
