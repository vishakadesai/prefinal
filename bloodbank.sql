-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2019 at 09:07 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
CREATE TABLE IF NOT EXISTS `blood` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bgroup` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`bid`, `bgroup`) VALUES
(1, 'A+'),
(2, 'A+'),
(3, ''),
(4, 'A+'),
(5, 'B-'),
(6, 'B-'),
(7, 'A+'),
(8, 'AB+'),
(9, 'B-'),
(10, 'O+'),
(11, 'A+'),
(12, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `donates`
--

DROP TABLE IF EXISTS `donates`;
CREATE TABLE IF NOT EXISTS `donates` (
  `donid` int(11) NOT NULL,
  `did` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `dateofdon` date DEFAULT NULL,
  PRIMARY KEY (`donid`),
  KEY `did` (`did`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
CREATE TABLE IF NOT EXISTS `donor` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dfname` varchar(20) DEFAULT NULL,
  `dlname` varchar(20) DEFAULT NULL,
  `ddob` date DEFAULT NULL,
  `dgender` char(1) DEFAULT NULL,
  `dwt` float DEFAULT NULL,
  `dbgroup` varchar(3) DEFAULT NULL,
  `dphone` bigint(20) DEFAULT NULL,
  `daddr` varchar(100) DEFAULT NULL,
  `demail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`did`, `dfname`, `dlname`, `ddob`, `dgender`, `dwt`, `dbgroup`, `dphone`, `daddr`, `demail`) VALUES
(1, 'a', 'b', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'b', 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'c', 'd', '2001-01-01', 'F', 38, 'A+', 2899, 'SKJHDCIU', 'A@A.COM'),
(4, 'd', 'e', '1978-02-01', NULL, 60, 'AB+', 83847, 'SKJHDCIU', 'c@d.com'),
(5, 'x', 'y', '2001-12-08', NULL, 38, 'AB+', 83847, 'hdf', 'c@d.com'),
(6, 'c', 'd', '1989-09-01', NULL, 60, 'AB+', 83847, 'hdf', 'c@d.com'),
(7, 'c', 'd', '2001-05-06', 'F', 60, 'AB+', 83847, 'hdf', 'c@d.com'),
(8, 'a', 'b', '2019-07-06', 'O', 58, 'B-', 8320, 'mdnc', 'ndkjn@bjf.com'),
(9, 'c', 'e', '2007-08-09', 'F', 38, 'A+', 2899, 'SKJHDCIU', 'A@A.COM'),
(10, 'd', 'y', '1987-05-08', 'M', 58, 'A+', 8320, 'hdf', 'c@d.com'),
(11, 'x', 'd', '2005-08-06', 'F', 38, 'A+', 83847, 'SKJHDCIU', 'ndkjn@bjf.com'),
(12, 'x', 'd', '2002-03-07', NULL, 38, 'B-', 83847, 'SKJHDCIU', 'ndkjn@bjf.com'),
(13, 'd', 'd', '1987-04-05', 'M', 60, 'B-', 8320, 'mdnc', 'c@d.com'),
(14, 'c', 'y', '2001-03-06', 'O', 58, 'A+', 2899, 'hdf', 'c@d.com'),
(15, 'x', 'e', '2004-04-09', 'O', 58, 'AB+', 8320, 'hdf', 'c@d.com'),
(16, 'd', 'e', '1976-02-06', 'M', 38, 'B-', 2899, 'SKJHDCIU', 'A@A.COM'),
(17, 'k', 'f', '1999-02-08', 'F', 55, 'O+', 8787, 'dsfs', 'hgh@fcfg.com'),
(18, 'k', 'f', '2017-09-06', 'F', 58, 'A+', 2899, 'SKJHDCIU', 'hgh@fcfg.com');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
CREATE TABLE IF NOT EXISTS `has` (
  `hid` int(11) NOT NULL,
  `bgroup` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`),
  KEY `sid` (`bgroup`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pfname` varchar(20) DEFAULT NULL,
  `plname` varchar(20) NOT NULL,
  `pbgroup` varchar(3) DEFAULT NULL,
  `pbloodamt` int(11) DEFAULT NULL,
  `pphone` bigint(20) DEFAULT NULL,
  `paddr` varchar(20) DEFAULT NULL,
  `pemail` varchar(20) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pfname`, `plname`, `pbgroup`, `pbloodamt`, `pphone`, `paddr`, `pemail`) VALUES
(1, 'v', 'd', 'A+', 2, 7876567, 'jgdj', 'v@d.com');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `reqid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `dateofreq` date DEFAULT NULL,
  PRIMARY KEY (`reqid`),
  KEY `pid` (`pid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `bgroup` varchar(3) NOT NULL,
  `amt` int(11) DEFAULT '0',
  PRIMARY KEY (`bgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`bgroup`, `amt`) VALUES
('A+', 0),
('A-', 0),
('B+', 0),
('B-', 0),
('AB+', 0),
('AB-', 0),
('O+', 0),
('O-', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
