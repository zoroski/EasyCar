/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : rentdatabase

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-07-14 08:49:19
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
INSERT INTO `auser` VALUES ('1', 'Dimitrije', 'Zoroski', 'Dime', 'dimecar', 'Dime@dime,com', '1223', 's');

-- ----------------------------
-- Table structure for `cars`
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `Id` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Features` varchar(255) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------

-- ----------------------------
-- Table structure for `galery`
-- ----------------------------
DROP TABLE IF EXISTS `galery`;
CREATE TABLE `galery` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Path` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galery
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercarrents
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergalery
-- ----------------------------

-- ----------------------------
-- Table structure for `userreviewdetails`
-- ----------------------------
DROP TABLE IF EXISTS `userreviewdetails`;
CREATE TABLE `userreviewdetails` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(255) NOT NULL,
  `UserIdTo` int(11) NOT NULL,
  `UserIdFrom` int(11) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userreviewdetails
-- ----------------------------

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
