-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2023 at 11:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audit_trailing`
--

-- --------------------------------------------------------

--
-- Table structure for table `evidence`
--

CREATE TABLE `evidence` (
  `evidenceNumber` int(11) NOT NULL,
  `caseID` varchar(20) NOT NULL,
  `evidenceName` varchar(100) NOT NULL,
  `fingerPrint` varchar(255) NOT NULL,
  `recoveredFrom` varchar(250) NOT NULL,
  `assignedOfficer` varchar(50) NOT NULL,
  `imagePath` varchar(1000) NOT NULL,
  `fileHash` varchar(500) NOT NULL,
  `uploadedBy` varchar(100) NOT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evidence`
--

INSERT INTO `evidence` (`evidenceNumber`, `caseID`, `evidenceName`, `fingerPrint`, `recoveredFrom`, `assignedOfficer`, `imagePath`, `fileHash`, `uploadedBy`, `verification`) VALUES
(48, 'Architecto ', 'Ann ', 'Dolore', 'Ipsum ', 'Explicabo ', 'uploads/sample.jpg', '', '', 1),
(49, 'Quis tenetur eiusmod', 'Blaine Estes', 'Asperiores magnam co', 'Non quia mollitia no', 'Deserunt in enim rem', 'uploads/sample.jpg', '', '', 1),
(50, 'Quis tenetur eiusmod', 'Blaine Estes', 'Asperiores magnam co', 'Non quia mollitia no', 'Deserunt in enim rem', 'uploads/sample.jpg', '', '', 0),
(51, 'Quis tenetur eiusmod', 'Blaine Estes', 'Asperiores magnam co', 'Non quia mollitia no', 'Deserunt in enim rem', 'uploads/sample.jpg', '', '', 0),
(52, 'Voluptates beatae mi', 'Skyler Solomon', 'Eum autem velit et ', 'Duis aspernatur illu', 'In dolor et tempora ', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', '', 1),
(53, 'Sunt sint deserunt ', 'Libby Battle', 'Assumenda duis dolor', 'Dolorem libero conse', 'Dolorum necessitatib', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', '1', 1),
(54, 'Est minima incidunt', 'Guinevere Guy', 'Qui error qui aut ma', 'Temporibus hic in er', 'Aliquid in deserunt ', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', '3', 0),
(55, 'Deleniti mollitia ve', 'Keefe Stark', 'Aut elit in quia su', 'Animi ea mollit ani', 'Excepturi vel nemo c', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 1),
(56, 'Deleniti mollitia ve', 'Keefe Stark', 'Aut elit in quia su', 'Animi ea mollit ani', 'Excepturi vel nemo c', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 1),
(57, 'In rerum quia repreh', 'Idona Stevens', 'Illo rem voluptatum ', 'Qui nostrud esse omn', 'Minima fugiat dolor', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(58, 'Inventore ut ut magn', 'Wynter Kaufman', 'Aspernatur eum commo', 'Enim aliquid consequ', 'Ut obcaecati sunt fa', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(59, 'Quo sunt vel consequ', 'Melissa Beach', 'Eaque eu nulla magna', 'Ea minima et molesti', 'Omnis necessitatibus', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(60, 'Laborum odit exceptu', 'James Keller', 'Anim sequi consectet', 'Est ut aut corrupti', 'Nemo a mollitia sed ', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(61, 'Voluptatem tenetur e', 'Jocelyn Decker', 'Ut labore pariatur ', 'Laborum Suscipit ei', 'Harum sit rerum dict', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(62, '1776', 'Swords', 'yes', 'Near the Theatre', 'Kasun de Silva', 'uploads/sample.jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(63, '1999', 'photo of the criminal', 'No', 'Facebook', 'Samantha De Silva', 'uploads/SLIIT.png', '1adfe2009a78b61ba9bc5ad51202a581', 'perera', 0),
(64, 'Ea nihil blanditiis ', 'Whoopi Frederick', 'Laudantium minim su', 'Quis quia dolore ali', 'Qui illo a in esse i', 'uploads/sample evidence.jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(65, 'Nesciunt molestiae ', 'Dorothy Williams', 'Doloremque minim vol', 'Rerum ut minima aut ', 'Assumenda fugit iur', 'uploads/WhatsApp Image 2023-10-24 at 11.53.13 PM.jpeg', '32e60e9ead0b8ccb34a9127a2f159e53', 'perera', 0),
(66, 'Vel sit in mollitia ', 'Rhona Monroe', 'Cumque adipisicing e', 'Pariatur Consequatu', 'Autem provident nih', 'uploads/chain-of-custody-solutions-in-supply-chain-management-1920x1080.jpg', 'cd1484b50947286f301a3419e1d6704c', 'thushi', 0),
(67, 'Id pariatur Molliti', 'Aladdin Burns', 'Sequi rerum est Nam', 'Qui ducimus eius ve', 'Fugiat illum conse', 'uploads/sample (1).jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 0),
(68, 'Id pariatur Molliti', 'Aladdin Burns', 'Sequi rerum est Nam', 'Qui ducimus eius ve', 'Fugiat illum conse', 'uploads/sample (1).jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 0),
(69, 'Qui totam atque quis', 'Jada Miranda', 'Voluptatem molestia', 'Do quia dolor totam ', 'Rerum est corporis v', 'uploads/sample (1).jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 0),
(70, 'Sit iusto cupidatat', 'Seth Phillips', 'Cillum dolore adipis', 'Cillum nihil ipsum i', 'Molestiae harum eaqu', 'uploads/Poster.JPG', 'd330bcb771cf76f04d8ece4bb2866cf9', 'thushi', 0),
(71, 'Consequat Officia a', 'Amos Dillon', 'Placeat magnam ea n', 'Veritatis culpa qui', 'Consequat In earum ', 'uploads/chain-of-custody-solutions-in-supply-chain-management-1920x1080 (1).jpg', 'cd1484b50947286f301a3419e1d6704c', 'thushi', 0),
(73, 'Eligendi accusantium', 'Abdul Moreno', 'Animi cum unde irur', 'Vel tempor praesenti', 'Laboris alias ut adi', 'uploads/sample (1).jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 1),
(74, 'Theeban', 'Gun', 'Yes', 'Malabe', 'Kanishkar', 'uploads/sample (1).jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 0),
(79, 'vghjghjgjg', 'Amber Wade', 'Eius eligendi consec', 'Iste suscipit autem ', 'Pariatur Et aliquid', 'uploads/sample (3).jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 0),
(80, 'Blanditiis dolor cum', 'Carl Cunningham', 'Enim lorem quidem la', 'Qui qui quo sint aut', 'Hic architecto rerum', 'uploads/sample (5).jpg', '305769af1257ffa3a41521f4de743c66', 'thushi', 0),
(81, 'Sed quo voluptatibus', 'Larissa Bradshaw', 'Pariatur Officiis n', 'Voluptas enim vel al', 'Suscipit nobis est ', 'uploads/scared.mp3', '63c6eac946f7e4a32d0f59cd7a9153e1', 'thushi', 1),
(82, 'Incidunt consequatu', 'Kalia Harper', 'Nostrum adipisicing ', 'Possimus ullam et m', 'Ut magni dolores cor', 'uploads/scared.mp3', '63c6eac946f7e4a32d0f59cd7a9153e1', 'thushi', 0),
(83, 'Necessitatibus aliqu', 'Sean Burks', 'No', 'In totam vel molesti', 'Aut non officia volu', 'uploads/favicon.png', '0f4f8a83946aaa4fc0af155dd079cec1', 'thushi', 0),
(84, 'Necessitatibus aliqu', 'Sean Burks', 'No', 'In totam vel molesti', 'Aut non officia volu', 'uploads/favicon.png', '0f4f8a83946aaa4fc0af155dd079cec1', 'thushi', 0),
(85, '1998', 'John Wick', 'Yes', 'The Continental', 'Winston', 'uploads/logo.png', 'ee09ee3a08facdfadc567c576498a886', 'thushi', 0),
(86, 'Eos eu mollitia exce', 'Brett Lawrence', 'Yes', 'Hic quas molestiae q', 'Voluptatum et impedi', 'uploads/logo (3).png', 'ee09ee3a08facdfadc567c576498a886', 'thushi', 0),
(87, 'Illum nihil sunt es', 'Ainsley Jones', 'Yes', 'Qui distinctio Sit', 'Eius rerum maxime mo', 'uploads/logo (2).png', 'ee09ee3a08facdfadc567c576498a886', 'thushi', 0),
(88, 'Est provident volup', 'Benjamin Hicks', 'No', 'Ut qui voluptates ve', 'Natus accusantium ac', 'uploads/sample (3).jpg', '305769af1257ffa3a41521f4de743c66', 'perera', 0),
(89, '20012', 'Swords and Guns', 'Yes', 'Near Dematagoda Railway Station', 'Thisara Dilshan', 'uploads/gun-dematagoda.jpg', 'bbda74c53942769aad3dfab62a4961d8', 'thushi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `action_made` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `action_made`, `date_created`) VALUES
(1, 1, 'Logged out.', '2021-10-07 10:43:44'),
(2, 1, 'Logged in the system.', '2021-10-07 10:44:33'),
(4, 1, 'Logged in the system.', '2021-10-07 10:50:07'),
(5, 1, ' added [id=0] Claire Blake into the member list.', '2021-10-07 11:51:27'),
(6, 1, ' added [id=2] John Smith into the member list.', '2021-10-07 11:55:00'),
(7, 1, ' updated the details of [id=1] member.', '2021-10-07 12:50:55'),
(8, 1, ' added [id=3] test test into the member list.', '2021-10-07 12:51:25'),
(9, 1, ' added [id=4] test test into the member list.', '2021-10-07 12:55:57'),
(10, 1, ' deleted [id=4] test test from member list.', '2021-10-07 12:56:04'),
(11, 1, ' viewed the data of [id=1]Clairy Blake', '2021-10-07 13:13:09'),
(12, 1, ' viewed the data of [id=2]John Smith', '2021-10-07 13:13:32'),
(13, 1, ' viewed the data of [id=1]Clairy Blake', '2021-10-07 13:16:02'),
(14, 1, 'Logged out.', '2021-10-07 13:16:11'),
(15, 2, 'Logged in the system.', '2021-10-07 13:16:15'),
(16, 2, ' added [id=5] Mike Williams into the member list.', '2021-10-07 13:17:46'),
(17, 2, ' viewed the data of [id=5]Mike Williams', '2021-10-07 13:17:58'),
(18, 2, ' updated the details of [id=5] member.', '2021-10-07 13:18:15'),
(19, 3, 'Logged in the system.', '2023-07-16 00:16:14'),
(20, 3, ' added [id=6] Thushi Sutha into the member list.', '2023-07-16 09:12:05'),
(21, 3, ' viewed the data of [id=] ', '2023-07-16 09:16:38'),
(22, 3, ' viewed the data of [id=] ', '2023-07-16 09:16:40'),
(23, 3, ' updated the details of [id=6] member.', '2023-07-16 09:48:18'),
(24, 3, 'Logged out.', '2023-07-16 09:51:53'),
(25, 3, 'Logged in the system.', '2023-07-16 09:51:59'),
(26, 3, 'Logged out.', '2023-07-16 10:13:02'),
(27, 2, 'Logged in the system.', '2023-07-16 10:13:07'),
(28, 2, 'Logged out.', '2023-07-16 10:14:40'),
(29, 1, 'Logged in the system.', '2023-07-16 10:14:45'),
(30, 1, ' viewed the data of [id=1]Clairy Blake', '2023-07-16 10:50:27'),
(31, 1, ' viewed the data of [id=6]Thushi Sutha', '2023-07-16 10:50:33'),
(32, 1, ' updated the details of [id=2] member.', '2023-07-17 00:26:49'),
(33, 3, 'Logged in the system.', '2023-08-19 10:25:54'),
(34, 3, 'Logged out.', '2023-08-25 15:08:50'),
(35, 3, 'Logged in the system.', '2023-08-25 15:09:20'),
(36, 3, 'Logged in the system.', '2023-09-01 11:00:25'),
(37, 3, 'Logged out.', '2023-09-01 11:00:45'),
(38, 2, 'Logged in the system.', '2023-09-01 11:00:51'),
(39, 2, ' added [id=7] Vinoshan T into the member list.', '2023-09-02 14:48:11'),
(40, 2, ' viewed the data of [id=1]Clairy Blake', '2023-09-03 11:18:16'),
(41, 2, ' deleted [id=7] Vinoshan T from member list.', '2023-09-03 11:20:02'),
(42, 2, ' added [id=8] Abithasan Manoranjan into the member list.', '2023-09-03 13:09:37'),
(43, 3, 'Logged in the system.', '2023-09-06 09:57:13'),
(44, 3, 'Logged out.', '2023-09-06 10:03:44'),
(45, 1, 'Logged in the system.', '2023-09-06 10:04:23'),
(46, 1, ' added [id=9] Abi Lash into the member list.', '2023-09-06 13:25:03'),
(47, 1, 'Logged out.', '2023-09-06 22:02:52'),
(48, 3, 'Logged in the system.', '2023-09-06 22:02:58'),
(49, 3, 'Logged out.', '2023-09-06 22:38:46'),
(50, 1, 'Logged in the system.', '2023-09-06 22:38:52'),
(51, 1, 'Logged out.', '2023-09-06 22:48:54'),
(52, 4, 'Logged in the system.', '2023-09-06 22:48:59'),
(53, 4, ' added [id=10] Sadun Perera into the member list.', '2023-09-06 22:58:51'),
(54, 4, 'perera uploaded \'Melissa Beach\' for case \'Quo sunt vel consequ\'', '2023-09-06 23:12:45'),
(55, 4, 'Uploaded \'James Keller\' for case \'Laborum odit exceptu\'', '2023-09-06 23:15:54'),
(56, 4, 'Uploaded \'uploads/sample.jpg\' for case \'Voluptatem tenetur e\'', '2023-09-06 23:18:44'),
(57, 4, 'Uploaded \'uploads/sample.jpg\' for case \'1776\'', '2023-09-06 23:19:52'),
(58, 4, 'Uploaded \'uploads/SLIIT.png\' for case \'1999\'', '2023-09-07 00:20:29'),
(59, 4, 'Uploaded \'uploads/sample evidence.jpg\' for case \'Ea nihil blanditiis \'', '2023-09-07 10:58:40'),
(60, 3, 'Logged in the system.', '2023-10-05 23:59:44'),
(61, 3, ' viewed the data of [id=9]Abi Lash', '2023-10-11 00:23:07'),
(62, 3, 'Logged out.', '2023-10-16 08:27:37'),
(63, 3, 'Logged in the system.', '2023-10-22 07:37:48'),
(64, 3, 'Logged in the system.', '2023-10-23 10:25:57'),
(65, 3, 'Logged in the system.', '2023-10-24 12:52:38'),
(66, 3, 'Logged out.', '2023-10-25 09:22:54'),
(67, 3, 'Logged in the system.', '2023-10-25 09:24:17'),
(68, 3, 'Logged out.', '2023-10-25 09:47:13'),
(69, 4, 'Logged in the system.', '2023-10-25 09:47:18'),
(70, 4, 'Uploaded \'uploads/WhatsApp Image 2023-10-24 at 11.53.13 PM.jpeg\' for case \'Nesciunt molestiae \'', '2023-10-25 09:49:59'),
(71, 4, 'Logged out.', '2023-10-25 09:58:55'),
(72, 3, 'Logged in the system.', '2023-10-25 10:15:13'),
(73, 3, 'Logged out.', '2023-10-25 10:15:19'),
(74, 3, 'Logged in the system.', '2023-10-25 11:13:26'),
(75, 3, 'Logged out.', '2023-10-25 11:19:18'),
(76, 3, 'Logged in the system.', '2023-10-25 11:19:48'),
(77, 3, 'Logged out.', '2023-10-25 21:51:24'),
(78, 3, 'Logged in the system.', '2023-10-25 22:01:48'),
(79, 3, 'Uploaded \'uploads/chain-of-custody-solutions-in-supply-chain-management-1920x1080.jpg\' for case \'Vel sit in mollitia \'', '2023-10-25 22:03:44'),
(80, 3, 'Logged in the system.', '2023-10-25 22:11:30'),
(81, 3, 'Logged in the system.', '2023-10-25 23:11:43'),
(82, 3, ' viewed the data of [id=6]Thushi Sutha', '2023-10-25 23:12:00'),
(83, 3, ' updated the details of [id=6] member.', '2023-10-26 09:11:16'),
(84, 3, 'Uploaded \'uploads/sample (1).jpg\' for case \'Id pariatur Molliti\'', '2023-10-26 15:28:05'),
(85, 3, 'Uploaded \'uploads/sample (1).jpg\' for case \'Id pariatur Molliti\'', '2023-10-26 15:32:05'),
(86, 3, 'Uploaded \'uploads/sample (1).jpg\' for case \'Qui totam atque quis\'', '2023-10-26 15:38:56'),
(87, 3, 'Uploaded \'uploads/Poster.JPG\' for case \'Sit iusto cupidatat\'', '2023-10-26 15:39:19'),
(88, 3, 'Uploaded \'uploads/chain-of-custody-solutions-in-supply-chain-management-1920x1080 (1).jpg\' for case \'Consequat Officia a\'', '2023-10-26 15:42:32'),
(89, 3, 'Uploaded \'uploads/sample (1).jpg\' for case \'Eu ut voluptatem quo\'', '2023-10-26 15:45:58'),
(90, 3, 'Uploaded \'uploads/sample (1).jpg\' for case \'Eligendi accusantium\'', '2023-10-26 15:48:38'),
(91, 3, 'Uploaded \'uploads/sample (1).jpg\' for case \'Theeban\'', '2023-10-26 15:52:30'),
(92, 3, 'Logged in the system.', '2023-10-26 15:52:58'),
(93, 3, ' added [id=11] Kaviseshan Santhiraprakasam into the member list.', '2023-10-26 15:53:44'),
(94, 3, 'Logged in the system.', '2023-10-26 16:58:29'),
(95, 3, 'Uploaded \'uploads/Information.pdf\' for case \'Hic inventore aperia\'', '2023-10-27 01:08:40'),
(96, 3, 'Uploaded \'uploads/FONTS_KALAANETHRAA (2).zip\' for case \'Veniam blanditiis d\'', '2023-10-27 01:09:20'),
(97, 3, 'Logged in the system.', '2023-10-27 07:49:33'),
(98, 3, 'Logged in the system.', '2023-10-27 07:52:57'),
(99, 3, 'Uploaded \'uploads/Photo on 2023-10-26 at 12.32 PM.jpg\' for case \'Cum sit esse pariat\'', '2023-10-27 07:56:05'),
(100, 3, 'Uploaded \'uploads/Poster.JPG\' for case \'Magna libero proiden\'', '2023-10-27 08:01:43'),
(101, 3, 'Uploaded \'uploads/sample (3).jpg\' for case \'vghjghjgjg\'', '2023-10-27 23:37:36'),
(102, 3, 'Uploaded \'uploads/sample (5).jpg\' for case \'Blanditiis dolor cum\'', '2023-10-28 00:34:11'),
(103, 3, 'Uploaded \'uploads/scared.mp3\' for case \'Sed quo voluptatibus\'', '2023-10-28 00:36:14'),
(104, 3, 'Logged out.', '2023-10-28 10:31:02'),
(105, 3, 'Logged in the system.', '2023-10-28 10:34:06'),
(106, 3, ' viewed the data of [id=9]Abi Lash', '2023-10-28 10:34:27'),
(107, 3, 'Uploaded \'uploads/scared.mp3\' for case \'Incidunt consequatu\'', '2023-10-28 10:35:21'),
(108, 3, 'Logged in the system.', '2023-10-28 14:27:22'),
(109, 3, 'Logged out.', '2023-10-28 20:29:27'),
(110, 3, 'Logged in the system.', '2023-10-28 20:44:27'),
(111, 3, 'Logged in the system.', '2023-10-28 20:47:09'),
(112, 3, 'Logged in the system.', '2023-10-28 20:50:20'),
(113, 3, 'Logged out.', '2023-10-28 20:50:54'),
(114, 3, 'Logged in the system.', '2023-10-28 21:30:11'),
(115, 3, 'Logged in the system.', '2023-10-29 08:29:09'),
(116, 3, 'Uploaded \'uploads/favicon.png\' for case \'Necessitatibus aliqu\'', '2023-10-29 09:02:56'),
(117, 3, 'Uploaded \'uploads/favicon.png\' for case \'Necessitatibus aliqu\'', '2023-10-29 09:04:36'),
(118, 3, 'Uploaded \'uploads/logo.png\' for case \'1998\'', '2023-10-29 09:06:05'),
(119, 3, 'Logged in the system.', '2023-10-29 10:10:16'),
(120, 3, 'Logged in the system.', '2023-10-29 10:41:50'),
(121, 3, 'Uploaded \'uploads/logo (3).png\' for case \'Eos eu mollitia exce\'', '2023-10-29 14:41:48'),
(122, 3, 'Uploaded \'uploads/logo (2).png\' for case \'Illum nihil sunt es\'', '2023-10-29 14:42:48'),
(123, 3, 'Downloaded \'Sean Burks\' for case \'Necessitatibus aliqu\'', '2023-10-29 14:59:35'),
(124, 3, 'Downloaded \'Gun\' for case \'Theeban\'', '2023-10-29 15:00:55'),
(125, 3, 'Downloaded \'Sean Burks\' for case \'Necessitatibus aliqu\'', '2023-10-29 15:03:48'),
(126, 3, 'Downloaded \'Larissa Bradshaw\' for case \'Sed quo voluptatibus\'', '2023-10-29 15:04:39'),
(127, 3, 'Downloaded \'Blaine Estes\' for case \'Quis tenetur eiusmod\'', '2023-10-29 15:09:58'),
(128, 3, 'Downloaded \'John Wick\' for case \'1998\'', '2023-10-29 15:10:52'),
(129, 3, 'Downloaded \'Sean Burks\'', '2023-10-29 15:13:15'),
(130, 3, 'Downloaded \'Brett Lawrence\'', '2023-10-29 15:14:27'),
(131, 3, 'Logged out.', '2023-10-29 15:35:33'),
(132, 4, 'Logged in the system.', '2023-10-29 15:35:37'),
(133, 4, 'Downloaded \'Blaine Estes\'', '2023-10-29 15:35:48'),
(134, 4, 'Uploaded \'uploads/sample (3).jpg\' for case \'Est provident volup\'', '2023-10-29 15:53:18'),
(135, 4, 'Downloaded \'Benjamin Hicks\'', '2023-10-29 15:53:34'),
(136, 4, 'Downloaded \'John Wick\'', '2023-10-29 15:58:26'),
(137, 4, 'Downloaded \'Abdul Moreno\'', '2023-10-29 15:58:43'),
(138, 4, 'Downloaded \'Benjamin Hicks\'', '2023-10-29 15:58:55'),
(139, 4, 'Downloaded \'Carl Cunningham\'', '2023-10-29 16:01:55'),
(140, 4, 'Downloaded \'Sean Burks\'', '2023-10-29 16:03:08'),
(141, 4, 'Downloaded \'Sean Burks\'', '2023-10-29 16:03:55'),
(142, 4, 'Downloaded \'Sean Burks\' from location \'\'', '2023-10-29 16:05:59'),
(143, 4, 'Downloaded \'Brett Lawrence\' from location \'uploads/logo (3).png\'', '2023-10-29 16:07:18'),
(144, 4, 'Downloaded \'Kalia Harper\' from location \'uploads/scared.mp3\'', '2023-10-29 22:58:39'),
(145, 3, 'Logged in the system.', '2023-10-30 08:36:12'),
(146, 3, 'Logged out.', '2023-10-30 08:36:19'),
(147, 3, 'Logged in the system.', '2023-10-30 08:36:29'),
(148, 3, ' updated the details of [id=9] member.', '2023-10-30 08:38:41'),
(149, 3, 'Downloaded \'Benjamin Hicks\' from location \'uploads/sample (3).jpg\'', '2023-10-30 08:39:51'),
(150, 3, 'Uploaded \'uploads/gun-dematagoda.jpg\' for case \'20012\'', '2023-10-30 08:41:33'),
(151, 3, ' deleted [id=5] Mikee Williams from member list.', '2023-10-30 08:42:32'),
(152, 3, ' added [id=12] Hans Zimmer into the member list.', '2023-10-30 08:43:43'),
(153, 3, ' viewed the data of [id=6]Thushi Sutha', '2023-10-30 08:44:12'),
(154, 3, 'Downloaded \'Ann \' from location \'uploads/sample.jpg\'', '2023-10-30 10:48:45'),
(155, 3, 'Downloaded \'Blaine Estes\' from location \'uploads/sample.jpg\'', '2023-10-30 10:48:59'),
(156, 3, 'Downloaded \'Swords\' from location \'uploads/sample.jpg\'', '2023-10-30 10:49:35'),
(157, 3, 'Logged in the system.', '2023-10-30 11:37:53'),
(158, 3, 'Logged in the system.', '2023-10-30 13:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstname`, `lastname`, `contact`, `address`, `date_created`) VALUES
(1, 'Clairy', 'Blake', '09123456789', 'Sample Address', '2021-10-07 11:51:27'),
(2, 'John', 'Cena', '09123456789', 'Sample Address', '2021-10-07 11:55:00'),
(6, 'Thushi', 'Sutha', '779301132', '5C, 1/1, Pereira Lane, Colombo 06', '2023-07-16 09:12:05'),
(8, 'Abithasan', 'Manoranjan', '0778954223', 'Nawala', '2023-09-03 13:09:37'),
(9, 'Abi', 'Lash', '0773425553', 'Nugegoda', '2023-09-06 13:25:03'),
(10, 'Sadun', 'Perera', '0771216655', 'Colombo 12', '2023-09-06 22:58:51'),
(11, 'Kaviseshan', 'Santhiraprakasam', '0779301126', 'Point Pedro, Jaffna.', '2023-10-26 15:53:44'),
(12, 'Hans', 'Zimmer', '0773424432', 'Dematagoda', '2023-10-30 08:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `date_created`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', '2021-10-07 03:59:25'),
(2, 'John Smitn', 'jsmith', '1254737c076cf867dc53d60a0364f38e', '2021-10-07 03:59:25'),
(3, 'Thushitharan', 'thushi', '711f300369d1ff02852bf4b04830c08a', '2023-07-16 00:15:20'),
(4, 'Perera', 'perera', '4c59faf5cfb834d9e3281577bed6d39e', '2023-09-06 22:41:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evidence`
--
ALTER TABLE `evidence`
  ADD PRIMARY KEY (`evidenceNumber`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evidence`
--
ALTER TABLE `evidence`
  MODIFY `evidenceNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
