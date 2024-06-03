-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 01:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employment-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `offer` decimal(10,2) NOT NULL,
  `max_candidate_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `position`, `description`, `offer`, `max_candidate_number`) VALUES
(42, 'Graphic Designer', 'This is a full-time on-site role located in Cairo, Egypt for a Graphic Designer at Fox Advertising. The Graphic Designer will\nbe responsible for creating visually appealing designs for print and digital media. They will collaborate with cross-\nfunctional teams to understand project objectives and translate them into effective design solutions', '4000.00', 15),
(43, 'Video Editor & Graphic Designer', 'We\'re looking for a talented Video Editor & Graphic Designer to join our startup, an innovative equity crowdfunding platform. If you\'re a creative who wants to contribute to the world of startups and fintech, this could be the opportunity you\'ve been looking for. You\'ll become an important part of our small team, playing a crucial role in the growth of our platform.', '4000.00', 5),
(44, 'Full-stack Developer', 'Technologies:\n\nTailwind CSS, and Tailwind UI.\nSupabase.\nReact js.\nNext js.', '5000.00', 10),
(45, 'Tester Developer', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 6),
(46, 'Software Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 9),
(47, 'Software Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 9),
(48, 'Software Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 9),
(49, 'Software Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 9),
(50, 'aaaaaaaaaaaaaaaaaaaaaaaasasasa', 'sasasasassssssssssssssssssssssssssssssssssssssssssssssssssssss', '3000.00', 0),
(53, 'Gaming Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 9),
(54, 'Gaming Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 10),
(55, 'Test Job Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 8),
(56, 'Demo Devloper', 'Any valid descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription', '4000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_qualifications`
--

