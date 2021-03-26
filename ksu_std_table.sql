-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.9

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

CREATE TABLE `ksu_std_table` (
  `ksu_std_id` varchar(20) NOT NULL,
  `ksu_std_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ksu_std_age` int(2) NOT NULL,
  `ksu_std_department` char(2) NOT NULL,
  `ksu_std_signin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `ksu_std_table`
--

INSERT INTO `ksu_std_table` (`ksu_std_id`, `ksu_std_name`, `ksu_std_age`, `ksu_std_department`, `ksu_std_signin`) VALUES
('4070E022', 'mingkai', 20, 'ie', 2019),
('4070E023', '123', 19, 'ie', 2019),
('4070E024', '456', 23, 'ie', 2000);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `ksu_std_table`
--
ALTER TABLE `ksu_std_table`
  ADD PRIMARY KEY (`ksu_std_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
