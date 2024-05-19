-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 04:29 PM
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
-- Table structure for table `in_ext_com`
--

CREATE TABLE `in_ext_com` (
  `in_ext_com_ID` int(11) NOT NULL,
  `in_ext_com_title` varchar(500) NOT NULL,
  `in_ext_com_desc` varchar(500) NOT NULL,
  `in_ext_com_FileLocation` text NOT NULL,
  `in_ext_com_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_ext_com`
--

INSERT INTO `in_ext_com` (`in_ext_com_ID`, `in_ext_com_title`, `in_ext_com_desc`, `in_ext_com_FileLocation`, `in_ext_com_year`) VALUES
(30, 'fhgf', 'hth', 'files/Desiree V. Obsequio.pdf', 0000),
(31, 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'https://docs.google.com/document/d/1QO1hlgnAwIkDs4GGQOJdPhiO8pAY2K9-/edit', 'files/Desiree V. Obsequio.pdf', 0000);

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
-- Table structure for table `tblexercise`
--

CREATE TABLE `tblexercise` (
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20180001, 6, 'What is the title of the video', 'My Father', 'My Mother', 'My Brother', 'My Sister', 'My Father', '0000-00-00'),
(20180002, 6, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'd', '0000-00-00'),
(20240003, 16, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc', '0000-00-00'),
(20240004, 19, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh', '0000-00-00'),
(20240005, 0, '', '', '', '', '', '', '0000-00-00'),
(20240006, 0, '', '', '', '', '', '', '0000-00-00'),
(20240007, 0, '', '', '', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE `tblscore` (
  `ScoreID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT 1,
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`ScoreID`, `LessonID`, `ExerciseID`, `StudentID`, `NoItems`, `Score`, `Submitted`) VALUES
(9, 6, 20180001, 1, 1, 1, 1),
(10, 6, 20180002, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `StudentID` int(11) NOT NULL,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(1, 'a', 'a', 'a', '21', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(2, 'sd', 'sad', 'sad', '231', 'a', 'a0f1490a20d0211c997b44bc357e1972deab8ae3'),
(3, 'dfghj', 'vbj', 'dgfhghmm', '13456789', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(4, 'ythrgtrfdeaa', 'iuytr', 'oiuyt', '09916685763', 'admin1', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a'),
(5, 'ythrgtrfdeaa', 'iuytr', 'oiuyt', '098765433334', 'admin1', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a'),
(6, 'ythrgtrfdeaa', 'iuytr', 'oiuyt', '09876543456', 'Admin3', 'd4d6858c1e2245abfa696dcdf8878fdda822d9bb'),
(7, 'ythrgtrfdeaa', 'iuytr', 'oiuyt', '09876543456', 'Admin3', 'd4d6858c1e2245abfa696dcdf8878fdda822d9bb'),
(8, 'wertyu', 'dfghj', 'fdfdfrtyj', '098765456', 'adminn', 'd8ed7457a3464c783a4485c5173c8adce2210c1a');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentquestion`
--

CREATE TABLE `tblstudentquestion` (
  `SQID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(1, 20180002, 0, 1, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(2, 20180002, 0, 2, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(3, 20240003, 0, 1, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(4, 20240003, 0, 2, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(5, 20240003, 0, 3, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(6, 20240003, 0, 4, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(7, 20240003, 0, 5, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(8, 20240003, 0, 6, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(9, 20240003, 0, 7, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(10, 20240003, 0, 8, 'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in', 'hv,kv', 'tdcf', 'jhfmv', 'fmc', 'fmc'),
(11, 20240004, 0, 1, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(12, 20240004, 0, 2, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(13, 20240004, 0, 3, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(14, 20240004, 0, 4, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(15, 20240004, 0, 5, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(16, 20240004, 0, 6, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(17, 20240004, 0, 7, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(18, 20240004, 0, 8, 'fnjhn', 'fhhhhhhh', 'hhhhhh', 'gttttttttttffffffffff', 'ddddddddddddd', 'hhhhhh'),
(19, 20240005, 0, 1, '', '', '', '', '', ''),
(20, 20240005, 0, 2, '', '', '', '', '', ''),
(21, 20240005, 0, 3, '', '', '', '', '', ''),
(22, 20240005, 0, 4, '', '', '', '', '', ''),
(23, 20240005, 0, 5, '', '', '', '', '', ''),
(24, 20240005, 0, 6, '', '', '', '', '', ''),
(25, 20240005, 0, 7, '', '', '', '', '', ''),
(26, 20240005, 0, 8, '', '', '', '', '', ''),
(27, 20240006, 0, 1, '', '', '', '', '', ''),
(28, 20240006, 0, 2, '', '', '', '', '', ''),
(29, 20240006, 0, 3, '', '', '', '', '', ''),
(30, 20240006, 0, 4, '', '', '', '', '', ''),
(31, 20240006, 0, 5, '', '', '', '', '', ''),
(32, 20240006, 0, 6, '', '', '', '', '', ''),
(33, 20240006, 0, 7, '', '', '', '', '', ''),
(34, 20240006, 0, 8, '', '', '', '', '', ''),
(35, 20240007, 0, 1, '', '', '', '', '', ''),
(36, 20240007, 0, 2, '', '', '', '', '', ''),
(37, 20240007, 0, 3, '', '', '', '', '', ''),
(38, 20240007, 0, 4, '', '', '', '', '', ''),
(39, 20240007, 0, 5, '', '', '', '', '', ''),
(40, 20240007, 0, 6, '', '', '', '', '', ''),
(41, 20240007, 0, 7, '', '', '', '', '', ''),
(42, 20240007, 0, 8, '', '', '', '', '', '');

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
-- Indexes for table `in_ext_com`
--
ALTER TABLE `in_ext_com`
  ADD PRIMARY KEY (`in_ext_com_ID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblexercise`
--
ALTER TABLE `tblexercise`
  ADD PRIMARY KEY (`ExerciseID`);

--
-- Indexes for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD PRIMARY KEY (`ScoreID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`StudentID`) USING BTREE;

--
-- Indexes for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  ADD PRIMARY KEY (`SQID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `in_ext_com`
--
ALTER TABLE `in_ext_com`
  MODIFY `in_ext_com_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblexercise`
--
ALTER TABLE `tblexercise`
  MODIFY `ExerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20240008;

--
-- AUTO_INCREMENT for table `tblscore`
--
ALTER TABLE `tblscore`
  MODIFY `ScoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  MODIFY `SQID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
