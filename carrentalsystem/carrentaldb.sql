-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 05, 2018 at 01:24 AM
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
  `cityAddress` varchar(16) DEFAULT NULL,
  `postCodeAddress` int(11) DEFAULT NULL,
  `stateAddress` varchar(3) DEFAULT NULL,
  `DOB` date NOT NULL,
  `driverLicenceNumber` int(11) DEFAULT NULL,
  `occupation` varchar(50) NOT NULL,
  `phoneNumber` bigint(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` text,
  `dateJoined` date DEFAULT NULL,
  `lastLogin` date DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crcapp_customer`
--

INSERT INTO `crcapp_customer` (`customerID`, `firstName`, `lastName`, `streetAddress`, `cityAddress`, `postCodeAddress`, `stateAddress`, `DOB`, `driverLicenceNumber`, `occupation`, `phoneNumber`, `gender`, `email`, `userName`, `password`, `dateJoined`, `lastLogin`) VALUES
('C0011010', 'Jacquelyn', 'S', '7800 Corrinne Court', NULL, NULL, NULL, '1968-02-16', NULL, 'Labour', 111543535016, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011011', 'Curtis', 'L', '1224 Shoenic', NULL, NULL, NULL, '1967-11-14', NULL, 'Labour', 111543535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011012', 'Lauren', 'W', '4785 Scott Street', NULL, NULL, NULL, '1972-01-28', NULL, 'Labour', 717535016, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011013', 'Ian', 'J', '7902 Hudson Ave.', NULL, NULL, NULL, '1972-08-16', NULL, 'Labour', 817535018, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011014', 'Sydney', 'B', '9011 Tank Drive', NULL, NULL, NULL, '1972-05-19', NULL, 'Labour', 431535015, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011015', 'Chloe', 'Y', '244 Willow Pass Road', NULL, NULL, NULL, '1983-02-10', NULL, 'Labour', 208535014, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011016', 'Wyatt', 'H', '9666 Northridge Ct.', NULL, NULL, NULL, '1983-04-18', NULL, 'Labour', 135535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011017', 'Shannon', 'W', '7330 Saddlehill Lane', NULL, NULL, NULL, '1948-06-16', NULL, 'Labour', 111543535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011018', 'Clarence', 'R', '244 Rivewview', NULL, NULL, NULL, '1948-10-19', NULL, 'Labour', 111543535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011019', 'Luke', 'L', '7832 Landing Dr', NULL, NULL, NULL, '1982-03-10', NULL, 'Labour', 262535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011050', 'Alan', 'Z', '2741 Gainborough Dr.', NULL, NULL, NULL, '1955-09-10', NULL, 'Labour', 111543535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011051', 'Daniel', 'J', '8085 Sunnyvale Avenue', NULL, NULL, NULL, '1955-08-14', NULL, 'Labour', 111543535015, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011052', 'Heidi', 'L', '2514 Via Cordona', NULL, NULL, NULL, '1955-08-10', NULL, 'Labour', 111543535016, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011053', 'Ana', 'P', '1660 Stonyhill Circle', NULL, NULL, NULL, '1984-08-10', NULL, 'Labour', 859535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011054', 'Deanna', 'M', '5825 B Way', NULL, NULL, NULL, '1956-03-20', NULL, 'Labour', 111543535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011055', 'Gilbert', 'R', '8811 The Trees Dr.', NULL, NULL, NULL, '1956-03-15', NULL, 'Labour', 111543535012, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011056', 'Michele', 'N', '5464 Janin Pl.', NULL, NULL, NULL, '1957-04-13', NULL, 'Labour', 111543535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011057', 'Carl', 'A', '6930 Lake Nadine Place', NULL, NULL, NULL, '1957-10-21', NULL, 'Labour', 111543535018, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011058', 'Marc', 'D', '6645 Sinaloa', NULL, NULL, NULL, '1958-04-10', NULL, 'Labour', 111543535014, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011059', 'Ashlee', 'A', '8255 Highland Road', NULL, NULL, NULL, '1958-04-13', NULL, 'Labour', 111543535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011111', 'Meredith', 'G', '7610 Northridge Ct.', NULL, NULL, NULL, '1966-02-13', NULL, 'Labour', 111543535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011112', 'Crystal', 'W', '2773 Kirkwood Dr', NULL, NULL, NULL, '1966-09-19', NULL, 'Labour', 111543535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011113', 'Micheal', 'B', '596 Marfargoa Drive', NULL, NULL, NULL, '1966-02-13', NULL, 'Labour', 111543535013, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011114', 'Leslie', 'M', '7941 Cristobal', NULL, NULL, NULL, '1966-05-18', NULL, 'Labour', 111543535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011115', 'Alvin', 'C', '7759 Azalea Avenue', NULL, NULL, NULL, '1966-02-21', NULL, 'Labour', 111543535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011116', 'Clinton', 'C', '7943 Cunha Ct.', NULL, NULL, NULL, '1966-10-10', NULL, 'Labour', 111543535018, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011117', 'April', 'D', '485 Ash Lane', NULL, NULL, NULL, '1965-02-13', NULL, 'Labour', 111543535018, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011119', 'Evan', 'J', '4157 Sierra Ridge', NULL, NULL, NULL, '1939-04-20', NULL, 'Retiree', 111543535018, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011150', 'Russell', 'S', '4755 Easley Drive', NULL, NULL, NULL, '1945-03-25', NULL, 'Retiree', 111543535019, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011151', 'Melinda', 'G', '805 Rainier Dr.', NULL, NULL, NULL, '1946-02-15', NULL, 'Labour', 111543535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011152', 'James', 'W', '6827 Seagull Court', NULL, NULL, NULL, '1980-01-20', NULL, 'Labour', 355535015, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011153', 'Angela', 'J', '8877 Weatherly Drive', NULL, NULL, NULL, '1980-06-13', NULL, 'Labour', 847535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011154', 'Megan', 'W', '6898 Holiday Hills', NULL, NULL, NULL, '1980-08-13', NULL, 'Labour', 918535018, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011155', 'Hunter', 'R', '8356 Mori Court', NULL, NULL, NULL, '1980-01-16', NULL, 'Labour', 891535012, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011156', 'Maria', 'R', '9452 Mariposa Ct.', NULL, NULL, NULL, '1980-02-10', NULL, 'Labour', 158535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011157', 'Hannah', 'L', '1832 Preston Ct.', NULL, NULL, NULL, '1979-06-23', NULL, 'Labour', 974535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011158', 'Jason', 'W', '6771 Bundros Court', NULL, NULL, NULL, '1979-10-18', NULL, 'Labour', 694535017, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011159', 'Brianna', 'H', '6793 Bonifacio St.', NULL, NULL, NULL, '1979-09-20', NULL, 'Labour', 319535018, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011210', 'Edward', 'W', '1039 Adelaide St.', NULL, NULL, NULL, '1952-06-18', NULL, 'Researcher', 229535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011213', 'Stephanie', 'M', '5514 Grant Street', NULL, NULL, NULL, '1953-05-24', NULL, 'Researcher', 293535015, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011214', 'Charles', 'M', '2719 Little Dr', NULL, NULL, NULL, '1953-11-10', NULL, 'Researcher', 389535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011215', 'Ana', 'P', '3114 Arlington Way', NULL, NULL, NULL, '1954-06-13', NULL, 'Researcher', 446535013, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011216', 'Jasmine', 'T', '8328 San Francisco', NULL, NULL, NULL, '1954-05-10', NULL, 'Researcher', 939535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011217', 'Natalie', 'A', '6592 Bent Tree Lane', NULL, NULL, NULL, '1954-02-23', NULL, 'Researcher', 300535015, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011218', 'Olivia', 'B', '3964 Stony Hill Circle', NULL, NULL, NULL, '1954-09-23', NULL, 'Researcher', 414535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011219', 'Charles', 'C', '6871 Bel Air Dr.', NULL, NULL, NULL, '1954-12-11', NULL, 'Researcher', 755535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011250', 'Shannon', 'L', '4185 Keywood Ct.', NULL, NULL, NULL, '1959-03-21', NULL, 'Manager', 111543535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011251', 'Xavier', 'L', '9245 Dantley Way', NULL, NULL, NULL, '1936-07-14', NULL, 'Retiree', 243535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011252', 'Nicholas', 'T', '504 O St.', NULL, NULL, NULL, '1936-06-10', NULL, 'Retiree', 377535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011253', 'José', 'H', '5703 Donald Dr.', NULL, NULL, NULL, '1937-02-18', NULL, 'Retiree', 712535013, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011254', 'Johnathan', 'V', '9430 Versailles Pl', NULL, NULL, NULL, '1937-03-13', NULL, 'Retiree', 494535016, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011255', 'Colin', 'L', '6083 San Jose', NULL, NULL, NULL, '1937-04-14', NULL, 'Retiree', 599535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011256', 'Katelyn', 'H', '7496 Deerfield Dr.', NULL, NULL, NULL, '1937-09-10', NULL, 'Retiree', 249535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011257', 'Jacqueline', 'P', '4076 Northwood Dr', NULL, NULL, NULL, '1937-01-16', NULL, 'Retiree', 796535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011258', 'Xavier', 'H', '2707 Virgil Street', NULL, NULL, NULL, '1937-06-18', NULL, 'Retiree', 559535014, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011259', 'Victoria', 'S', '3623 Barquentine Court', NULL, NULL, NULL, '1969-03-10', NULL, 'Manager', 230535013, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011310', 'Erin', 'S', '7541 Black Point Pl', NULL, NULL, NULL, '1957-07-19', NULL, 'Manager', 233535016, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011311', 'Gabrielle', 'L', '8619 Parkside Dr.', NULL, NULL, NULL, '1957-08-14', NULL, 'Manager', 783535017, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011312', 'Sara', 'R', '7375 Kipling Court', NULL, NULL, NULL, '1957-04-13', NULL, 'Manager', 296535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011313', 'Trevor', 'J', '4697 Yosemite Dr.', NULL, NULL, NULL, '1957-02-10', NULL, 'Manager', 120535012, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011314', 'Mya', 'F', '8439 Rio Grande Drive', NULL, NULL, NULL, '1957-12-13', NULL, 'Manager', 522535014, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011315', 'Hailey', 'W', '6321 Maya', NULL, NULL, NULL, '1957-10-13', NULL, 'Manager', 767535015, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011316', 'Luke', 'A', '419 Deermeadow Way', NULL, NULL, NULL, '1957-11-20', NULL, 'Manager', 786535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011317', 'Victoria', 'R', '9268 Keller Ridge', NULL, NULL, NULL, '1956-09-20', NULL, 'Manager', 663535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011318', 'Jessica', 'W', '1652 Willcrest Circle', NULL, NULL, NULL, '1956-10-16', NULL, 'Manager', 702535018, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011319', 'Jade', 'B', '8119 Northridge Ct', NULL, NULL, NULL, '1941-04-10', NULL, 'Retiree', 819535016, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011350', 'Cara', 'Z', '7280 Greendell Pl', NULL, NULL, NULL, '1941-01-24', NULL, 'Retiree', 111543535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011351', 'Anne', 'R', '7113 Eastgate Ave.', NULL, NULL, NULL, '1943-04-16', NULL, 'Retiree', 111543535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011352', 'Raymond', 'R', '24, impasse Ste-Madeleine', NULL, NULL, NULL, '1944-03-10', NULL, 'Retiree', 111543535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011353', 'Carrie', 'O', '1883 Cowell Rd.', NULL, NULL, NULL, '1945-06-23', NULL, 'Retiree', 111543535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011354', 'Deanna', 'S', 'Dunckerstr 22525', NULL, NULL, NULL, '1946-02-13', NULL, 'Manager', 111543535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011355', 'Roberto', 'G', '3545 Chickpea Ct.', NULL, NULL, NULL, '1946-12-18', NULL, 'Manager', 111543535012, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011356', 'Terrence', 'C', '6613 Thornhill Place', NULL, NULL, NULL, '1984-05-10', NULL, 'Manager', 111543535018, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011357', 'Ramon', 'Y', '3245 Vista Oak Dr.', NULL, NULL, NULL, '1983-03-13', NULL, 'Manager', 111543535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011358', 'Cynthia', 'M', '6757 Pamplona Ct.', NULL, NULL, NULL, '1982-11-23', NULL, 'Manager', 111543535018, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011359', 'Jarrod', 'P', '7657 H St.', NULL, NULL, NULL, '1982-09-14', NULL, 'Manager', 111543535015, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011410', 'Maurice', 'G', '15, avenue de la Gare', NULL, NULL, NULL, '1972-08-15', NULL, 'Manager', 111543535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011411', 'Devin', 'R', 'Postenweg 2428', NULL, NULL, NULL, '1958-02-21', NULL, 'Manager', 111543535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011412', 'Sydney', 'B', 'Postfach 99 92 92', NULL, NULL, NULL, '1958-04-19', NULL, 'Manager', 111543535015, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011413', 'Megan', 'S', '8192 Seagull Court', NULL, NULL, NULL, '1958-04-25', NULL, 'Manager', 111543535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011414', 'Ian', 'R', '726 W. Buchanan Rd.', NULL, NULL, NULL, '1958-03-28', NULL, 'Manager', 111543535011, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011415', 'Randy', 'S', 'Ro?str 5538', NULL, NULL, NULL, '1948-06-15', NULL, 'Manager', 111543535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011416', 'Katrina', 'B', '8205, rue Malar', NULL, NULL, NULL, '1949-03-29', NULL, 'Manager', 111543535015, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011417', 'Lacey', 'Z', '4, rue de Linois', NULL, NULL, NULL, '1949-02-16', NULL, 'Manager', 111543535017, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011418', 'Rafael', 'H', 'Zeiter Weg 7765', NULL, NULL, NULL, '1949-02-19', NULL, 'Manager', 111543535015, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011419', 'Kyle', 'S', '9381 Alpine Rd.', NULL, NULL, NULL, '1949-02-28', NULL, 'Manager', 111543535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011459', 'Tasha', 'D', '9627 Kendall Rd', NULL, NULL, NULL, '1976-10-23', NULL, 'Nurse', 111543535017, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011510', 'Seth', 'R', '5989 Concord Ave', NULL, NULL, NULL, '1957-07-23', NULL, 'Nurse', 199535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011511', 'Caleb', 'P', '2324 Cherry Street', NULL, NULL, NULL, '1957-06-24', NULL, 'Nurse', 786535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011512', 'Natalie', 'C', '3481 Broadmoor Drive', NULL, NULL, NULL, '1958-08-23', NULL, 'Nurse', 178535014, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011513', 'Alyssa', 'H', '5780 Conifer Terrace', NULL, NULL, NULL, '1958-09-10', NULL, 'Nurse', 805535018, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011514', 'Dalton', 'D', '8033 Danesta Dr.', NULL, NULL, NULL, '1958-04-10', NULL, 'Nurse', 994535015, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011515', 'Shannon', 'H', '4679 Duke Way', NULL, NULL, NULL, '1958-02-15', NULL, 'Nurse', 458535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011516', 'Mya', 'G', '8826 Fine Drive', NULL, NULL, NULL, '1958-10-13', NULL, 'Nurse', 211535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011517', 'Katherine', 'B', '8761 Dancing Court', NULL, NULL, NULL, '1958-06-10', NULL, 'Nurse', 802535013, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011518', 'Edward', 'W', '2747 Carmel Dr.', NULL, NULL, NULL, '1959-05-20', NULL, 'Nurse', 446535017, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011519', 'Jerome', 'N', '9537 Ridgewood Drive', NULL, NULL, NULL, '1959-03-20', NULL, 'Nurse', 934535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011535', 'Alexandria', 'H', '11, rue de la Cavalerie', NULL, NULL, NULL, '1930-07-18', NULL, 'Retiree', 111543535018, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011550', 'Deb', 'T', '7553 Harness Circle', NULL, NULL, NULL, '1972-08-18', NULL, 'Nurse', 111543535012, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011551', 'Shannon', 'A', '268, avenue de l?Europe', NULL, NULL, NULL, '1971-05-15', NULL, 'Nurse', 111543535015, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011552', 'Eddie', 'R', 'Heiderplatz 662', NULL, NULL, NULL, '1971-05-10', NULL, 'Nurse', 111543535015, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011553', 'Sharon', 'L', '6804 Coldwater Drive', NULL, NULL, NULL, '1971-09-19', NULL, 'Nurse', 111543535011, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011554', 'Sydney', 'S', '88, avenue de l? Union Centrale', NULL, NULL, NULL, '1930-09-18', NULL, 'Retiree', 111543535019, 'F', NULL, NULL, NULL, NULL, NULL),
('C0011556', 'Lucas', 'E', '3663 A St.', NULL, NULL, NULL, '1971-05-24', NULL, 'Nurse', 111543535015, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011557', 'Felicia', 'R', '9557 Steven Circle', NULL, NULL, NULL, '1971-01-25', NULL, 'Nurse', 111543535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011558', 'Ivan', 'M', '5086 Nottingham Place', NULL, NULL, NULL, '1971-08-11', NULL, 'Nurse', 111543535019, 'M', NULL, NULL, NULL, NULL, NULL),
('C0011559', 'Frederick', 'S', 'Rotth?user Weg 636', NULL, NULL, NULL, '1971-12-26', NULL, 'Nurse', 111543535011, 'M', NULL, NULL, NULL, NULL, NULL);

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
  `password` text NOT NULL,
  `userType` varchar(16) NOT NULL,
  `dateJoined` date NOT NULL,
  `lastLogin` date NOT NULL,
  `storeID_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `crcapp_employee_storeID_id_df63687d` (`storeID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crcapp_employee`
--

INSERT INTO `crcapp_employee` (`employeeID`, `firstName`, `lastName`, `streetAddress`, `cityAddress`, `postCodeAddress`, `stateAddress`, `DOB`, `TFN`, `phoneNumber`, `email`, `userName`, `password`, `userType`, `dateJoined`, `lastLogin`, `storeID_id`) VALUES
('E00001', 'Dev', 'Team', ' 2 George St', 'Brisbane ', 4000, 'QLD', '2018-08-05', 1, 1000000, 'admin@admin.com', 'dev', 'argon2$argon2i$v=19$m=512,t=2,p=2$dHJmeFhiNm5qd0s1$EPUBcr3FsVh4dLom/iytXw', 'Developer', '2018-09-05', '2018-09-05', NULL);

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
('S0001', 'Alexandria Store', 1115435350162, '3761 N. 14th St', 'Alexandria      ', 'New South Wales'),
('S0002', 'Coffs Harbour Store', 1115435350110, '2243 W St.', 'Coffs Harbour   ', 'New South Wales'),
('S0003', 'Darlinghurst Store', 1115435350184, '5844 Linden Land', 'Darlinghurst    ', 'New South Wales'),
('S0004', 'Goulburn Store', 1115435350162, '1825 Village Pl.', 'Goulburn        ', 'New South Wales'),
('S0005', 'Lane Cove Store', 1115435350131, '7553 Harness Circle', 'Lane Cove       ', 'New South Wales'),
('S0006', 'Lavender Bay Store', 1115435350151, '7305 Humphrey Drive', 'Lavender Bay    ', 'New South Wales'),
('S0007', 'Malabar Store', 1115435350184, '2612 Berry Dr', 'Malabar         ', 'New South Wales'),
('S0008', 'Matraville Store', 1115435350126, '942 Brook Street', 'Matraville      ', 'New South Wales'),
('S0009', 'Milsons Point Store', 1115435350164, '624 Peabody Road', 'Milsons Point   ', 'New South Wales'),
('S0010', 'Newcastle Store', 1115435350110, '3839 Northgate Road', 'Newcastle       ', 'New South Wales'),
('S0011', 'North Ryde Store', 1115435350169, '7800 Corrinne Court', 'North Ryde      ', 'New South Wales'),
('S0012', 'North Sydney Store', 1115435350117, '1224 Shoenic', 'North Sydney    ', 'New South Wales'),
('S0013', 'Port Macquarie Store', 7175350164, '4785 Scott Street', 'Port Macquarie  ', 'New South Wales'),
('S0014', 'Rhodes Store', 8175350185, '7902 Hudson Ave.', 'Rhodes          ', 'New South Wales'),
('S0015', 'Silverwater Store', 4315350156, '9011 Tank Drive', 'Silverwater     ', 'New South Wales'),
('S0016', 'Springwood Store', 2085350142, '244 Willow Pass Road', 'Springwood      ', 'New South Wales'),
('S0017', 'St. Leonards Store', 1355350171, '9666 Northridge Ct.', 'St. Leonards    ', 'New South Wales'),
('S0018', 'Sydney Store', 1115435350195, '7330 Saddlehill Lane', 'Sydney          ', 'New South Wales'),
('S0019', 'Wollongong Store', 1115435350137, '244 Rivewview', 'Wollongong      ', 'New South Wales'),
('S0020', 'Brisbane Store', 2625350112, '7832 Landing Dr', 'Brisbane        ', 'Queensland'),
('S0021', 'Caloundra Store', 5505350163, '7156 Rose Dr.', 'Caloundra       ', 'Queensland'),
('S0022', 'East Brisbane Store', 6225350158, '8148 W. Lake Dr.', 'East Brisbane   ', 'Queensland'),
('S0023', 'Gold Coast Store', 5895350185, '1769 Nicholas Drive', 'Gold Coast      ', 'Queensland'),
('S0024', 'Hawthorne Store', 4525350188, '4499 Valley Crest', 'Hawthorne       ', 'Queensland'),
('S0025', 'Hervey Bay Store', 7465350186, '8734 Oxford Place', 'Hervey Bay      ', 'Queensland'),
('S0026', 'Rockhampton Store', 1115435350178, '2596 Franklin Canyon Road', 'Rockhampton     ', 'Queensland'),
('S0027', 'Townsville Store', 1115435350131, '8211 Leeds Ct.', 'Townsville      ', 'Queensland'),
('S0028', 'Cloverdale Store', 1115435350184, '213 Valencia Place', 'Cloverdale      ', 'South Australia'),
('S0029', 'Findon Store', 1115435350116, '9111 Rose Ann Ave', 'Findon          ', 'South Australia'),
('S0030', 'Perth Store', 1115435350146, '6385 Mark Twain', 'Perth           ', 'South Australia'),
('S0031', 'Hobart Store', 1115435350182, '636 Vine Hill Way', 'Hobart          ', 'Tasmania'),
('S0032', 'Bendigo Store', 1115435350195, '6465 Detroit Ave.', 'Bendigo         ', 'Victoria'),
('S0033', 'Cranbourne Store', 1115435350169, '626 Bentley Street', 'Cranbourne      ', 'Victoria'),
('S0034', 'Geelong Store', 1115435350137, '5927 Rainbow Dr', 'Geelong         ', 'Victoria'),
('S0035', 'Melbourne Store', 1115435350136, '5167 Condor Place', 'Melbourne       ', 'Victoria'),
('S0036', 'Melton Store', 1115435350177, '1873 Mt. Whitney Dr', 'Melton          ', 'Victoria'),
('S0037', 'Seaford Store', 1155350183, '3981 Augustine Drive', 'Seaford         ', 'Victoria'),
('S0038', 'South Melbourne Store', 2295350112, '8915 Woodside Way', 'South Melbourne ', 'Victoria'),
('S0039', 'Sunbury Store', 1115435350114, '8357 Sandy Cove Lane', 'Sunbury         ', 'Victoria'),
('S0040', 'Warrnambool Store', 1115435350183, '9353 Creekside Dr.', 'Warrnambool     ', 'Victoria');

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
