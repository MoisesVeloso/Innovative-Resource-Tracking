-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 06:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resourcetracking`
--
CREATE DATABASE IF NOT EXISTS `resourcetracking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `resourcetracking`;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `equipment` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `equipment`, `type`, `image_path`, `department`) VALUES
(1, 'Projector1', 'Projector', 'uploads/projector.png', 'CET'),
(2, 'HDMI1', 'HDMI', 'uploads/hdmi.png', 'CET'),
(3, 'Extension1', 'Extension', 'uploads/extension.png', 'CET'),
(5, 'Projector1', 'Projector', 'uploads/projector.png', 'CCJ'),
(6, 'Speaker1', 'Speaker', 'uploads/speaker.png', 'CCJ'),
(7, 'Television1', 'Display', 'uploads/television.png', 'CCJ'),
(8, 'Extension1', 'Extension', 'uploads/extension.png', 'CCJ'),
(9, 'HDMI1', 'HDMI', 'uploads/hdmi.png', 'CCJ'),
(10, 'InkSlab&Roller1', 'Forensic', 'uploads/ink&slab.png', 'CCJ'),
(11, 'Microphone1', 'Audio', 'uploads/microphone.png', 'CCJ'),
(12, 'Extension1', 'Extension', 'uploads/extension.png', 'CBA'),
(13, 'HDMI1', 'HDMI', 'uploads/hdmi.png', 'CBA'),
(14, 'Powercable1', 'Powercable', 'uploads/powercable.png', 'CBA'),
(15, 'Television1', 'Display', 'uploads/television.png', 'CBA'),
(16, 'Balance1', 'Balance', 'uploads/balance.png', 'CAS'),
(17, 'Beaker1', 'Beaker', 'uploads/beaker.png', 'CAS'),
(18, 'ErlenmeyerFlask1', 'Erlenmeyer Flask', 'uploads/erlenmeyerflask.png', 'CAS'),
(19, 'Funnel1', 'Funnel', 'uploads/funnel.png', 'CAS'),
(21, 'ReagentBottle1', 'Reagent Bottle', 'uploads/reagentbottle.png', 'CAS'),
(22, 'TestTube1', 'Test Tube', 'uploads/testtube.png', 'CAS'),
(46, 'Powercable1', 'Powercable', 'uploads/powercable.png', 'CCJ'),
(47, 'Projector2', 'Projector', 'uploads/projector.png', 'CET');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `studentNo` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Equipment` varchar(50) DEFAULT NULL,
  `status` enum('Currently in use','Returned') DEFAULT 'Currently in use',
  `action` varchar(50) DEFAULT 'Return',
  `reference_number` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requestform`
--

CREATE TABLE `requestform` (
  `id` int(11) NOT NULL,
  `reference_number` varchar(255) NOT NULL,
  `studentNo` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `equipment` varchar(255) NOT NULL,
  `approval_status` enum('Pending','Approved','Declined') NOT NULL DEFAULT 'Pending',
  `status` enum('view','viewed') DEFAULT 'view'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requestform`
--
-- --------------------------------------------------------
--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `username`, `password`, `department`) VALUES
(0, 'casuser', '$2y$10$GeBFEabKb8qfT0RfoeBVdu2roSAPUAceb9X2Gp/ul//7BLMphYej6', 'CAS'),
(3, 'cbauser', '$2y$10$k52nBrxel9y12wqbNl/Vv.vdLfPO7tn8KrNUFuWmribkyY03kEPZa', 'CBA'),
(0, 'ccjuser', '$2y$10$CpgUmwltEqCKK8QVUdgtduGjzydfO4AdDy1ftYzEj9sDA1dN08CH6', 'CCJ'),
(2, 'cetuser', '$2y$10$jiMhtUHelwwyPPfkNWFIgOpxb1yh9Af5wuARyqMtxH4.pz9iGOKeW', 'CET'),
(0, 'chsuser', '$2y$10$MBHobyNJkcH3xMHLx6Ctne.I3aQJnmETupyXNltswMXigRAnRkBoC', 'CHS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestform`
--
ALTER TABLE `requestform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`department`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `requestform`
--
ALTER TABLE `requestform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
