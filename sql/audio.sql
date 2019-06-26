/*
Navicat MySQL Data Transfer

Source Server         : doudizhu
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-06-26 21:45:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for audio
-- ----------------------------
DROP TABLE IF EXISTS `audio`;
CREATE TABLE `audio` (
  `upload_date` datetime NOT NULL,
  `author` varchar(255) NOT NULL,
  `audio_name` varchar(255) NOT NULL,
  `praise_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`upload_date`,`author`),
  KEY `author` (`author`),
  KEY `upload_date` (`upload_date`),
  CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`author`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audio
-- ----------------------------
INSERT INTO `audio` VALUES ('2019-04-09 21:43:39', 'youtube', 'Can\'t Stop The Feeling! (origi_Various Artists', null);
INSERT INTO `audio` VALUES ('2019-05-10 21:40:35', 'twitter', 'Be Somebody', null);
INSERT INTO `audio` VALUES ('2019-06-03 21:44:51', 'layabox', 'Don\'t Say (Ft. Emily Warren)', null);
INSERT INTO `audio` VALUES ('2019-06-07 21:42:59', 'youtube', 'Bloodstream', null);
INSERT INTO `audio` VALUES ('2019-06-11 21:40:59', 'twitter', 'Birthday', null);
INSERT INTO `audio` VALUES ('2019-06-16 21:44:30', 'layabox', 'Daniel DarrasYouenn Le Berre - Shannon Reel ', null);
INSERT INTO `audio` VALUES ('2019-06-21 21:41:52', 'egret', 'FlumeKai - Never Be Like You ', null);
INSERT INTO `audio` VALUES ('2019-06-26 21:05:13', 'twitter', '_my youth ', null);
INSERT INTO `audio` VALUES ('2019-07-20 21:43:22', 'youtube', 'Break Up Every Night', null);
