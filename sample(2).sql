-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2019 at 10:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `anas_admin`
--

CREATE TABLE `anas_admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  `full_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_bin NOT NULL,
  `allow_status` varchar(10) COLLATE utf8_bin NOT NULL,
  `user_avatar` longtext COLLATE utf8_bin NOT NULL,
  `role` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_admin`
--

INSERT INTO `anas_admin` (`id`, `user_name`, `email`, `full_name`, `password`, `phone_number`, `allow_status`, `user_avatar`, `role`) VALUES
(1, 'admin', 'test@a.com', 'test admin test', '12345', '123123123', '1', '', 'admin'),
(2, 'test', 'tests@a.com', 'test app', '12345', '123123123', '1', '', 'user');

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
(1, 'image/admob/admob1.jpg'),
(2, 'image/admob/admob2.jpg'),
(3, 'image/admob/admob3.jpg'),
(4, 'image/admob/admob4.jpg'),
(5, 'image/admob/admob5.jpg'),
(6, 'image/admob/admob6.jpg'),
(7, 'image/admob/admob7.jpg'),
(8, 'image/admob/admob8.jpg'),
(9, 'image/admob/admob9.jpg'),
(10, 'image/admob/admob10.jpg'),
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
(14, 6, '2019-08-07 22:22:28', 'Deposite From Local Pay', 10, 'income'),
(17, 1, '2019-08-07 22:35:35', 'Deposite From Local Pay', 12, 'income'),
(18, 1, '2019-08-07 22:36:17', 'Deposite From Local Pay', 12, 'income'),
(19, 1, '2019-08-07 22:49:08', 'Deposite From Local Pay', 12, 'income'),
(20, 1, '2019-08-07 22:52:26', 'Deposite From Local Pay', 12, 'income'),
(21, 1, '2019-08-08', 'Upgrade Membership', 4.99, 'spent'),
(22, 1, '2019-08-08', 'Upgrade Membership', 4.99, 'spent');

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
(27, 1, 14),
(16, 7, 13),
(26, 1, 13),
(25, 1, 9),
(24, 1, 5),
(23, 1, 2);

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
(6, 18, 1, 2, '2019-08-08');

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
(2, 1, 2),
(3, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `anas_food`
--

CREATE TABLE `anas_food` (
  `id` int(11) NOT NULL,
  `restaurantid` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `needdescription` text CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_food`
--

INSERT INTO `anas_food` (`id`, `restaurantid`, `name`, `image`, `description`, `needdescription`, `status`) VALUES
(2, 2, 'Fatteh', 'image/food/2Fatteh.jpg', 'This food is very good2', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish ', 'set'),
(5, 2, 'Om Ali', 'image/food/2OmAli.jpg', 'This food is very good5', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish  ', 'set'),
(9, 2, 'Qatayef', 'image/food/2Qatayef.jpg', 'This food is very good9', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish ', 'set'),
(13, 11, 'testfood', 'image/food/11testfood.jpg', 'testfood123123', 'testfoodoofd 123123 ', 'unset'),
(14, 11, 'gkjhghj', 'image/food/11gkjhghj.jpg', '', ' ', '');

-- --------------------------------------------------------

--
-- Table structure for table `anas_restaurant`
--

CREATE TABLE `anas_restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pin` varchar(10) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `logo` varchar(200) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `position` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `opentime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_restaurant`
--

INSERT INTO `anas_restaurant` (`id`, `name`, `pin`, `image`, `logo`, `address`, `position`, `phone`, `opentime`, `description`) VALUES
(2, 'Zitouni', '1234', 'image/restaurant/+1234567890.jpg', 'image/restaurantlogo/+1234567890.jpg', 'Garden', '25.258145,46.535955', '+1234567890', '09:00 ~ 22:00', '    Popular for its america food, Chili\'s has become the go-to place where family and friends can gather over a homemade quality food'),
(11, 'test1', '1234', 'image/restaurant/123412345.jpg', 'image/restaurantlogo/123412345.jpg', 'test', '0.01234,0.12345', '123412345', '02:00~08:00', 'test'),
(12, 'testres', '1235', 'image/restaurant/123456671.jpg', 'image/restaurantlogo/123456671.jpg', 'test address', '123123,123123', '123456671', '00:00~00:00', '1234134');

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
(12, '1', '2019-08-08 22:45:48', '127.0.0.1', '');

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
(1, 4.99, 49.9, 0.06, 9.99, 9.99, '+20234234234', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `anas_ticket`
--

CREATE TABLE `anas_ticket` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `message` longtext COLLATE utf8_bin NOT NULL,
  `senddate` datetime NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_ticket`
--

INSERT INTO `anas_ticket` (`id`, `userid`, `title`, `message`, `senddate`, `status`) VALUES
(2, '1', 'test', 'teststeststsetstsetsetsetsetsetet', '2019-08-06 00:00:00', 'set'),
(3, '1', 'test', 'Test set set', '2019-08-08 16:43:33', 'set'),
(4, '1', 'test', 'Testste', '2019-08-08 22:54:09', '');

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
  `startdate` varchar(20) COLLATE utf8_bin NOT NULL,
  `expiredate` varchar(20) CHARACTER SET utf8 NOT NULL,
  `promocode` varchar(20) COLLATE utf8_bin NOT NULL,
  `language` varchar(20) CHARACTER SET utf8 NOT NULL,
  `wallet` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_user`
--

INSERT INTO `anas_user` (`id`, `name`, `password`, `mobile`, `email`, `role`, `avatar`, `status`, `startdate`, `expiredate`, `promocode`, `language`, `wallet`) VALUES
(1, 'test', 'test', '+20234234234', 'test@gmail.com', 'user', 'image/profile/IMGtest+12342342345.jpg', 'free', '2019-08-08', '2019-09-08', '66293945', 'Ø¹Ø±Ø¨Ù‰', 222.05),
(6, '12 123', '12312312', '123123123', 'a@a.com', 'user', 'image/profile/123123123.jpg', 'free', '2019-01-08', '2019-01-08', '12312312', 'English', 10),
(7, '12 123', '12312312', '123456789', '123@12.dom', 'user', 'image/profile/123456789.jpg', 'free', '2019-08-04', '2019-08-04', '12312312', 'English', 1234),
(14, 'joe doe', '123123123', '1234567892222', 'a@a.com', 'user', 'image/profile/1234567892222.jpg', 'free', '2019-08-07', '2019-08-07', '12312312', 'English', 0),
(13, 'adf wsfd', '1234567890', '12345678912', 'a@a.com', 'user', 'image/profile/12345678912.jpg', 'free', '2019-08-07', '2019-08-07', '12345678', 'English', 12),
(12, 'joe Doe', '12341234', '12345678901', 'a@a.com', 'user', 'image/profile/12345678901.jpg', 'free', '2019-08-07', '2019-08-07', '12345678', 'English', 123);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anas_admin`
--
ALTER TABLE `anas_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anas_admob`
--
ALTER TABLE `anas_admob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anas_billing`
--
ALTER TABLE `anas_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `anas_coupon`
--
ALTER TABLE `anas_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `anas_coupon_history`
--
ALTER TABLE `anas_coupon_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anas_favorite`
--
ALTER TABLE `anas_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anas_food`
--
ALTER TABLE `anas_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `anas_restaurant`
--
ALTER TABLE `anas_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anas_session`
--
ALTER TABLE `anas_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anas_setting`
--
ALTER TABLE `anas_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anas_ticket`
--
ALTER TABLE `anas_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `anas_user`
--
ALTER TABLE `anas_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
