-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 08:57 AM
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
(1, 'pbkdf2_sha256$180000$5gE4CSHUg0aO$emfBptMM6/Mq+TUHJKOXH+ezF4nCBs7yXGNOAJkeQ1U=', '2020-09-12 06:19:33.346832', 1, 'mark', '', '', 'admin@nassa.com', 1, 1, '2020-09-12 04:18:49.329240');

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
(34, '2020-09-12 06:22:55.547840', '12', 'STOCK BROKERAGE', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 1);

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
(19, 'sessions', '0001_initial', '2020-09-12 04:13:15.936783');

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
(1, 'COMPANY PROFILE', 'NASSA Group has interests in Garment Manufacturing, Banking, Real Estate, Stock Brokering, Education and Travel and most importantly Corporate Social Responsibility.', '<p>WE BELIEVE IN THE POWER OF INDUSTRY TO BUILD A BRIGHT FUTURE FOR BANGLADESH</p>\r\n\r\n<p>NASSA Group Limited of Industries was founded in 1990 by noted business&nbsp;<strong>entrepreneur</strong>&nbsp;Mr Nazrul Islam Mazumder. Under his leadership, the group has expanded rapidly to achieve status as one of Bangladesh&rsquo;s largest industrial conglomerates and one of the most significant investors in the country&rsquo;s economy.</p>\r\n\r\n<p>NASSA Group Limited has interests in Garment Manufacturing, Banking, Real Estate, Stock Brokering, Education and Travel and most importantly Corporate Social Responsibility.</p>\r\n\r\n<p>NASSA Group&rsquo;s ready made garment and textile manufacturing division has achieved globally respected status as a supplier of yarns, textiles and ready-made garments for branded and private label clients worldwide. The manufacturing operation boasts 1.1 million sq. ft. of production space, across which&nbsp;<strong>more</strong>&nbsp;than 30,000 skilled workers operate in 34 vertically owned factories.</p>\r\n\r\n<p>EXIM Bank Limited has been a crucial part of the corporate expansion and has fast grown to achieve status as a pioneering financial establishment, dedicated to the socio-economic development of Bangladesh and its people.</p>\r\n\r\n<p>NASSA Properties Limited has been established with the aim to develop prime commercial properties in the heart of Dhaka. Along with the commercial side of our real estate business, we have RANS Real Estate Limited which is a driving force in residential property development for&nbsp;<strong>home owners</strong>&nbsp;seeking modern housing solutions in Dhaka, Bangladesh.</p>\r\n\r\n<p>ANW Dhaka Limited is an accredited member of the Dhaka stock exchange providing robust ethical trading opportunities in global stocks and shares. ANW Dhaka exists to provide beneficial trading opportunities for clients and organisations looking to trade in stocks and shares in a sustainable and risk controlled environment.</p>\r\n\r\n<p>NASSA Group is profoundly committed to the vital role of education in Bangladesh in achieving socio-economic, financial and commercial growth.</p>\r\n\r\n<p>EXIM Agricultural University provides agricultural training and scholarships for the young people of Bangladesh. The university will train a new generation of Bangladeshis in modern agricultural techniques that will equip them to support themselves, their families, communities and Bangladesh&rsquo;s economy as a whole.</p>\r\n\r\n<p><a href=\"http://nassagroup.org/app/webroot/js/ckfinder/userfiles/files/NASSA%20COMPANY%20PROFILE-mens%202%202014%20(%202nd%20edited).pdf\">Download the brochure &ndash; Nassa Group (Full script for Nassa Group)</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/web-logo.png\" /></p>\r\n\r\n<p><strong>Corporate Social Responsibility &amp; Sustainability</strong></p>\r\n\r\n<p>NASSA Group is committed to achieving a sustainable impact on Bangladesh&rsquo;s social-economic growth by addressing the welfare of our people and communities through a number of education, healthcare and environment initiatives.</p>\r\n\r\n<p>Sustainability: The key to a bright tomorrow for Bangladesh. NASSA Group is fully committed to the responsibility of driving the sustainability of the group&rsquo;s operations, client base, stakeholders and surrounding communities and environment.</p>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img023.jpg\" /></p>', 'main-profile', 'img/nassa_readymade_K02OeJc.jpg'),
(2, 'VISION AND VALUES', 'The key to a bright tomorrow for Bangladesh', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img05.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>OUR PHILOSOPHY</p>\r\n\r\n<ul>\r\n	<li><em>We believe in the power of industry to build a bright future for Bangladesh on the global stage.</em></li>\r\n	<li><em>We believe in the responsibility of our industry to our customers, our people, our surrounding &nbsp; &nbsp; communities and our environment.</em></li>\r\n	<li><em>We are dedicated to sustainability, accountability and excellence in everything we do.</em></li>\r\n	<li><em>We are passionate about achieving socio-economic growth and change through intelligent business practice.</em></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://nassa.com.bd/162.13.94.95/wp-content/uploads/2013/05/ourcompany-visionvalues.jpg\"><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/ourcompany-visionvalues.jpg\" /></a></p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img05.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MESSAGE FROM THE CHAIRMAN</p>\r\n\r\n<p><em>When I founded&nbsp;<strong>NASSA Group</strong>&nbsp;in 1990 I did so with a strong vision. I believed passionately that Bangladesh had the capacity to become renowned as a world leader in advanced apparel manufacturing and supply. In the face of the extensive on-going&nbsp;<strong>investment</strong>&nbsp;that Dhaka was experiencing at the time, I saw the potential in Bangladesh&rsquo;s infrastructure, people, skills and talent to deliver an intelligent and agile level of service that could compete on the global stage.</em></p>\r\n\r\n<p><em><strong>More</strong>&nbsp;than 20 years on, we are living in a different world. Economic climates are challenging, the political state of affairs is volatile. Times are uncertain. Yet NASSA Group has continued to steadfastly expand, diversify and provide vital employment, revenue and commercial development tailored to global markets; with Bangladesh&rsquo;s future firmly at the core.</em></p>\r\n\r\n<p><em>I believe that our success lies in our courage. The courage to invest in carefully assessed risks to generate diversification and growth. The courage to integrate new technologies and working practices in order to streamline our business model. The courage to protect our people and environment with our eyes steadfastly focused on tomorrow&rsquo;s generations and not just on today&rsquo;s profits.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>That courage has created a thriving conglomerate that serves flagship brands across the globe as well as creating&nbsp;<strong>jobs</strong>, homes, commercial expansion and investment opportunities for the people of Bangladesh.</em></p>\r\n\r\n<p><em>We always strive to do more. In the years ahead, we aim to deliver further diversification, expansion, operational streamlining and&nbsp;<strong>product development</strong>. We aim to generate further employment, to reduce our environmental consumption by 50%, to invest in the agricultural development of Bangladesh&rsquo;s rural communities and the protection of our natural environment.</em></p>\r\n\r\n<p><em>The future may be uncertain, but in my view uncertainty brings with it innovation, and innovation generates growth. For Bangladesh, the future of industry is bright.</em></p>\r\n\r\n<p><strong><em>Mr Nazrul Islam Mazumder Chairman &amp; Owner</em></strong></p>\r\n\r\n<p><strong><em>NASSA Group</em></strong></p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img01.png\" /></p>\r\n\r\n<p>VISION</p>\r\n\r\n<p><em>Our vision is of a global commercial arena where Bangladesh is regarded as a pioneering world leader in:</em></p>\r\n\r\n<ul>\r\n	<li><em>manufacture</em></li>\r\n	<li><em>industry</em></li>\r\n	<li><em>commerce</em></li>\r\n</ul>\r\n\r\n<p><em>And where Bangladesh&rsquo;s future generations are equipped with the skills, resources and passion to drive that vision forward.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img02.png\" /></p>\r\n\r\n<p>VALUES</p>\r\n\r\n<p>We believe in the power of industry to build a bright future for Bangladesh on the global stage.</p>\r\n\r\n<p>We believe in the responsibility of our industry to our customers, our people, our surrounding communities and our environment. We are dedicated to sustainability, accountability and excellence in everything we do.</p>\r\n\r\n<p>We are passionate about achieving socio-economic growth and change through intelligent business practice.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img03.png\" /></p>\r\n\r\n<p>STRATEGY</p>\r\n\r\n<p>The years to come hold the promise of further expansion with a group-wide focus on:</p>\r\n\r\n<ul>\r\n	<li>Growth through business expansion and acquisition</li>\r\n	<li>Diversification with a focus on professionalism and enhanced management systems</li>\r\n	<li>Improved cost-efficiency ratios through intelligent use of manpower and new technologies</li>\r\n	<li>Steadfast improvement and development of our quality product portfolio</li>\r\n	<li>Working in genuine partnership with our customers to ensure their total satisfaction</li>\r\n	<li>Enhancing the reputation of Bangladesh&rsquo;s&nbsp;<strong>apparel</strong>&nbsp;manufacture industry worldwide</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img04.png\" /></p>\r\n\r\n<p>SUSTAINABILITY</p>\r\n\r\n<p>We are dedicated as a Group to the vital role of sustainability in securing a bright commercial, social and environmental future. We address this through:</p>\r\n\r\n<ul>\r\n	<li>Our people: Building their capacity through professional development and education</li>\r\n	<li>Innovation and technology: Investing in the latest computer aided manufacturing technology</li>\r\n	<li>Quality: Insisting on stringent standards of&nbsp;<strong>quality control</strong></li>\r\n	<li>Service: Delivering the highest standards of client care, ensure accountability across the supply chain</li>\r\n	<li>Environment: Implementing a 3 year plan to reduce gas and water consumption and effluent waste</li>\r\n</ul>\r\n\r\n<p><a href=\"http://nassa.com.bd/pages/content_detail/sustainability-2.html\" title=\"Sustainability\">Read more about our sustainability programme &gt;</a></p>', 'vision-values', 'img/nassa_readymade_QCbABkw.jpg'),
(3, 'HISTORY', 'History of our company', '<p>Company&nbsp;milestones</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;&nbsp;\r\n	<h3>2013&nbsp;</h3>\r\n	&nbsp;\r\n\r\n	<p>NASSA&nbsp;brokerage&nbsp;house&nbsp;established,&nbsp;providing&nbsp;and&nbsp;secure,&nbsp;accredited&nbsp;and&nbsp;ethical&nbsp;trading&nbsp;services&nbsp;for&nbsp;clients&nbsp;wishing&nbsp;to&nbsp;invest&nbsp;in&nbsp;stocks&nbsp;and&nbsp;shares</p>\r\n	&nbsp; &nbsp;</li>\r\n	<li>&nbsp;&nbsp;\r\n	<h3>2009</h3>\r\n\r\n	<p>EXIM&nbsp;Bank&nbsp;becomes&nbsp;the&nbsp;first&nbsp;privately&nbsp;owned&nbsp;bank&nbsp;to&nbsp;open&nbsp;an&nbsp;exchange&nbsp;house&nbsp;in&nbsp;the&nbsp;UK,&nbsp;enhancing&nbsp;its&nbsp;capacity&nbsp;to&nbsp;deliver&nbsp;seamless&nbsp;services&nbsp;to&nbsp;Bangladeshis&nbsp;living&nbsp;and&nbsp;working&nbsp;in&nbsp;the&nbsp;UK</p>\r\n	&nbsp;&nbsp; &nbsp;\r\n\r\n	<ul>\r\n		<li>&nbsp;\r\n		<h3>2008</h3>\r\n		&nbsp;\r\n\r\n		<p>RANS&nbsp;Real&nbsp;Estate&nbsp;Ltd&nbsp;established,&nbsp;changing&nbsp;the&nbsp;domestic&nbsp;property&nbsp;landscape&nbsp;of&nbsp;Dhaka&nbsp;by&nbsp;creating&nbsp;new&nbsp;affordable&nbsp;luxury&nbsp;homes&nbsp;to&nbsp;meet&nbsp;the&nbsp;needs&nbsp;of&nbsp;modern&nbsp;Bangladeshi&nbsp;homeowners</p>\r\n		&nbsp;\r\n\r\n		<ul>\r\n			<li>&nbsp;&nbsp;\r\n			<h3>2007</h3>\r\n\r\n			<p>NASSA&nbsp;Properties&nbsp;Ltd&nbsp;established,&nbsp;investing&nbsp;in&nbsp;Dhaka&rsquo;s&nbsp;commercial&nbsp;infrastructure&nbsp;via&nbsp;large&nbsp;scale&nbsp;commercial&nbsp;property&nbsp;investment</p>\r\n			&nbsp;&nbsp;&nbsp;\r\n\r\n			<ul>\r\n				<li>&nbsp;\r\n				<h3>2005</h3>\r\n\r\n				<p>NASSA&nbsp;Taipei&nbsp;Denims&nbsp;Ltd&nbsp;established,&nbsp;diversifying&nbsp;into&nbsp;the&nbsp;global&nbsp;denims&nbsp;market.&nbsp;NASSA&nbsp;Spinning&nbsp;Ltd&nbsp;established,&nbsp;embedding&nbsp;wholly&nbsp;owned&nbsp;spinning&nbsp;operations&nbsp;into&nbsp;the&nbsp;group</p>\r\n				&nbsp;&nbsp;\r\n\r\n				<ul>\r\n					<li>\r\n					<h3>2002</h3>\r\n					&nbsp;\r\n\r\n					<p>NASSA&nbsp;Taipei&nbsp;Textile&nbsp;Mills&nbsp;established,&nbsp;integrating&nbsp;textile&nbsp;production&nbsp;capacity&nbsp;into&nbsp;the&nbsp;group</p>\r\n					&nbsp;&nbsp;\r\n\r\n					<ul>\r\n						<li>&nbsp;\r\n						<h3>1999</h3>\r\n						&nbsp;\r\n\r\n						<p>EXIM&nbsp;Bank&nbsp;established,&nbsp;providing&nbsp;pioneering&nbsp;financial&nbsp;services&nbsp;for&nbsp;the&nbsp;retail,&nbsp;corporate,&nbsp;SME&nbsp;and&nbsp;agricultural&nbsp;sectors&nbsp;as&nbsp;well&nbsp;as&nbsp;in&nbsp;foreign&nbsp;trade.</p>\r\n						&nbsp;&nbsp;\r\n\r\n						<ul>\r\n							<li>\r\n							<h3>1995&nbsp;</h3>\r\n							&nbsp;\r\n\r\n							<p>NASSA&nbsp;Group&nbsp;established&nbsp;its&nbsp;Hong&nbsp;Kong&nbsp;sourcing&nbsp;office&nbsp;to&nbsp;streamline&nbsp;its&nbsp;production&nbsp;capabilities&nbsp;and&nbsp;client&nbsp;relations.</p>\r\n\r\n							<ul>\r\n								<li>&nbsp;\r\n								<h3>1990</h3>\r\n								&nbsp;\r\n\r\n								<p>NASSA&nbsp;Group&nbsp;established&nbsp;by&nbsp;Founder&nbsp;and&nbsp;Chairman&nbsp;Mr&nbsp;Nazrul&nbsp;Islam&nbsp;Mazumder.</p>\r\n								&nbsp;&nbsp;&nbsp;\r\n\r\n								<p>&nbsp;</p>\r\n								</li>\r\n							</ul>\r\n							</li>\r\n						</ul>\r\n						</li>\r\n					</ul>\r\n					</li>\r\n				</ul>\r\n				</li>\r\n			</ul>\r\n			</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', 'history', 'img/nassa_profile1_f9UD7Hs.jpg'),
(4, 'CAREERS', 'We are always looking for new talent to join our teams in the UK, Europe and Bangladesh', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img012.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CAREERS</p>\r\n\r\n<p>Today,&nbsp;NASSA Group&nbsp;operates a wholly owned apparel manufacturing business based in Dhaka, with the capacity to produce 50 million units across 34 factories every year.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We employ a staff of&nbsp;more&nbsp;than 30,000 across 1.1 million sq. ft. of production space in order to serve a distinguished client base in the US and EU markets.</p>\r\n\r\n<ul>\r\n	<li>DISPLAY:</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"http://nassa.com.bd/pages/content_detail/careers-2.html#\">All locations</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>&nbsp;</h3>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Job opening for Executive Assistant</strong></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Job Description / Responsibility</strong></p>\r\n	Provide secretarial support to Director of Finance Liaise and follow-up with relevant parties to deal with all business issues for the Director of Finance Prepare correspondence and presentation materials for the Director of Finance Compile various management and financial reports for the Nigerian Headquarter Schedule appointments and setting up meetings Prepare travel arrangements, plan agenda for events and trips To maintain realistic and manageable diaries. To ensure all aspects of meetings/conferences are organised, agendas developed and prompt action taken maintaining timely responses to deadlines at all times. Handling foreign delegates Managing a Calendar by coordinating with all 4 offices in Nigeria, London, Hong Kong and Bangladesh preparing letters, presentations and reports Any other duties as directed\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Job Nature</strong></p>\r\n	Full-time\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Educational Requirements</strong></p>\r\n	University graduate or from a military background English medium\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Experience Requirements</strong></p>\r\n\r\n	<p>1 year experience minimum</p>\r\n\r\n	<p>The applicants should have experience in the following area(s):</p>\r\n\r\n	<p>Executive Assistant, Personal Secretary</p>\r\n\r\n	<p><strong>Additional Job Requirements</strong></p>\r\n	Well-organized, strong interpersonal and communication skills Good command in English Proficiency in MS Office applications\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Salary Range</strong></p>\r\n	Competitive\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Job Location&nbsp;</strong></p>\r\n	Dhaka\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>To apply via email&nbsp;<a href=\"mailto:career@nassagroup.org\">career@nassagroup.org</a></p>\r\n\r\n	<p>The subject should be &ldquo;<strong>Executive Assistant</strong>&rdquo;</p>\r\n	<strong>If the subject is not mentioned, the application will be void</strong></li>\r\n</ul>', 'career', 'img/nassa_profile1_5U42pPF_clz4nnn.jpg'),
(5, 'READY MADE GARMENTS', 'Flexible, Cost-effective RMG services for brands worldwide', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0110.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA PROVIDES RMG SERVICES FOR CLIENTS WORLDWIDE WITH THE CAPACITY TO PRODUCE 4.2 MILLION UNITS EVERY MONTH VIA 34 WHOLLY OWNED FACTORIES IN BANGLADESH</p>\r\n\r\n<p>Since opening its doors in 1990, NASSA Group has rapidly expanded to become one of the largest international apparel and textile manufacturing&nbsp;conglomerates serving fashion, private and brand labels in the US, Canada, Mexico and the EU.</p>\r\n\r\n<p>A leading own equipment manufacturer headquartered in Bangladesh, NASSA Group is renowned amongst clients across the world for our state of the art equipment, optimally efficient supply chains, 100% ethical trading&nbsp;policies, environmental compliance and strong commitment to sustainability.</p>\r\n\r\n<p>It is against these benchmarks that clients know they can trust us to deliver without fail and to their own stringent quality standards and lead times. These clients include Sears and Kmart, Zara, Berksha, Cheap Monday, C&amp;A and Marks &amp; Spencer to name just a few.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our wholly owned infrastructure places us uniquely to achieve the most cost-effective, competitive and quality assured services and products for brands who demand nothing less.</p>\r\n\r\n<p>Our clients enjoy NASSA Group&rsquo;s end-to-end manufacturing services that cover every aspect of garment production from textile production to manufacture, washing, finishing, quality control, clearance and shipping. This wholly owned infrastructure equips us to deliver new products to market via a fast, competitive and seamless supply chain that others who outsource cannot offer.</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/nassa_5D_mkII_016.png\" /></p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img031.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.1 MILLION UNITS PER MONTH</p>\r\n\r\n<ul>\r\n	<li>Quilted shirts</li>\r\n	<li>Basic shirts</li>\r\n	<li>Blouses</li>\r\n	<li>Jumpers</li>\r\n	<li>Rompers</li>\r\n	<li>Jackets</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img041.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2.2 MILLION UNITS PER MONTH</p>\r\n\r\n<ul>\r\n	<li>Basic pants</li>\r\n	<li>Shorts</li>\r\n	<li>Caprices</li>\r\n	<li>Overalls</li>\r\n	<li>Pyjama sets</li>\r\n	<li>Other products</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img052.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3.1 MILLION UNITS PER MONTH</p>\r\n\r\n<ul>\r\n	<li>Quilted jackets</li>\r\n	<li>Parkas</li>\r\n	<li>Snow wear</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/new-spinning.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img06.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>OUR PRODUCT RANGE SPANS ACROSS</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Menswear</h3>\r\n	&nbsp;\r\n\r\n	<p>40%</p>\r\n	</li>\r\n	<li>\r\n	<h3>Womenswear</h3>\r\n	&nbsp;\r\n\r\n	<p>30%</p>\r\n	</li>\r\n	<li>\r\n	<h3>Childrenswear</h3>\r\n	&nbsp;\r\n\r\n	<p>30%</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Our ready-made garment production capacity delivers more than 6.4 million units to market every month.</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0110.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GARMENT TRIMS</p>\r\n\r\n<p>Our state-of-the-art cutting, engraving and finishing technology achieves the robust yet aesthetic finish the modern fashion market demands from its clothing accessories. This is complemented by our wholly owned and vertically integrated manufacturing structure &ndash; geared up to achieve the ideal accessory solution for the client&rsquo;s exacting budget, brief and critical time scale.</p>\r\n\r\n<p>Our clients benefit from the streamlined service we can provide; aligning accessories manufacturing with garment production to ensure the ideal finish and meticulous quality control within a wholly accountable supply structure.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img019.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ACCESSORIES</p>\r\n\r\n<p>NASSA is fully equipped to produce a wide range of accessories including buttons, threads, zips, tags and poppers designed to fit the buyer&rsquo;s exact specification and cost-efficiency parameters.</p>', 'ready-made', 'img/nassa_readymade_amejJUv_WLc8GS7.jpg'),
(6, 'PRODUCT DEVELOPMENT', 'Product development at the sharp end of fashion', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0110.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DESIGN AND PRODUCT DEVELOPMENT AT THE CUTTING EDGE OF FASHION, SUPPORTED BY A WHOLLY INTEGRATED MANUFACTURING AND SUPPLY STRUCTURE</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img022.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bangladesh</p>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/CLOSE-UP-JEANS-textile-tab.png\" /></p>\r\n\r\n<p>Our clients then enjoy NASSA Group&rsquo;s end-to-end manufacturing services that cover every aspect of garment production from textile production to manufacture, washing, finishing, quality control, clearance and shipping. This wholly owned infrastructure equips us to deliver new products to market via a fast, competitive and seamless supply chain that others who outsource cannot offer.</p>', 'product-development', 'img/nassa_readymade_ozJiTCn.jpg'),
(7, 'TEXTILES', 'Textile manufactuing services for the global apparel market', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img031.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA-TAIPEI TEXTILES LIMITED</p>\r\n\r\n<p>NASSA operates via its own 28 acre textile manufacturing complex located in Kanchpur, Dhaka. With the capacity to produce 60 tonnes per day (set to double in the next three years) our textile operation is one of the largest in Bangladesh, equipping us to deliver an end-to-end textile manufacturing service for clients worldwide.</p>\r\n\r\n<p>The plant outputs a range of polar fleece, knitted, dyed and printed fabrics, produced via computer controlled Swiss, German, French machines that deliver the cutting edge technology and uncompromising standards demanded by the US and European markets.</p>\r\n\r\n<p>NASSA Denims Ltd specialises in the production of the finest quality indigo denims for its clients</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img031.png\" /></p>\r\n\r\n<p>TEXTILE RANGE</p>\r\n\r\n<ul>\r\n	<li>Indigo denims</li>\r\n	<li>Polar fleece</li>\r\n	<li>Micro fleece</li>\r\n	<li>Single jersey: Solid, Stripe, 1&times;1 rib, Lycra, Plain and drop needle interlock,&nbsp;Pique, Lacost, Mini Jacquard, Waffle, Flat knit collar and cuff</li>\r\n</ul>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img031.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA-TAIPEI DENIM LIMITED</p>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/textiles-tab-roles-of-jeans.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&ldquo;cutting edge production for worldwide denim supply&rdquo;</em></p>\r\n\r\n<p>NASSA-Taipei Denims Ltd specialises in the production of the finest quality indigo denims for clients including Marks and Spencer.</p>\r\n\r\n<p>The mill is equipped with an ETP system, as well as the newest manufacturing technologies from Belgium, Germany, Switzerland and Taiwan.</p>\r\n\r\n<p>Via these technologies and a fully trained workforce the division delivers a production capacity of 1.8 million yards per month.</p>\r\n\r\n<p>The overarching aim of NASSA-Taipei Denims Ltd is to produce the finest quality indigo and variant denims to meet the discerning demands of our worldwide customer base.</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img031.png\" /></p>\r\n\r\n<p>PRODUCTS</p>\r\n\r\n<p>Raw finished denim sold to brands including Marks &amp; Spencer</p>\r\n\r\n<ul>\r\n	<li>Jeans</li>\r\n	<li>Shorts</li>\r\n	<li>Jackets</li>\r\n	<li>Shirts</li>\r\n	<li>Overalls</li>\r\n	<li>Dungarees</li>\r\n</ul>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img031.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WASHING &amp; SANDBLASTING</p>\r\n\r\n<p>NASSA owns 5 in-house washing plants located in Tejagon, Ashulia and Joar Sahara and spanning approximately 100,000 sq. ft.</p>\r\n\r\n<p>The combined capacity of these facilities is 350,000 dz per month, enhancing the overall production capacity of NASSA Group and making for a strong holistic supply chain for customers.</p>\r\n\r\n<p>The washing and sandblasting sites incorporate Effluent Treatment Plants to ensure the responsible treatment and disposal of pollution and waste.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/nassa-wash.png\" /></p>', 'textiles', 'img/nassa_readymade_lqi3yZM.jpg'),
(8, 'SPINNING', 'Specialist spinning from wholly owned mills', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img042.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA GROUP BANGLADESH IS EQUIPPED TO SPIN 1.8 MILLION METRES OF YARN, PROVIDING COTTON SPINNING AND SLUB YARNS TO LEADING FASHION BRANDS ON A GLOBAL SCALE.</p>\r\n\r\n<p><a href=\"http://nassa.com.bd/162.13.94.95/wp-content/uploads/2013/05/567.png\"><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/567.png\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA Spinning Ltd deploys state of the art equipment and benefits NASSA customers with an installed production capacity of 1.8 million metres or 1,200 tonnes every month. The group has invested in the latest spinning technology, including the Jinsheng Saurer JFA &rsquo; 225A Card Machine as well as the Trutzschler &amp; Crostol for blow room lines.</p>\r\n\r\n<p>Our workforce is hence equipped to produce and export quality 100% cotton open end and slub yarns on a global scale.</p>\r\n\r\n<p>NASSA Spinning Ltd operates to the highest ethical, environmental and quality control standards to protect the integrity of our clients&rsquo; brand reputations.</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img031.png\" /></p>\r\n\r\n<p>PRODUCTS</p>\r\n\r\n<ul>\r\n	<li>basic, premium and high quality cotton and slub yarns</li>\r\n	<li>high quality oe</li>\r\n	<li>ring oe</li>\r\n	<li>ring slub</li>\r\n	<li>rain slub</li>\r\n	<li>crossfire</li>\r\n	<li>lycra in cotton denim fabric</li>\r\n</ul>', 'spinning', 'img/nassa_readymade_lz5tUoE.jpg'),
(9, 'QUALITY CONTROL', 'Uncompromising quality control in apparel manufacture', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img061.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA&#39;S GARMENT MANUFACTURING OPERATIONS ARE GOVERNED BY STRINGENT QUALITY CONTROL PROCEDURES DELIVERED BY A TEAM OF 250 FULLY TRAINED IN-HOUSE STAFF</p>\r\n\r\n<p>NASSA delivers stringent quality assurance procedures across its production lines from the mill to the point of shipment and employ a team of 250 fully trained staff whose sole responsibility is to ensure the rigorous quality checks and measures that set the global standards our clients rely on.</p>\r\n\r\n<p>This team is governed by our Director of Quality Control, who takes personal responsibility for the meticulous delivery of quality assessment from spinning to completion.</p>\r\n\r\n<p>Our clients then enjoy NASSA Group&rsquo;s end-to-end manufacturing services that cover every aspect of garment production from textile production to manufacture, washing, finishing, quality control, clearance and shipping. This wholly owned infrastructure equips us to deliver new products to market via a fast, competitive and seamless supply chain that others who outsource cannot offer.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://nassa.com.bd/162.13.94.95/wp-content/uploads/2013/05/img072.jpg\"><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img072.jpg\" /></a></p>', 'quality', 'img/nassa_readymade_ZGuo6HC.jpg'),
(10, 'LOGISTICS', 'Finishing and shipping services with uncompromising standards', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0118.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA PROVIDES FULL FINISHING AND SHIPPING SERVICES INCLUDING LABELLING, PACKAGING AND IN-HOUSE TRANSPORT AND CLEARANCE SERVICES FOR GLOBAL APPAREL BRANDS AND FASHION LABELS</p>\r\n\r\n<h3>Native Packaging Limited &ldquo;Intelligent packaging solutions for fashion brand&rdquo;</h3>\r\n\r\n<p>NASSA Group is a market leader in wholly owned garment and textile manufacturing services for global clients, supplied from the heart of Bangladesh. Its in-house packaging operation, Native Packaging Ltd, is a competitive, cost effective and high quality wholesale packaging manufacturer with the capacity to produce 6,000 metric tons of corrugated cartons every year.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA also produce high quality polythene and other packaging materials ready for finished garment shipment. This is just part of the comprehensive solution we can supply for brands seeking superior, responsive yet cost-effective services into the global fashion industry.</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img024.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SHIPMENT</p>\r\n\r\n<h3>&ldquo;End-to-end supply and shipment solutions for your apparel brand&rdquo;</h3>\r\n\r\n<p>NASSA Group offers expedited shipping of garments and textiles via our in-house transport, clearance and delivery divisions in Bangladesh. The group understands the nature of clients&rsquo; critical delivery paths and has the infrastructure in place to ensure streamlined and expedited shipping from our mills and factories to your shop floor.</p>\r\n\r\n<p>Nassa&rsquo;s own in-house vehicle and transport divisions work in close cooperation with our dedicated clearing and forwarding agencies in Dhaka, Chittagong and Benapole. Together, these divisions ensure the smooth shipment of all consignments from within NASSA&rsquo;s</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>production mills through the manufacture process and to Bangladesh&rsquo;s ports for overseas export.</p>\r\n\r\n<p>The skilled assigned teams work tirelessly to anticipate, address and eliminate any barriers to the safe, timely delivery of goods that our clients naturally expect.</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img032.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SHIPPING, CLEARING &amp; FORWARDING</p>\r\n\r\n<p>NASSA&rsquo;s in-house vehicle and transport division works in close cooperation with our dedicated clearing and forwarding agencies in Dhaka, Chittagong and Benapole. Together, these divisions ensure the smooth transit of all consignments from initial manufacture to the point of overseas export.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our skilled teams work tirelessly to anticipate, address and eliminate any barriers to the safe, timely delivery of goods to clients in the US, UK and Europe.</p>', 'logistics', 'img/nassa_readymade_amejJUv_lEfua6O.jpg'),
(11, 'BANKING', 'EXIM Bank: Responsible Banking for social growth and change', '<p>EXIM BANK OFFERS QUALITY FINANCIAL SERVICES FOR RETAIL, CORPORATE, SME AND AGRICULTURAL CLIENTS FROM LOCATIONS IN THE UK, CANADA, NEW YORK AND AUSTRALIA</p>\r\n\r\n<p>EXIM Bank was established in 1999 and has fast grown to achieve status as a pioneering financial establishment, dedicated to the socio-economic development of Bangladesh and its people.</p>\r\n\r\n<p>Our philosophy centres on the pursuit of excellence in quality financial services for the retail, corporate, SME and agricultural sectors as well as in foreign trade. This is underpinned by a corporate culture that provides a positive development platform, encouraging our people to strive, share and innovate in the furtherance of our overall aims.</p>\r\n\r\n<p>Our investment portfolio comprises diversified areas of business and industry including textiles, edible oil, ready-made garments, chemicals, cement, telecom, steel, real estate and other service industries. Our steadfast focus on the acquisition of quality assets has resulted in a well-established, structured investment portfolio with minimized risk.</p>\r\n\r\n<p>Reflecting NASSA Group&rsquo;s commitment to sustainable social development, EXIM Bank operates a stringent programme of corporate social responsibility. At least 2% of our annual profits are channelled into carefully selected, ethical and well managed programmes addressing healthcare, education, poverty and environmental development for the people of Bangladesh.</p>\r\n\r\n<p>EXIM is the first privately owned bank to open an exchange house in the UK, enhancing our capacity to deliver seamless services to Bangladeshis living and working in the UK. We have also opened exchange houses in Canada and New York with a further Australian location due to open shortly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>EXIM BANK LIMITED</p>\r\n\r\n<p><em>Together Towards Tomorrow</em></p>\r\n\r\n<p><a href=\"http://www.eximbankbd.com/home\" target=\"_blank\">Visit the Exim Bank website to find out more &gt;</a></p>\r\n\r\n<p><a href=\"http://www.eximbankbd.com/home\"><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/banking-eximbank.jpg\" /></a></p>\r\n\r\n<p><a href=\"http://www.eximbankbd.com/home\" target=\"_blank\">&nbsp;</a></p>', 'banking', 'img/nassa_banking_Dk74iRN.jpg'),
(12, 'STOCK BROKERAGE', 'ANW Associates Ltd is a fully accredited member of the Dhaka Stock Exchange', '<p>ANW ASSOCIATES LTD IS AN ACCREDITED MEMBER OF THE DHAKA STOCK EXCHANGE PROVIDING ROBUST ETHICAL TRADING OPPORTUNITIES IN GLOBAL STOCKS AND SHARES</p>\r\n\r\n<p>ANW Associates Ltd is a fully accredited member of the Dhaka Stock Exchange. The organisation exists to provide beneficial trading opportunities for clients and organisations looking to trade in stocks and shares in a sustainable and risk controlled environment.Our commitment to social responsibility in financial trading is paramount to our activities in today&rsquo;s volatile markets. We prioritise an intelligent investment portfolio managed by experts who are fully versed in the latest financial market movements, and backed up by a strong and stable reserve.</p>\r\n\r\n<p>The result is a trading option where clients can be assured of robust trading management, a responsible and meticulous approach to investment, and ultimately the growth of their financial portfolio, contributing to individual and national growth as well as the recovery of the global economy as a whole.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img054.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CONTACT</p>\r\n\r\n<p>Nassa Group</p>\r\n\r\n<p>238, Tejgaon I/A, Gulshan</p>\r\n\r\n<p>Link Road, Dhaka-1208</p>\r\n\r\n<p>Phone: 8832400-7(Office)</p>\r\n\r\n<p>Fax: 8823761</p>', 'stock-brokerage', 'img/nassa_brokerage_Jf8c7I9.jpg'),
(13, 'TRAVEL', 'The world at your fingertips: Comprehensive travel services for a global community', '<p>PLANET TRAVELS LTD OFFERS SUPERIOR TRAVEL SERVICES TO GLOBAL DESTINATIONS, PROVIDING FLIGHTS, ACCOMMODATION, TRANSPORT AND BESPOKE PACKAGE BUILDING</p>\r\n\r\n<p>Planet Travels Ltd, a division of NASSA Group, provides a full range of travel services for both business and consumer based clientele. Clients turn to us for our guaranteed quality and efficiency of service, designed to flex to any conceivable scenario and environment. From one-off ticket, accommodation and transport services to bespoke package building, we are passionate about negotiating the right travel solution to ensure our clients&rsquo; convenience, style and comfort.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our extensive networks in the travel and hospitality sectors equip us to negotiate competitive rates and deliver speed and accuracy of service with results our customers know they can trust.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/travel-image1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Branch locations<a href=\"http://nassa.com.bd/pages/content_detail/contact-2.html\">Read More</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Contact<a href=\"http://nassa.com.bd/pages/content_detail/contact-2.html\">Read More</a></p>', 'travel', 'img/nassa_travel_HqcQODW.jpg'),
(14, 'CONTACT', NULL, '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img022.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA BANGLADESH</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/bg-career.png\" /></p>\r\n\r\n<p>NASSA GROUP</p>\r\n\r\n<address>\r\n<pre>\r\n238, Tejgaon Industrial Area,\r\nGulshan Link Road \r\nDhaka-1208 \r\nBangladesh \r\nTel: 88 02 8878543-49 \r\nTel: 88 02 9830348-54\r\nEmail: nassa@nassagroup.org\r\n</pre>\r\n</address>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/bg-career.png\" /></p>\r\n\r\n<p>PLANET TRAVEL</p>\r\n\r\n<address>\r\n<pre>\r\nPlanet Travel Ltd\r\nGulshan Tower (3rd floor)\r\n31, North Gulshan C/A\r\nGulshan &ndash; 2, Dhaka 1212\r\nPhone: 00 (88) 02 9886471, 00 (88) 02 9888536\r\nFax: 00 (88) 02 9888536\r\nEmail: planetravels11@gmail.com\r\n\r\n\r\n</pre>\r\n</address>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img022.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA HONG KONG AND LONDON</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/bg-career.png\" /></p>\r\n\r\n<p>HONG KONG OFFICE</p>\r\n\r\n<address>\r\n<pre>\r\nChina Supreme Limited\r\n5B, 20th Floor\r\nExchange Tower\r\n33, Wang Chiu Road\r\nKowloon Bay\r\nHong Kong\r\nTel: +852 21760812</pre>\r\n</address>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/bg-career.png\" /></p>\r\n\r\n<p>ANW LONDON</p>\r\n\r\n<address>\r\n<pre>\r\nANW  Associates London\r\n66, Pembroke Road\r\nKensington\r\nLondon, UK.\r\nW8 6NX\r\nGeneral Enquiries\r\nTel: +44 20 76026565\r\nEmail: info@anwlondon.com\r\nSales Enquiries\r\nLaura Nicholson-Thew &ndash; Head of Sales\r\nLaura@anwlondon.com  Tel: +44 20 76026565</pre>\r\n</address>', 'contact', 'img/nassa_sustainiability_N2jKsOA.jpg'),
(15, 'SUSTAINABILTY', 'NASSA Group, Bangladesh’s leading garment manufacturer, is proud to invest in sustainability initiatives for our people, customers and environment', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img04.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SUSTAINABILITY: THE KEY TO A BRIGHT TOMORROW FOR BANGLADESH</p>\r\n\r\n<p>NASSA Group is wholly committed to our responsibility to drive the sustainability of our operations, our client base, our stakeholders and our surrounding communities and environment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our sustainability policy focuses on building capacity, resources and growth in the following core areas:</p>\r\n\r\n<h2>OUR PLAN</h2>\r\n\r\n<p><img alt=\"Our Plan\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/bg-post.png\" /></p>\r\n\r\n<ul>\r\n	<li><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img029.png\" />\r\n	<h3>PEOPLE</h3>\r\n\r\n	<p>We embrace a corporate culture that supports the professional development of more than 30,000 employees, as well as in their families and communities, via a wide range of educational and healthcare initiatives.</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img034.png\" />\r\n	<h3>INNOVATION AND TECHNOLOGY</h3>\r\n\r\n	<p>We continuously invest in the latest computer aided manufacturing technology sourced from the US and Europe. This enhances the efficiency of our supply chain and achieves the consistent quality and newness to market our clients expect.</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img044.png\" />\r\n	<h3>QUALITY</h3>\r\n\r\n	<p>Stringent standards of quality control are instilled into our own team of fully trained merchandisers, quality inspectors and client service agents.</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img04.png\" />\r\n	<h3>ENVIRONMENT</h3>\r\n\r\n	<p>We embrace a corporate culture that supports the professional development of more than 30,000 employees, as well as in their families and communities, via a wide range of educational and healthcare initiatives.</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img063.png\" />\r\n	<h3>GROWTH</h3>\r\n\r\n	<p>We continuously invest in the latest computer aided manufacturing technology sourced from the US and Europe. This enhances the efficiency of our supply chain and achieves the consistent quality and newness to market our clients expect.</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img071.png\" />\r\n	<h3>SERVICE</h3>\r\n\r\n	<p>Stringent standards of quality control are instilled into our own team of fully trained merchandisers, quality inspectors and client service agents.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img04.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ENVIRONMENTAL CONTROLS</p>\r\n\r\n<p>NASSA Group, its Board of Management, divisions, operations and employees are all committed to achieving the highest possible standards of environmentally protective procedures. Safeguarding the world around us is an inherent component of our sustainability programme. We recognise our profound responsibility to manufacture ethically and with care and attention to the preservation of the environment for future generations.</p>\r\n\r\n<p>The group has put in place a stringent 3 year plan aimed at further improving our environmental measures. This plan is focused on 4 core aims:</p>\r\n\r\n<p>2 The introduction of high efficiency production machinery, aimed at reducing water</p>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img083.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img04.png\" /></p>\r\n\r\n<p>ENVIRONMENTAL CONTROLS</p>\r\n\r\n<ol>\r\n	<li>The integration of Effluent Treatment Plants with a 1.5 cusec capacity, designed to adhere to recommended World Bank guidelines</li>\r\n	<li>The introduction of high efficiency production machinery, aimed at reducing water consumption by 50%</li>\r\n	<li>The implementation of combined heat and power generation with the goal of reducing gas consumption by 10%</li>\r\n	<li>The transition to the latest dyeing technology to further reduce waste and pollution ratios.</li>\r\n</ol>', 'sustainability', 'img/nassa_sustainiability_CKFGOWT.jpg'),
(16, 'EDUCATION', 'EXIM Agricultural University: driving sustainable development', '<p>EXIM AGRICULTURAL UNIVERSITY PROVIDES AGRICULTURAL TRAINING AND SCHOLARSHIPS FOR THE YOUNG PEOPLE OF BANGLADESH, WITH THE KIND SUPPORT OF NASSA GROUP</p>\r\n\r\n<p>NASSA Group is profoundly committed to the vital role of education in Bangladesh in achieving socio-economic, financial and commercial growth.</p>\r\n\r\n<p>We believe that by investing in education and training we lay the foundations for future generations of Bangladeshis to negotiate, determine and drive their own economic futures. 80% of the population of Bangladesh lives in rural and agricultural areas. For development to be impactful it is important to align education and training to natural trends in the economy. Therefore NASSA is proud to be funding a new agricultural university. The University will train a new generation of Bangladeshis in modern agricultural techniques that will equip them to support themselves, their families, communities and Bangladesh&rsquo;s economy as a whole.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>EXIM Bank, a division of NASSA Group, will also support students from underprivileged backgrounds with scholarships so that they can build a brighter future for themselves.</p>\r\n\r\n<p><a href=\"http://www.eximbankbd.com/about/Exim_Bank_Foundation\" target=\"_blank\" title=\"EXIM BANK HOMEPAGE\">Visit the EXIM Bank website to find out more about the full corporate social responsibility portfolio</a></p>\r\n\r\n<p><img alt=\"\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/education-image1.jpg\" /></p>', 'education', 'img/nassa_education_ap3Nyov.jpg');
INSERT INTO `nassabiz_blogmodel` (`id`, `title`, `subtitle`, `article`, `slug`, `image`) VALUES
(17, 'NASSA PROPERTIES LTD', 'Building Bangladesh’s commercial construction potential', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img025.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NASSA PROPERTIES LTD IS A LEADING COMMERCIAL CONSTRUCTION COMPANY SPECIALISING IN THE ACQUISITION AND DEVELOPMENT OF PRIME SITES IN BANGLADESH&rsquo;S DHAKA</p>\r\n\r\n<p>NASSA Properties Ltd is a market leader in the large scale property development of Bangladesh&rsquo;s capital city&rsquo;s infrastructure. Our focus on the acquisition of prime sites and commercial construction of new and exciting buildings has contributed profoundly to Dhaka&rsquo;s status as the most highly developed urban area of Bangladesh. Our leading role in Dhaka&rsquo;s commercial property development reflects NASSA Group&rsquo;s unerring commitment to the role of a thriving business economy in securing Bangladesh&rsquo;s future. We are dedicated to building our capital city&rsquo;s landscape through exciting developments that play a lead role in attracting increasing overseas investment as well as local and international trade.</p>\r\n\r\n<p>This commitment is complemented by our work to develop modern and affordable housing opportunities for citizens of Bangladesh &ndash; delivered through our sister company&nbsp;<a href=\"http://nassa.com.bd/pages/content_detail/nassa-properties-ltd-2.html#\">RANS Real Estate</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img053.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CONTACT</p>\r\n\r\n<p>Nassa Group</p>\r\n\r\n<p>238, Tejgaon I/A, Gulshan</p>\r\n\r\n<p>Link Road, Dhaka-1208</p>\r\n\r\n<p>Phone: 8832400-7(Office)</p>\r\n\r\n<p>Fax: 8823761</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h2>SCALA</h2>\r\n\r\n	<ul>\r\n		<li><a href=\"http://nassa.com.bd/localhost/nasagroup/app/webroot/js/ckfinder/userfiles/images/img061000.html\" title=\"Scala Main \"><img alt=\"Scala Main \" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img061000.jpg\" /></a></li>\r\n		<li>&nbsp;</li>\r\n		<li><a href=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0610.jpg\" title=\"Item 2\"><img alt=\"Item 2\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0610.jpg\" /></a></li>\r\n	</ul>\r\n	</li>\r\n</ul>', 'nassa-properties-ltd', 'img/nassa_realeastate_IaWIsQs.jpg'),
(18, 'RANS REAL ESTATE', 'Desires into reality: Property development for the future of Bangladesh', '<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img025.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A DRIVING FORCE IN RESIDENTIAL PROPERTY DEVELOPMENT FOR HOME OWNERS SEEKING MODERN HOUSING SOLUTIONS IN DHAKA, BANGLADESH</p>\r\n\r\n<p>In just 5 years RANS Real Estate has grown rapidly to achieve its status as a driving force in Dhaka&rsquo;s residential property development. Our vision is to transform the potential of the Bangladesh property market by creating beautiful homes that meet the changing demands of modern home owners. We specialize in the creation of luxury apartment complexes across prime locations in Dhaka City.Our 400-strong workforce is highly skilled and committed to 21st century construction standards focused on supreme quality workmanship and discerning contracting and supply methodologies.</p>\r\n\r\n<p>The result is a new generation of modern, affordable homes for Bangladesh residents seeking aesthetic luxury complemented by practical lifestyle solutions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"image description\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img023.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CONTACT</p>\r\n\r\n<p>This commitment is complemented by our work to develop modern and affordable housing opportunities for citizens of Bangladesh &ndash; delivered through our sister company RANS Real Estate.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h2>SCALA</h2>\r\n\r\n	<address>96 Kensington High Street, W8 4SG</address>\r\n\r\n	<h3>FOUR HUNDERED NEW HOMES WILL BE CREATED WITH A HIGH END OFF-STREET SHOPPING COMPLEX</h3>\r\n\r\n	<p><em>Statisitcs such as 23,000sq/ft to 35,000sq/ft available per floor. Services and unfurnished spaces available.</em></p>\r\n\r\n	<ul>\r\n		<li><a href=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img061.jpg\" title=\"\"><img alt=\"\" src=\"http://nassa.com.bd/localhost/nasagroup/app/webroot/js/ckfinder/userfiles/images/img061.html\" style=\"height:441px; width:552px\" /></a></li>\r\n		<li><a href=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0610.jpg\" title=\"\"><img alt=\"\" src=\"http://nassa.com.bd/localhost/nasagroup/app/webroot/js/ckfinder/userfiles/images/img0610.html\" style=\"height:441px; width:552px\" /></a></li>\r\n		<li><a href=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img06100.html\" title=\"test\"><img alt=\"test\" src=\"http://nassa.com.bd/app/webroot/js/ckfinder/userfiles/images/img0610.jpg\" style=\"height:441px; width:552px\" /></a></li>\r\n	</ul>\r\n	</li>\r\n</ul>', 'rans-real-estate', 'img/nassa_realeastate_VUrh7bI.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nassabiz_blogmodel`
--
ALTER TABLE `nassabiz_blogmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
