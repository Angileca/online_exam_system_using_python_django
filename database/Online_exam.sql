-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2020 at 09:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuck`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin_account`
--

CREATE TABLE `Admin_account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `user_type` tinyint(1) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin_account`
--

INSERT INTO `Admin_account` (`id`, `user_name`, `email`, `phone_number`, `user_type`, `password`) VALUES
(2, 'mukta', 'mukta@gmail.com', '01766523555', 0, 'ccc'),
(6, 'xxx', 'xxxx@gmail.com', '14152165455', 0, 'asas');

-- --------------------------------------------------------

--
-- Table structure for table `Admin_mcq_options`
--

CREATE TABLE `Admin_mcq_options` (
  `id` int(11) NOT NULL,
  `option` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin_mcq_options`
--

INSERT INTO `Admin_mcq_options` (`id`, `option`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `Admin_mcq_question`
--

CREATE TABLE `Admin_mcq_question` (
  `id` int(11) NOT NULL,
  `question` varchar(400) NOT NULL,
  `ans_a` varchar(200) NOT NULL,
  `ans_b` varchar(200) NOT NULL,
  `ans_c` varchar(200) NOT NULL,
  `ans_d` varchar(200) NOT NULL,
  `carrect_ans` varchar(2) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin_mcq_question`
--

INSERT INTO `Admin_mcq_question` (`id`, `question`, `ans_a`, `ans_b`, `ans_c`, `ans_d`, `carrect_ans`, `marks`) VALUES
(1, 'What is your country name?', 'Bangladesh', 'Indea', 'Napal', 'USA', 'A', 1),
(2, 'Waht is your name?', 'Safiul', 'Ashrafi', 'Mukta', 'Rkata', 'A', 1),
(3, 'asdasd', 'a', 'a', 'a', 'a', 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Admin_user_ans`
--

CREATE TABLE `Admin_user_ans` (
  `id` int(11) NOT NULL,
  `ans_is_carrect_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin_user_ans`
--

INSERT INTO `Admin_user_ans` (`id`, `ans_is_carrect_id`, `question_id`, `user_id`) VALUES
(1, 2, 1, 1),
(2, 4, 1, 2),
(3, 4, 1, 2);

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
(25, 'Can add account', 7, 'add_account'),
(26, 'Can change account', 7, 'change_account'),
(27, 'Can delete account', 7, 'delete_account'),
(28, 'Can view account', 7, 'view_account'),
(29, 'Can add exam_ time_ control', 8, 'add_exam_time_control'),
(30, 'Can change exam_ time_ control', 8, 'change_exam_time_control'),
(31, 'Can delete exam_ time_ control', 8, 'delete_exam_time_control'),
(32, 'Can view exam_ time_ control', 8, 'view_exam_time_control'),
(33, 'Can add mc q_ question', 9, 'add_mcq_question'),
(34, 'Can change mc q_ question', 9, 'change_mcq_question'),
(35, 'Can delete mc q_ question', 9, 'delete_mcq_question'),
(36, 'Can view mc q_ question', 9, 'view_mcq_question'),
(37, 'Can add user_ ans', 10, 'add_user_ans'),
(38, 'Can change user_ ans', 10, 'change_user_ans'),
(39, 'Can delete user_ ans', 10, 'delete_user_ans'),
(40, 'Can view user_ ans', 10, 'view_user_ans'),
(41, 'Can add mc q_ options', 11, 'add_mcq_options'),
(42, 'Can change mc q_ options', 11, 'change_mcq_options'),
(43, 'Can delete mc q_ options', 11, 'delete_mcq_options'),
(44, 'Can view mc q_ options', 11, 'view_mcq_options');

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
(1, 'pbkdf2_sha256$180000$jwVF1GVFu0rL$oaHU0tuCrGEhlhKfxEkdiVWcU4wK1O+6Zk5BPRLAawE=', '2020-03-02 01:59:23.560811', 1, 'fuck', '', '', 'fuck@gmail.com', 1, 1, '2020-03-02 01:58:48.087606');

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
(1, '2020-03-02 02:06:46.761429', '1', 'A', 1, '[{\"added\": {}}]', 11, 1),
(2, '2020-03-02 02:06:52.372515', '2', 'B', 1, '[{\"added\": {}}]', 11, 1),
(3, '2020-03-02 02:06:59.447830', '3', 'C', 1, '[{\"added\": {}}]', 11, 1),
(4, '2020-03-02 02:07:05.847638', '4', 'D', 1, '[{\"added\": {}}]', 11, 1),
(5, '2020-03-02 02:09:07.242881', '1', 'MCQ_Question object (1)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-03-02 02:09:57.499190', '1', 'Account object (1)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-03-03 04:07:30.360049', '2', 'MCQ_Question object (2)', 1, '[{\"added\": {}}]', 9, 1);

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
(7, 'Admin', 'account'),
(8, 'Admin', 'exam_time_control'),
(1, 'admin', 'logentry'),
(11, 'Admin', 'mcq_options'),
(9, 'Admin', 'mcq_question'),
(10, 'Admin', 'user_ans'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
(1, 'Admin', '0001_initial', '2020-03-02 01:55:43.119102'),
(2, 'Admin', '0002_auto_20200213_1644', '2020-03-02 01:55:43.858666'),
(3, 'Admin', '0003_auto_20200217_0321', '2020-03-02 01:55:48.742576'),
(4, 'Admin', '0004_auto_20200218_1533', '2020-03-02 01:55:51.901792'),
(5, 'Admin', '0005_auto_20200219_1025', '2020-03-02 01:55:52.824560'),
(6, 'contenttypes', '0001_initial', '2020-03-02 01:55:53.347222'),
(7, 'auth', '0001_initial', '2020-03-02 01:55:54.752447'),
(8, 'admin', '0001_initial', '2020-03-02 01:56:03.216065'),
(9, 'admin', '0002_logentry_remove_auto_add', '2020-03-02 01:56:05.872401'),
(10, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-02 01:56:05.928849'),
(11, 'contenttypes', '0002_remove_content_type_name', '2020-03-02 01:56:06.891969'),
(12, 'auth', '0002_alter_permission_name_max_length', '2020-03-02 01:56:08.435428'),
(13, 'auth', '0003_alter_user_email_max_length', '2020-03-02 01:56:08.635784'),
(14, 'auth', '0004_alter_user_username_opts', '2020-03-02 01:56:08.701326'),
(15, 'auth', '0005_alter_user_last_login_null', '2020-03-02 01:56:09.451563'),
(16, 'auth', '0006_require_contenttypes_0002', '2020-03-02 01:56:09.484506'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2020-03-02 01:56:09.539195'),
(18, 'auth', '0008_alter_user_username_max_length', '2020-03-02 01:56:09.741213'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2020-03-02 01:56:09.940901'),
(20, 'auth', '0010_alter_group_name_max_length', '2020-03-02 01:56:10.052212'),
(21, 'auth', '0011_update_proxy_permissions', '2020-03-02 01:56:10.093064'),
(22, 'sessions', '0001_initial', '2020-03-02 01:56:10.327741'),
(23, 'Admin', '0006_auto_20200302_0203', '2020-03-02 02:04:04.824852');

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
('kcs3bkfs4mc8lhgb5ef8eb2v3u8fsbwd', 'Yzg2OWU3ZjU0NDU4ZWU5ZTNhNjE5YWNhYTFjYTJmYWQyMzNkZDIxOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MzJhZTRiMTA4ZWIzNzViMWM4YWY4MDdmMDExMWZjMmJlYzk5OGQxIn0=', '2020-03-16 01:59:23.605698');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin_account`
--
ALTER TABLE `Admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Admin_mcq_options`
--
ALTER TABLE `Admin_mcq_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Admin_mcq_question`
--
ALTER TABLE `Admin_mcq_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Admin_user_ans`
--
ALTER TABLE `Admin_user_ans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_user_ans_ans_is_carrect_id_ea317988` (`ans_is_carrect_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin_account`
--
ALTER TABLE `Admin_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Admin_mcq_options`
--
ALTER TABLE `Admin_mcq_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Admin_mcq_question`
--
ALTER TABLE `Admin_mcq_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Admin_user_ans`
--
ALTER TABLE `Admin_user_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Admin_user_ans`
--
ALTER TABLE `Admin_user_ans`
  ADD CONSTRAINT `Admin_user_ans_ans_is_carrect_id_ea317988_fk_Admin_mcq` FOREIGN KEY (`ans_is_carrect_id`) REFERENCES `Admin_mcq_options` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
