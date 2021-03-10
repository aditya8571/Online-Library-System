-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2021 at 08:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libmng`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `sn` int(50) NOT NULL,
  `book_id` int(50) NOT NULL,
  `book_author` varchar(50) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_qty` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`sn`, `book_id`, `book_author`, `book_name`, `book_qty`) VALUES
(1, 1, 'dummy', 'dummy\'s book', 1),
(2, 365, 'padma redyy', 'maths', 15),
(3, 687, 'hc verma', 'physics', 13),
(5, 3434, 'Dr. APJ abdul kalam ', 'Wings Of Fire', 20),
(6, 5454, 'R.S agarwal', 'Elementary maths', 28),
(4, 6000, 'R.D. Sharama', 'Maths Class 12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sn` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sn`, `name`, `feedback`) VALUES
(1, 'Deepayan', 'This is a very cool website if I must say so'),
(2, 'Aditya Prasad', 'Bhai mast kam kiya tune ek number.'),
(3, 'Deepayan', 'this is a very good website');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `sn` int(11) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `fine` int(11) NOT NULL,
  `status` char(50) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`sn`, `usn`, `name`, `bookname`, `fine`, `status`, `issuedate`, `returndate`) VALUES
(1, '1dt18is000', 'dummy', 'duummy', 0, '\0', '2020-12-12', '2020-12-12'),
(2, '1DT18Is023', 'Deepayan', 'Wings Of Fire', 0, 'paid', '2020-12-29', '2020-12-29'),
(3, '1DT18Is023', 'Deepayan', 'Maths Class 12', 0, 'paid', '2020-12-29', '2020-12-29'),
(4, '1dt18is000', 'dummy ', 'dummy\'s book', 130, 'Unpaid', '2020-12-09', '2021-01-04'),
(5, '1DT18Is023', 'Deepayan', 'Wings Of Fire', 0, 'paid', '2021-01-30', '2021-01-30'),
(6, '1DT18Is023', 'Deepayan', 'Elementary maths', 110, 'Unpaid', '2020-12-29', '2021-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `sn` int(11) NOT NULL,
  `book_id` int(50) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`sn`, `book_id`, `usn`, `book_name`, `name`, `issue_date`, `return_date`) VALUES
(4, 5454, '1DT18Is023', 'Elementary maths', 'Deepayan', '2020-12-29', '2021-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `sn` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`sn`, `email`, `usn`, `name`, `password`) VALUES
(1, 'dummy12@gmail.com', '1dt18is001', 'dummy ', '1235'),
(2, 'deepayanghosh30@gmail.com', '1DT18Is023', 'Deepayan', '1234'),
(4, 'adityaprasad@gmail.com', '1DT18IS0023', 'Aditya Prasad', '1234'),
(5, 'jenny@gmail.com', '1dt18iso18', 'jenny1', '159951');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `sn` (`sn`) USING BTREE;

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`sn`),
  ADD UNIQUE KEY `sn` (`sn`) USING BTREE,
  ADD KEY `test` (`book_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`sn`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `sn` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD CONSTRAINT `test` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
