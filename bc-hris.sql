-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 08:31 AM
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
-- Database: `bc-hris`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(2, 'Recruitment', 'admin', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `citizenship` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `date_started` date NOT NULL,
  `status` text NOT NULL,
  `present_street` varchar(255) NOT NULL,
  `present_barangay` varchar(255) NOT NULL,
  `present_city` varchar(255) NOT NULL,
  `present_province` varchar(255) NOT NULL,
  `present_zip` varchar(255) NOT NULL,
  `permanent_street` varchar(255) NOT NULL,
  `permanent_barangay` varchar(255) NOT NULL,
  `permanent_city` varchar(255) NOT NULL,
  `permanent_province` varchar(255) NOT NULL,
  `permanent_zip` varchar(255) NOT NULL,
  `provincial_street` varchar(255) NOT NULL,
  `provincial_barangay` varchar(255) NOT NULL,
  `provincial_city` varchar(255) NOT NULL,
  `provincial_province` varchar(255) NOT NULL,
  `provincial_zip` varchar(255) NOT NULL,
  `phil_no` varchar(255) NOT NULL,
  `pagibig_no` varchar(255) NOT NULL,
  `tin` varchar(255) NOT NULL,
  `sss_no` varchar(255) NOT NULL,
  `prc` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `f_occupation` varchar(255) NOT NULL,
  `f_date_of_birth` date NOT NULL,
  `f_contact_number` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `m_date_of_birth` date NOT NULL,
  `m_occupation` varchar(255) NOT NULL,
  `m_contact_number` varchar(13) NOT NULL,
  `spouse_name` varchar(255) NOT NULL,
  `spouse_occupation` varchar(255) NOT NULL,
  `spouse_date_of_birth` date NOT NULL,
  `spouse_contact_number` varchar(13) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_add` varchar(255) NOT NULL,
  `contact_number` varchar(13) NOT NULL,
  `dependents_name` varchar(255) NOT NULL,
  `dependents_age` int(11) NOT NULL,
  `dependents_relationship` varchar(255) NOT NULL,
  `dependentsb_name` varchar(255) NOT NULL,
  `dependentsb_age` int(11) NOT NULL,
  `dependentsb_relationship` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `blood_type` varchar(255) NOT NULL,
  `xray` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `hs_school` varchar(255) NOT NULL,
  `hs_attainment` varchar(255) NOT NULL,
  `hs_started` date NOT NULL,
  `hs_ended` date NOT NULL,
  `v_course` varchar(255) NOT NULL,
  `v_attainment` varchar(255) NOT NULL,
  `v_started` date NOT NULL,
  `v_ended` date NOT NULL,
  `college_school` varchar(255) NOT NULL,
  `college_course` varchar(255) NOT NULL,
  `college_attainment` text NOT NULL,
  `college_started` date NOT NULL,
  `college_ended` date NOT NULL,
  `research_name` varchar(150) NOT NULL,
  `research_date` date NOT NULL,
  `research_nametwo` varchar(150) NOT NULL,
  `research_datetwo` date NOT NULL,
  `seminar_name` varchar(150) NOT NULL,
  `seminar_role` text NOT NULL,
  `seminar_sponsor` varchar(150) NOT NULL,
  `seminar_date` date NOT NULL,
  `seminar_nametwo` varchar(150) NOT NULL,
  `seminar_roletwo` text NOT NULL,
  `seminar_sponsortwo` varchar(150) NOT NULL,
  `seminar_datetwo` date NOT NULL,
  `contact_relationship` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_id`, `username`, `password`, `email`, `prefix`, `first_name`, `middle_name`, `last_name`, `nickname`, `gender`, `religion`, `civil_status`, `citizenship`, `birthday`, `place_of_birth`, `phone_number`, `department`, `position`, `date_started`, `status`, `present_street`, `present_barangay`, `present_city`, `present_province`, `present_zip`, `permanent_street`, `permanent_barangay`, `permanent_city`, `permanent_province`, `permanent_zip`, `provincial_street`, `provincial_barangay`, `provincial_city`, `provincial_province`, `provincial_zip`, `phil_no`, `pagibig_no`, `tin`, `sss_no`, `prc`, `father_name`, `f_occupation`, `f_date_of_birth`, `f_contact_number`, `mother_name`, `m_date_of_birth`, `m_occupation`, `m_contact_number`, `spouse_name`, `spouse_occupation`, `spouse_date_of_birth`, `spouse_contact_number`, `contact_name`, `contact_add`, `contact_number`, `dependents_name`, `dependents_age`, `dependents_relationship`, `dependentsb_name`, `dependentsb_age`, `dependentsb_relationship`, `weight`, `height`, `blood_type`, `xray`, `result`, `hs_school`, `hs_attainment`, `hs_started`, `hs_ended`, `v_course`, `v_attainment`, `v_started`, `v_ended`, `college_school`, `college_course`, `college_attainment`, `college_started`, `college_ended`, `research_name`, `research_date`, `research_nametwo`, `research_datetwo`, `seminar_name`, `seminar_role`, `seminar_sponsor`, `seminar_date`, `seminar_nametwo`, `seminar_roletwo`, `seminar_sponsortwo`, `seminar_datetwo`, `contact_relationship`) VALUES
