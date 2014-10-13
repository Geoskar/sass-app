
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2014 at 03:58 PM
-- Server version: 5.1.66
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u137989003_sassd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(11) NOT NULL,
  `user_types_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_admin_user_types1_idx` (`user_types_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `tutor_user_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `label_message` varchar(25) NOT NULL DEFAULT 'pending',
  `label_color` varchar(15) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`),
  KEY `fk_appointment_course1_idx` (`course_id`),
  KEY `fk_appointment_tutor1_idx` (`tutor_user_id`),
  KEY `fk_appointment_schedule1_idx` (`term_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `start_time`, `end_time`, `course_id`, `tutor_user_id`, `term_id`, `label_message`, `label_color`) VALUES
(24, '2014-10-06 15:00:00', '2014-10-06 15:30:00', 16, 32, 2, 'pending', 'default'),
(33, '2014-10-08 14:00:00', '2014-10-08 15:30:00', 9, 57, 2, 'complete', 'success'),
(26, '2014-10-08 10:30:00', '2014-10-08 11:00:00', 26, 23, 2, 'pending', 'default'),
(27, '2014-10-06 13:00:00', '2014-10-06 14:00:00', 58, 34, 2, 'complete', 'success'),
(35, '2014-10-10 12:30:00', '2014-10-10 13:00:00', 26, 25, 2, 'pending', 'default'),
(34, '2014-10-10 12:00:00', '2014-10-10 12:30:00', 38, 40, 2, 'pending', 'default'),
(36, '2014-10-14 11:00:00', '2014-10-14 12:00:00', 154, 36, 2, 'pending', 'default'),
(37, '2014-10-14 12:00:00', '2014-10-14 12:30:00', 16, 22, 2, 'pending', 'default'),
(38, '2014-10-14 16:30:00', '2014-10-14 17:30:00', 58, 46, 2, 'pending', 'default'),
(39, '2014-10-13 13:00:00', '2014-10-13 14:00:00', 14, 31, 2, 'pending', 'default'),
(40, '2014-10-16 12:00:00', '2014-10-16 12:30:00', 14, 40, 2, 'pending', 'default'),
(41, '2014-10-15 13:30:00', '2014-10-15 14:00:00', 14, 40, 2, 'pending', 'default'),
(42, '2014-10-16 16:30:00', '2014-10-16 17:00:00', 154, 36, 2, 'pending', 'default'),
(43, '2014-10-16 11:00:00', '2014-10-16 11:30:00', 84, 36, 2, 'pending', 'default'),
(44, '2014-10-13 15:00:00', '2014-10-13 15:30:00', 14, 32, 2, 'pending', 'default'),
(45, '2014-10-14 16:30:00', '2014-10-14 17:30:00', 144, 55, 2, 'pending', 'default'),
(46, '2014-10-16 16:30:00', '2014-10-16 17:30:00', 58, 46, 2, 'pending', 'default'),
(47, '2014-10-17 11:00:00', '2014-10-17 12:00:00', 25, 25, 2, 'pending', 'default'),
(48, '2014-10-13 12:00:00', '2014-10-13 13:00:00', 28, 25, 2, 'pending', 'default'),
(49, '2014-10-13 13:30:00', '2014-10-13 14:00:00', 52, 30, 2, 'pending', 'default'),
(50, '2014-10-14 15:00:00', '2014-10-14 16:00:00', 12, 22, 2, 'pending', 'default'),
(51, '2014-10-13 14:00:00', '2014-10-13 15:00:00', 99, 42, 2, 'pending', 'default'),
(52, '2014-10-14 13:30:00', '2014-10-14 14:30:00', 155, 25, 2, 'pending', 'default'),
(53, '2014-10-13 15:30:00', '2014-10-13 16:00:00', 16, 46, 2, 'pending', 'default'),
(54, '2014-10-13 15:00:00', '2014-10-13 15:30:00', 16, 46, 2, 'pending', 'default'),
(55, '2014-10-15 15:00:00', '2014-10-15 16:00:00', 16, 32, 2, 'pending', 'default'),
(56, '2014-10-13 16:00:00', '2014-10-13 17:00:00', 15, 32, 2, 'pending', 'default'),
(57, '2014-10-14 13:30:00', '2014-10-14 14:00:00', 9, 22, 2, 'pending', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_has_student`
--

CREATE TABLE IF NOT EXISTS `appointment_has_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id_UNIQUE` (`report_id`),
  KEY `fk_appointment_has_student_student2_idx` (`student_id`),
  KEY `fk_appointment_has_student_appointment2_idx` (`appointment_id`),
  KEY `fk_appointment_has_student_report1_idx` (`report_id`),
  KEY `fk_appointment_has_student_instructor1_idx` (`instructor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `appointment_has_student`
--

INSERT INTO `appointment_has_student` (`id`, `appointment_id`, `student_id`, `report_id`, `instructor_id`) VALUES
(8, 22, 8, NULL, 5),
(7, 21, 8, NULL, 5),
(10, 24, 9, NULL, 6),
(11, 25, 8, 171, 5),
(12, 26, 10, NULL, 7),
(13, 27, 11, 172, 8),
(14, 28, 8, NULL, 5),
(19, 33, 8, 174, 5),
(20, 34, 12, NULL, 60),
(21, 35, 12, NULL, 61),
(22, 36, 19, NULL, 18),
(23, 37, 19, NULL, 10),
(24, 38, 64, NULL, 64),
(25, 39, 57, NULL, 63),
(26, 40, 33, NULL, 65),
(27, 41, 33, NULL, 65),
(28, 42, 63, NULL, 66),
(29, 43, 76, NULL, 18),
(30, 44, 28, NULL, 10),
(31, 45, 77, NULL, 67),
(32, 46, 70, NULL, 8),
(33, 47, 65, NULL, 38),
(34, 48, 78, NULL, 68),
(35, 49, 56, NULL, 62),
(36, 50, 79, NULL, 69),
(37, 51, 80, NULL, 70),
(38, 52, 81, NULL, 71),
(39, 53, 82, NULL, 17),
(40, 54, 82, NULL, 17),
(41, 55, 9, NULL, 6),
(42, 56, 83, NULL, 17),
(43, 57, 84, NULL, 69);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(125) CHARACTER SET latin1 NOT NULL,
  `level` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=173 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `code`, `name`, `level`) VALUES
