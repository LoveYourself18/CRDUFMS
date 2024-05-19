-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 07:54 PM
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
-- Database: `db_emodule`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_completed`
--

CREATE TABLE `form_completed` (
  `fcID` int(11) NOT NULL,
  `fcTitle` varchar(500) NOT NULL,
  `fcDescription` varchar(500) NOT NULL,
  `fcLink` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_completed`
--

INSERT INTO `form_completed` (`fcID`, `fcTitle`, `fcDescription`, `fcLink`) VALUES
(20180001, 'What is the title of the video', 'My Father', ''),
(20180002, 'Who is the name of the character in the story?', 'Ben', ''),
(20240003, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'hv,kv', ''),
(20240004, 'fnjhn', 'fhhhhhhh', ''),
(20240005, '', '', ''),
(20240006, '', '', ''),
(20240007, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `form_monitoring`
--

CREATE TABLE `form_monitoring` (
  `fmID` int(11) NOT NULL,
  `fmTitle` varchar(500) NOT NULL,
  `fmDescription` varchar(500) NOT NULL,
  `fmLink` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_monitoring`
--

INSERT INTO `form_monitoring` (`fmID`, `fmTitle`, `fmDescription`, `fmLink`) VALUES
(20180001, 'What is the title of the video', 'My Father', ''),
(20180002, 'Who is the name of the character in the story?', 'Ben', ''),
(20240003, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'hv,kv', ''),
(20240004, 'fnjhn', 'fhhhhhhh', ''),
(20240005, '', '', ''),
(20240006, '', '', ''),
(20240007, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `form_proposal`
--

CREATE TABLE `form_proposal` (
  `fpID` int(11) NOT NULL,
  `fpTitle` varchar(500) NOT NULL,
  `fpDescription` varchar(500) NOT NULL,
  `fpLink` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_proposal`
--

INSERT INTO `form_proposal` (`fpID`, `fpTitle`, `fpDescription`, `fpLink`) VALUES
(20180001, 'What is the title of the video', 'My Father', ''),
(20180002, 'Who is the name of the character in the story?', 'Ben', ''),
(20240003, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'hv,kv', ''),
(20240004, 'fnjhn', 'fhhhhhhh', ''),
(20240005, '', '', ''),
(20240006, '', '', ''),
(20240007, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `in_ext_com`
--

CREATE TABLE `in_ext_com` (
  `in_ext_com_ID` int(11) NOT NULL,
  `in_ext_com_title` varchar(500) NOT NULL,
  `in_ext_com_sender` varchar(500) NOT NULL,
  `in_ext_com_FileLocation` text NOT NULL,
  `in_ext_com_dateReceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_ext_com`
--

INSERT INTO `in_ext_com` (`in_ext_com_ID`, `in_ext_com_title`, `in_ext_com_sender`, `in_ext_com_FileLocation`, `in_ext_com_dateReceived`) VALUES
(34, 'Off-Campus Activity', 'Mark Emerson B. Cuya', 'files/Desiree V. Obsequio.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `in_int_com`
--

CREATE TABLE `in_int_com` (
  `in_int_com_ID` int(11) NOT NULL,
  `in_int_com_title` varchar(500) NOT NULL,
  `in_int_com_sender` varchar(500) NOT NULL,
  `in_int_com_FileLocation` text NOT NULL,
  `in_int_com_dateReceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_int_com`
--

INSERT INTO `in_int_com` (`in_int_com_ID`, `in_int_com_title`, `in_int_com_sender`, `in_int_com_FileLocation`, `in_int_com_dateReceived`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `memo_local`
--

CREATE TABLE `memo_local` (
  `memo_local_ID` int(11) NOT NULL,
  `memo_local_title` varchar(500) NOT NULL,
  `memo_local_sender` varchar(500) NOT NULL,
  `memo_local_FileLocation` text NOT NULL,
  `memo_local_dateReceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memo_local`
--

INSERT INTO `memo_local` (`memo_local_ID`, `memo_local_title`, `memo_local_sender`, `memo_local_FileLocation`, `memo_local_dateReceived`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `memo_oca`
--

CREATE TABLE `memo_oca` (
  `memo_oca_ID` int(11) NOT NULL,
  `memo_oca_title` varchar(500) NOT NULL,
  `memo_oca_sender` varchar(500) NOT NULL,
  `memo_oca_FileLocation` text NOT NULL,
  `memo_oca_dateReceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memo_oca`
--

INSERT INTO `memo_oca` (`memo_oca_ID`, `memo_oca_title`, `memo_oca_sender`, `memo_oca_FileLocation`, `memo_oca_dateReceived`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `memo_op`
--

CREATE TABLE `memo_op` (
  `memo_op_ID` int(11) NOT NULL,
  `memo_op_title` varchar(500) NOT NULL,
  `memo_op_sender` varchar(500) NOT NULL,
  `memo_op_FileLocation` text NOT NULL,
  `memo_op_dateReceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memo_op`
--

INSERT INTO `memo_op` (`memo_op_ID`, `memo_op_title`, `memo_op_sender`, `memo_op_FileLocation`, `memo_op_dateReceived`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `memo_others`
--

CREATE TABLE `memo_others` (
  `memo_others_ID` int(11) NOT NULL,
  `memo_others_title` varchar(500) NOT NULL,
  `memo_others_sender` varchar(500) NOT NULL,
  `memo_others_FileLocation` text NOT NULL,
  `memo_others_dateReceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memo_others`
--

INSERT INTO `memo_others` (`memo_others_ID`, `memo_others_title`, `memo_others_sender`, `memo_others_FileLocation`, `memo_others_dateReceived`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `memo_ovpri`
--

CREATE TABLE `memo_ovpri` (
  `memo_ovpri_ID` int(11) NOT NULL,
  `memo_ovpri_title` varchar(500) NOT NULL,
  `memo_ovpri_sender` varchar(500) NOT NULL,
  `memo_ovpri_FileLocation` text NOT NULL,
  `memo_ovpri_dateReceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memo_ovpri`
--

INSERT INTO `memo_ovpri` (`memo_ovpri_ID`, `memo_ovpri_title`, `memo_ovpri_sender`, `memo_ovpri_FileLocation`, `memo_ovpri_dateReceived`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `out_ext_com`
--

CREATE TABLE `out_ext_com` (
  `out_ext_com_ID` int(11) NOT NULL,
  `out_ext_com_title` varchar(500) NOT NULL,
  `out_ext_com_receiver` varchar(500) NOT NULL,
  `out_ext_com_FileLocation` text NOT NULL,
  `out_ext_com_dateSent` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `out_ext_com`
--

INSERT INTO `out_ext_com` (`out_ext_com_ID`, `out_ext_com_title`, `out_ext_com_receiver`, `out_ext_com_FileLocation`, `out_ext_com_dateSent`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `out_int_com`
--

CREATE TABLE `out_int_com` (
  `out_int_com_ID` int(11) NOT NULL,
  `out_int_com_title` varchar(500) NOT NULL,
  `out_int_com_receiver` varchar(500) NOT NULL,
  `out_int_com_FileLocation` text NOT NULL,
  `out_int_com_dateSent` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `out_int_com`
--

INSERT INTO `out_int_com` (`out_int_com_ID`, `out_int_com_title`, `out_int_com_receiver`, `out_int_com_FileLocation`, `out_int_com_dateSent`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', '0000-00-00'),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `reportID` int(11) NOT NULL,
  `reportTitle` varchar(500) NOT NULL,
  `reportDescription` varchar(500) NOT NULL,
  `reportYear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rf_citation`
--

CREATE TABLE `rf_citation` (
  `rf_citation_ID` int(11) NOT NULL,
  `rf_citation_title` varchar(500) NOT NULL,
  `rf_citation_desc` varchar(500) NOT NULL,
  `rf_citation_FileLocation` text NOT NULL,
  `rf_citation_yearUploaded` year(4) NOT NULL,
  `rf_citation_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rf_citation`
--

INSERT INTO `rf_citation` (`rf_citation_ID`, `rf_citation_title`, `rf_citation_desc`, `rf_citation_FileLocation`, `rf_citation_yearUploaded`, `rf_citation_remarks`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', 2018, ''),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', 2022, '');

-- --------------------------------------------------------

--
-- Table structure for table `rf_completed`
--

CREATE TABLE `rf_completed` (
  `rf_completed_ID` int(11) NOT NULL,
  `rf_completed_title` varchar(500) NOT NULL,
  `rf_completed_desc` varchar(500) NOT NULL,
  `rf_completed_FileLocation` text NOT NULL,
  `rf_completed_yearUploaded` year(4) NOT NULL,
  `rf_completed_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rf_completed`
--

INSERT INTO `rf_completed` (`rf_completed_ID`, `rf_completed_title`, `rf_completed_desc`, `rf_completed_FileLocation`, `rf_completed_yearUploaded`, `rf_completed_remarks`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', 2018, ''),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', 2022, '');

-- --------------------------------------------------------

--
-- Table structure for table `rf_ongoing`
--

CREATE TABLE `rf_ongoing` (
  `rf_ongoing_ID` int(11) NOT NULL,
  `rf_ongoing_title` varchar(500) NOT NULL,
  `rf_ongoing_desc` varchar(500) NOT NULL,
  `rf_ongoing_FileLocation` text NOT NULL,
  `rf_ongoing_yearUploaded` year(4) NOT NULL,
  `rf_ongoing_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rf_ongoing`
--

INSERT INTO `rf_ongoing` (`rf_ongoing_ID`, `rf_ongoing_title`, `rf_ongoing_desc`, `rf_ongoing_FileLocation`, `rf_ongoing_yearUploaded`, `rf_ongoing_remarks`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', 2018, ''),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', 2022, '');

-- --------------------------------------------------------

--
-- Table structure for table `rf_proposal`
--

CREATE TABLE `rf_proposal` (
  `rf_proposal_ID` int(11) NOT NULL,
  `rf_proposal_title` varchar(500) NOT NULL,
  `rf_proposal_desc` varchar(500) NOT NULL,
  `rf_proposal_FileLocation` text NOT NULL,
  `rf_proposal_yearUploaded` year(4) NOT NULL,
  `rf_proposal_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rf_proposal`
--

INSERT INTO `rf_proposal` (`rf_proposal_ID`, `rf_proposal_title`, `rf_proposal_desc`, `rf_proposal_FileLocation`, `rf_proposal_yearUploaded`, `rf_proposal_remarks`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', 2018, ''),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', 2022, '');

-- --------------------------------------------------------

--
-- Table structure for table `rf_published`
--

CREATE TABLE `rf_published` (
  `rf_published_ID` int(11) NOT NULL,
  `rf_published_title` varchar(500) NOT NULL,
  `rf_published_desc` varchar(500) NOT NULL,
  `rf_published_FileLocation` text NOT NULL,
  `rf_published_yearUploaded` year(4) NOT NULL,
  `rf_published_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rf_published`
--

INSERT INTO `rf_published` (`rf_published_ID`, `rf_published_title`, `rf_published_desc`, `rf_published_FileLocation`, `rf_published_yearUploaded`, `rf_published_remarks`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', 2018, ''),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', 2022, '');

-- --------------------------------------------------------

--
-- Table structure for table `rf_utilization`
--

CREATE TABLE `rf_utilization` (
  `rf_utilization_ID` int(11) NOT NULL,
  `rf_utilization_title` varchar(500) NOT NULL,
  `rf_utilization_desc` varchar(500) NOT NULL,
  `rf_utilization_FileLocation` text NOT NULL,
  `rf_utilization_yearUploaded` year(4) NOT NULL,
  `rf_utilization_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rf_utilization`
--

INSERT INTO `rf_utilization` (`rf_utilization_ID`, `rf_utilization_title`, `rf_utilization_desc`, `rf_utilization_FileLocation`, `rf_utilization_yearUploaded`, `rf_utilization_remarks`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', 0000, ''),
(32, 'ddhldibc', 'dcbcidlk ', 'files/Desiree V. Obsequio.pdf', 2018, ''),
(33, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, ves', 'files/z-table example.pdf', 2022, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 8, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` int(11) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(1, 'Marrkiee', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(3, 'mark', 'student', 'student', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_completed`
--
ALTER TABLE `form_completed`
  ADD PRIMARY KEY (`fcID`);

--
-- Indexes for table `form_monitoring`
--
ALTER TABLE `form_monitoring`
  ADD PRIMARY KEY (`fmID`);

--
-- Indexes for table `form_proposal`
--
ALTER TABLE `form_proposal`
  ADD PRIMARY KEY (`fpID`);

--
-- Indexes for table `in_ext_com`
--
ALTER TABLE `in_ext_com`
  ADD PRIMARY KEY (`in_ext_com_ID`);

--
-- Indexes for table `in_int_com`
--
ALTER TABLE `in_int_com`
  ADD PRIMARY KEY (`in_int_com_ID`);

--
-- Indexes for table `memo_local`
--
ALTER TABLE `memo_local`
  ADD PRIMARY KEY (`memo_local_ID`);

--
-- Indexes for table `memo_oca`
--
ALTER TABLE `memo_oca`
  ADD PRIMARY KEY (`memo_oca_ID`);

--
-- Indexes for table `memo_op`
--
ALTER TABLE `memo_op`
  ADD PRIMARY KEY (`memo_op_ID`);

--
-- Indexes for table `memo_others`
--
ALTER TABLE `memo_others`
  ADD PRIMARY KEY (`memo_others_ID`);

--
-- Indexes for table `memo_ovpri`
--
ALTER TABLE `memo_ovpri`
  ADD PRIMARY KEY (`memo_ovpri_ID`);

--
-- Indexes for table `out_ext_com`
--
ALTER TABLE `out_ext_com`
  ADD PRIMARY KEY (`out_ext_com_ID`);

--
-- Indexes for table `out_int_com`
--
ALTER TABLE `out_int_com`
  ADD PRIMARY KEY (`out_int_com_ID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `rf_citation`
--
ALTER TABLE `rf_citation`
  ADD PRIMARY KEY (`rf_citation_ID`);

--
-- Indexes for table `rf_completed`
--
ALTER TABLE `rf_completed`
  ADD PRIMARY KEY (`rf_completed_ID`);

--
-- Indexes for table `rf_ongoing`
--
ALTER TABLE `rf_ongoing`
  ADD PRIMARY KEY (`rf_ongoing_ID`);

--
-- Indexes for table `rf_proposal`
--
ALTER TABLE `rf_proposal`
  ADD PRIMARY KEY (`rf_proposal_ID`);

--
-- Indexes for table `rf_published`
--
ALTER TABLE `rf_published`
  ADD PRIMARY KEY (`rf_published_ID`);

--
-- Indexes for table `rf_utilization`
--
ALTER TABLE `rf_utilization`
  ADD PRIMARY KEY (`rf_utilization_ID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_completed`
--
ALTER TABLE `form_completed`
  MODIFY `fcID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20240008;

--
-- AUTO_INCREMENT for table `form_monitoring`
--
ALTER TABLE `form_monitoring`
  MODIFY `fmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20240008;

--
-- AUTO_INCREMENT for table `form_proposal`
--
ALTER TABLE `form_proposal`
  MODIFY `fpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20240008;

--
-- AUTO_INCREMENT for table `in_ext_com`
--
ALTER TABLE `in_ext_com`
  MODIFY `in_ext_com_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `in_int_com`
--
ALTER TABLE `in_int_com`
  MODIFY `in_int_com_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `memo_local`
--
ALTER TABLE `memo_local`
  MODIFY `memo_local_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `memo_oca`
--
ALTER TABLE `memo_oca`
  MODIFY `memo_oca_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `memo_op`
--
ALTER TABLE `memo_op`
  MODIFY `memo_op_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `memo_others`
--
ALTER TABLE `memo_others`
  MODIFY `memo_others_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `memo_ovpri`
--
ALTER TABLE `memo_ovpri`
  MODIFY `memo_ovpri_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `out_ext_com`
--
ALTER TABLE `out_ext_com`
  MODIFY `out_ext_com_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `out_int_com`
--
ALTER TABLE `out_int_com`
  MODIFY `out_int_com_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rf_citation`
--
ALTER TABLE `rf_citation`
  MODIFY `rf_citation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rf_completed`
--
ALTER TABLE `rf_completed`
  MODIFY `rf_completed_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rf_ongoing`
--
ALTER TABLE `rf_ongoing`
  MODIFY `rf_ongoing_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rf_proposal`
--
ALTER TABLE `rf_proposal`
  MODIFY `rf_proposal_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rf_published`
--
ALTER TABLE `rf_published`
  MODIFY `rf_published_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rf_utilization`
--
ALTER TABLE `rf_utilization`
  MODIFY `rf_utilization_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
