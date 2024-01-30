-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 05:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `health_db`
--

CREATE TABLE `health_db` (
  `id_card` varchar(13) NOT NULL,
  `titlename` varchar(10) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `heart_value` float(5,2) DEFAULT NULL,
  `pulse_value` float(5,2) DEFAULT NULL,
  `time_log` time NOT NULL,
  `temp_value` float(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_db`
--

INSERT INTO `health_db` (`id_card`, `titlename`, `firstname`, `lastname`, `date_of_birth`, `heart_value`, `pulse_value`, `time_log`, `temp_value`) VALUES
('00000', 'md', 'vivo', 'lombo', '2024-01-30', 20.00, 120.00, '21:16:25', 12.0),
('12001', '12155', 'dfgsfdst', 'sdcsdc', '2024-01-09', 125.00, 80.00, '42:16:30', 0.0),
('12345', 'mr', 'surasak', 'kanka', '0000-00-00', 120.00, 80.00, '00:00:00', 0.0),
('12345656484', 'mg', 'gggg', 'hhhhhhh', '0000-00-00', 121.00, 125.00, '00:00:00', 0.0),
('123456789123', 'mr', 'dano', 'lui', '0000-00-00', 120.00, 180.00, '00:00:00', 0.0),
('15156', 'mr', 'funyu', 'yuio', NULL, 120.00, 80.00, '00:00:00', 0.0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` varchar(5) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `firstname`, `lastname`, `email`, `password`, `phone`, `dob`) VALUES
('00001', 'vivo', 'man', 'vivo@gmail.com', '000000', '', NULL),
('00002', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_device`
--

CREATE TABLE `tb_device` (
  `imei_no` varchar(20) DEFAULT NULL,
  `device_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_device`
--

INSERT INTO `tb_device` (`imei_no`, `device_name`) VALUES
('poekvpo', 'gervge'),
('thbrth', 'rhrtrhb'),
('', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `health_db`
--
ALTER TABLE `health_db`
  ADD PRIMARY KEY (`id_card`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