CREATE TABLE `job_qualifications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `qualification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_qualifications`
--

INSERT INTO `job_qualifications` (`id`, `job_id`, `qualification_id`) VALUES
(149, 42, 16),
(150, 42, 21),
(151, 42, 24),
(152, 42, 30),
(142, 43, 16),
(143, 43, 17),
(141, 43, 23),
(144, 43, 30),
(161, 44, 25),
(160, 44, 30),
(157, 44, 31),
(156, 44, 32),
(158, 44, 33),
(159, 44, 34),
(155, 44, 35),
(154, 44, 36);

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `description`) VALUES
(16, '1+ years of experience as a Graphic Designer, Video Creator, or Content Creator, or a similar role ideally with exposure to the fintech or finance sector\n'),
(17, 'Proven experience in creating high-quality visual content for various digital and print channels'),
(21, 'Strong understanding of design principles and best practices'),
(23, 'Strong written and verbal communication skills'),
(24, 'Creative thinker with a passion for storytelling and advocacy'),
(25, 'High proficiency in English and Arabic'),
(27, 'Proficiency in graphic design software such as Adobe Creative Suite (Photoshop, Illustrator, InDesign)'),
(28, 'Strong understanding of design principles and typography\n'),
(29, 'Ability to work on multiple projects with different deadlines'),
(30, 'Excellent communication and collaboration skills\nA portfolio showcasing previous design work\nrelevant educatinal certificat will be perreferd\n( applied art / fine art degree'),
(31, 'Back-End Web Development and Software Development skills'),
(32, 'Front-End Development and CSS skills\nExperience in Full-Stack Development'),
(33, 'Strong problem-solving and analytical thinking skills'),
(34, 'Knowledge of web development best practices'),
(35, 'Excellent coding and debugging skills\nAbility to work well in a team and independently'),
(36, 'Excellent written and verbal communication skills\nBachelor\'s degree in Computer Science or related field');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 -> in-active\r\n1 -> active',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 -> Applicant user\r\n1-> Admin user',
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `status`, `type`, `token`) VALUES
(1, 'eslam', 'admin@gmail.com', '12345678910', '$2b$10$v4aeMDQWhLd7hFDCewh3rOrWEKpbWBe12qG2MySQQSJoueLLXqIfe', 1, 1, '83dbcf9d38c2c2da0f77b6d62400b59c'),
(2, 'ahmed emam', 'emam@gmail.com', '12345678910', '$2b$10$x6xaWvKxgEvv/mBDYht9X.OjqxQz0oLxlsa.JpLySC53BfB.bI/Ju', 1, 0, 'ce1f178e60cbedf19fdea78b405211d9'),
(3, 'user one 2', 'user2@gmail.com', '12345678910', '$2b$10$kB4BCoD8AstWRvQOiPvB6ewmXYfwSLQjET6wgG1caMYOVdomrPBFm', 1, 0, 'b2b09210cbc414e654c979754a524503'),
(5, 'user one 4', 'user4@gmail.com', '12345678910', '$2b$10$hCNdDq/REN3sR9bcIAkaiuZ97psslvISnMyKOu7nTLiWc3u8hEzO6', 0, 0, 'af02c32bca43196db3816ba2c62eb551'),
(6, 'user one 5', 'user5@gmail.com', '12345678910', '$2b$10$rskPGL4gg9RmdzD1t2jNMuR6tDzk0lAc7bna0nUBmzAfFgxwnxqqO', 1, 0, '57d24aa694dcd3fbd5e8e20409098dab'),
(7, 'user one 6', 'user6@gmail.com', '12345678910', '$2b$10$YStQWJZg8jM5cE97OExrzelKvgzDSqnAwaC5YcGfy6q072CI.onwS', 1, 0, '173f3a43d828e0347fc3882ba15b3d88'),
(8, 'user one 7', 'user7@gmail.com', '12345678910', '$2b$10$Bowf6R8wFqQldQejoX72Y.yX9lLhEnH0A7uc5twriHDkifxgakSq6', 0, 0, '7cee70d3eaa94e29c7fef03f4ec3d179'),
(9, 'user one 8', 'user8@gmail.com', '12345678910', '$2b$10$sgJgkLzcFHEw.5OZwoYj1u/Wi67.fmgey06g7A47sFIr73uU/HV4W', 0, 0, '3e3ce0eb505e8f32e64523eb2883aaa7'),
(10, 'user one 9', 'user9@gmail.com', '12345678910', '$2b$10$CYzER61ZhMRnIXd9Se/JZelCc2TIZkowaemzxKJhIKVkYTpNr3ksi', 0, 0, 'fc1a7b02c6f81f114650cd25b9e490ca'),
(11, 'user one 10', 'user10@gmail.com', '12345678910', '$2b$10$sANeHQc/eUrpzdqx/dRNQu.32E9bSIKH5LY5k4aZ3PYVRN/1Am5Iq', 1, 0, 'e4549b6b65cb786871b6b804af44f00c'),
(13, 'Ezio Auditore', 'user3000@gmail.com', '12345678900', '$2b$10$bXI7tAWvs9LT7o.BC6pbquaFulkEacZV3iw1a5wxINOpLrY/ef0Re', 1, 0, '334fae76a8895b3d906efcb25090b504'),
(18, 'Mohamed ahmed', 'user1232@gmail.com', '036649494102020', '$2b$10$msiwEyX0fdwCQWFH7WfO3uyrErd4EpS3UTnFLsNDjeF0WTqeOEV/6', 1, 0, '7b70295e516958826644ffc83648b900'),
(19, 'user one test1', 'usertest1@gmail.com', '12345678910', '$2b$10$kuh8ylnJz7CWNw9ugZAruuAhhC3WDL.ggkAPkQ7QMJvxiWs.tj8uK', 0, 0, 'db24ef90e6fc529fd23ea2811bd929e2'),
(20, 'user one test2', 'usertest2@gmail.com', '12345678910', '$2b$10$NMJibVJIpr5STiIT3SjLDu5VcE98oCRTWksQPZQbjNzeKdGf5hNGO', 0, 0, '611047b2ed50165236a09fcddf243317'),
(21, 'user one test3', 'usertest3@gmail.com', '12345678910', '$2b$10$hKNrLXuvXLLvimKIcdbtH.n/AEEadi2.GYmgOBXWfYrUkgLnkUjYG', 0, 0, '8e58ac167f7b070d940848e68d4bd529'),
(26, 'ahmed ali ali', 'ahmedali@gmail.com', '0112525825445', '$2b$10$cQAkfWRkxqg3W4c5NtEj6eOldy3n/0So.HfIlENzl54PZUK4Lktwq', 1, 0, 'ea962e602b2ecc6d1523915d1896a01a'),
(27, 'eslammmm mm', 'eslam@gmail.com', '013245678900', '$2b$10$28z/8FOzAw15TULGBj9TZeEnxZZuDQc4qoFayqvJmFgEPGNVtJ6zu', 1, 0, '8f19e584263d3b568ef025491c33bd79'),
(28, 'eslammmm mmmmmm ', 'eslamm@gmail.com', '013245678900', '$2b$10$ZkLBPVFXfh02J51TASlOk.Pg6b7XkA2.ei8GDAYuC/EbwjZIwH7ya', 1, 0, '081572530de47d25391ce4295e729675'),
(29, 'ahmed nour', 'nour@gmail.com', '01125282525', '$2b$10$sEcOvw9sSOjEHe6NQduI1OTdIgrb00ABg9SijcekWFTa3blOdwLcu', 1, 0, '219bd26a442190e11da8a84b7953a0e2'),
(30, 'eslam alaa', 'eslamalaa@gmail.com', '01281632389', '$2b$10$TkQiFRho9YkoIY6WEl99wesnfuX6FGJoFKtoj2UhEcXNCDSWM/9eu', 1, 0, '0035ddbe043e1177f922914159a66f6b');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '"Pending"',
  `requested_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`id`, `job_id`, `user_id`, `status`, `requested_time`) VALUES
