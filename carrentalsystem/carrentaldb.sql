-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2018 at 11:32 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add customer', 1, 'add_customer'),
(2, 'Can change customer', 1, 'change_customer'),
(3, 'Can delete customer', 1, 'delete_customer'),
(4, 'Can add employee', 2, 'add_employee'),
(5, 'Can change employee', 2, 'change_employee'),
(6, 'Can delete employee', 2, 'delete_employee'),
(7, 'Can add in', 3, 'add_in'),
(8, 'Can change in', 3, 'change_in'),
(9, 'Can delete in', 3, 'delete_in'),
(10, 'Can add inspects', 4, 'add_inspects'),
(11, 'Can change inspects', 4, 'change_inspects'),
(12, 'Can delete inspects', 4, 'delete_inspects'),
(13, 'Can add invoice', 5, 'add_invoice'),
(14, 'Can change invoice', 5, 'change_invoice'),
(15, 'Can delete invoice', 5, 'delete_invoice'),
(16, 'Can add order', 6, 'add_order'),
(17, 'Can change order', 6, 'change_order'),
(18, 'Can delete order', 6, 'delete_order'),
(19, 'Can add order for', 7, 'add_orderfor'),
(20, 'Can change order for', 7, 'change_orderfor'),
(21, 'Can delete order for', 7, 'delete_orderfor'),
(22, 'Can add rents', 8, 'add_rents'),
(23, 'Can change rents', 8, 'change_rents'),
(24, 'Can delete rents', 8, 'delete_rents'),
(25, 'Can add store', 9, 'add_store'),
(26, 'Can change store', 9, 'change_store'),
(27, 'Can delete store', 9, 'delete_store'),
(28, 'Can add vehicle', 10, 'add_vehicle'),
(29, 'Can change vehicle', 10, 'change_vehicle'),
(30, 'Can delete vehicle', 10, 'delete_vehicle'),
(31, 'Can add log entry', 11, 'add_logentry'),
(32, 'Can change log entry', 11, 'change_logentry'),
(33, 'Can delete log entry', 11, 'delete_logentry'),
(34, 'Can add permission', 12, 'add_permission'),
(35, 'Can change permission', 12, 'change_permission'),
(36, 'Can delete permission', 12, 'delete_permission'),
(37, 'Can add group', 13, 'add_group'),
(38, 'Can change group', 13, 'change_group'),
(39, 'Can delete group', 13, 'delete_group'),
(40, 'Can add user', 14, 'add_user'),
(41, 'Can change user', 14, 'change_user'),
(42, 'Can delete user', 14, 'delete_user'),
(43, 'Can add content type', 15, 'add_contenttype'),
(44, 'Can change content type', 15, 'change_contenttype'),
(45, 'Can delete content type', 15, 'delete_contenttype'),
(46, 'Can add session', 16, 'add_session'),
(47, 'Can change session', 16, 'change_session'),
(48, 'Can delete session', 16, 'delete_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_customer`
--

DROP TABLE IF EXISTS `crcapp_customer`;
CREATE TABLE IF NOT EXISTS `crcapp_customer` (
  `customerID` varchar(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `streetAddress` varchar(50) NOT NULL,
  `cityAddress` varchar(16) NOT NULL,
  `postCodeAddress` int(11) NOT NULL,
  `stateAddress` varchar(3) NOT NULL,
  `DOB` date NOT NULL,
  `driverLicenceNumber` int(11) NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dateJoined` date NOT NULL,
  `lastLogin` date NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_employee`
--

DROP TABLE IF EXISTS `crcapp_employee`;
CREATE TABLE IF NOT EXISTS `crcapp_employee` (
  `employeeID` varchar(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `streetAddress` varchar(50) NOT NULL,
  `cityAddress` varchar(16) NOT NULL,
  `postCodeAddress` int(11) NOT NULL,
  `stateAddress` varchar(3) NOT NULL,
  `DOB` date NOT NULL,
  `TFN` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dateJoined` date NOT NULL,
  `lastLogin` date NOT NULL,
  `storeID_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `crcapp_employee_storeID_id_df63687d` (`storeID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_in`
--

DROP TABLE IF EXISTS `crcapp_in`;
CREATE TABLE IF NOT EXISTS `crcapp_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeID_id` varchar(10) DEFAULT NULL,
  `vehicleID_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crcapp_in_storeID_id_de5e59af` (`storeID_id`),
  KEY `crcapp_in_vehicleID_id_b1286205` (`vehicleID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_inspects`
--

DROP TABLE IF EXISTS `crcapp_inspects`;
CREATE TABLE IF NOT EXISTS `crcapp_inspects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeID_id` varchar(10) DEFAULT NULL,
  `vehicleID_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crcapp_inspects_employeeID_id_9c71115a` (`employeeID_id`),
  KEY `crcapp_inspects_vehicleID_id_fa8eca30` (`vehicleID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_invoice`
--

DROP TABLE IF EXISTS `crcapp_invoice`;
CREATE TABLE IF NOT EXISTS `crcapp_invoice` (
  `invoiceID` varchar(10) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `paymentType` varchar(20) NOT NULL,
  `orderID_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`invoiceID`),
  KEY `crcapp_invoice_orderID_id_8fbd017e` (`orderID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_order`
--

DROP TABLE IF EXISTS `crcapp_order`;
CREATE TABLE IF NOT EXISTS `crcapp_order` (
  `orderID` varchar(12) NOT NULL,
  `orderDate` date NOT NULL,
  `pickupDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `customerID_id` varchar(10) DEFAULT NULL,
  `employeeID_id` varchar(10) DEFAULT NULL,
  `pickupStoreID_id` varchar(10) DEFAULT NULL,
  `returnStoreID_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `crcapp_order_customerID_id_fb5b78f3` (`customerID_id`),
  KEY `crcapp_order_employeeID_id_e766cf67` (`employeeID_id`),
  KEY `crcapp_order_pickupStoreID_id_22093484` (`pickupStoreID_id`),
  KEY `crcapp_order_returnStoreID_id_6786777b` (`returnStoreID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_orderfor`
--

DROP TABLE IF EXISTS `crcapp_orderfor`;
CREATE TABLE IF NOT EXISTS `crcapp_orderfor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carID_id` varchar(10) DEFAULT NULL,
  `orderID_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crcapp_orderfor_carID_id_41913d71` (`carID_id`),
  KEY `crcapp_orderfor_orderID_id_f61a599b` (`orderID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_rents`
--

DROP TABLE IF EXISTS `crcapp_rents`;
CREATE TABLE IF NOT EXISTS `crcapp_rents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerID_id` varchar(10) DEFAULT NULL,
  `vehicleID_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crcapp_rents_customerID_id_0e295358` (`customerID_id`),
  KEY `crcapp_rents_vehicleID_id_bfd4c47d` (`vehicleID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_store`
--

DROP TABLE IF EXISTS `crcapp_store`;
CREATE TABLE IF NOT EXISTS `crcapp_store` (
  `storeID` varchar(10) NOT NULL,
  `storeName` varchar(50) NOT NULL,
  `storePhone` bigint(20) NOT NULL,
  `street` varchar(70) NOT NULL,
  `city` varchar(16) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`storeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_vehicle`
--

DROP TABLE IF EXISTS `crcapp_vehicle`;
CREATE TABLE IF NOT EXISTS `crcapp_vehicle` (
  `vehicleID` varchar(10) NOT NULL,
  `makeName` varchar(16) NOT NULL,
  `model` varchar(16) NOT NULL,
  `series` varchar(16) NOT NULL,
  `year` int(11) NOT NULL,
  `newPrice` decimal(8,2) NOT NULL,
  `enginesize` decimal(2,1) NOT NULL,
  `fuelSystem` varchar(16) NOT NULL,
  `tankcapacity` decimal(3,1) NOT NULL,
  `power` int(11) NOT NULL,
  `seatingCapacity` int(11) NOT NULL,
  `standardTransmission` varchar(6) NOT NULL,
  `bodyType` varchar(16) NOT NULL,
  `driveType` varchar(3) NOT NULL,
  `wheelbase` int(11) NOT NULL,
  PRIMARY KEY (`vehicleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'crcapp', 'customer'),
(2, 'crcapp', 'employee'),
(3, 'crcapp', 'in'),
(4, 'crcapp', 'inspects'),
(5, 'crcapp', 'invoice'),
(6, 'crcapp', 'order'),
(7, 'crcapp', 'orderfor'),
(8, 'crcapp', 'rents'),
(9, 'crcapp', 'store'),
(10, 'crcapp', 'vehicle'),
(11, 'admin', 'logentry'),
(12, 'auth', 'permission'),
(13, 'auth', 'group'),
(14, 'auth', 'user'),
(15, 'contenttypes', 'contenttype'),
(16, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-09-03 11:31:33.476384'),
(2, 'auth', '0001_initial', '2018-09-03 11:31:36.517261'),
(3, 'admin', '0001_initial', '2018-09-03 11:31:37.019700'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-09-03 11:31:37.061128'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-09-03 11:31:37.282139'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-09-03 11:31:37.385576'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-09-03 11:31:37.511580'),
(8, 'auth', '0004_alter_user_username_opts', '2018-09-03 11:31:37.554029'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-09-03 11:31:37.737360'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-09-03 11:31:37.753049'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-09-03 11:31:37.796614'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-09-03 11:31:37.933775'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-09-03 11:31:38.064993'),
(14, 'crcapp', '0001_initial', '2018-09-03 11:31:43.169715'),
(15, 'sessions', '0001_initial', '2018-09-03 11:31:43.393014');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
