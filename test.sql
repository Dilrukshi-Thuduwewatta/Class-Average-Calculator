-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 08:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `my`
-- (See below for the actual view)
--
CREATE TABLE `my` (
`assessement_one` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `my1`
-- (See below for the actual view)
--
CREATE TABLE `my1` (
`assessement_two` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `my2`
-- (See below for the actual view)
--
CREATE TABLE `my2` (
`assessement_three` int(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(255) NOT NULL,
  `surename` varchar(255) NOT NULL,
  `assessement_one` int(255) NOT NULL,
  `assessement_two` int(255) NOT NULL,
  `assessement_three` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `surename`, `assessement_one`, `assessement_two`, `assessement_three`) VALUES
('James ', 'Walker', 9, 4, 10),
('Velma', ' Clemons', 5, 7, 4),
('Kibo ', 'Underwood', 7, 5, 7),
('Louis ', 'Mcgee', 5, 9, 5),
('Phyllis ', 'Paul', 10, 5, 9),
('Zenaida ', 'Decker', 4, 3, 5),
('Gillian ', 'Tillman', 7, 7, 9),
('Constance ', 'Boone', 5, 5, 5),
('Giselle ', 'Lancaster', 9, 8, 7),
('Kirsten ', 'Mcdowell', 5, 8, 5),
('John ', 'Marshall', 3, 7, 10),
('Merrill ', 'Carney', 7, 10, 7),
('Hakeem ', 'Gillespie', 5, 7, 5),
('Hayden ', 'Boyer', 8, 10, 5),
('Griffin ', 'Mcleod', -1, 4, 7),
('Allistair ', 'Patton', 7, 7, 5),
('Rina ', 'Slater', 10, 5, 10),
('Caldwell ', 'Skinner', 4, 9, 4),
('Portia ', 'Galloway', 7, 5, 7),
('Noelle ', 'Valentine', 5, 9, 5),
('Abel ', 'Clay', 9, 5, 9),
('Stephanie ', 'Kent', 5, 7, 5),
('Axel ', 'Petty', 9, 5, 3),
('Nevada ', 'Morales', 5, 7, 4),
('Fuller ', 'Bush', 7, 5, 7),
('Quinn ', 'Mayo', 5, 9, 5),
('Marcia ', 'Shepard', 10, 5, 9),
('Kieran ', 'Moody', 7, 3, 5),
('Brielle ', 'Thompson', 5, 7, 9),
('James ', 'Walker', 9, 4, 10),
('Velma', ' Clemons', 5, 7, 4),
('Kibo ', 'Underwood', 7, 5, 7),
('Louis ', 'Mcgee', 5, 9, 5),
('Phyllis ', 'Paul', 10, 5, 9),
('Zenaida ', 'Decker', 4, 3, 5),
('Gillian ', 'Tillman', 7, 7, 9),
('Constance ', 'Boone', 5, 5, 5),
('Giselle ', 'Lancaster', 9, 8, 7),
('Kirsten ', 'Mcdowell', 5, 8, 5),
('John ', 'Marshall', 3, 7, 10),
('Merrill ', 'Carney', 7, 10, 7),
('Hakeem ', 'Gillespie', 5, 7, 5),
('Hayden ', 'Boyer', 8, 10, 5),
('Griffin ', 'Mcleod', -1, 4, 7),
('Allistair ', 'Patton', 7, 7, 5),
('Rina ', 'Slater', 10, 5, 10),
('Caldwell ', 'Skinner', 4, 9, 4),
('Portia ', 'Galloway', 7, 5, 7),
('Noelle ', 'Valentine', 5, 9, 5),
('Abel ', 'Clay', 9, 5, 9),
('Stephanie ', 'Kent', 5, 7, 5),
('Axel ', 'Petty', 9, 5, 3),
('Nevada ', 'Morales', 5, 7, 4),
('Fuller ', 'Bush', 7, 5, 7),
('Quinn ', 'Mayo', 5, 9, 5),
('Marcia ', 'Shepard', 10, 5, 9),
('Kieran ', 'Moody', 7, 3, 5),
('Brielle ', 'Thompson', 5, 7, 9);

-- --------------------------------------------------------

--
-- Structure for view `my`
--
DROP TABLE IF EXISTS `my`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my`  AS SELECT `student`.`assessement_one` AS `assessement_one` FROM `student` LIMIT 0, 8 ;

-- --------------------------------------------------------

--
-- Structure for view `my1`
--
DROP TABLE IF EXISTS `my1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my1`  AS SELECT `student`.`assessement_two` AS `assessement_two` FROM `student` LIMIT 0, 8 ;

-- --------------------------------------------------------

--
-- Structure for view `my2`
--
DROP TABLE IF EXISTS `my2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my2`  AS SELECT `student`.`assessement_three` AS `assessement_three` FROM `student` LIMIT 0, 11 ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