(168, 42, 26, 'Accepted', '2024-06-02 13:36:19'),
(169, 43, 26, 'pending', '2024-04-16 15:08:49'),
(170, 54, 26, 'Declined', '2024-04-16 16:06:44'),
(171, 55, 26, 'Accepted', '2024-04-16 16:06:43'),
(172, 42, 28, 'Accepted', '2024-06-02 13:36:18'),
(173, 46, 26, 'pending', '2024-05-07 21:47:23'),
(174, 47, 26, 'pending', '2024-05-07 21:47:24'),
(175, 43, 28, 'Accepted', '2024-06-02 13:36:16'),
(176, 42, 29, 'Accepted', '2024-06-02 13:36:16'),
(177, 43, 29, 'Declined', '2024-06-02 13:36:15'),
(178, 45, 29, 'pending', '2024-06-02 13:29:48'),
(179, 44, 29, 'pending', '2024-06-02 13:29:50'),
(180, 48, 29, 'Declined', '2024-06-02 13:36:14'),
(181, 42, 2, 'Declined', '2024-06-02 13:36:13'),
(182, 43, 2, 'Accepted', '2024-06-02 13:36:12'),
(183, 44, 2, 'pending', '2024-06-02 13:34:17'),
(184, 45, 2, 'pending', '2024-06-02 13:34:18'),
(185, 47, 2, 'Accepted', '2024-06-02 13:36:11'),
(186, 45, 26, 'Accepted', '2024-06-02 13:36:10'),
(187, 44, 26, 'Declined', '2024-06-02 13:36:09'),
(188, 53, 26, 'Accepted', '2024-06-02 13:36:08'),
(189, 42, 30, 'Accepted', '2024-06-03 09:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_search_history`
--

CREATE TABLE `user_search_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `search_text` varchar(255) NOT NULL,
  `search_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_search_history`
--

INSERT INTO `user_search_history` (`id`, `user_id`, `job_id`, `search_text`, `search_time`) VALUES
(201, 26, 43, 'full stack', '2024-05-07 20:47:09'),
(202, 29, 42, 'Graphic Designer', '2024-06-02 12:30:01'),
(203, 29, 43, '7', '2024-06-02 12:31:17'),
(204, 26, 42, 'Graphic Designer', '2024-06-02 12:35:24'),
(205, 26, 43, 'Video Editor', '2024-06-02 12:36:50'),
(206, 30, 43, 'video', '2024-06-03 08:49:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_id_2` (`job_id`,`qualification_id`),
  ADD KEY `job_id` (`job_id`) USING BTREE,
  ADD KEY `qualification_id` (`qualification_id`) USING BTREE;

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_id` (`job_id`,`user_id`),
  ADD KEY `fk_user_req` (`user_id`);

--
-- Indexes for table `user_search_history`
--
ALTER TABLE `user_search_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_job_const` (`job_id`),
  ADD KEY `fk_user_const` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `user_search_history`
--
ALTER TABLE `user_search_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  ADD CONSTRAINT `job_const4_id` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `qualification_const_id` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD CONSTRAINT `fk_job_req` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_req` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_search_history`
--
ALTER TABLE `user_search_history`
  ADD CONSTRAINT `fk_job_const` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_const` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