(9, 'AF2006', 'Financial Acounting', NULL),
(10, 'AF2020', 'Mathematics of Finance', NULL),
(11, 'AF3105', 'Principles of Finance', NULL),
(12, 'AF3116', 'Managerial Acounting for Decision Making', NULL),
(13, 'AF3131', 'Intermediate Accounting', NULL),
(14, 'MA1001', 'Finite Mathematics', NULL),
(15, 'MA1105', 'Applied Calculus', NULL),
(16, 'MA2118', 'Statistics for Business and Economics I', NULL),
(17, 'MA2219', 'Statistics for Business and Economics II', NULL),
(18, 'GE1000', 'German I', NULL),
(19, 'GE1101', 'German II', NULL),
(20, 'GE2202', 'German III', NULL),
(21, 'MG3343', 'Operations Management', NULL),
(22, 'EN2203', 'Morphology', NULL),
(23, 'EN2216', 'Introduction to Language', NULL),
(24, 'EN2220', 'English Literature from Chaucer to Swift', NULL),
(25, 'EN2305', 'Introduction to English Studies', NULL),
(26, 'WP1010', 'Introduction to Academic Writing', NULL),
(27, 'WP1111', 'Academic Writing', NULL),
(28, 'WP1212', 'Academic Writing and Research', NULL),
(29, 'CN2202', 'Writing for Mass Communication', NULL),
(30, 'CN2203', 'Fundamentals of Public Relations', NULL),
(31, 'CN3308', 'Issues in Context', NULL),
(32, 'EN3529', 'The Victorian World', NULL),
(33, 'EN3660', 'Criticism Theory and Practice', NULL),
(34, 'EN3357', 'Realism in 19th and 20th Century Theatre', NULL),
(35, 'BI1000', 'Introduction to Biology I', NULL),
(36, 'BI1101', 'Introduction to Biology II', NULL),
(37, 'PS1000', 'Psychology as a Natural Science', NULL),
(38, 'PS1001', 'Psychology as a Social Science', NULL),
(39, 'PS2210', 'History of Psychology', NULL),
(40, 'PS2236', 'Human Learning and Memory', NULL),
(41, 'PH2010', 'Ethics', NULL),
(42, 'PH2005', 'Business Ethics', NULL),
(43, 'PH2016', 'Philosophy and Cinema', NULL),
(44, 'PH2003', 'Internet and Philosophy', NULL),
(45, 'EN2321', 'English Literature from Romanticism to Modernism', NULL),
(46, 'EC1101', 'Principles of Macroeconomics', NULL),
(47, 'EC2011', 'Economic History of Europe', NULL),
(48, 'EC2270', 'Managerial Economics', NULL),
(49, 'EC2271', 'Macroeconomic Theory and Policy', NULL),
(50, 'EC2240', 'Money and Banking', NULL),
(51, 'EC3350', 'Mathematical Techniques in Economics', NULL),
(52, 'CN2305', 'Multimedia Lab', NULL),
(53, 'CN3225', 'Film Analysis', NULL),
(54, 'CN3322', 'Television Producing', NULL),
(55, 'CN4313', 'Brand Building In Advertising', NULL),
(56, 'CN3200', 'Creative Execution in Advertising', NULL),
(57, 'CN3940', 'Communication Seminar', NULL),
(58, 'EC1000', 'Principles of Microeconomics', NULL),
(59, 'PS2207', 'Developmental Psychology The Preschool Years', NULL),
(60, 'PS2257', 'Diversity Issues in Psychology', NULL),
(61, 'PS2318', 'Research Methods in Psychology', NULL),
(62, 'PS2230', 'Biopsychology', NULL),
(63, 'PS3208', 'Developmental Psychology Childhood and Adolescence', NULL),
(64, 'PS3544', 'Drug Addiction', NULL),
(65, 'PS2147', 'Analysis of Psychological Data', NULL),
(66, 'PS3212', 'Theories of Personality', NULL),
(67, 'PS3324', 'Industrial Psychology', NULL),
(68, 'PS3332', 'Tests and Measurement', NULL),
(69, 'PS3349', 'Forensic Psychology', NULL),
(70, 'PS3413', 'Psychology of Language', NULL),
(71, 'PS3419', 'Health Psychology', NULL),
(72, 'PS3423', 'Stress and Coping', NULL),
(73, 'PS3426', 'Social Psychology Theories and Perspectives', NULL),
(74, 'PS3427', 'Social Interaction', NULL),
(75, 'PS3434', 'Experimental Cognitive Psychology', NULL),
(76, 'PS3437', 'Perception', NULL),
(77, 'PS3443', 'Childhood and Adolescence Psychopathology', NULL),
(78, 'PS3452', 'Schools of Psychotherapy', NULL),
(79, 'PS3458', 'Psychology of Consiousness', NULL),
(80, 'PS3559', 'Educational Psychology', NULL),
(81, 'PS3646', 'Psychological Aspects in Drawing and Play', NULL),
(82, 'PS4451', 'Abnormal Psychology', NULL),
(83, 'PS4535', 'Applied Experimental Psychology', NULL),
(84, 'PS4539', 'Cognition', NULL),
(85, 'SP2206', 'Interpersonal Communication', NULL),
(86, 'CS1070', 'Introduction to Information Systems', NULL),
(87, 'ITC2188', 'Introduction to Programming', NULL),
(88, 'ITC2186', 'Computer System Architecture', NULL),
(89, 'ITC2276', 'C Language Programming', NULL),
(90, 'IT1000', 'Italian I', NULL),
(91, 'IT1101', 'Italian II', NULL),
(92, 'IT2202', 'Italian III', NULL),
(93, 'SP2300', 'Presentation Skills', NULL),
(94, 'SN1000', 'Spanish I', NULL),
(95, 'SN1101', 'Spanish II', NULL),
(96, 'AF3319', 'International Financial Management', NULL),
(97, 'AF3215', 'Cost Accounting', NULL),
(98, 'PO2004', 'Diplomacy', NULL),
(99, 'BU2002', 'Business Legal Issues', NULL),
(100, 'MG2034', 'Organizational Behavior', NULL),
(101, 'MG3131', 'Human Resources Management', NULL),
(102, 'MG2333', 'New Ventures Creation', NULL),
(103, 'MG3121', 'Leadership', NULL),
(104, 'AT1000', 'History of Art I', NULL),
(105, 'AT1001', 'History of Art II', NULL),
(106, 'AT1025', 'History of Architecture', NULL),
(107, 'AT2005', 'Art and Architecture of Ancient Greece', NULL),
(108, 'AH1000', 'Introduction to Archaeology', NULL),
(109, 'HY1000', 'Survey of Western Civilization I', NULL),
(110, 'HY1001', 'Survey of Western Civilization II', NULL),
(111, 'HY2080', 'Great Britain', NULL),
(112, 'PH1000', 'Introduction to Philosophy', NULL),
(113, 'MK2050', 'Principles of Marketing', NULL),
(114, 'MU1000', 'Music I', NULL),
(115, 'MU1001', 'Music II', NULL),
(116, 'ES1000', 'Environmental Science Ecosystems and Biodiversity', NULL),
(118, 'ES1010', 'Energy Resources and Pollution', NULL),
(119, 'BI2215', 'Environmental Health', NULL),
(120, 'HY2060', 'Greece The Birth of a Modern Nation', NULL),
(121, 'HY2070', 'American History I', NULL),
(122, 'HY2071', 'American History II', NULL),
(123, 'HY3053', 'World War II to Vietnam and the Fall of Communism', NULL),
(124, 'HY3072', 'America in World Affairs', NULL),
(125, 'PO1000', 'Political Organization', NULL),
(126, 'PO1001', 'Political Behavior', NULL),
(127, 'PO2008', 'Beyond State and Nation', NULL),
(128, 'AF3313', 'Corporate Finance', NULL),
(129, 'AF3535', 'Financial Modeling', NULL),
(130, 'CS3397', 'Object Oriented Programming with C', NULL),
(131, 'CS3260', 'Fundamentals of RDBMS', NULL),
(132, 'CS3175', 'Communications and Networking Essentials', NULL),
(133, 'ITC4417', 'Game Programming', NULL),
(134, 'ITC2234', 'Object Oriented Programming', NULL),
(135, 'MA2106', 'Mathematics for Computing', NULL),
(136, 'ITC3387', 'Data Structures and Analysis of Algorithms', NULL),
(137, 'ITC2293', 'Operating Systems Concepts', NULL),
(138, 'AF2040', 'Acounting and Finance Money and Banking', NULL),
(139, 'MG2003', 'Management Principles', NULL),
(140, 'CN2201', 'Contemporary Mass Communication', NULL),
(141, 'IB2006', 'International Business', NULL),
(142, 'IB3008', 'Business in the European Union', NULL),
(143, 'IB3232', 'Foreign Direct Investment', NULL),
(144, 'CS2179', 'Business Information Systems', NULL),
(145, 'FR1000', 'French I', NULL),
(146, 'FR1101', 'French II', NULL),
(147, 'FR2202', 'French III', NULL),
(148, 'SO1000', 'Introduction to Sociology', NULL),
(149, 'SO1001', 'Sociology of Modern Life', NULL),
(150, 'SO2002', 'Environment and Society', NULL),
(151, 'SO2004', 'Social Inequality', NULL),
(152, 'SO2037', 'Sociology of Deviance', NULL),
(153, 'SO2235', 'Migration and the Global Age', NULL),
(154, 'SASS11', 'Citation Assistance APA', NULL),
(155, 'SASS12', 'Citation Assistance MLA', NULL),
(156, 'SASS21', 'College Skills Studying', NULL),
(157, 'SASS22', 'College Skills Exam Preparation', NULL),
(158, 'SASS23', 'College Skills Note Taking', NULL),
(159, 'SASS24', 'College Skills Time Management', NULL),
(160, 'SASS31', 'PASS WP1010', NULL),
(161, 'SASS32', 'PASS WP1111', NULL),
(162, 'SASS33', 'PASS WP1212', NULL),
(163, 'SASS34', 'PASS PH1000', NULL),
(164, 'SASS35', 'PASS PH2010', NULL),
(165, 'SASS36', 'PASS PH2003', NULL),
(166, 'SASS37', 'PASS PH2016', NULL),
(167, 'AP5001', 'Fundamentals in Psychology', NULL),
(168, 'MK3159', 'Consumer Behavior', NULL),
(169, 'DD', 'Dummy', NULL),
(170, 'AP6073', 'Consultation', NULL),
(171, 'AB0000', 'Absence', NULL),
(172, 'WR1000', 'Writing Assistance for Any Course', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `f_name`, `l_name`) VALUES
(5, 'Maira', 'Kotsovoulou'),
(6, 'Sotiris', 'Panagopoulos'),
(7, 'Mariella', 'Antoniadou'),
(8, 'Aggelos', 'Doukas'),
(9, 'Melenia', 'Arouh'),
(10, 'Maria Teresa', 'Gastardo Fountis'),
(11, 'Anna', 'Giannopoulou Merika'),
(12, 'Anastasia', 'Logotheti'),
(13, 'Despina', 'Makri'),
(14, 'Helena', 'Maragou'),
(15, 'Daniel', 'Mc Cormac'),
(16, 'Evangeline', 'Mourelatos'),
(17, 'Dimitris', 'Natsis'),
(18, 'Chrysanthi', 'Nega'),
(20, 'Vasileios', 'Symeonidis'),
(21, 'Ritsa', 'Ventouratos Fotinatos'),
(22, 'Hariclea', 'Zengos'),
(23, 'Marianthe', 'Frankos'),
(24, 'Eugene Ralph', 'Aldous'),
(25, 'Mary', 'Canellopoulou'),
(26, 'Emmanuel', 'Varouhas'),
(27, 'Vilma', 'Sinanoglou'),
(28, 'George', 'Sainis'),
(29, 'Antonis', 'Klidas'),
(30, 'Karolina', 'Siskos'),
(31, 'Nickolas', 'Siscoglou'),
(32, 'Alexandra', 'Sakellari'),
(33, 'Sophia', 'Zevgoli'),
(34, 'Natasha', 'Tsantila'),
(35, 'Emanuella', 'Skarmaliorakis'),
(36, 'Jane', 'Mandalios'),
(37, 'Alexandra', 'Jeikner'),
(38, 'Fotini', 'Georgousi'),
(39, 'Maria Ines', 'Garnica Oliver'),
(40, 'Evanthia', 'Ganetsou'),
(41, 'Georgia', 'Dima'),
(42, 'Katerina', 'Voutsina'),
(43, 'George', 'Filis'),
(44, 'Ariadne Evelyn', 'Aldous'),
(45, 'Gerasimos', 'Voutsinas'),
(46, 'Michael', 'Valahas'),
(47, 'Vassilis', 'Thomas'),
(48, 'Evy', 'Sakellariou'),
(49, 'Tatiana', 'Chalkidou'),
(50, 'Michael', 'Valahas'),
(51, 'Karolina', 'Siskos'),
(52, 'Ioanna', 'Mitropoulou'),
(53, 'Stefanos', 'Lianos'),
(54, 'Joanna', 'Konstantinou'),
(55, 'Sophia', 'Zevgoli'),
(56, 'Natasha', 'Tsantila'),
(57, 'Georgia', 'Kostoulias'),
(58, 'Louise', 'Hepper'),
(59, 'Gregory', 'Katsas'),
(60, 'Athanassios', 'Tsiamis'),
(61, 'Dimitra', 'Papazoglou'),
(62, 'Ilias', 'Kapelariotis'),
(63, 'Dimitris', 'Christou'),
(64, 'Sotiria', 'Theodoropoulou'),
(65, 'Miltiades', 'Gikas'),
(66, 'Despoina', 'Paizi'),
(67, 'Zepos', 'Galanos'),
(68, 'k', 'Patra'),
(69, 'Stilianos', 'Kotsias'),
(70, 'Anna', 'Kourtoupa'),
(71, 'Despoina', 'Gavrili'),
(72, 'Else', 'Where');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE IF NOT EXISTS `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `code` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`id`, `name`, `code`) VALUES
(2, 'I do not know', 'A'),
(4, 'Undecided', 'B'),
(5, 'Acounting and Finance', 'AF'),
(6, 'Computer Information Systems', 'CIS'),
(7, 'International Business and European Affairs', 'IBEA'),
(8, 'International Tourism and Hospitality Managem', 'ITHM'),
(9, 'Management', 'MG'),
(10, 'Marketing', 'MK'),
(11, 'Communication', 'CN'),
(12, 'Economics', 'EC'),
(13, 'English', 'EN'),
(14, 'Environmental Studies', 'ES'),
(15, 'History', 'HY'),
(16, 'Information Technology', 'IT'),
(17, 'Philosophy', 'PH'),
(18, 'Psychology', 'PS'),
(19, 'Sociology', 'SO'),
(20, 'Art History', 'AT'),
(21, 'Visual Arts', 'AR'),
(22, 'Graduate Student', 'GRAD');

-- --------------------------------------------------------

--
-- Table structure for table `outcome_of_session`
--

CREATE TABLE IF NOT EXISTS `outcome_of_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(45) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_outcome_of_session_report1_idx` (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `primary_focus_of_conference`
--

CREATE TABLE IF NOT EXISTS `primary_focus_of_conference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(45) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_primary_focus_of_conference_report1_idx` (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `students_concerns` text,
  `relevant_feedback_or_guidelines` text,
  `additional_comments` text,
  `project_topic_other` text NOT NULL,
  `other_text_area` text,
  `label_message` varchar(25) DEFAULT 'pending fill',
  `label_color` varchar(25) DEFAULT 'warning',
  PRIMARY KEY (`id`),
  KEY `fk_appointment_has_student_student1_idx` (`student_id`),
  KEY `fk_appointment_has_student_has_report_has_instructor_instru_idx` (`instructor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `student_id`, `instructor_id`, `students_concerns`, `relevant_feedback_or_guidelines`, `additional_comments`, `project_topic_other`, `other_text_area`, `label_message`, `label_color`) VALUES
