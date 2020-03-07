-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2020 at 08:04 AM
-- Server version: 10.2.25-MariaDB-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thewor87_auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `role` varchar(10) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `role`, `updationDate`) VALUES
(5, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Abdula Alshaya', 'Admin', '0000-00-00 00:00:00'),
(8, 'Aalshaya', '3efed5e38bb0106f197127e7582afd01', 'Abdulla Al-Shaya', 'User', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ahmed_user`
--

CREATE TABLE `ahmed_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmcode` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ahmed_user`
--

INSERT INTO `ahmed_user` (`id`, `firstname`, `lastname`, `mobile`, `password`, `confirmcode`, `status`, `avatar`) VALUES
(3, '123', '123', '+1 123-456-7890', '123', 'off', '', ''),
(9, 'Mohamed', 'Wagih', '+966 59 556 4555', '123', 'off', '', ''),
(14, 'ahmed', 'admin', '+966 56 995 8262', '12345', 'off', 'use', ''),
(15, 'test', 'test', '+966 50 899 0856', '12345', 'off', '', ''),
(16, 'qwe', 'wer', '+966', '+966', 'off', '', ''),
(17, 'xiangyi', 'yin', '+966 2 222 2222', '123', 'off', 'use', ''),
(20, 'qqq', 'www', '+966 1 111 11', '111', 'off', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `anas_admin`
--

CREATE TABLE `anas_admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `full_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 NOT NULL,
  `allow_status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_avatar` longtext CHARACTER SET utf8 NOT NULL,
  `role` varchar(10) CHARACTER SET utf8 NOT NULL,
  `edituser` varchar(10) CHARACTER SET utf8 NOT NULL,
  `addrestaurant` varchar(10) CHARACTER SET utf8 NOT NULL,
  `editrestaurant` varchar(10) CHARACTER SET utf8 NOT NULL,
  `addfood` varchar(10) CHARACTER SET utf8 NOT NULL,
  `editfood` varchar(10) CHARACTER SET utf8 NOT NULL,
  `addspecialoffer` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_admin`
--

INSERT INTO `anas_admin` (`id`, `user_name`, `email`, `full_name`, `password`, `phone_number`, `allow_status`, `user_avatar`, `role`, `edituser`, `addrestaurant`, `editrestaurant`, `addfood`, `editfood`, `addspecialoffer`) VALUES
(1, 'admin', 'ele007@hotmail.com', 'test admin test', '12345', '123123123', '1', '', 'admin', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(2, 'test', 'tests@a.com', 'test app', '12345', '123123123', '1', '', 'user', 'yes', 'yes', 'no', 'yes', 'yes', 'yes'),
(3, 'joe', 'a@gmail.com', 'joe doe', '12345', '123456789', '1', '', 'user', 'no', 'yes', 'yes', 'no', 'no', 'no'),
(4, 'testap', 'a@gmail.com', 'joe doe', '12345', '123456789', '0', '', 'user', 'no', 'no', 'no', 'yes', 'yes', 'no'),
(6, 'adfadfadfa', 'adf@gmail.com', 'testetset', '12345', '123123123', '0', '', 'user', 'yes', 'no', 'yes', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `anas_admob`
--

CREATE TABLE `anas_admob` (
  `id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_admob`
--

INSERT INTO `anas_admob` (`id`, `image`) VALUES
(1, 'image/admob/admob1017:58:18.jpg'),
(2, 'image/admob/admob2.jpg'),
(3, 'image/admob/admob3.jpg'),
(4, 'image/admob/admob4.jpg'),
(5, 'image/admob/admob5.jpg'),
(6, 'image/admob/admob6.jpg'),
(7, 'image/admob/admob7.jpg'),
(8, 'image/admob/admob8.jpg'),
(9, 'image/admob/admob9.jpg'),
(10, 'image/admob/admob1008:54:18.jpg'),
(11, 'image/admob/admob11.jpg'),
(12, 'image/admob/admob12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `anas_billing`
--

CREATE TABLE `anas_billing` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `paydate` varchar(20) CHARACTER SET utf8 NOT NULL,
  `transaction` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_billing`
--

INSERT INTO `anas_billing` (`id`, `userid`, `paydate`, `transaction`, `amount`, `type`) VALUES
(2, 1, '2019/07/25', 'Invite Friends', 10, 'income'),
(3, 1, '2019/07/25', 'Invite Friends', 10, 'income'),
(5, 1, '2019/07/25', 'Upgrade Membership', 4.99, 'spent'),
(6, 1, '2019/07/26', 'Upgrade Membership', 4.99, 'spent'),
(7, 1, '2019/07/30', 'Upgrade Membership', 4.99, 'spent'),
(8, 1, '2019/07/30', 'Diposite', 20, 'income'),
(9, 1, '2019/07/30 12:43:39', 'Deposite', 21, 'income'),
(10, 1, '2019/07/30 14:50:50', 'Deposite', 80, 'income'),
(11, 1, '2019-08-07 22:21:17', 'Deposite From Local Pay', 12, 'income'),
(12, 1, '2019-08-07 22:21:54', 'Deposite From Local Pay', 12, 'income'),
(13, 1, '2019-08-07 22:22:03', 'Deposite From Local Pay', 12, 'income'),
(17, 1, '2019-08-07 22:35:35', 'Deposite From Local Pay', 12, 'income'),
(18, 1, '2019-08-07 22:36:17', 'Deposite From Local Pay', 12, 'income'),
(20, 1, '2019-08-07 22:52:26', 'Deposite From Local Pay', 12, 'income'),
(22, 1, '2019-08-08', 'Upgrade Membership', 4.99, 'spent'),
(23, 1, '2019-08-13 15:38:23', 'Deposite', 50, 'income'),
(24, 1, '2019-08-13 15:44:33', 'Upgrade Membership', 4.99, 'spent'),
(28, 19, '2019-08-18', 'Invite Friends', 10, 'income'),
(29, 25, '2019-08-18', 'Invite Friends', 10, 'income'),
(30, 25, '2019-08-19 02:32:38', 'Deposite From Local Pay', 60, 'income'),
(31, 25, '2019-08-21 00:56:57', 'Upgrade Membership', 4.99, 'spent'),
(32, 1, '2019-09-01 17:51:38', 'Upgrade Membership', 4.99, 'spent'),
(33, 26, '2019-09-05 13:11:24', 'Invite friend', 9.99, 'income'),
(34, 27, '2019-09-05 13:11:24', 'Gift from Invite', 9.99, 'income'),
(35, 1, '2019-10-24 22:09:33', 'Deposite', 2222, 'income'),
(36, 1, '2019-10-24 22:17:12', 'Deposite', 222, 'income'),
(37, 1, '2019-10-24 22:18:39', 'Deposite', 200, 'income'),
(38, 1, '2019-10-24 22:19:28', 'Deposite', 200, 'income'),
(39, 1, '2019-10-24 22:21:46', 'Deposite', 200, 'income');

-- --------------------------------------------------------

--
-- Table structure for table `anas_coupon`
--

CREATE TABLE `anas_coupon` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_coupon`
--

INSERT INTO `anas_coupon` (`id`, `userid`, `foodid`) VALUES
(46, 25, 23),
(53, 1, 9),
(43, 25, 18),
(52, 1, 5),
(45, 19, 23),
(42, 25, 15),
(41, 25, 13),
(40, 25, 9),
(51, 1, 2),
(56, 1, 18),
(55, 1, 15),
(57, 1, 19),
(66, 25, 36),
(100000, 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `anas_coupon_history`
--

CREATE TABLE `anas_coupon_history` (
  `id` int(11) NOT NULL,
  `couponid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `usedate` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_coupon_history`
--

INSERT INTO `anas_coupon_history` (`id`, `couponid`, `userid`, `foodid`, `usedate`) VALUES
(2, 5, 1, 2, '2019/07/25'),
(3, 13, 1, 9, '2019/07/25'),
(4, 12, 1, 9, '2019/07/25'),
(5, 9, 1, 9, '2019/07/25'),
(6, 18, 1, 2, '2019-08-08'),
(7, 23, 1, 2, '2019-08-13'),
(8, 29, 1, 5, '2019-08-13'),
(9, 38, 25, 2, '2019-08-21'),
(10, 0, 25, 2, '2019-08-21'),
(11, 39, 25, 5, '2019-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `anas_favorite`
--

CREATE TABLE `anas_favorite` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_favorite`
--

INSERT INTO `anas_favorite` (`id`, `userid`, `foodid`) VALUES
(3, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `anas_food`
--

CREATE TABLE `anas_food` (
  `id` int(11) NOT NULL,
  `restaurantid` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `arname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `ardescription` text CHARACTER SET utf8 NOT NULL,
  `arneeddescription` text CHARACTER SET utf8 NOT NULL,
  `needdescription` text CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_food`
--

INSERT INTO `anas_food` (`id`, `restaurantid`, `name`, `arname`, `image`, `description`, `ardescription`, `arneeddescription`, `needdescription`, `status`) VALUES
(2, 2, 'Fatteh', '', 'image/food/2Fatteh05:19:30.jpg', 'This food is very good2', '', '', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish    ', 'set'),
(5, 2, 'Om Ali', '', 'image/food/2OmAli.jpg', 'This food is very good5', '', '', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish   ', 'set'),
(9, 2, 'Qatayef', '', 'image/food/2Qatayef07:52:51.jpg', 'This food is very good9', '', '', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish    ', 'set'),
(13, 11, 'testfood', '', 'image/food/11testfood.jpg', 'testfood123123', '', '', 'testfoodoofd 123123  ', 'set'),
(15, 13, 'fadssadf', '', 'image/food/13fadssadf05:21:27.jpg', 'sadfasdfasf', '', '', ' asdfasdf  ', 'unset'),
(18, 12, 'big bread', '', 'image/food/12big bread07:56:45.jpg', 'This is a test', '', '', 'this is a test ', ''),
(19, 20, 'Burger', 'ضحصخثعثغق', 'image/food/20Burger09:43:09.jpg', 'Buy 1 burger get 1 free', 'شمسنيتبالايبتينسممش', 'ئوءةىؤلالارءىءةئ ', ' Approximate saving  ', ''),
(36, 2, 'testenglishfood', 'شيبشيب', 'image/food/2testenglishfood19:42:18.jpg', 'adfadfadfadfadfa dfadfadfadfadfadfadfadfadfadfad fadfadfadfadfad fadfadfadfadfadfadfadfa dfadfadfadfadfad fadfadfadfa dfadfadf adfadf', 'شيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيب', 'شيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيب ', ' adfadfadfadfadfadfadfad fadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadf\r\nadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadf adfadfadfadfadfadfadfadfadfadfadfadfadfad fadfadfadfadfadfadfadfadfadf ', 'set');

-- --------------------------------------------------------

--
-- Table structure for table `anas_restaurant`
--

CREATE TABLE `anas_restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `arname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pin` varchar(10) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `araddress` varchar(100) CHARACTER SET utf8 NOT NULL,
  `position` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `opentime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `ardescription` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_restaurant`
--

INSERT INTO `anas_restaurant` (`id`, `name`, `arname`, `pin`, `image`, `logo`, `address`, `araddress`, `position`, `phone`, `opentime`, `description`, `ardescription`) VALUES
(2, 'Zitouni', 'فثسف', '1234', 'image/restaurant/+1234567890.jpg', 'image/restaurantlogo/+123456789023:07:37.jpg', 'Garden', 'فثسفف', '25.258145,46.535955', '+1234567890', '09:00 ~ 22:30', '    Popular for its america food, Chili\'s has become the go-to place where family and friends can gather over a homemade quality food', 'فثسفف'),
(11, 'test1', 'ضحصخ', '1234', 'image/restaurant/+12341234507:51:30.jpg', 'image/restaurantlogo/+123412345.jpg', 'test', 'شمسنيت', '0.01234,0.12345', '+123412345', '02:00~08:00', '    Popular for its america food, Chili\'s has become the go-to place where family and friends can gather over a homemade quality food', 'ئةءىؤلارلار'),
(12, 'testres', 'شمسنيتبا', '1235', 'image/restaurant/+123456671.jpg', 'image/restaurantlogo/+123456671.jpg', 'test address', 'ضحصخثهقعفغ', '123123,123123', '+123456671', '00:00~00:00', '    Popular for its america food, Chili\'s has become the go-to place where family and friends can gather over a homemade quality food', 'ئةءىؤلارلارؤلاىءىءة'),
(13, 'Egypt Res', 'ئةءىؤلارلا', '2347', 'image/restaurant/+2023452345223:11:06.jpg', 'image/restaurantlogo/+2023452345223:11:06.jpg', 'mo', 'ضحصخيقغفغ', '0.00123,0.0323', '+20234523452', '08:00~14:30', 'tetstetsetsetsetsetsetsetsetsetsetsetestsetestessest', 'شمنستياباب'),
(20, 'TGI Fridays', 'حضخصهثعق', '1234', 'image/restaurant/0101646233109:41:19.jpg', 'image/restaurantlogo/0101646233109:41:19.jpg', 'Americana plaza zayed', 'مشنستيا', '30.0277042,31.0161078', '01016462331', '08:00~20:00', 'Fridays very popular', 'مينبتلبا');

-- --------------------------------------------------------

--
-- Table structure for table `anas_session`
--

CREATE TABLE `anas_session` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(20) COLLATE utf8_bin NOT NULL,
  `country` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_session`
--

INSERT INTO `anas_session` (`id`, `user_id`, `time`, `ip`, `country`) VALUES
(1, '1', '2019-08-07 13:36:03', '127.0.0.1', ''),
(2, '1', '2019-08-07 13:42:45', '127.0.0.1', ''),
(3, '1', '2019-08-07 16:31:50', '127.0.0.1', ''),
(4, '1', '2019-08-07 16:33:06', '127.0.0.1', ''),
(5, '2', '2019-08-07 16:33:28', '127.0.0.1', ''),
(6, '1', '2019-08-07 16:47:56', '127.0.0.1', ''),
(7, '1', '2019-08-07 17:45:10', '127.0.0.1', ''),
(8, '1', '2019-08-07 20:28:42', '127.0.0.1', ''),
(9, '1', '2019-08-08 13:59:52', '127.0.0.1', ''),
(10, '1', '2019-08-08 14:23:19', '127.0.0.1', ''),
(11, '1', '2019-08-08 18:36:46', '192.168.200.111', ''),
(12, '1', '2019-08-08 22:45:48', '127.0.0.1', ''),
(13, '1', '2019-08-10 20:32:46', '188.43.136.32', 'Russia'),
(14, '1', '2019-08-10 22:16:15', '197.34.91.79', 'Egypt'),
(15, '1', '2019-08-13 23:39:40', '188.43.136.32', 'Russia'),
(16, '1', '2019-08-14 05:10:10', '188.43.136.32', 'Russia'),
(17, '1', '2019-08-14 05:10:44', '188.43.136.32', 'Russia'),
(18, '1', '2019-08-14 05:10:58', '188.43.136.32', 'Russia'),
(19, '1', '2019-08-14 06:01:51', '188.43.136.32', 'Russia'),
(20, '1', '2019-08-14 06:06:51', '188.43.136.32', 'Russia'),
(21, '1', '2019-08-14 16:18:15', '188.43.136.32', 'Russia'),
(22, '1', '2019-08-14 20:53:07', '188.43.136.32', 'Russia'),
(23, '1', '2019-08-14 20:59:50', '188.43.136.32', 'Russia'),
(24, '1', '2019-08-14 21:16:00', '188.43.136.32', 'Russia'),
(25, '1', '2019-08-14 21:44:00', '188.43.136.32', 'Russia'),
(26, '1', '2019-08-14 22:31:41', '188.43.136.32', 'Russia'),
(27, '1', '2019-08-14 23:05:51', '188.43.136.32', 'Russia'),
(28, '1', '2019-08-15 12:18:13', '188.43.136.32', 'Russia'),
(29, '1', '2019-08-15 23:20:35', '188.43.136.32', 'Russia'),
(30, '1', '2019-08-17 00:30:02', '188.43.136.32', 'Russia'),
(31, '1', '2019-08-17 00:31:58', '188.43.136.32', 'Russia'),
(32, '1', '2019-08-17 00:33:50', '188.43.136.32', 'Russia'),
(33, '1', '2019-08-17 02:05:01', '188.43.136.32', 'Russia'),
(34, '1', '2019-08-17 02:32:29', '188.43.136.32', 'Russia'),
(35, '1', '2019-08-17 03:51:11', '188.43.136.32', 'Russia'),
(36, '1', '2019-08-17 03:59:30', '188.43.136.32', 'Russia'),
(37, '1', '2019-08-17 04:17:14', '188.43.136.32', 'Russia'),
(38, '1', '2019-08-17 04:19:40', '188.43.136.32', 'Russia'),
(39, '1', '2019-08-17 04:23:58', '188.43.136.32', 'Russia'),
(40, '1', '2019-08-17 04:34:26', '188.43.136.32', 'Russia'),
(41, '1', '2019-08-17 05:40:41', '188.43.136.32', 'Russia'),
(42, '1', '2019-08-17 05:41:33', '188.43.136.32', 'Russia'),
(43, '1', '2019-08-17 10:09:20', '188.43.136.32', 'Russia'),
(44, '1', '2019-08-17 10:19:21', '105.86.254.247', 'Egypt'),
(45, '1', '2019-08-17 10:20:17', '105.86.254.247', 'Egypt'),
(46, '1', '2019-08-17 10:21:06', '105.86.254.247', 'Egypt'),
(47, '1', '2019-08-17 10:21:16', '105.86.254.247', 'Egypt'),
(48, '1', '2019-08-17 10:22:32', '105.86.254.247', 'Egypt'),
(49, '1', '2019-08-17 21:46:29', '188.43.136.32', 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `anas_setting`
--

CREATE TABLE `anas_setting` (
  `id` int(11) NOT NULL,
  `monthlypay` float NOT NULL,
  `yearlypay` float NOT NULL,
  `exchangerate` float NOT NULL,
  `userinvite` float NOT NULL,
  `clientinvite` float NOT NULL,
  `contactmobile` varchar(50) COLLATE utf8_bin NOT NULL,
  `contactemail` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_setting`
--

INSERT INTO `anas_setting` (`id`, `monthlypay`, `yearlypay`, `exchangerate`, `userinvite`, `clientinvite`, `contactmobile`, `contactemail`) VALUES
(1, 4.99, 49.9, 0.06, 9.99, 9.99, '+20234234237', 'anasberbar.1998@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `anas_ticket`
--

CREATE TABLE `anas_ticket` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` longtext CHARACTER SET utf8 NOT NULL,
  `senddate` datetime NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_ticket`
--

INSERT INTO `anas_ticket` (`id`, `userid`, `title`, `message`, `senddate`, `status`) VALUES
(2, '1', 'test', 'teststeststsetstsetsetsetsetsetet', '2019-08-06 00:00:00', 'set'),
(3, '1', 'test', 'Test set set', '2019-08-08 16:43:33', 'set'),
(4, '1', 'test', 'Testste', '2019-08-08 22:54:09', ''),
(5, '1', 'test', '66293945', '2019-08-13 15:57:11', 'set'),
(6, '1', 'test', 'Test no', '2019-08-13 15:57:52', 'set');

-- --------------------------------------------------------

--
-- Table structure for table `anas_user`
--

CREATE TABLE `anas_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `role` varchar(10) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `startdate` varchar(20) CHARACTER SET utf8 NOT NULL,
  `expiredate` varchar(20) CHARACTER SET utf8 NOT NULL,
  `promocode` varchar(20) CHARACTER SET utf8 NOT NULL,
  `language` varchar(20) CHARACTER SET utf8 NOT NULL,
  `wallet` float NOT NULL,
  `token` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_user`
--

INSERT INTO `anas_user` (`id`, `name`, `password`, `mobile`, `email`, `role`, `avatar`, `status`, `startdate`, `expiredate`, `promocode`, `language`, `wallet`, `token`) VALUES
(1, 'test', 'test', '+20234234234', 'test@gmail.com', 'user', 'image/profile/IMGtest+12342342345.jpg', 'free', '2019-09-01', '2019-10-01', '66293945', 'English', 3254.11, ''),
(19, 'anas test', '1234567a', '+201144735367', 'anasberbar.1998@hotmail.com', 'user', 'image/profile/default.jpg', 'free', '2019-08-01', '2019-08-14', '66018367', 'English', 10, 'adfadfa'),
(25, 'Nourhan', '1234567a', '+201140746555', '', 'user', 'image/profile/default.jpg', 'free', '2019-08-21', '2019-09-21', '58062808', 'English', 1055.01, ''),
(28, 'fdafds', '12345', '+2012345678', '', 'user', 'image/profile/default.jpg', 'use', '', '2019-09-09 09:24:32', '69396164', 'English', 0, '94c691d04f536152'),
(26, 'xiangyi', '12345', '+20123456789', '', 'user', 'image/profile/default.jpg', 'use', '', '2019-09-05 13:07:58', '37218976', 'English', 9.99, '668f8b8336ac29e9'),
(27, 'xue wen', '12345', '+201234567890', '', 'user', 'image/profile/default.jpg', 'use', '', '2019-09-05 13:11:24', '66640924', 'عربى', 9.99, '548cdeed7c646f94'),
(29, 'erwrww', 'sfsfdsfs', 'erwerw', '', 'user', 'image/profile/erwerw.jpg', 'free', '2019-10-23', '2019-10-23', '12345678', 'English', 32, ''),
(30, '6rtyrygdg', 'sfsfdsfs', '1242424242', '', 'user', 'image/profile/1242424242.jpg', 'free', '2019-10-23', '2019-10-23', '12345678', 'English', 32, ''),
(31, 'kjhgfu', 'sfsdfsff', '8686698789', '', 'user', 'image/profile/8686698789.jpg', 'free', '2019-10-23', '2019-10-23', '12345678', 'English', 32, '');

-- --------------------------------------------------------

--
-- Table structure for table `auction_admin`
--

CREATE TABLE `auction_admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `full_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8 NOT NULL,
  `allow_status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_avatar` longtext CHARACTER SET utf8 NOT NULL,
  `role` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auction_admin`
--

INSERT INTO `auction_admin` (`id`, `user_name`, `email`, `full_name`, `password`, `phone_number`, `allow_status`, `user_avatar`, `role`) VALUES
(1, 'admin', 'aaads@windowslive.com', 'samakatee restaurant', '12345', '+(965)12345678', '1', 'data:image/png;base64,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', 'admin');
INSERT INTO `auction_admin` (`id`, `user_name`, `email`, `full_name`, `password`, `phone_number`, `allow_status`, `user_avatar`, `role`) VALUES
(2, 'test', 'tests@a.com', 'test app', '12345', '123123123', '1', '', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auction_bid_history`
--

CREATE TABLE `auction_bid_history` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auction_bid_history`
--

INSERT INTO `auction_bid_history` (`id`, `date`, `username`, `price`, `productid`) VALUES
(16, '2019/08/13 21:14:01', 'admin', 6666, 95),
(15, '2019/08/13 21:13:24', 'admin', 2334, 96),
(14, '2019/08/13 20:59:12', 'jinzin', 5555, 95),
(13, '2019/08/13 20:58:42', 'jinzin', 1345, 96),
(12, '2019/08/13 20:29:24', 'admin', 134, 96),
(11, '2019/08/13 20:29:14', 'no bid', 45, 97),
(10, '2019/08/13 20:27:24', 'no bid', 123, 96),
(9, '2019/08/13 20:24:38', 'no bid', 55, 95),
(17, '2019/08/13 21:23:27', 'wangming', 56, 97),
(18, '2019/08/13 21:23:39', 'wangming', 4455, 96),
(19, '2019/08/13 21:23:55', 'wangming', 6788, 95);

-- --------------------------------------------------------

--
-- Table structure for table `auction_session`
--

CREATE TABLE `auction_session` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(20) NOT NULL,
  `country` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auction_session`
--

INSERT INTO `auction_session` (`id`, `user_id`, `time`, `ip`, `country`) VALUES
(1, '1', '2019-08-14 02:42:19', '188.43.136.32', 'Russia'),
(2, '1', '2019-08-14 04:11:05', '188.43.136.32', 'Russia'),
(3, '1', '2019-08-14 04:12:10', '188.43.136.32', 'Russia'),
(4, '1', '2019-08-14 04:13:06', '188.43.136.32', 'Russia'),
(5, '1', '2019-08-14 05:57:49', '188.43.136.32', 'Russia'),
(6, '1', '2019-08-14 05:58:16', '185.61.186.157', 'France'),
(7, '1', '2019-08-14 06:59:52', '90.8.133.69', 'France'),
(8, '1', '2019-08-14 16:14:17', '188.43.136.32', 'Russia'),
(9, '1', '2019-08-14 17:13:57', '188.43.136.32', 'Russia'),
(10, '1', '2019-08-14 19:50:11', '90.8.133.69', 'France'),
(11, '1', '2019-09-19 23:51:27', '188.43.136.32', 'Russia'),
(12, '1', '2019-09-19 23:54:52', '188.43.136.32', 'Russia'),
(13, '2', '2019-09-20 00:04:15', '188.43.136.32', 'Russia'),
(14, '2', '2019-09-20 00:06:14', '188.43.136.32', 'Russia'),
(15, '2', '2019-09-20 04:27:02', '188.43.136.32', 'Russia'),
(16, '2', '2019-09-20 17:45:11', '51.36.224.81', 'Saudi Arabia'),
(17, '2', '2019-09-20 18:11:47', '188.43.136.32', 'Russia'),
(18, '2', '2019-09-20 18:50:06', '51.36.224.81', 'Saudi Arabia'),
(19, '1', '2019-09-20 20:03:18', '188.43.136.32', 'Russia'),
(20, '1', '2019-09-20 20:04:02', '188.43.136.32', 'Russia'),
(21, '1', '2019-09-20 20:04:36', '188.43.136.32', 'Russia'),
(22, '1', '2019-09-20 20:06:19', '188.43.136.32', 'Russia'),
(23, '1', '2019-09-20 20:12:55', '188.43.136.32', 'Russia'),
(24, '1', '2019-09-20 20:16:06', '188.43.136.32', 'Russia'),
(25, '1', '2019-09-20 20:16:28', '188.43.136.32', 'Russia'),
(26, '1', '2019-09-20 20:18:25', '188.43.136.32', 'Russia'),
(27, '1', '2019-09-20 20:18:26', '188.43.136.32', 'Russia'),
(28, '1', '2019-09-20 20:19:29', '188.43.136.32', 'Russia'),
(29, '1', '2019-09-20 20:19:55', '188.43.136.32', 'Russia'),
(30, '2', '2019-09-20 21:52:01', '188.43.136.32', 'Russia'),
(31, '2', '2019-09-20 21:55:29', '188.43.136.32', 'Russia'),
(32, '2', '2019-09-21 17:02:34', '188.43.136.32', 'Russia'),
(33, '1', '2019-09-22 21:27:28', '188.43.136.32', 'Russia'),
(34, '1', '2019-09-22 21:27:49', '51.39.10.105', 'Saudi Arabia'),
(35, '1', '2019-09-22 21:29:13', '51.39.10.105', 'Saudi Arabia'),
(36, '1', '2019-09-23 16:56:00', '188.43.136.32', 'Russia'),
(37, '1', '2019-10-06 00:04:02', '188.43.136.32', 'Russia'),
(38, '1', '2019-10-06 00:04:18', '188.43.136.32', 'Russia'),
(39, '1', '2019-10-09 00:13:03', '188.43.136.32', 'Russia'),
(40, '1', '2019-10-09 00:14:13', '185.52.141.251', 'Russia'),
(41, '1', '2019-10-09 00:27:27', '188.43.136.32', 'Russia'),
(42, '1', '2019-10-09 00:42:23', '195.39.162.194', 'Kuwait'),
(43, '1', '2019-10-11 05:39:38', '188.43.136.32', 'Russia'),
(44, '1', '2019-10-11 16:03:51', '188.43.136.32', 'Russia'),
(45, '1', '2019-10-12 06:08:31', '188.43.136.32', 'Russia'),
(46, '1', '2019-10-12 22:36:03', '188.43.136.32', 'Russia'),
(47, '1', '2019-10-14 04:22:25', '188.43.136.32', 'Russia'),
(48, '1', '2019-10-14 15:11:28', '188.43.136.32', 'Russia'),
(49, '1', '2019-10-14 15:46:12', '77.31.212.156', 'Saudi Arabia'),
(50, '1', '2019-10-14 15:58:41', '188.43.136.32', 'Russia'),
(51, '1', '2019-10-14 16:42:28', '188.43.136.32', 'Russia'),
(52, '1', '2019-10-14 20:07:16', '77.31.212.156', 'Saudi Arabia'),
(53, '1', '2019-10-14 22:19:09', '188.43.136.32', 'Russia'),
(54, '1', '2019-10-15 14:47:51', '77.30.224.170', 'Saudi Arabia'),
(55, '1', '2019-10-15 17:20:34', '51.39.196.170', 'Saudi Arabia'),
(56, '1', '2019-10-15 19:26:11', '77.30.224.170', 'Saudi Arabia'),
(57, '1', '2019-10-15 21:31:17', '188.43.136.32', 'Russia'),
(58, '1', '2019-10-16 01:57:26', '188.43.136.32', 'Russia'),
(59, '1', '2019-10-16 15:03:54', '188.43.136.32', 'Russia'),
(60, '1', '2019-10-16 16:12:59', '77.31.206.177', 'Saudi Arabia'),
(61, '1', '2019-10-16 18:52:58', '188.43.136.32', 'Russia'),
(62, '1', '2019-10-24 01:01:34', '51.36.199.105', 'Saudi Arabia'),
(63, '1', '2019-10-28 20:34:54', '188.43.136.32', 'Russia'),
(64, '1', '2019-10-29 05:57:16', '188.43.136.32', 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `auction_transaction`
--

CREATE TABLE `auction_transaction` (
  `id` int(11) NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `transaction` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` float NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auction_transaction`
--

INSERT INTO `auction_transaction` (`id`, `date`, `username`, `transaction`, `amount`, `productid`) VALUES
(1, '2019/08/13 19:21:10', 'admin', 'Contact fee for auction gif', 0.99, 88),
(2, '2019/08/13 19:21:23', 'admin', 'Contact fee for auction now', 0.99, 83),
(3, '2019/08/13 19:21:32', 'admin', 'Contact fee for auction 12314', 0.99, 70),
(4, '2019/08/13 19:23:06', 'admin', 'Contact fee for auction now', 0.99, 83),
(5, '2019/08/13 19:25:33', 'admin', 'Contact fee for auction gif', 0.99, 88),
(6, '2019/08/13 19:29:06', 'admin', 'Contact fee for auction now', 0.99, 83),
(7, '2019/08/13 19:35:12', 'admin', 'Contact fee for auction 12314', 0.99, 70);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(100, 'Bag', 'image/category/cat100.png'),
(101, 'Dress', 'image/category/cat101.png'),
(102, 'Watch', 'image/category/cat102.png'),
(103, 'T-shirt', 'image/category/cat103.png'),
(104, 'Shoes', 'image/category/cat104.png'),
(105, 'Glass', 'image/category/cat105.png'),
(106, 'Blouse', 'image/category/cat106.png'),
(107, 'Bicycle', 'image/category/cat107.png'),
(109, 'womenBag', 'image/category/cat108.png'),
(116, 'Hannah', 'image/category/IMGHannah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `limm_product`
--

CREATE TABLE `limm_product` (
  `id` int(11) NOT NULL,
  `asin` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `originalprice` float NOT NULL,
  `rating` float NOT NULL,
  `reviews` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `description` text NOT NULL,
  `ebook` varchar(255) NOT NULL,
  `manual` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `amazon` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `limm_product`
--

INSERT INTO `limm_product` (`id`, `asin`, `name`, `image`, `price`, `originalprice`, `rating`, `reviews`, `answers`, `description`, `ebook`, `manual`, `video`, `amazon`) VALUES
(1, 'B0136PR5TO', 'Limm Resistance Bands Exercise Loops - 12-inch Premium Workout Bands for Physical Therapy, Rehab, Stretching, Home Fitness, Yoga and More - Bonus EBooks, Instruction Manual, Online Videos & Carry Bag \r\n', 'https://images-na.ssl-images-amazon.com/images/I/81VNHJ-M0ZL._SX679_.jpg', 10.98, 39.96, 4.4, 5346, 123, '  [Your Very Own Personal Home Gym] Bring new life, fun and excitement to your workouts with the \"All-in-one, Ready-to-go, Take-them-anywhere, Gym-in-your-pocket\" Limm Resistance Bands!\r\n  [Effective & Portable] Get fit and sculpt a better body anywhere, without the need for expensive gym memberships, exercise equipment or even having to leave your home. The included carry bag makes it easy to take them with you wherever life takes you.\r\n  [Fun & Easy To Use] Add fun to your workouts and use them, for example, while watching your favorite TV series. As each band has a different resistance, you can increase the intensity of your workout gradually, which makes them perfect for anyone.\r\n  [Outperform] Each resistance band is made of professional grade 100% natural latex (TPE free), is odor free, elastic, durable and will stay flat even after excessive use. No more issues like pinching your skin, snapping, or leaving marks on your clothes.\\n【All You Need】 The included BONUS eBooks, instructions manual, online workout portal and growing online community (IG: BetterWorkouts), provide you with everything you need to succeed. Buy with confidence with our 100% Satisfaction & Lifetime guarantee. ', '', 'https://s3-us-west-2.amazonaws.com/oww-files-public/b/b8/LD_%26_TEC_Manual.pdf', 'https://developers.google.com/training/images/tacoma_narrows.mp4', 'https://www.amazon.com/Limm-Resistance-Bands-Exercise-Loops/dp/B0136PR5TO'),
(2, 'B074DG6XQ3', 'Limm Ab Wheel Roller for Advanced Abdominal Core Exercises and General Fitness - Includes Soft Knee Pad, Storage Bag and Instructions Manual ', 'https://images-na.ssl-images-amazon.com/images/I/818LWlVboYL._SX679_.jpg', 16.87, 0, 4.6, 99, 31, '  ENJOY YOUR BEACH BODY (WITH SIX PACK ABS) - Versatile equipment can tone all areas including back, shoulders, arms, chest, triceps and stomach - including obliques and hip flexors \r\n  AN EASIER WORKOUT - Imagine getting more results with less work...the stable and fluid ab carver with dual adjustable wheels is ergonomic, while the thick knee pad and foam grip handles provide comfort - this allows you to focus on your form and provides better results\r\n  SUITABLE FOR BEGINNER OR ADVANCED FITNESS LEVELS - Whether your goal is to build muscle or burn calories and eliminate belly fat, you will see results and improve overall posture with consistent use (works for both men and women)\r\n  LIGHTWEIGHT AND PORTABLE - Perfect for a home gym, but also convenient enough to travel with - it is like having access to professional quality equipment anywhere and anytime...even in the office\r\n  DURABLE AND HIGH QUALITY - Buy with confidence as the ab wheel is made to last through tough or intense workouts - non-slip rubber wheels are well balanced to provide extra stability ', '', 'https://s3-us-west-2.amazonaws.com/oww-files-public/b/b8/LD_%26_TEC_Manual.pdf', 'https://developers.google.com/training/images/tacoma_narrows.mp4', 'https://www.amazon.com/Limm-Advanced-Abdominal-Exercises-General/dp/B074DG6XQ3'),
(3, 'B015P0PMU2', 'Limm Sport Armband for iPhone 7, iPhone 6s/6, Samsung Galaxy S6/S5 - Water and Sweat Resistant - Best for Running, Sports, Workouts, Cycling - Slim & Comfortable Like No Other ', 'https://images-na.ssl-images-amazon.com/images/I/71z%2BKdkZ9gL._SX679_.jpg', 9.02, 0, 3.7, 55, 8, '  Thinnest, most lightweight and stretchable armband available so you don\'t even feel like you\'re wearing one.\r\n  Two sizes in one with extra covers to prevent pinching, so that you can workout in total comfort.\r\n  Designed to offer greater protection than other armbands against sweat/rain so that you don\'t have to worry about your device.\r\n  Special Anti-slip texture on back, clear/sensitive front cover and reflective strip offer maximum convenience and safety.\r\n  Enhance your workouts with your favorite music and carry your cards, key and money all in one safe place. ', '', 'https://s3-us-west-2.amazonaws.com/oww-files-public/b/b8/LD_%26_TEC_Manual.pdf', 'https://developers.google.com/training/images/tacoma_narrows.mp4', 'https://www.amazon.com/Limm-Armband-iPhone-Samsung-Galaxy/dp/B015P0PMU2'),
(6, 'B01G0SRYM2', 'Limm Premium Quality Crossfit Jump Rope Ultra Speed & Adjustable - Fit for Weight Loss, Boxing, MMA, Muay Thai, Endurance Training, Other Cardio Workouts - with Free eBook & Carry Bag ', 'https://images-na.ssl-images-amazon.com/images/I/81-W2tn-n1L._SX679_.jpg', 11.78, 0, 3.7, 70, 15, '  PREMIUM QUALITY GREAT PRODUCT - This is a perfect Jump Rope for MMA training, gym exercise, home workouts, double unders, and cardio activities. It is also designed for both indoor and outdoor calisthenics. Men and women can use it regardless of age. Even kids can use it but not those below 3 years of age because of the small screws it has.\r\n  EASILY ADJUSTABLE CROSSFIT CABLE ROPE - \"Excellent jump rope. The handles are comfortable, and adjustment of the rope length is quite easy,\" said Cody, user of this product. The rope length is 10 feet and can easily be adjusted according to your desire. The handles are made of plastic and foam to provide a non-slippery grip and to avoid sweating; they\'re 5.7 inches long and not weighted.\r\n  DESIGNED FOR ULTRA SPEED - Another user named Jimmy said that, \"I use this everyday and it is one of the greatest speed ropes I have used.\" Unlike other Jump Ropes on the market, this one is different because it can provide an optimum speed.\r\n  PORTABLE TO PROVIDE GREAT EXPERIENCE - Wherever you are this Speed Jump Rope is able to provide great experience. It is portable and lightweight so you can bring this wherever you want to exercise. \"Very nice rope really smooth,\" said Dmoney.\r\n  LIFETIME WARRANTY FOR ULTIMATE SATISFACTION - At Limm, we prioritize your overall well-being and optimum health through the right fitness activities. In case you are not completely satisfied with your purchase, there is a lifetime and risk-free Money Back Guarantee for you without asking any question. Cart your Speed Cable Jump Rope today and enjoy also our eBook and Carry Bag as freebies! It is totally risk free! ', '', 'https://s3-us-west-2.amazonaws.com/oww-files-public/b/b8/LD_%26_TEC_Manual.pdf', 'https://developers.google.com/training/images/tacoma_narrows.mp4', 'https://www.amazon.com/Limm-Premium-Quality-Crossfit-Adjustable/dp/B01G0SRYM2');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `price`, `product_id`) VALUES
(1, 'option1', '123', 1),
(2, 'option2', '234', 1),
(3, 'option3', '132', 1),
(4, 'option4', '55', 2),
(5, 'option5', '44', 2),
(6, 'option6', '65', 3),
(7, 'option7', '54', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `delivery_date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `orders` text CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(10) COLLATE utf8_bin NOT NULL,
  `latitude` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `delivery_date`, `orders`, `price`, `latitude`, `longitude`, `address`, `type`) VALUES
(2, '29/10/2019  05:40:50', '[{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0}]', '492', '24.709494208861', '46.692421722101', '7452 Muhammad Al Hakim, As Sulimaniyah, Riyadh 12242Â 3730, Saudi Arabia', '0'),
(3, '31/10/2019  06:00:17', '[{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"6\",\"name\":\"option6\",\"price\":\"65\",\"product_id\":\"3\"},{\"id\":\"7\",\"name\":\"option7\",\"price\":\"54\",\"product_id\":\"3\"}],\"option_value\":\"6\",\"product_value\":\"3\",\"option_index\":0,\"product_index\":2},{\"options\":[{\"id\":\"4\",\"name\":\"option4\",\"price\":\"55\",\"product_id\":\"2\"},{\"id\":\"5\",\"name\":\"option5\",\"price\":\"44\",\"product_id\":\"2\"}],\"option_value\":\"4\",\"product_value\":\"2\",\"option_index\":0,\"product_index\":1},{\"options\":[{\"id\":\"6\",\"name\":\"option6\",\"price\":\"65\",\"product_id\":\"3\"},{\"id\":\"7\",\"name\":\"option7\",\"price\":\"54\",\"product_id\":\"3\"}],\"option_value\":\"6\",\"product_value\":\"3\",\"option_index\":0,\"product_index\":2}]', '308', '24.709549920942', '46.692447099391', '7452 Muhammad Al Hakim, As Sulimaniyah, Riyadh 12242Â 3730, Saudi Arabia', '1'),
(4, '2019-10-30T11:38:09.267Z', '[{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0},{\"options\":[{\"id\":\"1\",\"name\":\"option1\",\"price\":\"123\",\"product_id\":\"1\"},{\"id\":\"2\",\"name\":\"option2\",\"price\":\"234\",\"product_id\":\"1\"},{\"id\":\"3\",\"name\":\"option3\",\"price\":\"132\",\"product_id\":\"1\"}],\"option_value\":\"1\",\"product_value\":\"1\",\"option_index\":0,\"product_index\":0}]', '', '37.421998333333', '-122.084', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `phonetoken`
--

CREATE TABLE `phonetoken` (
  `token` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonetoken`
--

INSERT INTO `phonetoken` (`token`) VALUES
('fEZQZo1HJ4A:APA91bG_bzEK1CgRBEsQt-OhMSkra0F47HPGeZ-u7a6ks8ZI_pinXwyfkxDeZROWHY-NpaCJ0VhWkH5V7L5ulktj9TlM8PsfDZjTEZdVkrjTc8qHLmqgKaHooZDYw4OlNNpWctj5LuuG');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `isvideo` varchar(5) CHARACTER SET utf8 NOT NULL,
  `video` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `lastbid` varchar(50) CHARACTER SET utf8 NOT NULL,
  `countdown` int(11) NOT NULL,
  `endtime` varchar(50) NOT NULL,
  `admincheck` varchar(10) NOT NULL,
  `usercheck` varchar(10) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `paystatus` varchar(3) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catid`, `name`, `image`, `isvideo`, `video`, `description`, `price`, `lastbid`, `countdown`, `endtime`, `admincheck`, `usercheck`, `seller`, `paystatus`) VALUES
(95, 100, 'test', 'image/product/IMG15657278770.jpg_split_image/product/IMG15657278771.jpg_split_image/product/IMG15657278782.jpg_split_image/product/IMG15657278783.jpg', 'video', 'image/product/IMG15657278784.mp4', 'This is a test', 6788, 'wangming', 3, '2019/08/14 20:24:38', 'check', '', 'jinzin', 'no'),
(96, 100, 'test1', 'image/product/IMG15657280440.jpg', 'no', '', 'test12345', 4455, 'wangming', 4, '2019/08/14 20:27:24', 'check', '', 'jinzin', 'no'),
(97, 100, 'ad_post', 'image/product/IMG15657281540.jpg', 'video', 'image/product/IMG15657281541.mp4', 'test335', 56, 'wangming', 1, '2019/08/14 20:29:14', 'check', '', 'admin', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`) VALUES
(1, 'a1123123', 'this is a product1'),
(2, 'product2', 'this is a product2'),
(3, 'product3', 'this is a product3');

-- --------------------------------------------------------

--
-- Table structure for table `samakatee_answer`
--

CREATE TABLE `samakatee_answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_en` varchar(255) NOT NULL,
  `answer_ar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samakatee_answer`
--

INSERT INTO `samakatee_answer` (`id`, `question_id`, `answer_en`, `answer_ar`) VALUES
(1, 1, 'Satisfy', 'رضا'),
(2, 1, 'Good', 'حسن'),
(3, 1, 'Not bad', 'ليس سيئا'),
(4, 1, 'Dissatisfy', 'أثار الاستياء'),
(5, 3, 'Yes', 'نعم'),
(6, 3, 'No', 'لا'),
(7, 3, 'Not sure', 'لست متأكدا'),
(11, 7, 'fdssdf', 'dsfsfd'),
(12, 7, '432432432', '423243243'),
(13, 9, 'rewerw', 'werewr'),
(14, 9, 'rewrwe', 'rewwer'),
(15, 11, '4243423', '432342423'),
(16, 13, 'dfs', 'fsd'),
(17, 18, 'fds', 'fds'),
(18, 19, 'test1', 'test1'),
(19, 19, 'test2', 'test2'),
(20, 20, 'fddsffds', 'dfdsfsdf'),
(21, 20, 'fdsdsfsdf', 'dsfsfdfsdsdfdsf'),
(22, 21, 'sdfdsfsdf', 'fdssfdsfd'),
(23, 24, 'fdsfsdsfd', 'dfsdsfdsf'),
(24, 24, 'fdssdfsfd', 'dfsdsffdssfd'),
(25, 26, 'sfsfdsdf', 'sdffsdfsd'),
(26, 26, '453435534', '543435354'),
(28, 34, 'friend and family', 'a'),
(29, 34, 'socail media', 'a'),
(30, 34, 'live in area', 'a'),
(31, 34, 'advertasing ', 'a'),
(32, 36, 'menu option', 'a'),
(33, 36, 'food quality', 'a'),
(34, 36, 'service', 'a'),
(35, 36, 'price', 'a'),
(36, 36, 'other', 'a'),
(37, 37, 'yes', 'a'),
(38, 37, 'no', 'a'),
(39, 38, 'yes', 'a'),
(40, 38, 'no', 'a'),
(41, 39, 'cozy', 'a'),
(42, 39, 'family oriented', 'a'),
(43, 39, 'not up to standard', 'a'),
(44, 39, 'need improvement 	clean &well organized', 'a'),
(45, 42, 'seats', 'a'),
(46, 42, 'lighting', 'a'),
(47, 42, 'privacy', 'a'),
(48, 42, 'table', 'a'),
(49, 42, 'decoration', 'a'),
(50, 45, 'time to take order ', 'a'),
(51, 45, 'time to recive order', 'a'),
(52, 45, 'ease of communication with staff', 'a'),
(53, 45, '	abilty to explain items in menu by our staff', 'a'),
(54, 45, 'Waiter appernce & communication ', 'a'),
(55, 49, 'indian', 'a'),
(56, 49, 'chinese', 'a'),
(57, 49, 'italian', 'a'),
(58, 49, 'turkish', 'a'),
(59, 49, 'arabic', 'a'),
(60, 49, 'sea food', 'a'),
(61, 49, 'appetizers', 'a'),
(62, 52, 'fsd\n', 'fds');

-- --------------------------------------------------------

--
-- Table structure for table `samakatee_question`
--

CREATE TABLE `samakatee_question` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `question_en` text NOT NULL,
  `question_ar` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samakatee_question`
--

INSERT INTO `samakatee_question` (`id`, `type`, `question_en`, `question_ar`) VALUES
(34, 'fixed', 'How did you know abut us ?', 'a'),
(35, 'open', 'Do u want to come to our restaurant again?', 'a'),
(36, 'fixed', 'Why do you come to eat in samaktee ', 'a'),
(37, 'fixed', 'Would you recommend samaktee to your friends & family ?	', 'a'),
(38, 'fixed', 'would you visit us again ?	', 'a'),
(39, 'fixed', 'What would you desscribe your first impprtion when entring the resturant 				', 'a'),
(40, 'open', 'How would you describe the genaral cleanies of resturant 			', 'a'),
(41, 'open', 'How would you describe the genaral cleanies of the restrooms ? ', 'a'),
(42, 'fixed', 'Would you suggest we improve in our cabins ? 			', 'a'),
(43, 'open', 'Where you greeted and welcomed as soon as you entered ?			', 'a'),
(44, 'open', 'What is your genral feedback on our service team ?', 'a'),
(45, 'fixed', 'Where do we need to improve () 	', 'a'),
(46, 'open', 'What do you think about our menu ?	', 'a'),
(47, 'open', 'Please rate the food quailty 	', 'a'),
(48, 'open', 'What do you think about portion sizes ? 	', 'a'),
(49, 'fixed', 'Which cusine would you like us to imrove ?	', 'a'),
(50, 'open', 'Which cusine would you like us to introduce ?	', 'a'),
(51, 'open', 'would you saggest we add desert , hot drinks & cocktail 	', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `samakatee_report`
--

CREATE TABLE `samakatee_report` (
  `id` int(11) NOT NULL,
  `waiter_id` int(11) NOT NULL,
  `time` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samakatee_report`
--

INSERT INTO `samakatee_report` (`id`, `waiter_id`, `time`, `name`, `mobile`, `email`) VALUES
(1, 1, '2019/10/08 15:15', 'affdasfda', '324234234322', 'fdadfs@gmail.com'),
(4, 1, '2019/10/08 15:42', 'fdsfdssdf', '342324243423432', 'fdssdfsd@gmail.com'),
(3, 1, '2019/10/08 15:22', 'fsdafdafda', '1234567890', 'yes@gmail.com'),
(5, 1, '2019/10/08 15:43', 'fdsdsf', '23423442432', 'fsdsfd@gmai.com'),
(7, 1, '2019/10/08 19:54', 'fdasfd', '34243242342337323', 'fdadfas@gmail.com'),
(8, 1, '2019/10/14 12:50', 'fdsfdsfds', '123132123123', 'fsdsdf@gmail.com'),
(9, 1, '2019/10/14 13:02', 'erwrew', '12313131231', 'dfs@gmail.com'),
(10, 1, '2019/10/14 13:25', 'fdsdfs', '342324324', 'fdsdsf@gmail.com'),
(11, 1, '2019/10/14 14:47', 'vhvjbjbh', '55758588', 'cjghh@hjgj.com'),
(12, 1, '2019/10/14 14:50', 'chvhbjb', '6558575858575', 'fhvhvg@hvhbj.com'),
(13, 1, '2019/10/14 14:50', 'chvhbjb', '6558575858575', 'fhvhvg@hvhbj.com'),
(14, 1, '2019/10/14 17:08', 'chvgh', '85488524888', 'vgvhg@hvhh.com'),
(15, 1, '2019/10/14 17:32', 'xiangyi', '123456323232', 'xiangyi@gmail.com'),
(16, 1, '2019/10/14 18:21', 'fsdafa', '12131322131321', 'fsfs@gmail.com'),
(17, 1, '2019/10/15 20:56', 'fdsdf', '123312321213', 'fdsdf@gmail.com'),
(18, 1, '2019/10/15 21:03', 'rtggtuu', '1258845666', 'dggh@fgh.ghh'),
(19, 1, '2019/10/15 21:05', 'yohhfg', '123456789', 'dghh@fgg.fgg');

-- --------------------------------------------------------

--
-- Table structure for table `samakatee_report_content`
--

CREATE TABLE `samakatee_report_content` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samakatee_report_content`
--

INSERT INTO `samakatee_report_content` (`id`, `report_id`, `question`, `answer`) VALUES
(1, 1, 'Are you satisfy for this waiter?', 'Good'),
(2, 1, 'Please give me your opinion.', 'fdsfds'),
(3, 1, 'Do you want to come this restaurant again?', 'No'),
(12, 4, 'Do you want to come this restaurant again?', 'Yes'),
(11, 4, 'Please give me your opinion.', 'fdsfsdfsfdsfdfd'),
(10, 4, 'Are you satisfy for this waiter?', 'Good'),
(7, 3, 'Are you satisfy for this waiter?', 'Not bad'),
(8, 3, 'Please give me your opinion.', 'fdsafdafdasf'),
(9, 3, 'Do you want to come this restaurant again?', 'No'),
(13, 5, 'Are you satisfy for this waiter?', 'Good'),
(14, 5, 'Please give me your opinion.', 'fdssdfsfdsfd'),
(15, 5, 'Do you want to come this restaurant again?', 'No'),
(16, 5, 'fdssdffsdasfd', 'fdsdsfsdf'),
(22, 7, 'Do you want to come this restaurant again?', 'No'),
(21, 7, 'Please give me your opinion.', 'fdsfdsfds\nfdsfdsf\nfdsfd'),
(20, 7, 'Are you satisfy for this waiter?', 'Good'),
(23, 7, 'dsfsfdsfdfsdfsd', 'sfsfdsdf'),
(24, 8, 'Are you satisfy for this waiter?', 'Satisfy'),
(25, 8, 'Please give me your opinion.', '543435543'),
(26, 8, 'Do you want to come this restaurant again?', 'Yes'),
(27, 8, 'What is your name', 'fdsfsd'),
(28, 8, 'mobile number', 'fsdfdsfsd'),
(29, 9, 'Are you satisfy for this waiter?', 'Good'),
(30, 9, 'Please give me your opinion.', 'fdsfds'),
(31, 9, 'Do you want to come this restaurant again?', 'No'),
(32, 9, 'What is your name', 'dsfds'),
(33, 9, 'mobile number', 'fdsfds'),
(34, 10, 'Are you satisfy for this waiter?', 'Good'),
(35, 10, 'Please give me your opinion.', 'fdsdsfdsfsdf'),
(36, 10, 'Do you want to come this restaurant again?', 'No'),
(37, 10, 'What is your name', 'fdsdfds'),
(38, 10, 'mobile number', 'fdsfdsfs'),
(39, 11, 'Are you satisfy for this waiter?', 'Satisfy'),
(40, 11, 'Please give me your opinion.', 'bjbnb'),
(41, 11, 'Do you want to come this restaurant again?', 'Yes'),
(42, 11, 'What is your name', 'gugg'),
(43, 11, 'mobile number', 'ghvh'),
(44, 12, 'Are you satisfy for this waiter?', 'Not bad'),
(45, 12, 'Please give me your opinion.', 'jhjh'),
(46, 12, 'Do you want to come this restaurant again?', 'Yes'),
(47, 12, 'What is your name', 'gjb'),
(48, 12, 'mobile number', 'guh'),
(49, 13, 'Are you satisfy for this waiter?', 'Not bad'),
(50, 13, 'Please give me your opinion.', 'jhjh'),
(51, 13, 'Do you want to come this restaurant again?', 'Yes'),
(52, 13, 'What is your name', 'gjb'),
(53, 13, 'mobile number', 'guh'),
(54, 14, 'How did you know abut us ', 'socail media\n'),
(55, 14, 'how many times you visted us in the past 6 months', '4'),
(56, 14, 'Why do you come to eat in samaktee 				\n', 'food quality'),
(57, 14, 'Would you recommend samaktee to your friends & family ?				\n', 'no'),
(58, 14, 'would you visit us again ?				\n', 'no'),
(59, 14, 'What would you desscribe your first impprtion when entring the resturant 				\n', 'cozy'),
(60, 14, 'How would you describe the genaral cleanies of resturant 				\n', 'wow'),
(61, 14, 'How would you describe the genaral cleanies of the restrooms ? 				\n', 'not good'),
(62, 14, 'Would you suggest we improve in our cabins ? 				\n', 'decoration'),
(63, 14, 'Where you greeted and welcomed as soon as you entered ?				\n', 'no'),
(64, 14, 'What is your genral feedback on our service team ?				\n', 'good'),
(65, 14, 'Where do we need to improve () 				\n', 'time to take order \n'),
(66, 14, 'What do you think about our menu ?				\n', 'good'),
(67, 14, 'Please rate the food quailty 				\n', '4'),
(68, 14, 'What do you think about portion sizes ? 				\n', 'good'),
(69, 14, 'Which cusine would you like us to imrove ?				\n', 'italian'),
(70, 14, 'Which cusine would you like us to introduce ?				\n', 'oriental'),
(71, 14, 'would you saggest we add desert , hot drinks & cocktail 				\n', 'no'),
(72, 15, 'How did you know abut us ', 'friend and family\n'),
(73, 15, 'Do u want to come to our restaurant again?', 'yes'),
(74, 15, 'Why do you come to eat in samaktee 				\n', 'food quality'),
(75, 15, 'Would you recommend samaktee to your friends & family ?				\n', 'yes'),
(76, 15, 'would you visit us again ?				\n', 'yes'),
(77, 15, 'What would you desscribe your first impprtion when entring the resturant 				\n', 'cozy'),
(78, 15, 'How would you describe the genaral cleanies of resturant 				\n', 'fdsfds'),
(79, 15, 'How would you describe the genaral cleanies of the restrooms ? 				\n', 'fsfdsf'),
(80, 15, 'Would you suggest we improve in our cabins ? 				\n', 'lighting\n'),
(81, 15, 'Where you greeted and welcomed as soon as you entered ?				\n', 'fsdfsdfds'),
(82, 15, 'What is your genral feedback on our service team ?				\n', 'fsdfdsf'),
(83, 15, 'Where do we need to improve () 				\n', 'ease of communication with staff\n'),
(84, 15, 'What do you think about our menu ?				\n', 'fsdfds'),
(85, 15, 'Please rate the food quailty 				\n', 'fsdffd'),
(86, 15, 'What do you think about portion sizes ? 				\n', 'fsdfdsf'),
(87, 15, 'Which cusine would you like us to imrove ?				\n', 'italian'),
(88, 15, 'Which cusine would you like us to introduce ?				\n', 'fsfs'),
(89, 15, 'would you saggest we add desert , hot drinks & cocktail 				\n', 'fsfdsfs'),
(90, 16, 'How did you know abut us ', 'socail media\n'),
(91, 16, 'Do u want to come to our restaurant again?', 'fdsfsd'),
(92, 16, 'Why do you come to eat in samaktee 				\n', 'food quality'),
(93, 16, 'Would you recommend samaktee to your friends & family ?				\n', 'yes'),
(94, 16, 'would you visit us again ?				\n', 'no'),
(95, 16, 'What would you desscribe your first impprtion when entring the resturant 				\n', 'family oriented'),
(96, 16, 'How would you describe the genaral cleanies of resturant 				\n', 'fdsdfsfds'),
(97, 16, 'How would you describe the genaral cleanies of the restrooms ? 				\n', 'fdsfsfs'),
(98, 16, 'Would you suggest we improve in our cabins ? 				\n', 'privacy\n'),
(99, 16, 'Where you greeted and welcomed as soon as you entered ?				\n', 'fdsfdsfs'),
(100, 16, 'What is your genral feedback on our service team ?				\n', 'fsfdsfs'),
(101, 16, 'Where do we need to improve () 				\n', 'ease of communication with staff\n'),
(102, 16, 'What do you think about our menu ?				\n', 'fsfsfs'),
(103, 16, 'Please rate the food quailty 				\n', 'fdsfsfds'),
(104, 16, 'What do you think about portion sizes ? 				\n', 'fdsfsdfs'),
(105, 16, 'Which cusine would you like us to imrove ?				\n', 'chinese'),
(106, 16, 'Which cusine would you like us to introduce ?				\n', 'fdsfs'),
(107, 16, 'would you saggest we add desert , hot drinks & cocktail 				\n', 'fsdfsfsd'),
(108, 17, 'How did you know abut us ', 'friend and family\n & live in area\n & advertasing \n'),
(109, 17, 'Do u want to come to our restaurant again?', 'sfddsf'),
(110, 17, 'Why do you come to eat in samaktee 				\n', 'food quality'),
(111, 17, 'Would you recommend samaktee to your friends & family ?				\n', 'yes & no'),
(112, 17, 'would you visit us again ?				\n', 'yes'),
(113, 17, 'What would you desscribe your first impprtion when entring the resturant 				\n', 'family oriented & need improvement 	clean &well organized\n & not up to standard'),
(114, 17, 'How would you describe the genaral cleanies of resturant 				\n', 'fdsfdsfds'),
(115, 17, 'How would you describe the genaral cleanies of the restrooms ? 				\n', 'fdsdsffds'),
(116, 17, 'Would you suggest we improve in our cabins ? 				\n', 'seats\n & table'),
(117, 17, 'Where you greeted and welcomed as soon as you entered ?				\n', 'fdsfds'),
(118, 17, 'What is your genral feedback on our service team ?				\n', 'fds'),
(119, 17, 'Where do we need to improve () 				\n', 'time to recive order\n'),
(120, 17, 'What do you think about our menu ?				\n', 'erwerw'),
(121, 17, 'Please rate the food quailty 				\n', 'rewwer'),
(122, 17, 'What do you think about portion sizes ? 				\n', 'rewrwe'),
(123, 17, 'Which cusine would you like us to imrove ?				\n', 'chinese'),
(124, 17, 'Which cusine would you like us to introduce ?				\n', 'rew'),
(125, 17, 'would you saggest we add desert , hot drinks & cocktail 				\n', 'rew'),
(126, 18, 'How did you know abut us ', 'friend and family\n & socail media\n & advertasing \n'),
(127, 18, 'Do u want to come to our restaurant again?', 'ryugf'),
(128, 18, 'Why do you come to eat in samaktee 				\n', 'menu option\n & food quality & service & price & other'),
(129, 18, 'Would you recommend samaktee to your friends & family ?				\n', 'yes'),
(130, 18, 'would you visit us again ?				\n', 'no'),
(131, 18, 'What would you desscribe your first impprtion when entring the resturant 				\n', 'family oriented & not up to standard'),
(132, 18, 'How would you describe the genaral cleanies of resturant 				\n', 'rtt'),
(133, 18, 'How would you describe the genaral cleanies of the restrooms ? 				\n', 'ydf'),
(134, 18, 'Would you suggest we improve in our cabins ? 				\n', 'seats\n & privacy\n'),
(135, 18, 'Where you greeted and welcomed as soon as you entered ?				\n', 'tyu'),
(136, 18, 'What is your genral feedback on our service team ?				\n', 'fhh'),
(137, 18, 'Where do we need to improve () 				\n', 'time to take order \n & 	abilty to explain items in menu by our staff\n'),
(138, 18, 'What do you think about our menu ?				\n', 'rggh'),
(139, 18, 'Please rate the food quailty 				\n', 'dgh'),
(140, 18, 'What do you think about portion sizes ? 				\n', 'ygf'),
(141, 18, 'Which cusine would you like us to imrove ?				\n', 'indian & chinese & arabic'),
(142, 18, 'Which cusine would you like us to introduce ?				\n', 'rgg'),
(143, 18, 'would you saggest we add desert , hot drinks & cocktail 				\n', 'guu\n'),
(144, 19, 'How did you know abut us ', 'friend and family\n & socail media\n & advertasing \n'),
(145, 19, 'Do u want to come to our restaurant again?', 'fhy'),
(146, 19, 'Why do you come to eat in samaktee 				\n', 'menu option\n & food quality'),
(147, 19, 'Would you recommend samaktee to your friends & family ?				\n', 'yes'),
(148, 19, 'would you visit us again ?				\n', 'yes'),
(149, 19, 'What would you desscribe your first impprtion when entring the resturant 				\n', 'cozy'),
(150, 19, 'How would you describe the genaral cleanies of resturant 				\n', 'r'),
(151, 19, 'How would you describe the genaral cleanies of the restrooms ? 				\n', 'y'),
(152, 19, 'Would you suggest we improve in our cabins ? 				\n', 'seats\n'),
(153, 19, 'Where you greeted and welcomed as soon as you entered ?				\n', 'r'),
(154, 19, 'What is your genral feedback on our service team ?				\n', 'y'),
(155, 19, 'Where do we need to improve () 				\n', 'time to take order \n'),
(156, 19, 'What do you think about our menu ?				\n', 't'),
(157, 19, 'Please rate the food quailty 				\n', 't'),
(158, 19, 'What do you think about portion sizes ? 				\n', 'g'),
(159, 19, 'Which cusine would you like us to imrove ?				\n', 'chinese'),
(160, 19, 'Which cusine would you like us to introduce ?				\n', 'r'),
(161, 19, 'would you saggest we add desert , hot drinks & cocktail 				\n', 't');

-- --------------------------------------------------------

--
-- Table structure for table `samakatee_user`
--

CREATE TABLE `samakatee_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reviews` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samakatee_user`
--

INSERT INTO `samakatee_user` (`id`, `username`, `name`, `password`, `reviews`, `status`, `avatar`) VALUES
(1, 'test', 'test user', '123', 0, 'use', ''),
(2, 'waiter123', 'Olga Somarinov', '12345', 0, 'use', ''),
(4, '3213', 'dasdsa', '123', 0, 'use', 'image/profile/32131570127348.jpg'),
(6, '1', '1', '1', 0, 'use', 'image/profile/11571039215.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  `shopemail` varchar(100) NOT NULL,
  `shopmobile` varchar(20) NOT NULL,
  `shopaddress` varchar(100) NOT NULL,
  `shoplocation` varchar(100) NOT NULL,
  `shopimg` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `shopname`, `shopemail`, `shopmobile`, `shopaddress`, `shoplocation`, `shopimg`, `description`) VALUES
(1, 'testshop1', 'testshop1@shop.com', '1234567890123', 'Paris street', '1.111,1.2222', 'image/shopimage/testshop11574200607.jpg', 'sunglass Cloth sport '),
(2, 'testshop2', 'testshop2@test.com', '1234567899', 'Paris test', '1.222,1.2222', 'image/shopimage/IMGtestshop2.jpg', 'bag dress testroom '),
(9, 'marc3', 'sarlmedia365@gmail.com', '0652172524', '16 avenue des champs Élysées paris', '48.8694257,2.3085955', 'image/shopimage/IMG1574308482marc3.jpg', 'test  sans photo voiture mercedes wolgsvagen'),
(7, 'marc1', 'webcarrefour@gmail.com', '06521725256', 'Paris', '48.8567879,2.3510768', 'image/shopimage/IMG63c0a427a42826e8fd10fe0e020e4383.jpg', 'tgfhu cartier montres tv samsung ydhd trttuu ugtrhk ytgi hdyydk utrh ycxtu ufghu yueydufh hd urfhufh uygju tuuhfert hhfh hdyhfjf fjfhr gsuvfu udh  enseigne fleuriste aa test test'),
(11, 'Phone Shop', 'fr.bari@yahoo.fr', '0628679277', '123 boulevard Bessierres 75017 paris', '48.8943825,2.3144782', 'image/shopimage/IMGBary.jpg', 'iphone7'),
(12, 'sdeled', 'sami-2209@hotmail.fr', '0616076898', '12 avenue jean jaures', '48.921672,2.4471043', 'image/shopimage/IMGSamuel.jpg', ''),
(13, 'marc4', 'hannoufmedia@gmail.com', '0652172524', '18 rue de la nouvelle France Aubervilliers 93300', '48.9132897,2.3867154', 'image/shopimage/IMGmarc4.jpg', ' gdydcdhdcdhdceheheuejevehdhdcdcdcd eveudhece ehdufhf r fhd f fufvrhe ece ehe fhr eud fucdud eve ev ehe ehe'),
(19, 'hen', 'test@yopmilsh.com', '132654879', 'Douentza, Mali', '15.0045218,-2.9550619', 'image/shopimage/IMGtest123.jpg', ' testr app 123'),
(14, 'Insane Merchandise', 'debayan@vtestcorp.com', '9764857975', '195 E, NV 593, Las Vegas, NV 89109,USA', '36.09966,-115.16449', 'image/shopimage/IMGdebayan.vtestcorp.jpg', ''),
(20, 'testshop1', 'patkarpriyankaj@gmail.com', '1234567890', 'Unnamed Road, 23110 Sannat, France', '46.11954,2.406225', 'image/shopimage/testshop11574200491.jpg', ' dress dress test2dress'),
(62, 'NEW PASSION: PRÊT À PORTER POUR FEMMES', 'NEWPASSION93@GMAIL.COM', '06 51 54 47 88', '73 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9047018,2.373342', 'image/shopimage/IMGde7bbf37d19bc4308dd9a9caf64051b8.jpg', ''),
(61, 'CHARJ BLUE CHARJ prêt-à-porter masculin', 'bluecharj@outlook.fr', '01 43 52 24 71', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90538561912363,2.374868430197239', 'image/shopimage/IMGf7909ce41f72942c906a2511541655db.jpg', ''),
(60, 'ELLA KINGSLEY prêt-à-porter', 'info.ekingsley@gmail.com', '01 41 61 29 74', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90542969479958,2.3749398440122604', 'image/shopimage/IMGeb00592d1171e5e3bbef57c39ece7d3c.jpg', ''),
(59, 'CHARM’S: PRÊT À PORTER POUR FEMMES', 'charms_paris@hotmail.fr', '01 48 39 18 18', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMGdc4e0269bc19c14128017596e261ae3e.jpg', ''),
(58, 'COPPEROSE Paris', 'copperose@hotmail.com', '09 84 18 70 88', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90543454312154,2.374860718846321', 'image/shopimage/IMGa89621577bc39c6cd9474b082b31be32.jpg', ''),
(57, 'K.ZELL: PRÊT À PORTER POUR FEMMES', 'Kzellparis@gmail.com', '01 48 11 67 67', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG35b179bc852b5cfbcd0f7dfe3c05b410.jpg', ''),
(56, 'CHARMANTE:pret a porter', 'sarl_charmante@outlook.com', '01 48 33 28 18', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90546605720296,2.374667264521122', 'image/shopimage/IMGe5836ec1b3998576d07fad94c253b1ae.jpg', ''),
(55, 'CHARLIOR: PRÊT À PORTER POUR FEMMES', 'jczparis11@gmail.com', '01 48 33 28 18', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG0cde017b6bb92063b12b293820f914b9.jpg', ''),
(54, 'MISS & CO BLUOLTRE', 'missco77@orange.fr', '09 67 54 44 95', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90540038447941,2.3748965933918953', 'image/shopimage/IMGeb71619dd724fee791f8fe5ae713b49e.jpg', ''),
(53, 'ADILYNN PARIS: PRÊT À PORTER POUR FEMMES', 'adilynnparis@gmail.com', '01 76 58 04 26', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMGef373314bd43e41f04f36887704c12b2.jpg', ''),
(52, 'JAUNE ROUGE prêt-à-porter', 'jaunerouge3138@hotmail.com', '01 41 57 01 78', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905478398376275,2.3747775703668594', 'image/shopimage/IMG9cfd43e735f3eba4db57c8924311ef78.jpg', ''),
(51, 'CHIC GIRL: PRÊT À PORTER POUR FEMMES', 'maxmilaparis@gmail.com', '06 29 65 76 12', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG6aeed5fb960c70fdbad86c94c7eb7ed3.jpg', ''),
(50, 'EMILIE FASHION prêt-à-porter Féminin', 'emiliefashion18@outlook.com', '01 41 61 80 35', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905435204256314,2.3747913166880608', 'image/shopimage/IMGe195a61b7478d3374630f71fd21493c2.jpg', ''),
(49, 'GDCY: prêt à porter', 'gdcy75011@hotmail.com', '09 50 400 664', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90546605720296,2.374667264521122', 'image/shopimage/IMG9480fc3177a736dec6c89d6150f91f1b.jpg', ''),
(48, 'CHIC GIRL: PRÊT À PORTER POUR FEMMES', 'chic girl2008@live.cn', '01 48 33 99 49', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMGd253905f7b82845ca21850e2b6b19972.jpg', ''),
(47, 'Merci Mademoiselle: PRÊT À PORTER POUR FEMMES', 'Mercimademoiselle.paris@gmail.com', '01 48 33 23 21', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMGb533a21cdd76a7735d59a18d6cdc6171.jpg', ''),
(46, 'KOOLOOK vêtements pour femme', 'koolook.jdc@gmail.com', '09 50 00 16 88', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9054138275607,2.374923415482044', 'image/shopimage/IMGd369f8026697d1ef5ee317d5684c7f9e.jpg', ''),
(45, 'tes ttest', 'test@testtest.com', '123123123', 'Route Forestière de lAbreuvoir, 60500 Chantilly, France', '49.16094571004603,2.481730990111828', 'image/shopimage/IMG1de01df6b89ae21d4105bdd37157bdb3.jpg', ''),
(44, 'shops shops', 'test@asdasd.com', '123456789', '9 Rue Victor Hugo, 59770 Marly, France', '50.35232863308803,3.538595102727413', 'image/shopimage/IMG8f933fffbeb2cef78e61323f1b0a1f27.jpg', ''),
(63, 'MOOCCI by MC & CO', 'moocci@hotmail.com', '01 48 34 80 98', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90539597691098,2.37483624368906', 'image/shopimage/IMG55b5af2b5cf1794b21076835dc4991b0.jpg', ''),
(64, 'JOLIKO: PRÊT À PORTER POUR FEMMES', 'modstars@outlook.fr', '09 50 18 89 89', '73 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9047018,2.373342', 'image/shopimage/IMG74d3a9ffdecf3fb82f4f4bde934a27f2.jpg', ''),
(65, 'J&L:Prêt à Porter', 'jl_54@hotmail.fr', '01 43 38 05 12', '71 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90455985414829,2.373296320438385', 'image/shopimage/IMG4ea524ead066389ad67b298ea885f80d.jpg', ''),
(66, 'RUE MAZARINE prêt-à-porter féminin', 'contactruemazarine@gmail.com', '01 47 00 95 07', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905384737609715,2.374919056892395', 'image/shopimage/IMGb79fc6d0494f2179de68d6ff77e8244a.jpg', ''),
(67, 'AZAKA: PRÊT À PORTER POUR FEMMES', 'azaka.paris@free.fr', '01 44 02 22 22', '71 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90465063996468,2.373023205007041', 'image/shopimage/IMGeb5c36a996bc722a9f20f5cfb48a1de5.jpg', ''),
(68, 'STRÉYEE accessoires masculins', 'contact@astreyee.com', '09 52 66 92 27', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG64e0a2a3649abee64feec37eb473d183.jpg', ''),
(69, 'ASHLEY: PRÊT À PORTER POUR FEMMES', 'contact@ashley.fr', '01 43 52 66 99', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMGe9d24ad0f2eaaa31d729a9de50d0f68e.jpg', ''),
(70, 'EIGHT Paris prêt-à-porter feminin', 'info@eightparis.com', '09 80 62 56 53', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG6a3da16c33eeb47fa92e5a71469eef0e.jpg', ''),
(71, 'ATTENTIF prêt-à-porter féminin', 'attentifparis@gmail.com', '01 48 39 13 45', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90537548171266,2.374841272830963', 'image/shopimage/IMG8664b3cffdb1b51713531ce6b6b8d3a2.jpg', ''),
(72, 'PM FASHION: PRÊT À PORTER POUR FEMMES', 'PARISETMOI@HOTMAIL.FR', '01 41 57 00 08', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMGecc56e7057c35db03edb33544f1c2ca2.jpg', ''),
(73, 'FASHION CENTER: PRÊT À PORTER POUR FEMMES', 'pommerougeparis@gmail.com', '09 53 88 92 90', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG664ae709d774c8729f98033712e447ce.jpg', ''),
(74, 'INTEMPORELLE prêt-à-porter féminin', 'annaellis.paris@gmail.com', '01 41 61 93 38', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMGf95a169b0853426725d4c656338f048c.jpg', ''),
(75, 'KAIA PARIS: PRÊT À PORTER POUR FEMMES', 'kaia-paris@outlook.com', '09 53 79 01 13', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG074f030b84b6b7a1a14eee25542175e3.jpg', ''),
(76, 'JUS DE POM & CO pret-a-porter féminin', 'jusdepom.co@gmail.com', '01 41 61 76 67', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90539597691098,2.375096417963505', 'image/shopimage/IMG767dd790abd29abf24c973cf869b8b5b.jpg', ''),
(77, 'SENES prêt-à-porter féminin', 'senesparis@gmail.com', '01 41 61 15 12', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMGe4b3820f753ef386c1a09f1baca07797.jpg', ''),
(78, 'MISSY PARIS: PRÊT À PORTER POUR FEMMES', 'paris@missy.com.fr', '01 43 52 69 84', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG282facfbe2106be958538d2dd333e6b7.jpg', ''),
(79, 'BY ONE prêt-à-porter feminin', 'byone93300@hotmail.com', '01 41 61 29 83', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMGb783e30ac2bf36dc667b351d7a8bfef6.jpg', ''),
(80, 'MATCHPOINT: PRÊT À PORTER POUR FEMMES', 'matchpointparis@outlook.com', '09 52 48 40 77', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG2e25eb94d184126118ebb229c02f183f.jpg', ''),
(81, 'BUSINESS CENTER', 'grifflin-paris@hotmail.com', '09 70 00 93 22', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905145626386044,2.3745643347501755', 'image/shopimage/IMGfc544babfc390896de6cacc596681f7f.jpg', ''),
(82, 'BELLO ’ CLOCK Paris prêt-à-porter feminin', 'bestwomen@icloud.com', '06 18 62 38 60', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG43db3a5a6792c9e116104a8b678642c0.jpg', ''),
(83, 'ZELIA: PRÊT À PORTER POUR FEMMES', 'contact.fashioncenter@zelia.fr', '01 48 33 88 18', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG333077b458b0d6698e0770957b4210c4.jpg', ''),
(84, 'LADY GLORY chaussures pour femmes', 'contact@ladyglory.fr', '01 76 58 00 88', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90538826366528,2.3748181387782097', 'image/shopimage/IMGf6eeee0c9a62632335c0578a067baa95.jpg', ''),
(85, 'MAX SHOES: WOMAN AND KIDS', 'maxshoes8@gmail.com', '01 41 61 29 21', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMGc7fb9fed09013b72215fa6b5655596ba.jpg', ''),
(86, 'LILY SHOES chaussures féminines', 'info@lilyshoes.fr', '01 43 52 03 84', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG14f99de74d3e42bdaba910104e701d18.jpg', ''),
(87, 'KERLINE: CHAUSSURE POUR FEMMES', 'kerlineparis@gmail.com', '01 440 22 790', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG20107a7d44fdd7d811540788a7573b3b.jpg', ''),
(88, 'ROCK & JOY chaussures féminines', 'redjin@hotmail.fr', '09 52 29 28 2', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG379cb22c97e7dda9d2981ed7e3c8f266.jpg', ''),
(89, 'LOVIE & CO : PRÊT À PORTER POUR FEMMES', 'contact@lovieandco.com', '01 43 52 98 98', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG654ce512a9359ab2b3e2474639d0f9f6.jpg', ''),
(90, 'LAURA JO paris prêt-à-porter féminin', 'contact@laurajo.fr', '09 52 64 59 33', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG9909ee515022739eb35171d86e0b8e63.jpg', ''),
(91, 'SURDELLE: SHOES POUR FEMMES', 'surdelle@hotmail.com', '09 51 82 00 88', '5 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.9107944,2.3732221', 'image/shopimage/IMG869ec7c9491d5be1f567d3f804fd7e74.jpg', ''),
(92, 'MGFASHION prêt-à-porter', 'mgfashion93@hotmail.com', '01 41 61 76 43', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90531201265815,2.374782934784889', 'image/shopimage/IMG5a381c52ef57b9dd654a49efe040b055.jpg', ''),
(93, 'GIRLHOOD:CHAUSSURES FEMME', 'girlhoodshoes@gmail.com', '01 48 34 82 31', '15 Quai Lucien Lefranc, 93300 Aubervilliers, France', '48.9087102,2.375206', 'image/shopimage/IMG4bbd65eeaff421ebc05d18d486348682.jpg', ''),
(94, 'MODISSIMO STAMINA', 'modissimo@nacre.paris', '09 82 32 54 94', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9053485955258,2.37484697252512', 'image/shopimage/IMG1d2cdc1e442a01730f31d5381bef4aec.jpg', ''),
(95, 'EFIA BEAUTY: ACCESOIRES COSMÉTIQUES', 'efiabeautyparis@gmail.com', '07 68 36 99 82', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG9017bd9d15ca82763e38de001fb59e73.jpg', ''),
(96, 'ELONG: CHAUSSURE', 'elongshoes.czc@gmail.com', '09 51 80 11 11', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905375,2.3745878', 'image/shopimage/IMG42bf82e3c947ab8b51e357cbf3244f24.jpg', ''),
(97, 'COPPEROSE prêt-à-porter féminin', 'copperose@hotmail.fr', '09 84 18 70 88', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG41e23f4fe50c867e2e137ef857ca5fbf.jpg', ''),
(98, 'C’FAIT POUR VOUS PARIS: Prêt À Porter Pour FEMMES', 'griffin-paris@hotmail.com', '09 70 00 93 22', '46 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.904853181887106,2.374160997569561', 'image/shopimage/IMGa3748d0bcfe04e500a9f11b20dc01024.jpg', ''),
(99, 'GIOVANNI prêt-à-porter féminin', 'contact@giovanniparis.fr', '01 48 11 10 90', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90539068782834,2.374800704419613', 'image/shopimage/IMGc775df9aeea199a4c829e83245900b3a.jpg', ''),
(100, 'MOOCI by MC & CO prêt-à-porter feminin', 'mooci@hotmail.fr', '01 48 34 80 98', '80 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.9055134,2.3747471', 'image/shopimage/IMG39208c79e09bfd0bf86503047b354e50.jpg', ''),
(101, 'Shopseller', 'testingforseller@gmail.com', '0987654321', '1355 Los Angeles', '34.038250999999995,-118.266898', 'image/shopimage/IMGb3ed96482587d6508b71952964bfc85c.jpg', ''),
(102, 'YULEE: PRÊT À PORTER POUR FEMMES', 'yulee.pat@gmail.com', '01 48 33 14 04', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478794912035,2.3725657537579536', 'image/shopimage/IMGcaf4afec78831724a1e506f521654f8b.jpg', ''),
(103, 'CISSY&CO: PRÊT À PORTER POUR FEMMES', 'cissy.co93@gmail.com', '01 44 02 28 89', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478794912035,2.3725657537579536', 'image/shopimage/IMG8e4437a3773637e310f92a8b6e1732de.jpg', ''),
(104, 'OXANA: PRÊT À PORTER POUR FEMMES', 'oxana93@hotmail.com', '01 48 33 88 68', '81 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.904555226123605,2.372497357428074', 'image/shopimage/IMG0b1c2bc184d6224b4431a47dda042fe7.jpg', ''),
(105, 'L8 SARL: PRÊT À PORTER POUR FEMMES', 'l8style.paris@gmail.com', '01 48 39 21 84', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478243959224,2.3725412786006927', 'image/shopimage/IMG3193d9cb05d2d459a39e96a19a8247ef.jpg', ''),
(106, 'V.J.L: PRÊT À PORTER POUR FEMME - HOMME-ENFANT', 'vjl93300@gmail.com', '01 49 37 47 09', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478243959224,2.3725412786006927', 'image/shopimage/IMGdc373a0ed953dd5bcb291b583eb9e42b.jpg', ''),
(107, 'BLACK INDUSTRY: PRÊT À PORTER POUR HOMMES', 'blackindustry7@gmail.com', '07 67 52 98 34', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478243959224,2.3725412786006927', 'image/shopimage/IMG895a23f5ca1ee54a63089b2de55b350f.jpg', ''),
(108, 'NEW BAG accessoires féminines', 'newbagcrea@gmail.com', '01 41 61 35 79', '5 Rue des Gardinoux, 93300 Aubervilliers, France', '48.9063532916464,2.373622879385948', 'image/shopimage/IMGb5856df0897643b6189a9ca970cc3e87.jpg', ''),
(109, 'BERRY DENIM: PRÊT À PORTER POUR HOMMES', 'Colberryparis@gmail.com', '06 22 84 86 80', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478243959224,2.3725412786006927', 'image/shopimage/IMG37095678292fdb16eae674d18e1105a1.jpg', ''),
(110, 'RED SWALLOW prêt-à-porter feminin', 'redswallow@gmail.com', '01 49 37 20 18', '13 Rue des Gardinoux, 93300 Aubervilliers, France', '48.90650468849895,2.3722147196531296', 'image/shopimage/IMGf17448dae52c2839bb32c1d45ded9770.jpg', ''),
(111, 'ENZO: PRÊT À PORTER POUR FEMMES', 'enzo@gmail.com', '01 43 52 81 63', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478243959224,2.3725412786006927', 'image/shopimage/IMGfebb8d0049f7ce7899d535eb02132124.jpg', ''),
(112, 'MODA ORIENT: PRÊT À PORTER POUR FEMMES', 'modaorient@hotmail.com', '01 41 61 02 97', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90478243959224,2.3725412786006927', 'image/shopimage/IMGefc2ff4fc2bf1b10c713b3e50ff3904a.jpg', ''),
(113, 'SUPER BELLE prêt-à-porter féminin', 'superbelleparis@live.fr', '01 48 11 93 83', '52 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90354055953743,2.372505156940717', 'image/shopimage/IMG0df0584010c3b8150b21daa8c418aa3b.jpg', ''),
(114, 'ENZO DI CAPRI prêt-à-porter masculine', 'enzodicapri93@hotmail.com', '01 43 52 77 81', '95 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.906117931436484,2.374945878982544', 'image/shopimage/IMG01fa8224c5371e199290232133e345c9.jpg', ''),
(115, 'H-MEN Paris vetement homme', 'hmen.paris@gmail.com', '06 66 39 11 65', '66 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.9063313,2.3728504', 'image/shopimage/IMGc5448f22e05541dc240d41d028db3b72.jpg', ''),
(116, 'CHEZ SUZANNE prêt-à-porter', 'chezsuzanne@gmail.com', '01 48 39 92 68', '95 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90610184404083,2.374929115176201', 'image/shopimage/IMGa4fe5783e6c5fe9b805409d4919e95d0.jpg', ''),
(117, 'NIKE: CHAUSSURE FEMME- HOMME - ENFANT', 'albertomoreira@hotmail.fr', '06 18 67 51 48', '79 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.904631037521874,2.3723525181412697', 'image/shopimage/IMGb732685d1ec2e7cb1f3a26ab2ec840cd.jpg', ' CHAUSSURE CHAUSSURE'),
(118, 'ELLISON', 'rexo@gmail.com', '0192837475', '18 Rue du Grain, 93300 Aubervilliers, France', '48.90540324939867,2.367878593504429', 'image/shopimage/IMG185b32da38889f546da76b8b96cbe2e6.jpg', ' Jordan Jordan Jordan Nike Nike Nike Nike gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj gshsjsj rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh rhh je heh gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gfeddd gggvc gggvc gggvc gggvc gggvc gggvc gggvc'),
(119, 'MANCHERSTER UNITED: ENSEMBLE POUR HOMME', 'cesardupont@hotmail.fr', '01 28 44 33 70', '78 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.905213062478325,2.374649830162525', 'image/shopimage/IMG2a7731f56337f2b171527af322fbcd8c.jpg', ' ENSEMBLE FOOTBALL ENSEMBLE FOOTBALL etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh etthhhh ghhjhhj ghhjhhj ghhjhhj ghhjhhj ghhjhhj ghhjhhj ghhjhhj ghhjhhj ghhjhhj ghhjhhj ghhjhhj'),
(120, 'shoptestaria', 'ariapathirana@gmail.com', '123456789', 'Paris', '48.856614,2.3522219000000004', 'image/shopimage/IMGe963deaab504aac2229f0d4489a350f9.jpg', ''),
(121, 'PATRONNE Paris prêt-à-porter féminin', 'contact@patronne-Paris.com', '09 53 24 96 37', '70 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90599319889079,2.3722800984978676', 'image/shopimage/IMGb2f7f12a98ea5d757a145088fbfbe355.jpg', ''),
(122, 'BIXING SARL: SOUVETEMENT POUR FEMMES', 'bixing@wanadoo.fr', '01 43 52 07 82', '6 Rue des Gardinoux, 93300 Aubervilliers, France', '48.90633015234906,2.3741700500249863', 'image/shopimage/IMG8f0f32635f341cc6d9fb4afae69bb67d.jpg', ''),
(123, 'FIRST LIGHT prêt-à-porter feminin', 'firstlight8gmail.com', '06 17 12 28 16', '70 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90605049656526,2.3720722272992134', 'image/shopimage/IMGba410d31d85a13fddb2f61bf913d25f1.jpg', ''),
(124, 'OMONSIM: PRÊT À PORTER POUR FEMMES', 'omonsim93@outlook.com', '06 21 12 91 09', '83 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90437517359181,2.3725439608097076', 'image/shopimage/IMGc99c39a77519e1e673774e347ee14c94.jpg', ''),
(125, 'BE STYLE: PRÊT À PORTER POUR FEMMES', 'bestyle93300@hotmail.com', '01 48 39 32 55', '77 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.904856928360985,2.3725711181759834', 'image/shopimage/IMG87a792005287fb878e2c8391ef68b2b0.jpg', ''),
(126, 'LANCOSTYLE prêt-à-porter féminin', 'lancostyle@gmail.com', '09 52 00 28 88', '70 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.906019864355144,2.3723816871643066', 'image/shopimage/IMG8d8b2d7afda99d55fb3b32ad478a2f68.jpg', ''),
(127, 'MY STYLE : PRÊT À PORTER POUR FEMMES', 'mystyle93300@gmail.com', '09 51 44 10 75', '79 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90462332415811,2.372538596391678', 'image/shopimage/IMG46fb50c3648316117e12802f0ec9e84a.jpg', ''),
(128, 'FRUITY FUN prêt-à-porter feminin', 'miss.coquette@live.fr', '01 41 61 85 15', '70 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90597600957563,2.371855638921261', 'image/shopimage/IMG16bd85e64afb62027bddaccd05231104.jpg', ''),
(129, 'ROSA FASHION : PRÊT À PORTER POUR FEMMES', 'rosafashion8888@hotmail.fr', '07 81 26 83 93', '79 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.904757095755066,2.3724889755249023', 'image/shopimage/IMGeaadfd30a7f4f7b71ce2aae177b6230b.jpg', ''),
(130, 'Quing prêt-à-porter féminin', 'quing75@hotmail.com', '01 48 11 68 88', '73 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90467268966556,2.373238652944565', 'image/shopimage/IMG6f176ccc24a9bffe6008e335d6dd0bdf.jpg', ''),
(131, 'GIVANA chaussures femme', 'givanaparis@gmail.com', '01 41 61 10 73', '69 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.90461362735628,2.3731518164277077', 'image/shopimage/IMG2f4506c3557691e784834b592b4eb572.jpg', ''),
(132, 'DAY-VINE chaussures féminines', 'divine.shoes93@gmail.com', '01 48 11 08 08', '79 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.904971746630224,2.3731638863682747', 'image/shopimage/IMG6827f9f0699760dde6fafd41848ec732.jpg', ''),
(133, 'LUCKY prêt-à-porter Masculin', 'lucky93300@hotmail.com', '01 48 33 08 75', '69 Avenue Victor Hugo, 93300 Aubervilliers, France', '48.904450324115416,2.3729972541332245', 'image/shopimage/IMG85bdd279b1d728371506c7b15651b44c.jpg', ''),
(134, 'SARAH JOHN: PRÊT À PORTER POUR FEMMES', 'sarahjohnparis@hotmail.com', '01 41 61 79 39', '81 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90442057245535,2.3724671825766563', 'image/shopimage/IMGf933733043c6ede7069cefda0bb1d8fe.jpg', ''),
(135, 'Z.H: PRÊT À PORTER POUR FEMMES', 'zh93300@gmail.com', '01 43 52 76 48', '8 Rue des Gardinoux, 93300 Aubervilliers, France', '48.906340289566366,2.3738984763622284', 'image/shopimage/IMG38c9ffd1266e5bd832092c9dfe599365.jpg', ''),
(136, 'Z.H: PRÊT À PORTER POUR FEMMES', 'believe93300@gmail.com', '01 49 37 17 01', '8 Rue des Gardinoux, 93300 Aubervilliers, France', '48.90628365334771,2.3738766834139824', 'image/shopimage/IMG7aa3bb425a1f39b4490d1f636e93dddf.jpg', ''),
(137, 'JOHN H: PRÊT À PORTER POUR HOMME', 'johnh388@outlook.com', '01 41 61 96 01', '53 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90689342591458,2.372938245534897', 'image/shopimage/IMG98f54c50492e81b656b6479970a4b39f.jpg', ''),
(138, 'ATTORA: PRÊT À PORTER POUR HOMME', 'attora93300@gmail.com', '09 53 52 46 97', '53 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90689342591458,2.372938245534897', 'image/shopimage/IMG8c39c84aca9977cb700d34081347316e.jpg', ''),
(139, 'FENG YUN: PRÊT À PORTER POUR FEMMES - HOMMES- ENFANTS', 'sarlfengyun@gmail.com', '01 43 52 16 89', '63 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.9059403086714,2.3729074001312256', 'image/shopimage/IMG1c355c544556342104af85a8b4ea3677.jpg', ''),
(140, 'AARHON: PRÊT À PORTER POUR HOMME', 'aarhon-paris@outlook.com', '01 48 39 19 05', '8 Rue des Gardinoux, 93300 Aubervilliers, France', '48.90631825213484,2.373836450278759', 'image/shopimage/IMGf340daef78c017426e973ca90a82f8ef.jpg', ''),
(141, 'UNIPLAY: PRÊT À PORTER POUR HOMME', 'uniplay1@hotmail.com', '01 43 52 22 17', '8 Rue des Gardinoux, 93300 Aubervilliers, France', '48.90631825213484,2.373836450278759', 'image/shopimage/IMGbf997be311554a61e8376e9e7051c817.jpg', ''),
(142, 'FRILIVIN: PRÊT À PORTER POUR HOMME', 'frilivin@hotmail.com', '09 80 66 71 72', '8 Rue des Gardinoux, 93300 Aubervilliers, France', '48.90632816898022,2.3739182576537132', 'image/shopimage/IMG0aedde086647278ccc234be982f0c666.jpg', ''),
(143, 'MAPLEAF', 'mapleafparis@gmail.com', '06 65 22 34 12', '43 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.907574149852785,2.373616509139538', 'image/shopimage/IMG3d0d90d129f4b6c7b1f446459e04a415.jpg', ''),
(144, 'MTX: PRÊT À PORTER POUR HOMME', 'mentex@live.fr', '01 48 33 52 23', '4 Rue des Gardinoux, 93300 Aubervilliers, France', '48.90630414817355,2.374388314783573', 'image/shopimage/IMG05659f22c14c456aa847087357a600a1.jpg', ''),
(145, 'SCHILO JOLIE accessoires femmes', 'schilo.jolie@gmail.com', '01 48 39 30 19', '49 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.907101015744814,2.3737087100744247', 'image/shopimage/IMG671bb1083d8eb63bf5a3bd14ce194167.jpg', ''),
(146, 'OMNIMEN: PRÊT À PORTER POUR HOMME', 'omnimen93@gmail.com', '01 48 38 02 43', '94 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90381495703647,2.3721369355916977', 'image/shopimage/IMGb5696a7da371352b9d764a2307889a9e.jpg', ''),
(147, 'UNOUNOUNO: ACCESOIRES POUR FEMMES', 'gambetta62@gmail.com', '01 48 33 49 46', '79 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90467489348172,2.37249031662941', 'image/shopimage/IMGa3c1d715805a03a58a05eefc67975336.jpg', ''),
(148, 'LX MODA: ACCESSOIRES POUR FEMME', 'lxmoda@hotmail.com', '01 44 02 18 55', '79 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.90465968714824,2.3725587129592896', 'image/shopimage/IMGafb419f2bfa84ae44f4b2fa2f5e3bb03.jpg', ''),
(149, 'HOLOGRAMME: ACCESSOIRES POUR FEMMES', 'hologramme93@hotmail.fr', '01 44 78 09 51', '81 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.904543105104494,2.3725352436304092', 'image/shopimage/IMG46489a83660c8611b35f8721db3af945.jpg', ''),
(150, 'LILY CONTI: BIJOUX POUR FEMMES', 'lilyconti68@hotmail.com', '01 44 02 22 51', '81 Rue de la Haie Coq, 93300 Aubervilliers, France', '48.904543105104494,2.3725352436304092', 'image/shopimage/IMG8138070cb87ee2d63937f930b725e516.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `shopbasket`
--

CREATE TABLE `shopbasket` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopbasket`
--

INSERT INTO `shopbasket` (`id`, `userid`, `productid`, `count`) VALUES
(6, 13, 50, 199),
(9, 154, 3, 1),
(10, 154, 9, 222222222),
(16, 13, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shopfavproduct`
--

CREATE TABLE `shopfavproduct` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopfavproduct`
--

INSERT INTO `shopfavproduct` (`id`, `productid`, `userid`) VALUES
(1, 3, 13),
(5, 10, 13),
(6, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `shopfavuser`
--

CREATE TABLE `shopfavuser` (
  `id` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `buyerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopfavuser`
--

INSERT INTO `shopfavuser` (`id`, `sellerid`, `buyerid`) VALUES
(1, 115, 13),
(2, 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `shopproduct`
--

CREATE TABLE `shopproduct` (
  `id` int(11) NOT NULL,
  `shopid` varchar(100) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productvalue` varchar(100) NOT NULL,
  `productimg` varchar(200) NOT NULL,
  `productdes` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopproduct`
--

INSERT INTO `shopproduct` (`id`, `shopid`, `productname`, `productvalue`, `productimg`, `productdes`) VALUES
(1, '1', 'sunglass', '20', 'image/product/IMG15713361840.jpg_split_image/product/IMG15713361841.jpg', 'Test'),
(2, '1', 'Cloth', '12', 'image/product/IMG15701756830.jpg_split_image/product/IMG15701756831.jpg', 'Test'),
(3, '2', 'bag', '20', 'image/product/IMG15701757300.jpg_split_image/product/IMG15701757301.jpg', 'Test'),
(4, '2', 'dress', '25', 'image/product/IMG15701757480.jpg_split_image/product/IMG15701757481.jpg', 'Test'),
(5, '7', 'tgfhu', '5000000', 'image/product/IMG2c1615652c3d1e6a1ce3a9fff4d30f6a.jpg_split_image/product/IMG26b86cde00649ff09ed43e8f763976ad.jpg', 'fuithhru huhf jifgh  ig  igfiujvtvju'),
(6, '7', 'cartier montre', '50004', 'image/product/IMG15743699170.jpg_split_image/product/IMG15743699171.jpg', 'ufcrju uufh utfjut ug'),
(7, '7', 'tv samsung', '540', 'image/product/IMG15733750450.jpg_split_image/product/IMG15733750451.jpg_split_image/product/IMG15733750452.jpg', 'yrchyg utth'),
(8, '7', 'ydhd', '1', 'image/product/IMG15714008810.jpg', 'heyhr'),
(9, '7', 'trttuu', '5432', 'image/product/IMG15714014280.jpg', 'fuuvcgh'),
(10, '1', 'sport', '20', 'image/product/IMG15714015900.jpg_split_image/product/IMG15714015901.jpg_split_image/product/IMG15714015902.jpg_split_image/product/IMG15714015903.jpg', 'sporttest'),
(11, '7', 'ugtrhk ytgi', '5432', 'image/product/IMG15714089210.jpg_split_image/product/IMG15714089221.jpg_split_image/product/IMG15714089222.jpg_split_image/product/IMG15714089233.jpg_split_image/product/IMG15714089234.jpg_split_image', 'uiyguth'),
(12, '7', 'hdyydk utrh', '5000', 'image/product/IMG15714145270.jpg_split_image/product/IMG15714145271.jpg_split_image/product/IMG15714145272.jpg_split_image/product/IMG15714145273.jpg_split_image/product/IMG15714145274.jpg_split_image', 'firgbtgb jtjuf hyfvktv'),
(13, '7', 'ycxtu ufghu', '56789', 'image/product/IMG15714947090.jpg_split_image/product/IMG15714947091.jpg_split_image/product/IMG15714947092.jpg_split_image/product/IMG15714947093.jpg_split_image/product/IMG15714947094.jpg', 'yfgutjuyv jhfhiu'),
(14, '7', 'yueydufh hd', '5454', 'image/product/IMG15716780760.jpg', 'duufyd dueumd dhd'),
(15, '7', 'urfhufh uygju', '543', 'image/product/IMG15717533490.jpg', 'turhiuhh'),
(16, '7', 'tuuhfert', '5656', 'image/product/IMG15723792100.jpg', 'tugg yfghughu'),
(37, '7', 'enseigne fleuriste', '12345', 'image/product/IMG15742806030.jpg', 'yyyyyfhfhfjfhfufhrufhfufjfjfurjf fjfjfjfjfhfuf fjfjfhfufhfhfhf fjfjfufjfhfur fjfjfhhdudjfkdojf fifjrjjfuf fjfjfjfjjfvv fujfhrhfiejhf7rjjfjf fjfbfjjfvf f fufb f jfhr   fuvf fuvf  fj f  fuhvf  f hvf   fjvrhhfvfvr  fuvr  r  fjfb  fbf fuht fu rvfurv fjf  fjf  rh fhfu ruvf  fjvf  fufjjfjjfjjjgufnkfjjrujrjbejdhf fifbjfjjfjjf fjjfj fubf fuvf fuvf fubr'),
(30, '18', 'test', '20', 'image/product/IMG15740747310.jpg', 'test'),
(19, '7', 'hhfh', '5665', 'image/product/IMG15726897430.jpg', 'gtijgu yuuh j'),
(20, '7', 'hdyhfjf fjfhr', '6453', 'image/product/IMG15727880730.jpg_split_image/product/IMG15727880731.jpg_split_image/product/IMG15727880732.jpg_split_image/product/IMG15727880733.jpg_split_image/product/IMG15727880734.jpg', 'jfyhrufvf jfurh fuvf'),
(21, '11', 'iphone7', '280', 'image/product/IMG15728674280.jpg', 'gduhhf hehdheh'),
(22, '7', 'gsuvfu udh', '5000000', 'image/product/IMG15733749950.jpg_split_image/product/IMG15733749951.jpg_split_image/product/IMG15733749952.jpg_split_image/product/IMG15733749953.jpg_split_image/product/IMG15733749954.jpg', 'hgduhdyd udchhdh'),
(23, '9', 'sans photo', '5643', 'image/product/IMG15733802430.jpg', 'sans photos'),
(27, '13', 'gdydcdhdcdhdceheheuejevehdhdcdcdcd eveudhece ehdufhf r fhd f fufvrhe ece ehe fhr eud fucdud eveydhdu', '433', 'image/product/IMG15734799290.jpg', 'yscd dhdveud e eudhfhfhe fuf eur r rurvrrurhrheurhrjeurjr ejevr rjr r rje r e eurhrufhehr ejevehe ejevehe ehehe eueueheheufurheurve e ejeueheheheufvieueiezioaehkakzjzkz ekqkzkzkzkzjz'),
(36, '19', '123', '20', 'image/product/IMG15742552480.jpg', '456'),
(38, '9', 'voiture', '1238', 'image/product/IMG15743085480.jpg', 'hryhdjuf dufvhf dufhhjfjf fuhhf  jfvf fud'),
(39, '9', 'mercedes', '4537', 'image/product/IMG15743085980.jpg', 'gjdufjfjd doxyfvfuf fifheh'),
(40, '9', 'wolgsvagen', '4567', 'image/product/IMG15743086590.jpg', 'top de voiture'),
(41, '21', 'chicha', '2334', 'image/product/IMG15743530460.jpg', 'ug7ufjfufu uufyfjv'),
(42, '117', 'CHAUSSURE', '26', 'image/product/IMG0dff9d47eb672b17d1429409933f1297.jpg', 'TAILLE: 43\nCOULEUR: NOIR'),
(43, '117', 'CHAUSSURE', '26', 'image/product/IMG6ef53dfeb3f058a986c8e74810ddddc0.jpg', 'TAILLE: 43\nCOULEUR: NOIR'),
(47, '118', 'Nike', '123', 'image/product/IMG295f55f9e00dc05d6418ccfbbd1be5fa.jpg', 'Je vend'),
(48, '118', 'Nike', '123', 'image/product/IMG6ced1f2d9e59aba7bedf2d593bbf6122.jpg', 'Je vend'),
(49, '118', 'Nike', '123', 'image/product/IMGc82a781d73fff7cc37ac9f15d9aa974e.jpg', 'Je vend'),
(50, '118', 'Nike', '123', 'image/product/IMG1d5a1683055745c4aae744eeaea8be06.jpg', 'Je vend'),
(69, '119', 'ENSEMBLE FOOTBALL', '125', 'image/product/IMGbfe7dd6f618c1944f72c7d4dd6700ecb.jpg', 'Jsjsjsjshshshs'),
(70, '119', 'ENSEMBLE FOOTBALL', '125', 'image/product/IMG92f22a6e63ac50e58990d9c0e259d797.jpg', 'Jsjsjsjshshshs');

-- --------------------------------------------------------

--
-- Table structure for table `shoptest`
--

CREATE TABLE `shoptest` (
  `itemname` varchar(30) DEFAULT NULL,
  `itemnum` varchar(20) DEFAULT NULL,
  `siteurl` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `statusflag` varchar(10) DEFAULT NULL,
  `count` varchar(10) DEFAULT NULL,
  `status_value` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoptest`
--

INSERT INTO `shoptest` (`itemname`, `itemnum`, `siteurl`, `status`, `statusflag`, `count`, `status_value`) VALUES
('BrownXXL', '980057497', 'https://www.samsclub.com/s/Keter?clubId=6235&offset=20&searchCategoryId=all&searchTerm=Keter&selectedFilter=all&sortKey=relevance&sortOrder=1', '', 'a', 'a', NULL),
('WhiteXXL', '980178953', 'https://www.samsclub.com/s/Keter?clubId=6235&offset=20&searchCategoryId=all&searchTerm=Keter&selectedFilter=all&sortKey=relevance&sortOrder=1', '', 'a', 'a', NULL),
('Brown150', '341781', 'https://www.samsclub.com/p/150-gal-deck-box/prod8340178?xid=plp_product_1_1', '', 'a', 'a', NULL),
('White150', '506509', 'https://www.samsclub.com/p/150-gal-deck-box/prod8340178?xid=plp_product_1_1', '', 'a', 'a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shopuser`
--

CREATE TABLE `shopuser` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `active` varchar(20) NOT NULL,
  `device` varchar(100) NOT NULL,
  `lang` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopuser`
--

INSERT INTO `shopuser` (`id`, `username`, `password`, `email`, `mobile`, `role`, `active`, `device`, `lang`) VALUES
(1, 'testshop1', 'testshop112345', 'testshop1@shop.com', '1234567890123', 'seller', 'no', '', ''),
(2, 'testshop2', 'test', 'testshop2@test.com', '1234567899', 'seller', 'no', '', ''),
(3, 'testbuyer1', 'test', 'testbuyer1@buyer.com', '1234567890', 'buyer', 'yes', '', ''),
(4, 'testbuyer2', 'test', 'testbuyer2@buyer.com', '234234234', 'buyer', 'yes', '', ''),
(12, 'marc1', '1234567', 'webcarrefour@gmail.com', '06521725256', 'seller', 'no', '0842FD2F-E66F-4194-992C-E42883A9CA56', 'fr'),
(13, 'marc2', '1234567', 'enseignes.led@gmail.com', '0652172524', 'buyer', 'yes', '', ''),
(14, 'aaaaa', 'aaaaa', 'aaa@aaa.com', '1231231231', 'buyer', 'yes', '', ''),
(15, 'wwwww', 'wwwww', 'www@www.com', '1231231231', 'buyer', 'yes', '', ''),
(17, 'marc3', '1234567', 'sarlmedia365@gmail.com', '0652172524', 'seller', 'no', '', ''),
(33, 'test', 'test123', 'test@gmail.com', '123456789', 'buyer', 'yes', '', ''),
(19, 'Bary', '1234567', 'fr.bari@yahoo.fr', '0628679277', 'seller', 'no', '', ''),
(20, 'Samuel', '1234567', 'sami-2209@hotmail.fr', '0616076898', 'seller', 'no', '', ''),
(21, 'marc4', '1234567', 'hannoufmedia@gmail.com', '0652172524', 'seller', 'no', '', ''),
(23, 'debayan.vtest', '4testing', 'debayan.vtest@gmail.com', '8087464055', 'buyer', 'yes', '', ''),
(24, 'debayan.vtestcorp', '4testing', 'debayan@vtestcorp.com', '9764857975', 'seller', 'no', '', ''),
(25, 'sunny', 'test@12', 'sunny@vtestcorp.com', '8087464055', 'buyer', 'yes', '', ''),
(26, 'erik', 'king2two', 'erikii2019@outlook.com', '986769789', 'buyer', 'yes', '', ''),
(27, 'matitesting', 'markfostercool2', 'matiastesting7@gmail.com', '542995531022', 'buyer', 'yes', '', ''),
(28, 'mati2019', 'matias234', 'kenobiluc@gmail.com', '299155531022', 'buyer', 'yes', '', ''),
(29, 'matias90', 'juanww', 'kenobiluc@hotmail.com', '549299155531022', 'buyer', 'yes', '', ''),
(30, 'pepe', '1234!', 'pepe@yopmail.com', '1134567890', 'buyer', 'yes', '', ''),
(34, 'testhdhdhjd', 'test', 'test@yopmail.com', '1234467888', 'buyer', 'yes', '', ''),
(35, 'testhssj', '1234', 'testbdnn@yopmail.com', '2738939497473929291837737', 'buyer', 'yes', '', ''),
(36, 'test 456', 'test', 'testtt@yopmail.com', '1234567123456671235677', 'buyer', 'yes', '', ''),
(40, 'test123', 'test', 'test@yopmilsh.com', '132654879', 'seller', 'no', '', ''),
(41, 'priyanka', 'test123', 'priyafl.90@gmail.com', '9168643343', 'buyer', 'yes', '', ''),
(39, 'test1234', 'test', 'test@msn.com', '48698961948', 'buyer', 'yes', '', ''),
(42, 'priyaseller', 'test123', 'priyankapatkar060690@gmail.com', '8879571743', 'buyer', 'yes', '', ''),
(43, 'testseller', 'test123', 'patkarpriyankaj@gmail.com', '1234567890', 'seller', 'no', '', ''),
(44, 'testop', '1234', 'fdnl@gmail.com', '12345678915687', 'buyer', 'yes', '', ''),
(45, 'yasmine', '12345', 'jk@gmail.com', '1234612345', 'buyer', 'yes', '', ''),
(46, 'marc5', '1234567', '1hannoufmedia@gmail.com', '0652172524', 'buyer', 'yes', '', ''),
(96, 'JOLIKO', '1234567', 'modstars@outlook.fr', '09 50 18 89 89', 'seller', 'no', '', ''),
(95, 'MOOCCI', '1234567', 'moocci@hotmail.com', '01 48 34 80 98', 'seller', 'no', '', ''),
(94, 'NEW PASSION', '1234567', 'NEWPASSION93@GMAIL.COM', '06 51 54 47 88', 'seller', 'no', '', ''),
(93, 'CHARJ BLUE CHARJ', '1234567', 'bluecharj@outlook.fr', '01 43 52 24 71', 'seller', 'no', '', ''),
(92, 'ELLA KINGSLEY', '1234567', 'info.ekingsley@gmail.com', '01 41 61 29 74', 'seller', 'no', '', ''),
(91, 'CHARM’S', '1234567', 'charms_paris@hotmail.fr', '01 48 39 18 18', 'seller', 'no', '', ''),
(90, 'COPPEROSE', '1234567', 'copperose@hotmail.com', '09 84 18 70 88', 'seller', 'no', '', ''),
(89, 'K.ZELL', '1234567', 'Kzellparis@gmail.com', '01 48 11 67 67', 'seller', 'no', '', ''),
(88, 'CHARMENTE', '1234567', 'sarl_charmante@outlook.com', '01 48 33 28 18', 'seller', 'no', '', ''),
(87, 'CHARLIOR', '1234567', 'jczparis11@gmail.com', '01 48 33 28 18', 'seller', 'no', '', ''),
(86, 'BLUOLTRE', '1234567', 'missco77@orange.fr', '09 67 54 44 95', 'seller', 'no', '', ''),
(85, 'ADILYNN PARIS', '1234567', 'adilynnparis@gmail.com', '01 76 58 04 26', 'seller', 'no', '', ''),
(84, 'JAUNE ROUGE', '1234567', 'jaunerouge3138@hotmail.com', '01 41 57 01 78', 'seller', 'no', '', ''),
(83, 'MAXMILA PARIS', '1234567', 'maxmilaparis@gmail.com', '06 29 65 76 12', 'seller', 'no', '', ''),
(82, 'EMILIE FASHION', '1234567', 'emiliefashion18@outlook.com', '01 41 61 80 35', 'seller', 'no', '', ''),
(81, 'GDCY', '1234567', 'gdcy75011@hotmail.com', '09 50 400 664', 'seller', 'no', '', ''),
(80, 'CHIC GIRL', '1234567', 'chic girl2008@live.cn', '01 48 33 99 49', 'seller', 'no', '', ''),
(79, 'MERCI MADEMOISELLE', '1234567', 'Mercimademoiselle.paris@gmail.com', '01 48 33 23 21', 'seller', 'no', '', ''),
(78, 'KOOLOOK', '1234567', 'koolook.jdc@gmail.com', '09 50 00 16 88', 'seller', 'no', '', ''),
(68, 'mapindu5', '1234567', 'kevinmapindu408@gmail.com', '0771586261', 'buyer', 'yes', '', ''),
(77, 'testset', '1234567', 'test@testtest.com', '123123123', 'seller', 'no', '', ''),
(76, 'test1234567892', '123456789', 'test@asdasd.com', '123456789', 'seller', 'no', '', ''),
(71, 'Ellison', 'Ellison12345', 'exauceloso2002@gmail.com', '07 66 23 05 25', 'buyer', 'yes', '', ''),
(97, 'J&L', '1234567', 'jl_54@hotmail.fr', '01 43 38 05 12', 'seller', 'no', '', ''),
(98, 'RUE MAZARINE', '1234567', 'contactruemazarine@gmail.com', '01 47 00 95 07', 'seller', 'no', '', ''),
(99, 'AZAKA', '1234567', 'azaka.paris@free.fr', '01 44 02 22 22', 'seller', 'no', '', ''),
(100, 'STRÉYEE', '1234567', 'contact@astreyee.com', '09 52 66 92 27', 'seller', 'no', '', ''),
(101, 'ASHLEY', '1234567', 'contact@ashley.fr', '01 43 52 66 99', 'seller', 'no', '', ''),
(102, 'EIGHT', '1234567', 'info@eightparis.com', '09 80 62 56 53', 'seller', 'no', '', ''),
(103, 'ATTENTIF', '1234567', 'attentifparis@gmail.com', '01 48 39 13 45', 'seller', 'no', '', ''),
(104, 'PM FASHION', '1234567', 'PARISETMOI@HOTMAIL.FR', '01 41 57 00 08', 'seller', 'no', '', ''),
(105, 'ares', 'ares1998', 'areskretindo@gmail.com', '08812006161', 'buyer', 'yes', '', ''),
(106, 'Testing', '123456', 'test123@gmail.com', '9876543219', 'buyer', 'yes', '', ''),
(107, '123456', '@Mit9274', '123.abc@abc.com', '9876543219', 'buyer', 'yes', '', ''),
(108, 'POMME ROUGE', '1234567', 'pommerougeparis@gmail.com', '09 53 88 92 90', 'seller', 'no', '', ''),
(109, 'INTEMPORELLE', '1234567', 'annaellis.paris@gmail.com', '01 41 61 93 38', 'seller', 'no', '', ''),
(110, 'KAIA', '1234567', 'kaia-paris@outlook.com', '09 53 79 01 13', 'seller', 'no', '', ''),
(111, 'JUS DE POM', '1234567', 'jusdepom.co@gmail.com', '01 41 61 76 67', 'seller', 'no', '', ''),
(112, 'SENES', '1234567', 'senesparis@gmail.com', '01 41 61 15 12', 'seller', 'no', '', ''),
(113, 'MISSY PARIS', '1234567', 'paris@missy.com.fr', '01 43 52 69 84', 'seller', 'no', '', ''),
(114, 'BY ONE', '1234567', 'byone93300@hotmail.com', '01 41 61 29 83', 'seller', 'no', '', ''),
(115, 'MATCHPOINT', '1234567', 'matchpointparis@outlook.com', '09 52 48 40 77', 'seller', 'no', '', ''),
(116, 'C’FAIT POUR VOUS', '1234567', 'grifflin-paris@hotmail.com', '09 70 00 93 22', 'seller', 'no', '', ''),
(117, 'BELLO CLOCK', '1234567', 'bestwomen@icloud.com', '06 18 62 38 60', 'seller', 'no', '', ''),
(118, 'ZELIA', '1234567', 'contact.fashioncenter@zelia.fr', '01 48 33 88 18', 'seller', 'no', '', ''),
(119, 'LADY GLORY', '1234567', 'contact@ladyglory.fr', '01 76 58 00 88', 'seller', 'no', '', ''),
(120, 'MAX SHOES', '1234567', 'maxshoes8@gmail.com', '01 41 61 29 21', 'seller', 'no', '', ''),
(121, 'LILY SHOES', '1234567', 'info@lilyshoes.fr', '01 43 52 03 84', 'seller', 'no', '', ''),
(122, 'KERLINE', '1234567', 'kerlineparis@gmail.com', '01 440 22 790', 'seller', 'no', '', ''),
(123, 'ROCK & JOY', '1234567', 'redjin@hotmail.fr', '09 52 29 28 2', 'seller', 'no', '', ''),
(124, 'LOVIE & CO', '1234567', 'contact@lovieandco.com', '01 43 52 98 98', 'seller', 'no', '', ''),
(125, 'LAURA JO', '1234567', 'contact@laurajo.fr', '09 52 64 59 33', 'seller', 'no', '', ''),
(126, 'SURDELLE', '1234567', 'surdelle@hotmail.com', '09 51 82 00 88', 'seller', 'no', '', ''),
(127, 'MGFASHION', '1234567', 'mgfashion93@hotmail.com', '01 41 61 76 43', 'seller', 'no', '', ''),
(128, 'GIRLHOOD', '1234567', 'girlhoodshoes@gmail.com', '01 48 34 82 31', 'seller', 'no', '', ''),
(129, 'STAMINA', '1234567', 'modissimo@nacre.paris', '09 82 32 54 94', 'seller', 'no', '', ''),
(130, 'EFIA BEAUTY', '1234567', 'efiabeautyparis@gmail.com', '07 68 36 99 82', 'seller', 'no', '', ''),
(131, 'ELONG', '1234567', 'elongshoes.czc@gmail.com', '09 51 80 11 11', 'seller', 'no', '', ''),
(132, 'COPPEROSE Paris', '1234567', 'copperose@hotmail.fr', '09 84 18 70 88', 'seller', 'no', '', ''),
(133, 'C’ POUR VOUS PARIS', '1234567', 'griffin-paris@hotmail.com', '09 70 00 93 22', 'seller', 'no', '', ''),
(134, 'GIOAVANNI', '1234567', 'contact@giovanniparis.fr', '01 48 11 10 90', 'seller', 'no', '', ''),
(135, 'MOOCI', '1234567', 'mooci@hotmail.fr', '01 48 34 80 98', 'seller', 'no', '', ''),
(136, 'testingseller', '123456', 'testing@gmail.com', '9876543210', 'buyer', 'yes', '', ''),
(137, 'Testingforseller', '123456', 'testingforseller@gmail.com', '0987654321', 'seller', 'no', '', ''),
(138, 'YULEE', '1234567', 'yulee.pat@gmail.com', '01 48 33 14 04', 'seller', 'no', '', ''),
(139, 'CISSY&CO', '1234567', 'cissy.co93@gmail.com', '01 44 02 28 89', 'seller', 'no', '', ''),
(140, 'OXANA', '1234567', 'oxana93@hotmail.com', '01 48 33 88 68', 'seller', 'no', '', ''),
(141, 'L8 SARL', '1234567', 'l8style.paris@gmail.com', '01 48 39 21 84', 'seller', 'no', '', ''),
(142, 'V.J.L', '1234567', 'vjl93300@gmail.com', '01 49 37 47 09', 'seller', 'no', '', ''),
(143, 'BLACK INDUSTRY', '1234567', 'blackindustry7@gmail.com', '07 67 52 98 34', 'seller', 'no', '', ''),
(144, 'NEW BAG', '1234567', 'newbagcrea@gmail.com', '01 41 61 35 79', 'seller', 'no', '', ''),
(145, 'BERRY DENIM', '1234567', 'Colberryparis@gmail.com', '06 22 84 86 80', 'seller', 'no', '', ''),
(146, 'RED SWALLOW', '1234567', 'redswallow@gmail.com', '01 49 37 20 18', 'seller', 'no', '', ''),
(147, 'ENZO', '1234567', 'enzo@gmail.com', '01 43 52 81 63', 'seller', 'no', '', ''),
(148, 'MODA ORIENT', '1234567', 'modaorient@hotmail.com', '01 41 61 02 97', 'seller', 'no', '', ''),
(149, 'SUPER BELLE', '1234567', 'superbelleparis@live.fr', '01 48 11 93 83', 'seller', 'no', '', ''),
(150, 'ENZO DI CAPRI', '1234567', 'enzodicapri93@hotmail.com', '01 43 52 77 81', 'seller', 'no', '', ''),
(151, 'H-MEN', '1234567', 'hmen.paris@gmail.com', '06 66 39 11 65', 'seller', 'no', '', ''),
(152, 'CHEZ SUZANNE', '1234567', 'chezsuzanne@gmail.com', '01 48 39 92 68', 'seller', 'no', '', ''),
(153, 'Arhabsoft', 'arhabsoft12345', 'arhabsoftsolution@gmail.com', '03226944016', 'buyer', 'yes', '', ''),
(154, 'Vinay.s', 'Maziz@123', 'vnayurs@gmail.com', '923226944016', 'buyer', 'yes', 'd4fcb2792befb0bb', 'en'),
(155, 'kevin kama', '1234567', 'kevinkama41@yahoo.fr', '07 71 58 62 61', 'buyer', 'yes', '3A53941E-0226-46B7-8330-264EE04A03B0', 'fr'),
(156, 'Exauce', 'Exauce2002', 'exausjsvz@gmail.com', '0194020493', 'buyer', 'yes', '', ''),
(157, 'Elli', '12345', 'ehskzhs@gmail.com', '0987654321', 'buyer', 'yes', '', ''),
(158, 'NIKE', '1234567', 'albertomoreira@hotmail.fr', '06 18 67 51 48', 'seller', 'no', '', ''),
(159, 'Elo', 'Exauce2002', 'rexo@gmail.com', '0192837475', 'seller', 'no', '', ''),
(160, 'MANCHESTER UNITED', '1234567', 'cesardupont@hotmail.fr', '01 28 44 33 70', 'seller', 'no', '', ''),
(161, 'testaria', 'testaria12345', 'ariapathirana@gmail.com', '123456789', 'seller', 'no', '', ''),
(162, 'PATRONNE', '1234567', 'contact@patronne-Paris.com', '09 53 24 96 37', 'seller', 'no', '', ''),
(163, 'BIXING SARL', '1234567', 'bixing@wanadoo.fr', '01 43 52 07 82', 'seller', 'no', '', ''),
(164, 'FIRST LIGHT', '1234567', 'firstlight8gmail.com', '06 17 12 28 16', 'seller', 'no', '', ''),
(165, 'OMONSIM', '1234567', 'omonsim93@outlook.com', '06 21 12 91 09', 'seller', 'no', '', ''),
(166, 'BE STYLE', '1234567', 'bestyle93300@hotmail.com', '01 48 39 32 55', 'seller', 'no', '', ''),
(167, 'LANCOSTYLE', '1234567', 'lancostyle@gmail.com', '09 52 00 28 88', 'seller', 'no', '', ''),
(168, 'MY STYLE', '1234567', 'mystyle93300@gmail.com', '09 51 44 10 75', 'seller', 'no', '', ''),
(169, 'FRUITY FUN', '1234567', 'miss.coquette@live.fr', '01 41 61 85 15', 'seller', 'no', '', ''),
(170, 'ROSA FASHION', '1234567', 'rosafashion8888@hotmail.fr', '07 81 26 83 93', 'seller', 'no', '', ''),
(171, 'QUING', '1234567', 'quing75@hotmail.com', '01 48 11 68 88', 'seller', 'no', '', ''),
(172, 'GIVANA', '1234567', 'givanaparis@gmail.com', '01 41 61 10 73', 'seller', 'no', '', ''),
(173, 'DAY-VINE', '1234567', 'divine.shoes93@gmail.com', '01 48 11 08 08', 'seller', 'no', '', ''),
(174, 'LUCKY', '1234567', 'lucky93300@hotmail.com', '01 48 33 08 75', 'seller', 'no', '', ''),
(175, 'SARAH JOHN', '1234567', 'sarahjohnparis@hotmail.com', '01 41 61 79 39', 'seller', 'no', '', ''),
(176, 'Z.H SKIN', '1234567', 'zh93300@gmail.com', '01 43 52 76 48', 'seller', 'no', '', ''),
(177, 'TOP MONDAY', '1234567', 'believe93300@gmail.com', '01 49 37 17 01', 'seller', 'no', '', ''),
(178, 'JOHN H', '1234567', 'johnh388@outlook.com', '01 41 61 96 01', 'seller', 'no', '', ''),
(179, 'ATTORA', '1234567', 'attora93300@gmail.com', '09 53 52 46 97', 'seller', 'no', '', ''),
(180, 'FENG YUN', '1234567', 'sarlfengyun@gmail.com', '01 43 52 16 89', 'seller', 'no', '', ''),
(181, 'AARHON', '1234567', 'aarhon-paris@outlook.com', '01 48 39 19 05', 'seller', 'no', '', ''),
(182, 'UNIPLAY', '1234567', 'uniplay1@hotmail.com', '01 43 52 22 17', 'seller', 'no', '', ''),
(183, 'usama', 'usa123', 'usama.aziz@confiz.com', '00923230453529', 'buyer', 'yes', '41084a401669537c', 'fr'),
(184, 'FRILIVIN', '1234567', 'frilivin@hotmail.com', '09 80 66 71 72', 'seller', 'no', '', ''),
(185, 'MAPLEAF', '1234567', 'mapleafparis@gmail.com', '06 65 22 34 12', 'seller', 'no', '', ''),
(186, 'MTX', '1234567', 'mentex@live.fr', '01 48 33 52 23', 'seller', 'no', '', ''),
(187, 'SCHILO JOLIE', '1234567', 'schilo.jolie@gmail.com', '01 48 39 30 19', 'seller', 'no', '', ''),
(188, 'OMNIMEN', '1234567', 'omnimen93@gmail.com', '01 48 38 02 43', 'seller', 'no', '', ''),
(189, 'UNOUNOUNO', '1234567', 'gambetta62@gmail.com', '01 48 33 49 46', 'seller', 'no', '', ''),
(190, 'LX MODA', '1234567', 'lxmoda@hotmail.com', '01 44 02 18 55', 'seller', 'no', '', ''),
(191, 'HOLOGRAME', '1234567', 'hologramme93@hotmail.fr', '01 44 78 09 51', 'seller', 'no', '', ''),
(192, 'LILY CONTI', '1234567', 'lilyconti68@hotmail.com', '01 44 02 22 51', 'seller', 'no', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `CountryId` int(11) NOT NULL,
  `CountryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcountry`
--

INSERT INTO `tblcountry` (`CountryId`, `CountryName`) VALUES
(31, 'جامعة الشرق الاوسط الامريكية'),
(32, 'الولايات المتحدة الامريكية'),
(33, 'الامارات العربية المتحدة'),
(34, 'المملكة المتحدة'),
(35, 'استراليا'),
(36, 'ايرلندا'),
(37, 'مالطا'),
(38, 'نيوزيلندا');

-- --------------------------------------------------------

--
-- Table structure for table `tbldetail`
--

CREATE TABLE `tbldetail` (
  `id` int(11) NOT NULL,
  `CivilId` varchar(12) NOT NULL,
  `PlanId` int(11) NOT NULL,
  `CountryId` int(11) NOT NULL,
  `MajorId` int(11) NOT NULL,
  `PlanyearId` int(11) NOT NULL,
  `Filpath` varchar(500) NOT NULL,
  `Filtype` varchar(500) NOT NULL,
  `DateIn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldetail`
--

INSERT INTO `tbldetail` (`id`, `CivilId`, `PlanId`, `CountryId`, `MajorId`, `PlanyearId`, `Filpath`, `Filtype`, `DateIn`) VALUES
(73, '123456789012', 9, 21, 5, 10, 'uploads/34768807_TCeMap_trackingfunktion.png', 'image/png', '2019-06-12'),
(74, '123456123456', 18, 24, 5, 11, 'uploads/53F4E585-D428-46D2-92D0-9444CC175E85.jpeg', 'image/jpeg', '2019-06-02'),
(76, '123456789012', 9, 23, 5, 12, 'uploads/Desktop Background Hp (154).jpg', 'image/jpeg', '2019-06-14'),
(77, '123456789012', 19, 26, 10, 11, 'uploads/3 new _PHOTO GUIDELINE BY BRAND_.pdf', 'application/pdf', '2019-06-04'),
(79, '123456123456', 10, 22, 4, 15, 'uploads/4.jpg', 'image/jpeg', '2019-06-05'),
(81, '123456789012', 13, 22, 5, 13, 'uploads/Desktop Background Hp (154).jpg', 'image/jpeg', '2019-06-06'),
(82, '123412341234', 19, 28, 10, 14, '', '', '2019-06-29'),
(83, '123412341234', 9, 21, 4, 11, 'uploads/2019-05-29_bw-upload-api.pdf', 'application/pdf', '2019-06-13'),
(84, '123412341234', 9, 21, 4, 13, 'uploads/53F4E585-D428-46D2-92D0-9444CC175E85 (1).jpeg', 'image/jpeg', '2019-06-01'),
(85, '123123123123', 18, 21, 10, 15, 'uploads/4.jpg', 'image/jpeg', '2019-06-01'),
(87, '233333333333', 9, 21, 4, 11, '', '', '2019-06-11'),
(88, '123451234512', 9, 21, 4, 10, '', '', '2019-06-01'),
(89, '432432423432', 9, 22, 4, 11, 'uploads/559495-bigthumbnail.jpg', 'image/jpeg', '2019-06-08'),
(90, '432432423432', 9, 22, 4, 10, 'uploads/Desktop Background Hp (154).jpg', 'image/jpeg', '2019-06-08'),
(91, '301012900638', 20, 30, 14, 12, 'uploads/Fatma.pdf', 'application/pdf', '11/06/2019'),
(92, '207977677777', 18, 23, 14, 10, 'uploads/image.jpg', 'image/jpeg', '2019-06-16'),
(93, '301011001171', 18, 22, 9, 11, 'uploads/Fatma gabras.pdf', 'application/pdf', '2019-04-23'),
(94, '300092000562', 18, 21, 16, 12, 'uploads/عبدالعزيز العنزي.pdf', 'application/pdf', '2019-05-07'),
(95, '300071900801', 18, 21, 16, 12, 'uploads/بندر الديحاني.pdf', 'application/pdf', '2019-05-05'),
(97, '297040801304', 22, 31, 17, 10, 'uploads/297040801304.pdf', 'application/pdf', '2019-07-15'),
(98, '301102100984', 18, 33, 18, 12, 'uploads/301102100984.pdf', 'application/pdf', '2019-07-04'),
(99, '300122300911', 18, 32, 27, 11, 'uploads/300122300911.pdf', 'application/pdf', '2019-06-02'),
(100, '301010101226', 18, 34, 29, 11, 'uploads/301010101226.pdf', 'application/pdf', '2019-06-02'),
(101, '301071700214', 18, 38, 15, 12, 'uploads/301071700214.pdf', 'application/pdf', '2019-07-21'),
(103, '200101900133', 18, 34, 27, 11, 'uploads/300101900133.pdf', 'application/pdf', '2019-06-02'),
(104, '299031600104', 18, 32, 36, 11, 'uploads/299031600104.pdf', 'application/pdf', '2019-02-05'),
(105, '300051100065', 18, 32, 27, 11, 'uploads/300051100065.pdf', 'application/pdf', '2019-06-02'),
(106, '294080200657', 18, 32, 21, 11, 'uploads/294080200657.pdf', 'application/pdf', '2019-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblmajor`
--

CREATE TABLE `tblmajor` (
  `MajorId` int(11) NOT NULL,
  `MajorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmajor`
--

INSERT INTO `tblmajor` (`MajorId`, `MajorName`) VALUES
(14, 'علوم البحار'),
(15, 'صيدلة'),
(16, 'هندسة كهربائية'),
(18, 'اللغة الانجليزية'),
(19, 'هندسة صناعيه'),
(20, 'هندسة كيميائية'),
(21, 'هندسة كمبيوتر'),
(22, 'التمريض'),
(23, 'هندسة معمارية'),
(24, 'طب بشري'),
(25, 'علوم سياسية'),
(26, 'المحاسبة والتمويل'),
(27, 'هندسة مدنية'),
(28, 'علم الوراثة و المعلومات الحيوية'),
(29, 'هندسة كهربائية والكترونية'),
(30, 'العلاج المهني'),
(31, 'العلوم الطبية الأساسية'),
(32, 'التسويق'),
(33, 'طب علاج لأمراض القدم'),
(34, 'الرياضيات - متوسط و ثانوي'),
(35, 'الفيزياء الأساسية'),
(36, 'هندسة بيئية'),
(37, 'العمارة'),
(38, 'تمويل'),
(39, 'محاسبة'),
(41, 'هندسة ميكانيكية'),
(42, 'طب بيطري'),
(43, 'الجيولوجيا'),
(44, 'الاتصالات المتنقلة والامن');

-- --------------------------------------------------------

--
-- Table structure for table `tblplan`
--

CREATE TABLE `tblplan` (
  `PlanId` int(11) NOT NULL,
  `PlanName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblplan`
--

INSERT INTO `tblplan` (`PlanId`, `PlanName`) VALUES
(18, 'الأصلية '),
(20, 'جامعة الكويت'),
(21, 'الشواغر'),
(22, 'الداخلية');

-- --------------------------------------------------------

--
-- Table structure for table `tblplanyear`
--

CREATE TABLE `tblplanyear` (
  `PlanyearId` int(11) NOT NULL,
  `Planyear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblplanyear`
--

INSERT INTO `tblplanyear` (`PlanyearId`, `Planyear`) VALUES
(10, 2017),
(11, 2018),
(12, 2019),
(13, 2020),
(14, 2021),
(15, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `CivilId` varchar(12) CHARACTER SET utf8 NOT NULL,
  `FirstName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `middlename` varchar(50) CHARACTER SET utf8 NOT NULL,
  `LastName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `DateIn` varchar(50) CHARACTER SET utf8 NOT NULL,
  `PhoneNumber` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `CivilId`, `FirstName`, `middlename`, `LastName`, `DateIn`, `PhoneNumber`) VALUES
(55, '123456789012', 'abdula', '', 'salah', '2019-06-01', '123456'),
(56, '123456123456', 'anton', '', 'jin', '2019-06-14', '321312'),
(57, '123412341234', 'andrei', '', 'ppb', '', '12345678'),
(58, '123123123123', 'Muhamad', '', 'Ali', '', '1234567890'),
(60, '233333333333', 'H', '', 'H', '', '9'),
(61, '123451234512', 'fdsfdafda', '', 'fdasdfasf', '', '1111111'),
(62, '432432423432', 'fdsdsf', '', 'fsdsfdsdf', '', '2423423'),
(63, '301012900638', 'فاطمه', 'طارق', 'القلاف', '', '99631133'),
(64, '207977677777', 'يأب', '', 'الالتلا', '', '26474756'),
(65, '301011001171', 'فاطمه ', '', 'قبازرد', '', '99040034'),
(66, '300092000562', 'عبدالعزيز ', '', 'العنزي', '', '55884090'),
(67, '300071900801', 'بندر', '', 'الديحاني', '', '55055577 - 99252700'),
(69, '297040801304', 'مبارك', 'خالد', 'الخالدي', '', '99771987'),
(70, '301102100984', 'فاطمة', 'طارق', 'العبيدى', '', '97615501'),
(71, '300122300911', 'عبدالرحمن ', 'احمد', 'العازمي', '', '99136522'),
(72, '301010101226', 'حمد', 'سالم', 'المطيري', '', '99637303 - 50281444'),
(73, '301071700214', 'يوسف', '', 'العنزي', '', '99281683'),
(75, '200101900133', 'سالم', 'محمد', 'العجمي', '', '-'),
(76, '299031600104', 'بندر', 'منصور', ' الضفيري', '', '99111005'),
(77, '300051100065', 'عبدالله', 'يوسف', 'العازمي', '', '94949821'),
(78, '294080200657', 'عبدالعزيز', 'جمال ', 'العتيبي', '', '55511217');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 NOT NULL,
  `role` varchar(10) CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `mobile`, `role`, `status`, `email`, `avatar`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'developer', '(+965)1234567890', 'admin', 'use', 'admin@gmail.com', 'image/profile/adminIMG_20190801_200007-1654123232.jpg'),
(2, 'jinzin', '21232f297a57a5a743894a0e4a801fc3', 'Jin zin', '(+965)1234567890', 'user', 'use', 'prodev12345@yandex.com', 'image/profile/jinzinIMG_20190813_2034452011995787.jpg'),
(3, 'test', '202cb962ac59075b964b07152d234b70', 'test1', '(+965)9999999', 'user', 'use', 'asfas@gmail.com', ''),
(4, 'xiangyi', '21232f297a57a5a743894a0e4a801fc3', 'xiangyi', '(+965)1234567543', 'user', 'use', 'adf@gmail.com', ''),
(5, 'alshaya', '202cb962ac59075b964b07152d234b70', 'alshaya', '(+965)99969563', 'admin', 'use', 'aaads@windowslive.com', ''),
(6, 'test123', '827ccb0eea8a706c4c34a16891f84e7b', 'fdsa', '(+965)123433423424', 'user', 'use', 'afd@gmail.com', ''),
(7, 'Xzen', '1f42a3d07277a99fb07360fa71a49f37', 'Xzen', '(+91)9874167126', 'user', 'use', 'xzenproduction@gmail.com', ''),
(8, 'wangming', '827ccb0eea8a706c4c34a16891f84e7b', 'wangming', '(+965)1594732569', 'user', 'use', 'add@ddf.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `position_id` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `permission` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_name`, `email`, `full_name`, `age`, `position_id`, `weight`, `password`, `phone_number`, `permission`) VALUES
(1, 'admin', 'admin@admin.com', 'admin', 40, 0, 80, 'admin', '1234567890', 1),
(2, 'xiangyi', 'prodev12345@yandex.com', 'XiangYi-Yun', 24, 1, 48, 'admin', '12345678', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ahmed_user`
--
ALTER TABLE `ahmed_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_admin`
--
ALTER TABLE `anas_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_admob`
--
ALTER TABLE `anas_admob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_billing`
--
ALTER TABLE `anas_billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_coupon`
--
ALTER TABLE `anas_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_coupon_history`
--
ALTER TABLE `anas_coupon_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_favorite`
--
ALTER TABLE `anas_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_food`
--
ALTER TABLE `anas_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_restaurant`
--
ALTER TABLE `anas_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_session`
--
ALTER TABLE `anas_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_setting`
--
ALTER TABLE `anas_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_ticket`
--
ALTER TABLE `anas_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_user`
--
ALTER TABLE `anas_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_admin`
--
ALTER TABLE `auction_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_bid_history`
--
ALTER TABLE `auction_bid_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_session`
--
ALTER TABLE `auction_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_transaction`
--
ALTER TABLE `auction_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limm_product`
--
ALTER TABLE `limm_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `samakatee_answer`
--
ALTER TABLE `samakatee_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samakatee_question`
--
ALTER TABLE `samakatee_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samakatee_report`
--
ALTER TABLE `samakatee_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samakatee_report_content`
--
ALTER TABLE `samakatee_report_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samakatee_user`
--
ALTER TABLE `samakatee_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopbasket`
--
ALTER TABLE `shopbasket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopfavproduct`
--
ALTER TABLE `shopfavproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopfavuser`
--
ALTER TABLE `shopfavuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopproduct`
--
ALTER TABLE `shopproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopuser`
--
ALTER TABLE `shopuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`CountryId`);

--
-- Indexes for table `tbldetail`
--
ALTER TABLE `tbldetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmajor`
--
ALTER TABLE `tblmajor`
  ADD PRIMARY KEY (`MajorId`);

--
-- Indexes for table `tblplan`
--
ALTER TABLE `tblplan`
  ADD PRIMARY KEY (`PlanId`);

--
-- Indexes for table `tblplanyear`
--
ALTER TABLE `tblplanyear`
  ADD PRIMARY KEY (`PlanyearId`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ahmed_user`
--
ALTER TABLE `ahmed_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `anas_admin`
--
ALTER TABLE `anas_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anas_admob`
--
ALTER TABLE `anas_admob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anas_billing`
--
ALTER TABLE `anas_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `anas_coupon`
--
ALTER TABLE `anas_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100001;

--
-- AUTO_INCREMENT for table `anas_coupon_history`
--
ALTER TABLE `anas_coupon_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anas_favorite`
--
ALTER TABLE `anas_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anas_food`
--
ALTER TABLE `anas_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `anas_restaurant`
--
ALTER TABLE `anas_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `anas_session`
--
ALTER TABLE `anas_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `anas_setting`
--
ALTER TABLE `anas_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anas_ticket`
--
ALTER TABLE `anas_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anas_user`
--
ALTER TABLE `anas_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `auction_admin`
--
ALTER TABLE `auction_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auction_bid_history`
--
ALTER TABLE `auction_bid_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `auction_session`
--
ALTER TABLE `auction_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auction_transaction`
--
ALTER TABLE `auction_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `limm_product`
--
ALTER TABLE `limm_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `samakatee_answer`
--
ALTER TABLE `samakatee_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `samakatee_question`
--
ALTER TABLE `samakatee_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `samakatee_report`
--
ALTER TABLE `samakatee_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `samakatee_report_content`
--
ALTER TABLE `samakatee_report_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `samakatee_user`
--
ALTER TABLE `samakatee_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `shopbasket`
--
ALTER TABLE `shopbasket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shopfavproduct`
--
ALTER TABLE `shopfavproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shopfavuser`
--
ALTER TABLE `shopfavuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shopproduct`
--
ALTER TABLE `shopproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `shopuser`
--
ALTER TABLE `shopuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `CountryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbldetail`
--
ALTER TABLE `tbldetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tblmajor`
--
ALTER TABLE `tblmajor`
  MODIFY `MajorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tblplan`
--
ALTER TABLE `tblplan`
  MODIFY `PlanId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblplanyear`
--
ALTER TABLE `tblplanyear`
  MODIFY `PlanyearId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
