/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : rentdatabase

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-09-07 10:19:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auser`
-- ----------------------------
DROP TABLE IF EXISTS `auser`;
CREATE TABLE `auser` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `ImgPath` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auser
-- ----------------------------
INSERT INTO `auser` VALUES ('1', 'Dimitrije', 'Zoroski', 'Dime', 'dimecar', 'serbiano20@gmail.com', '1223', 'img/Avatars/avatar.jpg');

-- ----------------------------
-- Table structure for `cars`
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Price` int(11) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Description` varchar(1255) DEFAULT NULL,
  `Features` varchar(255) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Year` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('1', '34', 'Belgrade', 'sssssssssssss sssssssssssssssd dd d d dd ', 'sdasad asdas ', '1', 'Honda', '2016');
INSERT INTO `cars` VALUES ('2', '44', 'Belgrade', 'ksmdalskda teset dksalda sadsa', 'dasda sadasa ', '1', 'Honda', '2016');
INSERT INTO `cars` VALUES ('23', '34', 'Belgrade', 'sdads', 'SS', '1', 'Honda', '2016');

-- ----------------------------
-- Table structure for `galery`
-- ----------------------------
DROP TABLE IF EXISTS `galery`;
CREATE TABLE `galery` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Path` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galery
-- ----------------------------
INSERT INTO `galery` VALUES ('1', 'img/Cars/1/car1.jpg');
INSERT INTO `galery` VALUES ('2', 'img\\Cars\\1\\car2.jpg');
INSERT INTO `galery` VALUES ('3', 'img\\Cars\\1\\car3.jpg');
INSERT INTO `galery` VALUES ('4', 'img\\Cars\\2\\car2.jpg');
INSERT INTO `galery` VALUES ('5', 'img\\Cars\\2\\car1.png');
INSERT INTO `galery` VALUES ('19', 'img\\Cars\\\\23\\header2.jpg');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdReciver` int(11) NOT NULL,
  `IdSender` int(11) NOT NULL,
  `Message` varchar(1255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `usercarrents`
-- ----------------------------
DROP TABLE IF EXISTS `usercarrents`;
CREATE TABLE `usercarrents` (
  ` Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateStart` datetime NOT NULL,
  `DateEnd` datetime NOT NULL,
  `UserId` int(11) NOT NULL,
  `CarId` int(11) NOT NULL,
  PRIMARY KEY (` Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercarrents
-- ----------------------------
INSERT INTO `usercarrents` VALUES ('1', '2017-09-06 09:08:03', '2017-09-07 21:08:12', '1', '1');
INSERT INTO `usercarrents` VALUES ('2', '2017-09-06 23:36:01', '2017-09-08 23:36:06', '1', '2');

-- ----------------------------
-- Table structure for `usergalery`
-- ----------------------------
DROP TABLE IF EXISTS `usergalery`;
CREATE TABLE `usergalery` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ImageId` int(11) NOT NULL,
  `CarId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergalery
-- ----------------------------
INSERT INTO `usergalery` VALUES ('1', '1', '1', '1');
INSERT INTO `usergalery` VALUES ('2', '1', '2', '1');
INSERT INTO `usergalery` VALUES ('3', '1', '3', '1');
INSERT INTO `usergalery` VALUES ('4', '1', '4', '2');
INSERT INTO `usergalery` VALUES ('5', '1', '5', '2');

-- ----------------------------
-- Table structure for `userreviewdetails`
-- ----------------------------
DROP TABLE IF EXISTS `userreviewdetails`;
CREATE TABLE `userreviewdetails` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(255) NOT NULL,
  `CarId` int(11) NOT NULL,
  `UserIdFrom` int(11) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userreviewdetails
-- ----------------------------
INSERT INTO `userreviewdetails` VALUES ('1', 'dsadasdaaa', '1', '1', '0');
INSERT INTO `userreviewdetails` VALUES ('2', 'test', '1', '1', '0');
INSERT INTO `userreviewdetails` VALUES ('3', 'test1', '2', '1', '0');
INSERT INTO `userreviewdetails` VALUES ('4', 'ewerwe', '1', '1', '0');
INSERT INTO `userreviewdetails` VALUES ('5', 'test3', '2', '1', '0');
INSERT INTO `userreviewdetails` VALUES ('6', 'POzdravi', '1', '1', '0');
INSERT INTO `userreviewdetails` VALUES ('7', '', '2', '1', '0');

-- ----------------------------
-- Table structure for `userreviewstats`
-- ----------------------------
DROP TABLE IF EXISTS `userreviewstats`;
CREATE TABLE `userreviewstats` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AverageStars` decimal(10,0) DEFAULT NULL,
  `ReviewType` smallint(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userreviewstats
-- ----------------------------
