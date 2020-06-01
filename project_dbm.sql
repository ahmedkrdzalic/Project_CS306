-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2020 at 09:34 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_dbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `dateAndTime` datetime NOT NULL,
  `description` text NOT NULL,
  `pSSN` int(9) NOT NULL,
  `SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`dateAndTime`, `description`, `pSSN`, `SSN`) VALUES
('2020-06-03 10:20:00', '', 1, 2),
('2020-06-05 08:00:00', '', 2, 4),
('2020-06-17 10:00:00', 'Having head pain. (forhead)', 3, 2),
('2020-06-15 09:30:00', 'Broken leg', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cleaner`
--

DROP TABLE IF EXISTS `cleaner`;
CREATE TABLE IF NOT EXISTS `cleaner` (
  `salary` int(4) NOT NULL,
  `SSN` int(9) NOT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cleaner`
--

INSERT INTO `cleaner` (`salary`, `SSN`) VALUES
(1400, 3),
(1450, 6);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dID` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`dID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dID`, `name`) VALUES
(1, 'New York, Manhattan'),
(2, 'Sarajevo'),
(3, 'Vancouver');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `salary` int(4) NOT NULL,
  `specialization` varchar(25) NOT NULL,
  `SSN` int(11) NOT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`salary`, `specialization`, `SSN`) VALUES
(2950, 'Dječija medicina', 2),
(4500, 'Kardio Hirurgija', 4);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `SSN` int(9) NOT NULL AUTO_INCREMENT,
  `firstN` varchar(20) NOT NULL,
  `lastN` varchar(20) NOT NULL,
  `firstDay` date NOT NULL,
  `phoneN` int(13) NOT NULL,
  `sex` enum('Female','Male') NOT NULL,
  `bDate` date NOT NULL,
  `address` varchar(40) NOT NULL,
  `workingHours` int(3) NOT NULL,
  `dID` int(11) NOT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`SSN`, `firstN`, `lastN`, `firstDay`, `phoneN`, `sex`, `bDate`, `address`, `workingHours`, `dID`) VALUES
(1, 'Ahmed', 'Krdzalic', '2019-09-11', 61043037, 'Male', '1999-01-07', 'Put I Alićehajića 65 Bukva, Tesanj', 7, 1),
(2, 'Sara', 'Sivic', '2018-10-17', 642263870, 'Female', '2000-01-18', 'Put I Alićehajića 65 Bukva, Tesanj', 7, 2),
(3, 'Sabahudin', 'Osmanovic', '2018-05-19', 62228394, 'Male', '1995-01-02', 'Rasima Kapetanovica 45, Gracanica', 8, 2),
(4, 'Mishary', 'Al Afasi', '2020-01-19', 642553879, 'Male', '1990-07-20', 'Sarajlije Ahme 23, Sarajevo, Ilidza', 7, 1),
(5, 'Hattab', 'Efendic', '2017-02-13', 123129412, 'Male', '1992-10-09', 'Karpandzica 40 Irac, Tuzla', 7, 3),
(6, 'Maryam', 'El Hubbi', '2019-07-09', 123243132, 'Female', '1999-03-23', 'Sarajlije Ahme 21, Sarajevo, Ilidza', 6, 3),
(7, 'Nermina', 'Sarić', '2017-06-24', 768123894, 'Female', '1989-07-07', 'Ćepenci 52, Zenica', 7, 2),
(8, 'Sumejja', 'Kahvić', '2018-06-17', 64268938, 'Female', '1990-06-26', 'Stefan 5, Olovo', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emr`
--

DROP TABLE IF EXISTS `emr`;
CREATE TABLE IF NOT EXISTS `emr` (
  `salary` int(4) NOT NULL,
  `registration` varchar(12) NOT NULL,
  `SSN` int(9) NOT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emr`
--

INSERT INTO `emr` (`salary`, `registration`, `SSN`) VALUES
(2800, 'OK-MMI', 1),
(2600, '130-A-256', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
CREATE TABLE IF NOT EXISTS `nurse` (
  `salary` int(4) NOT NULL,
  `SSN` int(9) NOT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`salary`, `SSN`) VALUES
(2400, 7),
(2555, 8);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pSSN` int(9) NOT NULL AUTO_INCREMENT,
  `firstN` varchar(20) NOT NULL,
  `lastN` varchar(20) NOT NULL,
  `phoneN` int(13) NOT NULL,
  `sex` enum('Female','Male') NOT NULL,
  `bDate` date NOT NULL,
  `address` varchar(40) NOT NULL,
  PRIMARY KEY (`pSSN`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pSSN`, `firstN`, `lastN`, `phoneN`, `sex`, `bDate`, `address`) VALUES
(1, 'Sabahudin', 'Krdzalic', 321543654, 'Male', '1989-01-07', 'Kepića brdo 21, Umoljani, Sarajevo'),
(2, 'Naim', 'Karahmet', 89321879, 'Male', '1974-10-17', 'Sarajlije Atifa 1, Bosanska Krupa'),
(3, 'Safer', 'Korajić', 789123890, 'Male', '1966-01-07', 'Kvazimod 33, Teslić'),
(4, 'Sumejja', 'Ahmić', 789132890, 'Female', '1954-12-27', 'Kepić Atife 54, Stolac');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `registration` varchar(12) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`registration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`registration`, `name`) VALUES
('130-A-256', 'VW Transporter T7'),
('OK-MMI', 'Eurocopter 120 Colibri (Helicopter)');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
