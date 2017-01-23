/*
Navicat MySQL Data Transfer

Source Server         : jiaoyu_online
Source Server Version : 50505
Source Host           : 111.1.41.78:3306
Source Database       : qy_all_new

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-01-23 11:10:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_nxu_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_nxu_user_group`;
CREATE TABLE `tp_nxu_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `platform` varchar(10) NOT NULL DEFAULT '',
  `status` smallint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_nxu_user_group
-- ----------------------------
INSERT INTO `tp_nxu_user_group` VALUES ('1', '校长', '246', '1');
INSERT INTO `tp_nxu_user_group` VALUES ('2', '教师', '246', '1');
INSERT INTO `tp_nxu_user_group` VALUES ('3', '家长', '246', '1');
INSERT INTO `tp_nxu_user_group` VALUES ('5', '副校长', '246', '1');
INSERT INTO `tp_nxu_user_group` VALUES ('6', '主任老师', '246', '1');
