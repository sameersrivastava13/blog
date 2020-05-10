-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 05:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'first@gmail.com', '123456789', 'hi this is first post.', '2020-05-05 14:07:07'),
(2, 'sameer', 'sameer@gmail.com', 'phone', 'this is test post.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Got Selected as Joule Ambassador...', 'Initial days of my internship.', '3', 'Very Proud to be a part of this organization.\r\nSmart Joules Pvt. Ltd.\r\nWorking in a team that is inclusive and an opportunity to expand my learnings is all that i always wanted.\r\nI hope this role as a joule ambassador will help propel my growth and i will be able to meet the expectations and add some value to the organization.', '2020-05-08 13:55:03', 'smart.jpg'),
(2, 'Hackathon 2.0', 'Won the national level event.', 'hack', 'Won the first prize at the national level event hackathon 2.0 organized by the csi club in dit university.\r\nThanks again Akshat Rawat for the support.\r\n\r\n#codingchallenge #themes #hackathon #innovation #innovativeideas\r\n\r\n', '2020-05-08 22:48:13', 'hack.jpg'),
(3, 'Android Workshop in DIT', 'Conducted android workshop', 'workshop', 'Just now got an appreciation email from my college. Again, very proud to be a part of this organization Smart Joules Pvt. Ltd.\r\n\r\nWorking in a team that is inclusive and an opportunity to expand my learnings is all that i always wanted.\r\n\r\nYou both have been an exemplary and visionary mentor, Harsh Joshi  sir and ANKIT KAUL sir , thank you for your constant support & to all the other dedicated members of the organization Arushi Chaudhary  Ishita chauhan Shekhar Singh Tomar Thank you so much for giving me this opportunity.\r\n\r\nThis is only the start and i hope more people will come forward to contribute and collaborate to make this community of problem solvers even bigger.\r\n\r\nTo all the juniors, it\'s an great opportunity for you all to learn, grow and earn while you are in college. Come forward and be a part the organization & Joule Labs. Doesn\'t matter how much you get, the thing which matter the most are the skills you learn from your mentors.\r\n\r\nShivangi Bansal mam thank you for the appreciation and your support during all the recruitment activities in college DIT University\r\n\r\nOur CEO, Arjun P Gupta sir thank you for always supporting & appreciating my work.\r\n\r\n\r\n\r\n#internships', '2020-05-09 08:36:59', 'workshop.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
