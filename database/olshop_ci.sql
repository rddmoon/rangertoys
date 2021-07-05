-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 04, 2021 at 04:26 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olshop_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `berat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`) VALUES
(13, 'Transformers Toys Movie Masterpiece Series MPM-10 Starscream - TFOE7299', 10, 2000000, 'Transformers Toys Movie Masterpiece Series MPM-10 Starscream - TFOE7299\r\n\r\nncludes: figure, 3 accessories, and instructions.\r\n\r\n• MOVIE MASTERPIECE SERIES: Masterpiece Movie Series figures are authentic Transformers collectible action figures modeled by the Transformers live action movies, with screen-inspired details and accessories\r\n• PREMIUM DESIGN: Featuring die cast parts and 190 deco ops with more than 50 points of articulation, this Starscream figure was inspired by the CAD files from the first Transformers live action movie\r\n• SCREEN-ACCURATE CONVERSION: Convert Starscream figure into a movie-inspired official Lockheed Martin F-22 Raptor Jet as seen in the first Transformers live action movie in 63 steps.\r\n• DETAILED FEATURES AND ACCESSORIES: Figure features highly articulated hands with movable fingers, flip up thrusters and a moveable mouth. Includes missile and buzz saw arm attachments and Gatling blaster accessories\r\n• POSE WITH OTHER MOVIE MASTERPIECE FIGURES: Reimagine iconic moments from the Transformers films with other Movie Masterpiece figures. Each sold separately. Subject to availability.\r\n• Figure scale: 11 inches\r\n• Ages 8 and up\r\n• Warning: Choking Hazard -- Small parts may be generated. Not for children under 3 years.', '03-TRANSFORMERS-TOYS-T84ATTFO0-TFOE7299-Multicolor.jpg', 3000),
(10, 'Lego Super Heroes Batman Cowl - 76182', 8, 1100000, 'Immerse yourself in a challenging and rewarding building experience as your imagination transports you to GOTHAM CITY™ with the impressive LEGO® DC Batman™: Batman Cowl (76182). Iconic Batman helmet to build and display This LEGO brick recreation of the unmistakable cowl worn by the Caped Crusader™ is sure to attract attention and admiration wherever it is placed. With transparent bricks to represent the face and a stylish fact plaque attached to the sturdy base, this remarkable model will provide a sense of fulfilment long after the construction work has finished.', '03-LEGO-T83HVLEO0-LEO76182-Multicolor.jpg', 2000),
(11, 'DICKIE TOYS Folding Fire Truck Playset - 203719005', 6, 1000000, '2n1 Multi Level Playset Light,Sound Incl 1 Vehicle & Heli', '01-DICKIE-TOYS-T83WEDIK0-DIK203719005-Multicolor.jpg', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(1, 3, 'gambar 1', 'gambar (1).jpg'),
(2, 3, 'gambar 2', 'gambar (2).jpg'),
(3, 3, 'gambar 3', 'gambar (3).jpg'),
(4, 3, 'gambar 4', 'gambar (4).jpg'),
(5, 3, 'gambar 5', 'gambar (5).jpg'),
(6, 1, 'Gambar hp', 'hp.jpg'),
(11, 2, 'Gambar 3', '7c6c3183baf8ec0e70c1050e94590274.png'),
(8, 2, 'ket 1', '007515200_1532563175-Jaringan_irigasi-ok.jpg'),
(12, 2, 'asdasd', 'Cadangan_Emas_Palsu_China_Jadi_Skandal_Terbesar_Dalam_Sejarah.jpg'),
(13, 1, 'Sekolah Favorit', 'cara-ampuh-membedakan-emas-palsu-dengan-emas-asli-secara-praktis-image-2017-11-10-154814.png'),
(14, 1, 'Gambar 3', 'aa.jpg'),
(15, 5, 'sepatu  nike', 'Screenshot_2.jpg'),
(16, 5, 'sepatu  nike', 'Screenshot_3.jpg'),
(17, 5, 'sepatu  nike', 'Screenshot_41.jpg'),
(18, 6, 'dinar', '104369803_571202500457938_2380333369834103872_n.jpg'),
(19, 6, 'dinar', '104463294_571202403791281_3288079409569155424_n.jpg'),
(20, 6, 'dinar', '105388602_571202433791278_3412922114720110387_n.jpg'),
(21, 6, 'dinar', '105692854_571202347124620_8948597222915416632_n.jpg'),
(22, 7, 'Xiaomi Mi Air 2S TWS 1', 'IMG_1497.jpg'),
(23, 7, 'Xiaomi Mi Air 2S TWS 2', 'xiaomi-mi-airdots-pro-2-tws-bluetooth-earphone-white-1.jpg'),
(24, 7, 'Xiaomi Mi Air 2S TWS 3', 'xiaomi-mi-airdots-pro-2-tws-earphone-white.jpg'),
(25, 8, 'Dinar', '81823543_a1468d3e-2b0d-4da7-9aa4-3314e51b75c6_700_700.jpg'),
(30, 9, 'back', 'RX-78-2_Gundam_Ver_One_Year_War_0079_Titanium_Finish_Ver__03.jpg'),
(27, 9, 'action', 'RX-78-2_Gundam_Ver_One_Year_War_0079_Titanium_Finish_Ver__06.jpg'),
(28, 10, 'front', '01-LEGO-T83HVLEO0-LEO76182-Multicolor1.jpg'),
(29, 10, 'back', '02-LEGO-T83HVLEO0-LEO76182-Multicolor1.jpg'),
(31, 11, 'dimensions', '02-DICKIE-TOYS-T83WEDIK0-DIK203719005-Multicolor1.jpg'),
(32, 9, 'front', 'RX-78-2_Gundam_Ver_One_Year_War_0079_Titanium_Finish_Ver__02.jpg'),
(33, 12, 'FRONT', 'RX-78-2_Gundam_Ver_One_Year_War_0079_Titanium_Finish_Ver__021.jpg'),
(34, 12, 'BACK', 'RX-78-2_Gundam_Ver_One_Year_War_0079_Titanium_Finish_Ver__031.jpg'),
(35, 12, 'ACTION', 'RX-78-2_Gundam_Ver_One_Year_War_0079_Titanium_Finish_Ver__061.jpg'),
(36, 13, 'front', '01-TRANSFORMERS-TOYS-T84ATTFO0-TFOE7299-Multicolor1.jpg'),
(37, 13, 'back', '02-TRANSFORMERS-TOYS-T84ATTFO0-TFOE7299-Multicolor1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(6, 'Cars and RC'),
(8, 'Construction Toys'),
(9, 'Animals'),
(10, 'Action Figures');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`, `foto`) VALUES
(3, 'Akashi', 'akashi.seijuro@gmail.com', 'akashi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'MANDIRI', '1400095000000', 'Ranger Toys'),
(2, 'BNI', '3342-0000-0000', 'Ranger Toys');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`) VALUES
(3, '20200812O3XECOUY', 8, 1),
(4, '20200812O3XECOUY', 7, 2),
(5, '20200812O3XECOUY', 6, 3),
(6, '20200812O3XECOUY', 5, 4),
(7, '20200812O3XECOUY', 3, 5),
(8, '20200812MKV2NIY9', 8, 1),
(9, '20200812MKV2NIY9', 7, 2),
(10, '20200812MKV2NIY9', 6, 3),
(11, '20200812BNHQ0F9S', 8, 1),
(12, '20200812BNHQ0F9S', 7, 2),
(13, '20200812BNHQ0F9S', 6, 4),
(14, '20200812BNHQ0F9S', 5, 1),
(15, '20200812BNHQ0F9S', 1, 1),
(16, '20200812BNHQ0F9S', 2, 1),
(17, '202008128VGYFL1H', 7, 1),
(18, '20200813RJUV2MGH', 8, 1),
(19, '20200813RJUV2MGH', 7, 1),
(20, '20200813RJUV2MGH', 6, 1),
(21, '20210704BSDSRKUY', 6, 2),
(22, '20210704BSDSRKUY', 7, 1),
(23, '202107046IUF2KN4', 11, 1),
(24, '202107046IUF2KN4', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telpon`) VALUES
(1, 'Ranger Toys', 444, 'Jl. Area no. 51', '081234567890');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(25) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` varchar(8) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(18, 3, '202107046IUF2KN4', '2021-07-04', 'Akashi Seijuro', '081234567890', 'Jawa Timur', '133', 'Jalan Rumah no. 1, Gresik', '61122', 'jne', 'YES', '1-1 Hari', 50000, 5000, 2100000, 2150000, 1, 'IMG-20210608-WA00011.jpg', 'Akashi', 'Mandiri', '1400095000001', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level_user` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'Wardah', 'wardah', 'wardah', 1),
(2, 'Intan', 'intan', 'intan', 1),
(4, 'Yaniar', 'yaniar', 'yaniar', 1),
(5, 'Daniel', 'daniel', 'daniel', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`) USING BTREE;

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`) USING BTREE;

--
-- Indexes for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`) USING BTREE;

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
