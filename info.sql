-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 09:21 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `path` text NOT NULL,
  `grade_id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `path`, `grade_id`, `name`) VALUES
(1, '2_1543521890.jpg', 3, '2'),
(2, 'files/2_1543522069.jpg', 3, '2'),
(3, 'files/2_1543522475.jpg', 3, '2'),
(4, 'files/FM_1543523592.docx', 3, '0'),
(5, 'files/tranim_1543523698.docx', 3, '0'),
(6, 'files/tranim_1543523719.docx', 3, '0'),
(7, 'files/tranim_1543523753.docx', 3, '0'),
(8, 'files/bdlog_1543524348.txt', 1, '0'),
(9, 'files/bdlog_1543570092.txt', 1, '0'),
(10, 'files/EA-sec 4_1543570131.pptx', 1, '0'),
(11, 'files/EA-sec 4_1543574131.pptx', 0, '0'),
(12, 'files/EA-sec 4_1543574139.pptx', 0, '0'),
(13, 'files/IT441-EA-1_1543574811.pdf', 0, '0'),
(14, 'files/EA-sec 2_1543574845.pptx', 0, '0'),
(15, 'files/EA_1543575079.pdf', 4, '0'),
(16, 'files/19575-MDMerge_1543608069.log', 2, '0'),
(17, 'files/19575-MDMerge_1543608738.log', 2, 'tttttt');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `pass` int(15) DEFAULT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`FirstName`, `LastName`, `Email`, `pass`, `grade`) VALUES
('kkkkk', '', '', 0, 0),
('kij', 'knmkl', 'gg@gg.com', 241, 0),
('kirolos', 'fayek', 'gg@kk.com', 5555, 4),
('kk', 'kk', 'goka@hotmail.com', 123456, 1),
('jhh', 'kkkk', 'gokaa@gmail.com', 0, 0),
('hh', 'jjjj', 'gokka@gmail.com', 0, 0),
('ll', 'll', 'gooka@hotmail.com', 123, 2),
('', '', 'gorgre@gmail.com', 23232323, 0),
('kkkkk', 'ddd', 'k@yahoo.com', 0, 1),
('kkkkk', 'ddd', 'kkk@yahoo.com', 0, 1),
('kkkkk', 'ddd', 'kkkk@yahoo.com', 123, 1),
('rr', 'kkk', 'lm@mvckm.com', 1234, 0),
('rr', 'kkk', 'lm@mvcm.com', 55555, 0),
('mario', 'gamal', 'mario.gamal@xware.co', 123456, 3),
('1', '2', 'mario@gmail.com', 4, 1),
('', '', 'mina@gamil.com', 12345, 0),
('kirolos', 'gamil', 'minazaaaa@gmail.com', 33, 1),
('fg', 'dd', 'mm@gmail.com', 3333, 2),
('fg', 'dd', 'mmm@gmail.com', 0, 2),
('kokas', 'fayek', 'mmm@yahoo.com', 12345, 2),
('miii', 'nnnn', 'nina@gmail.com', 5555, 0),
('miii', 'nnnn', 'nvffkla@gmail.com', 6555, 0),
('miii', 'nnnn', 'nvfkvfkla@gmail.com', 8888, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