(170, 8, 5, NULL, NULL, NULL, '', '', 'pending fill', 'warning'),
(171, 8, 5, 'werqewrfew', '', '', 'dsfdfqewrqewrqewre', '', 'pending validation', 'warning'),
(172, 11, 8, NULL, NULL, NULL, '', NULL, 'pending fill', 'warning'),
(173, 8, 5, 'maximiation focurse of conference', '', 'additional comments by the secretary.', 'project topic other', 'other other', 'complete', 'success'),
(174, 8, 5, 'students concerns bla bla', '', '', 'some notes from me thte tutotr', '', 'complete', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE IF NOT EXISTS `secretary` (
  `user_id` int(11) NOT NULL,
  `user_types_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_secretary_user_types1_idx` (`user_types_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(7) NOT NULL,
  `email` varchar(125) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `ci` double DEFAULT NULL,
  `credits` int(3) DEFAULT NULL,
  `major_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `studentId_UNIQUE` (`studentId`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`),
  KEY `fk_student_major1_idx` (`major_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentId`, `email`, `f_name`, `l_name`, `mobile`, `ci`, `credits`, `major_id`) VALUES
(8, 126198, 'a.villiotis@acg.edu', 'Aggelos', 'Villiotis', '6985734144', 2.9, 65, 4),
(9, 131775, 'd.kategianni@acg.edu', 'Dimitra', 'Kategianni', '6978834430', 3.06, NULL, 9),
(10, 180492, 'n.zouganeli@acg.edu', 'Zouganeli', 'Natasa', '6930845080', NULL, NULL, 10),
(11, 182121, 'e.stoeva@acg.edu', 'Stoeva', 'Elena', '6974699815', NULL, NULL, 7),
(12, 185399, 's.skitsas@acg.edu', 'Spyros', 'Skitsas', '6970018480', NULL, NULL, 4),
(13, 125388, 'eleni.katsouli@acg.edu', 'Eleni', 'Katsouli', '6982007647', NULL, NULL, 20),
(14, 125941, 'i.argyraki@acg.edu', 'Ioanna', 'Argyraki', '6989374009', NULL, NULL, 10),
(15, 134846, 'a.skavantzou@acg.edu', 'Areti', 'Skavantzou', '6948609545', NULL, NULL, 21),
(16, 176850, 'e.karveli@acg.edu', 'Evmorfia', 'Karveli', '6980305577', NULL, NULL, 9),
(17, 177897, 'm.giourokelis@acg.edu', 'Marios', 'Giourokelis', '6938213522', NULL, NULL, 9),
(18, 117366, 'e.karaoulani@acg.edu', 'Eftychia', 'Karaoulani', '6942546844', NULL, NULL, 18),
(19, 186036, 'I.Magkanas@acg.edu', 'Iraklis ', 'Magkanas', '6981607820', NULL, NULL, 22),
(20, 174884, 'm.veinoglou@acg.edu', 'Marianna', 'Veinoglou', '6944689346', NULL, NULL, 4),
(21, 116482, 'p.karamanea@acg.edu', 'Panagiota', 'Karamanea', '6942988531', NULL, NULL, 9),
(22, 185795, 'R.Koumoundourou@acg.edu', 'Ragia', 'Koumoundourou', '6978528623', NULL, NULL, 4),
(23, 180486, 'a.sourlis@acg.edu', 'Aristotelis', 'Sourlis', '6988416421', NULL, NULL, 13),
(24, 131889, 'eleni.ioannou@acg.edu', 'Eleni', 'Ioannou', '6982303215', NULL, NULL, 9),
(25, 137027, 'd.karipi@acg.edu', 'Dimitra', 'Karipi', '6983308057', NULL, NULL, 5),
(26, 136229, 'dimitrios.prifti@acg.edu', 'Dimitris', 'Priftis', '6976989675', NULL, NULL, 9),
(27, 186035, 'a.kotsaki@acg.edu', 'Anna Alexia', 'Kotsaki', '6944647369', NULL, NULL, 4),
(28, 186766, 'E.karatzogiannis@acg.edu', 'Eleutherios Gerasimos', 'Karatzogiannis', '6985013022', NULL, NULL, 18),
(29, 186334, 'k.tsimpoukas@acg.edu', 'Kostas', 'Tsimpoukas', '6986871512', NULL, NULL, 4),
(30, 126171, 'k.papadaki@acg.edu', 'Kalomoira', 'Papadaki', '6948647135', NULL, NULL, 18),
(31, 184105, 'v.kokkinos@acg.edu', 'Vasilis', 'Kokkinos', '6986832899', NULL, NULL, 4),
(32, 135200, 'Lydia.georgiou@acg.edu', 'Lydia', 'Georgiou', '6984424432', NULL, NULL, 4),
(33, 175567, 'i.rozolis@acg.edu', 'Ioannis', 'Rozolis', '6974343305', NULL, NULL, 4),
(34, 121184, 'm.bompola@acg.edu', 'Maria', 'Bompola', '6951817180', NULL, NULL, 11),
(35, 118426, 'v.leventi@acg.esu', 'Vasiliki', 'Leventi', '6980281037', NULL, NULL, 18),
(36, 126108, 'p.papadopetraki@acg.edu', 'Panagiota', 'Papadopetraki', '6940268842', NULL, NULL, 18),
(37, 127680, 'e.pouliou@acg.edu', 'Eleni', 'Pouliou', '6978796936', NULL, NULL, 5),
(38, 106331, 'i.davakis@acg.edu', 'Giannis', 'Davakis', '6944835333', NULL, NULL, 22),
(39, 185066, 'a.rigou@acg.edu', 'Adriana', 'Rigou', '6986990500', NULL, NULL, 11),
(40, 121668, 'n.skatsika@acg.edu', 'Natalia', 'Skatsika', '6984139050', NULL, NULL, 10),
(41, 126278, 'john.stravopodis@gmail.com', 'Ioannis', 'Stravopodis', '6988031163', NULL, NULL, 4),
(42, 186427, 'e.siatra@acg.edu', 'Eleni', 'Siatra', '6945737052', NULL, NULL, 4),
(43, 126269, 'm.tavernaraki@acg.edu', 'Marina', 'Tavernaraki', '6976014293', NULL, NULL, 10),
(44, 130048, 'a.filippopoulou@acg.edu', 'Nasia', 'Filippopoulou', '6948751947', NULL, NULL, 12),
(45, 175757, 'p.eleni@acg.edu', 'Eleni', 'Pari', '6934739213', NULL, NULL, 18),
(46, 175077, 'viktoria.nikolaou@acg.edu', 'Viktoria', 'Nikolaou', '6980766285', NULL, NULL, 10),
(47, 184103, 'v.bouronikos@acg.edu', 'Vasileios', 'Bouronikos', '6982856262', NULL, NULL, 7),
(48, 178461, 'a.smith@acg.edu', 'Athena', 'Smith', '6949987200', NULL, NULL, 4),
(49, 121182, 'i.karavas@acg.edu', 'Ioannis', 'Karavas', '6979528735', NULL, NULL, 18),
(50, 184547, 'e.andrianaki@acg.edu', 'Elmina Eleni', 'Andrianaki', '6989779668', NULL, NULL, 4),
(51, 175044, 'a.gennatou@acg.edu', 'Aikaterini', 'Gennatou', '6941655156', NULL, NULL, 10),
(52, 135993, 'm.christodoulou@acg.edu', 'Marianna', 'Christodoulou', '6970487347', NULL, NULL, 10),
(53, 170121, 'g.papoulia@acg.edu', 'Glykeria', 'Papoulia', '6976711482', NULL, NULL, 9),
(54, 175575, 'm.rizogianni@acg.edu', 'Maria', 'Rizogianni', '6985888196', NULL, NULL, 18),
(55, 128616, 'a.eskiglou@acg.edu', 'Eskiglou', 'Amalia', '6984012201', NULL, NULL, 18),
(56, 131953, 'a.germanou@acg.edu', 'Antonia', 'Germanou', '6948543825', NULL, NULL, 10),
(57, 137142, 'e.skouroliakou@acg.edu', 'Efstathia', 'Skouroliakou', '6988724923', NULL, NULL, 18),
(58, 118455, 'v.breguta@acg.edu', 'Victoria', 'Breguta', '6938439466', NULL, NULL, 5),
(59, 118723, 'v.mitrelis@acg.edu', 'Vasilis', 'Mitrelis', '6980734372', NULL, NULL, 5),
(60, 128002, 'v.voskidi@acg.edu', 'Vasiliki', 'Voskidi', '6975787045', NULL, NULL, 11),
(61, 118761, 'e.bomboli@acg.edu', 'Elli', 'Bomboli', '6955582645', NULL, NULL, 19),
(62, 136509, 'alexandros.vogiatzis@acg.edu', 'Alexandros', 'Vogiatzis', '6944975585', NULL, NULL, 9),
(63, 177765, 'i.lytra@acg.edu', 'Ermioni', 'Lytra', '6942051322', NULL, NULL, 22),
(64, 175359, 't.tsinonis@acg.edu', 'Theoni', 'Tsinonis', '6985769362', NULL, NULL, 7),
(65, 131205, 'a.buzo@acg.edu', 'Aggelina', 'Buzo', '6986823319', NULL, NULL, 13),
(66, 123238, 'v.mouchtis@acg.edu', 'Vaggelis', 'Mouchtis', '6978469628', NULL, NULL, 10),
(67, 137423, 's.armaos@acg.edu', 'Spyridon', 'Armaos', '6972369679', NULL, NULL, 4),
(68, 135126, 't.sayegh@acg.edu', 'Tatiana', 'Sayegh', '6949983589', NULL, NULL, 4),
(69, 176346, 'i.maragkoudakis@acg.edu', 'Ioannis', 'Maragkoudakis', '6945873381', NULL, NULL, 8),
(70, 134655, 'kontog1821@hotmail.com', 'Konstantinos', 'Togkas', '6949472788', NULL, NULL, 9),
(71, 126767, 'v.ntatsi@acg.edu', 'Vasiliki', 'Ntatsi', '6956010449', NULL, NULL, 7),
(72, 135136, 's.kampoli@acg.edu', 'Stefania', 'Kampoli', '6973636966', NULL, NULL, 4),
(73, 124899, 'n.kaltsou@acg.edu', 'Natalia', 'Kaltsou', '6985571449', NULL, NULL, 18),
(74, 125713, 'e.komninou@acg.edu', 'Emmanouela', 'Komninou', '6986563726', NULL, NULL, 9),
(75, 175832, 'i.corotcova@acg.edu', 'Ilona', 'Corotcova', '5645646456', NULL, NULL, 2),
(76, 186914, 'r.belimpasaki@acg.edu', 'Revekka', 'Belimpasaki', '6978381991', NULL, NULL, 22),
(77, 125552, 'n.vasiliadou@acg.edu', 'Nare', 'Vasiliadou', '6972455883', NULL, NULL, 5),
(78, 126208, 'a.boulougari@acg.edu', 'Andromachi', 'Boulougari', '6978165169', NULL, NULL, 7),
(79, 121508, 'a.silvestridis@acg.edu', 'Alexandros', 'Silvestridis', '6974600007', NULL, NULL, 9),
(80, 134728, 'm.karachalia@acg.edu', 'Maria', 'Karachalia', '6932385739', NULL, NULL, 10),
(81, 131909, 'a.lagoupoulou@acg.edu', 'Alkisti', 'Lagopoulou', '6970279385', NULL, NULL, 8),
(82, 175620, 'k.tsaliki@acg.edu', 'Konstantina', 'Tsaliki', '6972312196', NULL, NULL, 4),
(83, 119558, 'p.charagkionis@acg.edu', 'Phaedon', 'Charagkionis', '6981247400', NULL, NULL, 9),
(84, 135851, 'i.toutsidi@acg.edu', 'Ioanna', 'Toutsidi', '6984553772', NULL, NULL, 7),
(85, 185778, 'm.lappa@acg.edu', 'Myrto ', 'Lappa', '6972445050', NULL, NULL, 2),
(86, 123456, 'sass@acg.edu', 'Will', 'Notcome', '6912345678', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_brought_along`
--

CREATE TABLE IF NOT EXISTS `student_brought_along` (
  `report_id` int(11) NOT NULL,
  `assignment_graded` tinyint(1) NOT NULL DEFAULT '0',
  `draft` tinyint(1) NOT NULL DEFAULT '0',
  `instructors_feedback` tinyint(1) NOT NULL DEFAULT '0',
  `textbook` tinyint(1) NOT NULL DEFAULT '0',
  `notes` tinyint(1) NOT NULL DEFAULT '0',
  `assignment_sheet` tinyint(1) NOT NULL DEFAULT '0',
  `exercise_on` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `report_id` (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_brought_along`
--

INSERT INTO `student_brought_along` (`report_id`, `assignment_graded`, `draft`, `instructors_feedback`, `textbook`, `notes`, `assignment_sheet`, `exercise_on`, `other`) VALUES
(171, 1, 0, 0, 0, 0, 0, NULL, 'nothing'),
(172, 0, 0, 0, 0, 0, 0, NULL, NULL),
(173, 1, 0, 0, 0, 0, 0, NULL, 'nothing'),
(174, 1, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE IF NOT EXISTS `term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `name`, `start_date`, `end_date`) VALUES
(2, 'Fall Semester 2014', '2014-09-15 13:39:00', '2014-12-15 15:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE IF NOT EXISTS `tutor` (
  `user_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_tutor_user1_idx` (`user_id`),
  KEY `fk_tutor_major1_idx` (`major_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`user_id`, `major_id`) VALUES
(26, 18),
(25, 13),
(24, 11),
(23, 13),
(22, 9),
(27, 9),
(28, 14),
(29, 11),
(30, 11),
(31, 12),
(32, 16),
(33, 18),
(34, 12),
(35, 13),
(36, 18),
(37, 18),
(38, 5),
(39, 15),
(40, 18),
(41, 18),
(42, 9),
(43, 6),
(45, 20),
(46, 12),
(49, 17),
(51, 9),
(53, 6),
(55, 7),
(57, 2),
(59, 19),
(62, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_has_course_has_term`
--

CREATE TABLE IF NOT EXISTS `tutor_has_course_has_term` (
  `tutor_user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tutor_has_course_course1_idx` (`course_id`),
  KEY `fk_tutor_has_course_tutor1_idx` (`tutor_user_id`),
  KEY `fk_tutor_has_course_has_schedule_term1_idx` (`term_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=298 ;

--
-- Dumping data for table `tutor_has_course_has_term`
--

INSERT INTO `tutor_has_course_has_term` (`tutor_user_id`, `course_id`, `id`, `term_id`) VALUES
(43, 15, 14, 2),
(43, 14, 13, 2),
(42, 99, 15, 2),
(42, 100, 16, 2),
(42, 101, 17, 2),
(42, 102, 18, 2),
(42, 103, 19, 2),
(49, 26, 20, 2),
(49, 41, 21, 2),
(49, 43, 22, 2),
(49, 44, 23, 2),
(49, 112, 24, 2),
(30, 52, 25, 2),
(30, 85, 26, 2),
(30, 53, 27, 2),
(30, 54, 28, 2),
(30, 55, 29, 2),
(30, 56, 30, 2),
(30, 57, 31, 2),
(40, 14, 32, 2),
(40, 27, 33, 2),
(40, 28, 34, 2),
(40, 37, 35, 2),
(40, 38, 36, 2),
(40, 40, 37, 2),
(40, 59, 38, 2),
(40, 60, 39, 2),
(40, 98, 40, 2),
(41, 39, 41, 2),
(41, 59, 42, 2),
(41, 60, 43, 2),
(41, 61, 44, 2),
(41, 62, 45, 2),
(41, 63, 46, 2),
(41, 65, 47, 2),
(41, 66, 48, 2),
(41, 68, 49, 2),
(41, 72, 50, 2),
(41, 73, 51, 2),
(41, 75, 52, 2),
(41, 76, 53, 2),
(41, 78, 54, 2),
(41, 82, 55, 2),
(41, 84, 56, 2),
(24, 26, 57, 2),
(24, 27, 58, 2),
(24, 28, 59, 2),
(24, 29, 60, 2),
(24, 30, 61, 2),
(24, 31, 62, 2),
(38, 13, 63, 2),
(38, 96, 64, 2),
(38, 97, 65, 2),
(23, 22, 66, 2),
(23, 23, 67, 2),
(23, 24, 68, 2),
(23, 25, 69, 2),
(23, 26, 70, 2),
(23, 27, 71, 2),
(23, 28, 72, 2),
(32, 14, 73, 2),
(32, 15, 74, 2),
(32, 16, 75, 2),
(32, 42, 76, 2),
(32, 86, 77, 2),
(32, 87, 78, 2),
(32, 88, 79, 2),
(32, 89, 80, 2),
(37, 94, 81, 2),
(37, 95, 82, 2),
(26, 35, 83, 2),
(26, 36, 84, 2),
(26, 37, 85, 2),
(26, 39, 86, 2),
(26, 40, 87, 2),
(49, 163, 256, 2),
(28, 114, 89, 2),
(28, 115, 90, 2),
(28, 116, 91, 2),
(28, 118, 92, 2),
(28, 119, 93, 2),
(34, 15, 94, 2),
(34, 16, 95, 2),
(34, 46, 96, 2),
(34, 58, 97, 2),
(34, 90, 98, 2),
(34, 91, 99, 2),
(31, 14, 100, 2),
(31, 46, 101, 2),
(31, 47, 102, 2),
(31, 48, 103, 2),
(31, 49, 104, 2),
(31, 50, 105, 2),
(31, 51, 106, 2),
(46, 17, 107, 2),
(46, 16, 108, 2),
(46, 15, 109, 2),
(46, 10, 110, 2),
(46, 46, 111, 2),
(46, 58, 112, 2),
(45, 104, 113, 2),
(45, 105, 114, 2),
(45, 106, 115, 2),
(45, 107, 116, 2),
(45, 108, 117, 2),
(45, 109, 118, 2),
(45, 111, 119, 2),
(45, 110, 120, 2),
(39, 109, 121, 2),
(39, 110, 122, 2),
(39, 120, 123, 2),
(39, 122, 124, 2),
(39, 123, 125, 2),
(39, 124, 126, 2),
(39, 125, 127, 2),
(39, 126, 128, 2),
(39, 127, 129, 2),
(27, 26, 130, 2),
(27, 27, 131, 2),
(27, 28, 132, 2),
(25, 26, 133, 2),
(25, 27, 134, 2),
(25, 28, 135, 2),
(25, 24, 136, 2),
(25, 25, 137, 2),
(25, 32, 138, 2),
(25, 33, 139, 2),
(25, 34, 140, 2),
(51, 27, 159, 2),
(35, 26, 183, 2),
(22, 16, 157, 2),
(22, 15, 156, 2),
(36, 40, 155, 2),
(36, 84, 154, 2),
(36, 59, 153, 2),
(36, 78, 148, 2),
(36, 38, 152, 2),
(36, 37, 151, 2),
(51, 28, 160, 2),
(51, 46, 161, 2),
(51, 86, 162, 2),
(29, 94, 163, 2),
(29, 95, 164, 2),
(29, 30, 165, 2),
(29, 53, 166, 2),
(29, 18, 167, 2),
(29, 19, 168, 2),
(29, 113, 169, 2),
(53, 130, 170, 2),
(53, 129, 171, 2),
(53, 128, 172, 2),
(53, 89, 173, 2),
(53, 14, 174, 2),
(53, 10, 175, 2),
(59, 154, 240, 2),
(26, 154, 241, 2),
(40, 154, 242, 2),
(23, 155, 243, 2),
(51, 155, 244, 2),
(35, 155, 245, 2),
(35, 159, 246, 2),
(35, 27, 184, 2),
(35, 28, 185, 2),
(35, 41, 186, 2),
(35, 45, 187, 2),
(35, 93, 188, 2),
(22, 9, 189, 2),
(22, 11, 190, 2),
(22, 12, 191, 2),
(22, 17, 192, 2),
(22, 18, 193, 2),
(22, 20, 194, 2),
(22, 21, 195, 2),
(22, 19, 196, 2),
(30, 140, 197, 2),
(55, 12, 236, 2),
(55, 11, 235, 2),
(55, 141, 200, 2),
(55, 142, 201, 2),
(55, 143, 202, 2),
(55, 144, 203, 2),
(27, 113, 204, 2),
(27, 144, 205, 2),
(27, 145, 206, 2),
(49, 156, 247, 2),
(32, 171, 271, 2),
(57, 9, 255, 2),
(23, 171, 270, 2),
(38, 171, 269, 2),
(24, 171, 268, 2),
(41, 171, 267, 2),
(49, 165, 257, 2),
(49, 166, 258, 2),
(30, 171, 265, 2),
(57, 169, 260, 2),
(43, 171, 262, 2),
(49, 171, 264, 2),
(42, 171, 263, 2),
(36, 154, 261, 2),
(49, 164, 259, 2),
(40, 171, 266, 2),
(59, 148, 224, 2),
(59, 149, 225, 2),
(59, 150, 226, 2),
(59, 151, 227, 2),
(59, 152, 228, 2),
(59, 153, 229, 2),
(32, 145, 230, 2),
(32, 146, 231, 2),
(32, 147, 232, 2),
(62, 132, 233, 2),
(62, 131, 234, 2),
(55, 21, 237, 2),
(55, 46, 238, 2),
(55, 58, 239, 2),
(49, 158, 248, 2),
(24, 157, 249, 2),
(24, 158, 250, 2),
(24, 159, 251, 2),
(32, 156, 252, 2),
(39, 156, 253, 2),
(30, 157, 254, 2),
(37, 171, 272, 2),
(53, 171, 273, 2),
(26, 171, 274, 2),
(28, 171, 275, 2),
(34, 171, 276, 2),
(31, 171, 277, 2),
(46, 171, 278, 2),
(45, 171, 279, 2),
(39, 171, 280, 2),
(27, 171, 281, 2),
(25, 171, 282, 2),
(36, 171, 283, 2),
(55, 171, 284, 2),
(22, 171, 285, 2),
(59, 171, 286, 2),
(51, 171, 287, 2),
(35, 171, 288, 2),
(29, 171, 289, 2),
(35, 172, 290, 2),
(51, 172, 291, 2),
(24, 172, 292, 2),
(25, 172, 293, 2),
(27, 172, 294, 2),
(23, 172, 295, 2),
(40, 172, 296, 2),
(49, 172, 297, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(125) NOT NULL,
  `f_name` varchar(35) NOT NULL,
  `l_name` varchar(35) NOT NULL,
  `password` varchar(512) DEFAULT NULL,
  `img_loc` varchar(125) NOT NULL DEFAULT 'assets/img/avatars/default_avatar.jpg',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date of account creation',
  `user_types_id` int(11) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `profile_description` varchar(512) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `gen_string` varchar(45) DEFAULT NULL,
  `gen_string_update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`),
  KEY `fk_user_user_types_idx` (`user_types_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `f_name`, `l_name`, `password`, `img_loc`, `date`, `user_types_id`, `mobile`, `profile_description`, `active`, `gen_string`, `gen_string_update_at`) VALUES
(2, 'r.dokollari@acg.edu', 'Rizart', 'Dokollari', '$2y$10$VgXd4dMq.ZWDhA7qOPwV8utvA7W6gu4Sq/YZxgWcFsBFVE.Ws6OKe', 'assets/img/avatars/avatar_img_2.png', '2014-09-16 13:26:42', 4, '6983827751', 'Lover, hacker, vault dweller.', 1, '', '2014-09-20 06:35:11'),
(6, 'G.Skarlatos@acg.edu', 'George', 'Skarlatos', '$2y$10$VNYezLQEWkfiVWhkWv6/NO.sWjwP6WVI/axwkABBs/WNB2UM0uk62', 'assets/img/avatars/default_avatar.jpg', '2014-09-17 03:10:49', 4, '6986627210', NULL, 1, '', '2014-09-19 09:06:49'),
(22, 'a.boulougari@acg.edu', 'Andromachi', 'Boulougari', '$2y$10$AYZMgEOaBP7oe/9KEMw7uuI6CzvvSH3lExtUK6ZqevGDxddHUJzb6', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:38:12', 6, '6978165169', NULL, 1, '543272e63e0a35.03253190CTVJGDLWPH', '2014-10-06 13:45:58'),
(9, 'a.darivaki@acg.edu', 'Aimilia', 'Darivaki', '$2y$10$75qWQlw9u8BJ4n0ldQa/s.X4BvaeqcqUJ7hVVbdn3OIyXZNPeTW7e', 'assets/img/avatars/default_avatar.jpg', '2014-09-17 09:46:11', 4, '6973361028', NULL, 1, '5419895e73c185.96454964WMCARUJGXV', '2014-09-17 13:15:10'),
(31, 'e.kalokairinos@acg.edu', 'Emmanouil', 'Kalokairinos', '$2y$10$NkrlBCZ3lC4sWZZxVqkdBuCa.C0M06QkGgy2xnXQKKdc32R3iAjGG', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:57:17', 6, NULL, NULL, 1, '', '2014-09-21 14:58:19'),
(30, 's.gavrilaki@acg.edu', 'Sofia', 'Gavrilaki', '$2y$10$hPuojoSqmu6BAFu9IYaukuMEioNXMsnQn9xg4LaHBg9zGMClaj3F2', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:56:37', 6, NULL, NULL, 1, '', '2014-09-21 14:57:38'),
(29, 'a.davila@acg.edu', 'Alejandra', 'Yanez Davila', NULL, 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:55:48', 6, NULL, NULL, 1, '541ebd0290efa4.13002225OANHQVDXPU', '2014-09-21 14:56:50'),
(28, 'g.ziaidis@acg.edu', 'Georgios', 'Ziaidis', '$2y$10$0i7bTcG4kNbcXL0y/AaBXueOmvHr.V8qEhOKrvTnlGzeJ/g0JBxJO', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:54:59', 6, '6931812469', NULL, 1, '', '2014-10-06 13:34:40'),
(27, 'a.filippopoulou@acg.edu', 'Athanasia', 'Filippopoulou', '$2y$10$iwdc8vP4DDop28HLwD/sge2i0BvZ11v0dbLg31f/Q0x2m0cfUueUy', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:51:33', 6, '6955560707', NULL, 1, '', '2014-10-07 15:10:08'),
(26, 'g.falireas@acg.edu', 'Gregory', 'Falireas', '$2y$10$3Ik1N5bHa9i4QcFMhBRsHOeeCMxyJRjxIHK7MHP1weaaV3M8vRljy', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:50:47', 6, NULL, NULL, 1, '', '2014-10-08 02:47:22'),
(25, 'adiamantopoulou@acg.edu', 'Artemis', 'Diamantopoulou', '$2y$10$DsSMzUkXRRWVlYu0O0MFme6vO91eq4CezDUpjaIC.q6cO4MTfkaaq', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:45:10', 6, NULL, NULL, 1, '', '2014-10-06 12:09:26'),
(23, 'm.chioti@acg.edu', 'Maria', 'Chioti', '$2y$10$MUcyt3tyBWygw59gXFJhOuXVdtrdTimP2mZs/kLHJrv.s4FWsCd2m', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:41:24', 6, '6942853464', NULL, 1, '', '2014-09-21 14:42:26'),
(24, 'm.diamantidi@acg.edu', 'Mary', 'Diamantidis', '$2y$10$EKndoQ31IeQZ60eZlamBSOxRi1l.rnDwDzXUQXBvu/wDoQGbAn.Hy', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:42:37', 6, NULL, NULL, 1, '', '2014-10-06 14:26:05'),
(32, 'k.karadimou@acg.edu', 'Kyriaki', 'Karadimou', '$2y$10$Dg8wAXGygReEpVrps4dhKuxf8nVkqOmRkeIgHzR/Lz/pCpgngUTyu', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:57:52', 6, '6941601050', NULL, 1, '', '2014-10-06 08:23:51'),
(33, 'e.kolici@acg.edu', 'Edela Emmanouela', 'Kolici', '$2y$10$YWp2udYfczFk0X0VuCSYJ.zPlrBcyEnNbI4FLILVkc6DgyvNjOMgi', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:59:22', 6, '6979258240', NULL, 0, '', '2014-09-21 15:00:24'),
(34, 'f.mouriki@acg.edu', 'Foteini Kiara', 'Mouriki', '$2y$10$OxjRBMyH85D5xcKxJ9hlQ.lH8X2rglLdVnZJSkpqrkGM93z6ZAaz.', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 11:59:51', 6, '6986255773', NULL, 1, '', '2014-09-21 15:00:53'),
(35, 'a.mylona@acg.edu', 'Alexandra', 'Mylona', '$2y$10$2DwNdPrBXDKWQcnOLbH4RO0OdWVpXQYtthvdl/qhulpV/xRsm3NEq', 'assets/img/avatars/avatar_img_35.jpg', '2014-09-21 12:00:29', 6, NULL, 'Junior Deree Student, majoring in English and American Literature, with a minor in Human Resources Management. \r\nProfessional, Friendly, Patient ', 1, '', '2014-09-21 15:01:31'),
(36, 'a.orfanopoulou@acg.edu', 'Apollonia', 'Orfanopoulou', '$2y$10$7GFuILDMmA.oPteyOaLfEuOZlnjvY45qz545OkrOyLxzAwh61ODr6', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:01:07', 6, NULL, NULL, 1, '', '2014-09-21 15:02:09'),
(37, 'i.papadakis@acg.edu', 'Irene', 'Papadakis', '$2y$10$EmiT5R67Z4DHA7ui1cHkYegUpE3nQPpks3BLkf/O9Jm5T8R0ED5Jm', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:01:42', 6, NULL, NULL, 1, '', '2014-09-21 15:02:44'),
(38, 'm.papaioannou@acg.edu', 'Maria Zoe', 'Papaioannou', '$2y$10$Z8484mH6l.HqycCMB9oh8.H3JtOk.sx6/6UIOh.4KC0cu2K01f1Dq', 'assets/img/avatars/avatar_img_38.jpg', '2014-09-21 12:02:35', 6, '6978838266', 'My mommy thinks I am special..', 1, '', '2014-10-05 23:42:23'),
(39, 'dale.pappas59@gmail.com', 'Dale', 'Pappas', '$2y$10$FZgcjahgCqHchkq2MPGV1OwDBeI.vEMbijZLe66YxuaUhXRAxETMK', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:03:49', 6, NULL, NULL, 1, '', '2014-09-21 15:04:51'),
(40, 'p.paraskevopoulos@acg.edu', 'Petros Ioannis', 'Paraskevopoulos', NULL, 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:04:44', 6, NULL, NULL, 1, '541ebf1a413291.83091315YOUWXHNSMZ', '2014-09-21 15:05:46'),
(41, 'n.saranti@acg.edu', 'Natalia', 'Saranti', '$2y$10$AMLBKpDdrK6xgD.L/HVyLeOGHqFaoz.5d98ePlJhs9VqFkjNp4WF.', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:06:22', 6, '6945422660', NULL, 1, '', '2014-09-21 15:07:24'),
(42, 't.sotiriou@acg.edu', 'Thodoris', 'Sotiriou', '$2y$10$nUVUoauAJk3KrLaJOI32Z.prDpQzmE4jnmqtwSCI0nWFShorh7dj2', 'assets/img/avatars/avatar_img_42.jpg', '2014-09-21 12:07:01', 6, '6979340015', '1.98, blonde, MBA holder and single in NY', 1, '', '2014-09-21 15:08:03'),
(43, 'v.sotiropoulos@acg.edu', 'Vasilis', 'Sotiropoulos', NULL, 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:07:39', 6, NULL, NULL, 1, '541ebfc96a0526.81666947JOSCDVGXQW', '2014-09-21 15:08:41'),
(44, 'a.sourlis@acg.edu', 'Aristotelis', 'Sourlis', '$2y$10$d.vS8i6CKak27PZ2A4.uQeVqIHB1pdNaZDBU0wbwaJq6ZiwQbCVfK', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:08:21', 5, NULL, NULL, 1, '', '2014-10-06 12:20:02'),
(45, 'd.spyrou@acg.edu', 'Dimitrios', 'Spyrou', '$2y$10$VKJ9YrId6mEQIwxe.6RbZubnP1WuplOAWCNrTVV7N23egvuvCWLx6', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:09:21', 6, '6932273216', NULL, 1, '', '2014-09-21 15:10:23'),
(46, 'e.tzempelikou@acg.edu', 'Eleni', 'Tzempelikou', '$2y$10$FjIyduCkEsHoVIwL0RdMSO6xLWnMz0FoNEHujlgKFtxnhZdrlxvYG', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:10:06', 6, NULL, NULL, 1, '', '2014-10-06 11:16:41'),
(47, 's.vallianos@acg.edu', 'Spyros', 'Vallianos', '$2y$10$wEFUpxfk7vntQChgx77gne1XZbrL0TKfWiLFD0aC2ibcj1vfPRyjS', 'assets/img/avatars/avatar_img_47.jpg', '2014-09-21 12:11:21', 5, '6947347554', NULL, 1, '', '2014-09-21 15:12:23'),
(48, 'michail.vartholomaios@acg.edu', 'Michail', 'Vartholomaios', '$2y$10$5UTgxTMLHai3FBeh9auAruu9uR9E4P/GUR2yiSgFRHncQBZyfnitS', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:12:57', 5, NULL, NULL, 1, '', '2014-10-06 16:12:54'),
(49, 't.vasilopoulou@acg.edu', 'Theofano', 'Vasilopoulou', '$2y$10$bUTaz0g9hv/w3ohcyhO7zeM7gABzidLps.767VxQTZ3U73vR66MPG', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:13:33', 6, NULL, NULL, 1, '', '2014-10-06 15:48:13'),
(50, 'a.villiotis@acg.edu', 'Angelos', 'Villiotis', '$2y$10$gQd0ylu4km6tVIyLkFti7eYVHIgxyPvgdIeJZ4ebSdozX67acM8a.', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:14:09', 5, '6985734144', NULL, 1, '', '2014-10-06 10:46:52'),
(51, 'alexandros.vogiatzis@acg.edu', 'Alexandros', 'Vogiatzis', '$2y$10$V8fY9jTxZhLvU6pjXdVHpuZzlRnYZ0iGyNfAjJ6wjqaBmDh4N/34q', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 12:16:22', 6, '6944975585', NULL, 1, '', '2014-10-09 16:53:59'),
(54, 'o.gkioumes@acg.edu', 'Omiros', 'Gkioumes', '$2y$10$UxaMnj2yKLuVgtXI5DRowuHO0.nSM3LryQppadERAVOYhHSKICQ4K', 'assets/img/avatars/default_avatar.jpg', '2014-09-22 14:01:15', 5, '6989595366', 'Taking Vitamins to survive', 1, '', '2014-10-09 17:04:29'),
(53, 'g.kyriazis@acg.edu', 'Gregory', 'Kyriazis', '$2y$10$K0MqxJekftMdPxo0JE3N4Oyrhv77e9SEfGq/WIaYUUlZS98e4dRw.', 'assets/img/avatars/default_avatar.jpg', '2014-09-21 16:35:43', 6, '6977596161', 'A naturally curious person who likes challenges and enjoys problem-solving in a variety of scenarios, ranging from computer programming and physics modeling to stage light designing for theater and business administration... and anything in between.', 1, '', '2014-09-21 19:36:45'),
(55, 'a.diagoupis@acg.edu', 'Antonios', 'Diagoupis', NULL, 'assets/img/avatars/default_avatar.jpg', '2014-09-25 09:36:02', 6, NULL, NULL, 1, '5423e202afd697.80737246CFMADPTGQB', '2014-09-25 12:36:02'),
(56, 'grkatsas@acg.edu', 'Gregory', 'Katsas', '$2y$10$BMhr/y7Uaem2SJ.nLf6VI.pD5xT9O2OLCtkvbo4W3YV5uxbZ.XTp.', 'assets/img/avatars/default_avatar.jpg', '2014-10-02 08:15:20', 4, NULL, NULL, 1, '', '2014-10-02 11:15:20'),
(57, 'r.dokollari@gmail.com', 'Rizart', 'Dokollari', '$2y$10$GG6TAy0vLjxX6HEIaIvN.uSaop77.sa0adgzeQD/81HOAadVm0JA6', 'assets/img/avatars/default_avatar.jpg', '2014-10-03 05:10:26', 6, NULL, NULL, 1, '', '2014-10-03 08:10:26'),
(58, 'p.anastasakis@acg.edu', 'Penelope', 'Anastasakis', '$2y$10$ur5rLfd1C3oZ4CXBK6oy3e15ob8lnyBxgN5SwRkdVwIL3e9nV8INS', 'assets/img/avatars/default_avatar.jpg', '2014-10-03 12:22:25', 5, '6982136576', NULL, 1, '', '2014-10-03 15:22:25'),
(59, 'a.doulkeroglou@acg.edu', 'Alkyoni', 'Doulkeroglou', NULL, 'assets/img/avatars/default_avatar.jpg', '2014-10-03 12:50:43', 6, NULL, NULL, 1, '542e9ba3ad77b5.01216316QPSTALVYNZ', '2014-10-03 15:50:43'),
(60, 'dalepappas@yahoo.com', 'Dale', 'Pappas', NULL, 'assets/img/avatars/default_avatar.jpg', '2014-10-03 13:26:37', 5, NULL, NULL, 1, '542ea40dc5e1b1.35752945WQBAIVZYKN', '2014-10-03 16:26:37'),
(61, 'emmanouil.kalokairinos@hotmail.com', 'Emmanouil', 'Kalokairinos', '$2y$10$qGvLNvMNM4TBZWC/XriS6u6ZO66xFAhNxPhMg/qpxtqDABXvpAzWC', 'assets/img/avatars/default_avatar.jpg', '2014-10-03 13:27:39', 5, NULL, NULL, 1, '', '2014-10-03 16:27:39'),
(62, 'geo-i.f@hotmail.com', 'George', 'Skarlatos', '$2y$10$LS5OPlv3txiBzQ5NgcHbJO5nO9QrvLPCeFvP6PUX4cvdSHsGGWE8G', 'assets/img/avatars/default_avatar.jpg', '2014-10-07 09:59:01', 6, NULL, NULL, 1, '', '2014-10-07 12:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description_UNIQUE` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type`) VALUES
(4, 'admin'),
(5, 'secretary'),
(6, 'tutor');

-- --------------------------------------------------------

--
-- Table structure for table `work_week_hours`
--

CREATE TABLE IF NOT EXISTS `work_week_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `term_id` int(11) NOT NULL,
  `tutor_user_id` int(11) NOT NULL,
  `monday` tinyint(1) NOT NULL,
  `tuesday` tinyint(1) NOT NULL,
  `wednesday` tinyint(1) NOT NULL,
  `thursday` tinyint(1) NOT NULL,
  `friday` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_work_day_schedule1_idx` (`term_id`),
  KEY `fk_work_week_hours_tutor1_idx` (`tutor_user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `work_week_hours`
--

INSERT INTO `work_week_hours` (`id`, `start`, `end`, `term_id`, `tutor_user_id`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
(58, '13:30:00', '16:30:00', 2, 45, 0, 1, 0, 1, 0),
(79, '10:00:00', '12:00:00', 2, 23, 1, 0, 1, 0, 1),
(16, '11:00:00', '15:30:00', 2, 23, 0, 1, 0, 1, 0),
(59, '15:00:00', '16:00:00', 2, 46, 1, 0, 1, 0, 0),
(18, '16:30:00', '17:30:00', 2, 55, 0, 1, 0, 1, 0),
(19, '14:00:00', '16:00:00', 2, 24, 1, 0, 1, 0, 1),
(20, '11:00:00', '13:00:00', 2, 25, 1, 0, 1, 0, 1),
(21, '15:00:00', '15:30:00', 2, 25, 1, 0, 1, 0, 1),
(22, '10:00:00', '17:30:00', 2, 25, 0, 1, 0, 0, 0),
(23, '12:00:00', '13:00:00', 2, 26, 1, 0, 0, 0, 1),
(24, '15:00:00', '16:00:00', 2, 26, 0, 0, 1, 0, 0),
(26, '16:00:00', '18:00:00', 2, 27, 1, 0, 1, 0, 0),
(77, '12:00:00', '14:00:00', 2, 22, 0, 1, 0, 1, 0),
(84, '15:00:00', '17:30:00', 2, 22, 0, 1, 0, 1, 0),
(33, '11:00:00', '14:00:00', 2, 31, 1, 0, 0, 0, 0),
(32, '13:00:00', '14:00:00', 2, 30, 0, 1, 0, 1, 0),
(31, '12:00:00', '14:00:00', 2, 30, 1, 0, 1, 0, 1),
(34, '09:30:00', '10:30:00', 2, 31, 0, 1, 0, 0, 0),
(35, '14:00:00', '15:00:00', 2, 31, 0, 1, 0, 0, 0),
(36, '14:00:00', '15:00:00', 2, 31, 0, 0, 0, 1, 0),
(37, '15:00:00', '17:00:00', 2, 32, 1, 0, 1, 0, 1),
(85, '13:30:00', '15:00:00', 2, 59, 0, 1, 0, 1, 0),
(86, '14:00:00', '19:00:00', 2, 39, 1, 0, 1, 0, 0),
(40, '12:30:00', '15:00:00', 2, 53, 0, 1, 0, 1, 0),
(82, '12:00:00', '14:00:00', 2, 34, 1, 0, 0, 0, 0),
(42, '11:00:00', '14:00:00', 2, 35, 1, 0, 1, 0, 1),
(43, '13:00:00', '16:00:00', 2, 35, 0, 1, 0, 1, 0),
(44, '11:00:00', '12:00:00', 2, 36, 0, 1, 0, 1, 0),
(45, '14:00:00', '15:00:00', 2, 36, 0, 1, 0, 1, 0),
(46, '16:30:00', '17:30:00', 2, 36, 0, 1, 0, 1, 0),
(47, '11:00:00', '18:00:00', 2, 36, 0, 0, 1, 0, 0),
(48, '17:00:00', '18:00:00', 2, 37, 1, 0, 0, 0, 0),
(49, '12:30:00', '15:00:00', 2, 37, 0, 1, 0, 1, 0),
(80, '15:30:00', '17:30:00', 2, 27, 0, 1, 0, 1, 0),
(51, '11:00:00', '14:00:00', 2, 41, 0, 1, 0, 1, 0),
(52, '12:00:00', '15:00:00', 2, 42, 1, 1, 1, 1, 1),
(53, '15:00:00', '16:00:00', 2, 43, 1, 0, 1, 0, 1),
(54, '15:30:00', '16:30:00', 2, 43, 0, 1, 0, 0, 0),
(55, '14:30:00', '16:30:00', 2, 43, 0, 0, 0, 1, 0),
(56, '15:00:00', '17:00:00', 2, 45, 1, 0, 1, 0, 1),
(60, '11:30:00', '13:30:00', 2, 46, 0, 0, 0, 0, 1),
(61, '16:30:00', '17:30:00', 2, 46, 0, 1, 0, 1, 0),
(62, '14:00:00', '17:00:00', 2, 49, 1, 0, 1, 0, 0),
(63, '14:00:00', '16:00:00', 2, 49, 0, 0, 0, 0, 1),
(64, '16:00:00', '18:00:00', 2, 51, 0, 1, 0, 1, 0),
(65, '09:00:00', '11:00:00', 2, 29, 1, 0, 1, 0, 1),
(66, '11:00:00', '13:00:00', 2, 29, 0, 1, 0, 1, 0),
(67, '13:00:00', '16:00:00', 2, 28, 1, 0, 0, 0, 0),
(68, '13:30:00', '15:30:00', 2, 28, 0, 0, 1, 0, 0),
(83, '13:00:00', '15:00:00', 2, 34, 0, 0, 1, 0, 1),
(72, '13:00:00', '15:00:00', 2, 40, 0, 1, 0, 1, 0),
(71, '15:00:00', '16:00:00', 2, 40, 1, 0, 0, 0, 0),
(73, '11:00:00', '13:00:00', 2, 40, 0, 0, 1, 0, 0),
(74, '12:00:00', '13:00:00', 2, 40, 0, 0, 0, 0, 1),
(75, '15:00:00', '16:00:00', 2, 40, 0, 0, 0, 0, 1),
(76, '17:00:00', '18:00:00', 2, 40, 0, 0, 0, 0, 1),
(81, '12:00:00', '14:00:00', 2, 27, 0, 0, 0, 0, 1),
(87, '13:00:00', '18:00:00', 2, 39, 0, 0, 0, 0, 1),
(88, '15:00:00', '16:00:00', 2, 62, 1, 0, 1, 0, 1),
(89, '10:00:00', '11:00:00', 2, 38, 1, 0, 1, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;