-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2018 at 12:42 PM
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
  `occupation` varchar(50) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(254) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userType` varchar(16) NOT NULL,
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
  `userType` varchar(16) NOT NULL,
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
  `orderType` varchar(16) NOT NULL,
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
  `state` varchar(50) NOT NULL,
  PRIMARY KEY (`storeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crcapp_store`
--

INSERT INTO `crcapp_store` (`storeID`, `storeName`, `storePhone`, `street`, `city`, `state`) VALUES
('S00001', 'Springwood_store', 2085350142, '244 Willow Pass Road', 'Springwood      ', 'New South Wales'),
('S00002', 'Matraville_store', 1115435350126, '942 Brook Street', 'Matraville      ', 'New South Wales'),
('S00003', 'Lane Cove_store', 1115435350131, '7553 Harness Circle', 'Lane Cove       ', 'New South Wales'),
('S00004', 'Hervey Bay_store', 7465350186, '8734 Oxford Place', 'Hervey Bay      ', 'Queensland'),
('S00005', 'Rhodes_store', 8175350185, '7902 Hudson Ave.', 'Rhodes          ', 'New South Wales'),
('S00006', 'Findon_store', 1115435350116, '9111 Rose Ann Ave', 'Findon          ', 'South Australia'),
('S00007', 'Sydney_store', 1115435350195, '7330 Saddlehill Lane', 'Sydney          ', 'New South Wales'),
('S00008', 'Port Macquarie_store', 7175350164, '4785 Scott Street', 'Port Macquarie  ', 'New South Wales'),
('S00009', 'Silverwater_store', 4315350156, '9011 Tank Drive', 'Silverwater     ', 'New South Wales'),
('S00010', 'Melbourne_store', 1115435350136, '5167 Condor Place', 'Melbourne       ', 'Victoria'),
('S00011', 'Alexandria_stroe', 1115435350162, '3761 N. 14th St', 'Alexandria      ', 'New South Wales'),
('S00012', 'Sunbury_store', 1115435350114, '8357 Sandy Cove Lane', 'Sunbury         ', 'Victoria'),
('S00013', 'Wollongong_store', 1115435350137, '244 Rivewview', 'Wollongong      ', 'New South Wales'),
('S00014', 'Caloundra_store', 5505350163, '7156 Rose Dr.', 'Caloundra       ', 'Queensland'),
('S00015', 'Darlinghurst_store', 1115435350184, '5844 Linden Land', 'Darlinghurst    ', 'New South Wales'),
('S00016', 'East Brisbane_store', 6225350158, '8148 W. Lake Dr.', 'East Brisbane   ', 'Queensland'),
('S00017', 'Milsons Point_store', 1115435350164, '624 Peabody Road', 'Milsons Point   ', 'New South Wales'),
('S00018', 'Newcastle_store', 1115435350110, '3839 Northgate Road', 'Newcastle       ', 'New South Wales'),
('S00019', 'Hawthorne_store', 4525350188, '4499 Valley Crest', 'Hawthorne       ', 'Queensland'),
('S00020', 'Gold Coast_store', 5895350185, '1769 Nicholas Drive', 'Gold Coast      ', 'Queensland'),
('S00021', 'Seaford_store', 1155350183, '3981 Augustine Drive', 'Seaford         ', 'Victoria'),
('S00022', 'Perth_store', 1115435350146, '6385 Mark Twain', 'Perth           ', 'South Australia'),
('S00023', 'North Ryde_store', 1115435350169, '7800 Corrinne Court', 'North Ryde      ', 'New South Wales'),
('S00024', 'St. Leonards_store', 1355350171, '9666 Northridge Ct.', 'St. Leonards    ', 'New South Wales'),
('S00025', 'Rockhampton_store', 1115435350178, '2596 Franklin Canyon Road', 'Rockhampton     ', 'Queensland'),
('S00026', 'Townsville_store', 1115435350131, '8211 Leeds Ct.', 'Townsville      ', 'Queensland'),
('S00027', 'Hobart_store', 1115435350182, '636 Vine Hill Way', 'Hobart          ', 'Tasmania'),
('S00028', 'Cloverdale_store', 1115435350184, '213 Valencia Place', 'Cloverdale      ', 'South Australia'),
('S00029', 'North Sydney_store', 1115435350117, '1224 Shoenic', 'North Sydney    ', 'New South Wales'),
('S00030', 'Goulburn_store', 1115435350162, '1825 Village Pl.', 'Goulburn        ', 'New South Wales'),
('S00031', 'Brisbane_store', 2625350112, '7832 Landing Dr', 'Brisbane        ', 'Queensland'),
('S00032', 'Lavender Bay_store', 1115435350151, '7305 Humphrey Drive', 'Lavender Bay    ', 'New South Wales'),
('S00033', 'Malabar_store', 1115435350184, '2612 Berry Dr', 'Malabar         ', 'New South Wales'),
('S00034', 'Warrnambool_store', 1115435350183, '9353 Creekside Dr.', 'Warrnambool     ', 'Victoria'),
('S00035', 'Geelong_store', 1115435350137, '5927 Rainbow Dr', 'Geelong         ', 'Victoria'),
('S00036', 'Melton_store', 1115435350177, '1873 Mt. Whitney Dr', 'Melton          ', 'Victoria'),
('S00037', 'South Melbourne_store', 2295350112, '8915 Woodside Way', 'South Melbourne ', 'Victoria'),
('S00038', 'Cranbourne_store', 1115435350169, '626 Bentley Street', 'Cranbourne      ', 'Victoria'),
('S00039', 'Bendigo_store', 1115435350195, '6465 Detroit Ave.', 'Bendigo         ', 'Victoria'),
('S00040', 'Coffs Harbour_store', 1115435350110, '2243 W St.', 'Coffs Harbour   ', 'New South Wales'),
('S00041', 'Alexandria_store', 1115435350162, '3761 N. 14th St', 'Alexandria', 'New South Wales');

-- --------------------------------------------------------

--
-- Table structure for table `crcapp_vehicle`
--

DROP TABLE IF EXISTS `crcapp_vehicle`;
CREATE TABLE IF NOT EXISTS `crcapp_vehicle` (
  `vehicleID` varchar(10) NOT NULL,
  `makeName` varchar(30) NOT NULL,
  `model` varchar(50) NOT NULL,
  `series` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `newPrice` decimal(8,2) NOT NULL,
  `enginesize` decimal(2,1) NOT NULL,
  `fuelSystem` varchar(30) NOT NULL,
  `tankcapacity` decimal(10,1) NOT NULL,
  `power` int(11) NOT NULL,
  `seatingCapacity` int(11) NOT NULL,
  `standardTransmission` varchar(30) NOT NULL,
  `bodyType` varchar(30) NOT NULL,
  `driveType` varchar(5) NOT NULL,
  `wheelbase` int(11) NOT NULL,
  PRIMARY KEY (`vehicleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crcapp_vehicle`
--

INSERT INTO `crcapp_vehicle` (`vehicleID`, `makeName`, `model`, `series`, `year`, `newPrice`, `enginesize`, `fuelSystem`, `tankcapacity`, `power`, `seatingCapacity`, `standardTransmission`, `bodyType`, `driveType`, `wheelbase`) VALUES
('V14806', 'LAND ROVER', 'DISCOVERY 3', 'HSE', 2006, '83650.00', '2.7', 'DIESEL TURBO F/INJ', '82.0', 140, 7, '6A', '4D WAGON', '4WD', 2885),
('V14816', 'LAND ROVER', 'DISCOVERY', 'SERIES II S 4x4', 2003, '55450.00', '4.0', 'MULTI POINT F/INJ', '93.0', 136, 7, '4A', '4D WAGON', '4WD', 2540),
('V14810', 'LAND ROVER', 'DISCOVERY', 'Tdi 4x4', 1996, '51800.00', '2.5', 'DIESEL TURBO', '88.5', 83, 5, '4A4x4', '4D WAGON', '4WD', 2540),
('V14812', 'LAND ROVER', 'DISCOVERY', 'ES V8 4x4', 1999, '66000.00', '4.0', 'MULTI POINT F/INJ', '95.0', 132, 7, '4A', '4D WAGON', '4WD', 2540),
('V14814', 'LAND ROVER', 'DISCOVERY', 'SERIES II SE 4x4', 2004, '71450.00', '4.0', 'MULTI POINT F/INJ', '93.0', 136, 7, '4A', '4D WAGON', '4WD', 2540),
('V14818', 'LAND ROVER', 'DISCOVERY', 'S 4x4', 1998, '39990.00', '2.5', 'DIESEL TURBO', '88.5', 83, 5, '5M4x4', '4D WAGON', '4WD', 2540),
('V14811', 'LAND ROVER', 'FREELANDER', 'XEi 4x4', 2000, '34886.00', '1.8', 'MULTI POINT F/INJ', '59.0', 84, 5, '5M4x4', '3D HARDBACK', '4WD', 2535),
('V14813', 'LAND ROVER', 'DISCOVERY', 'Tdi 4x4', 1994, '50430.00', '2.5', 'DIESEL TURBO', '88.5', 83, 5, '4A4x4', '4D WAGON', '4WD', 2540),
('V14815', 'LAND ROVER', '(4x4)', 'SWB', 1978, '9045.00', '2.3', 'DIESEL', '45.0', 46, 8, '4M4x4', '2D HARDTOP', '4WD', 2230),
('V14817', 'LAND ROVER', 'DISCOVERY', 'SERIES II', 2003, '51950.00', '2.5', 'DIESEL TURBO F/INJ', '93.0', 101, 5, '5M', '4D WAGON', '4WD', 2540),
('V14819', 'LAND ROVER', '(4x4)', 'LWB', 1972, '5203.00', '2.3', 'DIESEL', '73.0', 46, 12, '4M4x4', '2D HARDTOP', '4WD', 2768),
('V14835', 'BMW', '7', '35i EXECUTIVE', 1987, '136500.00', '3.4', 'ELECTRONIC F/INJ', '90.0', 155, 5, '4A', '4D SEDAN', 'RWD', 2833),
('V14842', 'BMW', '3', 'E90 20i EXECUTIVE', 2005, '57200.00', '2.0', 'MULTI POINT F/INJ', '65.0', 110, 5, '6AS', '4D SEDAN', 'RWD', 2760),
('V14839', 'BMW', '3', 'E36 16i OPEN AIR', 1995, '46200.00', '1.6', 'MULTI POINT F/INJ', '52.0', 75, 5, '5M', '3D HATCHBACK', 'RWD', 2700),
('V14838', 'BMW', '5', 'E34 25i EXECUTIVE', 1996, '98200.00', '2.5', 'ELECTRONIC F/INJ', '80.0', 141, 5, '5A', '4D SEDAN', 'RWD', 2761),
('V14843', 'BMW', '3', 'E46 30i', 2001, '90700.00', '3.0', 'MULTI POINT F/INJ', '63.0', 170, 5, '5AS', '4D SEDAN', 'RWD', 2725),
('V14850', 'BMW', '7', '35i', 1984, '59500.00', '3.2', 'ELECTRONIC F/INJ', '100.0', 145, 5, '4A', '4D SEDAN', 'RWD', 2795),
('V14847', 'BMW', '3', '18is', 1998, '56600.00', '1.9', 'MULTI POINT F/INJ', '65.0', 103, 5, '4A', '4D SEDAN', 'RWD', 2700),
('V14846', 'BMW', 'X5', 'E53 3.0i', 2004, '84000.00', '3.0', 'MULTI POINT F/INJ', '93.0', 170, 5, '5AS', '4D WAGON', '4WD', 2820),
('V14851', 'BMW', '3', 'E46 20i SPORT', 2005, '65300.00', '2.2', 'MULTI POINT F/INJ', '63.0', 125, 5, '5AS', '4D SEDAN', 'RWD', 2725),
('V14858', 'BMW', '3', 'E36 28i', 1996, '83330.00', '2.8', 'MULTI POINT F/INJ', '65.0', 142, 5, '5A', '4D SEDAN', 'RWD', 2700),
('V14860', 'BMW', '3', '18i', 1997, '51320.00', '1.8', 'ELECTRONIC F/INJ', '65.0', 85, 5, '4A', '4D SEDAN', 'RWD', 2700),
('V14831', 'BMW', 'X5', 'E53 3.0d', 2004, '84500.00', '3.0', 'TURBO CDI', '93.0', 150, 5, '6A', '4D WAGON', '4WD', 2820),
('V14832', 'BMW', '3', 'E46 18i EXECUTIVE', 2002, '56550.00', '2.0', 'MULTI POINT F/INJ', '63.0', 105, 5, '5AS', '4D SEDAN', 'RWD', 2725),
('V14833', 'BMW', '3', '23i', 1996, '62550.00', '2.5', 'MULTI POINT F/INJ', '62.0', 125, 5, '5M', '4D SEDAN', 'RWD', 2700),
('V14834', 'BMW', '3', 'E46 30Ci', 2001, '109050.00', '3.0', 'MULTI POINT F/INJ', '63.0', 170, 5, '5AS', '2D CONVERTIBLE', 'RWD', 2725),
('V14836', 'BMW', '5', 'E60 25i', 2005, '89000.00', '2.5', 'MULTI POINT F/INJ', '70.0', 141, 5, '6AS', '4D SEDAN', 'RWD', 2888),
('V14837', 'BMW', '3', 'E91 23i TOURING', 2006, '71500.00', '2.5', 'MULTI POINT F/INJ', '60.0', 130, 5, '6AS', '4D WAGON', 'RWD', 2760),
('V14880', 'BMW', '5', '20i', 1991, '69100.00', '2.0', 'ELECTRONIC F/INJ', '80.0', 110, 5, '5A', '4D SEDAN', 'RWD', 2761),
('V14855', 'BMW', '3', 'E46 20Ci', 2001, '67050.00', '2.2', 'MULTI POINT F/INJ', '63.0', 125, 5, '5AS', '2D COUPE', 'RWD', 2725),
('V14859', 'BMW', '5', '28i', 1997, '96500.00', '2.8', 'MULTI POINT F/INJ', '70.0', 142, 5, '5AS', '4D SEDAN', 'RWD', 2830),
('V14863', 'BMW', 'X5', 'E53 3.0i', 2001, '82350.00', '3.0', 'MULTI POINT F/INJ', '93.0', 170, 5, '5AS', '4D WAGON', '4WD', 2820),
('V14854', 'BMW', '3', '20i', 1989, '54700.00', '2.0', 'ELECTRONIC F/INJ', '65.0', 95, 5, '5M', '4D SEDAN', 'RWD', 2570),
('V14870', 'BMW', '3', '23Ci', 1999, '73900.00', '2.5', 'MULTI POINT F/INJ', '63.0', 125, 5, '5M', '2D COUPE', 'RWD', 2725),
('V14852', 'BMW', '3', 'E46 16ti', 2002, '43869.00', '1.8', 'MULTI POINT F/INJ', '63.0', 85, 5, '5AS', '3D HATCHBACK', 'RWD', 2725),
('V14853', 'BMW', '1', 'E87 20i', 2005, '44100.00', '2.0', 'MULTI POINT F/INJ', '50.0', 110, 5, '6A', '5D HATCHBACK', 'RWD', 2660),
('V14856', 'BMW', '3', '25i', 1988, '74500.00', '2.5', 'ELECTRONIC F/INJ', '55.0', 125, 5, '4A', '4D SEDAN', 'RWD', 2570),
('V14857', 'BMW', '3', 'E46 18i SPORT', 2005, '54500.00', '2.0', 'MULTI POINT F/INJ', '63.0', 105, 5, '5M', '4D SEDAN', 'RWD', 2725),
('V14861', 'BMW', '3', '18is', 1997, '55100.00', '1.9', 'MULTI POINT F/INJ', '65.0', 103, 5, '5M', '4D SEDAN', 'RWD', 2700),
('V14862', 'BMW', '3', 'E46 18i EXECUTIVE', 2001, '53950.00', '2.0', 'MULTI POINT F/INJ', '63.0', 105, 5, '5M', '4D SEDAN', 'RWD', 2725),
('V14864', 'BMW', '1', 'E87 20d', 2006, '47800.00', '2.0', 'DIESEL TURBO F/INJ', '51.0', 115, 5, '6A', '5D HATCHBACK', 'RWD', 2660),
('V14865', 'BMW', '3', 'E46 18i EXECUTIVE', 2000, '52070.00', '1.9', 'MULTI POINT F/INJ', '63.0', 87, 5, '5M', '4D SEDAN', 'RWD', 2725),
('V14866', 'BMW', 'X5', 'E53 3.0i', 2006, '84000.00', '3.0', 'MULTI POINT F/INJ', '93.0', 170, 5, '5AS', '4D WAGON', '4WD', 2820),
('V14867', 'BMW', '3', '18i', 1995, '49650.00', '1.8', 'ELECTRONIC F/INJ', '65.0', 85, 5, '5M', '4D SEDAN', 'RWD', 2700),
('V14871', 'BMW', 'X5', 'E53 MY06 UPGRADE 3.0d', 2006, '86800.00', '3.0', 'TURBO CDI', '93.0', 150, 5, '6A', '4D WAGON', '4WD', 2820),
('V14872', 'BMW', '3', 'E46 18i', 1999, '54370.00', '1.9', 'MULTI POINT F/INJ', '63.0', 87, 5, '5M', '4D SEDAN', 'RWD', 2725),
('V14873', 'BMW', '3', '18is', 1996, '57110.00', '1.8', 'ELECTRONIC F/INJ', '65.0', 103, 5, '4A', '2D COUPE', 'RWD', 2700),
('V14874', 'BMW', '3', 'E46 16ti', 2004, '41750.00', '1.8', 'MULTI POINT F/INJ', '63.0', 85, 5, '5M', '3D HATCHBACK', 'RWD', 2725),
('V14875', 'BMW', '3', '18i', 1989, '36950.00', '1.8', 'ELECTRONIC F/INJ', '55.0', 83, 5, '5M', '2D SEDAN', 'RWD', 2570),
('V14876', 'BMW', '3', '18i', 1994, '46500.00', '1.8', 'ELECTRONIC F/INJ', '65.0', 85, 5, '5M', '4D SEDAN', 'RWD', 2700),
('V14877', 'BMW', '3', 'E90 20i', 2006, '53400.00', '2.0', 'MULTI POINT F/INJ', '65.0', 110, 5, '6AS', '4D SEDAN', 'RWD', 2760),
('V14878', 'BMW', '5', 'E39 23i', 1996, '83600.00', '2.5', 'MULTI POINT F/INJ', '70.0', 125, 5, '5AS', '4D SEDAN', 'RWD', 2830),
('V14879', 'BMW', '5', 'E39 30i SPORT', 2002, '101400.00', '3.0', 'MULTI POINT F/INJ', '70.0', 170, 5, '5AS', '4D SEDAN', 'RWD', 2830),
('V14881', 'BMW', '3', '18i', 1991, '44300.00', '1.8', 'ELECTRONIC F/INJ', '65.0', 85, 5, '4A', '4D SEDAN', 'RWD', 2700),
('V14882', 'BMW', '3', 'E46 18i', 2000, '48315.00', '1.9', 'MULTI POINT F/INJ', '63.0', 87, 5, '5M', '4D SEDAN', 'RWD', 2725),
('V14883', 'BMW', '3', '18i', 1986, '38600.00', '1.8', 'ELECTRONIC F/INJ', '58.0', 77, 5, '5M', '4D SEDAN', 'RWD', 2570),
('V14884', 'BMW', '3', 'E36 18is SPORT', 1998, '58950.00', '1.9', 'MULTI POINT F/INJ', '62.0', 103, 5, '5M', '2D COUPE', 'RWD', 2700),
('V14885', 'BMW', '7', '35iL EXECUTIVE', 1988, '145900.00', '3.4', 'ELECTRONIC F/INJ', '95.0', 155, 5, '4A', '4D SEDAN', 'RWD', 2945),
('V14887', 'BMW', '5', '25i', 1991, '80200.00', '2.5', 'ELECTRONIC F/INJ', '80.0', 141, 5, '5M', '4D SEDAN', 'RWD', 2761),
('V15130', 'PEUGEOT', '205', 'GTi', 1990, '33750.00', '1.9', 'ELECTRONIC F/INJ', '50.0', 75, 5, '5M', '3D HATCHBACK', 'FWD', 2420),
('V15106', 'VOLVO', 'S40', '2', 1997, '44950.00', '1.9', 'MULTI POINT F/INJ', '60.0', 103, 5, '4A', '4D SEDAN', 'FWD', 2550),
('V15119', 'VOLVO', '4', '40 GLT', 1996, '45500.00', '2.0', 'ELECTRONIC F/INJ', '60.0', 80, 5, '4A', '4D HATCHBACK', 'FWD', 2503),
('V15128', 'NISSAN', '200', 'S15 SX SPEC S', 2001, '40990.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '6M', '2D COUPE', 'RWD', 2525),
('V15129', 'NISSAN', '200', 'SX LUXURY', 1998, '49995.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '5M', '2D COUPE', 'RWD', 2525),
('V15127', 'NISSAN', '200', 'SX SPORTS LIMITED', 1998, '39990.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '5M', '2D COUPE', 'RWD', 2525),
('V15140', 'PEUGEOT', '406', 'D8 ST', 1997, '39995.00', '2.0', 'MULTI POINT F/INJ', '70.0', 100, 5, '5M', '4D SEDAN', 'FWD', 2700),
('V15142', 'PEUGEOT', '405', 'Mi16', 1993, '41995.00', '2.0', 'ELECTRONIC F/INJ', '70.0', 112, 5, '5M', '4D SEDAN', 'FWD', 2669),
('V15143', 'PEUGEOT', '306', 'XT', 2000, '29490.00', '2.0', 'MULTI POINT F/INJ', '60.0', 100, 5, '5M', '5D HATCHBACK', 'FWD', 2580),
('V15144', 'PEUGEOT', '206', 'XT', 2001, '22990.00', '1.6', 'MULTI POINT F/INJ', '50.0', 67, 5, '5M', '5D HATCHBACK', 'FWD', 2442),
('V15146', 'PEUGEOT', '206', 'GTi', 2004, '29990.00', '2.0', 'MULTI POINT F/INJ', '50.0', 102, 5, '5M', '3D HATCHBACK', 'FWD', 2442),
('V15147', 'PEUGEOT', '406', 'D9', 2004, '69550.00', '2.9', 'MULTI POINT F/INJ', '70.0', 157, 4, '5M', '2D COUPE', 'FWD', 2700),
('V15148', 'PEUGEOT', '206', 'CC', 2005, '32990.00', '1.6', 'MULTI POINT F/INJ', '50.0', 80, 4, '5M', '2D CABRIOLET', 'FWD', 2442),
('V15149', 'PEUGEOT', '307', 'XSE', 2003, '31790.00', '2.0', 'MULTI POINT F/INJ', '60.0', 100, 5, '5M', '5D HATCHBACK', 'FWD', 2608),
('V15150', 'PEUGEOT', '206', 'XR', 2002, '19990.00', '1.4', 'MULTI POINT F/INJ', '50.0', 55, 5, '5M', '5D HATCHBACK', 'FWD', 2442),
('V15123', 'NISSAN', '200', 'SX SPORTS LIMITED', 1994, '38500.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '5M', '2D COUPE', 'RWD', 2525),
('V15124', 'NISSAN', '200', 'SX SPORTS', 1996, '44510.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '5M', '2D COUPE', 'RWD', 2525),
('V15122', 'NISSAN', '200', 'S15 SX SPEC S GT', 2002, '42990.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '6M', '2D COUPE', 'RWD', 2525),
('V15165', 'PEUGEOT', '206', 'CC', 2006, '34990.00', '1.6', 'MULTI POINT F/INJ', '50.0', 80, 4, '4ATip', '2D CABRIOLET', 'FWD', 2442),
('V15166', 'PEUGEOT', '307', 'XSE', 2004, '33990.00', '2.0', 'MULTI POINT F/INJ', '60.0', 100, 5, '4ATip', '5D HATCHBACK', 'FWD', 2608),
('V15168', 'PEUGEOT', '206', 'XR', 2004, '19990.00', '1.4', 'MULTI POINT F/INJ', '50.0', 55, 5, '5M', '5D HATCHBACK', 'FWD', 2442),
('V15169', 'PEUGEOT', '307', 'MY06 UPGRADE XSE HDi 2.0 TOURING', 2006, '33990.00', '2.0', 'DIESEL TURBO F/INJ', '60.0', 100, 5, '6M', '4D WAGON', 'FWD', 2708),
('V15161', 'PEUGEOT', '307', 'MY06 UPGRADE XSE HDi 2.0', 2006, '32290.00', '2.0', 'DIESEL TURBO F/INJ', '60.0', 100, 5, '6M', '5D HATCHBACK', 'FWD', 2608),
('V15162', 'PEUGEOT', '206', 'XT', 2000, '22450.00', '1.6', 'MULTI POINT F/INJ', '50.0', 67, 5, '5M', '5D HATCHBACK', 'FWD', 2442),
('V15167', 'PEUGEOT', '206', 'C', 2006, '22990.00', '1.6', 'MULTI POINT F/INJ', '50.0', 82, 5, '5M', '5D HATCHBACK', 'FWD', 2442),
('V15163', 'PEUGEOT', '307', 'MY06 UPGRADE SPORT 2.0', 2005, '37990.00', '2.0', 'MULTI POINT F/INJ', '60.0', 130, 5, '5M', '5D HATCHBACK', 'FWD', 2608),
('V15160', 'PEUGEOT', '405', 'D60 SRI', 1992, '34995.00', '1.9', 'ELECTRONIC F/INJ', '70.0', 80, 5, '5M', '4D SEDAN', 'FWD', 2669),
('V15181', 'PEUGEOT', '206', 'XR', 2003, '21990.00', '1.6', 'MULTI POINT F/INJ', '50.0', 82, 5, '5M', '3D HATCHBACK', 'FWD', 2442),
('V15186', 'EUNOS', '30', 'X SPORT', 1996, '37155.00', '1.8', 'ELECTRONIC F/INJ', '50.0', 99, 4, '5M', '2D COUPE', 'FWD', 2455),
('V15184', 'EUNOS', '800', 'M', 1996, '85165.00', '2.3', 'MILLER CYCLE', '68.0', 149, 5, '4A', '4D SEDAN', 'FWD', 2750),
('V15209', 'CHRYSLER', 'NEON', 'SE', 1997, '24880.00', '2.0', 'ELECTRONIC F/INJ', '47.0', 98, 5, '3A', '4D SEDAN', 'FWD', 2642),
('V15201', 'CHRYSLER', 'VOYAGER', 'RG SE', 2002, '52590.00', '3.3', 'MULTI POINT F/INJ', '75.0', 128, 7, '4A', '4D WAGON', 'FWD', 2787),
('V15202', 'CHRYSLER', 'CROSSFIRE', 'ZH ROADSTER', 2005, '75990.00', '3.2', 'MULTI POINT F/INJ', '60.0', 160, 2, '5ASeq', '2D CONVERTIBLE', 'RWD', 2400),
('V15203', 'CHRYSLER', 'VOYAGER', 'GS SE', 1999, '48200.00', '3.3', 'MULTI POINT F/INJ', '76.0', 116, 7, '4A', '4D WAGON', 'FWD', 2878),
('V15204', 'CHRYSLER', 'PT CRUISER', 'MY06 CLASSIC', 2005, '31990.00', '2.4', 'MULTI POINT F/INJ', '57.0', 105, 5, '4A', '5D HATCHBACK', 'FWD', 2616),
('V15205', 'CHRYSLER', 'PT CRUISER', 'CLASSIC', 2001, '35200.00', '2.0', 'MULTI POINT F/INJ', '57.0', 104, 5, '5M', '5D HATCHBACK', 'FWD', 2616),
('V15207', 'CHRYSLER', '300C', 'LE MY06 SRT8', 2006, '71990.00', '6.1', 'MULTI POINT F/INJ', '71.0', 317, 5, '5A', '4D SEDAN', 'RWD', 3050),
('V15208', 'CHRYSLER', 'GRAND VOYAGER', 'RG SE', 2004, '59090.00', '3.3', 'MULTI POINT F/INJ', '75.0', 128, 7, '4A', '4D WAGON', 'FWD', 3030),
('V15210', 'CHRYSLER', 'PT CRUISER', 'CLASSIC', 2004, '32490.00', '2.0', 'MULTI POINT F/INJ', '57.0', 104, 5, '4A', '5D HATCHBACK', 'FWD', 2616),
('V15200', 'CHRYSLER', '300C', 'LE MY06 CRD', 2006, '57990.00', '3.0', 'DIESEL TURBO F/INJ', '71.0', 160, 5, '5A', '4D SEDAN', 'RWD', 3050),
('V15199', 'CHRYSLER', 'VALIANT', 'CM GLX', 1979, '8014.00', '4.3', 'CARB', '79.0', 120, 5, '3A', '4D SEDAN', 'RWD', 2820),
('V15220', 'CHRYSLER', 'VOYAGER', 'RG 05 UPGRADE LX', 2004, '62980.00', '3.3', 'MULTI POINT F/INJ', '75.0', 128, 7, '4A', '4D WAGON', 'FWD', 3030),
('V15221', 'CHRYSLER', 'PT CRUISER', 'LIMITED', 2004, '38490.00', '2.0', 'MULTI POINT F/INJ', '57.0', 104, 5, '4A', '5D HATCHBACK', 'FWD', 2616),
('V15222', 'CHRYSLER', 'VOYAGER', 'GS SE', 2001, '46900.00', '3.3', 'MULTI POINT F/INJ', '76.0', 116, 7, '4A', '4D WAGON', 'FWD', 2878),
('V15223', 'MAZDA', '323', 'PROTEGE', 1999, '20990.00', '1.6', 'MULTI POINT F/INJ', '55.0', 78, 5, '5M', '4D SEDAN', 'FWD', 2610),
('V15224', 'MAZDA', '323', 'ASTINA', 1997, '35700.00', '2.0', 'MULTI POINT F/INJ', '55.0', 104, 5, '5M', '5D HATCHBACK', 'FWD', 2605),
('V15225', 'MAZDA', '323', 'ASTINA SHADES', 2001, '20490.00', '1.6', 'MULTI POINT F/INJ', '55.0', 78, 5, '5M', '5D HATCHBACK', 'FWD', 2605),
('V15226', 'MAZDA', '323', 'DELUXE', 1983, '8835.00', '1.5', 'CARB', '45.0', 54, 4, '5M', '4D WAGON', 'RWD', 2315),
('V15227', 'MAZDA', '323', 'PROTEGE SHADES', 2000, '19715.00', '1.6', 'MULTI POINT F/INJ', '55.0', 78, 5, '5M', '4D SEDAN', 'FWD', 2610),
('V15228', 'MAZDA', '323', 'PROTEGE', 1997, '22915.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '5M', '4D SEDAN', 'FWD', 2605),
('V15229', 'MAZDA', '323', 'ASTINA', 1995, '31050.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '4A', '5D HATCHBACK', 'FWD', 2605),
('V15230', 'MAZDA', '323', 'PROTEGE', 1998, '22915.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '5M', '4D SEDAN', 'FWD', 2605),
('V15241', 'MAZDA', '323', 'ASTINA', 1993, '25715.00', '1.8', 'MULTI POINT F/INJ', '55.0', 76, 5, '5M', '5D HATCHBACK', 'FWD', 2500),
('V15242', 'MAZDA', '323', 'ASTINA SHADES', 2000, '19715.00', '1.6', 'MULTI POINT F/INJ', '55.0', 78, 5, '5M', '5D HATCHBACK', 'FWD', 2605),
('V15243', 'MAZDA', '323', 'ASTINA', 1996, '38270.00', '2.0', 'MULTI POINT F/INJ', '55.0', 104, 5, '5M', '5D HATCHBACK', 'FWD', 2605),
('V15244', 'MAZDA', '323', 'ASTINA', 1998, '28480.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '4A', '5D HATCHBACK', 'FWD', 2605),
('V15245', 'MAZDA', '323', 'SUPER DELUXE', 1989, '20210.00', '1.6', 'MULTI POINT F/INJ', '48.0', 61, 5, '4A', '5D HATCHBACK', 'FWD', 2400),
('V15246', 'MAZDA', '323', 'PROTEGE', 2003, '21840.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '4A', '4D SEDAN', 'FWD', 2610),
('V15247', 'MAZDA', '323', 'ASTINA', 2003, '21840.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '4A', '5D HATCHBACK', 'FWD', 2610),
('V15248', 'MAZDA', '323', 'SUPER DELUXE', 1988, '19390.00', '1.6', 'CARB', '48.0', 53, 5, '3A', '5D HATCHBACK', 'FWD', 2400),
('V15249', 'MAZDA', '323', 'ASTINA SHADES', 1998, '26990.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '5M', '5D HATCHBACK', 'FWD', 2605),
('V15250', 'MAZDA', '323', 'ASTINA SP', 1994, '30085.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '5M', '5D HATCHBACK', 'FWD', 2500),
('V15240', 'MAZDA', '323', 'PROTEGE', 2000, '19715.00', '1.6', 'MULTI POINT F/INJ', '55.0', 78, 5, '5M', '4D SEDAN', 'FWD', 2610),
('V15261', 'MAZDA', '323', 'PROTEGE SHADES', 2002, '20695.00', '1.6', 'MULTI POINT F/INJ', '55.0', 78, 5, '5M', '4D SEDAN', 'FWD', 2605),
('V15280', 'MITSUBISHI', '380', 'DB', 2005, '35990.00', '3.8', 'MULTI POINT F/INJ', '67.0', 175, 5, '5ASPM', '4D SEDAN', 'FWD', 2750),
('V15263', 'MAZDA', '323', 'BJ PROTEGE SHADES', 2003, '19990.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '5M', '4D SEDAN', 'FWD', 2610),
('V15264', 'MAZDA', '323', 'PROTEGE SP20', 2002, '26990.00', '2.0', 'MULTI POINT F/INJ', '55.0', 98, 5, '5M', '4D SEDAN', 'FWD', 2610),
('V15282', 'TOYOTA', '4 RUNNER', 'DELUXE 4x4', 1989, '28200.00', '2.4', 'CARB', '65.0', 75, 5, '5M4x4', '4D WAGON', '4WD', 2625),
('V15284', 'TOYOTA', '4 RUNNER', 'RV6 4x4', 1992, '36954.00', '3.0', 'ELECTRONIC F/INJ', '65.0', 105, 5, '4A4x4', '4D WAGON', '4WD', 2625),
('V15260', 'MAZDA', '323', 'ASTINA SP20', 2002, '29180.00', '2.0', 'MULTI POINT F/INJ', '55.0', 98, 5, '5M', '5D HATCHBACK', 'FWD', 2610),
('V15259', 'MAZDA', '323', 'LIMITED', 1985, '15826.00', '1.6', 'MULTI POINT F/INJ', '45.0', 61, 5, '5M', '5D HATCHBACK', 'FWD', 2400),
('V15300', 'MAZDA', '626', 'ECLIPSE', 2002, '31980.00', '2.0', 'MULTI POINT F/INJ', '64.0', 93, 5, '4A', '4D SEDAN', 'FWD', 2610),
('V15301', 'MAZDA', '626', 'LUXURY', 1999, '37290.00', '2.0', 'MULTI POINT F/INJ', '64.0', 93, 5, '4A', '5D HATCHBACK', 'FWD', 2610),
('V15302', 'MAZDA', '626', 'DELUXE', 1994, '31335.00', '2.0', 'MULTI POINT F/INJ', '60.0', 85, 5, '4A', '4D SEDAN', 'FWD', 2610),
('V15303', 'MAZDA', '626', 'CLASSIC', 1998, '30180.00', '2.0', 'MULTI POINT F/INJ', '64.0', 93, 5, '5M', '4D SEDAN', 'FWD', 2610),
('V15304', 'MAZDA', '626', 'CLASSIC', 1999, '32430.00', '2.0', 'MULTI POINT F/INJ', '64.0', 93, 5, '4A', '4D SEDAN', 'FWD', 2610),
('V15305', 'MAZDA', '626', 'CLASSIC', 2001, '32900.00', '2.0', 'MULTI POINT F/INJ', '64.0', 93, 5, '4A', '5D HATCHBACK', 'FWD', 2610),
('V15306', 'MAZDA', '626', 'LIMITED EDITION', 2000, '30160.00', '2.0', 'MULTI POINT F/INJ', '64.0', 93, 5, '5M', '4D SEDAN', 'FWD', 2610),
('V15307', 'AUDI', 'A4', 'B6 2.0', 2002, '50650.00', '2.0', 'MULTI POINT F/INJ', '70.0', 96, 5, 'CVTM', '4D SEDAN', 'FWD', 2650),
('V15308', 'AUDI', 'A3', '8P SPORTBACK 2.0 TDI AMBITION DSG', 2005, '47750.00', '2.0', 'DIESEL TURBO F/INJ', '55.0', 103, 5, '6ADSG', '5D HATCHBACK', 'FWD', 2578),
('V15309', 'AUDI', '90', 'SPORT', 1990, '42245.00', '2.3', 'ELECTRONIC F/INJ', '68.0', 100, 5, '5M', '4D SEDAN', 'FWD', 2546),
('V15310', 'AUDI', 'A4', 'B7 2.0', 2007, '50450.00', '2.0', 'MULTI POINT F/INJ', '70.0', 96, 5, 'CVTM', '4D SEDAN', 'FWD', 2648),
('V15297', 'MAZDA', '626', 'CLASSIC', 2000, '31070.00', '2.0', 'MULTI POINT F/INJ', '64.0', 93, 5, '5M', '5D HATCHBACK', 'FWD', 2610),
('V15327', 'AUDI', 'A3', '1.8 TURBO', 2004, '44950.00', '1.8', 'TURBO MPFI', '55.0', 110, 5, '5M', '5D HATCHBACK', 'FWD', 2512),
('V15321', 'AUDI', 'A4', 'B6 2.0 AVANT', 2003, '54250.00', '2.0', 'MULTI POINT F/INJ', '70.0', 96, 5, 'CVTM6', '4D WAGON', 'FWD', 2650),
('V15322', 'AUDI', 'ALLROAD QUATTRO', 'C5', 2001, '99250.00', '2.7', 'TWIN TURBO MPFI', '70.0', 184, 5, '5ATip', '4D WAGON', 'AWD', 2760),
('V15323', 'AUDI', 'A3', '1.6', 2003, '35400.00', '1.6', 'MULTI POINT F/INJ', '55.0', 75, 5, '5M', '5D HATCHBACK', 'FWD', 2512),
('V15324', 'AUDI', 'S3', '1.8', 2000, '65850.00', '1.8', 'TURBO MPFI', '62.0', 154, 5, '6M', '3D HATCHBACK', 'AWD', 2519),
('V15325', 'AUDI', 'A3', '8P SPORTBACK 2.0 TDI AMBITION DSG', 2006, '47750.00', '2.0', 'DIESEL TURBO F/INJ', '55.0', 103, 5, '6ADSG', '5D HATCHBACK', 'FWD', 2578),
('V15326', 'AUDI', 'A3', '1.8', 1999, '42450.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '4A', '3D HATCHBACK', 'FWD', 2512),
('V15328', 'AUDI', 'TT', 'QUATTRO', 2004, '92500.00', '1.8', 'TURBO MPFI', '62.0', 165, 2, '6M', '2D ROADSTER', 'AWD', 2429),
('V15329', 'AUDI', 'A3', '1.8', 2002, '38700.00', '1.8', 'MULTI POINT F/INJ', '55.0', 92, 5, '5M', '5D HATCHBACK', 'FWD', 2512),
('V15330', 'AUDI', 'A6', '4B 2.4 V6', 2003, '80900.00', '2.4', 'MULTI POINT F/INJ', '70.0', 125, 5, 'CVTM6', '4D SEDAN', 'FWD', 2749),
('V15317', 'AUDI', 'A4', '1.8 SE 20V', 1996, '51320.00', '1.8', 'MULTI POINT F/INJ', '60.0', 92, 5, '4A', '4D SEDAN', 'FWD', 2617),
('V15340', 'SAAB', '09-Mar', 'MY07 LINEAR SPORT 1.9TiD SPORTCOMBI', 2007, '53400.00', '1.9', 'TURBO MPFI', '58.0', 110, 5, '5A', '4D WAGON', 'FWD', 2675),
('V15341', 'SAAB', '09-May', 'SE', 2000, '67986.00', '2.3', 'TURBO MPFI', '75.0', 125, 5, '4A', '4D SEDAN', 'FWD', 2703),
('V15342', 'SAAB', '09-Mar', 'MY04 ARC 2.0T', 2004, '56400.00', '2.0', 'TURBO MPFI', '62.0', 129, 5, '5A', '4D SEDAN', 'FWD', 2675),
('V15343', 'SAAB', '09-Mar', 'MY02 AERO', 2002, '64575.00', '2.0', 'TURBO MPFI', '68.0', 151, 5, '4A', '5D HATCHBACK', 'FWD', 2605),
('V15344', 'SAAB', '09-May', 'MY04 AERO', 2004, '84900.00', '2.3', 'TURBO MPFI', '75.0', 184, 5, '5AST', '4D SEDAN', 'FWD', 2703),
('V15345', 'SAAB', '900', 'SE 2.5 V6', 1996, '63900.00', '2.5', 'MULTI POINT F/INJ', '68.0', 125, 5, '4A', '5D HATCHBACK', 'FWD', 2600),
('V15346', 'SAAB', '09-Mar', 'MY03 TURBO 2.0t LTD ED', 2003, '73000.00', '2.0', 'TURBO MPFI', '68.0', 110, 5, '4A', '2D CONVERTIBLE', 'FWD', 2605),
('V15347', 'SAAB', '9000', 'CS ANNIVERSARY', 1998, '54900.00', '2.3', 'TURBO EFI', '66.0', 125, 5, '4A', '4D HATCHBACK', 'FWD', 2672),
('V15348', 'SAAB', '900', 'S 2.5 V6', 1994, '45900.00', '2.5', 'MULTI POINT F/INJ', '68.0', 125, 5, '5M', '5D HATCHBACK', 'FWD', 2600),
('V15349', 'SAAB', '09-May', 'MY01 S', 2001, '64000.00', '2.3', 'TURBO MPFI', '75.0', 136, 5, '4A', '4D SEDAN', 'FWD', 2703),
('V15350', 'SAAB', '09-Mar', 'MY05 AERO', 2005, '93000.00', '2.0', 'TURBO MPFI', '62.0', 155, 4, '5ASEN', '2D CONVERTIBLE', 'FWD', 2675),
('V15367', 'SAAB', '9000', 'CD 16', 1993, '46990.00', '2.3', 'ELECTRONIC F/INJ', '66.0', 108, 5, '4A', '4D SEDAN', 'FWD', 2672),
('V15316', 'AUDI', 'TT', 'MY99', 1999, '73000.00', '1.8', 'TURBO MPFI', '55.0', 132, 4, '5M', '2D COUPE', 'FWD', 2419),
('V15369', 'MAZDA', '929', 'LUXURY', 1986, '29600.00', '2.0', 'MULTI POINT F/INJ', '60.0', 70, 5, '4A', '2D HARDTOP', 'RWD', 2615),
('V15361', 'SAAB', '09-Mar', 'S', 2001, '63885.00', '2.0', 'TURBO MPFI', '68.0', 113, 4, '5M', '2D CONVERTIBLE', 'FWD', 2605),
('V15366', 'SAAB', '09-Mar', 'SE', 1999, '62000.00', '2.0', 'TURBO MPFI', '68.0', 136, 5, '4A', '5D SEDAN', 'FWD', 2605),
('V15363', 'SAAB', '9000', 'CS', 1997, '52000.00', '2.3', 'TURBO EFI', '66.0', 125, 5, '4A', '4D HATCHBACK', 'FWD', 2672),
('V15364', 'SAAB', '9000', 'CS', 1996, '50400.00', '2.3', 'TURBO EFI', '66.0', 125, 5, '4A', '4D HATCHBACK', 'FWD', 2672),
('V15368', 'MAZDA', '929', 'DELUXE', 1987, '23010.00', '2.0', 'MULTI POINT F/INJ', '60.0', 70, 5, '5M', '4D SEDAN', 'RWD', 2615),
('V15360', 'SAAB', '09-Mar', 'AERO', 2000, '80887.00', '2.0', 'TURBO MPFI', '64.0', 158, 5, '5M', '2D CONVERTIBLE', 'FWD', 2605),
('V15362', 'SAAB', '09-Mar', 'MY04 AERO 2.0t', 2004, '67900.00', '2.0', 'TURBO MPFI', '62.0', 155, 5, '6M', '4D SEDAN', 'FWD', 2675),
('V15365', 'SAAB', '09-Mar', 'S', 2000, '65985.00', '2.0', 'TURBO MPFI', '68.0', 113, 4, '4A', '2D CONVERTIBLE', 'FWD', 2605),
('V15357', 'SAAB', '9000', 'CSE', 1994, '79200.00', '2.3', 'TURBO EFI', '66.0', 147, 5, '4A', '4D HATCHBACK', 'FWD', 2672),
('V15400', 'HONDA', 'ACCORD', '40 VTi', 2005, '29990.00', '2.4', 'MULTI POINT F/INJ', '65.0', 118, 5, '5A', '4D SEDAN', 'FWD', 2740),
('V14888', 'BMW', '3', 'E46 25Ci', 2002, '75000.00', '2.5', 'MULTI POINT F/INJ', '63.0', 141, 5, '5AS', '2D COUPE', 'RWD', 2725),
('V14889', 'BMW', '3', 'E46 16ti', 2005, '40350.00', '1.8', 'MULTI POINT F/INJ', '63.0', 85, 5, '5M', '3D HATCHBACK', 'RWD', 2725),
('V14890', 'BMW', 'X5', 'E53 3.0d', 2005, '84300.00', '3.0', 'TURBO CDI', '93.0', 150, 5, '6A', '4D WAGON', '4WD', 2820),
('V14891', 'DATSUN', 'FAIRLADY', 'SPORTS', 1964, '2530.00', '1.5', 'CARB', '43.0', 63, 0, '4M', '2D ROADSTER', 'RWD', 2280),
('V14895', 'DATSUN', '180B', 'SSS', 1977, '6012.00', '1.8', 'CARB', '55.0', 82, 5, '5M', '2D HARDTOP', 'RWD', 2500),
('V14896', 'MAZDA', '121', 'METRO SHADES', 2001, '19050.00', '1.5', 'ELECTRONIC F/INJ', '43.0', 64, 5, '5M', '5D HATCHBACK', 'FWD', 2390),
('V14897', 'MAZDA', '121', 'SHADES', 1997, '14200.00', '1.3', 'SINGLE POINT F/INJ', '40.0', 54, 5, '5M', '4D SEDAN', 'FWD', 2390),
('V14899', 'MAZDA', '121', 'METRO SHADES', 2002, '19240.00', '1.5', 'ELECTRONIC F/INJ', '43.0', 64, 5, '5M', '5D HATCHBACK', 'FWD', 2390),
('V14900', 'MAZDA', '121', 'DELUXE', 1987, '12250.00', '1.3', 'CARB', '38.0', 46, 5, '5M', '3D HATCHBACK', 'FWD', 2295),
('V14901', 'MAZDA', '121', 'METRO SHADES', 1999, '19590.00', '1.5', 'ELECTRONIC F/INJ', '40.0', 64, 5, '4A', '5D HATCHBACK', 'FWD', 2390),
('V14902', 'VOLKSWAGEN', 'TRANSPORTER', 'T5 MY08 CREWVAN SWB', 2008, '42990.00', '2.5', 'DIESEL TURBO F/INJ', '80.0', 96, 5, '6ATip', 'VAN', 'FWD', 3000),
('V14903', 'VOLKSWAGEN', 'JETTA', '1KM 2.0 TDI', 2006, '35490.00', '2.0', 'DIESEL TURBO F/INJ', '55.0', 103, 5, '6M', '4D SEDAN', 'FWD', 2578),
('V14904', 'VOLKSWAGEN', 'TRANSPORTER', 'T5 SWB', 2005, '43400.00', '2.5', 'DIESEL TURBO F/INJ', '80.0', 96, 2, '6ATip', 'VAN', 'FWD', 3000),
('V14905', 'VOLKSWAGEN', 'POLO', '9N MY07 UPGRADE CLUB', 2007, '16990.00', '1.4', 'MULTI POINT F/INJ', '45.0', 59, 5, '5M', '3D HATCHBACK', 'FWD', 2465),
('V14906', 'VOLKSWAGEN', 'JETTA', '1KM 2.0 TURBO FSI', 2006, '39990.00', '2.0', 'TURBO MPFI', '55.0', 147, 5, '6ADSG', '4D SEDAN', 'FWD', 2578),
('V14907', 'VOLKSWAGEN', 'MULTIVAN', 'T5 HIGHLINE', 2006, '72990.00', '2.5', 'DIESEL TURBO F/INJ', '80.0', 128, 7, '6ATip', '4D VAN', 'FWD', 3000),
('V14908', 'VOLKSWAGEN', 'JETTA', '1KM 2.0 TURBO FSI', 2007, '39990.00', '2.0', 'TURBO MPFI', '55.0', 147, 5, '6ADSG', '4D SEDAN', 'FWD', 2578),
('V14909', 'VOLKSWAGEN', 'GOLF', '1K GTi', 2007, '39990.00', '2.0', 'TURBO MPFI', '55.0', 147, 5, '6M', '5D HATCHBACK', 'FWD', 2578),
('V14910', 'VOLKSWAGEN', 'GOLF', 'GL', 2001, '25990.00', '1.6', 'MULTI POINT F/INJ', '55.0', 74, 5, '5M', '5D HATCHBACK', 'FWD', 2511),
('V14911', 'VOLKSWAGEN', 'GOLF', '1K 1.9 TDI COMFORTLINE', 2005, '32290.00', '1.9', 'DIESEL TURBO F/INJ', '55.0', 77, 5, '6ADSG', '5D HATCHBACK', 'FWD', 2578),
('V14912', 'VOLKSWAGEN', 'JETTA', '1KM 2.0 FSI', 2007, '35290.00', '2.0', 'MULTI POINT F/INJ', '55.0', 110, 5, '6ATip', '4D SEDAN', 'FWD', 2578),
('V14914', 'VOLKSWAGEN', 'GOLF', '1K GT', 2007, '37290.00', '1.4', 'S/C & T/C MPFI', '55.0', 125, 5, '6ADSG', '5D HATCHBACK', 'FWD', 2578),
('V14915', 'VOLKSWAGEN', 'GOLF', 'GL', 1995, '30490.00', '2.0', 'MULTI POINT F/INJ', '55.0', 85, 5, '5M', '5D HATCHBACK', 'FWD', 2475),
('V14920', 'VOLKSWAGEN', 'JETTA', '1KM 2.0 TDI', 2007, '37990.00', '2.0', 'DIESEL TURBO F/INJ', '55.0', 103, 5, '6ADSG', '4D SEDAN', 'FWD', 2578),
('V14921', 'VOLKSWAGEN', 'GOLF', '1K 2.0 FSI COMFORTLINE', 2005, '32290.00', '2.0', 'ELECTRONIC F/INJ', '55.0', 110, 5, '6ATip', '5D HATCHBACK', 'FWD', 2578),
('V14922', 'VOLKSWAGEN', 'GOLF', '1K 2.0 TDI COMFORTLINE', 2007, '32490.00', '2.0', 'DIESEL TURBO F/INJ', '55.0', 103, 5, '6M', '5D HATCHBACK', 'FWD', 2578),
('V14923', 'VOLKSWAGEN', 'PASSAT', '3B 1.8T', 2002, '49800.00', '1.8', 'TURBO MPFI', '62.0', 110, 5, '5ATip', '4D WAGON', 'FWD', 2703),
('V14924', 'VOLKSWAGEN', 'GOLF', '1K 2.0 FSI SPORTLINE', 2006, '32990.00', '2.0', 'ELECTRONIC F/INJ', '55.0', 110, 5, '6M', '5D HATCHBACK', 'FWD', 2578),
('V14925', 'VOLKSWAGEN', 'GOLF', 'GLE', 1999, '34990.00', '2.0', 'MULTI POINT F/INJ', '55.0', 85, 5, '5M', '5D HATCHBACK', 'FWD', 2511),
('V14926', 'VOLKSWAGEN', 'GOLF', 'GL', 1998, '31980.00', '1.6', 'MULTI POINT F/INJ', '55.0', 74, 5, '4A', '5D HATCHBACK', 'FWD', 2511),
('V14927', 'VOLKSWAGEN', 'MULTIVAN', 'T5 COMFORTLINE 4MOTION', 2006, '60990.00', '2.5', 'DIESEL TURBO F/INJ', '80.0', 128, 7, '6M', '4D VAN', '4WD', 3000),
('V14928', 'VOLKSWAGEN', 'POLO', '9N S', 2002, '21800.00', '1.4', 'MULTI POINT F/INJ', '45.0', 55, 5, '5M', '5D HATCHBACK', 'FWD', 2460),
('V14929', 'VOLKSWAGEN', 'TOUAREG', '7L R5 TDi LUXURY', 2006, '78600.00', '2.5', 'DIESEL TURBO F/INJ', '100.0', 128, 5, '6ATip', '4D WAGON', '4WD', 2855),
('V14930', 'VOLKSWAGEN', 'CADDY', '2K LIFE', 2006, '34990.00', '1.9', 'DIESEL TURBO F/INJ', '60.0', 77, 5, '6ADSG', '4D WAGON', 'FWD', 2682),
('V14940', 'VOLKSWAGEN', 'GOLF', '1K 2.0 TDI COMFORTLINE', 2004, '32490.00', '2.0', 'DIESEL TURBO F/INJ', '55.0', 103, 5, '6M', '5D HATCHBACK', 'FWD', 2578),
('V14941', 'VOLKSWAGEN', 'BORA', '1J 2.0', 2001, '36350.00', '2.0', 'MULTI POINT F/INJ', '55.0', 85, 5, '5M', '4D SEDAN', 'FWD', 2500),
('V14942', 'VOLKSWAGEN', 'POLO', '9N MY06 UPGRADE CLUB', 2006, '16990.00', '1.4', 'MULTI POINT F/INJ', '45.0', 55, 5, '5M', '3D HATCHBACK', 'FWD', 2465),
('V14943', 'VOLKSWAGEN', 'CADDY', '2K 1.9 TDi', 2006, '24990.00', '1.9', 'DIESEL TURBO F/INJ', '60.0', 77, 2, '5M', 'VAN', 'FWD', 2682),
('V14944', 'VOLKSWAGEN', 'POLO', '9N', 2003, '19800.00', '1.4', 'MULTI POINT F/INJ', '45.0', 55, 5, '5M', '3D HATCHBACK', 'FWD', 2460),
('V14945', 'VOLKSWAGEN', 'GOLF', '1.6 GENERATION', 2004, '25990.00', '1.6', 'MULTI POINT F/INJ', '55.0', 75, 5, '5M', '5D HATCHBACK', 'FWD', 2511),
('V14946', 'VOLKSWAGEN', 'POLO', '9N MY07 UPGRADE GTi', 2007, '26990.00', '1.8', 'TURBO MPFI', '45.0', 110, 5, '5M', '3D HATCHBACK', 'FWD', 2466),
('V14947', 'VOLKSWAGEN', 'GOLF', 'GL', 1999, '31190.00', '1.6', 'MULTI POINT F/INJ', '55.0', 74, 5, '4A', '5D HATCHBACK', 'FWD', 2511),
('V14948', 'VOLKSWAGEN', 'GOLF', '1K 2.0 TDI COMFORTLINE', 2006, '34790.00', '2.0', 'DIESEL TURBO F/INJ', '55.0', 103, 5, '6ADSG', '5D HATCHBACK', 'FWD', 2578),
('V14949', 'VOLKSWAGEN', 'GOLF', 'GL', 2000, '25990.00', '1.6', 'MULTI POINT F/INJ', '55.0', 74, 5, '5M', '5D HATCHBACK', 'FWD', 2511),
('V14950', 'VOLKSWAGEN', 'GOLF', '1K 1.6 TRENDLINE', 2005, '25490.00', '1.6', 'MULTI POINT F/INJ', '55.0', 75, 5, '5M', '5D HATCHBACK', 'FWD', 2578),
('V14967', 'VOLKSWAGEN', 'POLO', 'OPEN AIR', 1999, '21490.00', '1.6', 'MULTI POINT F/INJ', '45.0', 55, 5, '5M', '5D HATCHBACK', 'FWD', 2400),
('V14960', 'VOLKSWAGEN', 'PASSAT', '3C 2.0T FSI', 2006, '44990.00', '2.0', 'TURBO MPFI', '70.0', 147, 5, '6ATip', '4D SEDAN', 'FWD', 2709),
('V14961', 'VOLKSWAGEN', 'TOUAREG', '7L R5 TDi LUXURY', 2005, '78600.00', '2.5', 'DIESEL TURBO F/INJ', '100.0', 128, 5, '6ATip', '4D WAGON', '4WD', 2855),
('V14962', 'VOLKSWAGEN', 'PASSAT', '3C 3.2 V6 FSI', 2006, '54990.00', '3.2', 'MULTI POINT F/INJ', '70.0', 184, 5, '6ADSG', '4D SEDAN', 'AWD', 2709),
('V14964', 'VOLKSWAGEN', 'GOLF', '2.0 S', 2002, '29490.00', '2.0', 'MULTI POINT F/INJ', '55.0', 85, 5, '5M', '5D HATCHBACK', 'FWD', 2511),
('V14969', 'VOLKSWAGEN', '1600', 'SUPER BUG L', 1975, '3798.00', '1.6', 'CARB', '42.0', 37, 4, '4M', '2D SEDAN', 'RWD', 2420),
('V14966', 'VOLKSWAGEN', 'GOLF', '2.0 GENERATION', 2004, '29490.00', '2.0', 'MULTI POINT F/INJ', '55.0', 85, 5, '4A', '5D HATCHBACK', 'FWD', 2511),
('V14965', 'VOLKSWAGEN', 'CARAVELLE', 'V6', 2003, '59990.00', '2.8', 'MULTI POINT F/INJ', '80.0', 150, 8, '4A', '4D WAGON', 'FWD', 2920),
('V14985', 'ALFA ROMEO', '156', 'V6 24V', 2002, '57500.00', '2.5', 'MULTI POINT F/INJ', '63.0', 140, 5, '6M', '4D SEDAN', 'FWD', 2595),
('V14984', 'ALFA ROMEO', 'GTV', '2', 1999, '61990.00', '2.0', 'MULTI POINT F/INJ', '70.0', 114, 4, '5M', '2D COUPE', 'FWD', 2540),
('V15004', 'MERCEDES-BENZ', 'ML', 'W163 270 CDI 4x4', 2002, '69474.00', '2.7', 'TURBO CDI', '83.0', 120, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15001', 'ALFA ROMEO', '156', '2.0 SELESPEED TWIN SPARK', 1999, '49950.00', '2.0', 'MULTI POINT F/INJ', '63.0', 114, 5, '5MSel', '4D SEDAN', 'FWD', 2595),
('V15002', 'ALFA ROMEO', '147', '2.0 TWIN SPARK', 2003, '39500.00', '2.0', 'MULTI POINT F/INJ', '60.0', 110, 5, '5M', '5D HATCHBACK', 'FWD', 2546),
('V15003', 'MERCEDES-BENZ', 'SLK', 'R171 200K', 2004, '86900.00', '1.8', 'SUPERCHARGED MPFI', '70.0', 120, 2, '5ATS', '2D CONVERTIBLE', 'RWD', 2430),
('V15005', 'MERCEDES-BENZ', 'ML', 'W163 320 LUXURY 4x4', 2002, '77274.00', '3.2', 'MULTI POINT F/INJ', '83.0', 160, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15006', 'MERCEDES-BENZ', 'C180', 'W203 KOMPRESSOR AVANTGARDE', 2002, '61400.00', '1.8', 'SUPERCHARGED MPFI', '70.0', 105, 5, '5ATS', '4D SEDAN', 'RWD', 2715),
('V15007', 'MERCEDES-BENZ', 'ML', '320 LUXURY 4x4', 2000, '72900.00', '3.2', 'MULTI POINT F/INJ', '70.0', 160, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15008', 'MERCEDES-BENZ', 'SLK230', 'KOMPRESSOR', 2000, '95380.00', '2.3', 'SUPERCHARGED MPFI', '53.0', 142, 2, '5A', '2D CONVERTIBLE', 'RWD', 2400),
('V15009', 'MERCEDES-BENZ', 'ML', 'W163 500 LUXURY 4x4', 2004, '99900.00', '5.0', 'MULTI POINT F/INJ', '83.0', 215, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15010', 'MERCEDES-BENZ', '300', 'TE', 1991, '124500.00', '3.0', 'ELECTRONIC F/INJ', '70.0', 135, 7, '4A', '4D WAGON', 'RWD', 2800),
('V15000', 'ALFA ROMEO', '147', 'GTA MONZA', 2005, '59990.00', '3.2', 'MULTI POINT F/INJ', '63.0', 184, 5, '6M', '3D HATCHBACK', 'FWD', 2546),
('V15020', 'MERCEDES-BENZ', '280', 'W126 SE', 1982, '55979.00', '2.7', 'ELECTRONIC F/INJ', '90.0', 125, 5, '4A', '4D SEDAN', 'RWD', 2935),
('V15022', 'MERCEDES-BENZ', 'ML', '320 LUXURY 4x4', 1999, '73400.00', '3.2', 'MULTI POINT F/INJ', '70.0', 160, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15023', 'MERCEDES-BENZ', 'ML', 'W163 270 CDI LUXURY 4x4', 2003, '77274.00', '2.7', 'TURBO CDI', '83.0', 120, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15024', 'MERCEDES-BENZ', 'E280', 'W210 ELEGANCE', 1999, '112400.00', '2.8', 'MULTI POINT F/INJ', '80.0', 150, 5, '5ASeq', '4D SEDAN', 'RWD', 2833),
('V15025', 'MERCEDES-BENZ', 'VITO', '115CDI COMPACT CREW CAB', 2005, '48380.00', '2.1', 'DIESEL TURBO F/INJ', '75.0', 110, 5, '5A', '5D VAN', 'RWD', 3200),
('V15026', 'MERCEDES-BENZ', '180', 'E LIMITED EDITION', 1993, '47115.00', '1.8', 'ELECTRONIC F/INJ', '55.0', 82, 5, '4A', '4D SEDAN', 'RWD', 2665),
('V15027', 'MERCEDES-BENZ', 'A160', 'AVANTGARDE', 1999, '41400.00', '1.6', 'MULTI POINT F/INJ', '54.0', 75, 5, '5MSeq', '5D HATCHBACK', 'FWD', 2423),
('V15028', 'MERCEDES-BENZ', 'ML', '270 CDI 4x4', 2001, '64900.00', '2.7', 'TURBO CDI', '70.0', 120, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15029', 'MERCEDES-BENZ', 'A170', 'W169 ELEGANCE', 2006, '42400.00', '1.7', 'MULTI POINT F/INJ', '54.0', 85, 5, 'CVT7', '5D HATCHBACK', 'FWD', 2568),
('V15030', 'MERCEDES-BENZ', '300', 'W124 E', 1986, '79296.00', '3.0', 'ELECTRONIC F/INJ', '70.0', 135, 5, '4A', '4D SEDAN', 'RWD', 2800),
('V15011', 'MERCEDES-BENZ', 'C200', 'W202 ELEGANCE', 2000, '64580.00', '2.0', 'MULTI POINT F/INJ', '62.0', 100, 5, '5A', '4D SEDAN', 'RWD', 2690),
('V15040', 'MERCEDES-BENZ', '230', 'W124 E', 1988, '87100.00', '2.3', 'ELECTRONIC F/INJ', '70.0', 97, 5, '4A', '4D SEDAN', 'RWD', 2800),
('V15041', 'MERCEDES-BENZ', '180', 'E LIMITED EDITION', 1992, '45690.00', '1.8', 'ELECTRONIC F/INJ', '55.0', 82, 5, '4A', '4D SEDAN', 'RWD', 2665),
('V15043', 'MERCEDES-BENZ', '380', 'SEL', 1982, '68795.00', '3.8', 'ELECTRONIC F/INJ', '90.0', 145, 5, '4A', '4D SEDAN', 'RWD', 3075),
('V15044', 'MERCEDES-BENZ', 'A190', 'W168 LWB ELEGANCE', 2004, '42900.00', '1.9', 'MULTI POINT F/INJ', '54.0', 92, 5, '5MSeq', '5D HATCHBACK', 'FWD', 2593),
('V15045', 'MERCEDES-BENZ', '180', 'E LIMITED EDITION', 1994, '47115.00', '1.8', 'ELECTRONIC F/INJ', '55.0', 82, 5, '4A', '4D SEDAN', 'RWD', 2665),
('V15046', 'MERCEDES-BENZ', 'A190', 'W168 AVANTGARDE', 2001, '41230.00', '1.9', 'MULTI POINT F/INJ', '54.0', 92, 5, '5MSeq', '5D HATCHBACK', 'FWD', 2423),
('V15047', 'MERCEDES-BENZ', 'CLK230', 'KOMP ELEGANCE', 2000, '111580.00', '2.3', 'SUPERCHARGED MPFI', '62.0', 142, 4, '5A', '2D CABRIOLET', 'RWD', 2690),
('V15048', 'MERCEDES-BENZ', 'A190', 'W168 AVANTGARDE', 2000, '41230.00', '1.9', 'MULTI POINT F/INJ', '54.0', 92, 5, '5MSeq', '5D HATCHBACK', 'FWD', 2423),
('V15049', 'MERCEDES-BENZ', 'ML', 'W163 500 LUXURY 4x4', 2001, '98500.00', '5.0', 'MULTI POINT F/INJ', '83.0', 215, 5, '5ATS', '4D WAGON', '4WD', 2820),
('V15050', 'MERCEDES-BENZ', 'E500', '211 AVANTGARDE', 2002, '153900.00', '5.0', 'MULTI POINT F/INJ', '89.0', 225, 5, '5ATSh', '4D SEDAN', 'RWD', 2854),
('V15042', 'MERCEDES-BENZ', 'E55', '211 MY06 UPGRADE AMG', 2006, '225600.00', '5.4', 'SUPERCHARGED MPFI', '80.0', 350, 5, '5ATSh', '4D SEDAN', 'RWD', 2854),
('V15066', 'RENAULT', 'CLIO', 'CAMPUS', 2006, '18990.00', '1.4', 'MULTI POINT F/INJ', '50.0', 72, 5, '5M', '5D HATCHBACK', 'FWD', 2472),
('V15063', 'RENAULT', 'CLIO', 'SPORT', 2002, '33990.00', '2.0', 'MULTI POINT F/INJ', '50.0', 124, 5, '5M', '3D HATCHBACK', 'FWD', 2472),
('V15082', 'RENAULT', 'MEGANE', 'EXPRESSION', 2002, '41490.00', '1.6', 'MULTI POINT F/INJ', '60.0', 79, 4, '5M', '2D CABRIOLET', 'FWD', 2461),
('V15087', 'VOLVO', '8', '50 GLE', 1992, '45690.00', '2.4', 'ELECTRONIC F/INJ', '73.0', 103, 5, '4A', '4D SEDAN', 'FWD', 2665),
('V15068', 'RENAULT', 'SCENIC', 'PRIVILEGE', 2003, '37990.00', '2.0', 'MULTI POINT F/INJ', '60.0', 101, 5, '4A', '5D WAGON', 'FWD', 2580),
('V15088', 'VOLVO', 'XC70', '05 UPGRADE II LIFESTYLE EDITION LE', 2005, '64450.00', '2.5', 'TURBO MPFI', '70.0', 154, 5, '5AG', '4D WAGON', 'AWD', 2761),
('V15081', 'RENAULT', 'MEGANE', 'PRIVILEGE', 2004, '35990.00', '2.0', 'MULTI POINT F/INJ', '60.0', 98, 5, '4A', '4D SEDAN', 'FWD', 2686),
('V15085', 'VOLVO', '7', '40 TURBO', 1989, '65900.00', '2.3', 'TURBO EFI', '82.0', 119, 5, '4A', '4D SEDAN', 'RWD', 2770),
('V15083', 'VOLVO', 'S60', '05 UPGRADE 2.4 20V SE', 2006, '56950.00', '2.4', 'MULTI POINT F/INJ', '70.0', 125, 5, '5A', '4D SEDAN', 'FWD', 2715),
('V15084', 'VOLVO', 'V50', 'MY08 D5', 2008, '47950.00', '2.4', 'DIESEL TURBO F/INJ', '60.0', 132, 5, '5AG', '4D WAGON', 'FWD', 2640),
('V15080', 'RENAULT', '19', 'RT', 1995, '26790.00', '1.7', 'MULTI POINT F/INJ', '55.0', 68, 5, '5M', '5D HATCHBACK', 'FWD', 2540),
('V15100', 'VOLVO', 'S40', 'MY2003 2.0 SE', 2003, '47950.00', '1.9', 'MULTI POINT F/INJ', '60.0', 100, 5, '5A', '4D SEDAN', 'FWD', 2562),
('V15101', 'VOLVO', 'S40', 'MY2001 2.0 SE', 2001, '47950.00', '1.9', 'MULTI POINT F/INJ', '60.0', 100, 5, '5A', '4D SEDAN', 'FWD', 2562),
('V15102', 'VOLVO', '8', '50 GLE', 1994, '47950.00', '2.4', 'ELECTRONIC F/INJ', '73.0', 103, 5, '4A', '4D SEDAN', 'FWD', 2665),
('V15103', 'VOLVO', 'S80', 'T6 SE', 2001, '98950.00', '2.8', 'TWIN TURBO MPFI', '80.0', 200, 5, '4AG', '4D SEDAN', 'RWD', 2791),
('V15104', 'VOLVO', '8', '50 SE', 1997, '59950.00', '2.4', 'MULTI POINT F/INJ', '73.0', 125, 5, '4A', '5D WAGON', 'FWD', 2665),
('V15105', 'VOLVO', 'V40', '2', 1997, '45950.00', '1.9', 'MULTI POINT F/INJ', '60.0', 103, 5, '4A', '5D WAGON', 'FWD', 2550),
('V15107', 'VOLVO', 'XC90', 'MY06 LIFESTYLE EDITION LE', 2006, '69950.00', '2.5', 'TURBO MPFI', '72.0', 154, 7, '5AG', '4D WAGON', 'AWD', 2857),
('V15108', 'VOLVO', 'S40', 'T4', 1998, '53450.00', '1.9', 'TURBO MPFI', '60.0', 147, 5, '5M', '4D SEDAN', 'FWD', 2550),
('V15109', 'VOLVO', '4', '40 GLT', 1994, '40950.00', '2.0', 'ELECTRONIC F/INJ', '60.0', 80, 5, '4A', '4D HATCHBACK', 'FWD', 2503),
('V15110', 'VOLVO', '2', '44 GL', 1979, '11220.00', '2.1', 'FUEL INJECTED', '60.0', 91, 5, '3A', '4D SEDAN', 'RWD', 2640),
('V15089', 'VOLVO', 'V50', 'MY07 2.4 LE', 2007, '47950.00', '2.4', 'MULTI POINT F/INJ', '62.0', 125, 5, '5AG', '4D WAGON', 'FWD', 2640),
('V15121', 'VOLVO', 'S40', 'MY06 T5 AWD', 2006, '54950.00', '2.5', 'TURBO MPFI', '57.0', 162, 5, '5AG', '4D SEDAN', 'AWD', 2640),
('V15125', 'NISSAN', '200', 'S15 SX SPEC S', 2002, '40990.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '6M', '2D COUPE', 'RWD', 2525),
('V15126', 'NISSAN', '200', 'S15 SX SPEC R GT', 2002, '46490.00', '2.0', 'TURBO MPFI', '65.0', 147, 4, '6M', '2D COUPE', 'RWD', 2525);

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
