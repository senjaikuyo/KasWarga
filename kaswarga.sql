-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Des 2025 pada 07.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaswarga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan`
--

CREATE TABLE `catatan` (
  `id` int(11) NOT NULL,
  `id_iuran` int(11) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` text NOT NULL,
  `metode` varchar(50) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `jumlah` decimal(12,2) NOT NULL,
  `status` enum('lunas','pending','belum lunas') NOT NULL DEFAULT 'lunas',
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `bukti` varchar(255) NOT NULL,
  `nama_iuran` varchar(100) DEFAULT NULL,
  `kategori` enum('pemasukan','pengeluaran') NOT NULL,
  `uraian` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `catatan`
--

INSERT INTO `catatan` (`id`, `id_iuran`, `nik`, `nama`, `alamat`, `metode`, `periode`, `jumlah`, `status`, `tanggal`, `bukti`, `nama_iuran`, `kategori`, `uraian`) VALUES
(1, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-01-07 03:00:00', 'bukti_1766034047131.jpeg', 'Keamanan', 'pemasukan', NULL),
(2, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-02-15 03:00:00', 'bukti_1766034047249.jpeg', 'Keamanan', 'pemasukan', NULL),
(3, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-03-14 03:00:00', 'bukti_1766034047161.jpeg', 'Keamanan', 'pemasukan', NULL),
(4, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-04-21 03:00:00', 'bukti_1766034047888.jpeg', 'Keamanan', 'pemasukan', NULL),
(5, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-05-08 03:00:00', 'bukti_1766034047574.jpeg', 'Keamanan', 'pemasukan', NULL),
(6, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-06-05 03:00:00', 'bukti_1766034047772.jpeg', 'Keamanan', 'pemasukan', NULL),
(7, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-07-06 03:00:00', 'bukti_1766034047800.jpeg', 'Keamanan', 'pemasukan', NULL),
(8, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-08-19 03:00:00', 'bukti_1766034047264.jpeg', 'Keamanan', 'pemasukan', NULL),
(9, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-09-08 03:00:00', 'bukti_1766034047716.jpeg', 'Keamanan', 'pemasukan', NULL),
(10, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-10-08 03:00:00', 'bukti_1766034047675.jpeg', 'Keamanan', 'pemasukan', NULL),
(11, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2019-11-07 03:00:00', 'bukti_1766034047540.jpeg', 'Keamanan', 'pemasukan', NULL),
(12, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-12-14 03:00:00', 'bukti_1766034047148.jpeg', 'Keamanan', 'pemasukan', NULL),
(13, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-01-25 03:00:00', 'bukti_1766034047943.jpeg', 'Keamanan', 'pemasukan', NULL),
(14, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2020-02-07 03:00:00', 'bukti_1766034047907.jpeg', 'Keamanan', 'pemasukan', NULL),
(15, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-03-13 03:00:00', 'bukti_1766034047712.jpeg', 'Keamanan', 'pemasukan', NULL),
(16, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-04-20 03:00:00', 'bukti_1766034047969.jpeg', 'Keamanan', 'pemasukan', NULL),
(17, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-05-19 03:00:00', 'bukti_1766034047132.jpeg', 'Keamanan', 'pemasukan', NULL),
(18, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-06-11 03:00:00', 'bukti_1766034047472.jpeg', 'Keamanan', 'pemasukan', NULL),
(19, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-07-21 03:00:00', 'bukti_1766034047365.jpeg', 'Keamanan', 'pemasukan', NULL),
(20, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2020-08-18 03:00:00', 'bukti_1766034047711.jpeg', 'Keamanan', 'pemasukan', NULL),
(21, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-09-19 03:00:00', 'bukti_1766034047292.jpeg', 'Keamanan', 'pemasukan', NULL),
(22, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-10-12 03:00:00', 'bukti_1766034047669.jpeg', 'Keamanan', 'pemasukan', NULL),
(23, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-11-12 03:00:00', 'bukti_1766034047162.jpeg', 'Keamanan', 'pemasukan', NULL),
(24, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-12-23 03:00:00', 'bukti_1766034047910.jpeg', 'Keamanan', 'pemasukan', NULL),
(25, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-01-22 03:00:00', 'bukti_1766034047811.jpeg', 'Keamanan', 'pemasukan', NULL),
(26, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-02-17 03:00:00', 'bukti_1766034047505.jpeg', 'Keamanan', 'pemasukan', NULL),
(27, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-03-10 03:00:00', 'bukti_1766034047666.jpeg', 'Keamanan', 'pemasukan', NULL),
(28, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-04-10 03:00:00', 'bukti_1766034047558.jpeg', 'Keamanan', 'pemasukan', NULL),
(29, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-05-10 03:00:00', 'bukti_1766034047691.jpeg', 'Keamanan', 'pemasukan', NULL),
(30, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-06-20 03:00:00', 'bukti_1766034047217.jpeg', 'Keamanan', 'pemasukan', NULL),
(31, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-07-21 03:00:00', 'bukti_1766034047451.jpeg', 'Keamanan', 'pemasukan', NULL),
(32, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-08-06 03:00:00', 'bukti_1766034047218.jpeg', 'Keamanan', 'pemasukan', NULL),
(33, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-09-07 03:00:00', 'bukti_1766034047920.jpeg', 'Keamanan', 'pemasukan', NULL),
(34, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-10-15 03:00:00', 'bukti_1766034047793.jpeg', 'Keamanan', 'pemasukan', NULL),
(35, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-11-19 03:00:00', 'bukti_1766034047338.jpeg', 'Keamanan', 'pemasukan', NULL),
(36, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-12-05 03:00:00', 'bukti_1766034047726.jpeg', 'Keamanan', 'pemasukan', NULL),
(37, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-01-17 03:00:00', 'bukti_1766034047256.jpeg', 'Keamanan', 'pemasukan', NULL),
(38, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-02-22 03:00:00', 'bukti_1766034047629.jpeg', 'Keamanan', 'pemasukan', NULL),
(39, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-03-09 03:00:00', 'bukti_1766034047401.jpeg', 'Keamanan', 'pemasukan', NULL),
(40, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-04-09 03:00:00', 'bukti_1766034047240.jpeg', 'Keamanan', 'pemasukan', NULL),
(41, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-05-18 03:00:00', 'bukti_1766034047408.jpeg', 'Keamanan', 'pemasukan', NULL),
(42, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-06-06 03:00:00', 'bukti_1766034047837.jpeg', 'Keamanan', 'pemasukan', NULL),
(43, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-07-09 03:00:00', 'bukti_1766034047925.jpeg', 'Keamanan', 'pemasukan', NULL),
(44, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-08-20 03:00:00', 'bukti_1766034047905.jpeg', 'Keamanan', 'pemasukan', NULL),
(45, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-09-11 03:00:00', 'bukti_1766034047634.jpeg', 'Keamanan', 'pemasukan', NULL),
(46, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-10-15 03:00:00', 'bukti_1766034047429.jpeg', 'Keamanan', 'pemasukan', NULL),
(47, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-11-07 03:00:00', 'bukti_1766034047381.jpeg', 'Keamanan', 'pemasukan', NULL),
(48, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-12-20 03:00:00', 'bukti_1766034047534.jpeg', 'Keamanan', 'pemasukan', NULL),
(49, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-01-25 03:00:00', 'bukti_1766034047994.jpeg', 'Keamanan', 'pemasukan', NULL),
(50, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2023-02-15 03:00:00', 'bukti_1766034047430.jpeg', 'Keamanan', 'pemasukan', NULL),
(51, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-03-15 03:00:00', 'bukti_1766034047507.jpeg', 'Keamanan', 'pemasukan', NULL),
(52, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-04-16 03:00:00', 'bukti_1766034047902.jpeg', 'Keamanan', 'pemasukan', NULL),
(53, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-05-22 03:00:00', 'bukti_1766034047233.jpeg', 'Keamanan', 'pemasukan', NULL),
(54, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-06-24 03:00:00', 'bukti_1766034047277.jpeg', 'Keamanan', 'pemasukan', NULL),
(55, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-07-22 03:00:00', 'bukti_1766034047407.jpeg', 'Keamanan', 'pemasukan', NULL),
(56, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-08-13 03:00:00', 'bukti_1766034047926.jpeg', 'Keamanan', 'pemasukan', NULL),
(57, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2023-09-21 03:00:00', 'bukti_1766034047491.jpeg', 'Keamanan', 'pemasukan', NULL),
(58, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-10-22 03:00:00', 'bukti_1766034047590.jpeg', 'Keamanan', 'pemasukan', NULL),
(59, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-11-13 03:00:00', 'bukti_1766034047236.jpeg', 'Keamanan', 'pemasukan', NULL),
(60, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-12-08 03:00:00', 'bukti_1766034047261.jpeg', 'Keamanan', 'pemasukan', NULL),
(61, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-01-15 03:00:00', 'bukti_1766034047871.jpeg', 'Keamanan', 'pemasukan', NULL),
(62, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-02-11 03:00:00', 'bukti_1766034047609.jpeg', 'Keamanan', 'pemasukan', NULL),
(63, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-03-14 03:00:00', 'bukti_1766034047608.jpeg', 'Keamanan', 'pemasukan', NULL),
(64, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2024-04-14 03:00:00', 'bukti_1766034047446.jpeg', 'Keamanan', 'pemasukan', NULL),
(65, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-05-08 03:00:00', 'bukti_1766034047343.jpeg', 'Keamanan', 'pemasukan', NULL),
(66, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-06-06 03:00:00', 'bukti_1766034047649.jpeg', 'Keamanan', 'pemasukan', NULL),
(67, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-07-12 03:00:00', 'bukti_1766034047289.jpeg', 'Keamanan', 'pemasukan', NULL),
(68, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-08-06 03:00:00', 'bukti_1766034047997.jpeg', 'Keamanan', 'pemasukan', NULL),
(69, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-09-14 03:00:00', 'bukti_1766034047875.jpeg', 'Keamanan', 'pemasukan', NULL),
(70, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-10-23 03:00:00', 'bukti_1766034047295.jpeg', 'Keamanan', 'pemasukan', NULL),
(71, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-11-12 03:00:00', 'bukti_1766034047231.jpeg', 'Keamanan', 'pemasukan', NULL),
(72, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-12-24 03:00:00', 'bukti_1766034047893.jpeg', 'Keamanan', 'pemasukan', NULL),
(73, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-01-09 03:00:00', 'bukti_1766034047301.jpeg', 'Keamanan', 'pemasukan', NULL),
(74, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-02-20 03:00:00', 'bukti_1766034047247.jpeg', 'Keamanan', 'pemasukan', NULL),
(75, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-03-19 03:00:00', 'bukti_1766034047823.jpeg', 'Keamanan', 'pemasukan', NULL),
(76, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-04-21 03:00:00', 'bukti_1766034047652.jpeg', 'Keamanan', 'pemasukan', NULL),
(77, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-05-21 03:00:00', 'bukti_1766034047773.jpeg', 'Keamanan', 'pemasukan', NULL),
(78, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-06-10 03:00:00', 'bukti_1766034047749.jpeg', 'Keamanan', 'pemasukan', NULL),
(79, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-07-19 03:00:00', 'bukti_1766034047632.jpeg', 'Keamanan', 'pemasukan', NULL),
(80, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-08-10 03:00:00', 'bukti_1766034047272.jpeg', 'Keamanan', 'pemasukan', NULL),
(81, 35, '4342501040', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-09-24 03:00:00', 'bukti_1766034047124.jpeg', 'Keamanan', 'pemasukan', NULL),
(82, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-10-05 03:00:00', 'bukti_1766034047819.jpeg', 'Keamanan', 'pemasukan', NULL),
(83, 35, '4342501040', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-11-19 03:00:00', 'bukti_1766034047666.jpeg', 'Keamanan', 'pemasukan', NULL),
(84, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2019-01-25 03:00:00', 'bukti_1766034047280.jpeg', 'Kebersihan', 'pemasukan', NULL),
(85, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-02-18 03:00:00', 'bukti_1766034047939.jpeg', 'Kebersihan', 'pemasukan', NULL),
(86, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-03-21 03:00:00', 'bukti_1766034047810.jpeg', 'Kebersihan', 'pemasukan', NULL),
(87, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-04-10 03:00:00', 'bukti_1766034047204.jpeg', 'Kebersihan', 'pemasukan', NULL),
(88, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-05-19 03:00:00', 'bukti_1766034047200.jpeg', 'Kebersihan', 'pemasukan', NULL),
(89, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-06-12 03:00:00', 'bukti_1766034047188.jpeg', 'Kebersihan', 'pemasukan', NULL),
(90, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-07-12 03:00:00', 'bukti_1766034047545.jpeg', 'Kebersihan', 'pemasukan', NULL),
(91, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-08-14 03:00:00', 'bukti_1766034047982.jpeg', 'Kebersihan', 'pemasukan', NULL),
(92, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-09-25 03:00:00', 'bukti_1766034047507.jpeg', 'Kebersihan', 'pemasukan', NULL),
(93, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-10-20 03:00:00', 'bukti_1766034047534.jpeg', 'Kebersihan', 'pemasukan', NULL),
(94, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-11-20 03:00:00', 'bukti_1766034047671.jpeg', 'Kebersihan', 'pemasukan', NULL),
(95, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-12-10 03:00:00', 'bukti_1766034047858.jpeg', 'Kebersihan', 'pemasukan', NULL),
(96, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-01-25 03:00:00', 'bukti_1766034047609.jpeg', 'Kebersihan', 'pemasukan', NULL),
(97, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-02-14 03:00:00', 'bukti_1766034047759.jpeg', 'Kebersihan', 'pemasukan', NULL),
(98, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-03-14 03:00:00', 'bukti_1766034047841.jpeg', 'Kebersihan', 'pemasukan', NULL),
(99, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-04-22 03:00:00', 'bukti_1766034047345.jpeg', 'Kebersihan', 'pemasukan', NULL),
(100, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-05-08 03:00:00', 'bukti_1766034047695.jpeg', 'Kebersihan', 'pemasukan', NULL),
(101, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-06-22 03:00:00', 'bukti_1766034047606.jpeg', 'Kebersihan', 'pemasukan', NULL),
(102, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-07-22 03:00:00', 'bukti_1766034047854.jpeg', 'Kebersihan', 'pemasukan', NULL),
(103, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-08-19 03:00:00', 'bukti_1766034047357.jpeg', 'Kebersihan', 'pemasukan', NULL),
(104, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-09-07 03:00:00', 'bukti_1766034047115.jpeg', 'Kebersihan', 'pemasukan', NULL),
(105, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-10-05 03:00:00', 'bukti_1766034047530.jpeg', 'Kebersihan', 'pemasukan', NULL),
(106, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-11-07 03:00:00', 'bukti_1766034047277.jpeg', 'Kebersihan', 'pemasukan', NULL),
(107, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-12-06 03:00:00', 'bukti_1766034047363.jpeg', 'Kebersihan', 'pemasukan', NULL),
(108, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-01-12 03:00:00', 'bukti_1766034047143.jpeg', 'Kebersihan', 'pemasukan', NULL),
(109, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-02-05 03:00:00', 'bukti_1766034047807.jpeg', 'Kebersihan', 'pemasukan', NULL),
(110, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-03-06 03:00:00', 'bukti_1766034047861.jpeg', 'Kebersihan', 'pemasukan', NULL),
(111, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-04-17 03:00:00', 'bukti_1766034047544.jpeg', 'Kebersihan', 'pemasukan', NULL),
(112, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-05-06 03:00:00', 'bukti_1766034047970.jpeg', 'Kebersihan', 'pemasukan', NULL),
(113, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-06-11 03:00:00', 'bukti_1766034047471.jpeg', 'Kebersihan', 'pemasukan', NULL),
(114, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-07-08 03:00:00', 'bukti_1766034047719.jpeg', 'Kebersihan', 'pemasukan', NULL),
(115, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-08-15 03:00:00', 'bukti_1766034047643.jpeg', 'Kebersihan', 'pemasukan', NULL),
(116, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-09-19 03:00:00', 'bukti_1766034047551.jpeg', 'Kebersihan', 'pemasukan', NULL),
(117, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-10-06 03:00:00', 'bukti_1766034047752.jpeg', 'Kebersihan', 'pemasukan', NULL),
(118, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-11-11 03:00:00', 'bukti_1766034047314.jpeg', 'Kebersihan', 'pemasukan', NULL),
(119, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-12-11 03:00:00', 'bukti_1766034047610.jpeg', 'Kebersihan', 'pemasukan', NULL),
(120, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-01-22 03:00:00', 'bukti_1766034047135.jpeg', 'Kebersihan', 'pemasukan', NULL),
(121, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-02-13 03:00:00', 'bukti_1766034047346.jpeg', 'Kebersihan', 'pemasukan', NULL),
(122, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-03-24 03:00:00', 'bukti_1766034047111.jpeg', 'Kebersihan', 'pemasukan', NULL),
(123, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-04-15 03:00:00', 'bukti_1766034047563.jpeg', 'Kebersihan', 'pemasukan', NULL),
(124, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-05-24 03:00:00', 'bukti_1766034047868.jpeg', 'Kebersihan', 'pemasukan', NULL),
(125, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-06-19 03:00:00', 'bukti_1766034047720.jpeg', 'Kebersihan', 'pemasukan', NULL),
(126, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-07-10 03:00:00', 'bukti_1766034047629.jpeg', 'Kebersihan', 'pemasukan', NULL),
(127, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-08-14 03:00:00', 'bukti_1766034047772.jpeg', 'Kebersihan', 'pemasukan', NULL),
(128, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-09-08 03:00:00', 'bukti_1766034047662.jpeg', 'Kebersihan', 'pemasukan', NULL),
(129, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-10-17 03:00:00', 'bukti_1766034047940.jpeg', 'Kebersihan', 'pemasukan', NULL),
(130, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-11-24 03:00:00', 'bukti_1766034047768.jpeg', 'Kebersihan', 'pemasukan', NULL),
(131, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-12-17 03:00:00', 'bukti_1766034047672.jpeg', 'Kebersihan', 'pemasukan', NULL),
(132, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-01-15 03:00:00', 'bukti_1766034047944.jpeg', 'Kebersihan', 'pemasukan', NULL),
(133, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-02-15 03:00:00', 'bukti_1766034047410.jpeg', 'Kebersihan', 'pemasukan', NULL),
(134, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-03-20 03:00:00', 'bukti_1766034047569.jpeg', 'Kebersihan', 'pemasukan', NULL),
(135, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-04-08 03:00:00', 'bukti_1766034047229.jpeg', 'Kebersihan', 'pemasukan', NULL),
(136, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-05-17 03:00:00', 'bukti_1766034047435.jpeg', 'Kebersihan', 'pemasukan', NULL),
(137, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-06-18 03:00:00', 'bukti_1766034047587.jpeg', 'Kebersihan', 'pemasukan', NULL),
(138, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-07-07 03:00:00', 'bukti_1766034047516.jpeg', 'Kebersihan', 'pemasukan', NULL),
(139, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2023-08-22 03:00:00', 'bukti_1766034047271.jpeg', 'Kebersihan', 'pemasukan', NULL),
(140, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-09-08 03:00:00', 'bukti_1766034047934.jpeg', 'Kebersihan', 'pemasukan', NULL),
(141, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-10-09 03:00:00', 'bukti_1766034047267.jpeg', 'Kebersihan', 'pemasukan', NULL),
(142, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-11-17 03:00:00', 'bukti_1766034047866.jpeg', 'Kebersihan', 'pemasukan', NULL),
(143, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-12-15 03:00:00', 'bukti_1766034047213.jpeg', 'Kebersihan', 'pemasukan', NULL),
(144, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-01-16 03:00:00', 'bukti_1766034047777.jpeg', 'Kebersihan', 'pemasukan', NULL),
(145, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-02-16 03:00:00', 'bukti_1766034047638.jpeg', 'Kebersihan', 'pemasukan', NULL),
(146, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-03-09 03:00:00', 'bukti_1766034047898.jpeg', 'Kebersihan', 'pemasukan', NULL),
(147, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-04-21 03:00:00', 'bukti_1766034047328.jpeg', 'Kebersihan', 'pemasukan', NULL),
(148, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2024-05-09 03:00:00', 'bukti_1766034047817.jpeg', 'Kebersihan', 'pemasukan', NULL),
(149, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-06-22 03:00:00', 'bukti_1766034047135.jpeg', 'Kebersihan', 'pemasukan', NULL),
(150, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-07-15 03:00:00', 'bukti_1766034047298.jpeg', 'Kebersihan', 'pemasukan', NULL),
(151, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-08-11 03:00:00', 'bukti_1766034047116.jpeg', 'Kebersihan', 'pemasukan', NULL),
(152, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-09-09 03:00:00', 'bukti_1766034047526.jpeg', 'Kebersihan', 'pemasukan', NULL),
(153, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-10-05 03:00:00', 'bukti_1766034047872.jpeg', 'Kebersihan', 'pemasukan', NULL),
(154, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-11-19 03:00:00', 'bukti_1766034047525.jpeg', 'Kebersihan', 'pemasukan', NULL),
(155, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-12-15 03:00:00', 'bukti_1766034047228.jpeg', 'Kebersihan', 'pemasukan', NULL),
(156, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-01-13 03:00:00', 'bukti_1766034047999.jpeg', 'Kebersihan', 'pemasukan', NULL),
(157, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-02-25 03:00:00', 'bukti_1766034047821.jpeg', 'Kebersihan', 'pemasukan', NULL),
(158, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-03-14 03:00:00', 'bukti_1766034047254.jpeg', 'Kebersihan', 'pemasukan', NULL),
(159, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-04-13 03:00:00', 'bukti_1766034047736.jpeg', 'Kebersihan', 'pemasukan', NULL),
(160, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-05-24 03:00:00', 'bukti_1766034047542.jpeg', 'Kebersihan', 'pemasukan', NULL),
(161, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-06-07 03:00:00', 'bukti_1766034047576.jpeg', 'Kebersihan', 'pemasukan', NULL),
(162, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-07-13 03:00:00', 'bukti_1766034047950.jpeg', 'Kebersihan', 'pemasukan', NULL),
(163, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-08-11 03:00:00', 'bukti_1766034047225.jpeg', 'Kebersihan', 'pemasukan', NULL),
(164, 36, '4342501040', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-09-08 03:00:00', 'bukti_1766034047178.jpeg', 'Kebersihan', 'pemasukan', NULL),
(165, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-10-23 03:00:00', 'bukti_1766034047315.jpeg', 'Kebersihan', 'pemasukan', NULL),
(166, 36, '4342501040', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-11-07 03:00:00', 'bukti_1766034047393.jpeg', 'Kebersihan', 'pemasukan', NULL),
(167, 37, '4342501040', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2019-08-07 03:00:00', 'bukti_1766034047164.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(168, 37, '4342501040', '', '', 'transfer', 'tahunan', 50000.00, 'pending', '2020-08-08 03:00:00', 'bukti_1766034047655.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(169, 37, '4342501040', '', '', 'qris', 'tahunan', 50000.00, 'lunas', '2021-08-10 03:00:00', 'bukti_1766034047482.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(170, 37, '4342501040', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2022-08-16 03:00:00', 'bukti_1766034047830.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(171, 37, '4342501040', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2023-08-19 03:00:00', 'bukti_1766034047431.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(172, 37, '4342501040', '', '', 'transfer', 'tahunan', 50000.00, 'pending', '2024-08-14 03:00:00', 'bukti_1766034047909.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(173, 37, '4342501040', '', '', 'transfer', 'tahunan', 50000.00, 'lunas', '2025-08-25 03:00:00', 'bukti_1766034047309.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(174, 38, '4342501040', '', '', 'qris', 'tahunan', 100000.00, 'lunas', '2019-01-07 03:00:00', 'bukti_1766034047876.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(175, 38, '4342501040', '', '', 'transfer', 'tahunan', 100000.00, 'belum lunas', '2020-01-20 03:00:00', 'bukti_1766034047188.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(176, 38, '4342501040', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2021-01-13 03:00:00', 'bukti_1766034047851.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(177, 38, '4342501040', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2022-01-18 03:00:00', 'bukti_1766034047783.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(178, 38, '4342501040', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2023-01-13 03:00:00', 'bukti_1766034047313.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(179, 38, '4342501040', '', '', 'qris', 'tahunan', 100000.00, 'lunas', '2024-01-15 03:00:00', 'bukti_1766034047154.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(180, 38, '4342501040', '', '', 'qris', 'tahunan', 100000.00, 'belum lunas', '2025-01-24 03:00:00', 'bukti_1766034047807.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(181, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-01-13 03:00:00', 'bukti_1766034047887.jpeg', 'Keamanan', 'pemasukan', NULL),
(182, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-02-07 03:00:00', 'bukti_1766034047662.jpeg', 'Keamanan', 'pemasukan', NULL),
(183, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-03-07 03:00:00', 'bukti_1766034047675.jpeg', 'Keamanan', 'pemasukan', NULL),
(184, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-04-16 03:00:00', 'bukti_1766034047234.jpeg', 'Keamanan', 'pemasukan', NULL),
(185, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-05-10 03:00:00', 'bukti_1766034047943.jpeg', 'Keamanan', 'pemasukan', NULL),
(186, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-06-15 03:00:00', 'bukti_1766034047144.jpeg', 'Keamanan', 'pemasukan', NULL),
(187, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2019-07-25 03:00:00', 'bukti_1766034047745.jpeg', 'Keamanan', 'pemasukan', NULL),
(188, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-08-24 03:00:00', 'bukti_1766034047478.jpeg', 'Keamanan', 'pemasukan', NULL),
(189, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-09-05 03:00:00', 'bukti_1766034047496.jpeg', 'Keamanan', 'pemasukan', NULL),
(190, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-10-06 03:00:00', 'bukti_1766034047366.jpeg', 'Keamanan', 'pemasukan', NULL),
(191, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-11-08 03:00:00', 'bukti_1766034047315.jpeg', 'Keamanan', 'pemasukan', NULL),
(192, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2019-12-23 03:00:00', 'bukti_1766034047883.jpeg', 'Keamanan', 'pemasukan', NULL),
(193, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-01-23 03:00:00', 'bukti_1766034047583.jpeg', 'Keamanan', 'pemasukan', NULL),
(194, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-02-18 03:00:00', 'bukti_1766034047549.jpeg', 'Keamanan', 'pemasukan', NULL),
(195, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-03-16 03:00:00', 'bukti_1766034047958.jpeg', 'Keamanan', 'pemasukan', NULL),
(196, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-04-07 03:00:00', 'bukti_1766034047179.jpeg', 'Keamanan', 'pemasukan', NULL),
(197, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-05-16 03:00:00', 'bukti_1766034047483.jpeg', 'Keamanan', 'pemasukan', NULL),
(198, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-06-11 03:00:00', 'bukti_1766034047227.jpeg', 'Keamanan', 'pemasukan', NULL),
(199, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-07-24 03:00:00', 'bukti_1766034047576.jpeg', 'Keamanan', 'pemasukan', NULL),
(200, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-08-23 03:00:00', 'bukti_1766034047166.jpeg', 'Keamanan', 'pemasukan', NULL),
(201, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2020-09-21 03:00:00', 'bukti_1766034047821.jpeg', 'Keamanan', 'pemasukan', NULL),
(202, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-10-25 03:00:00', 'bukti_1766034047435.jpeg', 'Keamanan', 'pemasukan', NULL),
(203, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-11-13 03:00:00', 'bukti_1766034047880.jpeg', 'Keamanan', 'pemasukan', NULL),
(204, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-12-05 03:00:00', 'bukti_1766034047856.jpeg', 'Keamanan', 'pemasukan', NULL),
(205, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-01-20 03:00:00', 'bukti_1766034047981.jpeg', 'Keamanan', 'pemasukan', NULL),
(206, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-02-07 03:00:00', 'bukti_1766034047540.jpeg', 'Keamanan', 'pemasukan', NULL),
(207, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-03-14 03:00:00', 'bukti_1766034047108.jpeg', 'Keamanan', 'pemasukan', NULL),
(208, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-04-10 03:00:00', 'bukti_1766034047594.jpeg', 'Keamanan', 'pemasukan', NULL),
(209, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-05-18 03:00:00', 'bukti_1766034047106.jpeg', 'Keamanan', 'pemasukan', NULL),
(210, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-06-25 03:00:00', 'bukti_1766034047435.jpeg', 'Keamanan', 'pemasukan', NULL),
(211, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-07-18 03:00:00', 'bukti_1766034047472.jpeg', 'Keamanan', 'pemasukan', NULL),
(212, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-08-16 03:00:00', 'bukti_1766034047533.jpeg', 'Keamanan', 'pemasukan', NULL),
(213, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-09-17 03:00:00', 'bukti_1766034047757.jpeg', 'Keamanan', 'pemasukan', NULL),
(214, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-10-23 03:00:00', 'bukti_1766034047422.jpeg', 'Keamanan', 'pemasukan', NULL),
(215, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-11-10 03:00:00', 'bukti_1766034047344.jpeg', 'Keamanan', 'pemasukan', NULL),
(216, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-12-25 03:00:00', 'bukti_1766034047243.jpeg', 'Keamanan', 'pemasukan', NULL),
(217, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-01-25 03:00:00', 'bukti_1766034047698.jpeg', 'Keamanan', 'pemasukan', NULL),
(218, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-02-10 03:00:00', 'bukti_1766034047903.jpeg', 'Keamanan', 'pemasukan', NULL),
(219, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-03-12 03:00:00', 'bukti_1766034047842.jpeg', 'Keamanan', 'pemasukan', NULL),
(220, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-04-08 03:00:00', 'bukti_1766034047907.jpeg', 'Keamanan', 'pemasukan', NULL),
(221, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-05-10 03:00:00', 'bukti_1766034047501.jpeg', 'Keamanan', 'pemasukan', NULL),
(222, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-06-10 03:00:00', 'bukti_1766034047951.jpeg', 'Keamanan', 'pemasukan', NULL),
(223, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-07-18 03:00:00', 'bukti_1766034047295.jpeg', 'Keamanan', 'pemasukan', NULL),
(224, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-08-14 03:00:00', 'bukti_1766034047342.jpeg', 'Keamanan', 'pemasukan', NULL),
(225, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-09-10 03:00:00', 'bukti_1766034047198.jpeg', 'Keamanan', 'pemasukan', NULL),
(226, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-10-13 03:00:00', 'bukti_1766034047589.jpeg', 'Keamanan', 'pemasukan', NULL),
(227, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-11-22 03:00:00', 'bukti_1766034047749.jpeg', 'Keamanan', 'pemasukan', NULL),
(228, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-12-16 03:00:00', 'bukti_1766034047441.jpeg', 'Keamanan', 'pemasukan', NULL),
(229, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-01-05 03:00:00', 'bukti_1766034047107.jpeg', 'Keamanan', 'pemasukan', NULL),
(230, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-02-07 03:00:00', 'bukti_1766034047511.jpeg', 'Keamanan', 'pemasukan', NULL),
(231, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-03-14 03:00:00', 'bukti_1766034047391.jpeg', 'Keamanan', 'pemasukan', NULL),
(232, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-04-19 03:00:00', 'bukti_1766034047677.jpeg', 'Keamanan', 'pemasukan', NULL),
(233, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-05-06 03:00:00', 'bukti_1766034047697.jpeg', 'Keamanan', 'pemasukan', NULL),
(234, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-06-13 03:00:00', 'bukti_1766034047371.jpeg', 'Keamanan', 'pemasukan', NULL),
(235, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-07-14 03:00:00', 'bukti_1766034047625.jpeg', 'Keamanan', 'pemasukan', NULL),
(236, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-08-05 03:00:00', 'bukti_1766034047705.jpeg', 'Keamanan', 'pemasukan', NULL),
(237, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-09-07 03:00:00', 'bukti_1766034047453.jpeg', 'Keamanan', 'pemasukan', NULL),
(238, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-10-13 03:00:00', 'bukti_1766034047352.jpeg', 'Keamanan', 'pemasukan', NULL),
(239, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-11-14 03:00:00', 'bukti_1766034047183.jpeg', 'Keamanan', 'pemasukan', NULL),
(240, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-12-18 03:00:00', 'bukti_1766034047988.jpeg', 'Keamanan', 'pemasukan', NULL),
(241, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-01-12 03:00:00', 'bukti_1766034047117.jpeg', 'Keamanan', 'pemasukan', NULL),
(242, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-02-15 03:00:00', 'bukti_1766034047936.jpeg', 'Keamanan', 'pemasukan', NULL),
(243, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-03-08 03:00:00', 'bukti_1766034047159.jpeg', 'Keamanan', 'pemasukan', NULL),
(244, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-04-20 03:00:00', 'bukti_1766034047725.jpeg', 'Keamanan', 'pemasukan', NULL),
(245, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-05-18 03:00:00', 'bukti_1766034047552.jpeg', 'Keamanan', 'pemasukan', NULL),
(246, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-06-10 03:00:00', 'bukti_1766034047171.jpeg', 'Keamanan', 'pemasukan', NULL),
(247, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-07-09 03:00:00', 'bukti_1766034047351.jpeg', 'Keamanan', 'pemasukan', NULL),
(248, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-08-08 03:00:00', 'bukti_1766034047992.jpeg', 'Keamanan', 'pemasukan', NULL),
(249, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-09-17 03:00:00', 'bukti_1766034047824.jpeg', 'Keamanan', 'pemasukan', NULL),
(250, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-10-17 03:00:00', 'bukti_1766034047459.jpeg', 'Keamanan', 'pemasukan', NULL),
(251, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-11-07 03:00:00', 'bukti_1766034047553.jpeg', 'Keamanan', 'pemasukan', NULL),
(252, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-12-20 03:00:00', 'bukti_1766034047883.jpeg', 'Keamanan', 'pemasukan', NULL),
(253, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-01-09 03:00:00', 'bukti_1766034047418.jpeg', 'Keamanan', 'pemasukan', NULL),
(254, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-02-09 03:00:00', 'bukti_1766034047266.jpeg', 'Keamanan', 'pemasukan', NULL),
(255, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-03-22 03:00:00', 'bukti_1766034047869.jpeg', 'Keamanan', 'pemasukan', NULL),
(256, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-04-21 03:00:00', 'bukti_1766034047212.jpeg', 'Keamanan', 'pemasukan', NULL),
(257, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-05-18 03:00:00', 'bukti_1766034047152.jpeg', 'Keamanan', 'pemasukan', NULL),
(258, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-06-11 03:00:00', 'bukti_1766034047252.jpeg', 'Keamanan', 'pemasukan', NULL),
(259, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-07-23 03:00:00', 'bukti_1766034047774.jpeg', 'Keamanan', 'pemasukan', NULL),
(260, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-08-09 03:00:00', 'bukti_1766034047251.jpeg', 'Keamanan', 'pemasukan', NULL),
(261, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-09-14 03:00:00', 'bukti_1766034047967.jpeg', 'Keamanan', 'pemasukan', NULL),
(262, 35, '4342501044', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-10-09 03:00:00', 'bukti_1766034047318.jpeg', 'Keamanan', 'pemasukan', NULL),
(263, 35, '4342501044', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-11-24 03:00:00', 'bukti_1766034047214.jpeg', 'Keamanan', 'pemasukan', NULL),
(264, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-01-08 03:00:00', 'bukti_1766034047216.jpeg', 'Kebersihan', 'pemasukan', NULL),
(265, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-02-16 03:00:00', 'bukti_1766034047431.jpeg', 'Kebersihan', 'pemasukan', NULL),
(266, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-03-11 03:00:00', 'bukti_1766034047987.jpeg', 'Kebersihan', 'pemasukan', NULL),
(267, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-04-19 03:00:00', 'bukti_1766034047512.jpeg', 'Kebersihan', 'pemasukan', NULL),
(268, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2019-05-13 03:00:00', 'bukti_1766034047391.jpeg', 'Kebersihan', 'pemasukan', NULL),
(269, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-06-16 03:00:00', 'bukti_1766034047444.jpeg', 'Kebersihan', 'pemasukan', NULL),
(270, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-07-05 03:00:00', 'bukti_1766034047152.jpeg', 'Kebersihan', 'pemasukan', NULL),
(271, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-08-08 03:00:00', 'bukti_1766034047414.jpeg', 'Kebersihan', 'pemasukan', NULL),
(272, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-09-14 03:00:00', 'bukti_1766034047999.jpeg', 'Kebersihan', 'pemasukan', NULL),
(273, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-10-13 03:00:00', 'bukti_1766034047931.jpeg', 'Kebersihan', 'pemasukan', NULL),
(274, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-11-19 03:00:00', 'bukti_1766034047296.jpeg', 'Kebersihan', 'pemasukan', NULL),
(275, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-12-16 03:00:00', 'bukti_1766034047243.jpeg', 'Kebersihan', 'pemasukan', NULL),
(276, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-01-09 03:00:00', 'bukti_1766034047719.jpeg', 'Kebersihan', 'pemasukan', NULL),
(277, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-02-24 03:00:00', 'bukti_1766034047551.jpeg', 'Kebersihan', 'pemasukan', NULL),
(278, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-03-22 03:00:00', 'bukti_1766034047665.jpeg', 'Kebersihan', 'pemasukan', NULL),
(279, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-04-07 03:00:00', 'bukti_1766034047644.jpeg', 'Kebersihan', 'pemasukan', NULL),
(280, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-05-21 03:00:00', 'bukti_1766034047917.jpeg', 'Kebersihan', 'pemasukan', NULL),
(281, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-06-10 03:00:00', 'bukti_1766034047384.jpeg', 'Kebersihan', 'pemasukan', NULL),
(282, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-07-05 03:00:00', 'bukti_1766034047528.jpeg', 'Kebersihan', 'pemasukan', NULL),
(283, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-08-13 03:00:00', 'bukti_1766034047150.jpeg', 'Kebersihan', 'pemasukan', NULL),
(284, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-09-21 03:00:00', 'bukti_1766034047453.jpeg', 'Kebersihan', 'pemasukan', NULL),
(285, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-10-22 03:00:00', 'bukti_1766034047857.jpeg', 'Kebersihan', 'pemasukan', NULL),
(286, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-11-15 03:00:00', 'bukti_1766034047578.jpeg', 'Kebersihan', 'pemasukan', NULL),
(287, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-12-19 03:00:00', 'bukti_1766034047611.jpeg', 'Kebersihan', 'pemasukan', NULL),
(288, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-01-13 03:00:00', 'bukti_1766034047773.jpeg', 'Kebersihan', 'pemasukan', NULL),
(289, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-02-25 03:00:00', 'bukti_1766034047506.jpeg', 'Kebersihan', 'pemasukan', NULL),
(290, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-03-24 03:00:00', 'bukti_1766034047188.jpeg', 'Kebersihan', 'pemasukan', NULL),
(291, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-04-12 03:00:00', 'bukti_1766034047605.jpeg', 'Kebersihan', 'pemasukan', NULL),
(292, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-05-09 03:00:00', 'bukti_1766034047855.jpeg', 'Kebersihan', 'pemasukan', NULL),
(293, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-06-09 03:00:00', 'bukti_1766034047143.jpeg', 'Kebersihan', 'pemasukan', NULL),
(294, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-07-13 03:00:00', 'bukti_1766034047722.jpeg', 'Kebersihan', 'pemasukan', NULL),
(295, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-08-20 03:00:00', 'bukti_1766034047846.jpeg', 'Kebersihan', 'pemasukan', NULL),
(296, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-09-23 03:00:00', 'bukti_1766034047115.jpeg', 'Kebersihan', 'pemasukan', NULL),
(297, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-10-18 03:00:00', 'bukti_1766034047645.jpeg', 'Kebersihan', 'pemasukan', NULL),
(298, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-11-15 03:00:00', 'bukti_1766034047283.jpeg', 'Kebersihan', 'pemasukan', NULL),
(299, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-12-14 03:00:00', 'bukti_1766034047266.jpeg', 'Kebersihan', 'pemasukan', NULL),
(300, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-01-13 03:00:00', 'bukti_1766034047262.jpeg', 'Kebersihan', 'pemasukan', NULL),
(301, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-02-23 03:00:00', 'bukti_1766034047246.jpeg', 'Kebersihan', 'pemasukan', NULL),
(302, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-03-10 03:00:00', 'bukti_1766034047224.jpeg', 'Kebersihan', 'pemasukan', NULL),
(303, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-04-13 03:00:00', 'bukti_1766034047744.jpeg', 'Kebersihan', 'pemasukan', NULL),
(304, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-05-19 03:00:00', 'bukti_1766034047573.jpeg', 'Kebersihan', 'pemasukan', NULL),
(305, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-06-22 03:00:00', 'bukti_1766034047968.jpeg', 'Kebersihan', 'pemasukan', NULL),
(306, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-07-22 03:00:00', 'bukti_1766034047650.jpeg', 'Kebersihan', 'pemasukan', NULL),
(307, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-08-21 03:00:00', 'bukti_1766034047106.jpeg', 'Kebersihan', 'pemasukan', NULL),
(308, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-09-17 03:00:00', 'bukti_1766034047645.jpeg', 'Kebersihan', 'pemasukan', NULL),
(309, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-10-08 03:00:00', 'bukti_1766034047904.jpeg', 'Kebersihan', 'pemasukan', NULL),
(310, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-11-17 03:00:00', 'bukti_1766034047224.jpeg', 'Kebersihan', 'pemasukan', NULL),
(311, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-12-05 03:00:00', 'bukti_1766034047855.jpeg', 'Kebersihan', 'pemasukan', NULL),
(312, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-01-11 03:00:00', 'bukti_1766034047469.jpeg', 'Kebersihan', 'pemasukan', NULL),
(313, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-02-23 03:00:00', 'bukti_1766034047626.jpeg', 'Kebersihan', 'pemasukan', NULL),
(314, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-03-21 03:00:00', 'bukti_1766034047431.jpeg', 'Kebersihan', 'pemasukan', NULL),
(315, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2023-04-17 03:00:00', 'bukti_1766034047523.jpeg', 'Kebersihan', 'pemasukan', NULL),
(316, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-05-18 03:00:00', 'bukti_1766034047374.jpeg', 'Kebersihan', 'pemasukan', NULL),
(317, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-06-22 03:00:00', 'bukti_1766034047961.jpeg', 'Kebersihan', 'pemasukan', NULL);
INSERT INTO `catatan` (`id`, `id_iuran`, `nik`, `nama`, `alamat`, `metode`, `periode`, `jumlah`, `status`, `tanggal`, `bukti`, `nama_iuran`, `kategori`, `uraian`) VALUES
(318, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-07-12 03:00:00', 'bukti_1766034047998.jpeg', 'Kebersihan', 'pemasukan', NULL),
(319, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-08-19 03:00:00', 'bukti_1766034047256.jpeg', 'Kebersihan', 'pemasukan', NULL),
(320, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-09-21 03:00:00', 'bukti_1766034047149.jpeg', 'Kebersihan', 'pemasukan', NULL),
(321, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-10-17 03:00:00', 'bukti_1766034047953.jpeg', 'Kebersihan', 'pemasukan', NULL),
(322, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-11-18 03:00:00', 'bukti_1766034047443.jpeg', 'Kebersihan', 'pemasukan', NULL),
(323, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-12-22 03:00:00', 'bukti_1766034047905.jpeg', 'Kebersihan', 'pemasukan', NULL),
(324, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-01-19 03:00:00', 'bukti_1766034047927.jpeg', 'Kebersihan', 'pemasukan', NULL),
(325, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-02-20 03:00:00', 'bukti_1766034047823.jpeg', 'Kebersihan', 'pemasukan', NULL),
(326, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-03-22 03:00:00', 'bukti_1766034047907.jpeg', 'Kebersihan', 'pemasukan', NULL),
(327, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2024-04-23 03:00:00', 'bukti_1766034047834.jpeg', 'Kebersihan', 'pemasukan', NULL),
(328, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-05-17 03:00:00', 'bukti_1766034047969.jpeg', 'Kebersihan', 'pemasukan', NULL),
(329, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-06-13 03:00:00', 'bukti_1766034047115.jpeg', 'Kebersihan', 'pemasukan', NULL),
(330, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-07-06 03:00:00', 'bukti_1766034047408.jpeg', 'Kebersihan', 'pemasukan', NULL),
(331, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-08-09 03:00:00', 'bukti_1766034047494.jpeg', 'Kebersihan', 'pemasukan', NULL),
(332, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-09-19 03:00:00', 'bukti_1766034047539.jpeg', 'Kebersihan', 'pemasukan', NULL),
(333, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-10-22 03:00:00', 'bukti_1766034047414.jpeg', 'Kebersihan', 'pemasukan', NULL),
(334, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2024-11-12 03:00:00', 'bukti_1766034047536.jpeg', 'Kebersihan', 'pemasukan', NULL),
(335, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-12-17 03:00:00', 'bukti_1766034047601.jpeg', 'Kebersihan', 'pemasukan', NULL),
(336, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-01-09 03:00:00', 'bukti_1766034047949.jpeg', 'Kebersihan', 'pemasukan', NULL),
(337, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-02-23 03:00:00', 'bukti_1766034047668.jpeg', 'Kebersihan', 'pemasukan', NULL),
(338, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-03-07 03:00:00', 'bukti_1766034047128.jpeg', 'Kebersihan', 'pemasukan', NULL),
(339, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-04-20 03:00:00', 'bukti_1766034047370.jpeg', 'Kebersihan', 'pemasukan', NULL),
(340, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-05-15 03:00:00', 'bukti_1766034047272.jpeg', 'Kebersihan', 'pemasukan', NULL),
(341, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-06-10 03:00:00', 'bukti_1766034047421.jpeg', 'Kebersihan', 'pemasukan', NULL),
(342, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-07-18 03:00:00', 'bukti_1766034047898.jpeg', 'Kebersihan', 'pemasukan', NULL),
(343, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-08-20 03:00:00', 'bukti_1766034047999.jpeg', 'Kebersihan', 'pemasukan', NULL),
(344, 36, '4342501044', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-09-25 03:00:00', 'bukti_1766034047219.jpeg', 'Kebersihan', 'pemasukan', NULL),
(345, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-10-25 03:00:00', 'bukti_1766034047531.jpeg', 'Kebersihan', 'pemasukan', NULL),
(346, 36, '4342501044', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-11-16 03:00:00', 'bukti_1766034047947.jpeg', 'Kebersihan', 'pemasukan', NULL),
(347, 37, '4342501044', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2019-08-15 03:00:00', 'bukti_1766034047802.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(348, 37, '4342501044', '', '', 'transfer', 'tahunan', 50000.00, 'belum lunas', '2020-08-13 03:00:00', 'bukti_1766034047284.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(349, 37, '4342501044', '', '', 'transfer', 'tahunan', 50000.00, 'lunas', '2021-08-14 03:00:00', 'bukti_1766034047917.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(350, 37, '4342501044', '', '', 'qris', 'tahunan', 50000.00, 'lunas', '2022-08-16 03:00:00', 'bukti_1766034047403.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(351, 37, '4342501044', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2023-08-13 03:00:00', 'bukti_1766034047748.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(352, 37, '4342501044', '', '', 'qris', 'tahunan', 50000.00, 'pending', '2024-08-14 03:00:00', 'bukti_1766034047186.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(353, 37, '4342501044', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2025-08-19 03:00:00', 'bukti_1766034047871.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(354, 38, '4342501044', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2019-01-18 03:00:00', 'bukti_1766034047506.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(355, 38, '4342501044', '', '', 'qris', 'tahunan', 100000.00, 'lunas', '2020-01-14 03:00:00', 'bukti_1766034047552.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(356, 38, '4342501044', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2021-01-17 03:00:00', 'bukti_1766034047669.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(357, 38, '4342501044', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2022-01-24 03:00:00', 'bukti_1766034047729.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(358, 38, '4342501044', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2023-01-24 03:00:00', 'bukti_1766034047634.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(359, 38, '4342501044', '', '', 'qris', 'tahunan', 100000.00, 'pending', '2024-01-24 03:00:00', 'bukti_1766034047783.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(360, 38, '4342501044', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2025-01-19 03:00:00', 'bukti_1766034047489.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(361, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-01-20 03:00:00', 'bukti_1766034047171.jpeg', 'Keamanan', 'pemasukan', NULL),
(362, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-02-24 03:00:00', 'bukti_1766034047868.jpeg', 'Keamanan', 'pemasukan', NULL),
(363, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-03-06 03:00:00', 'bukti_1766034047188.jpeg', 'Keamanan', 'pemasukan', NULL),
(364, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2019-04-18 03:00:00', 'bukti_1766034047536.jpeg', 'Keamanan', 'pemasukan', NULL),
(365, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-05-07 03:00:00', 'bukti_1766034047857.jpeg', 'Keamanan', 'pemasukan', NULL),
(366, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-06-22 03:00:00', 'bukti_1766034047579.jpeg', 'Keamanan', 'pemasukan', NULL),
(367, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-07-16 03:00:00', 'bukti_1766034047462.jpeg', 'Keamanan', 'pemasukan', NULL),
(368, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-08-07 03:00:00', 'bukti_1766034047496.jpeg', 'Keamanan', 'pemasukan', NULL),
(369, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-09-17 03:00:00', 'bukti_1766034047297.jpeg', 'Keamanan', 'pemasukan', NULL),
(370, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-10-23 03:00:00', 'bukti_1766034047524.jpeg', 'Keamanan', 'pemasukan', NULL),
(371, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-11-25 03:00:00', 'bukti_1766034047965.jpeg', 'Keamanan', 'pemasukan', NULL),
(372, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-12-25 03:00:00', 'bukti_1766034047697.jpeg', 'Keamanan', 'pemasukan', NULL),
(373, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-01-22 03:00:00', 'bukti_1766034047185.jpeg', 'Keamanan', 'pemasukan', NULL),
(374, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-02-18 03:00:00', 'bukti_1766034047360.jpeg', 'Keamanan', 'pemasukan', NULL),
(375, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-03-15 03:00:00', 'bukti_1766034047903.jpeg', 'Keamanan', 'pemasukan', NULL),
(376, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-04-24 03:00:00', 'bukti_1766034047329.jpeg', 'Keamanan', 'pemasukan', NULL),
(377, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-05-24 03:00:00', 'bukti_1766034047101.jpeg', 'Keamanan', 'pemasukan', NULL),
(378, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-06-14 03:00:00', 'bukti_1766034047555.jpeg', 'Keamanan', 'pemasukan', NULL),
(379, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-07-22 03:00:00', 'bukti_1766034047475.jpeg', 'Keamanan', 'pemasukan', NULL),
(380, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-08-19 03:00:00', 'bukti_1766034047227.jpeg', 'Keamanan', 'pemasukan', NULL),
(381, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-09-13 03:00:00', 'bukti_1766034047317.jpeg', 'Keamanan', 'pemasukan', NULL),
(382, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-10-10 03:00:00', 'bukti_1766034047645.jpeg', 'Keamanan', 'pemasukan', NULL),
(383, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-11-06 03:00:00', 'bukti_1766034047743.jpeg', 'Keamanan', 'pemasukan', NULL),
(384, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-12-10 03:00:00', 'bukti_1766034047522.jpeg', 'Keamanan', 'pemasukan', NULL),
(385, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-01-08 03:00:00', 'bukti_1766034047487.jpeg', 'Keamanan', 'pemasukan', NULL),
(386, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-02-20 03:00:00', 'bukti_1766034047609.jpeg', 'Keamanan', 'pemasukan', NULL),
(387, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-03-08 03:00:00', 'bukti_1766034047609.jpeg', 'Keamanan', 'pemasukan', NULL),
(388, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-04-18 03:00:00', 'bukti_1766034047903.jpeg', 'Keamanan', 'pemasukan', NULL),
(389, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-05-23 03:00:00', 'bukti_1766034047788.jpeg', 'Keamanan', 'pemasukan', NULL),
(390, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-06-23 03:00:00', 'bukti_1766034047905.jpeg', 'Keamanan', 'pemasukan', NULL),
(391, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-07-12 03:00:00', 'bukti_1766034047947.jpeg', 'Keamanan', 'pemasukan', NULL),
(392, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-08-07 03:00:00', 'bukti_1766034047898.jpeg', 'Keamanan', 'pemasukan', NULL),
(393, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-09-25 03:00:00', 'bukti_1766034047976.jpeg', 'Keamanan', 'pemasukan', NULL),
(394, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-10-19 03:00:00', 'bukti_1766034047778.jpeg', 'Keamanan', 'pemasukan', NULL),
(395, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-11-15 03:00:00', 'bukti_1766034047697.jpeg', 'Keamanan', 'pemasukan', NULL),
(396, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-12-21 03:00:00', 'bukti_1766034047561.jpeg', 'Keamanan', 'pemasukan', NULL),
(397, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-01-12 03:00:00', 'bukti_1766034047562.jpeg', 'Keamanan', 'pemasukan', NULL),
(398, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-02-08 03:00:00', 'bukti_1766034047551.jpeg', 'Keamanan', 'pemasukan', NULL),
(399, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-03-22 03:00:00', 'bukti_1766034047332.jpeg', 'Keamanan', 'pemasukan', NULL),
(400, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-04-09 03:00:00', 'bukti_1766034047590.jpeg', 'Keamanan', 'pemasukan', NULL),
(401, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-05-23 03:00:00', 'bukti_1766034047144.jpeg', 'Keamanan', 'pemasukan', NULL),
(402, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-06-19 03:00:00', 'bukti_1766034047286.jpeg', 'Keamanan', 'pemasukan', NULL),
(403, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-07-21 03:00:00', 'bukti_1766034047523.jpeg', 'Keamanan', 'pemasukan', NULL),
(404, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-08-18 03:00:00', 'bukti_1766034047811.jpeg', 'Keamanan', 'pemasukan', NULL),
(405, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-09-08 03:00:00', 'bukti_1766034047551.jpeg', 'Keamanan', 'pemasukan', NULL),
(406, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-10-09 03:00:00', 'bukti_1766034047540.jpeg', 'Keamanan', 'pemasukan', NULL),
(407, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-11-24 03:00:00', 'bukti_1766034047878.jpeg', 'Keamanan', 'pemasukan', NULL),
(408, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-12-22 03:00:00', 'bukti_1766034047885.jpeg', 'Keamanan', 'pemasukan', NULL),
(409, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-01-10 03:00:00', 'bukti_1766034047920.jpeg', 'Keamanan', 'pemasukan', NULL),
(410, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2023-02-20 03:00:00', 'bukti_1766034047970.jpeg', 'Keamanan', 'pemasukan', NULL),
(411, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-03-10 03:00:00', 'bukti_1766034047359.jpeg', 'Keamanan', 'pemasukan', NULL),
(412, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-04-24 03:00:00', 'bukti_1766034047574.jpeg', 'Keamanan', 'pemasukan', NULL),
(413, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-05-19 03:00:00', 'bukti_1766034047768.jpeg', 'Keamanan', 'pemasukan', NULL),
(414, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-06-16 03:00:00', 'bukti_1766034047213.jpeg', 'Keamanan', 'pemasukan', NULL),
(415, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-07-07 03:00:00', 'bukti_1766034047354.jpeg', 'Keamanan', 'pemasukan', NULL),
(416, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-08-15 03:00:00', 'bukti_1766034047350.jpeg', 'Keamanan', 'pemasukan', NULL),
(417, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-09-07 03:00:00', 'bukti_1766034047378.jpeg', 'Keamanan', 'pemasukan', NULL),
(418, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-10-05 03:00:00', 'bukti_1766034047649.jpeg', 'Keamanan', 'pemasukan', NULL),
(419, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-11-05 03:00:00', 'bukti_1766034047534.jpeg', 'Keamanan', 'pemasukan', NULL),
(420, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-12-18 03:00:00', 'bukti_1766034047135.jpeg', 'Keamanan', 'pemasukan', NULL),
(421, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-01-20 03:00:00', 'bukti_1766034047949.jpeg', 'Keamanan', 'pemasukan', NULL),
(422, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-02-11 03:00:00', 'bukti_1766034047470.jpeg', 'Keamanan', 'pemasukan', NULL),
(423, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-03-21 03:00:00', 'bukti_1766034047749.jpeg', 'Keamanan', 'pemasukan', NULL),
(424, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-04-24 03:00:00', 'bukti_1766034047462.jpeg', 'Keamanan', 'pemasukan', NULL),
(425, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-05-14 03:00:00', 'bukti_1766034047140.jpeg', 'Keamanan', 'pemasukan', NULL),
(426, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-06-16 03:00:00', 'bukti_1766034047817.jpeg', 'Keamanan', 'pemasukan', NULL),
(427, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-07-15 03:00:00', 'bukti_1766034047334.jpeg', 'Keamanan', 'pemasukan', NULL),
(428, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2024-08-21 03:00:00', 'bukti_1766034047777.jpeg', 'Keamanan', 'pemasukan', NULL),
(429, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-09-05 03:00:00', 'bukti_1766034047867.jpeg', 'Keamanan', 'pemasukan', NULL),
(430, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-10-09 03:00:00', 'bukti_1766034047385.jpeg', 'Keamanan', 'pemasukan', NULL),
(431, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-11-23 03:00:00', 'bukti_1766034047393.jpeg', 'Keamanan', 'pemasukan', NULL),
(432, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-12-24 03:00:00', 'bukti_1766034047773.jpeg', 'Keamanan', 'pemasukan', NULL),
(433, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-01-05 03:00:00', 'bukti_1766034047686.jpeg', 'Keamanan', 'pemasukan', NULL),
(434, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-02-14 03:00:00', 'bukti_1766034047189.jpeg', 'Keamanan', 'pemasukan', NULL),
(435, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-03-24 03:00:00', 'bukti_1766034047968.jpeg', 'Keamanan', 'pemasukan', NULL),
(436, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-04-13 03:00:00', 'bukti_1766034047210.jpeg', 'Keamanan', 'pemasukan', NULL),
(437, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-05-14 03:00:00', 'bukti_1766034047440.jpeg', 'Keamanan', 'pemasukan', NULL),
(438, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-06-08 03:00:00', 'bukti_1766034047475.jpeg', 'Keamanan', 'pemasukan', NULL),
(439, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-07-16 03:00:00', 'bukti_1766034047320.jpeg', 'Keamanan', 'pemasukan', NULL),
(440, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-08-17 03:00:00', 'bukti_1766034047963.jpeg', 'Keamanan', 'pemasukan', NULL),
(441, 35, '4342501039', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-09-25 03:00:00', 'bukti_1766034047707.jpeg', 'Keamanan', 'pemasukan', NULL),
(442, 35, '4342501039', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-10-06 03:00:00', 'bukti_1766034047829.jpeg', 'Keamanan', 'pemasukan', NULL),
(444, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-01-21 03:00:00', 'bukti_1766034047135.jpeg', 'Kebersihan', 'pemasukan', NULL),
(445, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2019-02-21 03:00:00', 'bukti_1766034047820.jpeg', 'Kebersihan', 'pemasukan', NULL),
(446, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-03-20 03:00:00', 'bukti_1766034047966.jpeg', 'Kebersihan', 'pemasukan', NULL),
(447, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-04-24 03:00:00', 'bukti_1766034047868.jpeg', 'Kebersihan', 'pemasukan', NULL),
(448, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2019-05-12 03:00:00', 'bukti_1766034047400.jpeg', 'Kebersihan', 'pemasukan', NULL),
(449, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-06-09 03:00:00', 'bukti_1766034047292.jpeg', 'Kebersihan', 'pemasukan', NULL),
(450, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-07-25 03:00:00', 'bukti_1766034047942.jpeg', 'Kebersihan', 'pemasukan', NULL),
(451, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-08-22 03:00:00', 'bukti_1766034047438.jpeg', 'Kebersihan', 'pemasukan', NULL),
(452, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-09-09 03:00:00', 'bukti_1766034047248.jpeg', 'Kebersihan', 'pemasukan', NULL),
(453, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-10-09 03:00:00', 'bukti_1766034047695.jpeg', 'Kebersihan', 'pemasukan', NULL),
(454, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-11-21 03:00:00', 'bukti_1766034047740.jpeg', 'Kebersihan', 'pemasukan', NULL),
(455, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-12-17 03:00:00', 'bukti_1766034047713.jpeg', 'Kebersihan', 'pemasukan', NULL),
(456, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-01-06 03:00:00', 'bukti_1766034047730.jpeg', 'Kebersihan', 'pemasukan', NULL),
(457, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-02-14 03:00:00', 'bukti_1766034047660.jpeg', 'Kebersihan', 'pemasukan', NULL),
(458, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-03-05 03:00:00', 'bukti_1766034047641.jpeg', 'Kebersihan', 'pemasukan', NULL),
(459, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-04-07 03:00:00', 'bukti_1766034047584.jpeg', 'Kebersihan', 'pemasukan', NULL),
(460, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-05-19 03:00:00', 'bukti_1766034047493.jpeg', 'Kebersihan', 'pemasukan', NULL),
(461, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-06-10 03:00:00', 'bukti_1766034047895.jpeg', 'Kebersihan', 'pemasukan', NULL),
(462, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-07-16 03:00:00', 'bukti_1766034047671.jpeg', 'Kebersihan', 'pemasukan', NULL),
(463, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-08-15 03:00:00', 'bukti_1766034047965.jpeg', 'Kebersihan', 'pemasukan', NULL),
(464, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-09-15 03:00:00', 'bukti_1766034047831.jpeg', 'Kebersihan', 'pemasukan', NULL),
(465, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-10-25 03:00:00', 'bukti_1766034047441.jpeg', 'Kebersihan', 'pemasukan', NULL),
(466, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-11-25 03:00:00', 'bukti_1766034047557.jpeg', 'Kebersihan', 'pemasukan', NULL),
(467, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-12-17 03:00:00', 'bukti_1766034047770.jpeg', 'Kebersihan', 'pemasukan', NULL),
(468, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-01-19 03:00:00', 'bukti_1766034047402.jpeg', 'Kebersihan', 'pemasukan', NULL),
(469, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-02-16 03:00:00', 'bukti_1766034047397.jpeg', 'Kebersihan', 'pemasukan', NULL),
(470, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-03-20 03:00:00', 'bukti_1766034047172.jpeg', 'Kebersihan', 'pemasukan', NULL),
(471, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-04-09 03:00:00', 'bukti_1766034047220.jpeg', 'Kebersihan', 'pemasukan', NULL),
(472, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-05-22 03:00:00', 'bukti_1766034047392.jpeg', 'Kebersihan', 'pemasukan', NULL),
(473, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-06-11 03:00:00', 'bukti_1766034047581.jpeg', 'Kebersihan', 'pemasukan', NULL),
(474, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-07-11 03:00:00', 'bukti_1766034047495.jpeg', 'Kebersihan', 'pemasukan', NULL),
(475, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-08-10 03:00:00', 'bukti_1766034047229.jpeg', 'Kebersihan', 'pemasukan', NULL),
(476, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-09-21 03:00:00', 'bukti_1766034047211.jpeg', 'Kebersihan', 'pemasukan', NULL),
(477, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-10-05 03:00:00', 'bukti_1766034047441.jpeg', 'Kebersihan', 'pemasukan', NULL),
(478, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-11-05 03:00:00', 'bukti_1766034047598.jpeg', 'Kebersihan', 'pemasukan', NULL),
(479, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-12-13 03:00:00', 'bukti_1766034047840.jpeg', 'Kebersihan', 'pemasukan', NULL),
(480, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-01-05 03:00:00', 'bukti_1766034047629.jpeg', 'Kebersihan', 'pemasukan', NULL),
(481, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-02-10 03:00:00', 'bukti_1766034047384.jpeg', 'Kebersihan', 'pemasukan', NULL),
(482, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-03-07 03:00:00', 'bukti_1766034047846.jpeg', 'Kebersihan', 'pemasukan', NULL),
(483, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-04-16 03:00:00', 'bukti_1766034047881.jpeg', 'Kebersihan', 'pemasukan', NULL),
(484, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-05-12 03:00:00', 'bukti_1766034047326.jpeg', 'Kebersihan', 'pemasukan', NULL),
(485, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-06-09 03:00:00', 'bukti_1766034047652.jpeg', 'Kebersihan', 'pemasukan', NULL),
(486, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-07-09 03:00:00', 'bukti_1766034047766.jpeg', 'Kebersihan', 'pemasukan', NULL),
(487, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-08-12 03:00:00', 'bukti_1766034047718.jpeg', 'Kebersihan', 'pemasukan', NULL),
(488, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-09-10 03:00:00', 'bukti_1766034047656.jpeg', 'Kebersihan', 'pemasukan', NULL),
(489, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-10-08 03:00:00', 'bukti_1766034047122.jpeg', 'Kebersihan', 'pemasukan', NULL),
(490, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-11-17 03:00:00', 'bukti_1766034047740.jpeg', 'Kebersihan', 'pemasukan', NULL),
(491, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-12-08 03:00:00', 'bukti_1766034047438.jpeg', 'Kebersihan', 'pemasukan', NULL),
(492, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-01-23 03:00:00', 'bukti_1766034047328.jpeg', 'Kebersihan', 'pemasukan', NULL),
(493, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2023-02-22 03:00:00', 'bukti_1766034047520.jpeg', 'Kebersihan', 'pemasukan', NULL),
(494, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-03-18 03:00:00', 'bukti_1766034047750.jpeg', 'Kebersihan', 'pemasukan', NULL),
(495, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-04-06 03:00:00', 'bukti_1766034047536.jpeg', 'Kebersihan', 'pemasukan', NULL),
(496, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-05-24 03:00:00', 'bukti_1766034047399.jpeg', 'Kebersihan', 'pemasukan', NULL),
(497, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-06-11 03:00:00', 'bukti_1766034047273.jpeg', 'Kebersihan', 'pemasukan', NULL),
(498, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-07-14 03:00:00', 'bukti_1766034047327.jpeg', 'Kebersihan', 'pemasukan', NULL),
(499, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-08-25 03:00:00', 'bukti_1766034047133.jpeg', 'Kebersihan', 'pemasukan', NULL),
(500, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-09-23 03:00:00', 'bukti_1766034047405.jpeg', 'Kebersihan', 'pemasukan', NULL),
(501, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-10-10 03:00:00', 'bukti_1766034047273.jpeg', 'Kebersihan', 'pemasukan', NULL),
(502, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-11-14 03:00:00', 'bukti_1766034047231.jpeg', 'Kebersihan', 'pemasukan', NULL),
(503, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2023-12-13 03:00:00', 'bukti_1766034047812.jpeg', 'Kebersihan', 'pemasukan', NULL),
(504, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-01-07 03:00:00', 'bukti_1766034047207.jpeg', 'Kebersihan', 'pemasukan', NULL),
(505, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-02-11 03:00:00', 'bukti_1766034047362.jpeg', 'Kebersihan', 'pemasukan', NULL),
(506, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2024-03-13 03:00:00', 'bukti_1766034047149.jpeg', 'Kebersihan', 'pemasukan', NULL),
(507, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-04-20 03:00:00', 'bukti_1766034047401.jpeg', 'Kebersihan', 'pemasukan', NULL),
(508, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-05-11 03:00:00', 'bukti_1766034047602.jpeg', 'Kebersihan', 'pemasukan', NULL),
(509, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-06-12 03:00:00', 'bukti_1766034047391.jpeg', 'Kebersihan', 'pemasukan', NULL),
(510, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-07-19 03:00:00', 'bukti_1766034047873.jpeg', 'Kebersihan', 'pemasukan', NULL),
(511, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-08-09 03:00:00', 'bukti_1766034047145.jpeg', 'Kebersihan', 'pemasukan', NULL),
(512, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2024-09-21 03:00:00', 'bukti_1766034047933.jpeg', 'Kebersihan', 'pemasukan', NULL),
(513, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-10-16 03:00:00', 'bukti_1766034047527.jpeg', 'Kebersihan', 'pemasukan', NULL),
(514, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-11-09 03:00:00', 'bukti_1766034047770.jpeg', 'Kebersihan', 'pemasukan', NULL),
(515, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-12-11 03:00:00', 'bukti_1766034047246.jpeg', 'Kebersihan', 'pemasukan', NULL),
(516, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-01-21 03:00:00', 'bukti_1766034047907.jpeg', 'Kebersihan', 'pemasukan', NULL),
(517, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-02-09 03:00:00', 'bukti_1766034047643.jpeg', 'Kebersihan', 'pemasukan', NULL),
(518, 36, '4342501039', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-03-06 03:00:00', 'bukti_1766034047314.jpeg', 'Kebersihan', 'pemasukan', NULL),
(519, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-04-07 03:00:00', 'bukti_1766034047380.jpeg', 'Kebersihan', 'pemasukan', NULL),
(520, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-05-07 03:00:00', 'bukti_1766034047421.jpeg', 'Kebersihan', 'pemasukan', NULL),
(521, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-06-21 03:00:00', 'bukti_1766034047712.jpeg', 'Kebersihan', 'pemasukan', NULL),
(522, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-07-16 03:00:00', 'bukti_1766034047470.jpeg', 'Kebersihan', 'pemasukan', NULL),
(523, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-08-16 03:00:00', 'bukti_1766034047584.jpeg', 'Kebersihan', 'pemasukan', NULL),
(524, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-09-12 03:00:00', 'bukti_1766034047844.jpeg', 'Kebersihan', 'pemasukan', NULL),
(525, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-10-12 03:00:00', 'bukti_1766034047587.jpeg', 'Kebersihan', 'pemasukan', NULL),
(526, 36, '4342501039', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-11-24 03:00:00', 'bukti_1766034047759.jpeg', 'Kebersihan', 'pemasukan', NULL),
(527, 37, '4342501039', '', '', 'transfer', 'tahunan', 50000.00, 'pending', '2019-08-08 03:00:00', 'bukti_1766034047818.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(528, 37, '4342501039', '', '', 'qris', 'tahunan', 50000.00, 'lunas', '2020-08-20 03:00:00', 'bukti_1766034047364.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(529, 37, '4342501039', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2021-08-09 03:00:00', 'bukti_1766034047185.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(530, 37, '4342501039', '', '', 'qris', 'tahunan', 50000.00, 'pending', '2022-08-15 03:00:00', 'bukti_1766034047267.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(531, 37, '4342501039', '', '', 'qris', 'tahunan', 50000.00, 'pending', '2023-08-05 03:00:00', 'bukti_1766034047180.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(532, 37, '4342501039', '', '', 'transfer', 'tahunan', 50000.00, 'belum lunas', '2024-08-23 03:00:00', 'bukti_1766034047746.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(533, 37, '4342501039', '', '', 'transfer', 'tahunan', 50000.00, 'lunas', '2025-08-07 03:00:00', 'bukti_1766034047585.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(534, 38, '4342501039', '', '', 'transfer', 'tahunan', 100000.00, 'belum lunas', '2019-01-15 03:00:00', 'bukti_1766034047813.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(535, 38, '4342501039', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2020-01-14 03:00:00', 'bukti_1766034047253.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(536, 38, '4342501039', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2021-01-16 03:00:00', 'bukti_1766034047810.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(537, 38, '4342501039', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2022-01-24 03:00:00', 'bukti_1766034047631.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(538, 38, '4342501039', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2023-01-24 03:00:00', 'bukti_1766034047432.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(539, 38, '4342501039', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2024-01-08 03:00:00', 'bukti_1766034047974.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(540, 38, '4342501039', '', '', 'qris', 'tahunan', 100000.00, 'belum lunas', '2025-01-23 03:00:00', 'bukti_1766034047400.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(541, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2019-01-22 03:00:00', 'bukti_1766034047677.jpeg', 'Keamanan', 'pemasukan', NULL),
(542, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-02-25 03:00:00', 'bukti_1766034047916.jpeg', 'Keamanan', 'pemasukan', NULL),
(543, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-03-17 03:00:00', 'bukti_1766034047699.jpeg', 'Keamanan', 'pemasukan', NULL),
(544, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-04-13 03:00:00', 'bukti_1766034047223.jpeg', 'Keamanan', 'pemasukan', NULL),
(545, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-05-12 03:00:00', 'bukti_1766034047662.jpeg', 'Keamanan', 'pemasukan', NULL),
(546, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-06-11 03:00:00', 'bukti_1766034047430.jpeg', 'Keamanan', 'pemasukan', NULL),
(547, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-07-11 03:00:00', 'bukti_1766034047699.jpeg', 'Keamanan', 'pemasukan', NULL),
(548, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-08-05 03:00:00', 'bukti_1766034047648.jpeg', 'Keamanan', 'pemasukan', NULL),
(549, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-09-17 03:00:00', 'bukti_1766034047373.jpeg', 'Keamanan', 'pemasukan', NULL),
(550, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-10-06 03:00:00', 'bukti_1766034047711.jpeg', 'Keamanan', 'pemasukan', NULL),
(551, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-11-18 03:00:00', 'bukti_1766034047223.jpeg', 'Keamanan', 'pemasukan', NULL),
(552, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-12-09 03:00:00', 'bukti_1766034047761.jpeg', 'Keamanan', 'pemasukan', NULL),
(553, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-01-22 03:00:00', 'bukti_1766034047604.jpeg', 'Keamanan', 'pemasukan', NULL),
(554, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-02-22 03:00:00', 'bukti_1766034047245.jpeg', 'Keamanan', 'pemasukan', NULL),
(555, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-03-18 03:00:00', 'bukti_1766034047663.jpeg', 'Keamanan', 'pemasukan', NULL),
(556, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-04-10 03:00:00', 'bukti_1766034047897.jpeg', 'Keamanan', 'pemasukan', NULL),
(557, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-05-11 03:00:00', 'bukti_1766034047856.jpeg', 'Keamanan', 'pemasukan', NULL),
(558, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-06-15 03:00:00', 'bukti_1766034047501.jpeg', 'Keamanan', 'pemasukan', NULL),
(559, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2020-07-25 03:00:00', 'bukti_1766034047908.jpeg', 'Keamanan', 'pemasukan', NULL),
(560, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-08-20 03:00:00', 'bukti_1766034047573.jpeg', 'Keamanan', 'pemasukan', NULL),
(561, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-09-13 03:00:00', 'bukti_1766034047401.jpeg', 'Keamanan', 'pemasukan', NULL),
(562, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-10-07 03:00:00', 'bukti_1766034047310.jpeg', 'Keamanan', 'pemasukan', NULL),
(563, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-11-06 03:00:00', 'bukti_1766034047295.jpeg', 'Keamanan', 'pemasukan', NULL),
(564, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-12-22 03:00:00', 'bukti_1766034047531.jpeg', 'Keamanan', 'pemasukan', NULL),
(565, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-01-10 03:00:00', 'bukti_1766034047715.jpeg', 'Keamanan', 'pemasukan', NULL),
(566, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-02-21 03:00:00', 'bukti_1766034047975.jpeg', 'Keamanan', 'pemasukan', NULL),
(567, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-03-15 03:00:00', 'bukti_1766034047407.jpeg', 'Keamanan', 'pemasukan', NULL),
(568, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-04-14 03:00:00', 'bukti_1766034047650.jpeg', 'Keamanan', 'pemasukan', NULL),
(569, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-05-05 03:00:00', 'bukti_1766034047199.jpeg', 'Keamanan', 'pemasukan', NULL),
(570, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-06-08 03:00:00', 'bukti_1766034047706.jpeg', 'Keamanan', 'pemasukan', NULL),
(571, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-07-16 03:00:00', 'bukti_1766034047771.jpeg', 'Keamanan', 'pemasukan', NULL),
(572, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-08-08 03:00:00', 'bukti_1766034047779.jpeg', 'Keamanan', 'pemasukan', NULL),
(573, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-09-21 03:00:00', 'bukti_1766034047309.jpeg', 'Keamanan', 'pemasukan', NULL),
(574, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-10-06 03:00:00', 'bukti_1766034047844.jpeg', 'Keamanan', 'pemasukan', NULL),
(575, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-11-17 03:00:00', 'bukti_1766034047598.jpeg', 'Keamanan', 'pemasukan', NULL),
(576, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-12-13 03:00:00', 'bukti_1766034047911.jpeg', 'Keamanan', 'pemasukan', NULL),
(577, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-01-18 03:00:00', 'bukti_1766034047510.jpeg', 'Keamanan', 'pemasukan', NULL),
(578, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-02-11 03:00:00', 'bukti_1766034047565.jpeg', 'Keamanan', 'pemasukan', NULL),
(579, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-03-22 03:00:00', 'bukti_1766034047987.jpeg', 'Keamanan', 'pemasukan', NULL),
(580, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-04-06 03:00:00', 'bukti_1766034047811.jpeg', 'Keamanan', 'pemasukan', NULL),
(581, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-05-13 03:00:00', 'bukti_1766034047174.jpeg', 'Keamanan', 'pemasukan', NULL),
(582, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-06-08 03:00:00', 'bukti_1766034047530.jpeg', 'Keamanan', 'pemasukan', NULL),
(583, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-07-23 03:00:00', 'bukti_1766034047419.jpeg', 'Keamanan', 'pemasukan', NULL),
(584, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-08-17 03:00:00', 'bukti_1766034047146.jpeg', 'Keamanan', 'pemasukan', NULL),
(585, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-09-16 03:00:00', 'bukti_1766034047184.jpeg', 'Keamanan', 'pemasukan', NULL),
(586, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-10-16 03:00:00', 'bukti_1766034047218.jpeg', 'Keamanan', 'pemasukan', NULL),
(587, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-11-09 03:00:00', 'bukti_1766034047530.jpeg', 'Keamanan', 'pemasukan', NULL),
(588, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-12-12 03:00:00', 'bukti_1766034047565.jpeg', 'Keamanan', 'pemasukan', NULL),
(589, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2023-01-11 03:00:00', 'bukti_1766034047168.jpeg', 'Keamanan', 'pemasukan', NULL),
(590, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2023-02-14 03:00:00', 'bukti_1766034047479.jpeg', 'Keamanan', 'pemasukan', NULL),
(591, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-03-16 03:00:00', 'bukti_1766034047269.jpeg', 'Keamanan', 'pemasukan', NULL),
(592, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-04-24 03:00:00', 'bukti_1766034047584.jpeg', 'Keamanan', 'pemasukan', NULL),
(593, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-05-10 03:00:00', 'bukti_1766034047693.jpeg', 'Keamanan', 'pemasukan', NULL),
(594, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-06-24 03:00:00', 'bukti_1766034047408.jpeg', 'Keamanan', 'pemasukan', NULL),
(595, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-07-16 03:00:00', 'bukti_1766034047798.jpeg', 'Keamanan', 'pemasukan', NULL),
(596, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-08-16 03:00:00', 'bukti_1766034047409.jpeg', 'Keamanan', 'pemasukan', NULL),
(597, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-09-22 03:00:00', 'bukti_1766034047600.jpeg', 'Keamanan', 'pemasukan', NULL),
(598, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-10-06 03:00:00', 'bukti_1766034047163.jpeg', 'Keamanan', 'pemasukan', NULL),
(599, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-11-24 03:00:00', 'bukti_1766034047946.jpeg', 'Keamanan', 'pemasukan', NULL),
(600, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-12-22 03:00:00', 'bukti_1766034047375.jpeg', 'Keamanan', 'pemasukan', NULL),
(601, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-01-11 03:00:00', 'bukti_1766034047377.jpeg', 'Keamanan', 'pemasukan', NULL),
(602, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-02-11 03:00:00', 'bukti_1766034047533.jpeg', 'Keamanan', 'pemasukan', NULL),
(603, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-03-11 03:00:00', 'bukti_1766034047614.jpeg', 'Keamanan', 'pemasukan', NULL),
(604, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2024-04-25 03:00:00', 'bukti_1766034047400.jpeg', 'Keamanan', 'pemasukan', NULL),
(605, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-05-14 03:00:00', 'bukti_1766034047106.jpeg', 'Keamanan', 'pemasukan', NULL),
(606, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-06-09 03:00:00', 'bukti_1766034047829.jpeg', 'Keamanan', 'pemasukan', NULL),
(607, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-07-15 03:00:00', 'bukti_1766034047141.jpeg', 'Keamanan', 'pemasukan', NULL),
(608, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-08-14 03:00:00', 'bukti_1766034047228.jpeg', 'Keamanan', 'pemasukan', NULL),
(609, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-09-22 03:00:00', 'bukti_1766034047352.jpeg', 'Keamanan', 'pemasukan', NULL),
(610, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-10-21 03:00:00', 'bukti_1766034047641.jpeg', 'Keamanan', 'pemasukan', NULL),
(611, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-11-10 03:00:00', 'bukti_1766034047544.jpeg', 'Keamanan', 'pemasukan', NULL),
(612, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-12-14 03:00:00', 'bukti_1766034047495.jpeg', 'Keamanan', 'pemasukan', NULL),
(613, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-01-07 03:00:00', 'bukti_1766034047110.jpeg', 'Keamanan', 'pemasukan', NULL),
(614, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-02-12 03:00:00', 'bukti_1766034047572.jpeg', 'Keamanan', 'pemasukan', NULL),
(615, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-03-22 03:00:00', 'bukti_1766034047448.jpeg', 'Keamanan', 'pemasukan', NULL),
(616, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-04-06 03:00:00', 'bukti_1766034047323.jpeg', 'Keamanan', 'pemasukan', NULL),
(617, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-05-18 03:00:00', 'bukti_1766034047659.jpeg', 'Keamanan', 'pemasukan', NULL),
(618, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-06-09 03:00:00', 'bukti_1766034047530.jpeg', 'Keamanan', 'pemasukan', NULL),
(619, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-07-06 03:00:00', 'bukti_1766034047985.jpeg', 'Keamanan', 'pemasukan', NULL),
(620, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-08-14 03:00:00', 'bukti_1766034047798.jpeg', 'Keamanan', 'pemasukan', NULL),
(621, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-09-18 03:00:00', 'bukti_1766034047768.jpeg', 'Keamanan', 'pemasukan', NULL),
(622, 35, '4342501038', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-10-16 03:00:00', 'bukti_1766034047945.jpeg', 'Keamanan', 'pemasukan', NULL),
(623, 35, '4342501038', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-11-06 03:00:00', 'bukti_1766034047434.jpeg', 'Keamanan', 'pemasukan', NULL),
(624, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-01-21 03:00:00', 'bukti_1766034047934.jpeg', 'Kebersihan', 'pemasukan', NULL),
(625, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-02-24 03:00:00', 'bukti_1766034047221.jpeg', 'Kebersihan', 'pemasukan', NULL),
(626, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-03-16 03:00:00', 'bukti_1766034047503.jpeg', 'Kebersihan', 'pemasukan', NULL),
(627, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-04-21 03:00:00', 'bukti_1766034047397.jpeg', 'Kebersihan', 'pemasukan', NULL),
(628, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-05-23 03:00:00', 'bukti_1766034047558.jpeg', 'Kebersihan', 'pemasukan', NULL),
(629, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-06-15 03:00:00', 'bukti_1766034047925.jpeg', 'Kebersihan', 'pemasukan', NULL),
(630, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-07-25 03:00:00', 'bukti_1766034047373.jpeg', 'Kebersihan', 'pemasukan', NULL),
(631, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-08-11 03:00:00', 'bukti_1766034047415.jpeg', 'Kebersihan', 'pemasukan', NULL),
(632, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-09-22 03:00:00', 'bukti_1766034047780.jpeg', 'Kebersihan', 'pemasukan', NULL),
(633, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-10-10 03:00:00', 'bukti_1766034047838.jpeg', 'Kebersihan', 'pemasukan', NULL),
(634, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-11-16 03:00:00', 'bukti_1766034047928.jpeg', 'Kebersihan', 'pemasukan', NULL);
INSERT INTO `catatan` (`id`, `id_iuran`, `nik`, `nama`, `alamat`, `metode`, `periode`, `jumlah`, `status`, `tanggal`, `bukti`, `nama_iuran`, `kategori`, `uraian`) VALUES
(635, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-12-15 03:00:00', 'bukti_1766034047288.jpeg', 'Kebersihan', 'pemasukan', NULL),
(636, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-01-16 03:00:00', 'bukti_1766034047652.jpeg', 'Kebersihan', 'pemasukan', NULL),
(637, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-02-17 03:00:00', 'bukti_1766034047984.jpeg', 'Kebersihan', 'pemasukan', NULL),
(638, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-03-19 03:00:00', 'bukti_1766034047481.jpeg', 'Kebersihan', 'pemasukan', NULL),
(639, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-04-11 03:00:00', 'bukti_1766034047484.jpeg', 'Kebersihan', 'pemasukan', NULL),
(640, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-05-05 03:00:00', 'bukti_1766034047517.jpeg', 'Kebersihan', 'pemasukan', NULL),
(641, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-06-23 03:00:00', 'bukti_1766034047837.jpeg', 'Kebersihan', 'pemasukan', NULL),
(642, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-07-22 03:00:00', 'bukti_1766034047688.jpeg', 'Kebersihan', 'pemasukan', NULL),
(643, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-08-13 03:00:00', 'bukti_1766034047689.jpeg', 'Kebersihan', 'pemasukan', NULL),
(644, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-09-13 03:00:00', 'bukti_1766034047976.jpeg', 'Kebersihan', 'pemasukan', NULL),
(645, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-10-15 03:00:00', 'bukti_1766034047547.jpeg', 'Kebersihan', 'pemasukan', NULL),
(646, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-11-22 03:00:00', 'bukti_1766034047498.jpeg', 'Kebersihan', 'pemasukan', NULL),
(647, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-12-14 03:00:00', 'bukti_1766034047300.jpeg', 'Kebersihan', 'pemasukan', NULL),
(648, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-01-11 03:00:00', 'bukti_1766034047237.jpeg', 'Kebersihan', 'pemasukan', NULL),
(649, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-02-09 03:00:00', 'bukti_1766034047412.jpeg', 'Kebersihan', 'pemasukan', NULL),
(650, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-03-24 03:00:00', 'bukti_1766034047605.jpeg', 'Kebersihan', 'pemasukan', NULL),
(651, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-04-21 03:00:00', 'bukti_1766034047661.jpeg', 'Kebersihan', 'pemasukan', NULL),
(652, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-05-08 03:00:00', 'bukti_1766034047780.jpeg', 'Kebersihan', 'pemasukan', NULL),
(653, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-06-14 03:00:00', 'bukti_1766034047323.jpeg', 'Kebersihan', 'pemasukan', NULL),
(654, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-07-22 03:00:00', 'bukti_1766034047866.jpeg', 'Kebersihan', 'pemasukan', NULL),
(655, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-08-20 03:00:00', 'bukti_1766034047198.jpeg', 'Kebersihan', 'pemasukan', NULL),
(656, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-09-11 03:00:00', 'bukti_1766034047552.jpeg', 'Kebersihan', 'pemasukan', NULL),
(657, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-10-15 03:00:00', 'bukti_1766034047410.jpeg', 'Kebersihan', 'pemasukan', NULL),
(658, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-11-10 03:00:00', 'bukti_1766034047792.jpeg', 'Kebersihan', 'pemasukan', NULL),
(659, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-12-19 03:00:00', 'bukti_1766034047131.jpeg', 'Kebersihan', 'pemasukan', NULL),
(660, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-01-24 03:00:00', 'bukti_1766034047193.jpeg', 'Kebersihan', 'pemasukan', NULL),
(661, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-02-14 03:00:00', 'bukti_1766034047942.jpeg', 'Kebersihan', 'pemasukan', NULL),
(662, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-03-15 03:00:00', 'bukti_1766034047123.jpeg', 'Kebersihan', 'pemasukan', NULL),
(663, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-04-22 03:00:00', 'bukti_1766034047228.jpeg', 'Kebersihan', 'pemasukan', NULL),
(664, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-05-06 03:00:00', 'bukti_1766034047276.jpeg', 'Kebersihan', 'pemasukan', NULL),
(665, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-06-21 03:00:00', 'bukti_1766034047222.jpeg', 'Kebersihan', 'pemasukan', NULL),
(666, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-07-15 03:00:00', 'bukti_1766034047870.jpeg', 'Kebersihan', 'pemasukan', NULL),
(667, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-08-15 03:00:00', 'bukti_1766034047925.jpeg', 'Kebersihan', 'pemasukan', NULL),
(668, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-09-08 03:00:00', 'bukti_1766034047198.jpeg', 'Kebersihan', 'pemasukan', NULL),
(669, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-10-16 03:00:00', 'bukti_1766034047399.jpeg', 'Kebersihan', 'pemasukan', NULL),
(670, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-11-15 03:00:00', 'bukti_1766034047888.jpeg', 'Kebersihan', 'pemasukan', NULL),
(671, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-12-22 03:00:00', 'bukti_1766034047995.jpeg', 'Kebersihan', 'pemasukan', NULL),
(672, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-01-16 03:00:00', 'bukti_1766034047865.jpeg', 'Kebersihan', 'pemasukan', NULL),
(673, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-02-05 03:00:00', 'bukti_1766034047482.jpeg', 'Kebersihan', 'pemasukan', NULL),
(674, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2023-03-24 03:00:00', 'bukti_1766034047501.jpeg', 'Kebersihan', 'pemasukan', NULL),
(675, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-04-09 03:00:00', 'bukti_1766034047116.jpeg', 'Kebersihan', 'pemasukan', NULL),
(676, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-05-18 03:00:00', 'bukti_1766034047782.jpeg', 'Kebersihan', 'pemasukan', NULL),
(677, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2023-06-23 03:00:00', 'bukti_1766034047180.jpeg', 'Kebersihan', 'pemasukan', NULL),
(678, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-07-14 03:00:00', 'bukti_1766034047311.jpeg', 'Kebersihan', 'pemasukan', NULL),
(679, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-08-05 03:00:00', 'bukti_1766034047507.jpeg', 'Kebersihan', 'pemasukan', NULL),
(680, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-09-08 03:00:00', 'bukti_1766034047185.jpeg', 'Kebersihan', 'pemasukan', NULL),
(681, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-10-19 03:00:00', 'bukti_1766034047203.jpeg', 'Kebersihan', 'pemasukan', NULL),
(682, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-11-16 03:00:00', 'bukti_1766034047617.jpeg', 'Kebersihan', 'pemasukan', NULL),
(683, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-12-05 03:00:00', 'bukti_1766034047386.jpeg', 'Kebersihan', 'pemasukan', NULL),
(684, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-01-11 03:00:00', 'bukti_1766034047325.jpeg', 'Kebersihan', 'pemasukan', NULL),
(685, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-02-17 03:00:00', 'bukti_1766034047952.jpeg', 'Kebersihan', 'pemasukan', NULL),
(686, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-03-18 03:00:00', 'bukti_1766034047418.jpeg', 'Kebersihan', 'pemasukan', NULL),
(687, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-04-15 03:00:00', 'bukti_1766034047405.jpeg', 'Kebersihan', 'pemasukan', NULL),
(688, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-05-15 03:00:00', 'bukti_1766034047289.jpeg', 'Kebersihan', 'pemasukan', NULL),
(689, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-06-11 03:00:00', 'bukti_1766034047887.jpeg', 'Kebersihan', 'pemasukan', NULL),
(690, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-07-17 03:00:00', 'bukti_1766034047843.jpeg', 'Kebersihan', 'pemasukan', NULL),
(691, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-08-05 03:00:00', 'bukti_1766034047632.jpeg', 'Kebersihan', 'pemasukan', NULL),
(692, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-09-15 03:00:00', 'bukti_1766034047105.jpeg', 'Kebersihan', 'pemasukan', NULL),
(693, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-10-22 03:00:00', 'bukti_1766034047931.jpeg', 'Kebersihan', 'pemasukan', NULL),
(694, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-11-15 03:00:00', 'bukti_1766034047120.jpeg', 'Kebersihan', 'pemasukan', NULL),
(695, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-12-07 03:00:00', 'bukti_1766034047198.jpeg', 'Kebersihan', 'pemasukan', NULL),
(696, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-01-10 03:00:00', 'bukti_1766034047901.jpeg', 'Kebersihan', 'pemasukan', NULL),
(697, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-02-24 03:00:00', 'bukti_1766034047482.jpeg', 'Kebersihan', 'pemasukan', NULL),
(698, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-03-17 03:00:00', 'bukti_1766034047506.jpeg', 'Kebersihan', 'pemasukan', NULL),
(699, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-04-07 03:00:00', 'bukti_1766034047109.jpeg', 'Kebersihan', 'pemasukan', NULL),
(700, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-05-21 03:00:00', 'bukti_1766034047723.jpeg', 'Kebersihan', 'pemasukan', NULL),
(701, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-06-23 03:00:00', 'bukti_1766034047893.jpeg', 'Kebersihan', 'pemasukan', NULL),
(702, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-07-22 03:00:00', 'bukti_1766034047515.jpeg', 'Kebersihan', 'pemasukan', NULL),
(703, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-08-21 03:00:00', 'bukti_1766034047566.jpeg', 'Kebersihan', 'pemasukan', NULL),
(704, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-09-05 03:00:00', 'bukti_1766034047361.jpeg', 'Kebersihan', 'pemasukan', NULL),
(705, 36, '4342501038', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-10-17 03:00:00', 'bukti_1766034047506.jpeg', 'Kebersihan', 'pemasukan', NULL),
(706, 36, '4342501038', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-11-15 03:00:00', 'bukti_1766034047795.jpeg', 'Kebersihan', 'pemasukan', NULL),
(707, 37, '4342501038', '', '', 'transfer', 'tahunan', 50000.00, 'lunas', '2019-08-21 03:00:00', 'bukti_1766034047849.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(708, 37, '4342501038', '', '', 'transfer', 'tahunan', 50000.00, 'pending', '2020-08-24 03:00:00', 'bukti_1766034047969.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(709, 37, '4342501038', '', '', 'transfer', 'tahunan', 50000.00, 'belum lunas', '2021-08-16 03:00:00', 'bukti_1766034047329.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(710, 37, '4342501038', '', '', 'transfer', 'tahunan', 50000.00, 'lunas', '2022-08-25 03:00:00', 'bukti_1766034047670.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(711, 37, '4342501038', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2023-08-08 03:00:00', 'bukti_1766034047693.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(712, 37, '4342501038', '', '', 'transfer', 'tahunan', 50000.00, 'lunas', '2024-08-11 03:00:00', 'bukti_1766034047434.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(713, 37, '4342501038', '', '', 'qris', 'tahunan', 50000.00, 'lunas', '2025-08-06 03:00:00', 'bukti_1766034047169.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(714, 38, '4342501038', '', '', 'qris', 'tahunan', 100000.00, 'pending', '2019-01-07 03:00:00', 'bukti_1766034047430.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(715, 38, '4342501038', '', '', 'transfer', 'tahunan', 100000.00, 'belum lunas', '2020-01-22 03:00:00', 'bukti_1766034047868.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(716, 38, '4342501038', '', '', 'qris', 'tahunan', 100000.00, 'lunas', '2021-01-23 03:00:00', 'bukti_1766034047120.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(717, 38, '4342501038', '', '', 'qris', 'tahunan', 100000.00, 'pending', '2022-01-24 03:00:00', 'bukti_1766034047219.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(718, 38, '4342501038', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2023-01-24 03:00:00', 'bukti_1766034047590.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(719, 38, '4342501038', '', '', 'qris', 'tahunan', 100000.00, 'pending', '2024-01-23 03:00:00', 'bukti_1766034047489.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(720, 38, '4342501038', '', '', 'qris', 'tahunan', 100000.00, 'belum lunas', '2025-01-14 03:00:00', 'bukti_1766034047795.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(721, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-01-07 03:00:00', 'bukti_1766034047854.jpeg', 'Keamanan', 'pemasukan', NULL),
(722, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2019-02-13 03:00:00', 'bukti_1766034047829.jpeg', 'Keamanan', 'pemasukan', NULL),
(723, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-03-10 03:00:00', 'bukti_1766034047821.jpeg', 'Keamanan', 'pemasukan', NULL),
(724, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-04-22 03:00:00', 'bukti_1766034047537.jpeg', 'Keamanan', 'pemasukan', NULL),
(725, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-05-16 03:00:00', 'bukti_1766034047556.jpeg', 'Keamanan', 'pemasukan', NULL),
(726, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2019-06-18 03:00:00', 'bukti_1766034047160.jpeg', 'Keamanan', 'pemasukan', NULL),
(727, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-07-13 03:00:00', 'bukti_1766034047644.jpeg', 'Keamanan', 'pemasukan', NULL),
(728, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-08-16 03:00:00', 'bukti_1766034047436.jpeg', 'Keamanan', 'pemasukan', NULL),
(729, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-09-19 03:00:00', 'bukti_1766034047555.jpeg', 'Keamanan', 'pemasukan', NULL),
(730, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-10-10 03:00:00', 'bukti_1766034047255.jpeg', 'Keamanan', 'pemasukan', NULL),
(731, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-11-17 03:00:00', 'bukti_1766034047306.jpeg', 'Keamanan', 'pemasukan', NULL),
(732, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-12-11 03:00:00', 'bukti_1766034047444.jpeg', 'Keamanan', 'pemasukan', NULL),
(733, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-01-14 03:00:00', 'bukti_1766034047742.jpeg', 'Keamanan', 'pemasukan', NULL),
(734, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-02-21 03:00:00', 'bukti_1766034047438.jpeg', 'Keamanan', 'pemasukan', NULL),
(735, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-03-21 03:00:00', 'bukti_1766034047352.jpeg', 'Keamanan', 'pemasukan', NULL),
(736, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-04-19 03:00:00', 'bukti_1766034047189.jpeg', 'Keamanan', 'pemasukan', NULL),
(737, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-05-06 03:00:00', 'bukti_1766034047190.jpeg', 'Keamanan', 'pemasukan', NULL),
(738, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-06-10 03:00:00', 'bukti_1766034047588.jpeg', 'Keamanan', 'pemasukan', NULL),
(739, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-07-09 03:00:00', 'bukti_1766034047247.jpeg', 'Keamanan', 'pemasukan', NULL),
(740, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-08-23 03:00:00', 'bukti_1766034047771.jpeg', 'Keamanan', 'pemasukan', NULL),
(741, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-09-20 03:00:00', 'bukti_1766034047738.jpeg', 'Keamanan', 'pemasukan', NULL),
(742, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2020-10-16 03:00:00', 'bukti_1766034047953.jpeg', 'Keamanan', 'pemasukan', NULL),
(743, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-11-20 03:00:00', 'bukti_1766034047336.jpeg', 'Keamanan', 'pemasukan', NULL),
(744, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-12-11 03:00:00', 'bukti_1766034047184.jpeg', 'Keamanan', 'pemasukan', NULL),
(745, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-01-17 03:00:00', 'bukti_1766034047244.jpeg', 'Keamanan', 'pemasukan', NULL),
(746, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-02-23 03:00:00', 'bukti_1766034047473.jpeg', 'Keamanan', 'pemasukan', NULL),
(747, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-03-15 03:00:00', 'bukti_1766034047610.jpeg', 'Keamanan', 'pemasukan', NULL),
(748, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2021-04-20 03:00:00', 'bukti_1766034047511.jpeg', 'Keamanan', 'pemasukan', NULL),
(749, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-05-18 03:00:00', 'bukti_1766034047127.jpeg', 'Keamanan', 'pemasukan', NULL),
(750, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-06-11 03:00:00', 'bukti_1766034047641.jpeg', 'Keamanan', 'pemasukan', NULL),
(751, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-07-23 03:00:00', 'bukti_1766034047170.jpeg', 'Keamanan', 'pemasukan', NULL),
(752, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-08-08 03:00:00', 'bukti_1766034047741.jpeg', 'Keamanan', 'pemasukan', NULL),
(753, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-09-07 03:00:00', 'bukti_1766034047105.jpeg', 'Keamanan', 'pemasukan', NULL),
(754, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-10-15 03:00:00', 'bukti_1766034047967.jpeg', 'Keamanan', 'pemasukan', NULL),
(755, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-11-20 03:00:00', 'bukti_1766034047122.jpeg', 'Keamanan', 'pemasukan', NULL),
(756, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-12-08 03:00:00', 'bukti_1766034047239.jpeg', 'Keamanan', 'pemasukan', NULL),
(757, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-01-11 03:00:00', 'bukti_1766034047187.jpeg', 'Keamanan', 'pemasukan', NULL),
(758, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-02-08 03:00:00', 'bukti_1766034047982.jpeg', 'Keamanan', 'pemasukan', NULL),
(759, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-03-19 03:00:00', 'bukti_1766034047419.jpeg', 'Keamanan', 'pemasukan', NULL),
(760, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-04-05 03:00:00', 'bukti_1766034047890.jpeg', 'Keamanan', 'pemasukan', NULL),
(761, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-05-16 03:00:00', 'bukti_1766034047922.jpeg', 'Keamanan', 'pemasukan', NULL),
(762, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-06-09 03:00:00', 'bukti_1766034047965.jpeg', 'Keamanan', 'pemasukan', NULL),
(763, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-07-19 03:00:00', 'bukti_1766034047477.jpeg', 'Keamanan', 'pemasukan', NULL),
(764, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-08-16 03:00:00', 'bukti_1766034047371.jpeg', 'Keamanan', 'pemasukan', NULL),
(765, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-09-14 03:00:00', 'bukti_1766034047123.jpeg', 'Keamanan', 'pemasukan', NULL),
(766, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-10-09 03:00:00', 'bukti_1766034047580.jpeg', 'Keamanan', 'pemasukan', NULL),
(767, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-11-14 03:00:00', 'bukti_1766034047328.jpeg', 'Keamanan', 'pemasukan', NULL),
(768, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-12-17 03:00:00', 'bukti_1766034047342.jpeg', 'Keamanan', 'pemasukan', NULL),
(769, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2023-01-16 03:00:00', 'bukti_1766034047688.jpeg', 'Keamanan', 'pemasukan', NULL),
(770, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-02-17 03:00:00', 'bukti_1766034047471.jpeg', 'Keamanan', 'pemasukan', NULL),
(771, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-03-14 03:00:00', 'bukti_1766034047234.jpeg', 'Keamanan', 'pemasukan', NULL),
(772, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-04-05 03:00:00', 'bukti_1766034047672.jpeg', 'Keamanan', 'pemasukan', NULL),
(773, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-05-09 03:00:00', 'bukti_1766034047569.jpeg', 'Keamanan', 'pemasukan', NULL),
(774, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-06-10 03:00:00', 'bukti_1766034047264.jpeg', 'Keamanan', 'pemasukan', NULL),
(775, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-07-16 03:00:00', 'bukti_1766034047657.jpeg', 'Keamanan', 'pemasukan', NULL),
(776, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-08-07 03:00:00', 'bukti_1766034047889.jpeg', 'Keamanan', 'pemasukan', NULL),
(777, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-09-08 03:00:00', 'bukti_1766034047111.jpeg', 'Keamanan', 'pemasukan', NULL),
(778, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-10-24 03:00:00', 'bukti_1766034047413.jpeg', 'Keamanan', 'pemasukan', NULL),
(779, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-11-21 03:00:00', 'bukti_1766034047744.jpeg', 'Keamanan', 'pemasukan', NULL),
(780, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-12-13 03:00:00', 'bukti_1766034047663.jpeg', 'Keamanan', 'pemasukan', NULL),
(781, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-01-15 03:00:00', 'bukti_1766034047119.jpeg', 'Keamanan', 'pemasukan', NULL),
(782, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-02-23 03:00:00', 'bukti_1766034047932.jpeg', 'Keamanan', 'pemasukan', NULL),
(783, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-03-12 03:00:00', 'bukti_1766034047877.jpeg', 'Keamanan', 'pemasukan', NULL),
(784, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-04-17 03:00:00', 'bukti_1766034047589.jpeg', 'Keamanan', 'pemasukan', NULL),
(785, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2024-05-10 03:00:00', 'bukti_1766034047309.jpeg', 'Keamanan', 'pemasukan', NULL),
(786, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-06-22 03:00:00', 'bukti_1766034047327.jpeg', 'Keamanan', 'pemasukan', NULL),
(787, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-07-16 03:00:00', 'bukti_1766034047122.jpeg', 'Keamanan', 'pemasukan', NULL),
(788, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-08-14 03:00:00', 'bukti_1766034047865.jpeg', 'Keamanan', 'pemasukan', NULL),
(789, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2024-09-15 03:00:00', 'bukti_1766034047860.jpeg', 'Keamanan', 'pemasukan', NULL),
(790, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-10-16 03:00:00', 'bukti_1766034047906.jpeg', 'Keamanan', 'pemasukan', NULL),
(791, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2024-11-18 03:00:00', 'bukti_1766034047325.jpeg', 'Keamanan', 'pemasukan', NULL),
(792, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-12-06 03:00:00', 'bukti_1766034047909.jpeg', 'Keamanan', 'pemasukan', NULL),
(793, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-01-17 03:00:00', 'bukti_1766034047989.jpeg', 'Keamanan', 'pemasukan', NULL),
(794, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-02-06 03:00:00', 'bukti_1766034047386.jpeg', 'Keamanan', 'pemasukan', NULL),
(795, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-03-08 03:00:00', 'bukti_1766034047801.jpeg', 'Keamanan', 'pemasukan', NULL),
(796, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-04-22 03:00:00', 'bukti_1766034047202.jpeg', 'Keamanan', 'pemasukan', NULL),
(797, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-05-19 03:00:00', 'bukti_1766034047123.jpeg', 'Keamanan', 'pemasukan', NULL),
(798, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-06-06 03:00:00', 'bukti_1766034047856.jpeg', 'Keamanan', 'pemasukan', NULL),
(799, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2025-07-09 03:00:00', 'bukti_1766034047370.jpeg', 'Keamanan', 'pemasukan', NULL),
(800, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-08-06 03:00:00', 'bukti_1766034047991.jpeg', 'Keamanan', 'pemasukan', NULL),
(801, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-09-12 03:00:00', 'bukti_1766034047975.jpeg', 'Keamanan', 'pemasukan', NULL),
(802, 35, '4342501043', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-10-25 03:00:00', 'bukti_1766034047341.jpeg', 'Keamanan', 'pemasukan', NULL),
(803, 35, '4342501043', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-11-12 03:00:00', 'bukti_1766034047842.jpeg', 'Keamanan', 'pemasukan', NULL),
(804, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-01-21 03:00:00', 'bukti_1766034047380.jpeg', 'Kebersihan', 'pemasukan', NULL),
(805, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-02-06 03:00:00', 'bukti_1766034047142.jpeg', 'Kebersihan', 'pemasukan', NULL),
(806, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-03-21 03:00:00', 'bukti_1766034047454.jpeg', 'Kebersihan', 'pemasukan', NULL),
(807, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-04-25 03:00:00', 'bukti_1766034047464.jpeg', 'Kebersihan', 'pemasukan', NULL),
(808, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-05-19 03:00:00', 'bukti_1766034047883.jpeg', 'Kebersihan', 'pemasukan', NULL),
(809, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-06-16 03:00:00', 'bukti_1766034047418.jpeg', 'Kebersihan', 'pemasukan', NULL),
(810, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2019-07-05 03:00:00', 'bukti_1766034047264.jpeg', 'Kebersihan', 'pemasukan', NULL),
(811, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-08-12 03:00:00', 'bukti_1766034047305.jpeg', 'Kebersihan', 'pemasukan', NULL),
(812, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-09-07 03:00:00', 'bukti_1766034047725.jpeg', 'Kebersihan', 'pemasukan', NULL),
(813, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-10-25 03:00:00', 'bukti_1766034047321.jpeg', 'Kebersihan', 'pemasukan', NULL),
(814, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-11-10 03:00:00', 'bukti_1766034047208.jpeg', 'Kebersihan', 'pemasukan', NULL),
(815, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-12-07 03:00:00', 'bukti_1766034047443.jpeg', 'Kebersihan', 'pemasukan', NULL),
(816, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-01-08 03:00:00', 'bukti_1766034047385.jpeg', 'Kebersihan', 'pemasukan', NULL),
(817, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-02-12 03:00:00', 'bukti_1766034047814.jpeg', 'Kebersihan', 'pemasukan', NULL),
(818, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-03-25 03:00:00', 'bukti_1766034047356.jpeg', 'Kebersihan', 'pemasukan', NULL),
(819, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-04-14 03:00:00', 'bukti_1766034047600.jpeg', 'Kebersihan', 'pemasukan', NULL),
(820, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-05-09 03:00:00', 'bukti_1766034047243.jpeg', 'Kebersihan', 'pemasukan', NULL),
(821, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-06-19 03:00:00', 'bukti_1766034047523.jpeg', 'Kebersihan', 'pemasukan', NULL),
(822, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-07-23 03:00:00', 'bukti_1766034047316.jpeg', 'Kebersihan', 'pemasukan', NULL),
(823, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-08-07 03:00:00', 'bukti_1766034047472.jpeg', 'Kebersihan', 'pemasukan', NULL),
(824, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-09-11 03:00:00', 'bukti_1766034047911.jpeg', 'Kebersihan', 'pemasukan', NULL),
(825, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-10-19 03:00:00', 'bukti_1766034047668.jpeg', 'Kebersihan', 'pemasukan', NULL),
(826, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-11-16 03:00:00', 'bukti_1766034047357.jpeg', 'Kebersihan', 'pemasukan', NULL),
(827, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-12-08 03:00:00', 'bukti_1766034047799.jpeg', 'Kebersihan', 'pemasukan', NULL),
(828, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-01-08 03:00:00', 'bukti_1766034047168.jpeg', 'Kebersihan', 'pemasukan', NULL),
(829, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-02-21 03:00:00', 'bukti_1766034047981.jpeg', 'Kebersihan', 'pemasukan', NULL),
(830, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-03-25 03:00:00', 'bukti_1766034047629.jpeg', 'Kebersihan', 'pemasukan', NULL),
(831, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-04-20 03:00:00', 'bukti_1766034047266.jpeg', 'Kebersihan', 'pemasukan', NULL),
(832, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-05-24 03:00:00', 'bukti_1766034047209.jpeg', 'Kebersihan', 'pemasukan', NULL),
(833, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-06-05 03:00:00', 'bukti_1766034047602.jpeg', 'Kebersihan', 'pemasukan', NULL),
(834, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-07-21 03:00:00', 'bukti_1766034047360.jpeg', 'Kebersihan', 'pemasukan', NULL),
(835, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-08-25 03:00:00', 'bukti_1766034047293.jpeg', 'Kebersihan', 'pemasukan', NULL),
(836, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-09-16 03:00:00', 'bukti_1766034047317.jpeg', 'Kebersihan', 'pemasukan', NULL),
(837, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-10-23 03:00:00', 'bukti_1766034047478.jpeg', 'Kebersihan', 'pemasukan', NULL),
(838, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-11-16 03:00:00', 'bukti_1766034047809.jpeg', 'Kebersihan', 'pemasukan', NULL),
(839, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-12-06 03:00:00', 'bukti_1766034047515.jpeg', 'Kebersihan', 'pemasukan', NULL),
(840, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-01-11 03:00:00', 'bukti_1766034047751.jpeg', 'Kebersihan', 'pemasukan', NULL),
(841, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-02-15 03:00:00', 'bukti_1766034047150.jpeg', 'Kebersihan', 'pemasukan', NULL),
(842, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-03-10 03:00:00', 'bukti_1766034047685.jpeg', 'Kebersihan', 'pemasukan', NULL),
(843, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-04-13 03:00:00', 'bukti_1766034047591.jpeg', 'Kebersihan', 'pemasukan', NULL),
(844, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-05-22 03:00:00', 'bukti_1766034047212.jpeg', 'Kebersihan', 'pemasukan', NULL),
(845, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-06-22 03:00:00', 'bukti_1766034047880.jpeg', 'Kebersihan', 'pemasukan', NULL),
(846, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-07-17 03:00:00', 'bukti_1766034047534.jpeg', 'Kebersihan', 'pemasukan', NULL),
(847, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-08-07 03:00:00', 'bukti_1766034047951.jpeg', 'Kebersihan', 'pemasukan', NULL),
(848, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2022-09-19 03:00:00', 'bukti_1766034047416.jpeg', 'Kebersihan', 'pemasukan', NULL),
(849, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-10-13 03:00:00', 'bukti_1766034047212.jpeg', 'Kebersihan', 'pemasukan', NULL),
(850, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-11-22 03:00:00', 'bukti_1766034047699.jpeg', 'Kebersihan', 'pemasukan', NULL),
(851, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-12-19 03:00:00', 'bukti_1766034047153.jpeg', 'Kebersihan', 'pemasukan', NULL),
(852, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2023-01-05 03:00:00', 'bukti_1766034047695.jpeg', 'Kebersihan', 'pemasukan', NULL),
(853, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-02-06 03:00:00', 'bukti_1766034047802.jpeg', 'Kebersihan', 'pemasukan', NULL),
(854, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-03-18 03:00:00', 'bukti_1766034047791.jpeg', 'Kebersihan', 'pemasukan', NULL),
(855, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-04-20 03:00:00', 'bukti_1766034047795.jpeg', 'Kebersihan', 'pemasukan', NULL),
(856, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-05-07 03:00:00', 'bukti_1766034047749.jpeg', 'Kebersihan', 'pemasukan', NULL),
(857, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-06-23 03:00:00', 'bukti_1766034047395.jpeg', 'Kebersihan', 'pemasukan', NULL),
(858, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-07-17 03:00:00', 'bukti_1766034047338.jpeg', 'Kebersihan', 'pemasukan', NULL),
(859, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-08-22 03:00:00', 'bukti_1766034047509.jpeg', 'Kebersihan', 'pemasukan', NULL),
(860, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-09-13 03:00:00', 'bukti_1766034047924.jpeg', 'Kebersihan', 'pemasukan', NULL),
(861, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-10-07 03:00:00', 'bukti_1766034047583.jpeg', 'Kebersihan', 'pemasukan', NULL),
(862, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-11-25 03:00:00', 'bukti_1766034047323.jpeg', 'Kebersihan', 'pemasukan', NULL),
(863, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-12-24 03:00:00', 'bukti_1766034047685.jpeg', 'Kebersihan', 'pemasukan', NULL),
(864, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-01-07 03:00:00', 'bukti_1766034047205.jpeg', 'Kebersihan', 'pemasukan', NULL),
(865, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-02-15 03:00:00', 'bukti_1766034047826.jpeg', 'Kebersihan', 'pemasukan', NULL),
(866, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-03-19 03:00:00', 'bukti_1766034047136.jpeg', 'Kebersihan', 'pemasukan', NULL),
(867, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-04-23 03:00:00', 'bukti_1766034047984.jpeg', 'Kebersihan', 'pemasukan', NULL),
(868, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-05-25 03:00:00', 'bukti_1766034047527.jpeg', 'Kebersihan', 'pemasukan', NULL),
(869, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-06-10 03:00:00', 'bukti_1766034047901.jpeg', 'Kebersihan', 'pemasukan', NULL),
(870, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-07-23 03:00:00', 'bukti_1766034047889.jpeg', 'Kebersihan', 'pemasukan', NULL),
(871, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-08-08 03:00:00', 'bukti_1766034047363.jpeg', 'Kebersihan', 'pemasukan', NULL),
(872, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2024-09-11 03:00:00', 'bukti_1766034047288.jpeg', 'Kebersihan', 'pemasukan', NULL),
(873, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-10-17 03:00:00', 'bukti_1766034047810.jpeg', 'Kebersihan', 'pemasukan', NULL),
(874, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-11-21 03:00:00', 'bukti_1766034047760.jpeg', 'Kebersihan', 'pemasukan', NULL),
(875, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2024-12-24 03:00:00', 'bukti_1766034047492.jpeg', 'Kebersihan', 'pemasukan', NULL),
(876, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-01-11 03:00:00', 'bukti_1766034047312.jpeg', 'Kebersihan', 'pemasukan', NULL),
(877, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-02-10 03:00:00', 'bukti_1766034047733.jpeg', 'Kebersihan', 'pemasukan', NULL),
(878, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-03-22 03:00:00', 'bukti_1766034047156.jpeg', 'Kebersihan', 'pemasukan', NULL),
(879, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-04-22 03:00:00', 'bukti_1766034047360.jpeg', 'Kebersihan', 'pemasukan', NULL),
(880, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-05-08 03:00:00', 'bukti_1766034047152.jpeg', 'Kebersihan', 'pemasukan', NULL),
(881, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2025-06-21 03:00:00', 'bukti_1766034047593.jpeg', 'Kebersihan', 'pemasukan', NULL),
(882, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-07-20 03:00:00', 'bukti_1766034047501.jpeg', 'Kebersihan', 'pemasukan', NULL),
(883, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-08-20 03:00:00', 'bukti_1766034047782.jpeg', 'Kebersihan', 'pemasukan', NULL),
(884, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-09-15 03:00:00', 'bukti_1766034047469.jpeg', 'Kebersihan', 'pemasukan', NULL),
(885, 36, '4342501043', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2025-10-23 03:00:00', 'bukti_1766034047944.jpeg', 'Kebersihan', 'pemasukan', NULL),
(886, 36, '4342501043', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-11-21 03:00:00', 'bukti_1766034047285.jpeg', 'Kebersihan', 'pemasukan', NULL),
(887, 37, '4342501043', '', '', 'qris', 'tahunan', 50000.00, 'lunas', '2019-08-19 03:00:00', 'bukti_1766034047667.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(888, 37, '4342501043', '', '', 'transfer', 'tahunan', 50000.00, 'belum lunas', '2020-08-19 03:00:00', 'bukti_1766034047769.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(889, 37, '4342501043', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2021-08-08 03:00:00', 'bukti_1766034047872.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(890, 37, '4342501043', '', '', 'qris', 'tahunan', 50000.00, 'lunas', '2022-08-21 03:00:00', 'bukti_1766034047201.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(891, 37, '4342501043', '', '', 'qris', 'tahunan', 50000.00, 'pending', '2023-08-15 03:00:00', 'bukti_1766034047698.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(892, 37, '4342501043', '', '', 'qris', 'tahunan', 50000.00, 'belum lunas', '2024-08-24 03:00:00', 'bukti_1766034047223.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(893, 37, '4342501043', '', '', 'transfer', 'tahunan', 50000.00, 'belum lunas', '2025-08-07 03:00:00', 'bukti_1766034047342.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(894, 38, '4342501043', '', '', 'qris', 'tahunan', 100000.00, 'belum lunas', '2019-01-23 03:00:00', 'bukti_1766034047993.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(895, 38, '4342501043', '', '', 'qris', 'tahunan', 100000.00, 'belum lunas', '2020-01-05 03:00:00', 'bukti_1766034047413.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(896, 38, '4342501043', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2021-01-12 03:00:00', 'bukti_1766034047277.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(897, 38, '4342501043', '', '', 'qris', 'tahunan', 100000.00, 'belum lunas', '2022-01-17 03:00:00', 'bukti_1766034047455.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(898, 38, '4342501043', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2023-01-22 03:00:00', 'bukti_1766034047659.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(899, 38, '4342501043', '', '', 'qris', 'tahunan', 100000.00, 'belum lunas', '2024-01-15 03:00:00', 'bukti_1766034047425.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(900, 38, '4342501043', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2025-01-16 03:00:00', 'bukti_1766034047829.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(901, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-01-22 03:00:00', 'bukti_1766034047629.jpeg', 'Keamanan', 'pemasukan', NULL),
(902, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-02-15 03:00:00', 'bukti_1766034047677.jpeg', 'Keamanan', 'pemasukan', NULL),
(903, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2019-03-25 03:00:00', 'bukti_1766034047380.jpeg', 'Keamanan', 'pemasukan', NULL),
(904, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-04-09 03:00:00', 'bukti_1766034047801.jpeg', 'Keamanan', 'pemasukan', NULL),
(905, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-05-14 03:00:00', 'bukti_1766034047702.jpeg', 'Keamanan', 'pemasukan', NULL),
(906, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-06-23 03:00:00', 'bukti_1766034047180.jpeg', 'Keamanan', 'pemasukan', NULL),
(907, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-07-06 03:00:00', 'bukti_1766034047663.jpeg', 'Keamanan', 'pemasukan', NULL),
(908, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2019-08-25 03:00:00', 'bukti_1766034047573.jpeg', 'Keamanan', 'pemasukan', NULL),
(909, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2019-09-15 03:00:00', 'bukti_1766034047994.jpeg', 'Keamanan', 'pemasukan', NULL),
(910, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2019-10-09 03:00:00', 'bukti_1766034047798.jpeg', 'Keamanan', 'pemasukan', NULL),
(911, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-11-19 03:00:00', 'bukti_1766034047887.jpeg', 'Keamanan', 'pemasukan', NULL),
(912, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2019-12-24 03:00:00', 'bukti_1766034047843.jpeg', 'Keamanan', 'pemasukan', NULL),
(913, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-01-13 03:00:00', 'bukti_1766034047933.jpeg', 'Keamanan', 'pemasukan', NULL),
(914, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-02-10 03:00:00', 'bukti_1766034047918.jpeg', 'Keamanan', 'pemasukan', NULL),
(915, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2020-03-25 03:00:00', 'bukti_1766034047846.jpeg', 'Keamanan', 'pemasukan', NULL),
(916, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-04-14 03:00:00', 'bukti_1766034047675.jpeg', 'Keamanan', 'pemasukan', NULL),
(917, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2020-05-20 03:00:00', 'bukti_1766034047487.jpeg', 'Keamanan', 'pemasukan', NULL),
(918, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2020-06-15 03:00:00', 'bukti_1766034047927.jpeg', 'Keamanan', 'pemasukan', NULL),
(919, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2020-07-22 03:00:00', 'bukti_1766034047215.jpeg', 'Keamanan', 'pemasukan', NULL),
(920, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-08-10 03:00:00', 'bukti_1766034047461.jpeg', 'Keamanan', 'pemasukan', NULL),
(921, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2020-09-24 03:00:00', 'bukti_1766034047215.jpeg', 'Keamanan', 'pemasukan', NULL),
(922, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-10-18 03:00:00', 'bukti_1766034047579.jpeg', 'Keamanan', 'pemasukan', NULL),
(923, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2020-11-13 03:00:00', 'bukti_1766034047589.jpeg', 'Keamanan', 'pemasukan', NULL),
(924, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2020-12-08 03:00:00', 'bukti_1766034047655.jpeg', 'Keamanan', 'pemasukan', NULL),
(925, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2021-01-14 03:00:00', 'bukti_1766034047799.jpeg', 'Keamanan', 'pemasukan', NULL),
(926, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-02-15 03:00:00', 'bukti_1766034047930.jpeg', 'Keamanan', 'pemasukan', NULL),
(927, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-03-23 03:00:00', 'bukti_1766034047624.jpeg', 'Keamanan', 'pemasukan', NULL),
(928, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-04-11 03:00:00', 'bukti_1766034047594.jpeg', 'Keamanan', 'pemasukan', NULL),
(929, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2021-05-21 03:00:00', 'bukti_1766034047681.jpeg', 'Keamanan', 'pemasukan', NULL),
(930, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-06-10 03:00:00', 'bukti_1766034047187.jpeg', 'Keamanan', 'pemasukan', NULL),
(931, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-07-15 03:00:00', 'bukti_1766034047560.jpeg', 'Keamanan', 'pemasukan', NULL),
(932, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-08-05 03:00:00', 'bukti_1766034047991.jpeg', 'Keamanan', 'pemasukan', NULL),
(933, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-09-22 03:00:00', 'bukti_1766034047401.jpeg', 'Keamanan', 'pemasukan', NULL),
(934, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2021-10-07 03:00:00', 'bukti_1766034047364.jpeg', 'Keamanan', 'pemasukan', NULL),
(935, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2021-11-16 03:00:00', 'bukti_1766034047834.jpeg', 'Keamanan', 'pemasukan', NULL),
(936, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2021-12-09 03:00:00', 'bukti_1766034047913.jpeg', 'Keamanan', 'pemasukan', NULL),
(937, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-01-20 03:00:00', 'bukti_1766034047890.jpeg', 'Keamanan', 'pemasukan', NULL),
(938, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-02-22 03:00:00', 'bukti_1766034047174.jpeg', 'Keamanan', 'pemasukan', NULL),
(939, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-03-15 03:00:00', 'bukti_1766034047281.jpeg', 'Keamanan', 'pemasukan', NULL),
(940, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-04-25 03:00:00', 'bukti_1766034047383.jpeg', 'Keamanan', 'pemasukan', NULL),
(941, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2022-05-16 03:00:00', 'bukti_1766034047387.jpeg', 'Keamanan', 'pemasukan', NULL),
(942, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2022-06-16 03:00:00', 'bukti_1766034047285.jpeg', 'Keamanan', 'pemasukan', NULL),
(943, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2022-07-15 03:00:00', 'bukti_1766034047741.jpeg', 'Keamanan', 'pemasukan', NULL),
(944, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2022-08-17 03:00:00', 'bukti_1766034047113.jpeg', 'Keamanan', 'pemasukan', NULL),
(945, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-09-21 03:00:00', 'bukti_1766034047592.jpeg', 'Keamanan', 'pemasukan', NULL),
(946, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-10-22 03:00:00', 'bukti_1766034047533.jpeg', 'Keamanan', 'pemasukan', NULL),
(947, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2022-11-14 03:00:00', 'bukti_1766034047154.jpeg', 'Keamanan', 'pemasukan', NULL),
(948, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2022-12-18 03:00:00', 'bukti_1766034047252.jpeg', 'Keamanan', 'pemasukan', NULL),
(949, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-01-17 03:00:00', 'bukti_1766034047572.jpeg', 'Keamanan', 'pemasukan', NULL);
INSERT INTO `catatan` (`id`, `id_iuran`, `nik`, `nama`, `alamat`, `metode`, `periode`, `jumlah`, `status`, `tanggal`, `bukti`, `nama_iuran`, `kategori`, `uraian`) VALUES
(950, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2023-02-10 03:00:00', 'bukti_1766034047219.jpeg', 'Keamanan', 'pemasukan', NULL),
(951, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-03-11 03:00:00', 'bukti_1766034047134.jpeg', 'Keamanan', 'pemasukan', NULL),
(952, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2023-04-05 03:00:00', 'bukti_1766034047575.jpeg', 'Keamanan', 'pemasukan', NULL),
(953, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2023-05-05 03:00:00', 'bukti_1766034047209.jpeg', 'Keamanan', 'pemasukan', NULL),
(954, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-06-08 03:00:00', 'bukti_1766034047510.jpeg', 'Keamanan', 'pemasukan', NULL),
(955, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-07-14 03:00:00', 'bukti_1766034047948.jpeg', 'Keamanan', 'pemasukan', NULL),
(956, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2023-08-09 03:00:00', 'bukti_1766034047485.jpeg', 'Keamanan', 'pemasukan', NULL),
(957, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-09-25 03:00:00', 'bukti_1766034047448.jpeg', 'Keamanan', 'pemasukan', NULL),
(958, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-10-22 03:00:00', 'bukti_1766034047323.jpeg', 'Keamanan', 'pemasukan', NULL),
(959, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2023-11-15 03:00:00', 'bukti_1766034047499.jpeg', 'Keamanan', 'pemasukan', NULL),
(960, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2023-12-21 03:00:00', 'bukti_1766034047835.jpeg', 'Keamanan', 'pemasukan', NULL),
(961, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-01-21 03:00:00', 'bukti_1766034047571.jpeg', 'Keamanan', 'pemasukan', NULL),
(962, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2024-02-10 03:00:00', 'bukti_1766034047464.jpeg', 'Keamanan', 'pemasukan', NULL),
(963, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-03-14 03:00:00', 'bukti_1766034047865.jpeg', 'Keamanan', 'pemasukan', NULL),
(964, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-04-21 03:00:00', 'bukti_1766034047607.jpeg', 'Keamanan', 'pemasukan', NULL),
(965, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-05-10 03:00:00', 'bukti_1766034047200.jpeg', 'Keamanan', 'pemasukan', NULL),
(966, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2024-06-25 03:00:00', 'bukti_1766034047750.jpeg', 'Keamanan', 'pemasukan', NULL),
(967, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-07-06 03:00:00', 'bukti_1766034047614.jpeg', 'Keamanan', 'pemasukan', NULL),
(968, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-08-13 03:00:00', 'bukti_1766034047410.jpeg', 'Keamanan', 'pemasukan', NULL),
(969, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2024-09-10 03:00:00', 'bukti_1766034047716.jpeg', 'Keamanan', 'pemasukan', NULL),
(970, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2024-10-08 03:00:00', 'bukti_1766034047585.jpeg', 'Keamanan', 'pemasukan', NULL),
(971, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'lunas', '2024-11-08 03:00:00', 'bukti_1766034047418.jpeg', 'Keamanan', 'pemasukan', NULL),
(972, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2024-12-09 03:00:00', 'bukti_1766034047980.jpeg', 'Keamanan', 'pemasukan', NULL),
(973, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-01-12 03:00:00', 'bukti_1766034047479.jpeg', 'Keamanan', 'pemasukan', NULL),
(974, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-02-13 03:00:00', 'bukti_1766034047319.jpeg', 'Keamanan', 'pemasukan', NULL),
(975, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-03-16 03:00:00', 'bukti_1766034047131.jpeg', 'Keamanan', 'pemasukan', NULL),
(976, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-04-15 03:00:00', 'bukti_1766034047361.jpeg', 'Keamanan', 'pemasukan', NULL),
(977, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'belum lunas', '2025-05-15 03:00:00', 'bukti_1766034047546.jpeg', 'Keamanan', 'pemasukan', NULL),
(978, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-06-19 03:00:00', 'bukti_1766034047182.jpeg', 'Keamanan', 'pemasukan', NULL),
(979, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-07-22 03:00:00', 'bukti_1766034047132.jpeg', 'Keamanan', 'pemasukan', NULL),
(980, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'pending', '2025-08-05 03:00:00', 'bukti_1766034047852.jpeg', 'Keamanan', 'pemasukan', NULL),
(981, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-09-14 03:00:00', 'bukti_1766034047427.jpeg', 'Keamanan', 'pemasukan', NULL),
(982, 35, '4342501036', '', '', 'qris', 'bulanan', 30000.00, 'belum lunas', '2025-10-21 03:00:00', 'bukti_1766034047338.jpeg', 'Keamanan', 'pemasukan', NULL),
(983, 35, '4342501036', '', '', 'transfer', 'bulanan', 30000.00, 'pending', '2025-11-08 03:00:00', 'bukti_1766034047698.jpeg', 'Keamanan', 'pemasukan', NULL),
(984, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-01-24 03:00:00', 'bukti_1766034047315.jpeg', 'Kebersihan', 'pemasukan', NULL),
(985, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-02-11 03:00:00', 'bukti_1766034047562.jpeg', 'Kebersihan', 'pemasukan', NULL),
(986, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2019-03-14 03:00:00', 'bukti_1766034047831.jpeg', 'Kebersihan', 'pemasukan', NULL),
(987, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2019-04-24 03:00:00', 'bukti_1766034047737.jpeg', 'Kebersihan', 'pemasukan', NULL),
(988, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-05-19 03:00:00', 'bukti_1766034047996.jpeg', 'Kebersihan', 'pemasukan', NULL),
(989, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-06-16 03:00:00', 'bukti_1766034047243.jpeg', 'Kebersihan', 'pemasukan', NULL),
(990, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-07-16 03:00:00', 'bukti_1766034047947.jpeg', 'Kebersihan', 'pemasukan', NULL),
(991, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2019-08-19 03:00:00', 'bukti_1766034047911.jpeg', 'Kebersihan', 'pemasukan', NULL),
(992, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2019-09-06 03:00:00', 'bukti_1766034047928.jpeg', 'Kebersihan', 'pemasukan', NULL),
(993, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2019-10-06 03:00:00', 'bukti_1766034047607.jpeg', 'Kebersihan', 'pemasukan', NULL),
(994, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2019-11-07 03:00:00', 'bukti_1766034047311.jpeg', 'Kebersihan', 'pemasukan', NULL),
(995, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2019-12-20 03:00:00', 'bukti_1766034047477.jpeg', 'Kebersihan', 'pemasukan', NULL),
(996, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-01-16 03:00:00', 'bukti_1766034047470.jpeg', 'Kebersihan', 'pemasukan', NULL),
(997, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-02-06 03:00:00', 'bukti_1766034047680.jpeg', 'Kebersihan', 'pemasukan', NULL),
(998, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-03-23 03:00:00', 'bukti_1766034047616.jpeg', 'Kebersihan', 'pemasukan', NULL),
(999, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-04-06 03:00:00', 'bukti_1766034047748.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1000, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-05-16 03:00:00', 'bukti_1766034047552.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1001, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2020-06-09 03:00:00', 'bukti_1766034047900.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1002, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-07-14 03:00:00', 'bukti_1766034047426.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1003, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2020-08-07 03:00:00', 'bukti_1766034047754.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1004, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2020-09-05 03:00:00', 'bukti_1766034047446.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1005, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2020-10-22 03:00:00', 'bukti_1766034047658.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1006, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2020-11-23 03:00:00', 'bukti_1766034047404.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1007, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2020-12-13 03:00:00', 'bukti_1766034047293.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1008, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-01-20 03:00:00', 'bukti_1766034047512.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1009, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-02-05 03:00:00', 'bukti_1766034047733.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1010, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-03-25 03:00:00', 'bukti_1766034047543.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1011, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-04-07 03:00:00', 'bukti_1766034047623.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1012, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-05-14 03:00:00', 'bukti_1766034047511.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1013, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2021-06-21 03:00:00', 'bukti_1766034047218.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1014, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-07-05 03:00:00', 'bukti_1766034047295.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1015, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2021-08-20 03:00:00', 'bukti_1766034047528.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1016, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2021-09-11 03:00:00', 'bukti_1766034047869.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1017, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2021-10-25 03:00:00', 'bukti_1766034047127.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1018, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2021-11-10 03:00:00', 'bukti_1766034047251.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1019, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2021-12-13 03:00:00', 'bukti_1766034047176.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1020, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-01-05 03:00:00', 'bukti_1766034047106.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1021, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-02-21 03:00:00', 'bukti_1766034047708.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1022, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-03-17 03:00:00', 'bukti_1766034047806.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1023, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-04-22 03:00:00', 'bukti_1766034047125.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1024, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2022-05-19 03:00:00', 'bukti_1766034047941.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1025, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-06-07 03:00:00', 'bukti_1766034047128.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1026, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-07-20 03:00:00', 'bukti_1766034047605.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1027, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2022-08-14 03:00:00', 'bukti_1766034047724.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1028, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-09-15 03:00:00', 'bukti_1766034047839.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1029, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2022-10-16 03:00:00', 'bukti_1766034047331.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1030, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2022-11-17 03:00:00', 'bukti_1766034047813.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1031, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2022-12-17 03:00:00', 'bukti_1766034047244.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1032, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-01-22 03:00:00', 'bukti_1766034047152.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1033, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-02-14 03:00:00', 'bukti_1766034047640.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1034, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-03-22 03:00:00', 'bukti_1766034047678.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1035, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-04-24 03:00:00', 'bukti_1766034047176.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1036, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-05-12 03:00:00', 'bukti_1766034047602.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1037, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2023-06-25 03:00:00', 'bukti_1766034047311.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1038, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-07-21 03:00:00', 'bukti_1766034047404.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1039, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-08-20 03:00:00', 'bukti_1766034047376.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1040, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2023-09-10 03:00:00', 'bukti_1766034047588.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1041, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2023-10-09 03:00:00', 'bukti_1766034047831.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1042, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2023-11-18 03:00:00', 'bukti_1766034047425.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1043, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2023-12-21 03:00:00', 'bukti_1766034047185.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1044, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2024-01-17 03:00:00', 'bukti_1766034047481.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1045, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-02-17 03:00:00', 'bukti_1766034047443.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1046, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-03-24 03:00:00', 'bukti_1766034047425.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1047, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-04-10 03:00:00', 'bukti_1766034047989.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1048, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-05-16 03:00:00', 'bukti_1766034047731.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1049, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-06-20 03:00:00', 'bukti_1766034047209.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1050, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2024-07-23 03:00:00', 'bukti_1766034047571.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1051, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-08-15 03:00:00', 'bukti_1766034047766.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1052, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'lunas', '2024-09-18 03:00:00', 'bukti_1766034047659.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1053, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2024-10-05 03:00:00', 'bukti_1766034047636.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1054, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-11-14 03:00:00', 'bukti_1766034047404.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1055, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'belum lunas', '2024-12-05 03:00:00', 'bukti_1766034047233.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1056, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-01-13 03:00:00', 'bukti_1766034047937.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1057, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-02-08 03:00:00', 'bukti_1766034047948.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1058, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-03-16 03:00:00', 'bukti_1766034047266.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1059, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-04-15 03:00:00', 'bukti_1766034047451.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1060, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-05-13 03:00:00', 'bukti_1766034047699.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1061, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'pending', '2025-06-16 03:00:00', 'bukti_1766034047181.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1062, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-07-12 03:00:00', 'bukti_1766034047249.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1063, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'pending', '2025-08-18 03:00:00', 'bukti_1766034047397.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1064, 36, '4342501036', '', '', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-09-07 03:00:00', 'bukti_1766034047168.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1065, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-10-21 03:00:00', 'bukti_1766034047208.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1066, 36, '4342501036', '', '', 'qris', 'bulanan', 20000.00, 'belum lunas', '2025-11-10 03:00:00', 'bukti_1766034047848.jpeg', 'Kebersihan', 'pemasukan', NULL),
(1067, 37, '4342501036', '', '', 'qris', 'tahunan', 50000.00, 'pending', '2019-08-09 03:00:00', 'bukti_1766034047720.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(1068, 37, '4342501036', '', '', 'qris', 'tahunan', 50000.00, 'lunas', '2020-08-17 03:00:00', 'bukti_1766034047362.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(1069, 37, '4342501036', '', '', 'transfer', 'tahunan', 50000.00, 'pending', '2021-08-24 03:00:00', 'bukti_1766034047738.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(1070, 37, '4342501036', '', '', 'transfer', 'tahunan', 50000.00, 'belum lunas', '2022-08-07 03:00:00', 'bukti_1766034047184.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(1071, 37, '4342501036', '', '', 'transfer', 'tahunan', 50000.00, 'belum lunas', '2023-08-17 03:00:00', 'bukti_1766034047601.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(1072, 37, '4342501036', '', '', 'qris', 'tahunan', 50000.00, 'pending', '2024-08-22 03:00:00', 'bukti_1766034047808.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(1073, 37, '4342501036', '', '', 'transfer', 'tahunan', 50000.00, 'pending', '2025-08-15 03:00:00', 'bukti_1766034047538.jpeg', 'Lomba 17 Agustus', 'pemasukan', NULL),
(1074, 38, '4342501036', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2019-01-06 03:00:00', 'bukti_1766034047150.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(1075, 38, '4342501036', '', '', 'qris', 'tahunan', 100000.00, 'lunas', '2020-01-08 03:00:00', 'bukti_1766034047276.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(1076, 38, '4342501036', '', '', 'transfer', 'tahunan', 100000.00, 'lunas', '2021-01-11 03:00:00', 'bukti_1766034047864.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(1077, 38, '4342501036', '', '', 'transfer', 'tahunan', 100000.00, 'pending', '2022-01-17 03:00:00', 'bukti_1766034047126.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(1078, 38, '4342501036', '', '', 'qris', 'tahunan', 100000.00, 'pending', '2023-01-16 03:00:00', 'bukti_1766034047283.jpeg', 'Pemeliharaan Fasilitas', 'pemasukan', NULL),
(1090, 35, '4342501044', 'Aysel Putra Ardiansyah', 'Batam', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-12-21 06:04:16', 'bukti_1766297024.jpeg', 'Keamanan', 'pemasukan', 'Aysel Putra Ardiansyah telah membayar iuran Keamanan'),
(1093, 35, '4342501039', 'Hani Arta Gultom', 'Batam', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-12-22 11:58:02', 'bukti_1766404662.jpeg', 'Keamanan', 'pemasukan', 'Hani Arta Gultom telah membayar iuran Keamanan'),
(1094, 35, '4342501036', 'Tara Reva Apriyani', 'Batam', 'transfer', 'bulanan', 30000.00, 'lunas', '2025-12-23 02:42:06', 'bukti_1766297228.jpeg', 'Keamanan', 'pemasukan', 'Tara Reva Apriyani telah membayar iuran Keamanan'),
(1095, 35, '4342501038', 'Maulana Hanif', 'Batam', 'qris', 'bulanan', 30000.00, 'lunas', '2025-12-23 03:00:23', 'bukti_1766458766.jpeg', 'Keamanan', 'pemasukan', 'Maulana Hanif telah membayar iuran Keamanan'),
(1097, 39, '4342501036', 'Tara Reva Apriyani', 'Batam', 'transfer', 'bulanan', 676767.00, 'lunas', '2025-12-28 04:15:51', 'bukti_1766895337.jpeg', 'Sumbangan Hani Sakit ', 'pemasukan', 'Tara Reva Apriyani telah membayar iuran Sumbangan Hani Sakit '),
(1098, 35, '4342501043', 'Shafwan Fuad', 'Batam', 'qris', 'bulanan', 30000.00, 'lunas', '2025-12-28 04:21:11', 'bukti_1766895654.jpeg', 'Keamanan', 'pemasukan', 'Shafwan Fuad telah membayar iuran Keamanan'),
(1100, NULL, NULL, 'Somat Ali Tukang Bin Rumputt', 'Taman Depan Gang Perumahan\r\n', 'transfer', 'sekali bayar', 80000.00, 'lunas', '2025-12-28 04:31:30', '1766896290_WhatsApp Image 2025-12-11 at 20.34.33.jpeg', 'Pangkas Taman', 'pengeluaran', 'Pengeluaran untuk pangkas tanaman di taman perumah..'),
(1101, 36, '4342501043', 'Shafwan Fuad', 'Batam', 'qris', 'bulanan', 20000.00, 'lunas', '2025-12-28 04:37:07', 'bukti_1766896608.jpeg', 'Kebersihan', 'pemasukan', 'Shafwan Fuad telah membayar iuran Kebersihan'),
(1102, 36, '4342501039', 'Hani Arta Gultom', 'Batam', 'qris', 'bulanan', 20000.00, 'lunas', '2025-12-28 04:39:45', '1766900076_WhatsApp Image 2025-12-11 at 20.35.10 (1).jpeg', 'Kebersihan', 'pemasukan', 'Hani Arta Gultom telah membayar iuran Kebersihan'),
(1103, 36, '4342501039', 'Hani Arta Gultom', 'Batam', 'transfer', 'bulanan', 20000.00, 'lunas', '2025-12-28 06:11:47', 'bukti_1766896769.jpeg', 'Kebersihan', 'pemasukan', 'Hani Arta Gultom telah membayar iuran Kebersihan'),
(1104, 36, '4342501043', 'Shafwan Fuad', 'Batam', 'qris', 'bulanan', 20000.00, 'lunas', '2025-12-28 06:11:47', 'bukti_1766896608.jpeg', 'Kebersihan', 'pemasukan', 'Shafwan Fuad telah membayar iuran Kebersihan'),
(1105, 35, '4342501040', 'Afif Hamzah Siregar', 'Batam', 'tunai', 'bulanan', 30000.00, 'lunas', '2025-12-28 06:30:00', 'bukti_1766903400_3586.jpeg', 'Keamanan', 'pemasukan', 'Afif Hamzah Siregar telah membayar iuran Keamanan'),
(1106, 36, '4342501040', 'Afif Hamzah Siregar', 'Batam', 'tunai', 'bulanan', 20000.00, 'lunas', '2025-12-28 06:30:23', 'bukti_1766903423_1116.jpeg', 'Kebersihan', 'pemasukan', 'Afif Hamzah Siregar telah membayar iuran Kebersihan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iuran_warga`
--

CREATE TABLE `iuran_warga` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `iuran_id` int(11) NOT NULL,
  `jenis_iuran` enum('rutin','tidak rutin') NOT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `status` enum('pending','lunas','belum lunas','ditolak') NOT NULL DEFAULT 'pending',
  `metode` varchar(50) DEFAULT NULL,
  `periode` enum('bulanan','tahunan','sekali bayar') NOT NULL,
  `nama_iuran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `iuran_warga`
--

INSERT INTO `iuran_warga` (`id`, `nik`, `nama`, `iuran_id`, `jenis_iuran`, `nominal`, `tanggal_bayar`, `bukti`, `status`, `metode`, `periode`, `nama_iuran`) VALUES
(206, '4342501040', 'Afif Hamzah Siregar', 35, 'rutin', 30000, '2025-12-28', 'bukti_1766903400_3586.jpeg', 'lunas', 'tunai', 'bulanan', 'Keamanan'),
(207, '12345', 'Alpinestar', 35, 'rutin', 30000, NULL, NULL, 'belum lunas', NULL, 'bulanan', 'Keamanan'),
(208, '4342501044', 'Aysel Putra Ardiansyah', 35, 'rutin', 30000, '2025-12-26', 'bukti_1766760294.jpeg', 'ditolak', 'transfer', 'bulanan', 'Keamanan'),
(209, '4342501039', 'Hani Arta Gultom', 35, 'rutin', 30000, '2025-12-22', 'bukti_1766404662.jpeg', 'lunas', 'transfer', 'bulanan', 'Keamanan'),
(210, '4342501038', 'Maulana Hanif', 35, 'rutin', 30000, '2025-12-23', 'bukti_1766458766.jpeg', 'lunas', 'qris', 'bulanan', 'Keamanan'),
(211, '4342501043', 'Shafwan Fuad', 35, 'rutin', 30000, '2025-12-28', 'bukti_1766895654.jpeg', 'lunas', 'qris', 'bulanan', 'Keamanan'),
(212, '4342501036', 'Tara Reva Apriyani', 35, 'rutin', 30000, '2025-12-21', 'bukti_1766297228.jpeg', 'lunas', 'transfer', 'bulanan', 'Keamanan'),
(213, '4342501040', 'Afif Hamzah Siregar', 36, 'rutin', 20000, '2025-12-28', 'bukti_1766903423_1116.jpeg', 'lunas', 'tunai', 'bulanan', 'Kebersihan'),
(214, '12345', 'Alpinestar', 36, 'rutin', 20000, NULL, NULL, 'belum lunas', NULL, 'bulanan', 'Kebersihan'),
(215, '4342501044', 'Aysel Putra Ardiansyah', 36, 'rutin', 20000, '2025-12-21', 'bukti_1766290467.jpeg', 'belum lunas', 'transfer', 'bulanan', 'Kebersihan'),
(216, '4342501039', 'Hani Arta Gultom', 36, 'rutin', 20000, '0000-00-00', 'bukti_1766896769.jpeg', 'lunas', 'transfer', 'bulanan', 'Kebersihan'),
(217, '4342501038', 'Maulana Hanif', 36, 'rutin', 20000, NULL, NULL, 'belum lunas', NULL, 'bulanan', 'Kebersihan'),
(218, '4342501043', 'Shafwan Fuad', 36, 'rutin', 20000, '0000-00-00', 'bukti_1766896608.jpeg', 'lunas', 'qris', 'bulanan', 'Kebersihan'),
(219, '4342501036', 'Tara Reva Apriyani', 36, 'rutin', 20000, '2025-12-26', 'bukti_1766738463.jpeg', 'ditolak', 'qris', 'bulanan', 'Kebersihan'),
(220, '4342501040', 'Afif Hamzah Siregar', 37, 'tidak rutin', 50000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Lomba 17 Agustus'),
(221, '12345', 'Alpinestar', 37, 'tidak rutin', 50000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Lomba 17 Agustus'),
(222, '4342501044', 'Aysel Putra Ardiansyah', 37, 'tidak rutin', 50000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Lomba 17 Agustus'),
(223, '4342501039', 'Hani Arta Gultom', 37, 'tidak rutin', 50000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Lomba 17 Agustus'),
(224, '4342501038', 'Maulana Hanif', 37, 'tidak rutin', 50000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Lomba 17 Agustus'),
(225, '4342501043', 'Shafwan Fuad', 37, 'tidak rutin', 50000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Lomba 17 Agustus'),
(226, '4342501036', 'Tara Reva Apriyani', 37, 'tidak rutin', 50000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Lomba 17 Agustus'),
(227, '4342501040', 'Afif Hamzah Siregar', 38, 'tidak rutin', 100000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Pemeliharaan Fasilitas'),
(228, '12345', 'Alpinestar', 38, 'tidak rutin', 100000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Pemeliharaan Fasilitas'),
(229, '4342501044', 'Aysel Putra Ardiansyah', 38, 'tidak rutin', 100000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Pemeliharaan Fasilitas'),
(230, '4342501039', 'Hani Arta Gultom', 38, 'tidak rutin', 100000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Pemeliharaan Fasilitas'),
(231, '4342501038', 'Maulana Hanif', 38, 'tidak rutin', 100000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Pemeliharaan Fasilitas'),
(232, '4342501043', 'Shafwan Fuad', 38, 'tidak rutin', 100000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Pemeliharaan Fasilitas'),
(233, '4342501036', 'Tara Reva Apriyani', 38, 'tidak rutin', 100000, NULL, NULL, 'belum lunas', NULL, 'tahunan', 'Pemeliharaan Fasilitas'),
(234, '4342501040', 'Afif Hamzah Siregar', 39, 'rutin', 676767, NULL, NULL, 'belum lunas', NULL, 'sekali bayar', 'Sumbangan Hani Sakit '),
(235, '12345', 'Alpinestar', 39, 'rutin', 676767, NULL, NULL, 'belum lunas', NULL, 'sekali bayar', 'Sumbangan Hani Sakit '),
(236, '4342501044', 'Aysel Putra Ardiansyah', 39, 'rutin', 676767, NULL, NULL, 'belum lunas', NULL, 'sekali bayar', 'Sumbangan Hani Sakit '),
(237, '4342501039', 'Hani Arta Gultom', 39, 'rutin', 676767, '2025-12-22', '', 'lunas', 'transfer', 'bulanan', 'Sumbangan Hani Sakit '),
(238, '4342501038', 'Maulana Hanif', 39, 'rutin', 676767, NULL, NULL, 'belum lunas', NULL, 'sekali bayar', 'Sumbangan Hani Sakit '),
(239, '4342501043', 'Shafwan Fuad', 39, 'rutin', 676767, NULL, NULL, 'belum lunas', NULL, 'sekali bayar', 'Sumbangan Hani Sakit '),
(240, '4342501036', 'Tara Reva Apriyani', 39, 'rutin', 676767, '2025-12-28', 'bukti_1766895337.jpeg', 'lunas', 'transfer', 'bulanan', 'Sumbangan Hani Sakit ');

--
-- Trigger `iuran_warga`
--
DELIMITER $$
CREATE TRIGGER `transaksi_after_insert` AFTER UPDATE ON `iuran_warga` FOR EACH ROW BEGIN
    IF NEW.status = 'lunas' THEN
        INSERT INTO catatan (
            id_iuran, nik, metode, periode, jumlah, status,
            tanggal, bukti, nama_iuran, kategori, nama, alamat, uraian
        )
        SELECT
            NEW.iuran_id,
            NEW.nik,
            NEW.metode,
            NEW.periode,
            NEW.nominal,
            NEW.status,
            NOW(),
            NEW.bukti,
            NEW.nama_iuran,
            'pemasukan',
            u.nama,
            u.alamat,
            CONCAT(
                u.nama, ' telah membayar iuran ',
                NEW.nama_iuran
            )
        FROM user_role u
        WHERE u.nik = NEW.nik;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_iuran`
--

CREATE TABLE `jenis_iuran` (
  `id` int(11) NOT NULL,
  `nama_iuran` varchar(100) NOT NULL,
  `nominal` decimal(12,2) NOT NULL,
  `jenis` enum('rutin','tidak rutin') NOT NULL,
  `periode` enum('mingguan','bulanan','tahunan','sekali bayar') NOT NULL DEFAULT 'bulanan',
  `tanggal_mulai` date NOT NULL,
  `tanggal_tenggat` date NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_iuran`
--

INSERT INTO `jenis_iuran` (`id`, `nama_iuran`, `nominal`, `jenis`, `periode`, `tanggal_mulai`, `tanggal_tenggat`, `status`, `tanggal_dibuat`) VALUES
(35, 'Keamanan', 30000.00, 'rutin', 'bulanan', '2025-12-05', '2025-12-25', 'aktif', '2025-12-17 17:00:00'),
(36, 'Kebersihan', 20000.00, 'rutin', 'bulanan', '2025-12-05', '2025-12-31', 'aktif', '2025-12-17 17:00:00'),
(37, 'Lomba 17 Agustus', 50000.00, 'tidak rutin', 'tahunan', '2025-08-10', '2025-12-15', 'aktif', '2025-12-17 17:00:00'),
(38, 'Pemeliharaan Fasilitas', 100000.00, 'tidak rutin', 'tahunan', '2025-01-01', '2025-01-25', 'aktif', '2025-12-17 17:00:00'),
(39, 'Sumbangan Hani Sakit ', 676767.00, 'rutin', 'bulanan', '2025-12-21', '2025-12-23', 'aktif', '2025-12-21 17:00:00');

--
-- Trigger `jenis_iuran`
--
DELIMITER $$
CREATE TRIGGER `delete_iuran_warga` AFTER DELETE ON `jenis_iuran` FOR EACH ROW BEGIN
    DELETE FROM iuran_warga	 -- Untuk Delete Jenis Iuran
    WHERE iuran_id = OLD.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_iuran_warga` AFTER INSERT ON `jenis_iuran` FOR EACH ROW BEGIN
    INSERT INTO iuran_warga (
        nik,
        nama,
        iuran_id,
        jenis_iuran,
        nominal,
        tanggal_bayar,
        bukti,
        status,
        metode,
        periode,
        nama_iuran
    )
    SELECT 
        u.nik,
        u.nama,
        NEW.id,             -- FK ke jenis_iuran
        NEW.jenis,          -- rutin / tidak rutin
        NEW.nominal,
        NULL,               -- tanggal_bayar default kosong
        NULL,               -- bukti default kosong
        'belum lunas',      -- default status
        NULL,               -- metode default kosong
        NEW.periode,        -- periode dari master iuran
        NEW.nama_iuran
    FROM user_role u;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_iuran_warga` AFTER UPDATE ON `jenis_iuran` FOR EACH ROW BEGIN
    -- Update semua tagihan warga yang terkait dengan jenis iuran ini
    UPDATE iuran_warga
    SET 
        jenis_iuran = NEW.jenis,       -- rutin / tidak rutin
        nominal     = NEW.nominal,
        periode     = NEW.periode,
        nama_iuran  = NEW.nama_iuran
    WHERE iuran_id = NEW.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id` int(11) NOT NULL,
  `bank_nama` varchar(100) DEFAULT NULL,
  `bank_pemilik` varchar(100) DEFAULT NULL,
  `bank_nomor` varchar(100) DEFAULT NULL,
  `qris_file` varchar(255) DEFAULT NULL,
  `nik` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id`, `bank_nama`, `bank_pemilik`, `bank_nomor`, `qris_file`, `nik`) VALUES
(5, 'Jago', 'Hani Arta Gultom', '505072745862', '1765967303_WhatsApp Image 2025-12-17 at 17.27.13.jpeg', '4342501039');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pesan` text NOT NULL,
  `nik` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `password` varchar(225) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `nomor` varchar(18) NOT NULL,
  `role` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`nik`, `nama`, `password`, `gender`, `alamat`, `nomor`, `role`) VALUES
('12345', 'Alpinestar', '$2y$10$MIk3ZJBBE5ffPVTL5YigjekgROSrALLaZ8/VPC1q8995YDUie5Z2W', 'Perempuan', 'scope car', '082212347890', 'warga'),
('4342501036', 'Tara Reva Apriyani', '$2a$12$NZQ27TRVxTQkCfcR.xTnAO4qJ/2czf4oAh0vuj0Vts9VKy2wfZWtW', 'Perempuan', 'Batam', '1234 5678 9012', 'sekretaris'),
('4342501038', 'Maulana Hanif', '$2a$12$LEZtuKJDbX4JA7XJDTbetOlUdNrT4mIJkt73tv5eJECehCjU5TiRa', 'Laki-laki', 'Batam', '1234 5678 9012', 'sekretaris'),
('4342501039', 'Hani Arta Gultom', '$2a$12$AgcnRb1SPGVEZfKjh9G8aupr.XWH9.Q7FkIo5F.X58avLQjxo5wy.', 'Perempuan', 'Batam', '1234 5678 9012', 'bendahara'),
('4342501040', 'Afif Hamzah Siregar', '$2y$10$lWQtgJPk47VJk0DCx1f5fuV9FlRhF..FOivlTRP43bOQqRGVdv4Ky', 'Laki-laki', 'Batam', '1234 5678 9012	', 'warga'),
('4342501043', 'Shafwan Fuad', '$2a$12$d7kheUvxtBBX3BHUWmoaqu/G1pAkUqOLe7qIOYFcCJDwr7XMLEzWm', 'Laki-laki', 'Batam', '1234 5678 9012', 'warga'),
('4342501044', 'Aysel Putra Ardiansyah', '$2y$10$lywA94Q5PVlmxHiM36Yd6ORWQcFRMhoB1cljczsMi5XGWWwPpVwoC', 'Laki-laki', 'Batam', '0812 7500 5699', 'ketua');

--
-- Trigger `user_role`
--
DELIMITER $$
CREATE TRIGGER `delete_tagihan_warga` AFTER DELETE ON `user_role` FOR EACH ROW BEGIN
    -- Hapus semua tagihan warga yang dihapus
    DELETE FROM iuran_warga
    WHERE nik = OLD.nik;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_tagihan_warga_baru` AFTER INSERT ON `user_role` FOR EACH ROW BEGIN
    -- Buat tagihan untuk semua jenis iuran yang sudah ada
    INSERT INTO iuran_warga (
        nik,
        nama,
        iuran_id,
        jenis_iuran,
        nominal,
        tanggal_bayar,
        bukti,
        status,
        metode,
        periode,
        nama_iuran
    )
    SELECT 
        NEW.nik,
        NEW.nama,
        j.id,              -- FK ke jenis_iuran
        j.jenis,           -- rutin / tidak rutin
        j.nominal,
        NULL,              -- tanggal_bayar default kosong
        NULL,              -- bukti default kosong
        'belum lunas',     -- default status
        NULL,              -- metode default kosong
        j.periode,         -- periode dari master iuran
        j.nama_iuran
    FROM jenis_iuran j;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_tagihan_data_warga` AFTER UPDATE ON `user_role` FOR EACH ROW BEGIN
    -- Update data warga di tabel iuran_warga saja
    UPDATE iuran_warga
    SET 
        nik   = NEW.nik,
        nama  = NEW.nama
    WHERE nik = OLD.nik;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `iuran_warga`
--
ALTER TABLE `iuran_warga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nik_iuran` (`nik`);

--
-- Indeks untuk tabel `jenis_iuran`
--
ALTER TABLE `jenis_iuran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_iuran` (`nama_iuran`);

--
-- Indeks untuk tabel `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`),
  ADD KEY `nik_3` (`nik`);
ALTER TABLE `pesan` ADD FULLTEXT KEY `nik_2` (`nik`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1107;

--
-- AUTO_INCREMENT untuk tabel `iuran_warga`
--
ALTER TABLE `iuran_warga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT untuk tabel `jenis_iuran`
--
ALTER TABLE `jenis_iuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `iuran_warga`
--
ALTER TABLE `iuran_warga`
  ADD CONSTRAINT `fk_nik_iuran` FOREIGN KEY (`nik`) REFERENCES `user_role` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD CONSTRAINT `metode_pembayaran_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `user_role` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `user_role` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `generate_tagihan_iuran` ON SCHEDULE EVERY 1 DAY STARTS '2025-12-10 18:29:45' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    INSERT INTO iuran_warga (
        nik, 
        nama, 
        iuran_id, 
        jenis_iuran, 
        nominal, 
        status,
        metode, 
        periode, 
        nama_iuran,
        tanggal_mulai,
        tanggal_tenggat
    )
    SELECT 
        u.nik,
        u.nama,
        j.id_iuran,
        j.nama_iuran,
        j.nominal,
        'belum lunas',
        j.metode,
        j.periode,             -- Bulanan / Tahunan
        j.nama_iuran,
        j.tanggal_mulai,
        j.tanggal_tenggat
    FROM user_role u
    JOIN jenis_iuran j ON j.is_active = 1
    WHERE (
        -- untuk iuran bulanan: reset tiap tanggal_mulai bulan berjalan
        (j.periode = 'bulanan' AND DAY(CURDATE()) = DAY(j.tanggal_mulai))
        -- untuk iuran tahunan: reset tiap tanggal_mulai tahun berjalan
        OR
        (j.periode = 'tahunan' AND MONTH(CURDATE()) = MONTH(j.tanggal_mulai) 
                               AND DAY(CURDATE()) = DAY(j.tanggal_mulai))
    );
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
