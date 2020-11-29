-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 05:53 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wt_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Username` varchar(30) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `CID` int(5) NOT NULL,
  `DID` int(5) NOT NULL,
  `DOV` date NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Username`, `Fname`, `Gender`, `CID`, `DID`, `DOV`, `Timestamp`, `Status`) VALUES
('Tbla', 'Benny', 'male', 1, 1, '2020-11-08', '2020-11-05 16:43:48', 'Booking Registered.Wait for the update');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `town` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `mid` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(1, 'PTA Womens Clinic', '231 Complex, Pretoria', 'Pretoria', 'Pretoria CBD', 27619988888, '1');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(2, 'Skinner street Clinic', 'Skinner street, Pretoria', 'Pretoria', 'Pretoria CBD', 277119988888, '2');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(3, 'Maria Rantho Clinic', 'Block L, Soshanguve', 'Pretoria', 'Soshanguve', 277919988888, '3');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(4, 'Boikhutsong Clinic', 'Block TT, Soshanguve', 'Pretoria', 'Soshanguve', 276419988888, '4');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(5, 'Tlamelong Clinic', 'Sedibeng, Mabopane', 'Pretoria', 'Mabopane', 277219988888, '5');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(6, 'Sedilega Clinic', 'Magareng, Mabopane', 'Pretoria', 'Mabopane', 276019988888, '6');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(7, 'Ga-Rankuwa View Clinic', 'View Point, Ga-Rankuwa', 'Pretoria', 'Ga-Rankuwa', 277419988888, '7');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(8, 'Pretori North Clinic', 'Pretori North', 'Pretoria', 'Pretoria North', 277419988888, '8');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(9, 'Medicross Medical Centre', 'Pretori West', 'Pretoria', 'Pretoria West', 277319988888, '9');

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(10, 'Garsfontein Clinic', 'Pretori', 'Pretoria', 'Pretoria East', 278419988888, '10');
-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `experience` int(11) NOT NULL,
  `specialization` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'Dr Mathabatha', 'Male', '1980-01-01', 10, 'Neurologist', 27829999999, '143 kgaleha street Pretoria, GP', 'Phaidi', 'doctor', 'Pretoria CBD');

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(2, 'Dr Mathibe', 'Female', '1981-12-13', 5, 'Cardiologist', 27719999999, '123 Ngwai street block M Soshanguve, GP', 'Benny', 'doctor', 'Soshanguve');

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(3, 'Dr Mmethi', 'Male', '1978-08-12', 9, 'Dermatologist', 27729999999, '497 Suider street Pretoria North, GP', 'Lebo', 'doctor', 'Mabopane');

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(4, 'Dr Siyemela', 'Male', '19781-06-14', 7, 'Dentist', 27629999999, '343 Merithing Mabopane, GP', 'Lister', 'doctor', 'Ga-Rankuwa');

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(5, 'Dr Baloyi', 'Male', '1968-01-03', 11, 'General Physician', 27649999999, '221 Makaringi street block L Soshanguve, GP', 'Matimba', 'doctor', 'Pretoria North');

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(6, 'Dr Morena', 'Female', '1978-09-01', 12, 'Anesthesiologists', 27829999990, '146 kgaleha street Pretoria, GP', 'Nicco', 'doctor', 'Pretoria West');

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(7, 'Dr Mohlapamaswi', 'Female', '1982-03-06', 3, 'Endocrinologists ', 27829999991, '146 Constantine street Pretoria, GP', 'Germina', 'doctor', 'Pretoria East');
-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`cid`, `did`, `day`, `starttime`, `endtime`) VALUES
(1, 1, 'Monday', '11:00:00', '14:00:00'),
(1, 2, 'Monday', '08:00:00', '11:00:00'),
(1, 3, 'Monday', '14:00:00', '17:00:00'),
(2, 2, 'Tuesday', '08:00:00', '11:00:00'),
(2, 4, 'Tuesday', '11:00:00', '14:00:00'),
(2, 5, 'Tuesday', '14:00:00', '17:00:00'),
(3, 3, 'Wednesday', '08:00:00', '11:00:00');
(3, 6, 'Wednesday', '11:00:00', '14:00:00');
(3, 7, 'Wednesday', '14:00:00', '17:00:00');
(4, 4, 'Thursday', '08:00:00', '11:00:00'),
(4, 1, 'Thursday', '11:00:00', '14:00:00'),
(4, 2, 'Thursday', '14:00:00', '17:00:00'),
(5, 5, 'Friday', '08:00:00', '11:00:00'),
(5, 3, 'Friday', '11:00:00', '14:00:00'),
(5, 4, 'Friday', '14:00:00', '17:00:00'),
(6, 6, 'Saturday', '09:00:00', '12:00:00');
(6, 5, 'Saturday', '12:00:00', '15:00:00');
(7, 7, 'Sunday', '09:00:00', '12:00:00');
(7, 6, 'Sunday', '12:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mid`, `name`, `gender`, `dob`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'Manager', 'Male', '1990-01-01', 0718899999, '132 complex GP', 'manager', 'manager', 'Gauteng');

-- --------------------------------------------------------

--
-- Table structure for table `manager_clinic`
--

CREATE TABLE `manager_clinic` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_clinic`
--

INSERT INTO `manager_clinic` (`cid`, `mid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('Phaidi', 'Male', '1985-05-07', 27647897897, 'user@phaidi.com', 'Phaidi', 'patient');

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('Benny', 'Female', '1986-12-13', 27797897897, 'user@benny.com', 'Benny', 'patient');

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('Lebogang', 'Male', '1970-08-14', 27717897897, 'user@lebo.com', 'Lebo', 'patient');

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('Lister', 'Male', '1974-06-12', 27737897897, 'user@lister.com', 'Lister', 'patient');

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('Matimba', 'Male', '1969-01-03', 27717897897, 'user@matimba.com', 'Matimba', 'patient');
-- ---------------------------------------------------------------------------------------

-- Table structure for table 'town'
--
CREATE TABLE `town` (
  'province' varchar(30) NOT NULL,
  'city' varchar(30) NOT NULL,
  'town' varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'town'
--
INSERT INTO 'town' ('province', 'city', 'town') VALUES
('Gauteng', 'Pretoria', 'Soshanguve');

INSERT INTO 'town' ('province', 'city', 'town') VALUES
('Gauteng', 'Pretoria', 'Mabopane');

INSERT INTO 'town' ('province', 'city', 'town') VALUES
('Gauteng', 'Pretoria', 'Ga-Rankuwa');

INSERT INTO 'town' ('province', 'city', 'town') VALUES
('Gauteng', 'Pretoria', 'Pretoria North');

INSERT INTO 'town' ('province', 'city', 'town') VALUES
('Gauteng', 'Pretoria', 'Pretoria West');

INSERT INTO 'town' ('province', 'city', 'town') VALUES
('Gauteng', 'Pretoria', 'Pretoria East');
-------------------------------------------------------------------------------------------
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Username`,`Fname`,`DOV`,`Timestamp`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`cid`,`name`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`cid`,`did`,`day`,`starttime`,`endtime`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `manager_clinic`
--
ALTER TABLE `manager_clinic`
  ADD PRIMARY KEY (`cid`,`mid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`email`,`username`);

--
-- Indexes for table 'town'
--
ALTER TABLE `Ttown`
  ADD PRIMARY KEY ('province', 'city');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
