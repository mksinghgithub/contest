-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 07:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blockchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_info`
--

CREATE TABLE `aadhar_info` (
  `name` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Dob` date NOT NULL DEFAULT current_timestamp(),
  `Account_address` varchar(100) NOT NULL,
  `Aadharno` varchar(20) NOT NULL,
  `Is_registered` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aadhar_info`
--

INSERT INTO `aadhar_info` (`name`, `Email`, `Dob`, `Account_address`, `Aadharno`, `Is_registered`) VALUES
('mksingh', 'mksinghaurngabad@gmail.com', '1979-01-06', '0xBFf96BdD1bF659A2fAb0549a9e9c7AB085288F38', '2456324521', NULL),
('mksingh', 'mksinghaurngabad@gmail.com', '1979-01-06', '0xBFf96BdD1bF659A2fAb0549a9e9c7AB085288F38', '2456324521', NULL),
('murari', 'mksinghaurnganad@gmail.com', '1979-05-15', '0x723ef23086aF9FA9B26e5a158ef89C39918Fc7e0', '1234568745', 'YES'),
('mohanSingh', 'mksinghaurngabad@gmail.com', '2001-05-15', '0x7dBBB7EaE65a4497fB02179Bb1971974349bF8e0', '23456789', 'YES'),
('Vanij', 'mksinghjamia@gmail.com', '1992-05-03', '0x203c4A41C62B73981B3F704822A90e125E22eea1', '245879', 'YES'),
('aman', 'aman@gmail.com', '1980-05-06', '0xe51B6fC88fBeD68C11E57bD653554D41F3964C57', '456789', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `party` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `Account_address` varchar(100) NOT NULL,
  `Is_registered` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`name`, `age`, `party`, `qualification`, `Account_address`, `Is_registered`) VALUES
('Vanij', 34, 'BJP', 'BE', '0x203c4A41C62B73981B3F704822A90e125E22eea1', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(25) NOT NULL,
  `confirm_password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`first_name`, `last_name`, `email_address`, `gender`, `password`, `confirm_password`) VALUES
('Grafana', 'grafana', 'Grafana@gmail.com', 'Male', 'grafana', 'grafana]'),
('Grafana', NULL, 'Grafana@gmail.com', NULL, 'grafana', 'grafana'),
('mksingh', NULL, 'Grafana1@gmail.com', NULL, 'grafana1', 'grafana1'),
('Narayana', NULL, 'narayana@gmail.com', NULL, '12345', '12345'),
('Narayana', NULL, 'narayana@gmail.com', NULL, '12345', '12345'),
('vanij', NULL, 'vanij@gmail.com', NULL, 'vanij', 'vanij'),
('ankit', NULL, 'ankit@gmail.com', NULL, 'ankit', 'ankit'),
('akshita', NULL, 'akshita@gmail.com', NULL, 'akshita', 'akshita'),
('aman', NULL, 'aman@gmail.com', NULL, 'aman', 'aman');

-- --------------------------------------------------------

--
-- Table structure for table `user login`
--

CREATE TABLE `user login` (
  `NAME` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Comfirm Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user login`
--

INSERT INTO `user login` (`NAME`, `Email`, `Password`, `Comfirm Password`) VALUES
('Grafana', 'Grafana@gmail.com', 'grafana', 'grafana');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `confirm password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `confirm password`) VALUES
('Grafana', 'Grafana@gmail.com', 'grafana', 'grafana');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
