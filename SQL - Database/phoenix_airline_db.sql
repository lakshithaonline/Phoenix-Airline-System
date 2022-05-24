-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 08:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenix_airline_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `acceptg1` (IN `username` VARCHAR(255))  BEGIN
Start TRANSACTION;
INSERT INTO grade01staff
SELECT uname,fullname,empid,password from temp_staff_details
WHERE uname = username;





INSERT INTO stafflogin
SELECT uname, password from temp_staff_details
WHERE uname = username;





DELETE
FROM temp_staff_details
WHERE uname = username;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `acceptg2` (IN `username` VARCHAR(255))  BEGIN
Start TRANSACTION;
INSERT INTO grade02staff
SELECT uname,fullname,empid,password from temp_staff_details
WHERE uname = username;





INSERT INTO stafflogin02
SELECT uname, password from temp_staff_details
WHERE uname = username;





DELETE
FROM temp_staff_details
WHERE uname = username;
COMMIT;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`uname`, `password`) VALUES
('admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `bookflight`
--

CREATE TABLE `bookflight` (
  `uname` varchar(80) NOT NULL,
  `tripmethod` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `passportid` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `departure` varchar(100) NOT NULL,
  `arrival` varchar(100) NOT NULL,
  `departuredate` varchar(20) NOT NULL,
  `returndate` varchar(20) NOT NULL,
  `classtype` varchar(50) NOT NULL,
  `adult` varchar(50) NOT NULL,
  `child` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookflight`
--

INSERT INTO `bookflight` (`uname`, `tripmethod`, `fullname`, `passportid`, `email`, `departure`, `arrival`, `departuredate`, `returndate`, `classtype`, `adult`, `child`) VALUES
('savindu', 'Roundtrip', 'Savindu Rachinthana', '456556666665E', 'isavindurachintha@gmail.com', 'Chichago', 'Amsterdam', '2022-05-23', '2022-05-24', 'Business', '2', '1'),
('digital', 'Roundtrip', 'Lakshistha Getthmal', '55555558846262E', 'geethmal@gmail.com', 'Canada', 'Australia', '2022-05-25', '2022-05-26', 'Business', '3', '2'),
('John01', 'Roundtrip', 'John Wick', '41554752224442E', 'johnwick@gmail.com', 'Chichago', 'Amsterdam', '2022-05-23', '2022-05-24', 'Business', '2', '1'),
('wicky03', 'Roundtrip', 'John Wick', '4556544666444E', 'johnwicky@gmail.com', 'Chicago', 'Amsterdam', '2022-05-23', '2022-05-24', 'Business', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `contactmsg`
--

CREATE TABLE `contactmsg` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `messege` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactmsg`
--

INSERT INTO `contactmsg` (`name`, `email`, `phoneno`, `messege`) VALUES
('Savindu Rachinthana', 'isavindurachintha@gmail.com', '0766031056', 'plz help meLLlsufsfsgfysgsb sisfhf\r\nsfsufsfusfsf'),
('Getthmal', 'geethmal@gmail.com', '0766031056', 'plssshfusfhsifsfhffaff'),
('Savindu Rachinthana', 'isavindurachintha@gmail.com', '0766031056', 'Can you please help me? \r\nI have an issue with flight A7003.'),
('John Wick', 'johnwick@gmail.com', '07788955555', 'can you plesase help me?'),
('John Wicky', 'johnwicky@gmail.com', '+1455226545541', 'Can you Please help me? I have an issue with a flight.');

-- --------------------------------------------------------

--
-- Table structure for table `flightsinformations`
--

CREATE TABLE `flightsinformations` (
  `flightid` varchar(100) NOT NULL,
  `flightfrom` varchar(150) NOT NULL,
  `flightto` varchar(150) NOT NULL,
  `departdate` varchar(100) NOT NULL,
  `returndate` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightsinformations`
--

INSERT INTO `flightsinformations` (`flightid`, `flightfrom`, `flightto`, `departdate`, `returndate`, `time`) VALUES
('A280', 'Chichago', 'Amsterdam', '2022-05-23', '2022-05-24', '17:22'),
('A280', 'Chichago', 'Amsterdam', '2022-05-23', '2022-05-24', '05:23'),
('A7003', 'Chichago', 'Amsterdam', '2022-05-23', '2022-05-24', '10:29'),
('A320', 'Canada ', 'autralia', '2022-05-24', '2022-05-25', '05:25'),
('A320', 'Canada ', 'autralia', '2022-05-25', '2022-05-26', '19:28'),
('A3000', 'Bangaladeshs', 'India', '2022-05-29', '2022-05-30', '09:30'),
('A7003', 'Chichago', 'Amsterdam', '2022-05-26', '2022-05-27', '11:34'),
('A3000', 'Bangaladesh', 'India', '2022-05-26', '2022-05-27', '11:42'),
('A330', 'Nepal', 'Srilanka', '2022-05-27', '2022-05-28', '09:32');

-- --------------------------------------------------------

--
-- Table structure for table `flightstatus`
--

CREATE TABLE `flightstatus` (
  `flightid` varchar(100) NOT NULL,
  `flightfrom` varchar(150) NOT NULL,
  `flightto` varchar(150) NOT NULL,
  `time` varchar(100) NOT NULL,
  `flghtstatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightstatus`
--

INSERT INTO `flightstatus` (`flightid`, `flightfrom`, `flightto`, `time`, `flghtstatus`) VALUES
('A280', 'Chichago', 'Amsterdam', '02:30', 'on time'),
('A320', 'canada', 'autralia', '14:30', 'not available'),
('A7003', 'Canada ', 'autralia', '03:55', 'on time'),
('A280', 'Chichago', 'Amsterdam', '22:44', 'on time'),
('A7003', 'Chichago', 'Amsterdam', '23:39', 'on time'),
('A280', 'canada', 'Amsterdam', '10:41', 'on time'),
('A7003', 'canada', 'autralia', '', ''),
('A3000', 'Bangaladeshs', 'India', '22:48', 'not available'),
('A280', 'Chichago', 'Amsterdam', '17:22', 'on time'),
('A280', 'Chichago', 'Amsterdam', '05:23', 'not available'),
('A7003', 'Chichago', 'Amsterdam', '10:29', 'on time'),
('A320', 'Canada ', 'autralia', '05:25', 'on time'),
('A320', 'Canada ', 'autralia', '19:28', 'not available'),
('A3000', 'Bangaladeshs', 'India', '09:30', 'on time'),
('A7003', 'Chichago', 'Amsterdam', '11:34', 'not available'),
('A3000', 'Bangaladesh', 'India', '11:42', 'on time'),
('A330', 'Nepal', 'Srilanka', '09:32', 'on time');

-- --------------------------------------------------------

--
-- Table structure for table `grade01staff`
--

CREATE TABLE `grade01staff` (
  `uname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade01staff`
--

INSERT INTO `grade01staff` (`uname`, `fullname`, `empid`, `password`) VALUES
('savi', 'Savindu Rachinthana', 'sadadad', '202cb962ac59075b964b07152d234b70'),
('ddd', 'Savindu Rachinthana', 'dssd', '77963b7a931377ad4ab5ad6a9cd718aa'),
('ssd', 'Ameesha shyni', 'ffffffffff', 'd4576b3b305e1df6f8ef4517ec2f9615'),
('amee1', 'Ameesha shyni', 'savindu', '8a6496ffe392a21c6b6161ca9c2862b2'),
('wicky01', 'John Wick', 'E2051', '4c144c47ecba6f8318128703ca9e2601'),
('Noah', 'Noah Lucas', 'E1589999', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `grade02staff`
--

CREATE TABLE `grade02staff` (
  `uname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade02staff`
--

INSERT INTO `grade02staff` (`uname`, `fullname`, `empid`, `password`) VALUES
('ameesha', 'ammesha shyni', '4566ds', ''),
('sa1', 'Savindu Rachinthana', 'amee', 'b4169f3b7f14193ebfee9110a161d23a'),
('Lakshitha01', 'Geethmal Lakshitha', 'E2050', '2d579dc29360d8bbfbb4aa541de5afa9'),
('Charlotte', 'Charlotte Elena', 'E4566665', '0053c0e40eedf86b674d92d0238123ec');

-- --------------------------------------------------------

--
-- Table structure for table `stafflogin`
--

CREATE TABLE `stafflogin` (
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stafflogin`
--

INSERT INTO `stafflogin` (`uname`, `password`) VALUES
('afg', '3def184ad8f4755ff269862ea77393dd'),
('savindu', '202cb962ac59075b964b07152d234b70'),
('vishwa', '202cb962ac59075b964b07152d234b70'),
('admin', '202cb962ac59075b964b07152d234b70'),
('vishwaaa', '3def184ad8f4755ff269862ea77393dd'),
('savi', '202cb962ac59075b964b07152d234b70'),
('ameee', '9996535e07258a7bbfd8b132435c5962'),
('ddd', '77963b7a931377ad4ab5ad6a9cd718aa'),
('ssd', 'd4576b3b305e1df6f8ef4517ec2f9615'),
('amee1', '8a6496ffe392a21c6b6161ca9c2862b2'),
('wicky01', '4c144c47ecba6f8318128703ca9e2601'),
('Noah', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `stafflogin02`
--

CREATE TABLE `stafflogin02` (
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stafflogin02`
--

INSERT INTO `stafflogin02` (`uname`, `password`) VALUES
('ameesha', '202cb962ac59075b964b07152d234b70'),
('adad', '202cb962ac59075b964b07152d234b70'),
('dhdhf', '81dc9bdb52d04dc20036dbd8313ed055'),
('admin', '202cb962ac59075b964b07152d234b70'),
('adadw', '861637a425ef06e6d539aaaff113d1d5'),
('sss', '9f6e6800cfae7749eb6c486619254b9c'),
('sa1', 'b4169f3b7f14193ebfee9110a161d23a'),
('Asrir', '202cb962ac59075b964b07152d234b70'),
('Asrir', '202cb962ac59075b964b07152d234b70'),
('Lakshitha01', '2d579dc29360d8bbfbb4aa541de5afa9'),
('Charlotte', '0053c0e40eedf86b674d92d0238123ec');

-- --------------------------------------------------------

--
-- Table structure for table `temp_staff_details`
--

CREATE TABLE `temp_staff_details` (
  `uname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `empid` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_staff_details`
--

INSERT INTO `temp_staff_details` (`uname`, `fullname`, `empid`, `password`) VALUES
('xdsd', 'Savindu Rachinthana', 'daadd', '3def184ad8f4755ff269862ea77393dd'),
('savindu', 'Ameesha shyni', 'afsff', '35f4a8d465e6e1edc05f3d8ab658c551'),
('amee shyni', 'Ameesha shyni', 'savindu', 'c2f7ab46df3db842040a86a0897a5377');

-- --------------------------------------------------------

--
-- Table structure for table `temp_staff_login`
--

CREATE TABLE `temp_staff_login` (
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_staff_login`
--

INSERT INTO `temp_staff_login` (`uname`, `password`) VALUES
('admin', '202cb962ac59075b964b07152d234b70'),
('adad', '202cb962ac59075b964b07152d234b70'),
('vishwaaa', '3def184ad8f4755ff269862ea77393dd'),
('ameesha', '202cb962ac59075b964b07152d234b70'),
('admin', '202cb962ac59075b964b07152d234b70'),
('dhdhf', '81dc9bdb52d04dc20036dbd8313ed055'),
('xdsd', '3def184ad8f4755ff269862ea77393dd'),
('savindu', '35f4a8d465e6e1edc05f3d8ab658c551'),
('adadw', '861637a425ef06e6d539aaaff113d1d5'),
('amee shyni', 'c2f7ab46df3db842040a86a0897a5377'),
('savi', '202cb962ac59075b964b07152d234b70'),
('ameee', '9996535e07258a7bbfd8b132435c5962'),
('sss', '9f6e6800cfae7749eb6c486619254b9c'),
('ddd', '77963b7a931377ad4ab5ad6a9cd718aa'),
('ssd', 'd4576b3b305e1df6f8ef4517ec2f9615'),
('amee1', '8a6496ffe392a21c6b6161ca9c2862b2'),
('sa1', 'b4169f3b7f14193ebfee9110a161d23a'),
('Asrir', '202cb962ac59075b964b07152d234b70'),
('Asrir', '202cb962ac59075b964b07152d234b70'),
('Lakshitha01', '2d579dc29360d8bbfbb4aa541de5afa9'),
('wicky01', '4c144c47ecba6f8318128703ca9e2601'),
('Noah', '81dc9bdb52d04dc20036dbd8313ed055'),
('Charlotte', '0053c0e40eedf86b674d92d0238123ec');

-- --------------------------------------------------------

--
-- Table structure for table `ticketdetails`
--

CREATE TABLE `ticketdetails` (
  `ticketid` varchar(100) NOT NULL,
  `flightid` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketdetails`
--

INSERT INTO `ticketdetails` (`ticketid`, `flightid`, `uname`) VALUES
('1000', 'A230', 'savi'),
('TI0.9265422911633523', 'A7003', 'savin'),
('TI0.3009371249979983', 'A280', 'amee1'),
('TI0.4013164754366556', 'A280', 'savindu'),
('TI0.6390552948425833', 'A7003', 'savindu'),
('TI0.16144020860823938', 'A280', 'digital'),
('TI0.4137097524951361', 'A280', 'savindu'),
('TI0.9270940640979478', 'A7003', 'digital'),
('TI0.37076033878361037', 'A280', 'John01'),
('TI0.6829109366756219', 'A7003', 'wicky03');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `uname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`uname`, `fullname`, `email`, `password`) VALUES
('savindu', 'Savindu Ranga', 'savin@gmail', '	\r\n202cb962ac59075b964b07152d234b70'),
('digital', 'Lakshitha', 'geethmallakshitha@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('wicky02', 'John Wick', 'johnwick@gmail.com', 'dfe9d29b9b383e5970f8da42b29ae022'),
('wicky03', 'John Wicky', 'johnwicky@gmail.com', '558813098d0d0df9a9d19aaed8df75fd');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `uname` varchar(35) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`uname`, `password`) VALUES
('xxx', '202cb962ac59075b964b07152d234b70'),
('amee', '89a639b309bba0b0961342c0d548894c'),
('admin', '202cb962ac59075b964b07152d234b70'),
('admin', '0192023a7bbd73250516f069df18b500'),
('admin', '2ca2fb88fa0bb97553f120bfef0f834f'),
('savindu', '202cb962ac59075b964b07152d234b70'),
('amee', '81dc9bdb52d04dc20036dbd8313ed055'),
('amee', '0192023a7bbd73250516f069df18b500'),
('savindu', '0192023a7bbd73250516f069df18b500'),
('visa', '202cb962ac59075b964b07152d234b70'),
('asas', '3def184ad8f4755ff269862ea77393dd'),
('adadw', '17946929196fe8db90453ec82d5f52e7'),
('amee', '3def184ad8f4755ff269862ea77393dd'),
('ameee', '81dc9bdb52d04dc20036dbd8313ed055'),
('adad', 'dcf5500c7e53721d4b016e4793d5dd66'),
('digital', '81dc9bdb52d04dc20036dbd8313ed055'),
('savindu02', '7b7a53e239400a13bd6be6c91c4f6c4e'),
('John01', '6e0b7076126a29d5dfcbd54835387b7b'),
('John01', '6e0b7076126a29d5dfcbd54835387b7b'),
('wicky02', 'dfe9d29b9b383e5970f8da42b29ae022'),
('wicky03', '558813098d0d0df9a9d19aaed8df75fd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
