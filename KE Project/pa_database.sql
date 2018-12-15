-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2018 at 09:02 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pa_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `date` varchar(25) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `dept`, `date`, `subject`, `reason`, `type`, `status`) VALUES
('1226', 'IT', '10/26/2018 ', 'xyz', 'dfdsfsdfjfrieorjfjdsfdklfdslfdfkdcn', 'pl', 'Granted'),
('1226', 'IT', '10/26/2018 ', 'gfdfgdgdgdg', 'sadasadasas', 'gp', 'Granted'),
('1230', 'CSE', '10/26/2018 ', 'gfdfgdgdgdg', 'sadasadasas', 'gp', 'Pending'),
('1226', 'IT', '10/27/2018 ', 'gfdfgdgdgdgeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'eeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrreeeeeeeeeeeeeee', 'gp', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`) VALUES
('1226', 'vinay', '1226@'),
('1230', 'srikanth', '1230@'),
('hod', 'hod', 'hod@'),
('faculty', 'faculty', 'faculty@'),
('security', 'security', 'security@');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
