-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 05:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nassabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add blog model', 7, 'add_blogmodel'),
(26, 'Can change blog model', 7, 'change_blogmodel'),
(27, 'Can delete blog model', 7, 'delete_blogmodel'),
(28, 'Can view blog model', 7, 'view_blogmodel'),
(29, 'Can add primary nav manager', 8, 'add_primarynavmanager'),
(30, 'Can change primary nav manager', 8, 'change_primarynavmanager'),
(31, 'Can delete primary nav manager', 8, 'delete_primarynavmanager'),
(32, 'Can view primary nav manager', 8, 'view_primarynavmanager'),
(33, 'Can add secondary nav manager', 9, 'add_secondarynavmanager'),
(34, 'Can change secondary nav manager', 9, 'change_secondarynavmanager'),
(35, 'Can delete secondary nav manager', 9, 'delete_secondarynavmanager'),
(36, 'Can view secondary nav manager', 9, 'view_secondarynavmanager'),
(37, 'Can add nav model', 10, 'add_navmodel'),
(38, 'Can change nav model', 10, 'change_navmodel'),
(39, 'Can delete nav model', 10, 'delete_navmodel'),
(40, 'Can view nav model', 10, 'view_navmodel'),
(41, 'Can add Primary Nav', 11, 'add_primarynav'),
(42, 'Can change Primary Nav', 11, 'change_primarynav'),
(43, 'Can delete Primary Nav', 11, 'delete_primarynav'),
(44, 'Can view Primary Nav', 11, 'view_primarynav'),
(45, 'Can add Sub Nav', 12, 'add_secondnav'),
(46, 'Can change Sub Nav', 12, 'change_secondnav'),
(47, 'Can delete Sub Nav', 12, 'delete_secondnav'),
(48, 'Can view Sub Nav', 12, 'view_secondnav'),
(49, 'Can add nav menu model', 13, 'add_navmenumodel'),
(50, 'Can change nav menu model', 13, 'change_navmenumodel'),
(51, 'Can delete nav menu model', 13, 'delete_navmenumodel'),
(52, 'Can view nav menu model', 13, 'view_navmenumodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$5gE4CSHUg0aO$emfBptMM6/Mq+TUHJKOXH+ezF4nCBs7yXGNOAJkeQ1U=', '2020-09-13 13:08:42.815867', 1, 'mark', '', '', 'admin@nassa.com', 1, 1, '2020-09-12 04:18:49.329240');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-12 04:21:23.168472', '1', 'Our Company', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Company Profile\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Vision & Values\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"History\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Career\"}}]', 11, 1),
(2, '2020-09-12 04:28:09.261900', '6', 'Apparel', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Ready Made Garments\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Product Development\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Textile\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Spinning\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Quality Control\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Logistics\"}}]', 11, 1),
(3, '2020-09-12 04:28:37.863556', '13', 'Banking', 1, '[{\"added\": {}}]', 11, 1),
(4, '2020-09-12 04:30:19.760513', '14', 'Real Estate', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Nassa Properties Ltd.\"}}, {\"added\": {\"name\": \"Sub Nav\", \"object\": \"Rans Real Estate\"}}]', 11, 1),
(5, '2020-09-12 04:31:12.046438', '17', 'Stock Brokerage', 1, '[{\"added\": {}}]', 11, 1),
(6, '2020-09-12 04:31:37.361359', '18', 'Education', 1, '[{\"added\": {}}]', 11, 1),
(7, '2020-09-12 04:31:55.386861', '19', 'Travel', 1, '[{\"added\": {}}]', 11, 1),
(8, '2020-09-12 04:32:01.538596', '19', 'Travel', 2, '[]', 11, 1),
(9, '2020-09-12 04:32:49.835533', '20', 'Sustainability', 1, '[{\"added\": {}}]', 11, 1),
(10, '2020-09-12 04:51:29.958074', '1', 'COMPANY PROFILE', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-09-12 05:07:54.080215', '2', 'VISION AND VALUES', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-09-12 05:19:44.006245', '3', 'HISTORY', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-09-12 05:21:26.354162', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(14, '2020-09-12 05:33:58.607426', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(15, '2020-09-12 05:35:22.454954', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(16, '2020-09-12 05:36:40.942787', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(17, '2020-09-12 05:56:42.903777', '4', 'CAREERS', 1, '[{\"added\": {}}]', 7, 1),
(18, '2020-09-12 06:00:12.153396', '5', 'READY MADE GARMENTS', 1, '[{\"added\": {}}]', 7, 1),
(19, '2020-09-12 06:02:32.187112', '6', 'PRODUCT DEVELOPMENT', 1, '[{\"added\": {}}]', 7, 1),
(20, '2020-09-12 06:04:34.908086', '7', 'TEXTILES', 1, '[{\"added\": {}}]', 7, 1),
(21, '2020-09-12 06:06:06.278217', '8', 'SPIN', 1, '[{\"added\": {}}]', 7, 1),
(22, '2020-09-12 06:06:24.697367', '8', 'SPINNING', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Article\"]}}]', 7, 1),
(23, '2020-09-12 06:09:06.259118', '9', 'QUALITY CONTROL', 1, '[{\"added\": {}}]', 7, 1),
(24, '2020-09-12 06:10:25.399968', '10', 'LOGISTICS', 1, '[{\"added\": {}}]', 7, 1),
(25, '2020-09-12 06:12:03.886187', '11', 'BANKING', 1, '[{\"added\": {}}]', 7, 1),
(26, '2020-09-12 06:13:15.665938', '12', 'STOCK BROKERAGE', 1, '[{\"added\": {}}]', 7, 1),
(27, '2020-09-12 06:14:14.321545', '13', 'TRAVEL', 1, '[{\"added\": {}}]', 7, 1),
(28, '2020-09-12 06:15:33.313665', '14', 'CONTACT', 1, '[{\"added\": {}}]', 7, 1),
(29, '2020-09-12 06:15:58.989513', '21', 'Contact', 1, '[{\"added\": {}}]', 11, 1),
(30, '2020-09-12 06:17:30.946122', '15', 'SUSTAINABILTY', 1, '[{\"added\": {}}]', 7, 1),
(31, '2020-09-12 06:18:40.607462', '16', 'EDUCATION', 1, '[{\"added\": {}}]', 7, 1),
(32, '2020-09-12 06:20:26.737184', '17', 'NASSA PROPERTIES LTD', 1, '[{\"added\": {}}]', 7, 1),
(33, '2020-09-12 06:21:38.924823', '18', 'RANS REAL ESTATE', 1, '[{\"added\": {}}]', 7, 1),
(34, '2020-09-12 06:22:55.547840', '12', 'STOCK BROKERAGE', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 1),
(35, '2020-09-13 08:43:27.082792', '19', 'COMPANY PROFILE', 1, '[{\"added\": {}}]', 7, 1),
(36, '2020-09-13 08:44:13.674248', '19', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(37, '2020-09-13 08:57:34.755156', '20', 'APPAREL', 1, '[{\"added\": {}}]', 7, 1),
(38, '2020-09-13 08:58:27.082656', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(39, '2020-09-13 09:05:43.961937', '20', 'APPAREL', 2, '[]', 7, 1),
(40, '2020-09-13 09:07:01.717742', '5', 'READY MADE GARMENTS', 2, '[]', 7, 1),
(41, '2020-09-13 09:07:13.967373', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(42, '2020-09-13 09:22:10.020959', '14', 'CONTACT', 2, '[{\"changed\": {\"fields\": [\"Subtitle\"]}}]', 7, 1),
(43, '2020-09-13 09:34:00.752824', '14', 'CONTACT', 2, '[]', 7, 1),
(44, '2020-09-13 09:34:22.947241', '19', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(45, '2020-09-13 09:34:57.570447', '19', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(46, '2020-09-13 11:08:51.702520', '15', 'SUSTAINABILTY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(47, '2020-09-13 11:11:16.798046', '15', 'SUSTAINABILTY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(48, '2020-09-13 11:13:15.488604', '15', 'SUSTAINABILTY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(49, '2020-09-13 11:18:29.958179', '15', 'SUSTAINABILTY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(50, '2020-09-13 11:22:01.737638', '11', 'BANKING', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(51, '2020-09-13 11:23:20.448525', '16', 'EDUCATION', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(52, '2020-09-13 11:24:16.978979', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(53, '2020-09-13 11:25:25.789196', '2', 'VISION AND VALUES', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(54, '2020-09-13 11:27:00.353910', '1', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(55, '2020-09-13 11:28:37.201031', '19', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(56, '2020-09-13 11:28:46.861532', '1', 'COMPANY PROFILE', 2, '[]', 7, 1),
(57, '2020-09-13 11:32:24.582245', '14', 'CONTACT', 2, '[]', 7, 1),
(58, '2020-09-13 11:35:32.163975', '14', 'CONTACT', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(59, '2020-09-13 11:37:48.322258', '14', 'CONTACT', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(60, '2020-09-13 11:40:12.445835', '14', 'CONTACT', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(61, '2020-09-13 11:41:30.448722', '19', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(62, '2020-09-13 11:41:39.097864', '1', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(63, '2020-09-13 11:48:35.156287', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(64, '2020-09-13 11:51:27.716898', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(65, '2020-09-13 11:52:24.443484', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(66, '2020-09-13 11:53:53.032478', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(67, '2020-09-13 11:55:26.278325', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(68, '2020-09-13 11:57:26.087823', '2', 'VISION AND VALUES', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(69, '2020-09-13 11:58:40.393487', '4', 'CAREERS', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(70, '2020-09-13 12:02:26.600368', '4', 'CAREERS', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(71, '2020-09-13 12:03:13.652093', '19', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(72, '2020-09-13 12:04:29.568163', '1', 'COMPANY PROFILE', 2, '[{\"changed\": {\"fields\": [\"Article\", \"Image\"]}}]', 7, 1),
(73, '2020-09-13 12:05:52.043776', '2', 'VISION AND VALUES', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(74, '2020-09-13 12:06:33.734255', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(75, '2020-09-13 12:07:16.613576', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(76, '2020-09-13 12:14:17.056108', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(77, '2020-09-13 12:16:09.965201', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(78, '2020-09-13 12:31:49.734732', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(79, '2020-09-13 12:35:57.376144', '20', 'APPAREL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(80, '2020-09-13 12:37:36.152118', '5', 'READY MADE GARMENTS', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(81, '2020-09-13 12:38:47.959735', '6', 'PRODUCT DEVELOPMENT', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(82, '2020-09-13 12:39:43.942002', '7', 'TEXTILES', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(83, '2020-09-13 12:40:57.925261', '8', 'SPINNING', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(84, '2020-09-13 12:41:49.754288', '9', 'QUALITY CONTROL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(85, '2020-09-13 12:42:24.422050', '10', 'LOGISTICS', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(86, '2020-09-13 12:43:22.864922', '11', 'BANKING', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(87, '2020-09-13 12:48:13.217007', '21', 'REAL ESTATE', 1, '[{\"added\": {}}]', 7, 1),
(88, '2020-09-13 12:51:40.142802', '21', 'REAL ESTATE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(89, '2020-09-13 12:54:23.994759', '18', 'RANS REAL ESTATE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(90, '2020-09-13 12:55:34.655796', '21', 'REAL ESTATE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(91, '2020-09-13 12:56:20.743984', '17', 'NASSA PROPERTIES LTD', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(92, '2020-09-13 12:57:04.811700', '12', 'STOCK BROKERAGE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(93, '2020-09-13 12:57:54.271400', '16', 'EDUCATION', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(94, '2020-09-13 13:00:14.306549', '13', 'TRAVEL', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(95, '2020-09-13 13:04:14.904847', '15', 'SUSTAINABILTY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(96, '2020-09-13 13:04:57.167465', '14', 'CONTACT', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(97, '2020-09-13 13:17:24.446904', '21', 'REAL ESTATE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(98, '2020-09-13 13:17:55.647707', '21', 'REAL ESTATE', 2, '[]', 7, 1),
(99, '2020-09-13 13:18:23.058808', '21', 'REAL ESTATE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(100, '2020-09-13 13:20:28.196553', '21', 'REAL ESTATE', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(101, '2020-09-13 13:23:01.772254', '21', 'REAL ESTATE', 2, '[]', 7, 1),
(102, '2020-09-13 13:25:15.152330', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(103, '2020-09-13 13:28:01.834362', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(104, '2020-09-13 13:30:51.550953', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(105, '2020-09-13 14:04:41.986985', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(106, '2020-09-13 14:06:16.554365', '3', 'HISTORY', 2, '[]', 7, 1),
(107, '2020-09-13 14:07:37.536331', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1),
(108, '2020-09-13 14:08:33.300449', '3', 'HISTORY', 2, '[{\"changed\": {\"fields\": [\"Article\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'nassabiz', 'blogmodel'),
(13, 'nassabiz', 'navmenumodel'),
(10, 'nassabiz', 'navmodel'),
(11, 'nassabiz', 'primarynav'),
(8, 'nassabiz', 'primarynavmanager'),
(9, 'nassabiz', 'secondarynavmanager'),
(12, 'nassabiz', 'secondnav'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-12 04:12:46.717056'),
(2, 'auth', '0001_initial', '2020-09-12 04:12:48.649318'),
(3, 'admin', '0001_initial', '2020-09-12 04:12:59.503215'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-12 04:13:02.613174'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-12 04:13:02.670022'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-12 04:13:03.791015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-12 04:13:05.172451'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-12 04:13:05.427048'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-12 04:13:05.623667'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-12 04:13:07.073218'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-12 04:13:07.106402'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-12 04:13:07.146332'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-12 04:13:07.314870'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-12 04:13:07.435504'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-12 04:13:07.801128'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-12 04:13:07.975614'),
(17, 'nassabiz', '0001_initial', '2020-09-12 04:13:10.221814'),
(18, 'nassabiz', '0002_auto_20200909_1249', '2020-09-12 04:13:15.386644'),
(19, 'sessions', '0001_initial', '2020-09-12 04:13:15.936783'),
(20, 'nassabiz', '0003_auto_20200912_1409', '2020-09-12 08:10:00.561635'),
(21, 'nassabiz', '0004_auto_20200913_1706', '2020-09-13 11:06:32.694525'),
(22, 'nassabiz', '0005_auto_20200913_1717', '2020-09-13 11:17:11.458733');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('094foxwg139j0nj3uhm0p7zdbfffwrsr', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:16:48.482824'),
('1q5rhas478lzdvqj2quekb2ua4ilv8rs', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 04:48:25.576641'),
('4mv2opc4pg26lvhlnljbm9jipukx9av9', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:06:53.892192'),
('64i7k89l7063ljl02vlgsd52jeiw03ms', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 05:55:30.866194'),
('6vuo9j9tw1593frfcq7tddlonfq9rnzp', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:19:33.379983'),
('7aq0w9zqc8qa6xuq88ero6oyiiq83qa0', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:05:48.195947'),
('7mysbiex1wdlj6ycfl5ifhl5jznpgwn1', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:07:44.847077'),
('9dl4p00qsijlshxhvlpy5llqfjv8wzqz', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:08:30.800988'),
('bsgoisk0d6z8dbldy51pyhd1uyl2djy3', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 04:19:14.492239'),
('d6xvnkzpfqns6ca4iormidt3djooqlqu', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:09:48.967476'),
('dcbfvertkl08gvvqf8ya34xj4g8c4lwm', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:11:14.276602'),
('f5kqfjkupqrp8to5gr764pufcu28bljg', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:04:02.860282'),
('f86uvdscamxw9pe4ms0r9xcok3r8mgdt', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:14:48.197535'),
('gijsjzb4xigyx2vsziv6jl92ro5d6q3v', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:12:33.711727'),
('gzko9ihxyn909mpstfn329aadf1984qs', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:02:00.718650'),
('hq9hwrbg8g0odn4cxoshmjtajacepjbd', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 05:06:01.198872'),
('ji1p6a0h43npo3i2zvp4wom8fa1sjssc', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:13:42.019165'),
('tj48r60fq99ozlbxs6mc0tzknpg56lft', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 05:59:24.277064'),
('x5tao8jqdim86y3pqqn3gz2vnm0h0d9n', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 06:18:01.919020'),
('z85lb3q3ndwu0y31lybwcryqwk4ye4cc', 'MTZiZDczOWJjMGYzYTRlOTBiZjFiYjQxMjc1NWZlZTMxN2NjNzdmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODUzZmJkMjRjNDNlYjJlNTEwMTM4OTdlZDdjZTY0MWNmODlhZDgyIn0=', '2020-09-26 04:25:16.149987');

-- --------------------------------------------------------

--
-- Table structure for table `nassabiz_blogmodel`
--

CREATE TABLE `nassabiz_blogmodel` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `article` longtext DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nassabiz_blogmodel`
--

INSERT INTO `nassabiz_blogmodel` (`id`, `title`, `subtitle`, `article`, `slug`, `image`) VALUES
(1, 'COMPANY PROFILE', 'NASSA Group has interests in Garment Manufacturing, Banking, Real Estate, Stock Brokering, Education and Travel and most importantly Corporate Social Responsibility.', '<div class=\"page-content-holder\">\r\n            <div class=\"page-content\">\r\n            <div class=\"page-subheading-holder main-heading\">\r\n            <div class=\"page-subheading\" style=\"color:#bd7d59\">We believe in the power of industry to build a bright future for Bangladesh</div>\r\n            </div>\r\n\r\n            <div class=\"twocolumns\">\r\n            <div class=\"left-column column\">\r\n            <div class=\"column-holder\">\r\n            <p>NASSA Group Limited of Industries was founded in 1990 by noted business <strong>entrepreneur</strong> Mr Nazrul Islam Mazumder. Under his leadership, the group has expanded rapidly to achieve status as one of Bangladesh&rsquo;s largest industrial conglomerates and one of the most significant investors in the country&rsquo;s economy.</p>\r\n\r\n            <p>NASSA Group Limited has interests in Garment Manufacturing, Banking, Real Estate, Stock Brokering, Education and Travel and most importantly Corporate Social Responsibility.</p>\r\n\r\n            <p>NASSA Group&rsquo;s ready made garment and textile manufacturing division has achieved globally respected status as a supplier of yarns, textiles and ready-made garments for branded and private label clients worldwide. The manufacturing operation boasts 1.1 million sq. ft. of production space, across which <strong>more</strong> than 30,000 skilled workers operate in 34 vertically owned factories.</p>\r\n\r\n            <p>EXIM Bank Limited has been a crucial part of the corporate expansion and has fast grown to achieve status as a pioneering financial establishment, dedicated to the socio-economic development of Bangladesh and its people.</p>\r\n\r\n            <p>NASSA Properties Limited has been established with the aim to develop prime commercial properties in the heart of Dhaka. Along with the commercial side of our real estate business, we have RANS Real Estate Limited which is a driving force in residential property development for <strong>home owners</strong> seeking modern housing solutions in Dhaka, Bangladesh.</p>\r\n\r\n            <p>ANW Dhaka Limited is an accredited member of the Dhaka stock exchange providing robust ethical trading opportunities in global stocks and shares. ANW Dhaka exists to provide beneficial trading opportunities for clients and organisations looking to trade in stocks and shares in a sustainable and risk controlled environment.</p>\r\n\r\n            <p>NASSA Group is profoundly committed to the vital role of education in Bangladesh in achieving socio-economic, financial and commercial growth.</p>\r\n\r\n            <p>EXIM Agricultural University provides agricultural training and scholarships for the young people of Bangladesh. The university will train a new generation of Bangladeshis in modern agricultural techniques that will equip them to support themselves, their families, communities and Bangladesh&rsquo;s economy as a whole.</p>\r\n\r\n            <p><a class=\"link-download\" href=\"http://nassagroup.org/app/webroot/js/ckfinder/userfiles/files/NASSA COMPANY PROFILE-mens 2 2014 ( 2nd edited).pdf\">Download the brochure &ndash; Nassa Group (Full script for Nassa Group)</a></p>\r\n            </div>\r\n            </div>\r\n\r\n            <div class=\"right-column column\">\r\n            <div class=\"column-holder\">\r\n            <p><img alt=\"\" class=\"alignnone size-full wp-image-890\" src=\"/static/js/ckfinder/userfiles/images/web-logo.png\" style=\"height:264px; width:500px\" /></p>\r\n\r\n            <p><strong>Corporate Social Responsibility &amp; Sustainability</strong></p>\r\n\r\n            <p>NASSA Group is committed to achieving a sustainable impact on Bangladesh&rsquo;s social-economic growth by addressing the welfare of our people and communities through a number of education, healthcare and environment initiatives.</p>\r\n\r\n            <p>Sustainability: The key to a bright tomorrow for Bangladesh. NASSA Group is fully committed to the responsibility of driving the sustainability of the group&rsquo;s operations, client base, stakeholders and surrounding communities and environment.</p>\r\n\r\n            <p><img alt=\"\" class=\"alignnone size-full wp-image-453\" src=\"/static/js/ckfinder/userfiles/images/img023.jpg\" style=\"height:167px; width:546px\" /></p>\r\n            </div>\r\n            </div>\r\n            </div>\r\n            </div>\r\n            </div>\r\n\r\n\r\n                                \r\n		</div>\r\n	</div>', 'main-profile', 'img/nassa_profile1_9hVydmb.jpg'),
(2, 'VISION AND VALUES', 'The key to a bright tomorrow for Bangladesh', '<div class=\"page-content-holder\">\r\n<div class=\"page-content style02\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img05.png\" style=\"height:19px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading style02\" style=\"color:#bd7d59\">Our philosophy</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<ul>\r\n	<li><em>We believe in the power of industry to build a bright future for Bangladesh on the global stage.</em></li>\r\n	<li><em>We believe in the responsibility of our industry to our customers, our people, our surrounding &nbsp; &nbsp; communities and our environment.</em></li>\r\n	<li><em>We are dedicated to sustainability, accountability and excellence in everything we do.</em></li>\r\n	<li><em>We are passionate about achieving socio-economic growth and change through intelligent business practice.</em></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p><a href=\"162.13.94.95/wp-content/uploads/2013/05/ourcompany-visionvalues.jpg\"><img alt=\"\" class=\"alignnone size-full wp-image-797\" src=\"/static/js/ckfinder/userfiles/images/ourcompany-visionvalues.jpg\" style=\"height:290px; width:669px\" /></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content style02\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img05.png\" style=\"height:19px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading style02\" style=\"color:#333333\">Message from the chairman</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p><em>When I founded <strong>NASSA Group</strong> in 1990 I did so with a strong vision. I believed passionately that Bangladesh had the capacity to become renowned as a world leader in advanced apparel manufacturing and supply. In the face of the extensive on-going <strong>investment</strong> that Dhaka was experiencing at the time, I saw the potential in Bangladesh&rsquo;s infrastructure, people, skills and talent to deliver an intelligent and agile level of service that could compete on the global stage.</em></p>\r\n\r\n<p><em><strong>More</strong> than 20 years on, we are living in a different world. Economic climates are challenging, the political state of affairs is volatile. Times are uncertain. Yet NASSA Group has continued to steadfastly expand, diversify and provide vital employment, revenue and commercial development tailored to global markets; with Bangladesh&rsquo;s future firmly at the core.</em></p>\r\n\r\n<p><em>I believe that our success lies in our courage. The courage to invest in carefully assessed risks to generate diversification and growth. The courage to integrate new technologies and working practices in order to streamline our business model. The courage to protect our people and environment with our eyes steadfastly focused on tomorrow&rsquo;s generations and not just on today&rsquo;s profits.</em></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p><em>That courage has created a thriving conglomerate that serves flagship brands across the globe as well as creating <strong>jobs</strong>, homes, commercial expansion and investment opportunities for the people of Bangladesh.</em></p>\r\n\r\n<p><em>We always strive to do more. In the years ahead, we aim to deliver further diversification, expansion, operational streamlining and <strong>product development</strong>. We aim to generate further employment, to reduce our environmental consumption by 50%, to invest in the agricultural development of Bangladesh&rsquo;s rural communities and the protection of our natural environment.</em></p>\r\n\r\n<p><em>The future may be uncertain, but in my view uncertainty brings with it innovation, and innovation generates growth. For Bangladesh, the future of industry is bright.</em></p>\r\n\r\n<p><strong><em>Mr Nazrul Islam Mazumder Chairman &amp; Owner</em></strong></p>\r\n\r\n<p><strong><em>NASSA Group</em></strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-grid\">\r\n<div class=\"page-grid-item\" style=\"height: 382px;\">\r\n<div class=\"page-grid-item-holder\">\r\n<div class=\"page-grid-item-wrapper\">\r\n<div class=\"grid-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img01.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"grid-title\" style=\"color:#fcb316\">\r\n<p>Vision</p>\r\n</div>\r\n\r\n<div class=\"grid-text\">\r\n<p><em>Our vision is of a global commercial arena where Bangladesh is regarded as a pioneering world leader in:</em></p>\r\n\r\n<ul>\r\n	<li><em>manufacture</em></li>\r\n	<li><em>industry</em></li>\r\n	<li><em>commerce</em></li>\r\n</ul>\r\n\r\n<p><em>And where Bangladesh&rsquo;s future generations are equipped with the skills, resources and passion to drive that vision forward.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-grid-item odd\" style=\"height: 382px;\">\r\n<div class=\"page-grid-item-holder\">\r\n<div class=\"page-grid-item-wrapper\">\r\n<div class=\"grid-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img02.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"grid-title\" style=\"color:#406c93\">\r\n<p>Values</p>\r\n</div>\r\n\r\n<div class=\"grid-text\">\r\n<p>We believe in the power of industry to build a bright future for Bangladesh on the global stage.</p>\r\n\r\n<p>We believe in the responsibility of our industry to our customers, our people, our surrounding communities and our environment. We are dedicated to sustainability, accountability and excellence in everything we do.</p>\r\n\r\n<p>We are passionate about achieving socio-economic growth and change through intelligent business practice.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-grid-item\" style=\"height: 524px;\">\r\n<div class=\"page-grid-item-holder\">\r\n<div class=\"page-grid-item-wrapper\">\r\n<div class=\"grid-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img03.png\" style=\"height:25px; width:26px\" /></div>\r\n\r\n<div class=\"grid-title\" style=\"color:#d52f00\">\r\n<p>Strategy</p>\r\n</div>\r\n\r\n<div class=\"grid-text\">\r\n<p>The years to come hold the promise of further expansion with a group-wide focus on:</p>\r\n\r\n<ul>\r\n	<li>Growth through business expansion and acquisition</li>\r\n	<li>Diversification with a focus on professionalism and enhanced management systems</li>\r\n	<li>Improved cost-efficiency ratios through intelligent use of manpower and new technologies</li>\r\n	<li>Steadfast improvement and development of our quality product portfolio</li>\r\n	<li>Working in genuine partnership with our customers to ensure their total satisfaction</li>\r\n	<li>Enhancing the reputation of Bangladesh&rsquo;s <strong>apparel</strong> manufacture industry worldwide</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-grid-item odd\" style=\"height: 524px;\">\r\n<div class=\"page-grid-item-holder\">\r\n<div class=\"page-grid-item-wrapper\">\r\n<div class=\"grid-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img04.png\" style=\"height:25px; width:24px\" /></div>\r\n\r\n<div class=\"grid-title\" style=\"color:#009933\">\r\n<p>Sustainability</p>\r\n</div>\r\n\r\n<div class=\"grid-text\">\r\n<p>We are dedicated as a Group to the vital role of sustainability in securing a bright commercial, social and environmental future. We address this through:</p>\r\n\r\n<ul>\r\n	<li>Our people: Building their capacity through professional development and education</li>\r\n	<li>Innovation and technology: Investing in the latest computer aided manufacturing technology</li>\r\n	<li>Quality: Insisting on stringent standards of <strong>quality control</strong></li>\r\n	<li>Service: Delivering the highest standards of client care, ensure accountability across the supply chain</li>\r\n	<li>Environment: Implementing a 3 year plan to reduce gas and water consumption and effluent waste</li>\r\n</ul>\r\n\r\n<p><a href=\"sustainability-2.html\" title=\"Sustainability\">Read more about our sustainability programme &gt;</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'vision-values', 'img/nassa_readymade_QCbABkw.jpg'),
(3, 'HISTORY', 'History of our company', '<div class=\"page-content-holder transparent\">\r\n									<div class=\"page-content\">\r\n										<div class=\"page-subheading-holder main-heading\"\r\n											style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n											<div class=\"page-subheading-image\"><img alt=\"image description\"\r\n													src=\"/static/js/ckfinder/userfiles/images/img011.png\" /></div>\r\n\r\n											<div class=\"page-subheading\" style=\"color:#bd7d59\">Company milestones</div>\r\n										</div>\r\n\r\n										<div class=\"milestones-holder\">\r\n											<ul class=\"milestones-list\">\r\n												<li>\r\n													<h3 class=\"milestone-title\">2013</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>NASSA <span class=\"oth0ropn7o5z\" id=\"oth0ropn7o5z_2\"\r\n																style=\"font-weight: bold; height: 14px;\">brokerage</span> house\r\n															established, providing and secure, accredited and ethical trading\r\n															services for clients wishing to invest in <span\r\n																class=\"oth0ropn7o5z\" id=\"oth0ropn7o5z_1\" style=\"font-weight:\r\n																bold; height: 14px;\">stocks and shares</span></p>\r\n													</div>\r\n												</li>\r\n\r\n\r\n\r\n												<li class=\"odd\">\r\n													<h3 class=\"milestone-title\">2009</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>EXIM <span class=\"oth0ropn7o5z\" id=\"oth0ropn7o5z_4\"\r\n																style=\"font-weight: bold; height: 14px;\">Bank</span> becomes the\r\n															first privately <span class=\"oth0ropn7o5z\" id=\"oth0ropn7o5z_3\"\r\n																style=\"font-weight: bold; height: 14px;\">owned bank</span> to\r\n															open an exchange house in the UK, enhancing its capacity to\r\n															deliver seamless services to Bangladeshis living and working in\r\n															the UK</p>\r\n													</div>\r\n												</li>\r\n												<li>\r\n													<h3 class=\"milestone-title\">2008</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>RANS Real Estate Ltd established, changing the domestic\r\n															property landscape of Dhaka by creating new affordable luxury\r\n															homes to meet the needs of modern Bangladeshi homeowners</p>\r\n													</div>\r\n												</li>\r\n												<li class=\"odd\">\r\n													<h3 class=\"milestone-title\">2007</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>NASSA Properties Ltd established, investing in Dhaka&rsquo;s\r\n															commercial infrastructure via large scale commercial property\r\n															investment</p>\r\n													</div>\r\n												</li>\r\n												<li>\r\n													<h3 class=\"milestone-title\">2005</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>NASSA Taipei Denims Ltd established, diversifying into the\r\n															global denims market. NASSA Spinning Ltd established, embedding\r\n															wholly owned spinning operations into the group</p>\r\n													</div>\r\n												</li>\r\n												<li class=\"odd\">\r\n													<h3 class=\"milestone-title\">2002</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>NASSA Taipei Textile Mills established, integrating textile\r\n															production capacity into the group</p>\r\n													</div>\r\n												</li>\r\n												<li>\r\n													<h3 class=\"milestone-title\">1999</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>EXIM Bank established, providing pioneering financial services\r\n															for the retail, corporate, SME and agricultural sectors as well\r\n															as in foreign trade.</p>\r\n													</div>\r\n												</li>\r\n												<li class=\"odd\">\r\n													<h3 class=\"milestone-title\">1995</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>NASSA Group established its Hong Kong sourcing office to\r\n															streamline its production capabilities and client relations.</p>\r\n													</div>\r\n												</li>\r\n\r\n												<li class=\"odd\">\r\n													<h3 class=\"milestone-title\">1990</h3>\r\n\r\n													<div class=\"milestone-content\">\r\n														<p>NASSA Group established by Founder and Chairman Mr Nazrul Islam\r\n															Mazumder.</p>\r\n													</div>\r\n												</li>\r\n											</ul>\r\n\r\n											<div class=\"milestones-divider\" style=\"height: 1122px; top: 98px;\">&nbsp;</div>\r\n										</div>\r\n									</div>\r\n								</div>', 'history', 'img/nassa_profile1_f9UD7Hs.jpg'),
(4, 'CAREERS', 'We are always looking for new talent to join our teams in the UK, Europe and Bangladesh', '<div class=\"page-content-holder\"></div>\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img012.png\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#bd7d59\">Careers</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>Today, <span class=\"oth0ropn7o5z\" id=\"oth0ropn7o5z_2\" style=\"font-weight: bold; height: 14px;\">NASSA Group</span> operates a wholly owned apparel manufacturing business based in Dhaka, with the capacity to produce 50 million units across 34 factories every year.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>We employ a staff of <span class=\"oth0ropn7o5z\" id=\"oth0ropn7o5z_1\" style=\"font-weight: bold; height: 14px;\">more</span> than 30,000 across 1.1 million sq. ft. of production space in order to serve a distinguished client base in the US and EU markets.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"filters-holder\">\r\n<ul class=\"filters careers-heading\" id=\"filters\">\r\n	<li><span>Display:</span></li>\r\n	<li><a class=\"active\" href=\"#\">All locations</a></li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n\r\n<div id=\"message\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"careers-table page-content\">\r\n<ul class=\"careers-list\">\r\n	<li style=\"height: 203px;\">\r\n	<div class=\"career-holder\">\r\n	<div class=\"career-wrapper\">\r\n	<div class=\"career-header\">\r\n	<h3 class=\"careers-title\">&nbsp;</h3>\r\n\r\n	<div class=\"career-location\">&nbsp;</div>\r\n	</div>\r\n\r\n	<div class=\"career-descr\">&nbsp;</div>\r\n\r\n	<div class=\"links-holder\">\r\n	<div class=\"career-link\">\r\n	<p><strong>Job opening for Executive Assistant </strong></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Job Description / Responsibility</strong></p>\r\n	Provide secretarial support to Director of Finance Liaise and follow-up with relevant parties to deal with all business issues for the Director of Finance Prepare correspondence and presentation materials for the Director of Finance Compile various management and financial reports for the Nigerian Headquarter Schedule appointments and setting up meetings Prepare travel arrangements, plan agenda for events and trips To maintain realistic and manageable diaries. To ensure all aspects of meetings/conferences are organised, agendas developed and prompt action taken maintaining timely responses to deadlines at all times. Handling foreign delegates Managing a Calendar by coordinating with all 4 offices in Nigeria, London, Hong Kong and Bangladesh preparing letters, presentations and reports Any other duties as directed\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Job Nature</strong></p>\r\n	Full-time\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Educational Requirements </strong></p>\r\n	University graduate or from a military background English medium\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Experience Requirements</strong></p>\r\n\r\n	<p>1 year experience minimum</p>\r\n\r\n	<p>The applicants should have experience in the following area(s):</p>\r\n\r\n	<p>Executive Assistant, Personal Secretary</p>\r\n\r\n	<p><strong>Additional Job Requirements</strong></p>\r\n	Well-organized, strong interpersonal and communication skills Good command in English Proficiency in MS Office applications\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Salary Range </strong></p>\r\n	Competitive\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Job Location&nbsp;</strong></p>\r\n	Dhaka\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p style=\"margin-left:.25in;\">To apply via email <a href=\"mailto:career@nassagroup.org\">career@nassagroup.org</a></p>\r\n\r\n	<p style=\"margin-left:.25in;\">The subject should be &ldquo;<strong>Executive Assistant</strong>&rdquo;</p>\r\n	<strong>If the subject is not mentioned, the application will be void</strong></div>\r\n\r\n	<div class=\"career-link\"><!--  <a data-reveal-id=\"myModal\" href=\"#\" class=\"link-submit\">Submit application</a>---></div>\r\n	</div>\r\n\r\n	<div class=\"reveal-modal\" id=\"myModal\">\r\n	<h1>Submit Application</h1>\r\n\r\n	<div>\r\n	<form action=\"#\" enctype=\"multipart/form-data\" method=\"post\"><input name=\"file\" type=\"file\" value=\"\" /> <input name=\"submit\" type=\"submit\" value=\"Upload\" /> <input name=\"title\" type=\"hidden\" value=\"\" /></form>\r\n	</div>\r\n\r\n	<p>&nbsp;</p>\r\n	<a class=\"close-reveal-modal\">&times;</a></div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'career', 'img/nassa_profile1_5U42pPF_clz4nnn.jpg'),
(5, 'READY MADE GARMENTS', 'Flexible, Cost-effective RMG services for brands worldwide', '<div class=\"page-content-holder\" style=\"padding-bottom:35px;\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img0110.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009973\">NASSA PROVIDES RMG SERVICES FOR CLIENTS WORLDWIDE WITH THE CAPACITY TO PRODUCE 4.2 MILLION UNITS EVERY MONTH VIA 34 WHOLLY OWNED FACTORIES IN BANGLADESH</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>Since opening its doors in 1990, NASSA Group has rapidly expanded to become one of the largest international apparel and textile manufacturing&nbsp;conglomerates serving fashion, private and brand labels in the US, Canada, Mexico and the EU.</p>\r\n\r\n<p>A leading own equipment manufacturer headquartered in Bangladesh, NASSA Group is renowned amongst clients across the world for our state of the art equipment, optimally efficient supply chains, 100% ethical trading&nbsp;policies, environmental compliance and strong commitment to sustainability.</p>\r\n\r\n<p>It is against these benchmarks that clients know they can trust us to deliver without fail and to their own stringent quality standards and lead times. These clients include Sears and Kmart, Zara, Berksha, Cheap Monday, C&amp;A and Marks &amp; Spencer to name just a few.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>Our wholly owned infrastructure places us uniquely to achieve the most cost-effective, competitive and quality assured services and products for brands who demand nothing less.</p>\r\n\r\n<p>Our clients enjoy NASSA Group&rsquo;s end-to-end manufacturing services that cover every aspect of garment production from textile production to manufacture, washing, finishing, quality control, clearance and shipping. This wholly owned infrastructure equips us to deliver new products to market via a fast, competitive and seamless supply chain that others who outsource cannot offer.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"big-banner\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/nassa_5D_mkII_016.png\" /></div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"rmg-columns-holder\">\r\n<div class=\"rmg-column\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img031.png\" style=\"height:26px; width:32px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">1.1 million units per month</div>\r\n</div>\r\n\r\n<div class=\"rmg-column-text\">\r\n<ul>\r\n	<li>Quilted shirts</li>\r\n	<li>Basic shirts</li>\r\n	<li>Blouses</li>\r\n	<li>Jumpers</li>\r\n	<li>Rompers</li>\r\n	<li>Jackets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"rmg-column\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img041.png\" style=\"height:24px; width:19px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">2.2 million units per month</div>\r\n</div>\r\n\r\n<div class=\"rmg-column-text\">\r\n<ul>\r\n	<li>Basic pants</li>\r\n	<li>Shorts</li>\r\n	<li>Caprices</li>\r\n	<li>Overalls</li>\r\n	<li>Pyjama sets</li>\r\n	<li>Other products</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"rmg-column\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img052.png\" style=\"height:24px; width:29px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">3.1 million units per month</div>\r\n</div>\r\n\r\n<div class=\"rmg-column-text\">\r\n<ul>\r\n	<li>Quilted jackets</li>\r\n	<li>Parkas</li>\r\n	<li>Snow wear</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"twocolumns v-middle\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p><img alt=\"\" class=\"alignnone size-full wp-image-897\" src=\"/static/js/ckfinder/userfiles/images/new-spinning.png\" style=\"height:260px; width:600px\" /></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"rmg-column right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img06.png\" style=\"height:25px; width:26px\" /></div>\r\n\r\n<div class=\"page-subheading\">Our product range spans across</div>\r\n</div>\r\n\r\n<ul class=\"rmg-percent-list\">\r\n	<li>\r\n	<h3>Menswear</h3>\r\n\r\n	<div class=\"rmg-percent\"><span style=\"width:40%\">40%</span></div>\r\n	</li>\r\n	<li>\r\n	<h3>Womenswear</h3>\r\n\r\n	<div class=\"rmg-percent\"><span style=\"margin-left:40%; width:30%\">30%</span></div>\r\n	</li>\r\n	<li>\r\n	<h3>Childrenswear</h3>\r\n\r\n	<div class=\"rmg-percent\"><span style=\"margin-left:70%; width:30%\">30%</span></div>\r\n	</li>\r\n</ul>\r\n\r\n<p>Our ready-made garment production capacity delivers more than 6.4 million units to market every month.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img0110.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">Garment trims</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>Our state-of-the-art cutting, engraving and finishing technology achieves the robust yet aesthetic finish the modern fashion market demands from its clothing accessories. This is complemented by our wholly owned and vertically integrated manufacturing structure &ndash; geared up to achieve the ideal accessory solution for the client&rsquo;s exacting budget, brief and critical time scale.</p>\r\n\r\n<p>Our clients benefit from the streamlined service we can provide; aligning accessories manufacturing with garment production to ensure the ideal finish and meticulous quality control within a wholly accountable supply structure.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"rmg-column rmg-style02 right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img019.png\" style=\"height:22px; width:27px\" /></div>\r\n\r\n<div class=\"page-subheading\">Accessories</div>\r\n</div>\r\n\r\n<p>NASSA is fully equipped to produce a wide range of accessories including buttons, threads, zips, tags and poppers designed to fit the buyer&rsquo;s exact specification and cost-efficiency parameters.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'ready-made', 'img/nassa_readymade_amejJUv_WLc8GS7.jpg'),
(6, 'PRODUCT DEVELOPMENT', 'Product development at the sharp end of fashion', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img0110.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009973\">DESIGN AND PRODUCT DEVELOPMENT AT THE CUTTING EDGE OF FASHION, SUPPORTED BY A WHOLLY INTEGRATED MANUFACTURING AND SUPPLY STRUCTURE</div>\r\n</div>\r\n\r\n<div class=\"twocolumns columns-big\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img022.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\">Bangladesh</div>\r\n</div>\r\n\r\n<p><img alt=\"\" class=\"alignnone size-full wp-image-1018\" src=\"/static/js/ckfinder/userfiles/images/CLOSE-UP-JEANS-textile-tab.png\" style=\"height:325px; width:645px\" /></p>\r\n\r\n<p>Our clients then enjoy NASSA Group&rsquo;s end-to-end manufacturing services that cover every aspect of garment production from textile production to manufacture, washing, finishing, quality control, clearance and shipping. This wholly owned infrastructure equips us to deliver new products to market via a fast, competitive and seamless supply chain that others who outsource cannot offer.</p>\r\n\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img08.png\" style=\"height:27px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\">PRODUCT DEVELOPMENT</div>\r\n</div>\r\n\r\n<p>London based designers and showroom access to Bangladesh via London office wholly owned end-to-end manufacturing.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img023.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\">London</div>\r\n</div>\r\n\r\n<p>ANW London &ndash; a division of NASSA Group &ndash; employs a team of experienced and creative fashion designers who always have their finger on the pulse of tomorrow&rsquo;s trends. Our talented, vibrant designers scour the apparel industry from catwalk to street trends to translate each client&rsquo;s vision into a product that will meet market expectations and business cost-efficiency parameters alike.</p>\r\n\r\n<p>They operate from our UK showroom, design centre and sample house, working closely with the client throughout the product life cycle to develop the spec from initial concept to approved sample stage.</p>\r\n\r\n<p>Our design and development services are available entirely in the UK via our showroom, sample house and highly experienced design team.</p>\r\n\r\n<p><a href=\"http://anwlondon.com/demo/\">Visit ANW London Ltd to find out more &gt;</a></p>\r\n\r\n<div class=\"column-grey-box style02\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading\">ANW London</div>\r\n</div>\r\n\r\n<p><em>Our design and development services are available entirely in the UK via our showroom, sample house and highly experienced design team.</em></p>\r\n\r\n<p><a href=\"http://anwlondon.com/demo/\">Visit ANW London Ltd to find out more &gt;</a></p>\r\n\r\n<p><a href=\"http://anwlondon.com/demo/\"><img alt=\"\" class=\"alignnone size-full wp-image-806\" src=\"/static/js/ckfinder/userfiles/images/anw-logo2.png\" style=\"height:46px; width:593px\" /></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'product-development', 'img/nassa_readymade_ozJiTCn.jpg'),
(7, 'TEXTILES', 'Textile manufactuing services for the global apparel market', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img031.png\" style=\"height:26px; width:32px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009973\">NASSA-Taipei textiles limited</div>\r\n</div>\r\n\r\n<div class=\"twocolumns textiles\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA operates via its own 28 acre textile manufacturing complex located in Kanchpur, Dhaka. With the capacity to produce 60 tonnes per day (set to double in the next three years) our textile operation is one of the largest in Bangladesh, equipping us to deliver an end-to-end textile manufacturing service for clients worldwide.</p>\r\n\r\n<p>The plant outputs a range of polar fleece, knitted, dyed and printed fabrics, produced via computer controlled Swiss, German, French machines that deliver the cutting edge technology and uncompromising standards demanded by the US and European markets.</p>\r\n\r\n<p>NASSA Denims Ltd specialises in the production of the finest quality indigo denims for its clients</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img031.png\" style=\"height:26px; width:32px\" /></div>\r\n\r\n<div class=\"page-subheading\">Textile range</div>\r\n</div>\r\n\r\n<ul>\r\n	<li>Indigo denims</li>\r\n	<li>Polar fleece</li>\r\n	<li>Micro fleece</li>\r\n	<li>Single jersey: Solid, Stripe, 1&times;1 rib, Lycra, Plain and drop needle interlock,&nbsp;Pique, Lacost, Mini Jacquard, Waffle, Flat knit collar and cuff</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img031.png\" style=\"height:26px; width:32px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">NASSA-Taipei Denim limited</div>\r\n</div>\r\n\r\n<div class=\"twocolumns textiles\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p><img alt=\"\" class=\"alignnone size-full wp-image-1020\" src=\"/static/js/ckfinder/userfiles/images/textiles-tab-roles-of-jeans.png\" style=\"height:519px; width:641px\" /></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p><em>&ldquo;cutting edge production for worldwide denim supply&rdquo;</em></p>\r\n\r\n<p>NASSA-Taipei Denims Ltd specialises in the production of the finest quality indigo denims for clients including Marks and Spencer.</p>\r\n\r\n<p>The mill is equipped with an ETP system, as well as the newest manufacturing technologies from Belgium, Germany, Switzerland and Taiwan.</p>\r\n\r\n<p>Via these technologies and a fully trained workforce the division delivers a production capacity of 1.8 million yards per month.</p>\r\n\r\n<p>The overarching aim of NASSA-Taipei Denims Ltd is to produce the finest quality indigo and variant denims to meet the discerning demands of our worldwide customer base.</p>\r\n\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img031.png\" style=\"height:26px; width:32px\" /></div>\r\n\r\n<div class=\"page-subheading\">Products</div>\r\n</div>\r\n\r\n<p>Raw finished denim sold to brands including Marks &amp; Spencer</p>\r\n\r\n<ul>\r\n	<li>Jeans</li>\r\n	<li>Shorts</li>\r\n	<li>Jackets</li>\r\n	<li>Shirts</li>\r\n	<li>Overalls</li>\r\n	<li>Dungarees</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img031.png\" style=\"height:26px; width:32px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">Washing &amp; sandblasting</div>\r\n</div>\r\n\r\n<div class=\"twocolumns textiles\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA owns 5 in-house washing plants located in Tejagon, Ashulia and Joar Sahara and spanning approximately 100,000 sq. ft.</p>\r\n\r\n<p>The combined capacity of these facilities is 350,000 dz per month, enhancing the overall production capacity of NASSA Group and making for a strong holistic supply chain for customers.</p>\r\n\r\n<p>The washing and sandblasting sites incorporate Effluent Treatment Plants to ensure the responsible treatment and disposal of pollution and waste.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p><img alt=\"\" class=\"alignnone size-full wp-image-924\" src=\"/static/js/ckfinder/userfiles/images/nassa-wash.png\" style=\"height:236px; width:555px\" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">&nbsp;</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'textiles', 'img/nassa_readymade_lqi3yZM.jpg'),
(8, 'SPINNING', 'Specialist spinning from wholly owned mills', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img042.png\" style=\"height:25px; width:25px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009973\">NASSA Group Bangladesh is equipped to spin 1.8 million metres of yarn, providing cotton spinning and slub yarns to leading fashion brands on a global scale.</div>\r\n</div>\r\n\r\n<div class=\"twocolumns columns-big\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p><a href=\"162.13.94.95/wp-content/uploads/2013/05/567.png\"><img alt=\"\" class=\"alignnone size-full wp-image-905\" src=\"/static/js/ckfinder/userfiles/images/567.png\" style=\"height:563px; width:567px\" /></a></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA Spinning Ltd deploys state of the art equipment and benefits NASSA customers with an installed production capacity of 1.8 million metres or 1,200 tonnes every month. The group has invested in the latest spinning technology, including the Jinsheng Saurer JFA &rsquo; 225A Card Machine as well as the Trutzschler &amp; Crostol for blow room lines.</p>\r\n\r\n<p>Our workforce is hence equipped to produce and export quality 100% cotton open end and slub yarns on a global scale.</p>\r\n\r\n<p>NASSA Spinning Ltd operates to the highest ethical, environmental and quality control standards to protect the integrity of our clients&rsquo; brand reputations.</p>\r\n\r\n<div class=\"column-grey-box style03\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img031.png\" style=\"height:26px; width:32px\" /></div>\r\n\r\n<div class=\"page-subheading\">PRODUCTS</div>\r\n</div>\r\n\r\n<ul>\r\n	<li>basic, premium and high quality cotton and slub yarns</li>\r\n	<li>high quality oe</li>\r\n	<li>ring oe</li>\r\n	<li>ring slub</li>\r\n	<li>rain slub</li>\r\n	<li>crossfire</li>\r\n	<li>lycra in cotton denim fabric</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'spinning', 'img/nassa_readymade_lz5tUoE.jpg'),
(9, 'QUALITY CONTROL', 'Uncompromising quality control in apparel manufacture', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img061.png\" style=\"height:19px; width:25px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009973\">NASSA&#39;S GARMENT MANUFACTURING OPERATIONS ARE GOVERNED BY STRINGENT QUALITY CONTROL PROCEDURES DELIVERED BY A TEAM OF 250 FULLY TRAINED IN-HOUSE STAFF</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA delivers stringent quality assurance procedures across its production lines from the mill to the point of shipment and employ a team of 250 fully trained staff whose sole responsibility is to ensure the rigorous quality checks and measures that set the global standards our clients rely on.</p>\r\n\r\n<p>This team is governed by our Director of Quality Control, who takes personal responsibility for the meticulous delivery of quality assessment from spinning to completion.</p>\r\n\r\n<p>Our clients then enjoy NASSA Group&rsquo;s end-to-end manufacturing services that cover every aspect of garment production from textile production to manufacture, washing, finishing, quality control, clearance and shipping. This wholly owned infrastructure equips us to deliver new products to market via a fast, competitive and seamless supply chain that others who outsource cannot offer.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p><a href=\"162.13.94.95/wp-content/uploads/2013/05/img072.jpg\"><img alt=\"\" class=\"alignnone size-full wp-image-583\" src=\"/static/js/ckfinder/userfiles/images/img072.jpg\" style=\"height:351px; width:667px\" /></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'quality', 'img/nassa_readymade_ZGuo6HC.jpg');
INSERT INTO `nassabiz_blogmodel` (`id`, `title`, `subtitle`, `article`, `slug`, `image`) VALUES
(10, 'LOGISTICS', 'Finishing and shipping services with uncompromising standards', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img0118.png\" style=\"height:26px; width:23px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009973\">NASSA PROVIDES FULL FINISHING AND SHIPPING SERVICES INCLUDING LABELLING, PACKAGING AND IN-HOUSE TRANSPORT AND CLEARANCE SERVICES FOR GLOBAL APPAREL BRANDS AND FASHION LABELS</div>\r\n</div>\r\n\r\n<h3>Native Packaging Limited &ldquo;Intelligent packaging solutions for fashion brand&rdquo;</h3>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA Group is a market leader in wholly owned garment and textile manufacturing services for global clients, supplied from the heart of Bangladesh. Its in-house packaging operation, Native Packaging Ltd, is a competitive, cost effective and high quality wholesale packaging manufacturer with the capacity to produce 6,000 metric tons of corrugated cartons every year.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA also produce high quality polythene and other packaging materials ready for finished garment shipment. This is just part of the comprehensive solution we can supply for brands seeking superior, responsive yet cost-effective services into the global fashion industry.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img024.png\" style=\"height:25px; width:29px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">SHIPMENT</div>\r\n</div>\r\n\r\n<h3>&ldquo;End-to-end supply and shipment solutions for your apparel brand&rdquo;</h3>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA Group offers expedited shipping of garments and textiles via our in-house transport, clearance and delivery divisions in Bangladesh. The group understands the nature of clients&rsquo; critical delivery paths and has the infrastructure in place to ensure streamlined and expedited shipping from our mills and factories to your shop floor.</p>\r\n\r\n<p>Nassa&rsquo;s own in-house vehicle and transport divisions work in close cooperation with our dedicated clearing and forwarding agencies in Dhaka, Chittagong and Benapole. Together, these divisions ensure the smooth shipment of all consignments from within NASSA&rsquo;s</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>production mills through the manufacture process and to Bangladesh&rsquo;s ports for overseas export.</p>\r\n\r\n<p>The skilled assigned teams work tirelessly to anticipate, address and eliminate any barriers to the safe, timely delivery of goods that our clients naturally expect.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img032.png\" style=\"height:26px; width:25px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">SHIPPING, CLEARING &amp; FORWARDING</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA&rsquo;s in-house vehicle and transport division works in close cooperation with our dedicated clearing and forwarding agencies in Dhaka, Chittagong and Benapole. Together, these divisions ensure the smooth transit of all consignments from initial manufacture to the point of overseas export.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>Our skilled teams work tirelessly to anticipate, address and eliminate any barriers to the safe, timely delivery of goods to clients in the US, UK and Europe.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'logistics', 'img/nassa_readymade_amejJUv_lEfua6O.jpg'),
(11, 'BANKING', 'EXIM Bank: Responsible Banking for social growth and change', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\">\r\n<div class=\"page-subheading\" style=\"color:#009973\">EXIM Bank offers quality financial services for retail, corporate, SME and agricultural clients from locations in the UK, Canada, New York and Australia</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>EXIM Bank was established in 1999 and has fast grown to achieve status as a pioneering financial establishment, dedicated to the socio-economic development of Bangladesh and its people.</p>\r\n\r\n<p>Our philosophy centres on the pursuit of excellence in quality financial services for the retail, corporate, SME and agricultural sectors as well as in foreign trade. This is underpinned by a corporate culture that provides a positive development platform, encouraging our people to strive, share and innovate in the furtherance of our overall aims.</p>\r\n\r\n<p>Our investment portfolio comprises diversified areas of business and industry including textiles, edible oil, ready-made garments, chemicals, cement, telecom, steel, real estate and other service industries. Our steadfast focus on the acquisition of quality assets has resulted in a well-established, structured investment portfolio with minimized risk.</p>\r\n\r\n<p>Reflecting NASSA Group&rsquo;s commitment to sustainable social development, EXIM Bank operates a stringent programme of corporate social responsibility. At least 2% of our annual profits are channelled into carefully selected, ethical and well managed programmes addressing healthcare, education, poverty and environmental development for the people of Bangladesh.</p>\r\n\r\n<p>EXIM is the first privately owned bank to open an exchange house in the UK, enhancing our capacity to deliver seamless services to Bangladeshis living and working in the UK. We have also opened exchange houses in Canada and New York with a further Australian location due to open shortly.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box style02\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading\">EXIM bank limited</div>\r\n</div>\r\n\r\n<p><em>Together Towards Tomorrow</em></p>\r\n\r\n<p><a href=\"http://www.eximbankbd.com/home\" target=\"_blank\">Visit the Exim Bank website to find out more &gt;</a></p>\r\n\r\n<p><a class=\"grey-fullsize\" href=\"http://www.eximbankbd.com/home\" style=\"width: 641px;\"><img alt=\"\" class=\"alignnone size-full wp-image-822\" src=\"/static/js/ckfinder/userfiles/images/banking-eximbank.jpg\" style=\"height:220px; width:631px\" /></a></p>\r\n</div>\r\n\r\n<div style=\"margin:20px 0 0;\"><a href=\"http://www.eximbankbd.com/home\" target=\"_blank\">&nbsp;</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'banking', 'img/nassa_banking_Dk74iRN.jpg'),
(12, 'STOCK BROKERAGE', 'ANW Associates Ltd is a fully accredited member of the Dhaka Stock Exchange', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\">\r\n<div class=\"page-subheading\" style=\"color:#3b7627\">ANW Associates Ltd is an accredited member of the Dhaka Stock Exchange providing robust ethical trading opportunities in global stocks and shares</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>ANW Associates Ltd is a fully accredited member of the Dhaka Stock Exchange. The organisation exists to provide beneficial trading opportunities for clients and organisations looking to trade in stocks and shares in a sustainable and risk controlled environment.Our commitment to social responsibility in financial trading is paramount to our activities in today&rsquo;s volatile markets. We prioritise an intelligent investment portfolio managed by experts who are fully versed in the latest financial market movements, and backed up by a strong and stable reserve.</p>\r\n\r\n<p>The result is a trading option where clients can be assured of robust trading management, a responsible and meticulous approach to investment, and ultimately the growth of their financial portfolio, contributing to individual and national growth as well as the recovery of the global economy as a whole.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"contact-box-wrapper\">\r\n<div class=\"contact-box-holder\">\r\n<div class=\"contact-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img054.png\" style=\"height:28px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\">Contact</div>\r\n</div>\r\n\r\n<p>Nassa Group</p>\r\n\r\n<p>238, Tejgaon I/A, Gulshan</p>\r\n\r\n<p>Link Road, Dhaka-1208</p>\r\n\r\n<p>Phone: 8832400-7(Office)</p>\r\n\r\n<p>Fax: 8823761</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'stock-brokerage', 'img/nassa_brokerage_Jf8c7I9.jpg'),
(13, 'TRAVEL', 'The world at your fingertips: Comprehensive travel services for a global community', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\">\r\n<div class=\"page-subheading\" style=\"color:#449e83\">Planet Travels Ltd offers superior travel services to global destinations, providing flights, accommodation, transport and bespoke package building</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>Planet Travels Ltd, a division of NASSA Group, provides a full range of travel services for both business and consumer based clientele. Clients turn to us for our guaranteed quality and efficiency of service, designed to flex to any conceivable scenario and environment. From one-off ticket, accommodation and transport services to bespoke package building, we are passionate about negotiating the right travel solution to ensure our clients&rsquo; convenience, style and comfort.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>Our extensive networks in the travel and hospitality sectors equip us to negotiate competitive rates and deliver speed and accuracy of service with results our customers know they can trust.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/travel-image1.jpg\" style=\"height:261px; width:610px\" /></div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"travel-link\" style=\"background-image:url(/static/js/ckfinder/userfiles/images/img022.png); background-repeat:no-repeat; background-position:35px 50%;\">Branch locations <a href=\"http://localhost:8000/page/contact\">Read More</a></div>\r\n&nbsp;\r\n\r\n<div class=\"travel-link\" style=\"background-image:url(/static/js/ckfinder/userfiles/images/img054.png); background-repeat:no-repeat; background-position:35px 50%;\">Contact <a href=\"http://localhost:8000/page/contact\">Read More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'travel', 'img/nassa_travel_HqcQODW.jpg'),
(14, 'CONTACT', 'Our Contact Information', '<div class=\"page-content-holder\">\r\n<div class=\"page-content odd\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img022.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\">NASSA BANGLADESH</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/bg-career.png\" style=\"height:22px; width:35px\" /></div>\r\n\r\n<div class=\"page-subheading\">NASSA GROUP</div>\r\n</div>\r\n\r\n<address>\r\n<pre>\r\n238, Tejgaon Industrial Area,\r\nGulshan Link Road \r\nDhaka-1208 \r\nBangladesh \r\nTel: 88 02 8878543-49 \r\nTel: 88 02 9830348-54\r\nEmail: nassa@nassagroup.org\r\n</pre>\r\n</address>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/bg-career.png\" style=\"height:22px; width:35px\" /></div>\r\n\r\n<div class=\"page-subheading\">PLANET TRAVEL</div>\r\n</div>\r\n\r\n<address>\r\n<pre>\r\nPlanet Travel Ltd\r\nGulshan Tower (3rd floor)\r\n31, North Gulshan C/A\r\nGulshan &ndash; 2, Dhaka 1212\r\nPhone: 00 (88) 02 9886471, 00 (88) 02 9888536\r\nFax: 00 (88) 02 9888536\r\nEmail: planetravels11@gmail.com\r\n\r\n\r\n</pre>\r\n</address>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img022.png\" style=\"height:24px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\">NASSA HONG KONG AND LONDON</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/bg-career.png\" style=\"height:22px; width:35px\" /></div>\r\n\r\n<div class=\"page-subheading\">HONG KONG OFFICE</div>\r\n</div>\r\n\r\n<address>\r\n<pre>\r\nChina Supreme Limited\r\n5B, 20th Floor\r\nExchange Tower\r\n33, Wang Chiu Road\r\nKowloon Bay\r\nHong Kong\r\nTel: +852 21760812</pre>\r\n</address>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/bg-career.png\" style=\"height:22px; width:35px\" /></div>\r\n\r\n<div class=\"page-subheading\">ANW LONDON</div>\r\n</div>\r\n\r\n<address>\r\n<pre>\r\nANW  Associates London\r\n66, Pembroke Road\r\nKensington\r\nLondon, UK.\r\nW8 6NX\r\nGeneral Enquiries\r\nTel: +44 20 76026565\r\nEmail: info@anwlondon.com\r\nSales Enquiries\r\nLaura Nicholson-Thew &ndash; Head of Sales\r\nLaura@anwlondon.com  Tel: +44 20 76026565</pre>\r\n</address>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'contact', 'img/nassa_sustainiability_N2jKsOA.jpg'),
(15, 'SUSTAINABILTY', 'NASSA Group, Bangladesh’s leading garment manufacturer, is proud to invest in sustainability initiatives for our people, customers and environment', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\' %}\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img04.png\" style=\"height:25px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#093\">Sustainability: The key to a bright tomorrow for Bangladesh</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA Group is wholly committed to our responsibility to drive the sustainability of our operations, our client base, our stakeholders and our surrounding communities and environment.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>Our sustainability policy focuses on building capacity, resources and growth in the following core areas:</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"plan-list-holder\">\r\n<h2>Our Plan</h2>\r\n<img alt=\"Our Plan\" src=\"/static/js/ckfinder/userfiles/images/bg-post.png\" style=\"height:77px; width:1196px\" />\r\n<ul>\r\n	<li>\r\n	<div class=\"plan-holder\">\r\n	<div class=\"plan-wrapper\"><img alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img029.png\" style=\"height:22px; width:23px\" />\r\n	<h3>People</h3>\r\n\r\n	<div class=\"plan-descr\">We embrace a corporate culture that supports the professional development of more than 30,000 employees, as well as in their families and communities, via a wide range of educational and healthcare initiatives.</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"plan-holder\">\r\n	<div class=\"plan-wrapper\"><img alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img034.png\" style=\"height:14px; width:30px\" />\r\n	<h3>Innovation and technology</h3>\r\n\r\n	<div class=\"plan-descr\">We continuously invest in the latest computer aided manufacturing technology sourced from the US and Europe. This enhances the efficiency of our supply chain and achieves the consistent quality and newness to market our clients expect.</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"plan-holder\">\r\n	<div class=\"plan-wrapper\"><img alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img044.png\" style=\"height:24px; width:23px\" />\r\n	<h3>Quality</h3>\r\n\r\n	<div class=\"plan-descr\">Stringent standards of quality control are instilled into our own team of fully trained merchandisers, quality inspectors and client service agents.</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"plan-holder\">\r\n	<div class=\"plan-wrapper\"><img alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img04.png\" style=\"height:25px; width:24px\" />\r\n	<h3>Environment</h3>\r\n\r\n	<div class=\"plan-descr\">We embrace a corporate culture that supports the professional development of more than 30,000 employees, as well as in their families and communities, via a wide range of educational and healthcare initiatives.</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"plan-holder\">\r\n	<div class=\"plan-wrapper\"><img alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img063.png\" style=\"height:25px; width:26px\" />\r\n	<h3>Growth</h3>\r\n\r\n	<div class=\"plan-descr\">We continuously invest in the latest computer aided manufacturing technology sourced from the US and Europe. This enhances the efficiency of our supply chain and achieves the consistent quality and newness to market our clients expect.</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"plan-holder\">\r\n	<div class=\"plan-wrapper\"><img alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img071.png\" style=\"height:27px; width:34px\" />\r\n	<h3>Service</h3>\r\n\r\n	<div class=\"plan-descr\">Stringent standards of quality control are instilled into our own team of fully trained merchandisers, quality inspectors and client service agents.</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img04.png\" style=\"height:25px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009933\">ENVIRONMENTAL CONTROLS</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA Group, its Board of Management, divisions, operations and employees are all committed to achieving the highest possible standards of environmentally protective procedures. Safeguarding the world around us is an inherent component of our sustainability programme. We recognise our profound responsibility to manufacture ethically and with care and attention to the preservation of the environment for future generations.</p>\r\n\r\n<p>The group has put in place a stringent 3 year plan aimed at further improving our environmental measures. This plan is focused on 4 core aims:</p>\r\n\r\n<p>2 The introduction of high efficiency production machinery, aimed at reducing water</p>\r\n\r\n<p><img alt=\"\" class=\"alignnone size-full wp-image-661\" src=\"/static/js/ckfinder/userfiles/images/img083.jpg\" style=\"height:129px; width:568px\" /></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img04.png\" style=\"height:25px; width:24px\" /></div>\r\n\r\n<div class=\"page-subheading\">Environmental controls</div>\r\n</div>\r\n\r\n<ol>\r\n	<li>The integration of Effluent Treatment Plants with a 1.5 cusec capacity, designed to adhere to recommended World Bank guidelines</li>\r\n	<li>The introduction of high efficiency production machinery, aimed at reducing water consumption by 50%</li>\r\n	<li>The implementation of combined heat and power generation with the goal of reducing gas consumption by 10%</li>\r\n	<li>The transition to the latest dyeing technology to further reduce waste and pollution ratios.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'sustainability', 'img/nassa_sustainiability_CKFGOWT.jpg'),
(16, 'EDUCATION', 'EXIM Agricultural University: driving sustainable development', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\">\r\n<div class=\"page-subheading\" style=\"color:#009973\">EXIM Agricultural University provides agricultural training and scholarships for the young people of Bangladesh, with the kind support of NASSA Group</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA Group is profoundly committed to the vital role of education in Bangladesh in achieving socio-economic, financial and commercial growth.</p>\r\n\r\n<p>We believe that by investing in education and training we lay the foundations for future generations of Bangladeshis to negotiate, determine and drive their own economic futures. 80% of the population of Bangladesh lives in rural and agricultural areas. For development to be impactful it is important to align education and training to natural trends in the economy. Therefore NASSA is proud to be funding a new agricultural university. The University will train a new generation of Bangladeshis in modern agricultural techniques that will equip them to support themselves, their families, communities and Bangladesh&rsquo;s economy as a whole.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box style02\">\r\n<p>EXIM Bank, a division of NASSA Group, will also support students from underprivileged backgrounds with scholarships so that they can build a brighter future for themselves.</p>\r\n\r\n<p><a href=\"http://www.eximbankbd.com/about/Exim_Bank_Foundation\" target=\"_blank\" title=\"EXIM BANK HOMEPAGE\">Visit the EXIM Bank website to find out more about the full corporate social responsibility portfolio</a></p>\r\n\r\n<p><img alt=\"\" class=\"alignnone size-full wp-image-836\" src=\"/static/js/ckfinder/userfiles/images/education-image1.jpg\" style=\"height:151px; width:636px\" /></p>\r\n</div>\r\n\r\n<div style=\"margin:20px 0 0;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'education', 'img/nassa_education_ap3Nyov.jpg'),
(17, 'NASSA PROPERTIES LTD', 'Building Bangladesh’s commercial construction potential', '<div class=\"page-content-holder\">\r\n                <div class=\"page-content\">\r\n                                            <div style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\" class=\"page-subheading-holder main-heading\">\r\n                                                            <div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img025.png\"></div>\r\n                                                        <div style=\"color:#009973\" class=\"page-subheading\">NASSA PROPERTIES LTD IS A LEADING COMMERCIAL CONSTRUCTION COMPANY SPECIALISING IN THE ACQUISITION AND DEVELOPMENT OF PRIME SITES IN BANGLADESH’S DHAKA</div>\r\n                        </div>\r\n                                                                <div class=\"twocolumns\">\r\n                            <div class=\"left-column column\">\r\n                                <div class=\"column-holder\">\r\n                                    <p>NASSA Properties Ltd is a market leader in the large scale property development of Bangladesh’s capital city’s infrastructure. Our focus on the acquisition of prime sites and commercial construction of new and exciting buildings has contributed profoundly to Dhaka’s status as the most highly developed urban area of Bangladesh. Our leading role in Dhaka’s commercial property development reflects NASSA Group’s unerring commitment to the role of a thriving business economy in securing Bangladesh’s future. We are dedicated to building our capital city’s landscape through exciting developments that play a lead role in attracting increasing overseas investment as well as local and international trade.</p>\r\n<p>This commitment is complemented by our work to develop modern and affordable housing opportunities for citizens of Bangladesh &ndash; delivered through our sister company <a href=\"#\">RANS Real Estate</a>.</p>\r\n                                </div>\r\n                            </div>\r\n                                                            <div class=\"right-column column\">\r\n                                    <div class=\"column-holder\">\r\n                                        <div class=\"contact-box-wrapper\">\r\n                                            <div class=\"contact-box-holder\">\r\n                                                <div class=\"contact-box\">\r\n                                                                                                            <div class=\"page-subheading-holder\">\r\n                                                                                                                            <div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img053.png\"></div>\r\n                                                                                                                        <div class=\"page-subheading\">Contact</div>\r\n                                                        </div>\r\n                                                                                                        <p>Nassa Group</p>\r\n<p>238, Tejgaon I/A, Gulshan</p>\r\n<p>Link Road, Dhaka-1208</p>\r\n<p>Phone: 8832400-7(Office)</p>\r\n<p>Fax: 8823761</p>\r\n                                                </div>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                                                    </div>\r\n                    \r\n                                                                                    <ul class=\"properties-list\">\r\n                                                    <li>\r\n                                <div class=\"text-holder\">\r\n                                    <h2>Scala</h2>\r\n                                                                    </div>\r\n\r\n                                \r\n                                                                    <ul class=\"image-holder\">\r\n\r\n                                                                                    <li>\r\n                                                <a alt=\"Scala Main \" href=\"/static/js/ckfinder/userfiles/images/img061000.html\" title=\"Scala Main \" class=\"prop-images\"><img width=\"552\" height=\"441\" alt=\"Scala Main \" src=\"/static/js/ckfinder/userfiles/images/img061000.jpg\"></a>\r\n                                            </li>\r\n                                                                                    <li>\r\n                                                <a alt=\"First \" href=\"/static/js/ckfinder/userfiles/images/img061.jpg\" title=\"First \" class=\"prop-images\"><img width=\"552\" height=\"441\" alt=\"First \" src=\"/static/js/ckfinder/userfiles/images/img061.html\"></a>\r\n                                            </li>\r\n                                                                                    <li>\r\n                                                <a alt=\"Item 2\" href=\"/static/js/ckfinder/userfiles/images/img0610.jpg\" title=\"Item 2\" class=\"prop-images\"><img width=\"552\" height=\"441\" alt=\"Item 2\" src=\".js/ckfinder/userfiles/images/img0610.jpg\"></a>\r\n                                            </li>\r\n                                        \r\n                                    </ul>\r\n                                \r\n                            </li>\r\n                                                </ul>\r\n                        <script type=\"text/javascript\">\r\n                            jQuery(function($) {\r\n                                $(\'.prop-images\').fancybox();\r\n                            });\r\n\r\n                        </script>\r\n\r\n                    \r\n\r\n                </div>\r\n            </div>                                \r\n		</div>\r\n	</div>', 'nassa-properties-ltd', 'img/nassa_realeastate_IaWIsQs.jpg'),
(18, 'RANS REAL ESTATE', 'Desires into reality: Property development for the future of Bangladesh', '<div class=\"page-content-holder\">\r\n                <div class=\"page-content\">\r\n                                            <div style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\" class=\"page-subheading-holder main-heading\">\r\n                                                            <div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img025.png\"></div>\r\n                                                        <div style=\"color:#\" class=\"page-subheading\">A DRIVING FORCE IN RESIDENTIAL PROPERTY DEVELOPMENT FOR HOME OWNERS SEEKING MODERN HOUSING SOLUTIONS IN DHAKA, BANGLADESH</div>\r\n                        </div>\r\n                                                                <div class=\"twocolumns\">\r\n                            <div class=\"left-column column\">\r\n                                <div class=\"column-holder\">\r\n                                    <p>In just 5 years RANS Real Estate has grown rapidly to achieve its status as a driving force in Dhaka’s residential property development. Our vision is to transform the potential of the Bangladesh property market by creating beautiful homes that meet the changing demands of modern home owners. We specialize in the creation of luxury apartment complexes across prime locations in Dhaka City.Our 400-strong workforce is highly skilled and committed to 21st century construction standards focused on supreme quality workmanship and discerning contracting and supply methodologies.</p>\r\n<p>The result is a new generation of modern, affordable homes for Bangladesh residents seeking aesthetic luxury complemented by practical lifestyle solutions.</p>\r\n                                </div>\r\n                            </div>\r\n                                                            <div class=\"right-column column\">\r\n                                    <div class=\"column-holder\">\r\n                                        <div class=\"contact-box-wrapper\">\r\n                                            <div class=\"contact-box-holder\">\r\n                                                <div class=\"contact-box\">\r\n                                                                                                            <div class=\"page-subheading-holder\">\r\n                                                                                                                            <div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img023.png\"></div>\r\n                                                                                                                        <div class=\"page-subheading\">Contact</div>\r\n                                                        </div>\r\n                                                                                                        <p>This commitment is complemented by our work to develop modern and affordable housing opportunities for citizens of Bangladesh &ndash; delivered through our sister company RANS Real Estate.</p>\r\n                                                </div>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                                                    </div>\r\n                    \r\n                                                                                    <ul class=\"properties-list\">\r\n                                                    <li>\r\n                                <div class=\"text-holder\">\r\n                                    <h2>Scala</h2>\r\n                                    <address>96 Kensington High Street, W8 4SG</address>\r\n                                <h3>Four hundered new homes will be created with a high end off-street shopping complex</h3>\r\n                                <p><em>Statisitcs such as 23,000sq/ft to 35,000sq/ft available per floor. Services and unfurnished spaces available.</em></p>\r\n                                \r\n                                                            </div>\r\n\r\n                                \r\n                                                                    <ul class=\"image-holder\">\r\n\r\n                                                                                    <li>\r\n                                                <a alt=\"\" href=\"/static/js/ckfinder/userfiles/images/img061.jpg\" title=\"\" class=\"prop-images\"><img width=\"552\" height=\"441\" alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img061.html\"></a>\r\n                                            </li>\r\n                                                                                    <li>\r\n                                                <a alt=\"\" href=\"/static/js/ckfinder/userfiles/images/img0610.jpg\" title=\"\" class=\"prop-images\"><img width=\"552\" height=\"441\" alt=\"\" src=\"/static/js/ckfinder/userfiles/images/img0610.html\"></a>\r\n                                            </li>\r\n                                                                                    <li>\r\n                                                <a alt=\"test\" href=\"/static/js/ckfinder/userfiles/images/img06100.html\" title=\"test\" class=\"prop-images\"><img width=\"552\" height=\"441\" alt=\"test\" src=\"/static/js/ckfinder/userfiles/images/img0610.jpg\"></a>\r\n                                            </li>\r\n                                        \r\n                                    </ul>\r\n                                \r\n                            </li>\r\n                                                </ul>\r\n                        <script type=\"text/javascript\">\r\n                            jQuery(function($) {\r\n                                $(\'.prop-images\').fancybox();\r\n                            });\r\n\r\n                        </script>\r\n\r\n                    \r\n\r\n                </div>\r\n            </div>                                \r\n		</div>\r\n	</div>', 'rans-real-estate', 'img/nassa_realeastate_VUrh7bI.jpg'),
(19, 'COMPANY PROFILE', 'NASSA Group has interests in Garment Manufacturing, Banking, Real Estate, Stock Brokering, Education and Travel and most importantly Corporate Social Responsibility.', '<div class=\"page-content-holder\">\r\n            <div class=\"page-content\">\r\n            <div class=\"page-subheading-holder main-heading\">\r\n            <div class=\"page-subheading\" style=\"color:#bd7d59\">We believe in the power of industry to build a bright future for Bangladesh</div>\r\n            </div>\r\n\r\n            <div class=\"twocolumns\">\r\n            <div class=\"left-column column\">\r\n            <div class=\"column-holder\">\r\n            <p>NASSA Group Limited of Industries was founded in 1990 by noted business <strong>entrepreneur</strong> Mr Nazrul Islam Mazumder. Under his leadership, the group has expanded rapidly to achieve status as one of Bangladesh&rsquo;s largest industrial conglomerates and one of the most significant investors in the country&rsquo;s economy.</p>\r\n\r\n            <p>NASSA Group Limited has interests in Garment Manufacturing, Banking, Real Estate, Stock Brokering, Education and Travel and most importantly Corporate Social Responsibility.</p>\r\n\r\n            <p>NASSA Group&rsquo;s ready made garment and textile manufacturing division has achieved globally respected status as a supplier of yarns, textiles and ready-made garments for branded and private label clients worldwide. The manufacturing operation boasts 1.1 million sq. ft. of production space, across which <strong>more</strong> than 30,000 skilled workers operate in 34 vertically owned factories.</p>\r\n\r\n            <p>EXIM Bank Limited has been a crucial part of the corporate expansion and has fast grown to achieve status as a pioneering financial establishment, dedicated to the socio-economic development of Bangladesh and its people.</p>\r\n\r\n            <p>NASSA Properties Limited has been established with the aim to develop prime commercial properties in the heart of Dhaka. Along with the commercial side of our real estate business, we have RANS Real Estate Limited which is a driving force in residential property development for <strong>home owners</strong> seeking modern housing solutions in Dhaka, Bangladesh.</p>\r\n\r\n            <p>ANW Dhaka Limited is an accredited member of the Dhaka stock exchange providing robust ethical trading opportunities in global stocks and shares. ANW Dhaka exists to provide beneficial trading opportunities for clients and organisations looking to trade in stocks and shares in a sustainable and risk controlled environment.</p>\r\n\r\n            <p>NASSA Group is profoundly committed to the vital role of education in Bangladesh in achieving socio-economic, financial and commercial growth.</p>\r\n\r\n            <p>EXIM Agricultural University provides agricultural training and scholarships for the young people of Bangladesh. The university will train a new generation of Bangladeshis in modern agricultural techniques that will equip them to support themselves, their families, communities and Bangladesh&rsquo;s economy as a whole.</p>\r\n\r\n            <p><a class=\"link-download\" href=\"http://nassagroup.org/app/webroot/js/ckfinder/userfiles/files/NASSA COMPANY PROFILE-mens 2 2014 ( 2nd edited).pdf\">Download the brochure &ndash; Nassa Group (Full script for Nassa Group)</a></p>\r\n            </div>\r\n            </div>\r\n\r\n            <div class=\"right-column column\">\r\n            <div class=\"column-holder\">\r\n            <p><img alt=\"\" class=\"alignnone size-full wp-image-890\" src=\"/static/js/ckfinder/userfiles/images/web-logo.png\" style=\"height:264px; width:500px\" /></p>\r\n\r\n            <p><strong>Corporate Social Responsibility &amp; Sustainability</strong></p>\r\n\r\n            <p>NASSA Group is committed to achieving a sustainable impact on Bangladesh&rsquo;s social-economic growth by addressing the welfare of our people and communities through a number of education, healthcare and environment initiatives.</p>\r\n\r\n            <p>Sustainability: The key to a bright tomorrow for Bangladesh. NASSA Group is fully committed to the responsibility of driving the sustainability of the group&rsquo;s operations, client base, stakeholders and surrounding communities and environment.</p>\r\n\r\n            <p><img alt=\"\" class=\"alignnone size-full wp-image-453\" src=\"/static/js/ckfinder/userfiles/images/img023.jpg\" style=\"height:167px; width:546px\" /></p>\r\n            </div>\r\n            </div>\r\n            </div>\r\n            </div>\r\n            </div>\r\n\r\n\r\n                                \r\n		</div>\r\n	</div>', 'company-main', 'img/nassa_profile1_JpoJzoU.jpg');
INSERT INTO `nassabiz_blogmodel` (`id`, `title`, `subtitle`, `article`, `slug`, `image`) VALUES
(20, 'APPAREL', 'Global garment manufacturing from the heart of Bangladesh', '<div class=\"page-content-holder\" style=\"padding-bottom: 35px;\">\r\n		<div class=\"page-content\">\r\n		<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n		<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img019.png\" /></div>\r\n\r\n			<div class=\"page-subheading\" style=\"color:#ccc\">Who we are</div>\r\n			</div>\r\n\r\n		<div class=\"twocolumns\">\r\n		<div class=\"left-column column\">\r\n		<div class=\"column-holder\">\r\n<p>NASSA Group is a market leader in wholly owned garment and textile manufacturing services for global clients, supplied from the heart of Bangladesh.</p>\r\n\r\n<p>Since opening its doors in 1990, NASSA Group has rapidly expanded to become the largest Bangladeshi apparel and textile manufacturing conglomerate serving fashion, private and brand labels into the US, Canada, Mexico and the EU.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>A leading manufacturer headquartered in Bangladesh, NASSA Group is renowned amongst clients across the world for our state of the art equipment, optimally efficient supply chains, 100% ethical trading policies, environmental compliance and strong commitment to sustainability.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content-holder transparent\">\r\n<div class=\"page-content\">\r\n<div class=\"apparel-totals-list-holder\">\r\n<ul class=\"apparel-totals-list\">\r\n	<li>\r\n	<div class=\"totals-title-wrapper\">\r\n	<div class=\"totals-title-holder\">\r\n	<h3>TOTAL FACTORIES</h3>\r\n	</div>\r\n	</div>\r\n	<span class=\"test\" style=\"margin-top: -5px; margin-left: -47px;\"><span class=\"count-wrapper\"><span class=\"count-holder\">34</span></span> </span>\r\n\r\n	<div class=\"image-holder\"><img alt=\"TOTAL FACTORIES\" height=\"81\" src=\"/static/js/ckfinder/userfiles/images/factories.jpg\" width=\"371\" /></div>\r\n	</li>\r\n	<li class=\"odd\">\r\n	<div class=\"totals-title-wrapper\">\r\n	<div class=\"totals-title-holder\">\r\n	<h3>TOTAL PRODUCTION CAPACITY</h3>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"content_number\" style=\"\"><span class=\"test\" style=\"margin-top: 0px; margin-left: -47px;\">50 </span></div>\r\n\r\n	<div class=\"content_text\" style=\"\"><span class=\"test\" style=\"margin-top: 20px; margin-left: -47px; font-size:9px; color:gray;\">million </span></div>\r\n\r\n	<div class=\"image-holder\"><img alt=\"TOTAL PRODUCTION CAPACITY &lt;span&gt;PER YEAR&lt;/span&gt;\" height=\"81\" src=\"/static/js/ckfinder/userfiles/images/totalprod.jpg\" width=\"371\" /></div>\r\n	</li>\r\n	<li>\r\n	<div class=\"totals-title-wrapper\">\r\n	<div class=\"totals-title-holder\">\r\n	<h3>Total Production Space</h3>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"test\" style=\"margin-top: -30px; margin-left: -22px;\">\r\n	<div class=\"content_text\" style=\"margin-top: 18px; margin-left: -47px; font-size:9px; color:gray\">square feet</div>\r\n\r\n	<div class=\"content_number\" style=\"margin-left:-55px !important;\">3</div>\r\n\r\n	<div class=\"content_text\" style=\"margin-top: 0px; margin-left: -50px; font-size:9px; color:gray\">million</div>\r\n	</div>\r\n\r\n	<div class=\"image-holder\"><img alt=\"Total Production Space&lt;span&gt;Square Feet&lt;/span&gt;\" height=\"81\" src=\"/static/js/ckfinder/userfiles/images/total-productionspace.jpg\" width=\"371\" /></div>\r\n	</li>\r\n	<li class=\"odd\">\r\n	<div class=\"totals-title-wrapper\">\r\n	<div class=\"totals-title-holder\">\r\n	<h3>total production line</h3>\r\n	</div>\r\n	</div>\r\n	<span class=\"test\" style=\"margin-top: -5px; margin-left: -47px;\"><span class=\"count-wrapper\"><span class=\"count-holder\">210</span></span> </span>\r\n\r\n	<div class=\"image-holder\"><img alt=\"total production line\" height=\"81\" src=\"/static/js/ckfinder/userfiles/images/app.jpg\" width=\"371\" /></div>\r\n	</li>\r\n	<li>\r\n	<div class=\"totals-title-wrapper\">\r\n	<div class=\"totals-title-holder\">\r\n	<h3>machines deployed</h3>\r\n	</div>\r\n	</div>\r\n	<span class=\"test\" style=\"margin-top: -5px; margin-left: -47px;\"><span class=\"count-wrapper\"><span class=\"count-holder\">19,000</span></span> </span>\r\n\r\n	<div class=\"image-holder\"><img alt=\"machines deployed\" height=\"81\" src=\"/static/js/ckfinder/userfiles/images/totoalcapa0.jpg\" width=\"371\" /></div>\r\n	</li>\r\n	<li class=\"odd\">\r\n	<div class=\"totals-title-wrapper\">\r\n	<div class=\"totals-title-holder\">\r\n	<h3>total employed manpower</h3>\r\n	</div>\r\n	</div>\r\n	<span class=\"test\" style=\"margin-top: -5px; margin-left: -47px;\"><span class=\"count-wrapper\"><span class=\"count-holder\">30,500</span></span> </span>\r\n\r\n	<div class=\"image-holder\"><img alt=\"total employed manpower\" height=\"81\" src=\"/static/js/ckfinder/userfiles/images/img02000.jpg\" width=\"371\" /></div>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"apparel-totals-divider\" style=\"height: 582px; top: 96.5px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img019.png\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">what we do</div>\r\n</div>\r\n\r\n<div class=\"apparel-links-holder\">\r\n<h3>Services</h3>\r\n<!---------------------------- Each two <li> should be wrapped in <ul class=\"apparel-links-list\">. Each odd ul should have class=\"apparel-links-list odd\" ----------------------------------->\r\n\r\n<ul class=\"apparel-links-list oddodd\">\r\n	<li class=\"ready-made-garments\">\r\n	<div class=\"apparel-link-holder\"><span>Ready Made Garments</span><a href=\"http://localhost:8000/page/ready-made\" title=\"Ready Made Garments\">Read More</a></div>\r\n	</li>\r\n	<li class=\"product-development odd\">\r\n	<div class=\"apparel-link-holder\"><span>Product development</span><a href=\"http://localhost:8000/page/product-development\" title=\"Product development\">Read More</a></div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"apparel-links-list odd\">\r\n	<li class=\"textiles\">\r\n	<div class=\"apparel-link-holder\"><span>Textiles</span><a href=\"http://localhost:8000/page/textiles\" title=\"Textiles\">Read More</a></div>\r\n	</li>\r\n	<li class=\"spinning odd\">\r\n	<div class=\"apparel-link-holder\"><span>Spinning</span><a href=\"http://localhost:8000/page/spinning\" title=\"Spinning\">Read More</a></div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"apparel-links-list oddodd\">\r\n	<li class=\"quality-control\">\r\n	<div class=\"apparel-link-holder\"><span>Quality control</span><a href=\"http://localhost:8000/page/quality\" title=\"Quality control\">Read More</a></div>\r\n	</li>\r\n	<li class=\"logistics odd\">\r\n	<div class=\"apparel-link-holder\"><span>Logistics</span><a href=\"http://localhost:8000/page/logistics\" title=\"Logistics\">Read More</a></div>\r\n	</li>\r\n</ul>\r\n<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --></div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img019.png\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">Clients</div>\r\n</div>\r\n\r\n<div class=\"slider-holder\">\r\n<div class=\"flexslider logo-slider\">\r\n<div class=\"flex-viewport\" style=\"overflow: hidden; position: relative;\">\r\n<ul class=\"apparel-logos slides\" style=\"width: 2800%; transition-duration: 0s; transform: translate3d(-2500px, 0px, 0px);\">\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"zara\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/zara.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"m&amp;s\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/m%26s.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"Mango\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/mango.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"bershka\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/bershka.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"ttt\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/kmart.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"cheap monday\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/cheapmonday.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"ca\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/c%26a.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"charles\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/charlesvog.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"One\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/bhs0.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"jcpenney\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/jcpenney.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"asda\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/asda.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"carre\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/carrefour.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"orsay\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/orsay.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li style=\"width: 222px; float: left; display: block;\"><img alt=\"walmart\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/walkmart.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n</ul>\r\n</div>\r\n\r\n<ol class=\"flex-control-nav flex-control-paging\">\r\n	<li><a>1</a></li>\r\n	<li><a>2</a></li>\r\n	<li><a>3</a></li>\r\n	<li><a class=\"flex-active\">4</a></li>\r\n</ol>\r\n\r\n<ul class=\"flex-direction-nav\">\r\n	<li><a class=\"flex-prev\" href=\"#\">Previous</a></li>\r\n	<li><a class=\"flex-next flex-disabled\" href=\"#\">Next</a></li>\r\n</ul>\r\n</div>\r\n<script type=\"text/javascript\">\r\n                            $(window).load(function() {\r\n                              $(\'.flexslider\').flexslider({\r\n                                animation: \"slide\",\r\n                                animationLoop: false,\r\n                                itemWidth: 250,\r\n                                itemMargin: 0,\r\n                                minItems: 4,\r\n                                maxItems: 4\r\n                              });\r\n                            });\r\n                        </script></div>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\" style=\"border-bottom:1px solid #ccc;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img019.png\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#\">Why they work with us</div>\r\n</div>\r\n\r\n<div class=\"twocolumns middle\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p><img alt=\"\" class=\"alignnone size-full wp-image-907\" height=\"378\" src=\"/static/js/ckfinder/userfiles/images/new-cropped-.png\" width=\"566\" /></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA is fully equipped to produce a wide range of accessories including buttons, threads, zips, tags and poppers designed to fit the buyer&rsquo;s exact specification and cost-efficiency parameters.</p>\r\n\r\n<p>Our state-of-the-art cutting, engraving and finishing technology achieves the robust yet aesthetic finish the modern fashion market demands from its clothing accessories. This is complemented by our wholly owned and vertically integrated manufacturing structure &ndash; geared up to achieve the ideal accessory solution for the client&rsquo;s exacting budget, brief and critical time scale.</p>\r\n\r\n<p>Our state-of-the-art cutting, engraving and finishing technology achieves the robust yet aesthetic finish the modern fashion market demands from its clothing accessories. This is complemented by our wholly owned and vertically integrated manufacturing structure &ndash; geared up to achieve the ideal accessory solution for the client&rsquo;s exacting budget, brief and critical time scale.</p>\r\n\r\n<p>Our clients benefit from the streamlined service we can provide; aligning accessories manufacturing with garment production to ensure the ideal finish and meticulous quality control within a wholly accountable supply structure.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<ul class=\"apparel-logos\">\r\n	<li><img alt=\"wrap\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/wrap.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n	<li><img alt=\"First\" height=\"200\" src=\"/static/js/ckfinder/userfiles/images/sedex-website.png\" width=\"220\" /><span>&nbsp;</span></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img022.png\" /></div>\r\n\r\n<div class=\"page-subheading locations\">Locations:</div>\r\n</div>\r\n\r\n<ul class=\"apparel-loc-list\">\r\n	<li>\r\n	<address>Bangladesh<br />\r\n	ANW Associates London<br />\r\n	66, Pembroke Road<br />\r\n	Kensington<br />\r\n	London, UK.<br />\r\n	W8 6NX</address>\r\n	</li>\r\n	<li>\r\n	<address>Bangladesh, Hong Kong &amp; London<br />\r\n	ANW Associates London<br />\r\n	66, Pembroke Road<br />\r\n	Kensington<br />\r\n	London, UK.<br />\r\n	W8 6NX</address>\r\n	</li>\r\n	<li>\r\n	<address>Bangladesh, Hong Kong &amp; London<br />\r\n	ANW Associates London<br />\r\n	66, Pembroke Road<br />\r\n	Kensington<br />\r\n	London, UK.<br />\r\n	W8 6NX</address>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'apparel', 'img/nassa_readymade_DIg2TAv.jpg'),
(21, 'REAL ESTATE', 'Leading the way in commercial property development and affordable housing opportunities', '<div class=\"page-content-holder\">\r\n<div class=\"page-content\">\r\n<div class=\"page-subheading-holder main-heading\" style=\"border-bottom:1px solid #ccc; padding-bottom:20px;\">\r\n<div class=\"page-subheading-image\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img01(1).png\" style=\"height:22px; width:22px\" /></div>\r\n\r\n<div class=\"page-subheading\" style=\"color:#009973\">NASSA real estate</div>\r\n</div>\r\n\r\n<div class=\"twocolumns\">\r\n<div class=\"left-column column\">\r\n<div class=\"column-holder\">\r\n<p>NASSA Group expanded into large scale property development business in 2007, with the dedication to build our capital city&rsquo;s landscape through exciting developments. &nbsp;Nassa Group has developed interests in both commercial and residential properties to serve the population in Bangladesh.</p>\r\n\r\n<p>Nassa Properties Ltd has been established with the aim to develop prime commercial properties in the heart of Dhaka. Nassa Properties is a market leader in large scale property development of Dhaka&rsquo;s infrastructure.</p>\r\n\r\n<p>Along with the commercial side of our real estate business, we have RANS Real Estate Limited; changing the domestic property landscape of Dhaka by creating new affordable luxury homes to meet the needs of modern Bangladeshi home owners. RANS Real Estate is a driving force in residential property development for home owners seeking modern housing solutions in Dhaka, Bangladesh.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"right-column column\">\r\n<div class=\"column-holder\">\r\n<div class=\"column-grey-box\" style=\"margin:0 0 25px; background:#eef5ea;\">\r\n<div class=\"page-subheading-holder\" style=\"margin:0 0 15px; padding:0;\">\r\n<div class=\"page-subheading-image\"><a class=\"column-grey-box-holder\" href=\"http://localhost:8000/page/nassa-properties-ltd\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img025.png\" style=\"height:18px; width:18px\" /></a></div>\r\n\r\n<div class=\"page-subheading\"><a class=\"column-grey-box-holder\" href=\"http://localhost:8000/page/nassa-properties-ltd\">Nassa Properties</a></div>\r\n</div>\r\n\r\n<p><a class=\"column-grey-box-holder\" href=\"http://localhost:8000/page/nassa-properties-ltd\">NASSA Properties Ltd is a leading commercial construction&nbsp;company specialising in the acquisition and development of prime sites in Bangladesh&rsquo;s Dhaka</a></p>\r\n</div>\r\n\r\n<div class=\"column-grey-box\" style=\"background:#eef5ea;\">\r\n<div class=\"page-subheading-holder\" style=\"margin:0 0 15px; padding:0;\">\r\n<div class=\"page-subheading-image\"><a class=\"column-grey-box-holder\" href=\"http://localhost:8000/page/rans-real-estate\"><img alt=\"image description\" src=\"/static/js/ckfinder/userfiles/images/img03(1).png\" style=\"height:18px; width:18px\" /></a></div>\r\n\r\n<div class=\"page-subheading\">Rans Real Estate</div>\r\n</div>\r\n\r\n<p><a class=\"column-grey-box-holder\" href=\"http://localhost:8000/page/rans-real-estate\">Desires into Reality: residential property development&nbsp;for the future of Bangladesh</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n                                \r\n		</div>\r\n	</div>', 'real-estate', 'img/nassa_realeastate_rcxjMdS.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nassabiz_navmenumodel`
--

CREATE TABLE `nassabiz_navmenumodel` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `parent` tinyint(1) NOT NULL,
  `parent_menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nassabiz_navmodel`
--

CREATE TABLE `nassabiz_navmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nassabiz_navmodel`
--

INSERT INTO `nassabiz_navmodel` (`id`, `name`, `slug`, `primary`, `parent_id`) VALUES
(1, 'Our Company', 'company-main', 1, NULL),
(2, 'Company Profile', 'main-profile', 0, 1),
(3, 'Vision & Values', 'vision-values', 0, 1),
(4, 'History', 'history', 0, 1),
(5, 'Career', 'career', 0, 1),
(6, 'Apparel', 'apparel', 1, NULL),
(7, 'Ready Made Garments', 'ready-made', 0, 6),
(8, 'Product Development', 'product-development', 0, 6),
(9, 'Textile', 'textiles', 0, 6),
(10, 'Spinning', 'spinning', 0, 6),
(11, 'Quality Control', 'quality', 0, 6),
(12, 'Logistics', 'logistics', 0, 6),
(13, 'Banking', 'banking', 1, NULL),
(14, 'Real Estate', 'real-estate', 1, NULL),
(15, 'Nassa Properties Ltd.', 'nassa-properties-ltd', 0, 14),
(16, 'Rans Real Estate', 'rans-real-estate', 0, 14),
(17, 'Stock Brokerage', 'stock-brokerage', 1, NULL),
(18, 'Education', 'education', 1, NULL),
(19, 'Travel', 'travel', 1, NULL),
(20, 'Sustainability', 'sustainability', 1, NULL),
(21, 'Contact', 'contact', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nassabiz_primarynavmanager`
--

CREATE TABLE `nassabiz_primarynavmanager` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nassabiz_secondarynavmanager`
--

CREATE TABLE `nassabiz_secondarynavmanager` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `nassabiz_blogmodel`
--
ALTER TABLE `nassabiz_blogmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nassabiz_blogmodel_slug_759c6cf5` (`slug`);

--
-- Indexes for table `nassabiz_navmenumodel`
--
ALTER TABLE `nassabiz_navmenumodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nassabiz_navmenumodel_slug_f6ef30b5_uniq` (`slug`),
  ADD KEY `nassabiz_navmenumode_parent_menu_id_9f093d29_fk_nassabiz_` (`parent_menu_id`),
  ADD KEY `nassabiz_navmenumodel_slug_f6ef30b5` (`slug`);

--
-- Indexes for table `nassabiz_navmodel`
--
ALTER TABLE `nassabiz_navmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nassabiz_navmodel_parent_id_da9a8986_fk_nassabiz_navmodel_id` (`parent_id`);

--
-- Indexes for table `nassabiz_primarynavmanager`
--
ALTER TABLE `nassabiz_primarynavmanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nassabiz_secondarynavmanager`
--
ALTER TABLE `nassabiz_secondarynavmanager`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nassabiz_blogmodel`
--
ALTER TABLE `nassabiz_blogmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nassabiz_navmenumodel`
--
ALTER TABLE `nassabiz_navmenumodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nassabiz_navmodel`
--
ALTER TABLE `nassabiz_navmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nassabiz_primarynavmanager`
--
ALTER TABLE `nassabiz_primarynavmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nassabiz_secondarynavmanager`
--
ALTER TABLE `nassabiz_secondarynavmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `nassabiz_navmenumodel`
--
ALTER TABLE `nassabiz_navmenumodel`
  ADD CONSTRAINT `nassabiz_navmenumode_parent_menu_id_9f093d29_fk_nassabiz_` FOREIGN KEY (`parent_menu_id`) REFERENCES `nassabiz_navmenumodel` (`id`);

--
-- Constraints for table `nassabiz_navmodel`
--
ALTER TABLE `nassabiz_navmodel`
  ADD CONSTRAINT `nassabiz_navmodel_parent_id_da9a8986_fk_nassabiz_navmodel_id` FOREIGN KEY (`parent_id`) REFERENCES `nassabiz_navmodel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
