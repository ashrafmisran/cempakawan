-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 05:07 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cempakawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `level` text NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `subject`, `level`, `fee`) VALUES
(1, 'Mathematics', 'Form 5', 150);

-- --------------------------------------------------------

--
-- Table structure for table `course_tutor`
--

CREATE TABLE `course_tutor` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course_tutor`
--

INSERT INTO `course_tutor` (`id`, `course_id`, `tutor_id`, `added_on`) VALUES
(0, 1, 0, '2018-04-30 00:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `payment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `enrolls_list` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `table_name` text NOT NULL,
  `data_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `old` text NOT NULL,
  `new` text NOT NULL,
  `user` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mykad` varchar(14) NOT NULL,
  `residential` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `name`, `mykad`, `residential`, `mobile`, `email`) VALUES
(1, 'Muhammad Ashraf bin Misran', '911101065717', 'Kampung Sungai Sekah', '60145102864', 'ashrafmisran@gmail.com'),
(21, 'Sar Mastura binti Abdul Rahman', '910420065402', 'Kampung Sungai Sekah', '601110602864', 'sarmastura91@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mykad` varchar(12) NOT NULL,
  `bod` date NOT NULL,
  `is_male` tinyint(1) NOT NULL,
  `school_name` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `registered_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `mykad`, `bod`, `is_male`, `school_name`, `parent_id`, `registered_on`) VALUES
(1, 'Asrar Mujahid Muhammad Ashraf', '150515106459', '2015-05-10', 1, 'SRITI', 1, '2018-04-29 22:09:41'),
(4, 'Asrar Annisa Muhammad Ashraf', '160828104658', '2016-08-28', 0, 'SRIDU', 21, '2018-04-29 23:44:52'),
(5, 'Asrar Mukmin Muhammad Ashraf', '200220014321', '2020-02-20', 1, 'SRIDU', 1, '2018-04-29 23:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`) VALUES
(0, 'Amirul Zakwan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `fullname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullname`) VALUES
(1, 'ashrafmisran@gmail.com', '51486ac51fe8397fb49074753eebfe80', 'Muhammad Ashraf Misran'),
(2, 'sarmastura91@gmail.com', 'bc8cc43418d6a82047ce5f6213b32022', 'Sar Mastura binti Abdul Rahman'),
(4, 'syediqbal@gmail.com', '59b514399bf229600d6383e2bb6774e7', 'Syed Iqbal Syed Jamalullai'),
(5, 'muizhakimes@gmail.com', '8d8c17eb952b3094e8698443e7e87885', 'Abdul Muiz Abdul Hakim'),
(6, 'rasyadan@gmail.com', '28656eea9b28cbc70f51de3db8bdc3e4', 'Wan Ahmad Rasyadan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mykad` (`mykad`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mykad` (`mykad`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
