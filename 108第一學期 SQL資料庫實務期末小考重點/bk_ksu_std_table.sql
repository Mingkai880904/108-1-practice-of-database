-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019-12-15 08:21:39
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ksu_database`
--

-- --------------------------------------------------------

--
-- 資料表結構 `ksu_std_table`
--

CREATE TABLE `bk_ksu_std_table` (
  `bk_ksu_std_id` varchar(6) NOT NULL,
  `bk_ksu_std_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bk_ksu_std_age` int(2) NOT NULL,
  `bk_ksu_std_department` char(2) NOT NULL,
  `bk_ksu_std_signin` date NOT NULL,
  `bk_ksu_std_grade` int(1) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `ksu_std_table`
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
