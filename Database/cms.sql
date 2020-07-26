-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 10:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'java'),
(2, 'Bootstrap'),
(51, 'OOP');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(17, 35, 'Jainil', 'jainil@gmail.com', 'hii Jainil', 'approved', '2019-12-27'),
(18, 35, 'arpita', '', 'cool', 'unapproved', '2019-12-29'),
(19, 41, 'jD', 'jainil@gmail.com', 'hi jainil Your Project Is Good', 'approved', '2019-12-30'),
(20, 42, 'gopi', 'ijqisj@dduqb.com', 'qdndjdjq', 'unapproved', '2019-12-30'),
(21, 42, 'gopi', 'ijqisj@dduqb.com', 'qdndjdjq', 'unapproved', '2019-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(45, 51, 'CMS Project', 'Jainil Darji  ', '2020-01-22', 'image_1.jpg', '<p style=\"padding-left: 40px; text-align: center;\"><em><span style=\"text-decoration: line-through;\"><strong>Hiii this Project is Very Useful</strong></span></em></p>', 'java,oop', '', 'published', 0),
(50, 51, 'jainil Darji Post', 'JD ', '2020-06-23', 'IMG-20200308-WA0005~2.jpg', '<p style=\"text-align: left;\">I AM JAINIL DARJI</p>', 'javascript,oop', '', 'published', 1),
(51, 1, 'JD Darji', 'jainil', '2020-06-23', '51121474_1946002562188263_8357304371947791501_n.jpg', '<p>HELLO JAINL</p>', 'js,jquery', '', 'published', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randsalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystring22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randsalt`) VALUES
(39, 'jd', '*0', 'jainil', 'darji', 'jd@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(40, 'pinky', 'pinky123', 'pinky', 'darji', 'pinky@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(52, 'jainil', 'jainil123', '', '', 'jainil@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(62, 'jainil1511', 'jainil123', 'jainil', 'darji', 'jainildarji007@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(0, 'cvek9udn4ljrhtai56irklk2n3', 1581277392),
(0, 'e5qnruibs0v5a9ljuc34sm9qec', 1581277763),
(0, 'h6fc403njhvk30lseuv42qa2hf', 1581277759),
(0, '4fdrjn9d8u0m69lehq9erte1ei', 1583734608),
(0, 'h35qu01qkoj77cf05ci7tn5hqg', 1583844078),
(0, '35tku5rc9dlrcg7fr42ekb0f7f', 1590424591),
(0, 'gdvqguo2akn7n0ic99a0g02us6', 1590424501),
(0, '6s286skceoukoq0iuu758und3l', 1590599545),
(0, 'ls9jnq2saghbnmcdr9d2f7ft8p', 1590600754),
(0, 'qjr13bp58hrtc3d5j4anb8um23', 1592914816),
(0, 'ast0brt7gjhcqqsk021ue3r4e7', 1593008001),
(0, 'hggtusvhjunj0bshu4frk24v9e', 1593589263),
(0, 'a3h8kbhl78v6qljqgusemjdf6r', 1593590276),
(0, '7o924kog3dtvapi4ac5q236ur8', 1593851676);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