(8, 1, 'j.javier', 'j.javier', '', '', 'Jane', '', 'Javier', '', '', '', '', '', '0000-00-00', '', 0, 'School of Medicine', 'Teacher', '2023-06-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, 'Select Relationship', '', 0, 'Select Relationship', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', 'Select Relationship'),
(9, 2, 'f.sibal', 'FSibal', '', '', 'Feane', '', 'Sibal', '', '', '', '', '', '0000-00-00', '', 0, 'Nursing', 'Teacher', '2023-02-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(11, 4021, 'd.caruz', 'd.caruz', '', '', 'Diana Rose', '', 'Caruz', '', '', '', '', '', '0000-00-00', '', 2147483647, 'HAW', 'Teacher', '2024-02-04', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, 'Select Relationship', '', 0, 'Select Relationship', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', 'Select Relationship'),
(12, 6, 'a.patino', 'a.patino', '', '', 'Airica', '', 'Patino', '', '', '', '', '', '0000-00-00', '', 0, 'ASBM', 'Program Head', '2008-06-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(13, 7, 'b.gante', 'b.gante', '', '', 'Bhea', '', 'Gante', '', '', '', '', '', '0000-00-00', '', 0, 'Accounting/CMD', 'Cashier', '2021-06-15', 'active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(14, 9, 'k.lamigo', 'k.lamigo', '', '', 'Kyle Angelou', '', 'Lamigo', '', '', '', '', '', '0000-00-00', '', 0, 'Allied Health', 'Teacher', '2023-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(16, 2222, 'j.caruz', 'j.caruz', 'dianarosecaruz@yahoo.com', 'Jr.', 'Jethro Andrei', 'Restauro', 'Caruz', 'Jet', 'Male', 'Catholic', 'Single', 'Fiipino', '2004-09-17', '', 2147483647, 'Accounting/CMD', 'Finance', '2020-06-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(17, 54336, 'am.mox', '1234', '', '', 'Alexander', '', 'Mox', '', '', '', '', '', '0000-00-00', '', 0, 'Security Dept', 'Security', '2023-06-06', 'inactive', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(18, 43521, 'kk.wow', 'kk.wow', '', '', 'Kent', 'Kant', 'Wow', '', '', '', '', '', '0000-00-00', '', 0, 'GSD', 'Dog', '2024-02-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(19, 65356, 'rc.orange', 'rc.orange', '', '', 'Rex', 'County', 'Orange', '', '', '', '', '', '0000-00-00', '', 0, 'Allied Health', 'Teacher', '2022-06-15', 'active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(20, 24455, 'da.caesar', 'da.caesar', 'daniel@gmail.com', 'Mr.', 'Daniel', 'Arias', 'Caesar', 'Niel', 'Male', 'Catholic', 'Single', 'Fiipino', '2004-10-01', '', 2147483647, 'BED', 'Secretary', '2024-02-13', 'active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(22, 7686, 'li.arguelles', 'li.arguelles', '', 'Ms.', 'Leah', 'Idk', 'Arguelles', '', '', '', '', '', '0000-00-00', '', 0, 'Marketing', 'Part Time', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(23, 7665, 'mn.morales', 'mn.morales', 'malaya@gmail.com', 'Mr.', 'Malaya Chesedh', 'none', 'Morales', 'Mal', 'Male', 'UCCP', 'Single', 'Filipino', '2003-01-01', '', 2147483647, 'Chaplaincy', 'Pastor', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(24, 342353, 'jl.pido', 'jl.pido', '', '', 'Jennifer', 'Ledesma', 'Pido', '', '', '', '', '', '0000-00-00', '', 0, 'ASBM', 'Teacher', '2019-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', 'Feane Sibal', '', '', '', 0, 'Select Relationship', '', 0, 'Select Relationship', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', 'Aunt');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_started` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `last_name`, `first_name`, `employee_id`, `position`, `department`, `date_started`, `email`, `password`) VALUES
(1, 'Javier', 'Jane', 754563, 'Developer', '', '2020-03-18', '', ''),
(2, '', '', 0, '', '', '0000-00-00', '', ''),
(3, 'Sibal', 'Feane', 32434, 'Teacher', 'asbm', '2017-10-24', '', 'fn.sibal'),
(4, 'Coke', 'Coca', 4523, 'Cat', 'school_of_medicine', '2021-06-30', 'cc@gmail.com', 'cc123'),
(5, 'sdaw', 'sdaw', 2312, 'sdaw', 'rpo', '2024-05-22', 'sw@gmail.com', '1234'),
(6, 'sdaw', 'sdaw', 2312, 'sdaw', 'rpo', '2024-05-22', 'sw@gmail.com', '1234'),
(7, '', '', 0, '', '', '0000-00-00', '', ''),
(8, 'dsa', 'das', 2312, 'Cat', 'student_records', '2024-05-09', 'das@gmail.com', '12345'),
(9, 'final', 'final', 11212, 'final', 'alumni', '2022-02-07', 'final@gmail.com', '54321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
