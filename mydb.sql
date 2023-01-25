-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 06:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `ticketid` int(11) NOT NULL,
  `Pname` varchar(20) NOT NULL,
  `Fcode` int(11) NOT NULL,
  `Pgender` varchar(10) NOT NULL,
  `Ppassport` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `nationaliity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

CREATE TABLE `cancel` (
  `cancelid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `Fcode` varchar(10) NOT NULL,
  `canceldate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Fcode` varchar(10) NOT NULL,
  `Fsource` varchar(50) NOT NULL,
  `Fdestination` varchar(50) NOT NULL,
  `Fdate` date NOT NULL,
  `Fseat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'eric', '123');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(30) NOT NULL,
  `Pnationality` varchar(30) NOT NULL,
  `Pgender` varchar(10) NOT NULL,
  `Ppassport` varchar(30) NOT NULL,
  `Paddress` varchar(30) NOT NULL,
  `Pphone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Pid`, `Pname`, `Pnationality`, `Pgender`, `Ppassport`, `Paddress`, `Pphone`) VALUES
(1, 'ERIC', 'Canada', 'Male', '12435', '866566', '07878566'),
(2, 'METHODE', 'Kenya', 'Male', '2315', 'KIGALI', '07832456'),
(3, 'SAVEUR', 'Russia', 'Male', '13454354', 'KIGALI', '07832456'),
(5, 'diane', 'Kenya', 'Female', '23343', 'kigali', '79878878'),
(6, 'ruth', 'USA', 'Female', '21345623', 'xfv', '213451234'),
(7, 'alice', 'South Africa', 'Female', '132556', 'cape town', '54324354'),
(8, 'sandrine', 'Kenya', 'Female', '1234565', 'kamonyi', '132345'),
(9, 'sibomana', 'USA', 'Male', '213451234', 'new york', '1344676433'),
(10, 'solange', 'Kenya', 'Female', '12434', 'k445', '123456'),
(11, 'eric', 'Kenya', 'Female', '123456', '24', '1`2455'),
(12, 'Rebecca', 'Kenya', 'Female', '323354', '21435', '1324568'),
(13, 'pacific', 'Kenya', 'Male', '124356', 'kigali', '0986756432'),
(15, 'muhoza', 'South Africa', 'Female', '11233542', 'cape town', '1432521'),
(17, 'Rebecca ', 'USA', 'Female', '13334221', 'new jessy', '13422211');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`ticketid`);

--
-- Indexes for table `cancel`
--
ALTER TABLE `cancel`
  ADD PRIMARY KEY (`cancelid`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Fcode`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
