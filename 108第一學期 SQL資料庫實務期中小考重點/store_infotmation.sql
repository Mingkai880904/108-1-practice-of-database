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
-- 資料庫： `0930`
--

-- --------------------------------------------------------

--
-- 資料表結構 `store_infotmation`
--

CREATE TABLE `store_infotmation` (
  `Store_Name` varchar(11) NOT NULL,
  `Sales` int(11) NOT NULL,
  `Txn_Date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `store_infotmation`
--

INSERT INTO `store_infotmation` (`Store_Name`, `Sales`, `Txn_Date`) VALUES
('Los Angeles', 1500, '05-Jan-1999'),
('San Diego', 250, '07-Jan-1999'),
('Los Angeles', 300, '07-Jan-1999'),
('Boston', 700, '08-Jan-1999');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
