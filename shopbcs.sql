-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 04, 2022 lúc 06:49 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopbcs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangqc`
--

CREATE TABLE `bangqc` (
  `qc_ma` int(10) UNSIGNED NOT NULL,
  `qc_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qc_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `combo`
--

CREATE TABLE `combo` (
  `id` int(11) NOT NULL,
  `idspgoc` int(10) UNSIGNED NOT NULL,
  `idspphu` int(10) UNSIGNED NOT NULL,
  `dv_ma` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `combo`
--

INSERT INTO `combo` (`id`, `idspgoc`, `idspphu`, `dv_ma`) VALUES
(1, 1, 2, 4),
(2, 1, 6, 6),
(3, 1, 19, 2),
(4, 1, 27, 6),
(5, 2, 13, 3),
(6, 2, 20, 4),
(7, 2, 27, 6),
(8, 2, 3, 6),
(9, 3, 4, 2),
(10, 3, 14, 4),
(11, 3, 21, 6),
(12, 3, 29, 4),
(13, 4, 5, 4),
(14, 4, 15, 6),
(15, 4, 22, 2),
(16, 4, 30, 6),
(17, 5, 6, 6),
(18, 5, 16, 2),
(19, 5, 23, 4),
(20, 5, 31, 2),
(21, 7, 7, 2),
(22, 7, 17, 4),
(23, 7, 18, 6),
(24, 7, 32, 4),
(25, 8, 1, 2),
(26, 8, 12, 6),
(27, 9, 19, 2),
(28, 9, 27, 6),
(29, 10, 2, 4),
(30, 10, 13, 2),
(31, 10, 20, 4),
(32, 10, 28, 2),
(33, 11, 3, 6),
(34, 11, 14, 4),
(35, 11, 21, 6),
(36, 11, 29, 4),
(37, 12, 4, 2),
(38, 12, 15, 6),
(39, 12, 23, 4),
(40, 12, 30, 6),
(41, 13, 5, 4),
(42, 9, 31, 2),
(43, 9, 7, 2),
(44, 13, 18, 6),
(45, 13, 24, 6),
(46, 13, 32, 4),
(47, 14, 8, 4),
(48, 14, 12, 6),
(49, 14, 19, 2),
(50, 14, 27, 6),
(51, 15, 2, 4),
(52, 15, 13, 2),
(53, 15, 21, 6),
(54, 15, 28, 2),
(55, 16, 3, 6),
(56, 16, 13, 2),
(57, 16, 20, 4),
(58, 16, 29, 4),
(59, 17, 5, 4),
(60, 17, 14, 4),
(61, 17, 23, 4),
(62, 17, 30, 6),
(63, 18, 6, 6),
(64, 18, 15, 6),
(65, 18, 24, 6),
(66, 18, 31, 2),
(67, 19, 7, 2),
(68, 19, 16, 2),
(69, 20, 9, 6),
(70, 20, 18, 6),
(71, 20, 24, 6),
(72, 20, 32, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadon`
--

CREATE TABLE `cthoadon` (
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `hd_ma` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `giaban` double NOT NULL,
  `thanhtien` double NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cthoadon`
--

INSERT INTO `cthoadon` (`sp_ma`, `hd_ma`, `soluong`, `giaban`, `thanhtien`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 300000, 600000, '2022-06-27 08:01:38', '2022-06-27 08:01:38'),
(1, 5, 2, 300000, 600000, '2022-06-27 08:03:07', '2022-06-27 08:03:07'),
(2, 4, 2, 310000, 620000, '2022-06-27 08:01:38', '2022-06-27 08:01:38'),
(2, 6, 2, 310000, 620000, '2022-06-27 08:07:59', '2022-06-27 08:07:59'),
(3, 5, 2, 260000, 520000, '2022-06-27 08:03:07', '2022-06-27 08:03:07'),
(3, 6, 2, 260000, 520000, '2022-06-27 08:07:59', '2022-06-27 08:07:59'),
(3, 7, 2, 260000, 520000, '2022-06-27 08:09:08', '2022-06-27 08:09:08'),
(4, 7, 2, 250000, 500000, '2022-06-27 08:09:08', '2022-06-27 08:09:08'),
(13, 4, 2, 234000, 468000, NULL, NULL),
(13, 5, 3, 234000, 702000, NULL, NULL),
(14, 2, 2, 161000, 322000, NULL, NULL),
(14, 3, 3, 161000, 483000, NULL, NULL),
(15, 6, 2, 204000, 408000, '2022-06-26 18:03:00', '2022-06-26 18:03:00'),
(15, 7, 1, 204000, 204000, '2022-06-26 18:03:00', '2022-06-26 18:03:00'),
(18, 8, 1, 88000, 88000, '2022-06-26 18:18:22', '2022-06-26 18:18:22'),
(18, 9, 2, 88000, 176000, '2022-06-26 18:18:22', '2022-06-26 18:18:22'),
(29, 10, 1, 87000, 87000, '2022-06-26 18:23:26', '2022-06-26 18:23:26'),
(29, 11, 2, 87000, 174000, '2022-06-26 18:23:26', '2022-06-26 18:23:26'),
(33, 12, 1, 149600, 149600, '2022-06-26 19:02:27', '2022-06-26 19:02:27'),
(33, 13, 2, 149200, 299000, '2022-06-26 19:02:27', '2022-06-26 19:02:27'),
(34, 14, 2, 150000, 300000, '2022-06-26 19:07:26', '2022-06-26 19:07:26'),
(34, 15, 3, 150000, 450000, '2022-06-26 19:07:26', '2022-06-26 19:07:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `pn_ma` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `gianhap` double(8,2) NOT NULL,
  `thanhtien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `kh_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `dm_ma` int(10) UNSIGNED NOT NULL,
  `dm_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dm_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucsp`
--

INSERT INTO `danhmucsp` (`dm_ma`, `dm_ten`, `dm_tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Sản Phẩm Khuyến Mãi', '1', '2022-06-22 08:14:16', '2022-06-22 08:14:16'),
(2, 'Sản Phẩm Mới', '1', '2022-06-30 12:21:07', '2022-06-30 12:21:07'),
(3, 'Bao Cao Su', '1', NULL, NULL),
(4, 'Gel Bôi Trơn', '1', NULL, NULL),
(5, 'Hỗ Trợ Kéo Dài Thời Gian', '1', NULL, NULL),
(6, 'Tăng Cường Sinh Lý', '1', NULL, NULL),
(7, 'Gia Tăng Khoái Cảm', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi`
--

CREATE TABLE `diachi` (
  `dc_ma` int(10) UNSIGNED NOT NULL,
  `dc_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dc_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `kh_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvi`
--

CREATE TABLE `donvi` (
  `dv_ma` int(10) UNSIGNED NOT NULL,
  `dv_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dv_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvi`
--

INSERT INTO `donvi` (`dv_ma`, `dv_ten`, `dv_tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Không', '1', '2022-07-02 06:52:39', '2022-07-02 06:52:39'),
(2, 'Bộ 1 hộp - 5 cái', '1', '2022-06-24 06:13:54', '2022-06-24 06:13:54'),
(3, 'Bộ 2 hộp - 10 cái', '1', '2022-06-24 06:14:05', '2022-06-24 06:14:05'),
(4, 'Bộ 1 hộp - 10 cái', '1', '2022-06-24 06:14:44', '2022-06-24 06:14:44'),
(5, 'Bộ 2 hộp - 20 cái', '1', '2022-06-24 06:14:58', '2022-06-24 06:14:58'),
(6, 'Bộ 1 hộp - 12 cái', '1', '2022-06-24 06:16:31', '2022-06-24 06:16:31'),
(7, 'Bộ 2 hộp - 24 cái', '1', '2022-06-24 06:17:00', '2022-06-24 06:17:00'),
(8, 'Bộ 1 hộp - 0.5gr', '1', '2022-07-02 06:59:36', '2022-07-02 06:59:36'),
(9, 'Bộ 2 hộp - 1gr', '1', '2022-07-02 06:59:36', '2022-07-02 06:59:36'),
(10, 'Bộ 1 chai - 100ml', '1', '2022-07-02 12:25:01', '2022-07-02 12:25:01'),
(11, 'Bộ 2 chai - 200ml', '1', '2022-07-02 12:25:01', '2022-07-02 12:25:01'),
(12, 'Bộ 1 chai - 300ml', '1', '2022-07-02 12:25:26', '2022-07-02 12:25:26'),
(13, 'Bộ 2 chai - 600ml', '1', '2022-07-02 12:25:26', '2022-07-02 12:25:26'),
(14, 'Bộ 1 chai - 60ml', '1', '2022-07-02 12:26:52', '2022-07-02 12:26:52'),
(15, 'Bộ 2 chai - 120ml', '1', '2022-07-02 12:26:52', '2022-07-02 12:26:52'),
(16, 'Bộ 1 chai - 50ml', '1', '2022-07-02 12:28:39', '2022-07-02 12:28:39'),
(17, 'Bộ 2 chai - 100ml', '1', '2022-07-02 12:28:39', '2022-07-02 12:28:39'),
(18, 'Bộ 1 hộp - 4 viên', '1', '2022-07-02 13:20:12', '2022-07-02 13:20:12'),
(19, 'Bộ 2 hộp - 8 viên', '1', '2022-07-02 13:20:12', '2022-07-02 13:20:12'),
(20, 'Bộ 1 hộp - 4 cái', '1', '2022-07-02 13:52:55', '2022-07-02 13:52:55'),
(21, 'Bộ 2 hộp - 8 cái', '1', '2022-07-02 13:52:55', '2022-07-02 13:52:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaban`
--

CREATE TABLE `giaban` (
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `dv_ma` int(10) UNSIGNED NOT NULL,
  `giaban` float NOT NULL,
  `giamgia` float DEFAULT NULL,
  `tinhtrang` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaban`
--

INSERT INTO `giaban` (`sp_ma`, `dv_ma`, `giaban`, `giamgia`, `tinhtrang`) VALUES
(1, 2, 300000, 10, '1'),
(1, 3, 650000, 16, '1'),
(2, 4, 310000, 6, '1'),
(2, 5, 620000, 12, '1'),
(3, 6, 260000, 10, '1'),
(3, 7, 520000, 20, '1'),
(4, 2, 250000, 8, '1'),
(4, 3, 500000, 16, '1'),
(5, 4, 350000, 10, '1'),
(5, 5, 700000, 20, '1'),
(6, 6, 360000, 6, '1'),
(6, 7, 720000, 12, '1'),
(7, 2, 210000, 10, '1'),
(7, 3, 420000, 20, '1'),
(8, 4, 150000, 6, '1'),
(8, 5, 300000, 12, '1'),
(9, 6, 140000, 11, '1'),
(9, 7, 280000, 22, '1'),
(10, 2, 120000, 6, '1'),
(10, 3, 240000, 12, '1'),
(11, 4, 160000, 10, '1'),
(11, 5, 320000, 20, '1'),
(12, 6, 220000, 12, '1'),
(12, 7, 440000, 24, '1'),
(13, 2, 260000, 13, '1'),
(13, 3, 520000, 26, '1'),
(14, 4, 230000, 8, '1'),
(14, 5, 460000, 16, '1'),
(15, 6, 240000, 10, '1'),
(15, 7, 480000, 20, '1'),
(16, 2, 300000, 14, '1'),
(16, 3, 600000, 28, '1'),
(17, 4, 270000, 15, '1'),
(17, 5, 540000, 30, '1'),
(18, 6, 110000, 6, '1'),
(18, 7, 220000, 12, '1'),
(19, 2, 190000, 10, '1'),
(19, 3, 390000, 20, '1'),
(20, 4, 150000, 15, '1'),
(20, 5, 300000, 30, '1'),
(21, 6, 160000, 6, '1'),
(21, 7, 320000, 12, '1'),
(22, 2, 100000, 6, '1'),
(22, 3, 200000, 12, '1'),
(23, 4, 310000, 5, '1'),
(23, 5, 620000, 10, '1'),
(24, 6, 230000, 10, '1'),
(24, 7, 460000, 20, '1'),
(25, 2, 220000, 8, '1'),
(25, 3, 440000, 16, '1'),
(26, 4, 310000, 11, '1'),
(26, 5, 620000, 22, '1'),
(27, 6, 200000, 8, '1'),
(27, 7, 400000, 16, '1'),
(28, 2, 210000, 6, '1'),
(28, 3, 420000, 12, '1'),
(29, 4, 100000, 6, '1'),
(29, 5, 200000, 12, '1'),
(30, 6, 140000, 8, '1'),
(30, 7, 280000, 16, '1'),
(31, 2, 150000, 3, '1'),
(31, 3, 300000, 6, '1'),
(32, 4, 160000, 10, '1'),
(32, 5, 320000, 20, '1'),
(33, 6, 170000, 9, '1'),
(33, 7, 340000, 18, '1'),
(34, 2, 200000, 10, '1'),
(34, 3, 400000, 20, '1'),
(35, 4, 150000, 7, '1'),
(35, 5, 300000, 14, '1'),
(36, 6, 110000, 10, '1'),
(36, 7, 220000, 20, '1'),
(37, 2, 210000, 7, '1'),
(37, 3, 420000, 14, '1'),
(38, 4, 160000, 10, '1'),
(38, 5, 320000, 20, '1'),
(39, 6, 260000, 3, '1'),
(39, 7, 420000, 6, '1'),
(40, 2, 310000, 11, '1'),
(40, 3, 620000, 22, '1'),
(41, 4, 260000, 13, '1'),
(41, 5, 520000, 26, '1'),
(42, 6, 170000, 5, '1'),
(42, 7, 340000, 10, '1'),
(43, 2, 210000, 10, '1'),
(43, 3, 420000, 20, '1'),
(44, 4, 300000, 10, '1'),
(44, 5, 600000, 20, '1'),
(45, 6, 100000, 5, '1'),
(45, 7, 200000, 10, '1'),
(46, 2, 160000, 8, '1'),
(46, 3, 320000, 16, '1'),
(47, 4, 300000, 6, '1'),
(47, 5, 600000, 12, '1'),
(48, 6, 300000, 3, '1'),
(48, 7, 600000, 6, '1'),
(49, 2, 300000, 9, '1'),
(49, 3, 600000, 18, '1'),
(50, 4, 200000, 6, '1'),
(50, 5, 400000, 12, '1'),
(51, 6, 250000, 8, '1'),
(51, 7, 500000, 16, '1'),
(52, 2, 290000, 5, '1'),
(52, 3, 380000, 10, '1'),
(53, 4, 260000, 6, '1'),
(53, 5, 520000, 12, '1'),
(54, 6, 290000, 11, '1'),
(54, 7, 480000, 22, '1'),
(55, 2, 190000, 13, '1'),
(55, 3, 380000, 26, '1'),
(56, 4, 180000, 10, '1'),
(56, 5, 380000, 20, '1'),
(57, 6, 160000, 12, '1'),
(57, 7, 320000, 24, '1'),
(58, 1, 0, 0, '1'),
(59, 1, 650000, 13, '1'),
(60, 8, 160000, 13, '1'),
(60, 9, 307000, 20, '1'),
(61, 1, 75000, 13, '1'),
(62, 18, 220000, 13, '1'),
(62, 19, 422000, 26, '1'),
(63, 4, 160000, 16, '1'),
(63, 5, 402000, 20, '1'),
(64, 10, 240000, 10, '1'),
(64, 11, 466000, 20, '1'),
(65, 10, 260000, 15, '1'),
(65, 11, 466000, 20, '1'),
(66, 10, 240000, 10, '1'),
(66, 11, 460000, 25, '1'),
(67, 4, 220000, 13, '1'),
(67, 5, 420000, 20, '1'),
(68, 20, 170000, 10, '1'),
(68, 21, 325000, 20, '1'),
(69, 4, 160000, 10, '1'),
(69, 5, 307000, 20, '1'),
(70, 16, 210000, 16, '1'),
(70, 17, 403000, 20, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhqc`
--

CREATE TABLE `hinhqc` (
  `hqc_ma` int(10) UNSIGNED NOT NULL,
  `hqc_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hqc_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `qc_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhsp`
--

CREATE TABLE `hinhsp` (
  `h_ma` int(10) UNSIGNED NOT NULL,
  `h_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `hd_ma` int(10) UNSIGNED NOT NULL,
  `hd_ngaykt` datetime NOT NULL,
  `hd_ngaytt` datetime DEFAULT NULL,
  `hd_tongtien` double NOT NULL,
  `hd_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hd_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kh_ma` int(10) UNSIGNED NOT NULL,
  `nv_ma` int(10) UNSIGNED NOT NULL,
  `tt_ma` int(10) UNSIGNED NOT NULL,
  `vc_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `voucher_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`hd_ma`, `hd_ngaykt`, `hd_ngaytt`, `hd_tongtien`, `hd_diachi`, `hd_tinhtrang`, `kh_ma`, `nv_ma`, `tt_ma`, `vc_ma`, `created_at`, `updated_at`, `voucher_id`) VALUES
(2, '2022-06-22 17:35:23', '2022-06-22 17:35:23', 322000, 'Hau Giang', '1', 2, 1, 1, 3, NULL, NULL, 1),
(3, '2022-06-25 11:41:45', '2022-06-25 11:41:45', 483000, 'can tho', '1', 1, 1, 1, 2, NULL, NULL, NULL),
(4, '2022-06-27 00:48:42', '2022-06-27 00:48:42', 1688000, 'Vị Thanh', '1', 1, 1, 2, 3, '2022-06-26 17:48:42', '2022-06-26 17:48:42', NULL),
(5, '2022-06-26 19:48:41', '2022-06-26 19:48:41', 1822000, 'An Giang', '1', 2, 4, 1, 4, '2022-06-26 17:48:42', '2022-06-26 17:48:42', NULL),
(6, '2022-06-26 19:52:04', '2022-06-26 19:52:04', 1548000, 'Bến Tre', '1', 3, 4, 1, 2, '2022-06-26 17:52:04', '2022-06-26 17:52:04', NULL),
(7, '2022-06-26 19:52:04', '2022-06-26 19:52:04', 1224000, 'Tiền Giang', '1', 2, 5, 3, 5, '2022-06-26 17:52:04', '2022-06-26 17:52:04', NULL),
(8, '2022-06-26 20:11:05', '2022-06-26 20:11:05', 88000, 'Đồng Tháp', '1', 1, 1, 1, 2, '2022-06-26 18:14:17', '2022-06-26 18:14:17', NULL),
(9, '2022-06-26 20:11:06', '2022-06-26 20:11:06', 176000, 'Bình Thuận', '1', 1, 4, 2, 3, '2022-06-26 18:14:17', '2022-06-26 18:14:17', NULL),
(10, '2022-06-26 20:19:31', '2022-06-26 20:19:31', 87000, 'Cà Mau', '1', 2, 1, 2, 3, '2022-06-26 18:21:48', '2022-06-26 18:21:48', NULL),
(11, '2022-06-26 20:19:31', '2022-06-26 20:19:31', 174000, 'Kiên Giang', '1', 2, 4, 3, 4, '2022-06-26 18:21:48', '2022-06-26 18:21:48', NULL),
(12, '2022-06-26 20:23:32', '2022-06-26 20:23:32', 149200, 'Hà Nội', '1', 3, 5, 3, 4, '2022-06-26 18:25:51', '2022-06-26 18:25:51', NULL),
(13, '2022-06-26 20:23:32', '2022-06-26 20:23:32', 299000, 'TP.HCM', '1', 2, 5, 4, 8, '2022-06-26 18:25:51', '2022-06-26 18:25:51', NULL),
(14, '2022-06-26 21:03:27', '2022-06-26 21:03:27', 300000, 'Đà Nẵng', '1', 2, 5, 3, 8, '2022-06-26 19:04:50', '2022-06-26 19:04:50', NULL),
(15, '2022-06-26 21:03:27', '2022-06-26 21:03:27', 450000, 'Đà Lạt', '1', 2, 1, 2, 7, '2022-06-26 19:04:50', '2022-06-26 19:04:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_ma` int(10) UNSIGNED NOT NULL,
  `ten` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'Nam',
  `ngaysinh` date DEFAULT NULL,
  `sdt` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kichhoat` tinyint(1) NOT NULL DEFAULT 0,
  `lienketkichhoat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhacungcap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'google',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`kh_ma`, `ten`, `gioitinh`, `ngaysinh`, `sdt`, `email`, `hinh`, `password`, `remember_token`, `kichhoat`, `lienketkichhoat`, `nhacungcap`, `google_id`, `facebook_id`, `tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Khachhang 1', 'nam', '2022-06-17', NULL, 'khachhang1@allarell.dev', NULL, '$2y$10$YRQrRKuv1jIYoY/vPSJKU.iccilFZUi4vrMJXWbayFuyPLEt7jGgK', 'xCOSaNtQAkLf33EHBPq1FZEh1Hcuxl2sx33htEHWUFCiqPcMG2FSknhIzupT', 1, NULL, 'google', NULL, NULL, '1', '2022-06-16 19:47:05', '2022-06-19 12:53:56'),
(2, 'Khachhang 2', 'nam', '2022-06-17', NULL, 'khachhang2@allarell.dev', NULL, '$2y$10$OKBNpds7nnn3d5lfCXoHNu1vwD/D0jsyYphfdp39hFkcnQpk/VVsK', NULL, 1, NULL, 'google', NULL, NULL, '1', '2022-06-16 19:47:05', '2022-06-20 12:09:34'),
(3, 'Khachhang 3', 'nam', '2022-06-17', '0326250990', 'khachhang3@allarell.dev', NULL, '$2y$10$Jiw4DLhwTw0JJ52TkybI1ORbgY2jI5/RHEBsBZ50VAHv6kznxGYz6', '8peTVl3w9Zeh7T9QIa9VmHsLqa4ybGLHL2ebeh1JD025PDq2OPXSbrYSHjJ0', 1, NULL, 'google', NULL, NULL, '1', '2022-06-16 19:47:05', '2022-06-20 19:30:38'),
(4, 'vinh', 'Nam', '2022-06-08', '0123456794', 'vinhb1809208@student.ctu.edu.vn', NULL, '$2y$10$g9XETufArzXfC2kC2ivcEeuJ6dpXr8vTKdCp3mBHKxI27cN/DtL2K', 'nYjmfjqc4xVxDevxYSOyFTV7dkX49dVVcAkOJbvImLpt5IIJTUhFuj77H6s0', 1, NULL, 'google', '106316657335047579306', '1039139257017850', '1', '2022-06-20 14:13:00', '2022-06-20 19:35:18'),
(5, 'cao vinh', 'Nam', '2022-06-21', NULL, 'caovanvinh111@gmail.com', NULL, '$2y$10$A1qCVEDzuXOGq3DjwvRDwekQX2A/9HeBYh/P9JHzSe5YV4BRoYAta', 'Tkck1rA6IWZPSOWhsVKKsSEYtwMHE6d8ZHi13PjwRKuQiFJD99JtyXnNpTAi', 1, NULL, 'google', '115929162873516487174', NULL, '1', '2022-06-20 20:19:59', '2022-06-20 20:19:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `km_ma` int(10) UNSIGNED NOT NULL,
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `km_ngaybd` datetime NOT NULL,
  `km_ngaykt` datetime NOT NULL,
  `km_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`km_ma`, `sp_ma`, `km_ngaybd`, `km_ngaykt`, `km_tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-02 00:00:00', '2022-07-31 00:00:00', '1', NULL, NULL),
(2, 2, '2022-07-02 00:00:00', '2022-07-31 00:00:00', '1', '2022-07-02 14:31:29', '2022-07-02 14:31:29'),
(3, 3, '2022-07-02 16:30:27', '2022-07-31 00:00:00', '1', '2022-07-02 14:31:29', '2022-07-02 14:31:29'),
(4, 4, '2022-07-02 16:31:29', '2022-07-31 21:31:30', '1', '2022-07-02 14:32:04', '2022-07-02 14:32:04'),
(5, 5, '2022-07-02 16:31:29', '2022-07-31 21:31:30', '1', '2022-07-02 14:32:04', '2022-07-02 14:32:04'),
(6, 6, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(7, 7, '2022-07-02 16:32:04', '2022-07-31 21:32:05', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(8, 8, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(9, 9, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(10, 10, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(11, 11, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(12, 12, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(13, 13, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(14, 14, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(15, 15, '2022-07-02 16:32:04', '2022-07-31 00:00:00', '1', '2022-07-02 14:34:51', '2022-07-02 14:34:51'),
(16, 16, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(17, 17, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(18, 18, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(19, 19, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(20, 20, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(21, 21, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(22, 22, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(23, 23, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(24, 24, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(25, 25, '2022-07-02 16:34:52', '2022-07-31 00:00:00', '1', '2022-07-02 14:36:37', '2022-07-02 14:36:37'),
(26, 26, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(27, 27, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(28, 28, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(29, 29, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(30, 30, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(31, 31, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(32, 32, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(33, 33, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(34, 34, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(35, 35, '2022-07-02 16:36:37', '2022-07-31 00:00:00', '1', '2022-07-02 14:39:15', '2022-07-02 14:39:15'),
(36, 36, '2022-07-02 16:39:15', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(37, 37, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(38, 38, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(39, 39, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(40, 40, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(41, 41, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(42, 42, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(43, 43, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(44, 44, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(45, 45, '2022-07-02 16:39:16', '2022-07-31 00:00:00', '1', '2022-07-02 14:40:49', '2022-07-02 14:40:49'),
(46, 46, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(48, 47, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(49, 48, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(50, 49, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(51, 50, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(52, 51, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(53, 52, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(54, 53, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(55, 54, '2022-07-02 16:40:49', '2022-07-31 00:00:00', '1', '2022-07-02 14:42:19', '2022-07-02 14:42:19'),
(56, 55, '2022-07-02 16:42:19', '2022-07-31 00:00:00', '1', '2022-07-02 14:43:27', '2022-07-02 14:43:27'),
(57, 56, '2022-07-02 16:42:19', '2022-07-31 00:00:00', '1', '2022-07-02 14:43:27', '2022-07-02 14:43:27'),
(58, 57, '2022-07-02 16:42:19', '2022-07-31 00:00:00', '1', '2022-07-02 14:43:27', '2022-07-02 14:43:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichhoatnguoidung`
--

CREATE TABLE `kichhoatnguoidung` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `lsp_ma` int(10) UNSIGNED NOT NULL,
  `lsp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lsp_hinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lsp_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `lsp_thuonghieu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dm_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`lsp_ma`, `lsp_ten`, `lsp_hinh`, `lsp_tinhtrang`, `lsp_thuonghieu`, `dm_ma`, `created_at`, `updated_at`) VALUES
(1, 'Bao Cao Su', NULL, '1', 'Khác', 3, NULL, '2022-06-24 05:28:09'),
(2, 'Bao Cao Su Mới', NULL, '1', '', 2, '2022-06-30 12:29:04', '2022-06-30 12:29:04'),
(5, 'Gel Bôi Trơn Mới', '', '1', '', 2, NULL, NULL),
(6, 'Hỗ Trợ Kéo Dài Thời Gian Mới', '', '1', '', 2, NULL, NULL),
(7, 'Tăng Cường Sinh Lý Mới', '', '1', '', 2, NULL, NULL),
(8, 'Gia Tăng Khoái Cảm Mới', '', '1', '', 2, NULL, NULL),
(9, 'Bao Cao Su Shell', 'shell.png', '1', 'Shell', 3, '2022-06-24 04:30:38', '2022-06-24 04:30:38'),
(10, 'Bao Cao Su Durex', 'durex.png', '1', 'Durex', 3, '2022-06-24 04:30:50', '2022-06-24 04:30:50'),
(11, 'Bao Cao Su Olo', 'olo.png', '1', 'Olo', 3, '2022-06-24 04:31:00', '2022-06-24 04:31:00'),
(12, 'Bao Cao Su Muaisi', 'Muaisi.png', '1', 'Muaisi', 3, '2022-06-24 04:31:28', '2022-06-24 04:31:28'),
(13, 'Bao Cao Su Nhật Bản', '', '1', '', 3, '2022-06-24 04:31:50', '2022-06-24 04:31:50'),
(14, 'Bao Cao Su Nga', '', '1', '', 3, '2022-06-24 04:32:00', '2022-06-24 04:32:00'),
(15, 'Bao Cao Su Quan Hệ Bằng Miệng', '', '1', '', 3, '2022-06-24 04:32:20', '2022-06-24 04:32:20'),
(16, 'Bao Cao Su Siêu Mỏng', 'Quinn.png', '1', 'QUINN', 3, '2022-06-24 04:32:30', '2022-06-24 04:32:30'),
(17, 'Bao Cao Su Kéo Dài Thời Gian', 'Innova.png', '1', 'Innova', 3, '2022-06-24 04:32:42', '2022-06-24 04:32:42'),
(18, 'Bao Cao Su Mùi Hương', 'Nakanishi.png', '1', 'Nakanishi', 3, '2022-06-24 04:32:59', '2022-06-24 04:32:59'),
(19, 'Bao Cao Su Gân & Điểm Nổi', '', '1', '', 3, '2022-06-24 04:33:09', '2022-06-24 04:33:09'),
(20, 'Bao Cao Su Gai & Bi Lớn', '', '1', '', 3, '2022-06-24 04:33:22', '2022-06-24 04:33:22'),
(21, 'Bao Cao Su Gia Đình', '', '1', '', 3, '2022-06-24 04:33:33', '2022-06-24 04:33:33'),
(22, 'Gel Bôi Trơn Cơ Bản', '', '1', '', 4, '2022-06-24 04:34:24', '2022-06-24 04:34:24'),
(23, 'Gel Bôi Trơn Có Mùi Hương', 'Silktouch.png', '1', 'SILKTOUCH', 4, '2022-06-24 04:34:39', '2022-06-24 04:34:39'),
(24, 'Gel Bôi Trơn Ấm Nóng', 'Lexy.png', '1', 'LEXY', 4, '2022-06-24 04:34:50', '2022-06-24 04:34:50'),
(25, 'Gel Bôi Trơn Mát Lạnh', 'Lexy.png', '1', 'LEXY', 4, '2022-06-24 04:35:04', '2022-06-24 04:35:04'),
(26, 'Gel Bôi Trơn Massage', '', '1', '', 4, '2022-06-24 04:35:12', '2022-06-24 04:35:12'),
(27, 'Gel Bôi Trơn Se Khít Âm Đạo', '', '1', '', 4, '2022-06-24 04:35:28', '2022-06-24 04:35:28'),
(28, 'Gel Bôi Trơn Tăng Khoái Cảm', 'Passion.png', '1', 'PASSION', 4, '2022-06-24 04:35:39', '2022-06-24 04:35:39'),
(29, 'Gel Bôi Trơn Hậu Môn', '', '1', '', 4, '2022-06-24 04:35:50', '2022-06-24 04:35:50'),
(30, 'Xịt Kéo Dài Thời Gian Quan Hệ', 'Peineili.png', '1', 'PEINEILI', 5, '2022-06-24 04:36:13', '2022-06-24 04:36:13'),
(31, 'Bôi Kéo Dài Thời Gian Quan Hệ', 'Powergra.png', '1', 'POWERGRA', 5, '2022-06-24 04:36:23', '2022-06-24 04:36:23'),
(32, 'Vòng Đeo Kéo Dài Thời Gian', '', '1', '', 5, '2022-06-24 04:36:36', '2022-06-24 04:36:36'),
(33, 'Viên Uống Tăng Cường', '', '1', '', 5, '2022-06-24 04:36:53', '2022-06-24 04:36:53'),
(34, 'Chai Hít Popper', '', '1', '', 5, '2022-06-24 04:37:05', '2022-06-24 04:37:05'),
(35, 'Gel Tăng Kích Thước Dương Vật', 'Titan.png', '1', 'Titan', 6, '2022-06-24 04:37:24', '2022-06-24 04:37:24'),
(36, 'Máy Tập Làm To Dương Vật', '', '1', '', 6, '2022-06-24 04:37:42', '2022-06-24 04:37:42'),
(37, 'Viên Uống Tăng Cường', '', '1', '', 6, '2022-06-24 04:37:54', '2022-06-24 04:37:54'),
(38, 'Tăng Cường Sinh Lý TORO', 'kingsman.png', '1', 'KINGSMAN', 6, '2022-06-24 04:38:06', '2022-06-24 04:38:06'),
(39, 'Chai Hít Popper', '', '1', '', 6, '2022-06-24 04:38:21', '2022-06-24 04:38:21'),
(40, 'Chai Hít Popper', '', '1', '', 7, '2022-06-24 04:38:54', '2022-06-24 04:38:54'),
(41, 'Vòng Rung Tăng Khoái Cảm', 'Aphojoy.png', '1', 'APHOJOY', 7, '2022-06-24 04:39:06', '2022-06-24 04:39:06'),
(42, 'Nước Hoa Kích Thích Nữ', '', '1', '', 7, '2022-06-24 04:39:19', '2022-06-24 04:39:19'),
(43, 'Vòng Rung Tình Yêu', '', '1', '', 7, '2022-06-24 04:39:27', '2022-06-24 04:39:27'),
(44, 'Vòng Đeo Kéo Dài Thời Gian', '', '1', '', 7, '2022-06-24 04:39:43', '2022-06-24 04:39:43'),
(45, 'Tăng Khoái Cảm Cho Oral Sex', '', '1', '', 7, '2022-06-24 04:40:15', '2022-06-24 04:40:15'),
(46, 'Gel Bôi Trơn Lô Hội', 'Lexy.png', '1', 'LEXY', 4, '2022-06-24 23:07:15', '2022-06-24 23:07:33'),
(47, 'Tất Cả Sản Phẩm', NULL, '1', '', 1, '2022-07-04 13:22:43', '2022-07-04 13:22:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_23_083900_create_donvi_table', 1),
(6, '2022_05_23_171759_create_thongtinshop_table', 1),
(7, '2022_05_23_171946_create_bangqc_table', 1),
(8, '2022_05_23_171955_create_hinhqc_table', 1),
(9, '2022_05_23_172409_create_nhanvien_table', 1),
(10, '2022_05_23_172420_create_khachhang_table', 1),
(11, '2022_05_23_172439_create_diachi_table', 1),
(12, '2022_05_23_172732_create_danhmucsp_table', 1),
(13, '2022_05_23_172740_create_loaisp_table', 1),
(14, '2022_05_23_172749_create_nhasanxuat_table', 1),
(15, '2022_05_23_172750_create_sanpham_table', 1),
(17, '2022_05_23_172834_create_hinhsp_table', 1),
(18, '2022_05_23_172919_create_khuyenmai_table', 1),
(19, '2022_05_23_172937_create_ctkhuyenmai_table', 1),
(20, '2022_05_23_173238_create_danhgia_table', 1),
(23, '2022_05_23_173433_create_vanchuyen_table', 1),
(24, '2022_05_23_173444_create_thanhtoan_table', 1),
(25, '2022_05_23_173821_create_hoadon_table', 1),
(26, '2022_05_23_173848_create_phieunhap_table', 1),
(27, '2022_05_23_173921_create_cthoadon_table', 1),
(28, '2022_05_23_173933_create_ctphieunhap_table', 1),
(29, '2022_06_19_205157_create_kichhoatnguoidung_table', 2),
(32, '2022_06_25_071500_create_sale_table', 3),
(33, '2022_06_25_072756_create_sp_sale_table', 3),
(34, '2022_05_23_173407_create_giaban_table', 4),
(35, '2022_05_23_173310_create_ngay_table', 5),
(36, '2022_06_28_171945_create_giaban_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `nv_ma` int(10) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'Nam',
  `ngaysinh` date DEFAULT NULL,
  `sdt` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cccd` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kichhoat` tinyint(1) NOT NULL DEFAULT 0,
  `lienketkichhoat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhacungcap` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'google',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`nv_ma`, `ten`, `gioitinh`, `ngaysinh`, `sdt`, `email`, `diachi`, `cccd`, `hinh`, `password`, `remember_token`, `kichhoat`, `lienketkichhoat`, `nhacungcap`, `google_id`, `facebook_id`, `tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Nhanvien 1', 'nam', '2022-06-17', NULL, 'nhanvien1@allaravel.dev', 'Can Tho', '0123456789', NULL, '$2y$10$WGHTpEEweyPxySLZ8mCnGeNyjlytit/p6kbVRti6jw0C7GnTldON6', NULL, 0, NULL, 'google', NULL, NULL, '1', '2022-06-16 19:43:53', '2022-06-16 19:43:53'),
(4, 'Nhanvien 2', 'nam', '2022-06-17', NULL, 'nhanvien2@allaravel.dev', 'Can Tho', '0123456790', NULL, '$2y$10$yooAO9xhvnQss7bBt07/Y.q755emu4jkvwRqyyMevNjLqPNj8Hyba', NULL, 0, NULL, 'google', NULL, NULL, '1', '2022-06-16 19:45:45', '2022-06-16 19:45:45'),
(5, 'Nhanvien 3', 'nam', '2022-06-17', NULL, 'nhanvien3@allaravel.dev', 'Can Tho', '0123456791', NULL, '$2y$10$UcF.lJ0aQ3T4241RKIdiaud.L6gajDUGb7OhG5cjKPqCpbhN5X6Bi', NULL, 0, NULL, 'google', NULL, NULL, '1', '2022-06-16 19:45:45', '2022-06-16 19:45:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `nsx_ma` int(10) UNSIGNED NOT NULL,
  `nsx_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsx_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsx_sdt` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsx_email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsx_msthue` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsx_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`nsx_ma`, `nsx_ten`, `nsx_diachi`, `nsx_sdt`, `nsx_email`, `nsx_msthue`, `nsx_tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty Cổ Phần Haybike', 'Lô 02 - 03, Dãy C11, Đường Đồng Bát', '0123456789', 'Haybike123@gmail.com', '0123456789', '1', NULL, '2022-06-23 03:38:48'),
(2, 'Saigon Co.Op', '131 Điện Biên Phủ, Phường 15', '0123456790', 'Saigon123@gmail.com', '0123456790', '1', NULL, NULL),
(3, 'Công Ty Tnhh Công Nghệ Vật Liệu Mới Yong Ying', '117 Tân Cảng Phường 25 Quận Bình Thạnh', '0123456791', 'YongYing123@gmail.com', '0123456791', '1', NULL, NULL),
(4, 'Cty Cp Tập Đoàn Kinh Tế Apec Global', 'Số 4, Lê Tuấn Mậu', '0123456792', 'ApecGlobal123@gmail.com', '0123456792', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `pn_ma` int(10) UNSIGNED NOT NULL,
  `pn_ngaynhap` date NOT NULL,
  `pn_tongtien` double(8,2) NOT NULL,
  `pn_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nv_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_ma` int(10) UNSIGNED NOT NULL,
  `sale_tgbd` datetime NOT NULL,
  `sale_tgkt` datetime NOT NULL,
  `sale_noidung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sale`
--

INSERT INTO `sale` (`sale_ma`, `sale_tgbd`, `sale_tgkt`, `sale_noidung`, `sale_tinhtrang`, `created_at`, `updated_at`) VALUES
(1, '2022-06-30 00:00:00', '2022-07-30 00:00:00', 'sale sản phẩm 25/6', '1', NULL, NULL),
(2, '2022-06-25 11:49:20', '2022-06-25 11:49:20', 'sale ngày lễ', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `sp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_hinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'spkm.png',
  `sp_gianhap` float DEFAULT 100000,
  `sp_soluong` int(11) NOT NULL DEFAULT 50,
  `sp_mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_thongtin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `nsx_ma` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `lsp_ma` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`sp_ma`, `sp_ten`, `sp_hinh`, `sp_gianhap`, `sp_soluong`, `sp_mota`, `sp_thongtin`, `sp_tinhtrang`, `nsx_ma`, `lsp_ma`, `created_at`, `updated_at`) VALUES
(1, 'Bao cao su Shell Love Bead', 'shell1.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:01:00', '2022-06-24 08:01:00'),
(2, 'Bao cao su Shell Giant Entering', 'shell2.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:05:58', '2022-06-24 08:05:58'),
(3, 'Bao cao su Shell Sensitive Prolong', 'shell3.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:22:30', '2022-06-24 08:22:30'),
(4, 'Bao cao su Shell Invisible', 'shell4.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:23:05', '2022-06-24 08:23:05'),
(5, 'Bao cao su Shell Triple Mix', 'shell5.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:23:43', '2022-06-24 08:23:43'),
(6, 'Bao cao su Shell Seahorse', 'shell6.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:24:06', '2022-06-24 08:24:06'),
(7, 'Bao cao su Shell Performaxxx 6 in 1', 'shell7.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:24:25', '2022-06-24 08:24:25'),
(8, 'Bao cao su Shell Intense', 'shell8.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:24:42', '2022-06-24 08:24:42'),
(9, 'Bao cao su Shell Seahorse', 'shell9.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:24:54', '2022-06-24 08:24:54'),
(10, 'Bao cao su Shell Intense', 'shell8.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:25:12', '2022-06-24 08:25:12'),
(11, 'Bao cao su Shell Performax 6 in 1', 'shell7.png', 100000, 50, NULL, NULL, '1', 1, 9, '2022-06-24 08:25:25', '2022-06-24 08:25:25'),
(12, 'Bao cao su Durex Pleasuremax', 'durex1.png', 100000, 50, NULL, NULL, '1', 2, 10, '2022-06-24 08:39:26', '2022-06-24 08:39:26'),
(13, 'Bao cao su Durex Kingtex', 'durex2.png', 100000, 50, NULL, NULL, '1', 2, 10, '2022-06-24 08:41:09', '2022-06-24 08:41:09'),
(14, 'Bao cao su Durex Close Fit', 'durex3.png', 100000, 50, NULL, NULL, '1', 2, 10, '2022-06-24 08:41:58', '2022-06-24 08:41:58'),
(15, 'Bao cao su Durex Jeans', 'durex4.png', 100000, 50, NULL, NULL, '1', 2, 10, '2022-06-24 08:43:31', '2022-06-24 08:43:31'),
(16, 'Bộ 2 hộp bao cao su Durex Kingtex', 'durex5.png', 100000, 50, NULL, NULL, '1', 2, 10, '2022-06-24 08:48:22', '2022-06-24 08:48:22'),
(17, 'Bao cao su Durex Performa', 'durex6.png', 100000, 50, NULL, NULL, '1', 2, 10, '2022-06-24 08:48:48', '2022-06-24 08:48:48'),
(18, 'Bao cao su Durex Invisible', 'durex7.png', 100000, 50, NULL, NULL, '1', 2, 10, '2022-06-24 08:49:10', '2022-06-24 08:49:10'),
(19, 'Bao cao su OLO 0.01 Gamma Formula', 'olo1.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 08:58:56', '2022-06-24 08:58:56'),
(20, 'Bao cao su OLO 0.01 Black', 'olo2.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 08:59:20', '2022-06-24 08:59:20'),
(21, 'Bao cao su OLO 0.01 Gold', 'olo3.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 08:59:36', '2022-06-24 08:59:36'),
(22, 'Bao cao su OLO 0.01 Bead Entering', 'olo4.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 08:59:59', '2022-06-24 08:59:59'),
(23, 'Bao cao su OLO 0.01 gân gai', 'olo5.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 09:02:00', '2022-06-24 09:02:00'),
(24, 'Bao cao su OLO 0.01 Zero Vàng', 'olo6.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 09:02:20', '2022-06-24 09:02:20'),
(25, 'Bao cao su OLO 0.01 Trắng có bi', 'olo7.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 09:02:37', '2022-06-24 09:02:37'),
(26, 'Bao cao su OLO 0.01 Climax Ha For Women', 'olo8.png', 100000, 50, NULL, NULL, '1', 3, 11, '2022-06-24 09:02:55', '2022-06-24 09:02:55'),
(27, 'Bao cao su Muaisi Imported Latex Black', 'muaisi1.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:12:48', '2022-06-24 09:12:48'),
(28, 'Bao cao su Muaisi Imported Latex Blue', 'muaisi2.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:13:04', '2022-06-24 09:13:04'),
(29, 'Bao cao su Muaisi Imported Latex Red', 'muaisi3.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:13:26', '2022-06-24 09:13:26'),
(30, 'Bao cao su Muaisi Xanh Dương', 'muaisi4.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:13:42', '2022-06-24 09:13:42'),
(31, 'Bao cao su Muaisi Xanh Lá', 'muaisi5.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:14:03', '2022-06-24 09:14:03'),
(32, 'Bao cao su Muaisi Hot', 'muaisi6.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:15:20', '2022-06-24 09:15:20'),
(33, 'Bao cao su Muaisi Hồng', 'muaisi7.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:15:41', '2022-06-24 09:15:41'),
(34, 'Bao cao su Muaisi Cool', 'muaisi8.png', 100000, 50, NULL, NULL, '1', 4, 12, '2022-06-24 09:16:09', '2022-06-24 09:16:09'),
(35, 'Bao cao su đôn dên tăng kích thước, có rung', 'bcsMoi1.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:29:19', '2022-06-24 09:29:19'),
(36, 'Bao cao su Shell Love Bead - Gân nổi, kéo dài thời gian, bi tăng 1.5cm', 'bcsMoi2.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:30:47', '2022-06-24 09:30:47'),
(37, 'Bao cao su Shell Giant Entering', 'bcsMoi3.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:31:16', '2022-06-24 09:31:16'),
(38, 'Bao cao su Shell Sensitive Prolong - Siêu mỏng 0.03mm, kéo dài thời gian', 'bcsMoi4.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:31:42', '2022-06-24 09:31:42'),
(39, 'Bao cao su Shell Invisible - Siêu mỏng, chống tuột, kéo dài thời gian', 'bcsMoi5.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:32:30', '2022-06-24 09:32:30'),
(40, 'Bao cao su Sagami 0.02mm', 'bcsMoi6.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:32:58', '2022-06-24 09:32:58'),
(41, 'Bộ 2 hộp bao cao su Up To Top 0.Zero', 'bcsMoi7.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:33:17', '2022-06-24 09:33:17'),
(42, 'Bao cao su OLO 0.01 Gamma Formula - Kéo dài thời gian, gân gai', 'bcsMoi8.png', 100000, 50, NULL, NULL, '1', 1, 2, '2022-06-24 09:33:42', '2022-06-24 09:33:42'),
(43, 'Gel bôi trơn gốc nước', 'gelBoiTron1.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 09:54:48', '2022-06-24 09:54:48'),
(44, 'Gel bôi trơn gốcGel bôi trơn gốc nước', 'gelBoiTron2.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 09:58:26', '2022-06-24 09:58:26'),
(45, 'Gel bôi trơn gốc nước', 'gelBoiTron3.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 09:58:40', '2022-06-24 09:58:40'),
(46, 'Gel bôi trơn tinh chất lô hội', 'gelBoiTron4.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 09:59:00', '2022-06-24 09:59:00'),
(47, 'Gel bôi trơn mát lạnh', 'gelBoiTron5.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 09:59:30', '2022-06-24 09:59:30'),
(48, 'Gel bôi trơn ấm nóng', 'gelBoiTron6.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 09:59:50', '2022-06-24 09:59:50'),
(49, 'Gel bôi trơn kháng khuẩn chăm sóc vùng kín', 'gelBoiTron7.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 10:00:10', '2022-06-24 10:00:10'),
(50, 'Gel bôi trơn se khít âm đạo và tăng khoái cảm nữ', 'gelBoiTron8.png', 100000, 50, NULL, NULL, '1', 2, 2, '2022-06-24 10:00:28', '2022-06-24 10:00:28'),
(51, 'Gel bôi trơn gốc nước', 'gelBoiTronCoBan1.png', 100000, 50, NULL, NULL, '1', 3, 22, '2022-06-24 10:16:09', '2022-06-24 10:16:09'),
(52, 'Gel bôi trơn gốc nước', 'gelBoiTronCoBan2.png', 100000, 50, NULL, NULL, '1', 3, 22, '2022-06-24 10:16:32', '2022-06-24 10:16:32'),
(53, 'Gel bôi trơn gốc nước', 'gelBoiTronCoBan3.png', 100000, 50, NULL, NULL, '1', 3, 22, '2022-06-24 10:16:56', '2022-06-24 10:16:56'),
(54, 'Gel bôi trơn tinh chất lô hội', 'gelBoiTronCoBan4.png', 100000, 50, NULL, NULL, '1', 3, 22, '2022-06-24 10:17:14', '2022-06-24 10:17:14'),
(55, 'Gel bôi trơn gốc nước, không mùi', 'gelBoiTronCoBan5.png', 100000, 50, NULL, NULL, '1', 3, 22, '2022-06-24 10:17:31', '2022-06-24 10:17:31'),
(56, 'Gel bôi trơn tinh chất lô hội', 'gelBoiTronCoBan6.png', 100000, 50, NULL, NULL, '1', 3, 22, '2022-06-24 10:17:50', '2022-06-24 10:17:50'),
(57, 'Gel bôi trơn siêu mượt, cấp ẩm cao', 'gelBoiTronCoBan7.png', 100000, 50, NULL, NULL, '1', 3, 22, '2022-06-24 10:18:08', '2022-06-24 10:18:08'),
(58, '[HÀNG TẶNG KHÔNG BÁN] Bao cao su cao cấp - 1 cái', 'spkm1.png', 100000, 50, NULL, NULL, '1', 1, 1, '2022-07-02 06:45:12', '2022-07-02 06:45:12'),
(59, 'Đông trùng hạ thảo Toro - Sấy thăng hoa nguyên sợi, cải thiện chức năng sinh lý', 'spkm6.png', 100000, 50, NULL, NULL, '1', 2, 1, '2022-07-02 06:55:30', '2022-07-02 06:55:30'),
(60, 'Bột sìn sú Kingsman', 'spkm8.png', 100000, 50, NULL, NULL, '1', 3, 38, '2022-07-02 07:02:26', '2022-07-02 07:02:26'),
(61, 'Kẹo nhân sâm S-Dream', 'spkm9.png', 100000, 50, NULL, NULL, '1', 4, 38, '2022-07-02 07:26:23', '2022-07-02 07:26:23'),
(62, 'Viên uống hỗ trợ cương dương, tăng cường sinh lý Azodra 100mg', 'spkm10.png', 100000, 50, NULL, NULL, '1', 1, 37, '2022-07-02 13:21:43', '2022-07-02 13:21:43'),
(63, 'Bao cao su Shell Performax 6 in 1', 'spkm11.png', 100000, 50, NULL, NULL, '1', 2, 9, '2022-07-02 13:30:21', '2022-07-02 13:30:21'),
(64, 'Gel bôi trơn mát lạnh', 'spkm12.png', 100000, 50, NULL, NULL, '1', 3, 25, '2022-07-02 13:35:39', '2022-07-02 13:35:39'),
(65, 'Gel bôi trơn tinh chất lô hội', 'spkm13.png', 100000, 50, NULL, NULL, '1', 4, 46, '2022-07-02 13:39:32', '2022-07-02 13:39:32'),
(66, 'Gel bôi trơn nóng ấm', 'spkm2.png', 100000, 50, NULL, NULL, '1', 4, 24, '2022-07-02 13:43:25', '2022-07-02 13:43:25'),
(67, 'Bao cao su Gun Super Ultra Thin', 'spkm4.png', 100000, 50, NULL, NULL, '1', 2, 16, '2022-07-02 13:48:45', '2022-07-02 13:48:45'),
(68, 'Bao cao su Nakanishi', 'spkm14.png', 100000, 50, NULL, NULL, '1', 1, 18, '2022-07-02 13:54:31', '2022-07-02 13:54:31'),
(69, 'Bao cao su Shell Intense', 'spkm7.png', 100000, 50, NULL, NULL, '1', 3, 9, '2022-07-02 13:56:58', '2022-07-02 13:56:58'),
(70, 'Gel bôi trơn tăng khoái cảm nữ', 'spkm3.png', 100000, 50, NULL, NULL, '1', 2, 28, '2022-07-02 13:59:48', '2022-07-02 13:59:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_km`
--

CREATE TABLE `sp_km` (
  `id` int(10) NOT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Giảm',
  `phantram` float NOT NULL DEFAULT 20,
  `loaikm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `km_ma` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_km`
--

INSERT INTO `sp_km` (`id`, `mota`, `phantram`, `loaikm`, `sp_ma`, `km_ma`) VALUES
(1, 'Tặng 1', 20, '0', 58, 1),
(2, 'Giảm', 20, '0', 59, 1),
(3, 'Giảm', 20, '0', 61, 1),
(4, 'Giảm', 20, '0', 60, 1),
(5, 'Giảm', 20, '0', 62, 2),
(6, 'Giảm', 10, '0', 63, 2),
(7, 'Giảm', 20, '0', 64, 2),
(8, 'Giảm', 20, '0', 65, 2),
(9, 'Giảm', 20, '0', 66, 3),
(10, 'Giảm', 15, '0', 67, 3),
(11, 'Giảm', 20, '0', 68, 3),
(12, 'Giảm', 20, '0', 69, 3),
(13, 'Giảm', 20, '0', 70, 4),
(14, 'Giảm', 20, '0', 66, 4),
(15, 'Giảm', 20, '0', 59, 4),
(16, 'Giảm', 20, '0', 55, 4),
(17, 'Tặng 1', 20, '0', 58, 5),
(18, 'Giảm', 20, '0', 59, 5),
(19, 'Giảm', 20, '0', 65, 5),
(20, 'Giảm', 20, '0', 67, 5),
(21, 'Giảm', 20, '0', 59, 6),
(22, 'Giảm', 20, '0', 60, 6),
(23, 'Giảm', 20, '0', 62, 6),
(24, 'Giảm', 20, '0', 63, 6),
(33, 'Tặng 1', 20, '0', 58, 7),
(34, 'Giảm', 20, '0', 60, 7),
(35, 'Giảm', 20, '0', 62, 7),
(36, 'Giảm', 20, '0', 64, 7),
(37, 'Tặng 1', 20, '0', 58, 8),
(38, 'Giảm', 20, '0', 59, 8),
(39, 'Giảm', 20, '0', 60, 8),
(40, 'Giảm', 20, '0', 61, 8),
(41, 'Giảm', 20, '0', 61, 9),
(42, 'Giảm', 20, '0', 62, 9),
(43, 'Giảm', 20, '0', 63, 9),
(44, 'Giảm', 20, '0', 65, 9),
(45, 'Tặng 1', 20, '0', 58, 10),
(46, 'Giảm', 20, '0', 63, 10),
(47, 'Giảm', 20, '0', 65, 10),
(48, 'Giảm', 20, '0', 60, 10),
(49, 'Tặng 1', 20, '0', 58, 11),
(50, 'Giảm', 20, '0', 67, 11),
(51, 'Giảm', 20, '0', 68, 11),
(52, 'Giảm', 20, '0', 69, 11),
(53, 'Tặng 1', 20, '0', 58, 12),
(54, 'Giảm', 20, '0', 64, 12),
(55, 'Giảm', 20, '0', 68, 12),
(56, 'Giảm', 20, '0', 69, 12),
(57, 'Tặng 1', 20, '0', 58, 13),
(58, 'Giảm', 20, '0', 62, 13),
(59, 'Giảm', 20, '0', 63, 13),
(60, 'Giảm', 20, '0', 65, 13),
(65, 'Tặng 1', 20, '0', 58, 14),
(66, 'Giảm', 20, '0', 64, 14),
(67, 'Giảm', 20, '0', 63, 14),
(68, 'Giảm', 20, '0', 68, 14),
(69, 'Giảm', 20, '0', 59, 15),
(70, 'Giảm', 20, '0', 60, 15),
(71, 'Giảm', 20, '0', 61, 15),
(72, 'Giảm', 20, '0', 63, 15),
(73, 'Tặng 1', 20, '0', 58, 16),
(74, 'Giảm', 20, '0', 67, 16),
(75, 'Giảm', 20, '0', 68, 16),
(76, 'Giảm', 20, '0', 69, 16),
(77, 'Tặng 1', 20, '0', 58, 17),
(78, 'Giảm', 20, '0', 62, 17),
(79, 'Giảm', 20, '0', 65, 17),
(80, 'Giảm', 20, '0', 68, 17),
(81, 'Tặng 1', 20, '0', 58, 18),
(82, 'Giảm', 20, '0', 61, 18),
(83, 'Giảm', 20, '0', 64, 18),
(84, 'Giảm', 20, '0', 67, 18),
(85, 'Tặng 1', 20, '0', 58, 19),
(86, 'Giảm', 20, '0', 63, 19),
(87, 'Giảm', 20, '0', 66, 19),
(88, 'Giảm', 20, '0', 69, 19),
(89, 'Tặng 1', 20, '0', 58, 20),
(90, 'Giảm', 20, '0', 61, 20),
(91, 'Giảm', 20, '0', 62, 20),
(92, 'Giảm', 20, '0', 63, 20),
(93, 'Tặng 1', 20, '0', 58, 21),
(94, 'Giảm', 20, '0', 64, 21),
(95, 'Giảm', 20, '0', 65, 21),
(96, 'Giảm', 20, '0', 66, 21),
(97, 'Tặng 1', 20, '0', 58, 22),
(98, 'Giảm', 20, '0', 67, 22),
(99, 'Giảm', 20, '0', 68, 22),
(100, 'Giảm', 20, '0', 69, 22),
(101, 'Tặng 1', 20, '0', 58, 23),
(102, 'Giảm', 20, '0', 61, 23),
(103, 'Giảm', 20, '0', 65, 23),
(104, 'Giảm', 20, '0', 69, 23),
(109, 'Tặng 1', 20, '0', 58, 24),
(110, 'Giảm', 20, '0', 62, 24),
(111, 'Giảm', 20, '0', 64, 24),
(112, 'Giảm', 20, '0', 69, 24),
(113, 'Tặng 1', 20, '0', 58, 25),
(114, 'Giảm', 20, '0', 63, 25),
(115, 'Giảm', 20, '0', 65, 25),
(116, 'Giảm', 20, '0', 69, 25),
(117, 'Tặng 1', 20, '0', 58, 26),
(118, 'Giảm', 20, '0', 61, 26),
(119, 'Giảm', 20, '0', 64, 26),
(120, 'Giảm', 20, '0', 65, 26),
(121, 'Tặng 1', 20, '0', 58, 27),
(122, 'Giảm', 20, '0', 65, 27),
(123, 'Giảm', 20, '0', 68, 27),
(124, 'Giảm', 20, '0', 69, 27),
(125, 'Tặng 1', 20, '0', 64, 28),
(126, 'Giảm', 20, '0', 67, 28),
(127, 'Giảm', 20, '0', 68, 28),
(128, 'Giảm', 20, '0', 69, 28),
(129, 'Tặng 1', 20, '0', 58, 29),
(130, 'Giảm', 20, '0', 65, 29),
(131, 'Giảm', 20, '0', 68, 29),
(132, 'Giảm', 20, '0', 67, 29),
(133, 'Tặng 1', 20, '0', 58, 30),
(134, 'Giảm', 20, '0', 61, 30),
(135, 'Giảm', 20, '0', 64, 30),
(136, 'Giảm', 20, '0', 68, 30),
(137, 'Tặng 1', 20, '0', 58, 31),
(138, 'Giảm', 20, '0', 62, 31),
(139, 'Giảm', 20, '0', 65, 31),
(140, 'Giảm', 20, '0', 70, 31),
(141, 'Tặng 1', 20, '0', 58, 32),
(142, 'Giảm', 20, '0', 63, 32),
(143, 'Giảm', 20, '0', 65, 32),
(144, 'Giảm', 20, '0', 69, 32),
(145, 'Tặng 1', 20, '0', 58, 33),
(146, 'Giảm', 20, '0', 62, 33),
(147, 'Giảm', 20, '0', 64, 33),
(148, 'Giảm', 20, '0', 65, 33),
(149, 'Tặng 1', 20, '0', 58, 34),
(150, 'Giảm', 20, '0', 63, 34),
(151, 'Giảm', 20, '0', 70, 34),
(152, 'Giảm', 20, '0', 69, 34),
(153, 'Tặng 1', 20, '0', 70, 35),
(154, 'Giảm', 20, '0', 69, 35),
(155, 'Giảm', 20, '0', 64, 35),
(156, 'Giảm', 20, '0', 62, 35),
(157, 'Tặng 1', 20, '0', 63, 36),
(158, 'Giảm', 20, '0', 65, 36),
(159, 'Giảm', 20, '0', 69, 36),
(160, 'Giảm', 20, '0', 68, 36),
(161, 'Tặng 1', 20, '0', 61, 37),
(162, 'Giảm', 20, '0', 65, 37),
(163, 'Giảm', 20, '0', 62, 37),
(164, 'Giảm', 20, '0', 70, 37),
(165, 'Tặng 1', 20, '0', 58, 38),
(166, 'Giảm', 20, '0', 63, 38),
(167, 'Giảm', 20, '0', 64, 38),
(168, 'Giảm', 20, '0', 67, 38),
(169, 'Tặng 1', 20, '0', 58, 39),
(170, 'Giảm', 20, '0', 62, 39),
(171, 'Giảm', 20, '0', 69, 39),
(172, 'Giảm', 20, '0', 70, 39),
(173, 'Tặng 1', 20, '0', 58, 40),
(174, 'Giảm', 20, '0', 65, 40),
(175, 'Giảm', 20, '0', 62, 40),
(176, 'Giảm', 20, '0', 63, 40),
(177, 'Tặng 1', 20, '0', 58, 41),
(178, 'Giảm', 20, '0', 62, 41),
(179, 'Giảm', 20, '0', 69, 41),
(180, 'Tặng 1', 20, '0', 58, 42),
(181, 'Giảm', 20, '0', 70, 42),
(182, 'Giảm', 20, '0', 65, 42),
(183, 'Tặng 1', 20, '0', 58, 43),
(184, 'Giảm', 20, '0', 68, 43),
(185, 'Giảm', 20, '0', 69, 43),
(186, 'Tặng 1', 20, '0', 58, 44),
(187, 'Giảm', 20, '0', 65, 44),
(188, 'Giảm', 20, '0', 70, 44),
(189, 'Tặng 1', 20, '0', 58, 45),
(190, 'Giảm', 20, '0', 64, 45),
(191, 'Giảm', 20, '0', 69, 45),
(192, 'Tặng 1', 20, '0', 63, 46),
(193, 'Giảm', 20, '0', 65, 46),
(194, 'Giảm', 20, '0', 67, 46),
(195, 'Tặng 1', 20, '0', 58, 48),
(196, 'Giảm', 20, '0', 70, 48),
(197, 'Giảm', 20, '0', 62, 48),
(198, 'Tặng 1', 20, '0', 58, 49),
(199, 'Giảm', 20, '0', 61, 49),
(200, 'Giảm', 20, '0', 67, 49),
(201, 'Tặng 1', 20, '0', 58, 50),
(202, 'Giảm', 20, '0', 64, 50),
(203, 'Giảm', 20, '0', 67, 50),
(204, 'Tặng 1', 20, '0', 58, 51),
(205, 'Giảm', 20, '0', 61, 51),
(206, 'Giảm', 20, '0', 70, 51),
(207, 'Tặng 1', 20, '0', 58, 52),
(208, 'Giảm', 20, '0', 62, 52),
(209, 'Giảm', 20, '0', 70, 52),
(210, 'Tặng 1', 20, '0', 58, 53),
(211, 'Giảm', 20, '0', 63, 53),
(212, 'Giảm', 20, '0', 65, 53),
(213, 'Tặng 1', 20, '0', 58, 54),
(214, 'Giảm', 20, '0', 69, 54),
(215, 'Giảm', 20, '0', 68, 54),
(216, 'Tặng 1', 20, '0', 58, 55),
(217, 'Giảm', 20, '0', 64, 55),
(218, 'Giảm', 20, '0', 67, 55),
(219, 'Tặng 1', 20, '0', 58, 56),
(220, 'Giảm', 20, '0', 70, 56),
(221, 'Giảm', 20, '0', 61, 56),
(222, 'Tặng 1', 20, '0', 58, 57),
(223, 'Giảm', 20, '0', 64, 57),
(224, 'Giảm', 20, '0', 70, 57),
(225, 'Tặng 1', 20, '0', 58, 58),
(226, 'Giảm', 20, '0', 68, 58),
(227, 'Giảm', 20, '0', 65, 58);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_sale`
--

CREATE TABLE `sp_sale` (
  `giamgia` double(8,2) NOT NULL,
  `sp_ma` int(10) UNSIGNED NOT NULL,
  `sale_ma` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_sale`
--

INSERT INTO `sp_sale` (`giamgia`, `sp_ma`, `sale_ma`, `created_at`, `updated_at`) VALUES
(10.00, 13, 1, '2022-06-24 17:00:00', NULL),
(30.00, 14, 1, '2022-06-25 07:57:54', NULL),
(15.00, 15, 1, '2022-06-24 17:00:00', NULL),
(20.00, 18, 1, '2022-06-24 17:00:00', NULL),
(13.00, 29, 1, '2022-06-24 17:00:00', NULL),
(12.00, 33, 1, '2022-06-24 17:00:00', NULL),
(25.00, 34, 1, '2022-06-24 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `tt_ma` int(10) UNSIGNED NOT NULL,
  `tt_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`tt_ma`, `tt_ten`, `tt_tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán bằng thẻ ngân hàng', '1', NULL, '2022-06-23 01:01:04'),
(2, 'Thanh Toán Khi Nhận Hàng', '1', '2022-06-23 00:58:15', '2022-06-23 00:58:15'),
(3, 'Thanh toán bằng séc trực tuyến', '1', '2022-06-23 00:59:46', '2022-06-23 00:59:46'),
(4, 'Thanh toán bằng ví điện tử', '1', '2022-06-23 01:00:05', '2022-06-23 01:00:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinshop`
--

CREATE TABLE `thongtinshop` (
  `shop_ma` int(10) UNSIGNED NOT NULL,
  `shop_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_maugd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userable_id` int(11) DEFAULT NULL,
  `userable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `userable_id`, `userable_type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vinh', 'vinh123@gmail.com', NULL, NULL, NULL, '$2y$10$c5hyWR1dtxl3x.rSt.EU8uX08DzlusIrTyjgbXUILHjex1mxlYuE2', NULL, '2022-06-18 20:06:50', '2022-06-18 20:06:50'),
(2, 'ngoc', 'ngoc123@gmail.com', NULL, NULL, NULL, '$2y$10$N5IIEeq7b4dqnKXM7F6tqeZGrU/qgGrduixadFEeDwMts0DOmRVB2', NULL, '2022-06-18 20:08:06', '2022-06-18 20:08:06'),
(3, 'User 1', 'user1@gmail.com', NULL, NULL, NULL, '$2y$10$dYIhvqN0knsK.rngYJKSb.G/wtjGHoaApGVcPVRPhHkWKsQCSsrgG', NULL, '2022-06-18 13:31:43', '2022-06-18 13:31:43'),
(4, 'User 2', 'user2@gmail.com', NULL, NULL, NULL, '$2y$10$iVcFzrkgUd13hNdRwvW3Z.NsIgqNSm47dCB7NV0DpsNfIhl4AE5K.', NULL, '2022-06-18 13:31:44', '2022-06-18 13:31:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanchuyen`
--

CREATE TABLE `vanchuyen` (
  `vc_ma` int(10) UNSIGNED NOT NULL,
  `vc_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vc_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vanchuyen`
--

INSERT INTO `vanchuyen` (`vc_ma`, `vc_ten`, `vc_tinhtrang`, `created_at`, `updated_at`) VALUES
(2, 'Viettel Post', '1', '2022-06-22 08:34:27', '2022-06-23 01:09:43'),
(3, 'Giao hàng tiết kiệm', '1', '2022-06-23 01:09:54', '2022-06-23 01:09:54'),
(4, 'VNPost Nhanh', '1', '2022-06-23 01:10:05', '2022-06-23 01:10:05'),
(5, 'Best Express', '1', '2022-06-23 01:10:14', '2022-06-23 01:10:14'),
(6, 'VNPost Tiết Kiệm', '1', '2022-06-23 01:10:29', '2022-06-23 01:10:29'),
(7, 'GrabExpress', '1', '2022-06-23 01:10:48', '2022-06-23 01:10:48'),
(8, 'beDelivery', '1', '2022-06-23 01:10:57', '2022-06-23 01:10:57'),
(9, 'Ninja Van', '1', '2022-06-23 01:11:56', '2022-06-23 01:11:56'),
(10, 'J&T Express', '1', '2022-06-23 01:12:05', '2022-06-23 01:12:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int(10) NOT NULL,
  `soluong` int(11) NOT NULL,
  `sp_km_id` int(10) UNSIGNED NOT NULL,
  `kh_ma` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `soluong`, `sp_km_id`, `kh_ma`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangqc`
--
ALTER TABLE `bangqc`
  ADD PRIMARY KEY (`qc_ma`);

--
-- Chỉ mục cho bảng `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_GOC_PHU` (`idspgoc`,`idspphu`),
  ADD KEY `IDSPPHU_FOREIN` (`idspphu`),
  ADD KEY `dv_ma` (`dv_ma`) USING BTREE;

--
-- Chỉ mục cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`sp_ma`,`hd_ma`),
  ADD KEY `cthoadon_hd_ma_foreign` (`hd_ma`);

--
-- Chỉ mục cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`sp_ma`,`pn_ma`),
  ADD KEY `ctphieunhap_pn_ma_foreign` (`pn_ma`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`sp_ma`,`kh_ma`),
  ADD KEY `danhgia_kh_ma_foreign` (`kh_ma`);

--
-- Chỉ mục cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`dm_ma`);

--
-- Chỉ mục cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`dc_ma`),
  ADD KEY `diachi_kh_ma_foreign` (`kh_ma`);

--
-- Chỉ mục cho bảng `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`dv_ma`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giaban`
--
ALTER TABLE `giaban`
  ADD PRIMARY KEY (`sp_ma`,`dv_ma`),
  ADD KEY `giaban_donvi_foreign` (`sp_ma`) USING BTREE,
  ADD KEY `giaban_sanpham_foreign` (`dv_ma`) USING BTREE;

--
-- Chỉ mục cho bảng `hinhqc`
--
ALTER TABLE `hinhqc`
  ADD PRIMARY KEY (`hqc_ma`),
  ADD KEY `hinhqc_qc_ma_foreign` (`qc_ma`);

--
-- Chỉ mục cho bảng `hinhsp`
--
ALTER TABLE `hinhsp`
  ADD PRIMARY KEY (`h_ma`),
  ADD KEY `hinhsp_sp_ma_foreign` (`sp_ma`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`hd_ma`),
  ADD KEY `hoadon_kh_ma_foreign` (`kh_ma`),
  ADD KEY `hoadon_nv_ma_foreign` (`nv_ma`),
  ADD KEY `hoadon_tt_ma_foreign` (`tt_ma`),
  ADD KEY `hoadon_vc_ma_foreign` (`vc_ma`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_ma`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`km_ma`),
  ADD KEY `sp_ma` (`sp_ma`);

--
-- Chỉ mục cho bảng `kichhoatnguoidung`
--
ALTER TABLE `kichhoatnguoidung`
  ADD KEY `kichhoatnguoidung_makichhoat_index` (`token`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`lsp_ma`),
  ADD KEY `loaisp_dm_ma_foreign` (`dm_ma`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`nv_ma`),
  ADD UNIQUE KEY `nhanvien_nv_cccd_unique` (`cccd`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`nsx_ma`),
  ADD UNIQUE KEY `nhasanxuat_nsx_sdt_unique` (`nsx_sdt`),
  ADD UNIQUE KEY `nhasanxuat_nsx_email_unique` (`nsx_email`),
  ADD UNIQUE KEY `nhasanxuat_nsx_msthue_unique` (`nsx_msthue`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`pn_ma`),
  ADD KEY `phieunhap_nv_ma_foreign` (`nv_ma`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_ma`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_ma`),
  ADD KEY `sanpham_lsp_ma_foreign` (`lsp_ma`),
  ADD KEY `sanpham_nsx_ma_foreign` (`nsx_ma`);

--
-- Chỉ mục cho bảng `sp_km`
--
ALTER TABLE `sp_km`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQEU_SP_MA_KM_MA` (`sp_ma`,`km_ma`),
  ADD KEY `forkey_km_ma` (`km_ma`);

--
-- Chỉ mục cho bảng `sp_sale`
--
ALTER TABLE `sp_sale`
  ADD PRIMARY KEY (`sp_ma`,`sale_ma`),
  ADD KEY `sp_sale_sale_ma_foreign` (`sale_ma`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`tt_ma`);

--
-- Chỉ mục cho bảng `thongtinshop`
--
ALTER TABLE `thongtinshop`
  ADD PRIMARY KEY (`shop_ma`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD PRIMARY KEY (`vc_ma`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_voucher` (`sp_km_id`,`kh_ma`),
  ADD KEY `forkey_kh_ma` (`kh_ma`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangqc`
--
ALTER TABLE `bangqc`
  MODIFY `qc_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `combo`
--
ALTER TABLE `combo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `dm_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `diachi`
--
ALTER TABLE `diachi`
  MODIFY `dc_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donvi`
--
ALTER TABLE `donvi`
  MODIFY `dv_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhqc`
--
ALTER TABLE `hinhqc`
  MODIFY `hqc_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhsp`
--
ALTER TABLE `hinhsp`
  MODIFY `h_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `hd_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `kh_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `km_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `lsp_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `nv_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `nsx_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `pn_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `sp_km`
--
ALTER TABLE `sp_km`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `tt_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thongtinshop`
--
ALTER TABLE `thongtinshop`
  MODIFY `shop_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  MODIFY `vc_ma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `combo`
--
ALTER TABLE `combo`
  ADD CONSTRAINT `combo_dv_ma_foreignkey` FOREIGN KEY (`dv_ma`) REFERENCES `donvi` (`dv_ma`) ON UPDATE CASCADE,
  ADD CONSTRAINT `combo_idspphu_foreignkey` FOREIGN KEY (`idspphu`) REFERENCES `sanpham` (`sp_ma`) ON UPDATE CASCADE,
  ADD CONSTRAINT `combo_sp_ma_foreignkey` FOREIGN KEY (`idspgoc`) REFERENCES `sanpham` (`sp_ma`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD CONSTRAINT `cthoadon_hd_ma_foreign` FOREIGN KEY (`hd_ma`) REFERENCES `hoadon` (`hd_ma`),
  ADD CONSTRAINT `cthoadon_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `ctphieunhap_pn_ma_foreign` FOREIGN KEY (`pn_ma`) REFERENCES `phieunhap` (`pn_ma`),
  ADD CONSTRAINT `ctphieunhap_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_kh_ma_foreign` FOREIGN KEY (`kh_ma`) REFERENCES `khachhang` (`kh_ma`),
  ADD CONSTRAINT `danhgia_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `diachi_kh_ma_foreign` FOREIGN KEY (`kh_ma`) REFERENCES `khachhang` (`kh_ma`);

--
-- Các ràng buộc cho bảng `giaban`
--
ALTER TABLE `giaban`
  ADD CONSTRAINT `giaban_donvi_foreign` FOREIGN KEY (`dv_ma`) REFERENCES `donvi` (`dv_ma`),
  ADD CONSTRAINT `giaban_sanpham_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `hinhqc`
--
ALTER TABLE `hinhqc`
  ADD CONSTRAINT `hinhqc_qc_ma_foreign` FOREIGN KEY (`qc_ma`) REFERENCES `bangqc` (`qc_ma`);

--
-- Các ràng buộc cho bảng `hinhsp`
--
ALTER TABLE `hinhsp`
  ADD CONSTRAINT `hinhsp_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_kh_ma_foreign` FOREIGN KEY (`kh_ma`) REFERENCES `khachhang` (`kh_ma`),
  ADD CONSTRAINT `hoadon_nv_ma_foreign` FOREIGN KEY (`nv_ma`) REFERENCES `nhanvien` (`nv_ma`),
  ADD CONSTRAINT `hoadon_tt_ma_foreign` FOREIGN KEY (`tt_ma`) REFERENCES `thanhtoan` (`tt_ma`),
  ADD CONSTRAINT `hoadon_vc_ma_foreign` FOREIGN KEY (`vc_ma`) REFERENCES `vanchuyen` (`vc_ma`);

--
-- Các ràng buộc cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `khuyenmai_sanpham_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD CONSTRAINT `loaisp_dm_ma_foreign` FOREIGN KEY (`dm_ma`) REFERENCES `danhmucsp` (`dm_ma`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_nv_ma_foreign` FOREIGN KEY (`nv_ma`) REFERENCES `nhanvien` (`nv_ma`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_lsp_ma_foreign` FOREIGN KEY (`lsp_ma`) REFERENCES `loaisp` (`lsp_ma`),
  ADD CONSTRAINT `sanpham_nsx_ma_foreign` FOREIGN KEY (`nsx_ma`) REFERENCES `nhasanxuat` (`nsx_ma`);

--
-- Các ràng buộc cho bảng `sp_km`
--
ALTER TABLE `sp_km`
  ADD CONSTRAINT `forkey_km_ma` FOREIGN KEY (`km_ma`) REFERENCES `khuyenmai` (`km_ma`),
  ADD CONSTRAINT `forkey_sp_ma` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `sp_sale`
--
ALTER TABLE `sp_sale`
  ADD CONSTRAINT `sp_sale_sale_ma_foreign` FOREIGN KEY (`sale_ma`) REFERENCES `sale` (`sale_ma`),
  ADD CONSTRAINT `sp_sale_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Các ràng buộc cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD CONSTRAINT `forkey_kh_ma` FOREIGN KEY (`kh_ma`) REFERENCES `khachhang` (`kh_ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
