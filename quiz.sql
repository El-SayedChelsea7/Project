-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 12:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`) VALUES
(1, 1, 'واحدة'),
(2, 1, 'اثنتان'),
(3, 1, 'ثلاثة'),
(4, 1, 'أربعة'),
(5, 2, 'مئة واربعة عشرة سورة'),
(6, 2, 'مئة وخمسة عشرة سورة'),
(7, 2, 'مئة وستة عشرة سورة'),
(8, 2, 'مئة وسبعة عشرة سورة'),
(9, 3, 'العلق'),
(10, 3, 'المسد'),
(11, 3, 'الاخلاص'),
(12, 3, 'الفاتحة'),
(19, 6, 'التوبة'),
(20, 6, 'البقرة'),
(21, 6, 'الفلق'),
(22, 6, 'الاخلاص'),
(23, 7, ' ست سنوات'),
(24, 7, ' خمس سنوات'),
(25, 7, ' خمس سنوات'),
(26, 7, ' عشر سنوات'),
(27, 8, 'اربعون عام'),
(28, 8, 'خمسون عام'),
(29, 8, 'ثلاثون عام'),
(30, 8, 'عشرون عام');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `correct_option_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `correct_option_id`) VALUES
(1, 'ما هو عدد ركعات صلاة الفجر؟', 2),
(2, 'كم عدد سور القران الكريم؟', 5),
(3, 'ما هي اول سورة قرانية نزلت علي رسول اللة صلي اللة علية وسلم؟', 9),
(6, 'ما هي السورة القرانية التي تخلو من البسملة؟', 19),
(7, 'كم كان عمر النبي محمد صلي اللة علية وسلم عندما توفيت امة ', 23),
(8, ' كم كان عمر النبي صلي اللة علية وسلم عندما نزلت علية الرسالة؟ ', 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
