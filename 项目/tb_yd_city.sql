/*
Navicat MySQL Data Transfer

Source Server         : 127
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : gopub

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2016-09-12 20:45:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_yd_city
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_city`;
CREATE TABLE `tp_yd_city` (
  `cty_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cty_pid` bigint(20) DEFAULT NULL,
  `cty_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cty_modify_time` datetime NOT NULL,
  `cty_create_time` datetime NOT NULL,
  PRIMARY KEY (`cty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=659002 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_city
-- ----------------------------
INSERT INTO `tp_yd_city` VALUES ('330100', '330000', '杭州市', '2014-03-27 23:08:31', '2014-03-27 23:08:31');
INSERT INTO `tp_yd_city` VALUES ('659001', null, 'cty_name', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tp_yd_class
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_class`;
CREATE TABLE `tp_yd_class` (
  `cls_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cls_school_id` bigint(20) DEFAULT NULL,
  `cls_grade_id` bigint(20) DEFAULT NULL,
  `cls_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cls_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cls_modify_time` datetime NOT NULL,
  `cls_create_time` datetime NOT NULL,
  PRIMARY KEY (`cls_id`),
  KEY `idx_class_01` (`cls_school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27380 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_class
-- ----------------------------
INSERT INTO `tp_yd_class` VALUES ('1', null, '0', 'cls_name', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tp_yd_class` VALUES ('5', '9', '4', '大一班', '1', '2014-04-18 13:31:00', '2014-04-18 12:56:13');
INSERT INTO `tp_yd_class` VALUES ('6', '9', '7', '大一班', '1', '2014-11-10 11:02:59', '2014-04-18 13:31:18');
INSERT INTO `tp_yd_class` VALUES ('1461', '9', '560', '学前一班', '1', '2014-09-16 13:59:39', '2014-08-30 15:26:54');
INSERT INTO `tp_yd_class` VALUES ('1466', '9', '566', '毕业 一班', '1', '2014-11-10 11:02:38', '2014-08-30 15:43:10');
INSERT INTO `tp_yd_class` VALUES ('2873', '9', '1170', '大一班', '2', '2015-06-30 10:01:21', '2014-11-10 11:05:15');
INSERT INTO `tp_yd_class` VALUES ('2874', '9', '1171', '中一班', '2', '2015-07-02 22:03:34', '2014-11-10 11:05:23');
INSERT INTO `tp_yd_class` VALUES ('2875', '9', '1172', '小一班', '2', '2015-07-02 22:03:34', '2014-11-10 11:05:32');
INSERT INTO `tp_yd_class` VALUES ('2876', '9', '1170', '大二班', '2', '2015-06-30 10:01:37', '2014-11-10 11:05:52');
INSERT INTO `tp_yd_class` VALUES ('2877', '9', '1170', '大三班', '2', '2015-06-30 10:01:51', '2014-11-10 11:05:59');
INSERT INTO `tp_yd_class` VALUES ('2878', '9', '1171', '中二班', '2', '2015-07-02 22:03:34', '2014-11-10 11:06:09');
INSERT INTO `tp_yd_class` VALUES ('2879', '9', '1171', '中三班', '2', '2015-07-02 22:03:34', '2014-11-10 11:06:19');
INSERT INTO `tp_yd_class` VALUES ('2880', '9', '1172', '小二班', '2', '2015-07-02 22:03:34', '2014-11-10 11:06:26');
INSERT INTO `tp_yd_class` VALUES ('2881', '9', '1172', '小三班', '2', '2015-07-02 22:03:34', '2014-11-10 11:06:34');
INSERT INTO `tp_yd_class` VALUES ('8086', '9', '3405', '毕业一班', '2', '2015-06-30 10:01:21', '2015-06-30 09:59:40');
INSERT INTO `tp_yd_class` VALUES ('8087', '9', '3405', '毕业二班', '2', '2015-06-30 10:01:37', '2015-06-30 09:59:57');
INSERT INTO `tp_yd_class` VALUES ('8088', '9', '3405', '毕业三班', '2', '2015-06-30 10:01:51', '2015-06-30 10:00:22');
INSERT INTO `tp_yd_class` VALUES ('8154', '9', '3426', '小一班', '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class` VALUES ('8155', '9', '3426', '小二班', '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class` VALUES ('8156', '9', '3426', '小三班', '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class` VALUES ('8157', '9', '3427', '中一班', '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class` VALUES ('8158', '9', '3427', '中二班', '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class` VALUES ('8159', '9', '3427', '中三班', '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class` VALUES ('27314', '9', '3428', '大班', '2', '2016-06-23 09:10:53', '2016-06-21 15:57:05');
INSERT INTO `tp_yd_class` VALUES ('27373', '9', '11034', '中一班', '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class` VALUES ('27374', '9', '11034', '中二班', '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class` VALUES ('27375', '9', '11034', '中三班', '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class` VALUES ('27376', '9', '11035', '大一班', '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class` VALUES ('27377', '9', '11035', '大二班', '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class` VALUES ('27378', '9', '11035', '大三班', '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class` VALUES ('27379', '9', '11036', '毕业班', '2', '2016-06-23 09:10:53', '2016-06-23 09:10:53');

-- ----------------------------
-- Table structure for tp_yd_class_student_relation
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_class_student_relation`;
CREATE TABLE `tp_yd_class_student_relation` (
  `csr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `csr_school_id` bigint(20) DEFAULT NULL,
  `csr_grade_id` bigint(20) DEFAULT NULL,
  `csr_class_id` bigint(20) DEFAULT NULL,
  `csr_user_id` bigint(20) DEFAULT NULL,
  `csr_student_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `csr_id_card` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `csr_guardian` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `csr_guardian_rel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `csr_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `csr_modify_time` datetime NOT NULL,
  `csr_create_time` datetime NOT NULL,
  PRIMARY KEY (`csr_id`),
  KEY `idx_class_student_relation_01` (`csr_school_id`),
  KEY `idx_class_student_relation_02` (`csr_class_id`),
  KEY `idx_class_student_relation_03` (`csr_user_id`),
  KEY `idx_class_student_relation_04` (`csr_grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=863826 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_class_student_relation
-- ----------------------------
INSERT INTO `tp_yd_class_student_relation` VALUES ('7', '9', '4', '5', '13', null, null, '该喝喝J', '05', '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('8', '9', '4', '5', '14', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('9', '9', '4', '5', '15', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('10', '9', '4', '5', '16', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('11', '9', '4', '5', '17', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('12', '9', '4', '5', '18', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('13', '9', '4', '5', '19', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('14', '9', '4', '5', '20', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('15', '9', '4', '5', '21', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('16', '9', '4', '5', '22', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('17', '9', '4', '5', '23', null, null, null, null, '1', '2014-04-18 13:30:07', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('18', '9', '4', '5', '24', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('19', '9', '4', '5', '25', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('20', '9', '4', '5', '26', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('21', '9', '4', '5', '27', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('22', '9', '4', '5', '28', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('23', '9', '4', '5', '29', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('24', '9', '4', '5', '30', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('25', '9', '4', '5', '31', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('26', '9', '4', '5', '32', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('27', '9', '4', '5', '33', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('28', '9', '4', '5', '34', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('29', '9', '4', '5', '35', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('30', '9', '4', '5', '36', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('31', '9', '4', '5', '37', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('32', '9', '4', '5', '38', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('33', '9', '4', '5', '39', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('34', '9', '4', '5', '40', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('35', '9', '4', '5', '41', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('36', '9', '4', '5', '42', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('37', '9', '4', '5', '43', null, null, null, null, '1', '2014-04-18 13:29:55', '2014-04-18 13:16:10');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93578', '9', '1172', '2875', '95500', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93579', '9', '1172', '2875', '95501', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93580', '9', '1172', '2875', '95502', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93581', '9', '1172', '2875', '95503', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93582', '9', '1172', '2875', '95504', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93583', '9', '1172', '2875', '95505', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93584', '9', '1172', '2875', '95506', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93585', '9', '1172', '2875', '95507', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93586', '9', '1172', '2875', '95508', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93587', '9', '1172', '2875', '95509', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93588', '9', '1172', '2875', '95510', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93589', '9', '1172', '2875', '95511', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93590', '9', '1172', '2875', '95512', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93591', '9', '1172', '2875', '95513', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93592', '9', '1172', '2875', '95514', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93593', '9', '1172', '2875', '95515', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93594', '9', '1172', '2875', '95516', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93595', '9', '1172', '2875', '95517', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93596', '9', '1172', '2875', '95518', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93597', '9', '1172', '2875', '95519', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93598', '9', '1172', '2875', '95520', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93599', '9', '1172', '2875', '95521', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93600', '9', '1172', '2875', '95522', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93601', '9', '1172', '2875', '95523', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93602', '9', '1172', '2875', '95524', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93603', '9', '1172', '2875', '95525', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93604', '9', '1172', '2875', '95526', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93605', '9', '1172', '2875', '95527', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93606', '9', '1172', '2875', '95528', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93607', '9', '1172', '2875', '95529', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93608', '9', '1172', '2875', '95530', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93609', '9', '1172', '2875', '95531', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93610', '9', '1172', '2875', '95532', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93611', '9', '1172', '2875', '95533', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93612', '9', '1172', '2875', '95534', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:18');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93613', '9', '1172', '2880', '95535', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93614', '9', '1172', '2880', '95536', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93615', '9', '1172', '2880', '95537', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93616', '9', '1172', '2880', '95538', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93617', '9', '1172', '2880', '95539', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93618', '9', '1172', '2880', '95540', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93619', '9', '1172', '2880', '95541', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93620', '9', '1172', '2880', '95542', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93621', '9', '1172', '2880', '95543', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93622', '9', '1172', '2880', '95544', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93623', '9', '1172', '2880', '95545', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93624', '9', '1172', '2880', '95546', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93625', '9', '1172', '2880', '95547', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93626', '9', '1172', '2880', '95548', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93627', '9', '1172', '2880', '95549', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93628', '9', '1172', '2880', '95550', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93629', '9', '1172', '2880', '95551', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93630', '9', '1172', '2880', '95552', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93631', '9', '1172', '2880', '95553', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93632', '9', '1172', '2880', '95554', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93633', '9', '1172', '2880', '95555', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93634', '9', '1172', '2880', '95556', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93635', '9', '1172', '2880', '95557', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93636', '9', '1172', '2880', '95558', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93637', '9', '1172', '2880', '95559', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93638', '9', '1172', '2880', '95560', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93639', '9', '1172', '2880', '95561', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93640', '9', '1172', '2880', '95562', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93641', '9', '1172', '2880', '95563', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93642', '9', '1172', '2880', '95564', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93643', '9', '1172', '2880', '95565', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93644', '9', '1172', '2880', '95566', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93645', '9', '1172', '2880', '95567', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93646', '9', '1172', '2880', '95568', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93647', '9', '1172', '2880', '95569', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:31');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93648', '9', '1172', '2881', '95570', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93649', '9', '1172', '2881', '95571', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93650', '9', '1172', '2881', '95572', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93651', '9', '1172', '2881', '95573', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93652', '9', '1172', '2881', '95574', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93653', '9', '1172', '2881', '95575', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93654', '9', '1172', '2881', '95576', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93655', '9', '1172', '2881', '95577', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93656', '9', '1172', '2881', '95578', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93657', '9', '1172', '2881', '95579', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93658', '9', '1172', '2881', '95580', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93659', '9', '1172', '2881', '95581', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93660', '9', '1172', '2881', '95582', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93661', '9', '1172', '2881', '95583', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93662', '9', '1172', '2881', '95584', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93663', '9', '1172', '2881', '95585', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93664', '9', '1172', '2881', '95586', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93665', '9', '1172', '2881', '95587', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93666', '9', '1172', '2881', '95588', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93667', '9', '1172', '2881', '95589', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93668', '9', '1172', '2881', '95590', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93669', '9', '1172', '2881', '95591', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93670', '9', '1172', '2881', '95592', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93671', '9', '1172', '2881', '95593', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93672', '9', '1172', '2881', '95594', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93673', '9', '1172', '2881', '95595', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93674', '9', '1172', '2881', '95596', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93675', '9', '1172', '2881', '95597', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93676', '9', '1172', '2881', '95598', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93677', '9', '1172', '2881', '95599', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93678', '9', '1172', '2881', '95600', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93679', '9', '1172', '2881', '95601', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93680', '9', '1172', '2881', '95602', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93681', '9', '1172', '2881', '95603', null, null, null, null, '1', '2015-06-19 04:46:32', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93682', '9', '1172', '2881', '95604', null, null, null, null, '1', '2015-06-19 04:35:39', '2014-11-10 11:11:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93683', '9', '1171', '2874', '95605', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93684', '9', '1171', '2874', '95606', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93685', '9', '1171', '2874', '95607', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93686', '9', '1171', '2874', '95608', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93687', '9', '1171', '2874', '95609', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93688', '9', '1171', '2874', '95610', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93689', '9', '1171', '2874', '95611', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93690', '9', '1171', '2874', '95612', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93691', '9', '1171', '2874', '95613', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93692', '9', '1171', '2874', '95614', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93693', '9', '1171', '2874', '95615', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93694', '9', '1171', '2874', '95616', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93695', '9', '1171', '2874', '95617', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93696', '9', '1171', '2874', '95618', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93697', '9', '1171', '2874', '95619', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93698', '9', '1171', '2874', '95620', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93699', '9', '1171', '2874', '95621', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93700', '9', '1171', '2874', '95622', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93701', '9', '1171', '2874', '95623', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93702', '9', '1171', '2874', '95624', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93703', '9', '1171', '2874', '95625', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93704', '9', '1171', '2874', '95626', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93705', '9', '1171', '2874', '95627', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93706', '9', '1171', '2874', '95628', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93707', '9', '1171', '2874', '95629', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93708', '9', '1171', '2874', '95630', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93709', '9', '1171', '2874', '95631', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93710', '9', '1171', '2874', '95632', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93711', '9', '1171', '2874', '95633', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93712', '9', '1171', '2874', '95634', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93713', '9', '1171', '2874', '95635', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93714', '9', '1171', '2874', '95636', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93715', '9', '1171', '2874', '95637', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93716', '9', '1171', '2874', '95638', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93717', '9', '1171', '2874', '95639', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:11:54');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93718', '9', '1171', '2878', '95640', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93719', '9', '1171', '2878', '95641', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93720', '9', '1171', '2878', '95642', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93721', '9', '1171', '2878', '95643', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93722', '9', '1171', '2878', '95644', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93723', '9', '1171', '2878', '95645', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93724', '9', '1171', '2878', '95646', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93725', '9', '1171', '2878', '95647', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93726', '9', '1171', '2878', '95648', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93727', '9', '1171', '2878', '95649', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93728', '9', '1171', '2878', '95650', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93729', '9', '1171', '2878', '95651', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93730', '9', '1171', '2878', '95652', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93731', '9', '1171', '2878', '95653', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93732', '9', '1171', '2878', '95654', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93733', '9', '1171', '2878', '95655', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93734', '9', '1171', '2878', '95656', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93735', '9', '1171', '2878', '95657', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93736', '9', '1171', '2878', '95658', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93737', '9', '1171', '2878', '95659', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93738', '9', '1171', '2878', '95660', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93739', '9', '1171', '2878', '95661', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93740', '9', '1171', '2878', '95662', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93741', '9', '1171', '2878', '95663', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93742', '9', '1171', '2878', '95664', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93743', '9', '1171', '2878', '95665', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93744', '9', '1171', '2878', '95666', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93745', '9', '1171', '2878', '95667', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93746', '9', '1171', '2878', '95668', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93747', '9', '1171', '2878', '95669', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93748', '9', '1171', '2878', '95670', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93749', '9', '1171', '2878', '95671', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93750', '9', '1171', '2878', '95672', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93751', '9', '1171', '2878', '95673', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93752', '9', '1171', '2878', '95674', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:08');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93753', '9', '1171', '2879', '95675', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93754', '9', '1171', '2879', '95676', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93755', '9', '1171', '2879', '95677', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93756', '9', '1171', '2879', '95678', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93757', '9', '1171', '2879', '95679', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93758', '9', '1171', '2879', '95680', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93759', '9', '1171', '2879', '95681', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93760', '9', '1171', '2879', '95682', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93761', '9', '1171', '2879', '95683', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93762', '9', '1171', '2879', '95684', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93763', '9', '1171', '2879', '95685', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93764', '9', '1171', '2879', '95686', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93765', '9', '1171', '2879', '95687', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93766', '9', '1171', '2879', '95688', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93767', '9', '1171', '2879', '95689', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93768', '9', '1171', '2879', '95690', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93769', '9', '1171', '2879', '95691', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93770', '9', '1171', '2879', '95692', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93771', '9', '1171', '2879', '95693', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93772', '9', '1171', '2879', '95694', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93773', '9', '1171', '2879', '95695', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93774', '9', '1171', '2879', '95696', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93775', '9', '1171', '2879', '95697', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93776', '9', '1171', '2879', '95698', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93777', '9', '1171', '2879', '95699', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93778', '9', '1171', '2879', '95700', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93779', '9', '1171', '2879', '95701', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93780', '9', '1171', '2879', '95702', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93781', '9', '1171', '2879', '95703', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93782', '9', '1171', '2879', '95704', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93783', '9', '1171', '2879', '95705', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93784', '9', '1171', '2879', '95706', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93785', '9', '1171', '2879', '95707', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93786', '9', '1171', '2879', '95708', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93787', '9', '1171', '2879', '95709', null, null, null, null, '2', '2015-07-02 22:03:34', '2014-11-10 11:12:22');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93788', '9', '1170', '2873', '95710', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93789', '9', '1170', '2873', '95711', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93790', '9', '1170', '2873', '95712', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93791', '9', '1170', '2873', '95713', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93792', '9', '1170', '2873', '95714', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93793', '9', '1170', '2873', '95715', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93794', '9', '1170', '2873', '95716', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93795', '9', '1170', '2873', '95717', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93796', '9', '1170', '2873', '95718', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93797', '9', '1170', '2873', '95719', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93798', '9', '1170', '2873', '95720', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93799', '9', '1170', '2873', '95721', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93800', '9', '1170', '2873', '95722', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93801', '9', '1170', '2873', '95723', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93802', '9', '1170', '2873', '95724', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93803', '9', '1170', '2873', '95725', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93804', '9', '1170', '2873', '95726', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93805', '9', '1170', '2873', '95727', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93806', '9', '1170', '2873', '95728', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93807', '9', '1170', '2873', '95729', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93808', '9', '1170', '2873', '95730', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93809', '9', '1170', '2873', '95731', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93810', '9', '1170', '2873', '95732', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93811', '9', '1170', '2873', '95733', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93812', '9', '1170', '2873', '95734', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93813', '9', '1170', '2873', '95735', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93814', '9', '1170', '2873', '95736', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93815', '9', '1170', '2873', '95737', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93816', '9', '1170', '2873', '95738', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93817', '9', '1170', '2873', '95739', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93818', '9', '1170', '2873', '95740', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93819', '9', '1170', '2873', '95741', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93820', '9', '1170', '2873', '95742', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93821', '9', '1170', '2873', '95743', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93822', '9', '1170', '2873', '95744', null, null, null, null, '2', '2015-06-30 10:01:21', '2014-11-10 11:12:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93823', '9', '1170', '2876', '95745', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93824', '9', '1170', '2876', '95746', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93825', '9', '1170', '2876', '95747', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93826', '9', '1170', '2876', '95748', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93827', '9', '1170', '2876', '95749', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93828', '9', '1170', '2876', '95750', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93829', '9', '1170', '2876', '95751', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93830', '9', '1170', '2876', '95752', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93831', '9', '1170', '2876', '95753', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93832', '9', '1170', '2876', '95754', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93833', '9', '1170', '2876', '95755', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93834', '9', '1170', '2876', '95756', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93835', '9', '1170', '2876', '95757', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93836', '9', '1170', '2876', '95758', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93837', '9', '1170', '2876', '95759', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93838', '9', '1170', '2876', '95760', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93839', '9', '1170', '2876', '95761', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93840', '9', '1170', '2876', '95762', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93841', '9', '1170', '2876', '95763', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93842', '9', '1170', '2876', '95764', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93843', '9', '1170', '2876', '95765', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93844', '9', '1170', '2876', '95766', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93845', '9', '1170', '2876', '95767', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93846', '9', '1170', '2876', '95768', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93847', '9', '1170', '2876', '95769', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93848', '9', '1170', '2876', '95770', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93849', '9', '1170', '2876', '95771', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93850', '9', '1170', '2876', '95772', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93851', '9', '1170', '2876', '95773', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93852', '9', '1170', '2876', '95774', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93853', '9', '1170', '2876', '95775', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93854', '9', '1170', '2876', '95776', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93855', '9', '1170', '2876', '95777', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93856', '9', '1170', '2876', '95778', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93857', '9', '1170', '2876', '95779', null, null, null, null, '2', '2015-06-30 10:01:37', '2014-11-10 11:12:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93858', '9', '1170', '2877', '95780', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93859', '9', '1170', '2877', '95781', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93860', '9', '1170', '2877', '95782', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93861', '9', '1170', '2877', '95783', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93862', '9', '1170', '2877', '95784', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93863', '9', '1170', '2877', '95785', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93864', '9', '1170', '2877', '95786', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93865', '9', '1170', '2877', '95787', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93866', '9', '1170', '2877', '95788', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93867', '9', '1170', '2877', '95789', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93868', '9', '1170', '2877', '95790', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93869', '9', '1170', '2877', '95791', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93870', '9', '1170', '2877', '95792', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93871', '9', '1170', '2877', '95793', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93872', '9', '1170', '2877', '95794', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93873', '9', '1170', '2877', '95795', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93874', '9', '1170', '2877', '95796', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93875', '9', '1170', '2877', '95797', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93876', '9', '1170', '2877', '95798', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93877', '9', '1170', '2877', '95799', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93878', '9', '1170', '2877', '95800', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93879', '9', '1170', '2877', '95801', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93880', '9', '1170', '2877', '95802', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93881', '9', '1170', '2877', '95803', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93882', '9', '1170', '2877', '95804', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93883', '9', '1170', '2877', '95805', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93884', '9', '1170', '2877', '95806', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93885', '9', '1170', '2877', '95807', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93886', '9', '1170', '2877', '95808', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93887', '9', '1170', '2877', '95809', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93888', '9', '1170', '2877', '95810', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93889', '9', '1170', '2877', '95811', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93890', '9', '1170', '2877', '95812', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('93891', '9', '1170', '2877', '95813', null, null, null, null, '2', '2015-06-30 10:01:51', '2014-11-10 11:12:55');
INSERT INTO `tp_yd_class_student_relation` VALUES ('253779', '9', '1172', '2881', '127056', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-19 08:47:39');
INSERT INTO `tp_yd_class_student_relation` VALUES ('253780', '9', '1172', '2881', '127055', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-19 08:49:32');
INSERT INTO `tp_yd_class_student_relation` VALUES ('254232', '9', '1172', '2881', '171248', null, null, null, null, '1', '2015-07-02 21:48:37', '2015-06-19 10:21:35');
INSERT INTO `tp_yd_class_student_relation` VALUES ('254422', '9', '1172', '2881', '127054', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-19 13:50:40');
INSERT INTO `tp_yd_class_student_relation` VALUES ('254427', '9', '1172', '2881', '158758', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-19 16:06:43');
INSERT INTO `tp_yd_class_student_relation` VALUES ('254428', '9', '1172', '2881', '223120', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-19 16:15:09');
INSERT INTO `tp_yd_class_student_relation` VALUES ('254431', '9', '1172', '2881', '61812', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-19 16:24:06');
INSERT INTO `tp_yd_class_student_relation` VALUES ('256212', '9', '1172', '2875', '271420', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-25 21:46:17');
INSERT INTO `tp_yd_class_student_relation` VALUES ('256218', '9', '1172', '2881', '272102', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-25 22:41:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('256221', '9', '1172', '2881', '262663', null, null, null, null, '1', '2015-06-25 22:54:08', '2015-06-25 22:48:19');
INSERT INTO `tp_yd_class_student_relation` VALUES ('256242', '9', '1172', '2881', '256681', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-26 00:13:07');
INSERT INTO `tp_yd_class_student_relation` VALUES ('256243', '9', '1172', '2881', '244234', null, null, null, null, '2', '2015-07-02 22:03:34', '2015-06-26 00:20:44');
INSERT INTO `tp_yd_class_student_relation` VALUES ('256253', '9', '1170', '2877', '127053', null, null, null, null, '1', '2015-06-26 10:35:00', '2015-06-26 10:32:56');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257673', '9', '3405', '8086', '95744', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257674', '9', '3405', '8086', '95743', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257675', '9', '3405', '8086', '95742', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257676', '9', '3405', '8086', '95741', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257677', '9', '3405', '8086', '95740', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257678', '9', '3405', '8086', '95739', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257679', '9', '3405', '8086', '95738', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257680', '9', '3405', '8086', '95737', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257681', '9', '3405', '8086', '95736', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257682', '9', '3405', '8086', '95735', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257683', '9', '3405', '8086', '95734', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257684', '9', '3405', '8086', '95733', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257685', '9', '3405', '8086', '95732', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257686', '9', '3405', '8086', '95731', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257687', '9', '3405', '8086', '95730', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257688', '9', '3405', '8086', '95729', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257689', '9', '3405', '8086', '95728', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257690', '9', '3405', '8086', '95727', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257691', '9', '3405', '8086', '95726', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257692', '9', '3405', '8086', '95725', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257693', '9', '3405', '8086', '95724', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257694', '9', '3405', '8086', '95723', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257695', '9', '3405', '8086', '95722', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257696', '9', '3405', '8086', '95721', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257697', '9', '3405', '8086', '95720', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257698', '9', '3405', '8086', '95719', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257699', '9', '3405', '8086', '95718', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257700', '9', '3405', '8086', '95717', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257701', '9', '3405', '8086', '95716', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257702', '9', '3405', '8086', '95715', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257703', '9', '3405', '8086', '95714', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257704', '9', '3405', '8086', '95713', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257705', '9', '3405', '8086', '95712', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257706', '9', '3405', '8086', '95711', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257707', '9', '3405', '8086', '95710', null, null, null, null, '2', '2015-06-30 10:01:21', '2015-06-30 10:01:21');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257708', '9', '3405', '8087', '95779', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257709', '9', '3405', '8087', '95778', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257710', '9', '3405', '8087', '95777', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257711', '9', '3405', '8087', '95776', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257712', '9', '3405', '8087', '95775', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257713', '9', '3405', '8087', '95774', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257714', '9', '3405', '8087', '95773', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257715', '9', '3405', '8087', '95772', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257716', '9', '3405', '8087', '95771', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257717', '9', '3405', '8087', '95770', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257718', '9', '3405', '8087', '95769', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257719', '9', '3405', '8087', '95768', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257720', '9', '3405', '8087', '95767', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257721', '9', '3405', '8087', '95766', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257722', '9', '3405', '8087', '95765', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257723', '9', '3405', '8087', '95764', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257724', '9', '3405', '8087', '95763', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257725', '9', '3405', '8087', '95762', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257726', '9', '3405', '8087', '95761', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257727', '9', '3405', '8087', '95760', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257728', '9', '3405', '8087', '95759', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257729', '9', '3405', '8087', '95758', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257730', '9', '3405', '8087', '95757', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257731', '9', '3405', '8087', '95756', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257732', '9', '3405', '8087', '95755', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257733', '9', '3405', '8087', '95754', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257734', '9', '3405', '8087', '95753', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257735', '9', '3405', '8087', '95752', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257736', '9', '3405', '8087', '95751', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257737', '9', '3405', '8087', '95750', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257738', '9', '3405', '8087', '95749', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257739', '9', '3405', '8087', '95748', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257740', '9', '3405', '8087', '95747', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257741', '9', '3405', '8087', '95746', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257742', '9', '3405', '8087', '95745', null, null, null, null, '2', '2015-06-30 10:01:37', '2015-06-30 10:01:37');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257743', '9', '3405', '8088', '95813', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257744', '9', '3405', '8088', '95812', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257745', '9', '3405', '8088', '95811', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257746', '9', '3405', '8088', '95810', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257747', '9', '3405', '8088', '95809', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257748', '9', '3405', '8088', '95808', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257749', '9', '3405', '8088', '95807', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257750', '9', '3405', '8088', '95806', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257751', '9', '3405', '8088', '95805', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257752', '9', '3405', '8088', '95804', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257753', '9', '3405', '8088', '95803', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257754', '9', '3405', '8088', '95802', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257755', '9', '3405', '8088', '95801', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257756', '9', '3405', '8088', '95800', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257757', '9', '3405', '8088', '95799', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257758', '9', '3405', '8088', '95798', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257759', '9', '3405', '8088', '95797', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257760', '9', '3405', '8088', '95796', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257761', '9', '3405', '8088', '95795', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257762', '9', '3405', '8088', '95794', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257763', '9', '3405', '8088', '95793', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257764', '9', '3405', '8088', '95792', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257765', '9', '3405', '8088', '95791', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257766', '9', '3405', '8088', '95790', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257767', '9', '3405', '8088', '95789', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257768', '9', '3405', '8088', '95788', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257769', '9', '3405', '8088', '95787', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257770', '9', '3405', '8088', '95786', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257771', '9', '3405', '8088', '95785', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257772', '9', '3405', '8088', '95784', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257773', '9', '3405', '8088', '95783', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257774', '9', '3405', '8088', '95782', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257775', '9', '3405', '8088', '95781', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('257776', '9', '3405', '8088', '95780', null, null, null, null, '2', '2015-06-30 10:01:51', '2015-06-30 10:01:51');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259761', '9', '3426', '8154', '95605', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259762', '9', '3426', '8154', '95606', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259763', '9', '3426', '8154', '95607', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259764', '9', '3426', '8154', '95608', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259765', '9', '3426', '8154', '95609', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259766', '9', '3426', '8154', '95610', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259767', '9', '3426', '8154', '95611', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259768', '9', '3426', '8154', '95612', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259769', '9', '3426', '8154', '95613', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259770', '9', '3426', '8154', '95614', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259771', '9', '3426', '8154', '95615', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259772', '9', '3426', '8154', '95616', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259773', '9', '3426', '8154', '95617', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259774', '9', '3426', '8154', '95618', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259775', '9', '3426', '8154', '95619', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259776', '9', '3426', '8154', '95620', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259777', '9', '3426', '8154', '95621', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259778', '9', '3426', '8154', '95622', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259779', '9', '3426', '8154', '95623', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259780', '9', '3426', '8154', '95624', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259781', '9', '3426', '8154', '95625', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259782', '9', '3426', '8154', '95626', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259783', '9', '3426', '8154', '95627', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259784', '9', '3426', '8154', '95628', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259785', '9', '3426', '8154', '95629', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259786', '9', '3426', '8154', '95630', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259787', '9', '3426', '8154', '95631', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259788', '9', '3426', '8154', '95632', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259789', '9', '3426', '8154', '95633', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259790', '9', '3426', '8154', '95634', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259791', '9', '3426', '8154', '95635', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259792', '9', '3426', '8154', '95636', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259793', '9', '3426', '8154', '95637', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259794', '9', '3426', '8154', '95638', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259795', '9', '3426', '8154', '95639', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259796', '9', '3426', '8155', '95640', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259797', '9', '3426', '8155', '95641', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259798', '9', '3426', '8155', '95642', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259799', '9', '3426', '8155', '95643', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259800', '9', '3426', '8155', '95644', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259801', '9', '3426', '8155', '95645', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259802', '9', '3426', '8155', '95646', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259803', '9', '3426', '8155', '95647', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259804', '9', '3426', '8155', '95648', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259805', '9', '3426', '8155', '95649', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259806', '9', '3426', '8155', '95650', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259807', '9', '3426', '8155', '95651', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259808', '9', '3426', '8155', '95652', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259809', '9', '3426', '8155', '95653', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259810', '9', '3426', '8155', '95654', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259811', '9', '3426', '8155', '95655', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259812', '9', '3426', '8155', '95656', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259813', '9', '3426', '8155', '95657', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259814', '9', '3426', '8155', '95658', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259815', '9', '3426', '8155', '95659', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259816', '9', '3426', '8155', '95660', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259817', '9', '3426', '8155', '95661', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259818', '9', '3426', '8155', '95662', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259819', '9', '3426', '8155', '95663', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259820', '9', '3426', '8155', '95664', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259821', '9', '3426', '8155', '95665', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259822', '9', '3426', '8155', '95666', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259823', '9', '3426', '8155', '95667', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259824', '9', '3426', '8155', '95668', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259825', '9', '3426', '8155', '95669', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259826', '9', '3426', '8155', '95670', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259827', '9', '3426', '8155', '95671', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259828', '9', '3426', '8155', '95672', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259829', '9', '3426', '8155', '95673', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259830', '9', '3426', '8155', '95674', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259831', '9', '3426', '8156', '95675', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259832', '9', '3426', '8156', '95676', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259833', '9', '3426', '8156', '95677', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259834', '9', '3426', '8156', '95678', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259835', '9', '3426', '8156', '95679', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259836', '9', '3426', '8156', '95680', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259837', '9', '3426', '8156', '95681', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259838', '9', '3426', '8156', '95682', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259839', '9', '3426', '8156', '95683', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259840', '9', '3426', '8156', '95684', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259841', '9', '3426', '8156', '95685', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259842', '9', '3426', '8156', '95686', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259843', '9', '3426', '8156', '95687', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259844', '9', '3426', '8156', '95688', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259845', '9', '3426', '8156', '95689', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259846', '9', '3426', '8156', '95690', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259847', '9', '3426', '8156', '95691', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259848', '9', '3426', '8156', '95692', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259849', '9', '3426', '8156', '95693', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259850', '9', '3426', '8156', '95694', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259851', '9', '3426', '8156', '95695', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259852', '9', '3426', '8156', '95696', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259853', '9', '3426', '8156', '95697', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259854', '9', '3426', '8156', '95698', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259855', '9', '3426', '8156', '95699', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259856', '9', '3426', '8156', '95700', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259857', '9', '3426', '8156', '95701', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259858', '9', '3426', '8156', '95702', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259859', '9', '3426', '8156', '95703', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259860', '9', '3426', '8156', '95704', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259861', '9', '3426', '8156', '95705', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259862', '9', '3426', '8156', '95706', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259863', '9', '3426', '8156', '95707', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259864', '9', '3426', '8156', '95708', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259865', '9', '3426', '8156', '95709', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259866', '9', '3427', '8157', '95500', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259867', '9', '3427', '8157', '95501', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259868', '9', '3427', '8157', '95502', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259869', '9', '3427', '8157', '95503', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259870', '9', '3427', '8157', '95504', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259871', '9', '3427', '8157', '95505', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259872', '9', '3427', '8157', '95506', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259873', '9', '3427', '8157', '95507', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259874', '9', '3427', '8157', '95508', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259875', '9', '3427', '8157', '95509', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259876', '9', '3427', '8157', '95510', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259877', '9', '3427', '8157', '95511', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259878', '9', '3427', '8157', '95512', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259879', '9', '3427', '8157', '95513', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259880', '9', '3427', '8157', '95514', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259881', '9', '3427', '8157', '95515', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259882', '9', '3427', '8157', '95516', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259883', '9', '3427', '8157', '95517', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259884', '9', '3427', '8157', '95518', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259885', '9', '3427', '8157', '95519', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259886', '9', '3427', '8157', '95520', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259887', '9', '3427', '8157', '95521', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259888', '9', '3427', '8157', '95522', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259889', '9', '3427', '8157', '95523', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259890', '9', '3427', '8157', '95524', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259891', '9', '3427', '8157', '95525', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259892', '9', '3427', '8157', '95526', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259893', '9', '3427', '8157', '95527', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259894', '9', '3427', '8157', '95528', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259895', '9', '3427', '8157', '95529', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259896', '9', '3427', '8157', '95530', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259897', '9', '3427', '8157', '95531', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259898', '9', '3427', '8157', '95532', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259899', '9', '3427', '8157', '95533', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259900', '9', '3427', '8157', '95534', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259901', '9', '3427', '8157', '271420', null, null, null, null, '1', '2015-09-30 09:55:04', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259902', '9', '3427', '8158', '95535', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259903', '9', '3427', '8158', '95536', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259904', '9', '3427', '8158', '95537', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259905', '9', '3427', '8158', '95538', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259906', '9', '3427', '8158', '95539', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259907', '9', '3427', '8158', '95540', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259908', '9', '3427', '8158', '95541', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259909', '9', '3427', '8158', '95542', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259910', '9', '3427', '8158', '95543', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259911', '9', '3427', '8158', '95544', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259912', '9', '3427', '8158', '95545', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259913', '9', '3427', '8158', '95546', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259914', '9', '3427', '8158', '95547', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259915', '9', '3427', '8158', '95548', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259916', '9', '3427', '8158', '95549', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259917', '9', '3427', '8158', '95550', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259918', '9', '3427', '8158', '95551', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259919', '9', '3427', '8158', '95552', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259920', '9', '3427', '8158', '95553', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259921', '9', '3427', '8158', '95554', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259922', '9', '3427', '8158', '95555', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259923', '9', '3427', '8158', '95556', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259924', '9', '3427', '8158', '95557', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259925', '9', '3427', '8158', '95558', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259926', '9', '3427', '8158', '95559', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259927', '9', '3427', '8158', '95560', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259928', '9', '3427', '8158', '95561', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259929', '9', '3427', '8158', '95562', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259930', '9', '3427', '8158', '95563', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259931', '9', '3427', '8158', '95564', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259932', '9', '3427', '8158', '95565', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259933', '9', '3427', '8158', '95566', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259934', '9', '3427', '8158', '95567', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259935', '9', '3427', '8158', '95568', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259936', '9', '3427', '8158', '95569', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259937', '9', '3427', '8159', '95570', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259938', '9', '3427', '8159', '95571', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259939', '9', '3427', '8159', '95572', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259940', '9', '3427', '8159', '95573', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259941', '9', '3427', '8159', '95574', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259942', '9', '3427', '8159', '95575', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259943', '9', '3427', '8159', '95576', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259944', '9', '3427', '8159', '95577', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259945', '9', '3427', '8159', '95578', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259946', '9', '3427', '8159', '95579', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259947', '9', '3427', '8159', '95580', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259948', '9', '3427', '8159', '95581', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259949', '9', '3427', '8159', '95582', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259950', '9', '3427', '8159', '95583', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259951', '9', '3427', '8159', '95584', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259952', '9', '3427', '8159', '95585', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259953', '9', '3427', '8159', '95586', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259954', '9', '3427', '8159', '95587', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259955', '9', '3427', '8159', '95588', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259956', '9', '3427', '8159', '95589', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259957', '9', '3427', '8159', '95590', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259958', '9', '3427', '8159', '95591', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259959', '9', '3427', '8159', '95592', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259960', '9', '3427', '8159', '95593', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259961', '9', '3427', '8159', '95594', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259962', '9', '3427', '8159', '95595', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259963', '9', '3427', '8159', '95596', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259964', '9', '3427', '8159', '95597', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259965', '9', '3427', '8159', '95598', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259966', '9', '3427', '8159', '95599', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259967', '9', '3427', '8159', '95600', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259968', '9', '3427', '8159', '95601', null, null, null, null, '1', '2015-09-30 09:54:02', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259969', '9', '3427', '8159', '95602', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259970', '9', '3427', '8159', '127056', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259971', '9', '3427', '8159', '127055', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259972', '9', '3427', '8159', '127054', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259973', '9', '3427', '8159', '158758', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259974', '9', '3427', '8159', '223120', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259975', '9', '3427', '8159', '61812', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259976', '9', '3427', '8159', '272102', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259977', '9', '3427', '8159', '256681', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('259978', '9', '3427', '8159', '244234', null, null, null, null, '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_student_relation` VALUES ('861614', '9', '3428', '27314', '1222090', null, null, null, null, '2', '2016-06-23 09:10:53', '2016-06-21 15:58:42');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863642', '9', '3427', '8158', '95603', null, null, null, null, '2', '2016-06-23 09:10:53', '2016-06-23 09:10:28');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863643', '9', '11034', '27373', '95605', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863644', '9', '11034', '27373', '95606', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863645', '9', '11034', '27373', '95607', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863646', '9', '11034', '27373', '95608', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863647', '9', '11034', '27373', '95609', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863648', '9', '11034', '27373', '95610', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863649', '9', '11034', '27373', '95611', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863650', '9', '11034', '27373', '95612', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863651', '9', '11034', '27373', '95613', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863652', '9', '11034', '27373', '95614', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863653', '9', '11034', '27373', '95615', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863654', '9', '11034', '27373', '95616', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863655', '9', '11034', '27373', '95617', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863656', '9', '11034', '27373', '95618', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863657', '9', '11034', '27373', '95619', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863658', '9', '11034', '27373', '95620', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863659', '9', '11034', '27373', '95621', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863660', '9', '11034', '27373', '95622', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863661', '9', '11034', '27373', '95623', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863662', '9', '11034', '27373', '95624', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863663', '9', '11034', '27373', '95625', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863664', '9', '11034', '27373', '95626', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863665', '9', '11034', '27373', '95627', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863666', '9', '11034', '27373', '95628', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863667', '9', '11034', '27373', '95629', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863668', '9', '11034', '27373', '95630', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863669', '9', '11034', '27373', '95631', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863670', '9', '11034', '27373', '95632', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863671', '9', '11034', '27373', '95633', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863672', '9', '11034', '27373', '95634', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863673', '9', '11034', '27373', '95635', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863674', '9', '11034', '27373', '95636', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863675', '9', '11034', '27373', '95637', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863676', '9', '11034', '27373', '95638', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863677', '9', '11034', '27373', '95639', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863678', '9', '11034', '27374', '95640', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863679', '9', '11034', '27374', '95641', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863680', '9', '11034', '27374', '95642', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863681', '9', '11034', '27374', '95643', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863682', '9', '11034', '27374', '95644', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863683', '9', '11034', '27374', '95645', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863684', '9', '11034', '27374', '95646', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863685', '9', '11034', '27374', '95647', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863686', '9', '11034', '27374', '95648', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863687', '9', '11034', '27374', '95649', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863688', '9', '11034', '27374', '95650', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863689', '9', '11034', '27374', '95651', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863690', '9', '11034', '27374', '95652', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863691', '9', '11034', '27374', '95653', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863692', '9', '11034', '27374', '95654', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863693', '9', '11034', '27374', '95655', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863694', '9', '11034', '27374', '95656', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863695', '9', '11034', '27374', '95657', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863696', '9', '11034', '27374', '95658', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863697', '9', '11034', '27374', '95659', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863698', '9', '11034', '27374', '95660', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863699', '9', '11034', '27374', '95661', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863700', '9', '11034', '27374', '95662', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863701', '9', '11034', '27374', '95663', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863702', '9', '11034', '27374', '95664', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863703', '9', '11034', '27374', '95665', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863704', '9', '11034', '27374', '95666', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863705', '9', '11034', '27374', '95667', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863706', '9', '11034', '27374', '95668', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863707', '9', '11034', '27374', '95669', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863708', '9', '11034', '27374', '95670', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863709', '9', '11034', '27374', '95671', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863710', '9', '11034', '27374', '95672', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863711', '9', '11034', '27374', '95673', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863712', '9', '11034', '27374', '95674', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863713', '9', '11034', '27375', '95675', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863714', '9', '11034', '27375', '95676', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863715', '9', '11034', '27375', '95677', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863716', '9', '11034', '27375', '95678', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863717', '9', '11034', '27375', '95679', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863718', '9', '11034', '27375', '95680', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863719', '9', '11034', '27375', '95681', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863720', '9', '11034', '27375', '95682', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863721', '9', '11034', '27375', '95683', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863722', '9', '11034', '27375', '95684', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863723', '9', '11034', '27375', '95685', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863724', '9', '11034', '27375', '95686', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863725', '9', '11034', '27375', '95687', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863726', '9', '11034', '27375', '95688', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863727', '9', '11034', '27375', '95689', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863728', '9', '11034', '27375', '95690', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863729', '9', '11034', '27375', '95691', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863730', '9', '11034', '27375', '95692', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863731', '9', '11034', '27375', '95693', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863732', '9', '11034', '27375', '95694', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863733', '9', '11034', '27375', '95695', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863734', '9', '11034', '27375', '95696', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863735', '9', '11034', '27375', '95697', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863736', '9', '11034', '27375', '95698', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863737', '9', '11034', '27375', '95699', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863738', '9', '11034', '27375', '95700', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863739', '9', '11034', '27375', '95701', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863740', '9', '11034', '27375', '95702', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863741', '9', '11034', '27375', '95703', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863742', '9', '11034', '27375', '95704', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863743', '9', '11034', '27375', '95705', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863744', '9', '11034', '27375', '95706', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863745', '9', '11034', '27375', '95707', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863746', '9', '11034', '27375', '95708', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863747', '9', '11034', '27375', '95709', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863748', '9', '11035', '27377', '95535', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863749', '9', '11035', '27377', '95536', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863750', '9', '11035', '27377', '95537', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863751', '9', '11035', '27377', '95538', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863752', '9', '11035', '27377', '95539', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863753', '9', '11035', '27377', '95540', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863754', '9', '11035', '27377', '95541', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863755', '9', '11035', '27377', '95542', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863756', '9', '11035', '27377', '95543', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863757', '9', '11035', '27377', '95544', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863758', '9', '11035', '27377', '95545', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863759', '9', '11035', '27377', '95546', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863760', '9', '11035', '27377', '95547', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863761', '9', '11035', '27377', '95548', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863762', '9', '11035', '27377', '95549', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863763', '9', '11035', '27377', '95550', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863764', '9', '11035', '27377', '95551', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863765', '9', '11035', '27377', '95552', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863766', '9', '11035', '27377', '95553', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863767', '9', '11035', '27377', '95554', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863768', '9', '11035', '27377', '95555', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863769', '9', '11035', '27377', '95556', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863770', '9', '11035', '27377', '95557', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863771', '9', '11035', '27377', '95558', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863772', '9', '11035', '27377', '95559', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863773', '9', '11035', '27377', '95560', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863774', '9', '11035', '27377', '95561', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863775', '9', '11035', '27377', '95562', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863776', '9', '11035', '27377', '95563', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863777', '9', '11035', '27377', '95564', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863778', '9', '11035', '27377', '95565', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863779', '9', '11035', '27377', '95566', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863780', '9', '11035', '27377', '95567', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863781', '9', '11035', '27377', '95568', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863782', '9', '11035', '27377', '95569', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863783', '9', '11035', '27377', '95603', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863784', '9', '11035', '27378', '95570', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863785', '9', '11035', '27378', '95571', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863786', '9', '11035', '27378', '95572', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863787', '9', '11035', '27378', '95573', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863788', '9', '11035', '27378', '95574', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863789', '9', '11035', '27378', '95575', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863790', '9', '11035', '27378', '95576', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863791', '9', '11035', '27378', '95577', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863792', '9', '11035', '27378', '95578', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863793', '9', '11035', '27378', '95579', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863794', '9', '11035', '27378', '95580', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863795', '9', '11035', '27378', '95581', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863796', '9', '11035', '27378', '95582', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863797', '9', '11035', '27378', '95583', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863798', '9', '11035', '27378', '95584', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863799', '9', '11035', '27378', '95585', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863800', '9', '11035', '27378', '95586', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863801', '9', '11035', '27378', '95587', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863802', '9', '11035', '27378', '95588', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863803', '9', '11035', '27378', '95589', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863804', '9', '11035', '27378', '95590', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863805', '9', '11035', '27378', '95591', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863806', '9', '11035', '27378', '95592', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863807', '9', '11035', '27378', '95593', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863808', '9', '11035', '27378', '95594', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863809', '9', '11035', '27378', '95595', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863810', '9', '11035', '27378', '95596', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863811', '9', '11035', '27378', '95597', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863812', '9', '11035', '27378', '95598', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863813', '9', '11035', '27378', '95599', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863814', '9', '11035', '27378', '95600', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863815', '9', '11035', '27378', '95602', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863816', '9', '11035', '27378', '127056', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863817', '9', '11035', '27378', '127055', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863818', '9', '11035', '27378', '127054', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863819', '9', '11035', '27378', '158758', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863820', '9', '11035', '27378', '223120', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863821', '9', '11035', '27378', '61812', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863822', '9', '11035', '27378', '272102', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863823', '9', '11035', '27378', '256681', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863824', '9', '11035', '27378', '244234', null, null, null, null, '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');
INSERT INTO `tp_yd_class_student_relation` VALUES ('863825', '9', '11036', '27379', '1222090', null, null, null, null, '2', '2016-06-23 09:10:53', '2016-06-23 09:10:53');

-- ----------------------------
-- Table structure for tp_yd_class_teacher_relation
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_class_teacher_relation`;
CREATE TABLE `tp_yd_class_teacher_relation` (
  `ctr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ctr_school_id` bigint(20) DEFAULT NULL,
  `ctr_grade_id` bigint(20) DEFAULT NULL,
  `ctr_class_id` bigint(20) DEFAULT NULL,
  `ctr_user_id` bigint(20) DEFAULT NULL,
  `ctr_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctr_modify_time` datetime NOT NULL,
  `ctr_create_time` datetime NOT NULL,
  PRIMARY KEY (`ctr_id`),
  KEY `idx_class_teacher_relation_01` (`ctr_school_id`),
  KEY `idx_class_teacher_relation_02` (`ctr_class_id`),
  KEY `idx_class_teacher_relation_03` (`ctr_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62656 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_class_teacher_relation
-- ----------------------------
INSERT INTO `tp_yd_class_teacher_relation` VALUES ('1', null, '0', null, '0', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tp_yd_class_teacher_relation` VALUES ('15983', '9', '1172', '2875', '237350', '1', '2015-06-25 22:50:01', '2015-04-28 10:00:21');
INSERT INTO `tp_yd_class_teacher_relation` VALUES ('18502', '9', '1172', '2881', '237350', '2', '2015-07-02 22:03:34', '2015-06-25 22:50:05');
INSERT INTO `tp_yd_class_teacher_relation` VALUES ('18715', '9', '3427', '8159', '237350', '2', '2016-06-23 09:10:53', '2015-07-02 22:03:34');
INSERT INTO `tp_yd_class_teacher_relation` VALUES ('62655', '9', '11035', '27378', '237350', '0', '2016-06-23 09:10:53', '2016-06-23 09:10:53');

-- ----------------------------
-- Table structure for tp_yd_department
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_department`;
CREATE TABLE `tp_yd_department` (
  `dpm_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dpm_school` bigint(20) DEFAULT NULL,
  `dpm_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dpm_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dpm_modify_time` datetime NOT NULL,
  `dpm_create_time` datetime NOT NULL,
  PRIMARY KEY (`dpm_id`),
  KEY `idx_department_01` (`dpm_school`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_department
-- ----------------------------
INSERT INTO `tp_yd_department` VALUES ('1', null, 'dpm_name', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tp_yd_department` VALUES ('2', null, 'dpm_name', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tp_yd_department` VALUES ('3', null, 'dpm_name', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tp_yd_district
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_district`;
CREATE TABLE `tp_yd_district` (
  `dis_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dis_cid` bigint(20) DEFAULT NULL,
  `dis_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dis_modify_time` datetime NOT NULL,
  `dis_create_time` datetime NOT NULL,
  PRIMARY KEY (`dis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=659006 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_district
-- ----------------------------
INSERT INTO `tp_yd_district` VALUES ('330106', '330100', '西湖区', '2014-03-27 23:15:29', '2014-03-27 23:15:29');
INSERT INTO `tp_yd_district` VALUES ('659005', null, 'dis_name', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tp_yd_grade
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_grade`;
CREATE TABLE `tp_yd_grade` (
  `gra_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gra_school_id` bigint(20) DEFAULT NULL,
  `gra_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gra_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gra_modify_time` datetime NOT NULL,
  `gra_create_time` datetime NOT NULL,
  `gra_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gra_level` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gra_id`),
  KEY `idx_grade_01` (`gra_school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_grade
-- ----------------------------

-- ----------------------------
-- Table structure for tp_yd_province
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_province`;
CREATE TABLE `tp_yd_province` (
  `pvc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pvc_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pvc_modify_time` datetime NOT NULL,
  `pvc_create_time` datetime NOT NULL,
  PRIMARY KEY (`pvc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=820002 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_province
-- ----------------------------
INSERT INTO `tp_yd_province` VALUES ('330000', '浙江省', '2014-03-27 22:58:27', '2014-03-27 22:58:27');
INSERT INTO `tp_yd_province` VALUES ('820001', 'pvc_name', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tp_yd_school
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_school`;
CREATE TABLE `tp_yd_school` (
  `sch_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sch_parent_id` bigint(20) DEFAULT NULL,
  `sch_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_short_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_province_id` int(6) DEFAULT NULL,
  `sch_city_id` int(6) DEFAULT NULL,
  `sch_district_id` int(6) DEFAULT NULL,
  `sch_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_level` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_desc` text COLLATE utf8_unicode_ci,
  `sch_effect_time` datetime DEFAULT NULL,
  `sch_expire_time` datetime DEFAULT NULL,
  `sch_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_modify_time` datetime NOT NULL,
  `sch_create_time` datetime NOT NULL,
  `sch_fee_type` bigint(20) DEFAULT NULL,
  `sch_fee_way` bigint(20) DEFAULT NULL,
  `sch_fee_start_time` datetime DEFAULT NULL,
  `sch_open_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_business` bigint(20) DEFAULT NULL,
  `sch_sms_open_switch` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_weather_switch` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_in_template` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_out_template` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_source` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_push_punch_switch` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_push_notice_switch` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_push_oa_switch` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_push_leave_switch` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_sms_recipe_switch` varchar(1) COLLATE utf8_unicode_ci DEFAULT '1',
  `sch_website_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sch_punch_image_switch` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sch_id`),
  KEY `idx_school_01` (`sch_province_id`),
  KEY `idx_school_02` (`sch_city_id`),
  KEY `idx_school_03` (`sch_district_id`),
  KEY `idx_school_04` (`sch_source`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_school
-- ----------------------------
INSERT INTO `tp_yd_school` VALUES ('1', '0', 'sch_name', 'sch_short_name', '0', null, null, 'sch_address', 's', 'sch_logo', 'sch_desc', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', 's', '0', 's', 's', 'sch_sms_in_template', 'sch_sms_out_template', 's', 'sch_code', 'sch', 'sch', 'sch', 'sch', 's', 'sch_website_logo', 's');
INSERT INTO `tp_yd_school` VALUES ('9', '3', '西湖阳光分园', '西湖阳光分园', '330000', '330100', '330106', '文三路90号', '2', null, '小学创办于1913年，是一所近百年历史的学校。座落于老山北麓，滁河之濒。百年的风雨历程，谱写的是一部辉煌的乐章、展示的是一副多彩的画卷。 学校环境优美，布局合理，目前施教区包括周边5个行政村，校园占地19448平方米，生均36.4平方米，校舍建筑面积3657平方米，生均6.85平方米；现有14个教学班，学生534人，教职员工56人，专任教师51人，生师比10.4：1，高一级学历40人，占78.4%，中学高级教师3 人，中级职称38人，占74.5%，骨干教师9 名，占17.64%。建有校园信息高速公路系统，校园网站，实现了班班信息化、数字化和网络化多媒体教学，实现了无纸化办公、数字化校园。学校藏书12087册，生均22.6册。 学校坚持“以人为本，依德治校，依法治校，从严治教” 的办学理念；“科研兴校，质量强校，特色名校”的办学宗旨，形成了“乐学笃行”的校风，“爱、严、细、实”的教风，“勤奋、争优、守纪、活泼”的学风，努力打造成“质量一流的现代化农村小学”。学校拥有一支学习型、科研型、创新型、奉献型的高素质教师队伍，他们是学生做人和求知的引导者，特长和潜能的发现者，成长中的鼓励者，学生的欣赏者；学校教育科研氛围浓郁，省、市、区科研课题成果显著：市级“九五”课题《农村小学阅读教学创设问题情境的实践研究》顺利通过验收，并获优秀成果三等奖。省级“十五”课题《 运用现代教育技术辅助小学阅读教学的实践研究》顺利结题。市级“十一五”课题《培养农村小学生良好学习习惯的实践与研究》正在研究。在全面育人网络下，莘莘学子们全面发展、特长突出，小乒乓、小手狮、阅读教育三大特色凸显。特别是小乒乓自1984年创建，先后26次代表区县参加省、市、区县各类比赛，均获得佳绩，2009年获得南京市女子儿童组团体亚军，单打100多人次进入前六，成绩卓著，并向省、市专业队及大学、部队输送多名人才。学校入学率，巩固率、毕业率、普及率每年达均100%。 学校先后被评为江苏省模范学校、南京市示范学校、南京市先进集体、南京市艺术教育先进单位、南京市电化教育先进单位、南京市教师教学基本功训练工作先进集体、南京市爱国卫生先进单位、南京市群众体育先进集体、南京市体育达标先进单位、南京市绿化达标学校、南京市体育传统项目学校、江苏省电化教育实验学校等。', '2016-08-23 00:00:00', '2017-02-01 00:00:00', '0', '2015-09-24 18:47:04', '2014-05-12 18:09:29', '1004', '1004', '2015-09-23 18:46:50', '0', '1024', null, null, null, null, '0', null, '110', '110', '110', '110', '1', null, '0');

-- ----------------------------
-- Table structure for tp_yd_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_user`;
CREATE TABLE `tp_yd_user` (
  `usr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usr_school_id` bigint(20) DEFAULT NULL,
  `usr_username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_birthday` datetime DEFAULT NULL,
  `usr_gender` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_sign` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_backgroud` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_mobile_type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_effect_time` datetime DEFAULT NULL,
  `usr_expire_time` datetime DEFAULT NULL,
  `usr_role` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_modify_time` datetime NOT NULL,
  `usr_create_time` datetime NOT NULL,
  `usr_name_voice` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_school_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `idx_user_01` (`usr_username`),
  KEY `idx_user_02` (`usr_school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1418139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_user
-- ----------------------------
INSERT INTO `tp_yd_user` VALUES ('61812', '9', '15200278', '071020', '扬秀波', null, null, null, null, null, '13454704469', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-09-24 14:28:03', null, '4');
INSERT INTO `tp_yd_user` VALUES ('95535', '9', '136036', '071020', '测试036', null, null, null, null, null, '136036', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '35');
INSERT INTO `tp_yd_user` VALUES ('95536', '9', '136037', '071020', '测试037', null, null, null, null, null, '136037', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '34');
INSERT INTO `tp_yd_user` VALUES ('95537', '9', '136038', '071020', '测试038', null, null, null, null, null, '136038', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '33');
INSERT INTO `tp_yd_user` VALUES ('95538', '9', '136039', '071020', '测试039', null, null, null, null, null, '136039', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '32');
INSERT INTO `tp_yd_user` VALUES ('95539', '9', '136040', '071020', '测试040', null, null, null, null, null, '136040', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '31');
INSERT INTO `tp_yd_user` VALUES ('95540', '9', '136041', '071020', '测试041', null, null, null, null, null, '136041', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '30');
INSERT INTO `tp_yd_user` VALUES ('95541', '9', '136042', '071020', '测试042', null, null, null, null, null, '136042', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '29');
INSERT INTO `tp_yd_user` VALUES ('95542', '9', '136043', '071020', '测试043', null, null, null, null, null, '136043', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '28');
INSERT INTO `tp_yd_user` VALUES ('95543', '9', '136044', '071020', '测试044', null, null, null, null, null, '136044', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '27');
INSERT INTO `tp_yd_user` VALUES ('95544', '9', '136045', '071020', '测试045', null, null, null, null, null, '136045', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '26');
INSERT INTO `tp_yd_user` VALUES ('95545', '9', '136046', '071020', '测试046', null, null, null, null, null, '136046', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '25');
INSERT INTO `tp_yd_user` VALUES ('95546', '9', '136047', '071020', '测试047', null, null, null, null, null, '136047', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '24');
INSERT INTO `tp_yd_user` VALUES ('95547', '9', '136048', '071020', '测试048', null, null, null, null, null, '136048', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '23');
INSERT INTO `tp_yd_user` VALUES ('95548', '9', '136049', '071020', '测试049', null, null, null, null, null, '136049', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '22');
INSERT INTO `tp_yd_user` VALUES ('95549', '9', '136050', '071020', '测试050', null, null, null, null, null, '136050', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '21');
INSERT INTO `tp_yd_user` VALUES ('95550', '9', '136051', '071020', '测试051', null, null, null, null, null, '136051', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '20');
INSERT INTO `tp_yd_user` VALUES ('95551', '9', '136052', '071020', '测试052', null, null, null, null, null, '136052', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '19');
INSERT INTO `tp_yd_user` VALUES ('95552', '9', '136053', '071020', '测试053', null, null, null, null, null, '136053', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '18');
INSERT INTO `tp_yd_user` VALUES ('95553', '9', '136054', '071020', '测试054', null, null, null, null, null, '136054', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '17');
INSERT INTO `tp_yd_user` VALUES ('95554', '9', '136055', '071020', '测试055', null, null, null, null, null, '136055', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '16');
INSERT INTO `tp_yd_user` VALUES ('95555', '9', '136056', '071020', '测试056', null, null, null, null, null, '136056', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '15');
INSERT INTO `tp_yd_user` VALUES ('95556', '9', '136057', '071020', '测试057', null, null, null, null, null, '136057', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '14');
INSERT INTO `tp_yd_user` VALUES ('95557', '9', '136058', '071020', '测试058', null, null, null, null, null, '136058', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '13');
INSERT INTO `tp_yd_user` VALUES ('95558', '9', '136059', '071020', '测试059', null, null, null, null, null, '136059', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '12');
INSERT INTO `tp_yd_user` VALUES ('95559', '9', '136060', '071020', '测试060', null, null, null, null, null, '136060', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '11');
INSERT INTO `tp_yd_user` VALUES ('95560', '9', '136061', '071020', '测试061', null, null, null, null, null, '136061', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '10');
INSERT INTO `tp_yd_user` VALUES ('95561', '9', '136062', '071020', '测试062', null, null, null, null, null, '136062', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '9');
INSERT INTO `tp_yd_user` VALUES ('95562', '9', '136063', '071020', '测试063', null, null, null, null, null, '136063', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '8');
INSERT INTO `tp_yd_user` VALUES ('95563', '9', '136064', '071020', '测试064', null, null, null, null, null, '136064', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '7');
INSERT INTO `tp_yd_user` VALUES ('95564', '9', '136065', '071020', '测试065', null, null, null, null, null, '136065', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '6');
INSERT INTO `tp_yd_user` VALUES ('95565', '9', '136066', '071020', '测试066', null, null, null, null, null, '136066', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '5');
INSERT INTO `tp_yd_user` VALUES ('95566', '9', '136067', '071020', '测试067', null, null, null, null, null, '136067', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '4');
INSERT INTO `tp_yd_user` VALUES ('95567', '9', '136068', '071020', '测试068', null, null, null, null, null, '136068', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '3');
INSERT INTO `tp_yd_user` VALUES ('95568', '9', '136069', '071020', '测试069', null, null, null, null, null, '136069', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '2');
INSERT INTO `tp_yd_user` VALUES ('95569', '9', '136070', '071020', '测试070', null, null, null, null, null, '136070', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:31', null, '1');
INSERT INTO `tp_yd_user` VALUES ('95570', '9', '136071', '071020', '测试071', null, null, null, null, null, '136071', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '42');
INSERT INTO `tp_yd_user` VALUES ('95571', '9', '136072', '071020', '测试072', null, null, null, null, null, '136072', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '41');
INSERT INTO `tp_yd_user` VALUES ('95572', '9', '136073', '071020', '测试073', null, null, null, null, null, '136073', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '40');
INSERT INTO `tp_yd_user` VALUES ('95573', '9', '136074', '071020', '测试074', null, null, null, null, null, '136074', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '39');
INSERT INTO `tp_yd_user` VALUES ('95574', '9', '136075', '071020', '测试075', null, null, null, null, null, '136075', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '38');
INSERT INTO `tp_yd_user` VALUES ('95575', '9', '136076', '071020', '测试076', null, null, null, null, null, '136076', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '37');
INSERT INTO `tp_yd_user` VALUES ('95576', '9', '136077', '071020', '测试077', null, null, null, null, null, '136077', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '36');
INSERT INTO `tp_yd_user` VALUES ('95577', '9', '136078', '071020', '测试078', null, null, null, null, null, '136078', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '35');
INSERT INTO `tp_yd_user` VALUES ('95578', '9', '136079', '071020', '测试079', null, null, null, null, null, '136079', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '34');
INSERT INTO `tp_yd_user` VALUES ('95579', '9', '136080', '071020', '测试080', null, null, null, null, null, '136080', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '33');
INSERT INTO `tp_yd_user` VALUES ('95580', '9', '136081', '071020', '测试081', null, null, null, null, null, '136081', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '32');
INSERT INTO `tp_yd_user` VALUES ('95581', '9', '136082', '071020', '测试082', null, null, null, null, null, '136082', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '31');
INSERT INTO `tp_yd_user` VALUES ('95582', '9', '136083', '071020', '测试083', null, null, null, null, null, '136083', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '30');
INSERT INTO `tp_yd_user` VALUES ('95583', '9', '136084', '071020', '测试084', null, null, null, null, null, '136084', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '29');
INSERT INTO `tp_yd_user` VALUES ('95584', '9', '136085', '071020', '测试085', null, null, null, null, null, '136085', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '28');
INSERT INTO `tp_yd_user` VALUES ('95585', '9', '136086', '071020', '测试086', null, null, null, null, null, '136086', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '27');
INSERT INTO `tp_yd_user` VALUES ('95586', '9', '136087', '071020', '测试087', null, null, null, null, null, '136087', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '26');
INSERT INTO `tp_yd_user` VALUES ('95587', '9', '136088', '071020', '测试088', null, null, null, null, null, '136088', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '25');
INSERT INTO `tp_yd_user` VALUES ('95588', '9', '136089', '071020', '测试089', null, null, null, null, null, '136089', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '24');
INSERT INTO `tp_yd_user` VALUES ('95589', '9', '136090', '071020', '测试090', null, null, null, null, null, '136090', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '23');
INSERT INTO `tp_yd_user` VALUES ('95590', '9', '136091', '071020', '测试091', null, null, null, null, null, '136091', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '22');
INSERT INTO `tp_yd_user` VALUES ('95591', '9', '136092', '071020', '测试092', null, null, null, null, null, '136092', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '21');
INSERT INTO `tp_yd_user` VALUES ('95592', '9', '136093', '071020', '测试093', null, null, null, null, null, '136093', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '20');
INSERT INTO `tp_yd_user` VALUES ('95593', '9', '136094', '071020', '测试094', null, null, null, null, null, '136094', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '19');
INSERT INTO `tp_yd_user` VALUES ('95594', '9', '136095', '071020', '测试095', null, null, null, null, null, '136095', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '18');
INSERT INTO `tp_yd_user` VALUES ('95595', '9', '136096', '071020', '测试096', null, null, null, null, null, '136096', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '17');
INSERT INTO `tp_yd_user` VALUES ('95596', '9', '136097', '071020', '测试097', null, null, null, null, null, '136097', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '16');
INSERT INTO `tp_yd_user` VALUES ('95597', '9', '136098', '071020', '测试098', null, null, null, null, null, '136098', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '15');
INSERT INTO `tp_yd_user` VALUES ('95598', '9', '136099', '071020', '测试099', null, null, null, null, null, '136099', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '14');
INSERT INTO `tp_yd_user` VALUES ('95599', '9', '136100', '071020', '测试100', null, null, null, null, null, '136100', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '13');
INSERT INTO `tp_yd_user` VALUES ('95600', '9', '136101', '071020', '测试101', null, null, null, null, null, '136101', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '12');
INSERT INTO `tp_yd_user` VALUES ('95602', '9', '136103', '071020', '测试103', null, null, null, null, null, '136103', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '10');
INSERT INTO `tp_yd_user` VALUES ('95603', '9', '136104', '071020', '测试104', null, null, null, null, null, '136104', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:43', null, '3');
INSERT INTO `tp_yd_user` VALUES ('95605', '9', '136106', '071020', '测试106', null, null, null, null, null, '136106', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '35');
INSERT INTO `tp_yd_user` VALUES ('95606', '9', '136107', '071020', '测试107', null, null, null, null, null, '136107', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '34');
INSERT INTO `tp_yd_user` VALUES ('95607', '9', '136108', '071020', '测试108', null, null, null, null, null, '136108', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '33');
INSERT INTO `tp_yd_user` VALUES ('95608', '9', '136109', '071020', '测试109', null, null, null, null, null, '136109', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '32');
INSERT INTO `tp_yd_user` VALUES ('95609', '9', '136110', '071020', '测试110', null, null, null, null, null, '136110', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '31');
INSERT INTO `tp_yd_user` VALUES ('95610', '9', '136111', '071020', '测试111', null, null, null, null, null, '136111', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '30');
INSERT INTO `tp_yd_user` VALUES ('95611', '9', '136112', '071020', '测试112', null, null, null, null, null, '136112', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '29');
INSERT INTO `tp_yd_user` VALUES ('95612', '9', '136113', '071020', '测试113', null, null, null, null, null, '136113', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '28');
INSERT INTO `tp_yd_user` VALUES ('95613', '9', '136114', '071020', '测试114', null, null, null, null, null, '136114', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '27');
INSERT INTO `tp_yd_user` VALUES ('95614', '9', '136115', '071020', '测试115', null, null, null, null, null, '136115', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '26');
INSERT INTO `tp_yd_user` VALUES ('95615', '9', '136116', '071020', '测试116', null, null, null, null, null, '136116', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '25');
INSERT INTO `tp_yd_user` VALUES ('95616', '9', '136117', '071020', '测试117', null, null, null, null, null, '136117', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '24');
INSERT INTO `tp_yd_user` VALUES ('95617', '9', '136118', '071020', '测试118', null, null, null, null, null, '136118', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '23');
INSERT INTO `tp_yd_user` VALUES ('95618', '9', '136119', '071020', '测试119', null, null, null, null, null, '136119', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '22');
INSERT INTO `tp_yd_user` VALUES ('95619', '9', '136120', '071020', '测试120', null, null, null, null, null, '136120', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '21');
INSERT INTO `tp_yd_user` VALUES ('95620', '9', '136121', '071020', '测试121', null, null, null, null, null, '136121', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '20');
INSERT INTO `tp_yd_user` VALUES ('95621', '9', '136122', '071020', '测试122', null, null, null, null, null, '136122', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '19');
INSERT INTO `tp_yd_user` VALUES ('95622', '9', '136123', '071020', '测试123', null, null, null, null, null, '136123', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '18');
INSERT INTO `tp_yd_user` VALUES ('95623', '9', '136124', '071020', '测试124', null, null, null, null, null, '136124', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '17');
INSERT INTO `tp_yd_user` VALUES ('95624', '9', '136125', '071020', '测试125', null, null, null, null, null, '136125', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '16');
INSERT INTO `tp_yd_user` VALUES ('95625', '9', '136126', '071020', '测试126', null, null, null, null, null, '136126', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '15');
INSERT INTO `tp_yd_user` VALUES ('95626', '9', '136127', '071020', '测试127', null, null, null, null, null, '136127', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '14');
INSERT INTO `tp_yd_user` VALUES ('95627', '9', '136128', '071020', '测试128', null, null, null, null, null, '136128', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '13');
INSERT INTO `tp_yd_user` VALUES ('95628', '9', '136129', '071020', '测试129', null, null, null, null, null, '136129', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '12');
INSERT INTO `tp_yd_user` VALUES ('95629', '9', '136130', '071020', '测试130', null, null, null, null, null, '136130', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '11');
INSERT INTO `tp_yd_user` VALUES ('95630', '9', '136131', '071020', '测试131', null, null, null, null, null, '136131', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '10');
INSERT INTO `tp_yd_user` VALUES ('95631', '9', '136132', '071020', '测试132', null, null, null, null, null, '136132', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '9');
INSERT INTO `tp_yd_user` VALUES ('95632', '9', '136133', '071020', '测试133', null, null, null, null, null, '136133', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '8');
INSERT INTO `tp_yd_user` VALUES ('95633', '9', '136134', '071020', '测试134', null, null, null, null, null, '136134', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '7');
INSERT INTO `tp_yd_user` VALUES ('95634', '9', '136135', '071020', '测试135', null, null, null, null, null, '136135', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '6');
INSERT INTO `tp_yd_user` VALUES ('95635', '9', '136136', '071020', '测试136', null, null, null, null, null, '136136', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '5');
INSERT INTO `tp_yd_user` VALUES ('95636', '9', '136137', '071020', '测试137', null, null, null, null, null, '136137', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '4');
INSERT INTO `tp_yd_user` VALUES ('95637', '9', '136138', '071020', '测试138', null, null, null, null, null, '136138', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '3');
INSERT INTO `tp_yd_user` VALUES ('95638', '9', '136139', '071020', '测试139', null, null, null, null, null, '136139', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '2');
INSERT INTO `tp_yd_user` VALUES ('95639', '9', '136140', '071020', '测试140', null, null, null, null, null, '136140', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:11:54', null, '1');
INSERT INTO `tp_yd_user` VALUES ('95640', '9', '136141', '071020', '测试141', null, null, null, null, null, '136141', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '35');
INSERT INTO `tp_yd_user` VALUES ('95641', '9', '136142', '071020', '测试142', null, null, null, null, null, '136142', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '34');
INSERT INTO `tp_yd_user` VALUES ('95642', '9', '136143', '071020', '测试143', null, null, null, null, null, '136143', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '33');
INSERT INTO `tp_yd_user` VALUES ('95643', '9', '136144', '071020', '测试144', null, null, null, null, null, '136144', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '32');
INSERT INTO `tp_yd_user` VALUES ('95644', '9', '136145', '071020', '测试145', null, null, null, null, null, '136145', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '31');
INSERT INTO `tp_yd_user` VALUES ('95645', '9', '136146', '071020', '测试146', null, null, null, null, null, '136146', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '30');
INSERT INTO `tp_yd_user` VALUES ('95646', '9', '136147', '071020', '测试147', null, null, null, null, null, '136147', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '29');
INSERT INTO `tp_yd_user` VALUES ('95647', '9', '136148', '071020', '测试148', null, null, null, null, null, '136148', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '28');
INSERT INTO `tp_yd_user` VALUES ('95648', '9', '136149', '071020', '测试149', null, null, null, null, null, '136149', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '27');
INSERT INTO `tp_yd_user` VALUES ('95649', '9', '136150', '071020', '测试150', null, null, null, null, null, '136150', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '26');
INSERT INTO `tp_yd_user` VALUES ('95650', '9', '136151', '071020', '测试151', null, null, null, null, null, '136151', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '25');
INSERT INTO `tp_yd_user` VALUES ('95651', '9', '136152', '071020', '测试152', null, null, null, null, null, '136152', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '24');
INSERT INTO `tp_yd_user` VALUES ('95652', '9', '136153', '071020', '测试153', null, null, null, null, null, '136153', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '23');
INSERT INTO `tp_yd_user` VALUES ('95653', '9', '136154', '071020', '测试154', null, null, null, null, null, '136154', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '22');
INSERT INTO `tp_yd_user` VALUES ('95654', '9', '136155', '071020', '测试155', null, null, null, null, null, '136155', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '21');
INSERT INTO `tp_yd_user` VALUES ('95655', '9', '136156', '071020', '测试156', null, null, null, null, null, '136156', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '20');
INSERT INTO `tp_yd_user` VALUES ('95656', '9', '136157', '071020', '测试157', null, null, null, null, null, '136157', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '19');
INSERT INTO `tp_yd_user` VALUES ('95657', '9', '136158', '071020', '测试158', null, null, null, null, null, '136158', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '18');
INSERT INTO `tp_yd_user` VALUES ('95658', '9', '136159', '071020', '测试159', null, null, null, null, null, '136159', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '17');
INSERT INTO `tp_yd_user` VALUES ('95659', '9', '136160', '071020', '测试160', null, null, null, null, null, '136160', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '16');
INSERT INTO `tp_yd_user` VALUES ('95660', '9', '136161', '071020', '测试161', null, null, null, null, null, '136161', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '15');
INSERT INTO `tp_yd_user` VALUES ('95661', '9', '136162', '071020', '测试162', null, null, null, null, null, '136162', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '14');
INSERT INTO `tp_yd_user` VALUES ('95662', '9', '136163', '071020', '测试163', null, null, null, null, null, '136163', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '13');
INSERT INTO `tp_yd_user` VALUES ('95663', '9', '136164', '071020', '测试164', null, null, null, null, null, '136164', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '12');
INSERT INTO `tp_yd_user` VALUES ('95664', '9', '136165', '071020', '测试165', null, null, null, null, null, '136165', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '11');
INSERT INTO `tp_yd_user` VALUES ('95665', '9', '136166', '071020', '测试166', null, null, null, null, null, '136166', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '10');
INSERT INTO `tp_yd_user` VALUES ('95666', '9', '136167', '071020', '测试167', null, null, null, null, null, '136167', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '9');
INSERT INTO `tp_yd_user` VALUES ('95667', '9', '136168', '071020', '测试168', null, null, null, null, null, '136168', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '8');
INSERT INTO `tp_yd_user` VALUES ('95668', '9', '136169', '071020', '测试169', null, null, null, null, null, '136169', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '7');
INSERT INTO `tp_yd_user` VALUES ('95669', '9', '136170', '071020', '测试170', null, null, null, null, null, '136170', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '6');
INSERT INTO `tp_yd_user` VALUES ('95670', '9', '136171', '071020', '测试171', null, null, null, null, null, '136171', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '5');
INSERT INTO `tp_yd_user` VALUES ('95671', '9', '136172', '071020', '测试172', null, null, null, null, null, '136172', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '4');
INSERT INTO `tp_yd_user` VALUES ('95672', '9', '136173', '071020', '测试173', null, null, null, null, null, '136173', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '3');
INSERT INTO `tp_yd_user` VALUES ('95673', '9', '136174', '071020', '测试174', null, null, null, null, null, '136174', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '2');
INSERT INTO `tp_yd_user` VALUES ('95674', '9', '136175', '071020', '测试175', null, null, null, null, null, '136175', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:08', null, '1');
INSERT INTO `tp_yd_user` VALUES ('95675', '9', '136176', '071020', '测试176', null, null, null, null, null, '136176', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '35');
INSERT INTO `tp_yd_user` VALUES ('95676', '9', '136177', '071020', '测试177', null, null, null, null, null, '136177', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '34');
INSERT INTO `tp_yd_user` VALUES ('95677', '9', '136178', '071020', '测试178', null, null, null, null, null, '136178', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '33');
INSERT INTO `tp_yd_user` VALUES ('95678', '9', '136179', '071020', '测试179', null, null, null, null, null, '136179', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '32');
INSERT INTO `tp_yd_user` VALUES ('95679', '9', '136180', '071020', '测试180', null, null, null, null, null, '136180', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '31');
INSERT INTO `tp_yd_user` VALUES ('95680', '9', '136181', '071020', '测试181', null, null, null, null, null, '136181', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '30');
INSERT INTO `tp_yd_user` VALUES ('95681', '9', '136182', '071020', '测试182', null, null, null, null, null, '136182', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '29');
INSERT INTO `tp_yd_user` VALUES ('95682', '9', '136183', '071020', '测试183', null, null, null, null, null, '136183', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '28');
INSERT INTO `tp_yd_user` VALUES ('95683', '9', '136184', '071020', '测试184', null, null, null, null, null, '136184', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '27');
INSERT INTO `tp_yd_user` VALUES ('95684', '9', '136185', '071020', '测试185', null, null, null, null, null, '136185', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '26');
INSERT INTO `tp_yd_user` VALUES ('95685', '9', '136186', '071020', '测试186', null, null, null, null, null, '136186', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '25');
INSERT INTO `tp_yd_user` VALUES ('95686', '9', '136187', '071020', '测试187', null, null, null, null, null, '136187', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '24');
INSERT INTO `tp_yd_user` VALUES ('95687', '9', '136188', '071020', '测试188', null, null, null, null, null, '136188', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '23');
INSERT INTO `tp_yd_user` VALUES ('95688', '9', '136189', '071020', '测试189', null, null, null, null, null, '136189', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '22');
INSERT INTO `tp_yd_user` VALUES ('95689', '9', '136190', '071020', '测试190', null, null, null, null, null, '136190', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '21');
INSERT INTO `tp_yd_user` VALUES ('95690', '9', '136191', '071020', '测试191', null, null, null, null, null, '136191', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '20');
INSERT INTO `tp_yd_user` VALUES ('95691', '9', '136192', '071020', '测试192', null, null, null, null, null, '136192', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '19');
INSERT INTO `tp_yd_user` VALUES ('95692', '9', '136193', '071020', '测试193', null, null, null, null, null, '136193', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '18');
INSERT INTO `tp_yd_user` VALUES ('95693', '9', '136194', '071020', '测试194', null, null, null, null, null, '136194', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '17');
INSERT INTO `tp_yd_user` VALUES ('95694', '9', '136195', '071020', '测试195', null, null, null, null, null, '136195', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '16');
INSERT INTO `tp_yd_user` VALUES ('95695', '9', '136196', '071020', '测试196', null, null, null, null, null, '136196', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '15');
INSERT INTO `tp_yd_user` VALUES ('95696', '9', '136197', '071020', '测试197', null, null, null, null, null, '136197', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '14');
INSERT INTO `tp_yd_user` VALUES ('95697', '9', '136198', '071020', '测试198', null, null, null, null, null, '136198', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '13');
INSERT INTO `tp_yd_user` VALUES ('95698', '9', '136199', '071020', '测试199', null, null, null, null, null, '136199', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '12');
INSERT INTO `tp_yd_user` VALUES ('95699', '9', '136200', '071020', '测试200', null, null, null, null, null, '136200', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '11');
INSERT INTO `tp_yd_user` VALUES ('95700', '9', '136201', '071020', '测试201', null, null, null, null, null, '136201', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '10');
INSERT INTO `tp_yd_user` VALUES ('95701', '9', '136202', '071020', '测试202', null, null, null, null, null, '136202', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '9');
INSERT INTO `tp_yd_user` VALUES ('95702', '9', '136203', '071020', '测试203', null, null, null, null, null, '136203', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '8');
INSERT INTO `tp_yd_user` VALUES ('95703', '9', '136204', '071020', '测试204', null, null, null, null, null, '136204', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '7');
INSERT INTO `tp_yd_user` VALUES ('95704', '9', '136205', '071020', '测试205', null, null, null, null, null, '136205', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '6');
INSERT INTO `tp_yd_user` VALUES ('95705', '9', '136206', '071020', '测试206', null, null, null, null, null, '136206', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '5');
INSERT INTO `tp_yd_user` VALUES ('95706', '9', '136207', '071020', '测试207', null, null, null, null, null, '136207', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '4');
INSERT INTO `tp_yd_user` VALUES ('95707', '9', '136208', '071020', '测试208', null, null, null, null, null, '136208', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '3');
INSERT INTO `tp_yd_user` VALUES ('95708', '9', '136209', '071020', '测试209', null, null, null, null, null, '136209', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '2');
INSERT INTO `tp_yd_user` VALUES ('95709', '9', '136210', '071020', '测试210', null, null, null, null, null, '15957171460', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2014-11-10 11:12:22', null, '1');
INSERT INTO `tp_yd_user` VALUES ('95710', '9', '136211', '071020', '测试211', null, null, null, null, null, '136211', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95710');
INSERT INTO `tp_yd_user` VALUES ('95711', '9', '136212', '071020', '测试212', null, null, null, null, null, '136212', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95711');
INSERT INTO `tp_yd_user` VALUES ('95712', '9', '136213', '071020', '测试213', null, null, null, null, null, '136213', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95712');
INSERT INTO `tp_yd_user` VALUES ('95713', '9', '136214', '071020', '测试214', null, null, null, null, null, '136214', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95713');
INSERT INTO `tp_yd_user` VALUES ('95714', '9', '136215', '071020', '测试215', null, null, null, null, null, '136215', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95714');
INSERT INTO `tp_yd_user` VALUES ('95715', '9', '136216', '071020', '测试216', null, null, null, null, null, '136216', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95715');
INSERT INTO `tp_yd_user` VALUES ('95716', '9', '136217', '071020', '测试217', null, null, null, null, null, '136217', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95716');
INSERT INTO `tp_yd_user` VALUES ('95717', '9', '136218', '071020', '测试218', null, null, null, null, null, '136218', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95717');
INSERT INTO `tp_yd_user` VALUES ('95718', '9', '136219', '071020', '测试219', null, null, null, null, null, '136219', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95718');
INSERT INTO `tp_yd_user` VALUES ('95719', '9', '136220', '071020', '测试220', null, null, null, null, null, '136220', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95719');
INSERT INTO `tp_yd_user` VALUES ('95720', '9', '136221', '071020', '测试221', null, null, null, null, null, '136221', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95720');
INSERT INTO `tp_yd_user` VALUES ('95721', '9', '136222', '071020', '测试222', null, null, null, null, null, '136222', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95721');
INSERT INTO `tp_yd_user` VALUES ('95722', '9', '136223', '071020', '测试223', null, null, null, null, null, '136223', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95722');
INSERT INTO `tp_yd_user` VALUES ('95723', '9', '136224', '071020', '测试224', null, null, null, null, null, '136224', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95723');
INSERT INTO `tp_yd_user` VALUES ('95724', '9', '136225', '071020', '测试225', null, null, null, null, null, '136225', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95724');
INSERT INTO `tp_yd_user` VALUES ('95725', '9', '136226', '071020', '测试226', null, null, null, null, null, '136226', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95725');
INSERT INTO `tp_yd_user` VALUES ('95726', '9', '136227', '071020', '测试227', null, null, null, null, null, '136227', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95726');
INSERT INTO `tp_yd_user` VALUES ('95727', '9', '136228', '071020', '测试228', null, null, null, null, null, '136228', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95727');
INSERT INTO `tp_yd_user` VALUES ('95728', '9', '136229', '071020', '测试229', null, null, null, null, null, '136229', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95728');
INSERT INTO `tp_yd_user` VALUES ('95729', '9', '136230', '071020', '测试230', null, null, null, null, null, '136230', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95729');
INSERT INTO `tp_yd_user` VALUES ('95730', '9', '136231', '071020', '测试231', null, null, null, null, null, '136231', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95730');
INSERT INTO `tp_yd_user` VALUES ('95731', '9', '136232', '071020', '测试232', null, null, null, null, null, '136232', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95731');
INSERT INTO `tp_yd_user` VALUES ('95732', '9', '136233', '071020', '测试233', null, null, null, null, null, '136233', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95732');
INSERT INTO `tp_yd_user` VALUES ('95733', '9', '136234', '071020', '测试234', null, null, null, null, null, '136234', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95733');
INSERT INTO `tp_yd_user` VALUES ('95734', '9', '136235', '071020', '测试235', null, null, null, null, null, '136235', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95734');
INSERT INTO `tp_yd_user` VALUES ('95735', '9', '136236', '071020', '测试236', null, null, null, null, null, '136236', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95735');
INSERT INTO `tp_yd_user` VALUES ('95736', '9', '136237', '071020', '测试237', null, null, null, null, null, '136237', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95736');
INSERT INTO `tp_yd_user` VALUES ('95737', '9', '136238', '071020', '测试238', null, null, null, null, null, '136238', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95737');
INSERT INTO `tp_yd_user` VALUES ('95738', '9', '136239', '071020', '测试239', null, null, null, null, null, '136239', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95738');
INSERT INTO `tp_yd_user` VALUES ('95739', '9', '136240', '071020', '测试240', null, null, null, null, null, '136240', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95739');
INSERT INTO `tp_yd_user` VALUES ('95740', '9', '136241', '071020', '测试241', null, null, null, null, null, '136241', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95740');
INSERT INTO `tp_yd_user` VALUES ('95741', '9', '136242', '071020', '测试242', null, null, null, null, null, '136242', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95741');
INSERT INTO `tp_yd_user` VALUES ('95742', '9', '136243', '071020', '测试243', null, null, null, null, null, '136243', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95742');
INSERT INTO `tp_yd_user` VALUES ('95743', '9', '136244', '071020', '测试244', null, null, null, null, null, '136244', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95743');
INSERT INTO `tp_yd_user` VALUES ('95744', '9', '136245', '071020', '测试245', null, null, null, null, null, '136245', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:32', null, '95744');
INSERT INTO `tp_yd_user` VALUES ('95745', '9', '136246', '071020', '测试246', null, null, null, null, null, '136246', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95745');
INSERT INTO `tp_yd_user` VALUES ('95746', '9', '136247', '071020', '测试247', null, null, null, null, null, '136247', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95746');
INSERT INTO `tp_yd_user` VALUES ('95747', '9', '136248', '071020', '测试248', null, null, null, null, null, '136248', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95747');
INSERT INTO `tp_yd_user` VALUES ('95748', '9', '136249', '071020', '测试249', null, null, null, null, null, '136249', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95748');
INSERT INTO `tp_yd_user` VALUES ('95749', '9', '136250', '071020', '测试250', null, null, null, null, null, '136250', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95749');
INSERT INTO `tp_yd_user` VALUES ('95750', '9', '136251', '071020', '测试251', null, null, null, null, null, '136251', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95750');
INSERT INTO `tp_yd_user` VALUES ('95751', '9', '136252', '071020', '测试252', null, null, null, null, null, '136252', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95751');
INSERT INTO `tp_yd_user` VALUES ('95752', '9', '136253', '071020', '测试253', null, null, null, null, null, '136253', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95752');
INSERT INTO `tp_yd_user` VALUES ('95753', '9', '136254', '071020', '测试254', null, null, null, null, null, '136254', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95753');
INSERT INTO `tp_yd_user` VALUES ('95754', '9', '136255', '071020', '测试255', null, null, null, null, null, '136255', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95754');
INSERT INTO `tp_yd_user` VALUES ('95755', '9', '136256', '071020', '测试256', null, null, null, null, null, '136256', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95755');
INSERT INTO `tp_yd_user` VALUES ('95756', '9', '136257', '071020', '测试257', null, null, null, null, null, '136257', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95756');
INSERT INTO `tp_yd_user` VALUES ('95757', '9', '136258', '071020', '测试258', null, null, null, null, null, '136258', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95757');
INSERT INTO `tp_yd_user` VALUES ('95758', '9', '136259', '071020', '测试259', null, null, null, null, null, '136259', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95758');
INSERT INTO `tp_yd_user` VALUES ('95759', '9', '136260', '071020', '测试260', null, null, null, null, null, '136260', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95759');
INSERT INTO `tp_yd_user` VALUES ('95760', '9', '136261', '071020', '测试261', null, null, null, null, null, '136261', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95760');
INSERT INTO `tp_yd_user` VALUES ('95761', '9', '136262', '071020', '测试262', null, null, null, null, null, '136262', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95761');
INSERT INTO `tp_yd_user` VALUES ('95762', '9', '136263', '071020', '测试263', null, null, null, null, null, '136263', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95762');
INSERT INTO `tp_yd_user` VALUES ('95763', '9', '136264', '071020', '测试264', null, null, null, null, null, '136264', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95763');
INSERT INTO `tp_yd_user` VALUES ('95764', '9', '136265', '071020', '测试265', null, null, null, null, null, '136265', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95764');
INSERT INTO `tp_yd_user` VALUES ('95765', '9', '136266', '071020', '测试266', null, null, null, null, null, '136266', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95765');
INSERT INTO `tp_yd_user` VALUES ('95766', '9', '136267', '071020', '测试267', null, null, null, null, null, '136267', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95766');
INSERT INTO `tp_yd_user` VALUES ('95767', '9', '136268', '071020', '测试268', null, null, null, null, null, '136268', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95767');
INSERT INTO `tp_yd_user` VALUES ('95768', '9', '136269', '071020', '测试269', null, null, null, null, null, '136269', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95768');
INSERT INTO `tp_yd_user` VALUES ('95769', '9', '136270', '071020', '测试270', null, null, null, null, null, '136270', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95769');
INSERT INTO `tp_yd_user` VALUES ('95770', '9', '136271', '071020', '测试271', null, null, null, null, null, '136271', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95770');
INSERT INTO `tp_yd_user` VALUES ('95771', '9', '136272', '071020', '测试272', null, null, null, null, null, '136272', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95771');
INSERT INTO `tp_yd_user` VALUES ('95772', '9', '136273', '071020', '测试273', null, null, null, null, null, '136273', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95772');
INSERT INTO `tp_yd_user` VALUES ('95773', '9', '136274', '071020', '测试274', null, null, null, null, null, '136274', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95773');
INSERT INTO `tp_yd_user` VALUES ('95774', '9', '136275', '071020', '测试275', null, null, null, null, null, '136275', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95774');
INSERT INTO `tp_yd_user` VALUES ('95775', '9', '136276', '071020', '测试276', null, null, null, null, null, '136276', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95775');
INSERT INTO `tp_yd_user` VALUES ('95776', '9', '136277', '071020', '测试277', null, null, null, null, null, '136277', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95776');
INSERT INTO `tp_yd_user` VALUES ('95777', '9', '136278', '071020', '测试278', null, null, null, null, null, '136278', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95777');
INSERT INTO `tp_yd_user` VALUES ('95778', '9', '136279', '071020', '测试279', null, null, null, null, null, '136279', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95778');
INSERT INTO `tp_yd_user` VALUES ('95779', '9', '136280', '071020', '测试280', null, null, null, null, null, '136280', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:42', null, '95779');
INSERT INTO `tp_yd_user` VALUES ('95780', '9', '136281', '071020', '测试281', null, null, null, null, null, '136281', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95780');
INSERT INTO `tp_yd_user` VALUES ('95781', '9', '136282', '071020', '测试282', null, null, null, null, null, '136282', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95781');
INSERT INTO `tp_yd_user` VALUES ('95782', '9', '136283', '071020', '测试283', null, null, null, null, null, '136283', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95782');
INSERT INTO `tp_yd_user` VALUES ('95783', '9', '136284', '071020', '测试284', null, null, null, null, null, '136284', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95783');
INSERT INTO `tp_yd_user` VALUES ('95784', '9', '136285', '071020', '测试285', null, null, null, null, null, '136285', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95784');
INSERT INTO `tp_yd_user` VALUES ('95785', '9', '136286', '071020', '测试286', null, null, null, null, null, '136286', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95785');
INSERT INTO `tp_yd_user` VALUES ('95786', '9', '136287', '071020', '测试287', null, null, null, null, null, '136287', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95786');
INSERT INTO `tp_yd_user` VALUES ('95787', '9', '136288', '071020', '测试288', null, null, null, null, null, '136288', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95787');
INSERT INTO `tp_yd_user` VALUES ('95788', '9', '136289', '071020', '测试289', null, null, null, null, null, '136289', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95788');
INSERT INTO `tp_yd_user` VALUES ('95789', '9', '136290', '071020', '测试290', null, null, null, null, null, '136290', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95789');
INSERT INTO `tp_yd_user` VALUES ('95790', '9', '136291', '071020', '测试291', null, null, null, null, null, '136291', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95790');
INSERT INTO `tp_yd_user` VALUES ('95791', '9', '136292', '071020', '测试292', null, null, null, null, null, '136292', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95791');
INSERT INTO `tp_yd_user` VALUES ('95792', '9', '136293', '071020', '测试293', null, null, null, null, null, '136293', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95792');
INSERT INTO `tp_yd_user` VALUES ('95793', '9', '136294', '071020', '测试294', null, null, null, null, null, '136294', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95793');
INSERT INTO `tp_yd_user` VALUES ('95794', '9', '136295', '071020', '测试295', null, null, null, null, null, '136295', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95794');
INSERT INTO `tp_yd_user` VALUES ('95795', '9', '136296', '071020', '测试296', null, null, null, null, null, '136296', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95795');
INSERT INTO `tp_yd_user` VALUES ('95796', '9', '136297', '071020', '测试297', null, null, null, null, null, '136297', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95796');
INSERT INTO `tp_yd_user` VALUES ('95797', '9', '136298', '071020', '测试298', null, null, null, null, null, '136298', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95797');
INSERT INTO `tp_yd_user` VALUES ('95798', '9', '136299', '071020', '测试299', null, null, null, null, null, '136299', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95798');
INSERT INTO `tp_yd_user` VALUES ('95799', '9', '136300', '071020', '测试300', null, null, null, null, null, '136300', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95799');
INSERT INTO `tp_yd_user` VALUES ('95800', '9', '136301', '071020', '测试301', null, null, null, null, null, '136301', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95800');
INSERT INTO `tp_yd_user` VALUES ('95801', '9', '136302', '071020', '测试302', null, null, null, null, null, '136302', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95801');
INSERT INTO `tp_yd_user` VALUES ('95802', '9', '136303', '071020', '测试303', null, null, null, null, null, '136303', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95802');
INSERT INTO `tp_yd_user` VALUES ('95803', '9', '136304', '071020', '测试304', null, null, null, null, null, '136304', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95803');
INSERT INTO `tp_yd_user` VALUES ('95804', '9', '136305', '071020', '测试305', null, null, null, null, null, '136305', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95804');
INSERT INTO `tp_yd_user` VALUES ('95805', '9', '136306', '071020', '测试306', null, null, null, null, null, '136306', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95805');
INSERT INTO `tp_yd_user` VALUES ('95806', '9', '136307', '071020', '测试307', null, null, null, null, null, '136307', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95806');
INSERT INTO `tp_yd_user` VALUES ('95807', '9', '136308', '071020', '测试308', null, null, null, null, null, '136308', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95807');
INSERT INTO `tp_yd_user` VALUES ('95808', '9', '136309', '071020', '测试309', null, null, null, null, null, '136309', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95808');
INSERT INTO `tp_yd_user` VALUES ('95809', '9', '136310', '071020', '测试310', null, null, null, null, null, '136310', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95809');
INSERT INTO `tp_yd_user` VALUES ('95810', '9', '136311', '071020', '测试311', null, null, null, null, null, '136311', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95810');
INSERT INTO `tp_yd_user` VALUES ('95811', '9', '136312', '071020', '测试312', null, null, null, null, null, '136312', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95811');
INSERT INTO `tp_yd_user` VALUES ('95812', '9', '136313', '071020', '测试313', null, null, null, null, null, '136313', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95812');
INSERT INTO `tp_yd_user` VALUES ('95813', '9', '136314', '071020', '测试314', null, null, null, null, null, '136314', null, null, null, null, '3', '2', '2015-11-17 16:17:36', '2014-11-10 11:12:55', null, '95813');
INSERT INTO `tp_yd_user` VALUES ('127054', '9', '138104', '071020', '张清', null, null, null, null, null, '138104', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2015-01-06 11:24:12', null, '7');
INSERT INTO `tp_yd_user` VALUES ('127055', '9', '138105', '071020', '丁煜闻', null, null, null, null, null, '138105', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2015-01-06 11:24:12', null, '8');
INSERT INTO `tp_yd_user` VALUES ('127056', '9', '138106', '071020', '陈柯涵', null, null, null, null, null, '138106', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2015-01-06 11:24:12', null, '9');
INSERT INTO `tp_yd_user` VALUES ('158758', '9', '13957899393', '071020', '民生', null, 'M', null, null, null, '13957899393', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2015-02-27 09:53:57', null, '6');
INSERT INTO `tp_yd_user` VALUES ('223120', '9', '水水', '071020', '水水', null, 'F', null, null, null, '15957171460', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2015-04-09 23:44:40', null, '5');
INSERT INTO `tp_yd_user` VALUES ('237349', '9', '191001', '071020', '王分分', '2015-04-21 00:00:00', 'F', null, null, null, '15825544377', null, null, null, null, '1', '0', '2015-11-17 16:17:36', '2015-04-28 09:51:21', null, '237349');
INSERT INTO `tp_yd_user` VALUES ('244234', '9', '13659', '071020', '小明', null, 'F', null, null, null, '1360000000', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2015-05-06 08:13:18', null, '1');
INSERT INTO `tp_yd_user` VALUES ('256681', '9', '13757420337', '071020', '张小小', null, 'M', null, null, null, '15957171460', null, null, null, null, '3', '0', '2015-11-26 17:30:45', '2015-05-21 21:21:38', null, '2');
INSERT INTO `tp_yd_user` VALUES ('272102', '9', '123456780', '071020', '画画', null, 'M', null, null, null, '13600000000', null, null, null, null, '3', '0', '2015-11-17 16:17:36', '2015-06-19 15:29:18', null, '3');
INSERT INTO `tp_yd_user` VALUES ('1222090', '9', 'u286348', '05ro57', '测试111', null, null, null, null, null, null, null, null, null, null, '3', '2', '2016-06-23 09:10:53', '2016-06-21 15:58:42', null, '1222090');
INSERT INTO `tp_yd_user` VALUES ('1418138', '9', 'u394562', 'o042b9', '原之泰', null, 'M', null, null, null, '18601752272', null, null, null, null, '2', '0', '2016-09-03 10:22:04', '2016-09-03 10:22:04', null, '1418138');

-- ----------------------------
-- Table structure for tp_yd_user_account
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_user_account`;
CREATE TABLE `tp_yd_user_account` (
  `uac_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uac_school_id` bigint(20) DEFAULT NULL,
  `uac_user_id` bigint(20) DEFAULT NULL,
  `uac_accname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_birthday` datetime DEFAULT NULL,
  `uac_gender` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_sign` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_backgroud` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_mobile_type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_effect_time` datetime DEFAULT NULL,
  `uac_expire_time` datetime DEFAULT NULL,
  `uac_role` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_modify_time` datetime NOT NULL,
  `uac_create_time` datetime NOT NULL,
  `uac_fee_type` bigint(20) DEFAULT NULL,
  `uac_fee_way` bigint(20) DEFAULT NULL,
  `uac_fee_time` datetime DEFAULT NULL,
  `uac_fee_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_sms_business` bigint(20) DEFAULT NULL,
  `uac_sms_order_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_sms_order_time` datetime DEFAULT NULL,
  `uac_sms_cancel_time` datetime DEFAULT NULL,
  `uac_guardian_rel` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_open_sms` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uac_freeze_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uac_id`),
  UNIQUE KEY `idx_user_acc_01` (`uac_accname`),
  KEY `idx_user_acc_02` (`uac_user_id`),
  KEY `idx_user_acc_03` (`uac_mobile`),
  KEY `idx_user_acc_04` (`uac_school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1048688 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_user_account
-- ----------------------------
INSERT INTO `tp_yd_user_account` VALUES ('82537', '9', '61812', '15200278', '000000', null, null, null, null, null, null, '13454704469', null, null, null, null, null, '1', '2016-01-15 15:24:48', '2014-09-24 14:28:03', '1004', '1004', null, '0', '1024', '0', null, null, null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119699', '9', '95535', '136036', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119700', '9', '95536', '136037', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119701', '9', '95537', '136038', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119702', '9', '95538', '136039', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119703', '9', '95539', '136040', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119704', '9', '95540', '136041', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119705', '9', '95541', '136042', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119706', '9', '95542', '136043', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119707', '9', '95543', '136044', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119708', '9', '95544', '136045', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119709', '9', '95545', '136046', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119710', '9', '95546', '136047', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119711', '9', '95547', '136048', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119712', '9', '95548', '136049', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119713', '9', '95549', '136050', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119714', '9', '95550', '136051', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119715', '9', '95551', '136052', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119716', '9', '95552', '136053', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119717', '9', '95553', '136054', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119718', '9', '95554', '136055', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119719', '9', '95555', '136056', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119720', '9', '95556', '136057', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119721', '9', '95557', '136058', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119722', '9', '95558', '136059', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119723', '9', '95559', '136060', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119724', '9', '95560', '136061', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119725', '9', '95561', '136062', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119726', '9', '95562', '136063', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119727', '9', '95563', '136064', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119728', '9', '95564', '136065', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119729', '9', '95565', '136066', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119730', '9', '95566', '136067', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119731', '9', '95567', '136068', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119732', '9', '95568', '136069', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119733', '9', '95569', '136070', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:31', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119734', '9', '95570', '136071', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119735', '9', '95571', '136072', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119736', '9', '95572', '136073', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119737', '9', '95573', '136074', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119738', '9', '95574', '136075', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119739', '9', '95575', '136076', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119740', '9', '95576', '136077', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119741', '9', '95577', '136078', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119742', '9', '95578', '136079', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119743', '9', '95579', '136080', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119744', '9', '95580', '136081', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119745', '9', '95581', '136082', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119746', '9', '95582', '136083', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119747', '9', '95583', '136084', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119748', '9', '95584', '136085', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119749', '9', '95585', '136086', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119750', '9', '95586', '136087', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119751', '9', '95587', '136088', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119752', '9', '95588', '136089', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119753', '9', '95589', '136090', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119754', '9', '95590', '136091', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119755', '9', '95591', '136092', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119756', '9', '95592', '136093', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119757', '9', '95593', '136094', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119758', '9', '95594', '136095', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119759', '9', '95595', '136096', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119760', '9', '95596', '136097', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119761', '9', '95597', '136098', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119762', '9', '95598', '136099', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119763', '9', '95599', '136100', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119764', '9', '95600', '136101', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119766', '9', '95602', '136103', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119767', '9', '95603', '136104', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:43', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119769', '9', '95605', '136106', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119770', '9', '95606', '136107', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119771', '9', '95607', '136108', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119772', '9', '95608', '136109', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119773', '9', '95609', '136110', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119774', '9', '95610', '136111', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119775', '9', '95611', '136112', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119776', '9', '95612', '136113', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119777', '9', '95613', '136114', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119778', '9', '95614', '136115', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119779', '9', '95615', '136116', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119780', '9', '95616', '136117', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119781', '9', '95617', '136118', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119782', '9', '95618', '136119', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119783', '9', '95619', '136120', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119784', '9', '95620', '136121', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119785', '9', '95621', '136122', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119786', '9', '95622', '136123', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119787', '9', '95623', '136124', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119788', '9', '95624', '136125', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119789', '9', '95625', '136126', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119790', '9', '95626', '136127', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119791', '9', '95627', '136128', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119792', '9', '95628', '136129', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119793', '9', '95629', '136130', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119794', '9', '95630', '136131', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119795', '9', '95631', '136132', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119796', '9', '95632', '136133', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119797', '9', '95633', '136134', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119798', '9', '95634', '136135', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119799', '9', '95635', '136136', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119800', '9', '95636', '136137', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119801', '9', '95637', '136138', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119802', '9', '95638', '136139', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119803', '9', '95639', '136140', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:11:54', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119804', '9', '95640', '136141', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119805', '9', '95641', '136142', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119806', '9', '95642', '136143', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119807', '9', '95643', '136144', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119808', '9', '95644', '136145', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119809', '9', '95645', '136146', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119810', '9', '95646', '136147', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119811', '9', '95647', '136148', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119812', '9', '95648', '136149', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119813', '9', '95649', '136150', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119814', '9', '95650', '136151', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119815', '9', '95651', '136152', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119816', '9', '95652', '136153', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119817', '9', '95653', '136154', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119818', '9', '95654', '136155', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119819', '9', '95655', '136156', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119820', '9', '95656', '136157', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119821', '9', '95657', '136158', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119822', '9', '95658', '136159', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119823', '9', '95659', '136160', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119824', '9', '95660', '136161', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119825', '9', '95661', '136162', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119826', '9', '95662', '136163', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119827', '9', '95663', '136164', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119828', '9', '95664', '136165', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119829', '9', '95665', '136166', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119830', '9', '95666', '136167', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119831', '9', '95667', '136168', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119832', '9', '95668', '136169', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119833', '9', '95669', '136170', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119834', '9', '95670', '136171', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119835', '9', '95671', '136172', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119836', '9', '95672', '136173', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119837', '9', '95673', '136174', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119838', '9', '95674', '136175', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:08', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119839', '9', '95675', '136176', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119840', '9', '95676', '136177', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119841', '9', '95677', '136178', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119842', '9', '95678', '136179', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119843', '9', '95679', '136180', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119844', '9', '95680', '136181', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119845', '9', '95681', '136182', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119846', '9', '95682', '136183', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119847', '9', '95683', '136184', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119848', '9', '95684', '136185', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119849', '9', '95685', '136186', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119850', '9', '95686', '136187', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119851', '9', '95687', '136188', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119852', '9', '95688', '136189', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119853', '9', '95689', '136190', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119854', '9', '95690', '136191', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119855', '9', '95691', '136192', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119856', '9', '95692', '136193', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119857', '9', '95693', '136194', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119858', '9', '95694', '136195', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119859', '9', '95695', '136196', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119860', '9', '95696', '136197', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119861', '9', '95697', '136198', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119862', '9', '95698', '136199', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119863', '9', '95699', '136200', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119864', '9', '95700', '136201', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119865', '9', '95701', '136202', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119866', '9', '95702', '136203', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119867', '9', '95703', '136204', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119868', '9', '95704', '136205', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119869', '9', '95705', '136206', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119870', '9', '95706', '136207', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119871', '9', '95707', '136208', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119872', '9', '95708', '136209', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119873', '9', '95709', '136210', '000000', null, null, null, null, null, null, '15957171460', null, null, null, null, null, '0', '2015-10-22 17:56:22', '2014-11-10 11:12:22', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('119874', '9', '95710', '136211', '000000', null, null, null, null, null, null, '136211', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119875', '9', '95711', '136212', '000000', null, null, null, null, null, null, '136212', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119876', '9', '95712', '136213', '000000', null, null, null, null, null, null, '136213', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119877', '9', '95713', '136214', '000000', null, null, null, null, null, null, '136214', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119878', '9', '95714', '136215', '000000', null, null, null, null, null, null, '136215', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119879', '9', '95715', '136216', '000000', null, null, null, null, null, null, '136216', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119880', '9', '95716', '136217', '000000', null, null, null, null, null, null, '136217', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119881', '9', '95717', '136218', '000000', null, null, null, null, null, null, '136218', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119882', '9', '95718', '136219', '000000', null, null, null, null, null, null, '136219', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119883', '9', '95719', '136220', '000000', null, null, null, null, null, null, '136220', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119884', '9', '95720', '136221', '000000', null, null, null, null, null, null, '136221', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119885', '9', '95721', '136222', '000000', null, null, null, null, null, null, '136222', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119886', '9', '95722', '136223', '000000', null, null, null, null, null, null, '136223', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119887', '9', '95723', '136224', '000000', null, null, null, null, null, null, '136224', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119888', '9', '95724', '136225', '000000', null, null, null, null, null, null, '136225', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119889', '9', '95725', '136226', '000000', null, null, null, null, null, null, '136226', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119890', '9', '95726', '136227', '000000', null, null, null, null, null, null, '136227', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119891', '9', '95727', '136228', '000000', null, null, null, null, null, null, '136228', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119892', '9', '95728', '136229', '000000', null, null, null, null, null, null, '136229', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119893', '9', '95729', '136230', '000000', null, null, null, null, null, null, '136230', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119894', '9', '95730', '136231', '000000', null, null, null, null, null, null, '136231', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119895', '9', '95731', '136232', '000000', null, null, null, null, null, null, '136232', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119896', '9', '95732', '136233', '000000', null, null, null, null, null, null, '136233', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119897', '9', '95733', '136234', '000000', null, null, null, null, null, null, '136234', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119898', '9', '95734', '136235', '000000', null, null, null, null, null, null, '136235', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119899', '9', '95735', '136236', '000000', null, null, null, null, null, null, '136236', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119900', '9', '95736', '136237', '000000', null, null, null, null, null, null, '136237', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119901', '9', '95737', '136238', '000000', null, null, null, null, null, null, '136238', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119902', '9', '95738', '136239', '000000', null, null, null, null, null, null, '136239', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119903', '9', '95739', '136240', '000000', null, null, null, null, null, null, '136240', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119904', '9', '95740', '136241', '000000', null, null, null, null, null, null, '136241', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119905', '9', '95741', '136242', '000000', null, null, null, null, null, null, '136242', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119906', '9', '95742', '136243', '000000', null, null, null, null, null, null, '136243', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119907', '9', '95743', '136244', '000000', null, null, null, null, null, null, '136244', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119908', '9', '95744', '136245', '000000', null, null, null, null, null, null, '136245', null, null, null, null, null, '2', '2014-11-10 11:12:32', '2014-11-10 11:12:32', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119909', '9', '95745', '136246', '000000', null, null, null, null, null, null, '136246', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119910', '9', '95746', '136247', '000000', null, null, null, null, null, null, '136247', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119911', '9', '95747', '136248', '000000', null, null, null, null, null, null, '136248', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119912', '9', '95748', '136249', '000000', null, null, null, null, null, null, '136249', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119913', '9', '95749', '136250', '000000', null, null, null, null, null, null, '136250', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119914', '9', '95750', '136251', '000000', null, null, null, null, null, null, '136251', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119915', '9', '95751', '136252', '000000', null, null, null, null, null, null, '136252', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119916', '9', '95752', '136253', '000000', null, null, null, null, null, null, '136253', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119917', '9', '95753', '136254', '000000', null, null, null, null, null, null, '136254', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119918', '9', '95754', '136255', '000000', null, null, null, null, null, null, '136255', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119919', '9', '95755', '136256', '000000', null, null, null, null, null, null, '136256', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119920', '9', '95756', '136257', '000000', null, null, null, null, null, null, '136257', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119921', '9', '95757', '136258', '000000', null, null, null, null, null, null, '136258', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119922', '9', '95758', '136259', '000000', null, null, null, null, null, null, '136259', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119923', '9', '95759', '136260', '000000', null, null, null, null, null, null, '136260', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119924', '9', '95760', '136261', '000000', null, null, null, null, null, null, '136261', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119925', '9', '95761', '136262', '000000', null, null, null, null, null, null, '136262', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119926', '9', '95762', '136263', '000000', null, null, null, null, null, null, '136263', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119927', '9', '95763', '136264', '000000', null, null, null, null, null, null, '136264', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119928', '9', '95764', '136265', '000000', null, null, null, null, null, null, '136265', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119929', '9', '95765', '136266', '000000', null, null, null, null, null, null, '136266', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119930', '9', '95766', '136267', '000000', null, null, null, null, null, null, '136267', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119931', '9', '95767', '136268', '000000', null, null, null, null, null, null, '136268', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119932', '9', '95768', '136269', '000000', null, null, null, null, null, null, '136269', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119933', '9', '95769', '136270', '000000', null, null, null, null, null, null, '136270', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119934', '9', '95770', '136271', '000000', null, null, null, null, null, null, '136271', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119935', '9', '95771', '136272', '000000', null, null, null, null, null, null, '136272', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119936', '9', '95772', '136273', '000000', null, null, null, null, null, null, '136273', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119937', '9', '95773', '136274', '000000', null, null, null, null, null, null, '136274', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119938', '9', '95774', '136275', '000000', null, null, null, null, null, null, '136275', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119939', '9', '95775', '136276', '000000', null, null, null, null, null, null, '136276', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119940', '9', '95776', '136277', '000000', null, null, null, null, null, null, '136277', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119941', '9', '95777', '136278', '000000', null, null, null, null, null, null, '136278', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119942', '9', '95778', '136279', '000000', null, null, null, null, null, null, '136279', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119943', '9', '95779', '136280', '000000', null, null, null, null, null, null, '136280', null, null, null, null, null, '2', '2014-11-10 11:12:42', '2014-11-10 11:12:42', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119944', '9', '95780', '136281', '000000', null, null, null, null, null, null, '136281', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119945', '9', '95781', '136282', '000000', null, null, null, null, null, null, '136282', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119946', '9', '95782', '136283', '000000', null, null, null, null, null, null, '136283', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119947', '9', '95783', '136284', '000000', null, null, null, null, null, null, '136284', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119948', '9', '95784', '136285', '000000', null, null, null, null, null, null, '136285', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119949', '9', '95785', '136286', '000000', null, null, null, null, null, null, '136286', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119950', '9', '95786', '136287', '000000', null, null, null, null, null, null, '136287', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119951', '9', '95787', '136288', '000000', null, null, null, null, null, null, '136288', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119952', '9', '95788', '136289', '000000', null, null, null, null, null, null, '136289', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119953', '9', '95789', '136290', '000000', null, null, null, null, null, null, '136290', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119954', '9', '95790', '136291', '000000', null, null, null, null, null, null, '136291', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119955', '9', '95791', '136292', '000000', null, null, null, null, null, null, '136292', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119956', '9', '95792', '136293', '000000', null, null, null, null, null, null, '136293', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119957', '9', '95793', '136294', '000000', null, null, null, null, null, null, '136294', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119958', '9', '95794', '136295', '000000', null, null, null, null, null, null, '136295', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119959', '9', '95795', '136296', '000000', null, null, null, null, null, null, '136296', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119960', '9', '95796', '136297', '000000', null, null, null, null, null, null, '136297', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119961', '9', '95797', '136298', '000000', null, null, null, null, null, null, '136298', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119962', '9', '95798', '136299', '000000', null, null, null, null, null, null, '136299', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119963', '9', '95799', '136300', '000000', null, null, null, null, null, null, '136300', null, null, null, null, null, '2', '2014-12-19 23:19:18', '2014-11-10 11:12:55', '1004', '1004', null, '0', '1024', '0', null, null, null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119964', '9', '95800', '136301', '000000', null, null, null, null, null, null, '136301', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119965', '9', '95801', '136302', '000000', null, null, null, null, null, null, '136302', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119966', '9', '95802', '136303', '000000', null, null, null, null, null, null, '136303', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119967', '9', '95803', '136304', '000000', null, null, null, null, null, null, '136304', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119968', '9', '95804', '136305', '000000', null, null, null, null, null, null, '136305', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119969', '9', '95805', '136306', '000000', null, null, null, null, null, null, '136306', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119970', '9', '95806', '136307', '000000', null, null, null, null, null, null, '136307', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119971', '9', '95807', '136308', '000000', null, null, null, null, null, null, '136308', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119972', '9', '95808', '136309', '000000', null, null, null, null, null, null, '136309', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119973', '9', '95809', '136310', '000000', null, null, null, null, null, null, '136310', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119974', '9', '95810', '136311', '000000', null, null, null, null, null, null, '136311', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119975', '9', '95811', '136312', '000000', null, null, null, null, null, null, '136312', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119976', '9', '95812', '136313', '000000', null, null, null, null, null, null, '136313', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('119977', '9', '95813', '136314', '000000', null, null, null, null, null, null, '136314', null, null, null, null, null, '2', '2014-11-10 11:12:55', '2014-11-10 11:12:55', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('153919', '9', '127054', '138104', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2015-01-06 11:24:12', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('153920', '9', '127055', '138105', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2015-01-06 11:24:12', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('153921', '9', '127056', '138106', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2015-01-06 11:24:12', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('189362', '9', '158758', '13957899393', '000000', null, null, null, null, null, null, '13957899393', null, null, null, null, null, '0', '2015-06-03 14:13:09', '2015-02-27 09:53:57', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('259340', '9', '223120', 'shuishui', '000000', null, null, null, null, null, null, '15825544377', null, null, null, null, null, '0', '2015-12-03 17:43:02', '2015-04-09 23:44:40', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('274649', '9', '237349', '191001', '000000', null, null, null, null, null, null, '15825544377', null, null, null, null, null, '0', '2015-05-14 22:57:07', '2015-04-28 09:51:21', '1004', '1004', null, '0', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('282992', '9', '244234', '13659', '000000', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2015-11-26 16:30:00', '2015-05-06 08:13:18', '1004', '1004', null, '1', '1024', '2', '2015-02-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('296773', '9', '256681', 'zxx', '111111', null, null, null, null, null, null, '15957171460', null, null, null, null, null, '0', '2016-07-18 11:39:04', '2015-05-21 21:21:38', '1004', '1004', null, '1', '1024', '2', '2015-04-18 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('313044', '9', '272102', '123456780', '000000', null, null, null, null, null, null, '13600000000', null, null, null, null, null, '0', '2015-06-19 15:29:18', '2015-06-19 15:29:18', '1004', '1004', null, '1', '1024', '2', '2015-02-20 00:00:00', '2015-08-31 00:00:00', null, null, '1');
INSERT INTO `tp_yd_user_account` VALUES ('847731', '9', '1222090', 'cs111', '05ro57', null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016-06-23 09:10:53', '2016-06-21 15:58:42', '1004', '1004', '2015-09-23 18:46:50', '1', '1024', '1', '2016-02-15 00:00:00', '2016-08-31 00:00:00', null, null, null);
INSERT INTO `tp_yd_user_account` VALUES ('1048687', '9', '1418138', '18601752272', 'o042b9', null, null, null, null, null, null, '18601752272', null, null, null, null, null, '0', '2016-09-03 10:22:04', '2016-09-03 10:22:04', '1004', '1004', '2015-09-23 18:46:50', '0', '1024', '0', '2016-08-23 00:00:00', '2017-02-01 00:00:00', null, null, null);

-- ----------------------------
-- Table structure for tp_yd_user_card_relation
-- ----------------------------
DROP TABLE IF EXISTS `tp_yd_user_card_relation`;
CREATE TABLE `tp_yd_user_card_relation` (
  `ucr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ucr_user` bigint(20) DEFAULT NULL,
  `ucr_card` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ucr_stt` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ucr_modify_time` datetime NOT NULL,
  `ucr_create_time` datetime NOT NULL,
  `ucr_school_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ucr_id`),
  UNIQUE KEY `idx_user_card_rel_01` (`ucr_school_id`,`ucr_card`),
  KEY `idx_user_card_rel_02` (`ucr_user`),
  KEY `idx_user_card_rel_03` (`ucr_card`)
) ENGINE=InnoDB AUTO_INCREMENT=1102105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_yd_user_card_relation
-- ----------------------------
INSERT INTO `tp_yd_user_card_relation` VALUES ('1', '0', 'ucr_card', 'u', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null);
INSERT INTO `tp_yd_user_card_relation` VALUES ('164084', '95569', '0008608689', '0', '2014-11-10 11:33:28', '2014-11-10 11:33:28', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164085', '95568', '0004774041', '0', '2014-11-10 11:33:32', '2014-11-10 11:33:32', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164086', '95567', '0008607271', '0', '2014-11-10 11:33:35', '2014-11-10 11:33:35', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164087', '95566', '0008698926', '0', '2014-11-10 11:33:37', '2014-11-10 11:33:37', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164088', '95565', '0008502566', '0', '2014-11-10 11:33:40', '2014-11-10 11:33:40', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164089', '95564', '0008510764', '0', '2014-11-10 11:33:43', '2014-11-10 11:33:43', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164090', '95563', '0004752342', '0', '2014-11-10 11:33:46', '2014-11-10 11:33:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164091', '95562', '0004760554', '0', '2014-11-10 11:33:48', '2014-11-10 11:33:48', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164092', '95561', '0004754776', '0', '2014-11-10 11:33:51', '2014-11-10 11:33:51', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164093', '95560', '0008523133', '0', '2014-11-10 11:33:54', '2014-11-10 11:33:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164094', '95559', '0008572966', '0', '2014-11-10 11:33:57', '2014-11-10 11:33:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164095', '95558', '0004768746', '0', '2014-11-10 11:34:00', '2014-11-10 11:34:00', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164096', '95557', '0000751789', '0', '2014-11-10 11:34:03', '2014-11-10 11:34:03', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164097', '95556', '0008532412', '0', '2014-11-10 11:34:06', '2014-11-10 11:34:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164098', '95555', '0004780316', '0', '2014-11-10 11:34:10', '2014-11-10 11:34:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164099', '95554', '0004761722', '0', '2014-11-10 11:34:13', '2014-11-10 11:34:13', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164100', '95553', '0004762128', '0', '2014-11-10 11:34:16', '2014-11-10 11:34:16', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164101', '95552', '0008513443', '0', '2014-11-10 11:34:19', '2014-11-10 11:34:19', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164102', '95551', '0008511164', '0', '2014-11-10 11:34:21', '2014-11-10 11:34:21', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164103', '95550', '0008512134', '0', '2014-11-10 11:34:24', '2014-11-10 11:34:24', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164104', '95549', '0008600771', '0', '2014-11-10 11:34:30', '2014-11-10 11:34:30', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164105', '95548', '0008534203', '0', '2014-11-10 11:34:33', '2014-11-10 11:34:33', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164106', '95547', '0004778854', '0', '2014-11-10 11:34:35', '2014-11-10 11:34:35', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164107', '95546', '0004779525', '0', '2014-11-10 11:34:38', '2014-11-10 11:34:38', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164108', '95545', '0008585845', '0', '2014-11-10 11:34:40', '2014-11-10 11:34:40', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164109', '95544', '0004782364', '0', '2014-11-10 11:34:43', '2014-11-10 11:34:43', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164110', '95543', '0008583074', '0', '2014-11-10 11:34:46', '2014-11-10 11:34:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164111', '95542', '0008580421', '0', '2014-11-10 11:34:49', '2014-11-10 11:34:49', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164112', '95541', '0008590770', '0', '2014-11-10 11:34:52', '2014-11-10 11:34:52', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164113', '95540', '0004780512', '0', '2014-11-10 11:34:55', '2014-11-10 11:34:55', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164114', '95539', '0004781944', '0', '2014-11-10 11:34:59', '2014-11-10 11:34:59', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164115', '95538', '0008575528', '0', '2014-11-10 11:35:03', '2014-11-10 11:35:03', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164116', '95537', '0004762740', '0', '2014-11-10 11:35:05', '2014-11-10 11:35:05', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164117', '95536', '0008602854', '0', '2014-11-10 11:35:08', '2014-11-10 11:35:08', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164118', '95535', '0004765277', '0', '2014-11-10 11:35:11', '2014-11-10 11:35:11', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164121', '95602', '0008514871', '0', '2014-11-10 11:35:55', '2014-11-10 11:35:55', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164123', '95600', '0008501505', '0', '2014-11-10 11:36:00', '2014-11-10 11:36:00', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164124', '95599', '0004783763', '0', '2014-11-10 11:36:03', '2014-11-10 11:36:03', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164125', '95598', '0008528279', '0', '2014-11-10 11:36:07', '2014-11-10 11:36:07', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164126', '95597', '0008505455', '0', '2014-11-10 11:36:10', '2014-11-10 11:36:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164127', '95596', '0004762024', '0', '2014-11-10 11:36:13', '2014-11-10 11:36:13', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164128', '95595', '0004766562', '0', '2014-11-10 11:36:17', '2014-11-10 11:36:17', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164129', '95594', '0004772879', '0', '2014-11-10 11:36:20', '2014-11-10 11:36:20', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164130', '95744', '0008521241', '0', '2014-11-10 11:36:20', '2014-11-10 11:36:20', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164131', '95593', '0004781262', '0', '2014-11-10 11:36:23', '2014-11-10 11:36:23', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164132', '95592', '0004783669', '0', '2014-11-10 11:36:25', '2014-11-10 11:36:25', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164133', '95743', '0004769674', '0', '2014-11-10 11:36:25', '2014-11-10 11:36:25', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164134', '95591', '0004773463', '0', '2014-11-10 11:36:28', '2014-11-10 11:36:28', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164135', '95742', '0008526641', '0', '2014-11-10 11:36:29', '2014-11-10 11:36:29', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164136', '95741', '0008519821', '0', '2014-11-10 11:36:33', '2014-11-10 11:36:33', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164137', '95590', '0004757578', '0', '2014-11-10 11:36:34', '2014-11-10 11:36:34', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164138', '95740', '0004765746', '0', '2014-11-10 11:36:36', '2014-11-10 11:36:36', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164139', '95589', '0008602332', '0', '2014-11-10 11:36:37', '2014-11-10 11:36:37', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164140', '95588', '0004748367', '0', '2014-11-10 11:36:40', '2014-11-10 11:36:40', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164141', '95739', '0008523326', '0', '2014-11-10 11:36:42', '2014-11-10 11:36:42', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164142', '95587', '0008574400', '0', '2014-11-10 11:36:42', '2014-11-10 11:36:42', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164143', '95738', '0008520924', '0', '2014-11-10 11:36:45', '2014-11-10 11:36:45', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164144', '95586', '0008574136', '0', '2014-11-10 11:36:46', '2014-11-10 11:36:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164145', '95737', '0008576176', '0', '2014-11-10 11:36:48', '2014-11-10 11:36:48', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164146', '95585', '0008577633', '0', '2014-11-10 11:36:50', '2014-11-10 11:36:50', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164147', '95584', '0008593070', '0', '2014-11-10 11:36:55', '2014-11-10 11:36:55', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164148', '95736', '0004755509', '0', '2014-11-10 11:36:56', '2014-11-10 11:36:56', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164149', '95583', '0008599894', '0', '2014-11-10 11:36:57', '2014-11-10 11:36:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164150', '95582', '0004772039', '0', '2014-11-10 11:37:00', '2014-11-10 11:37:00', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164151', '95581', '0008587496', '0', '2014-11-10 11:37:02', '2014-11-10 11:37:02', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164152', '95580', '0008530036', '0', '2014-11-10 11:37:05', '2014-11-10 11:37:05', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164153', '95579', '0008521126', '0', '2014-11-10 11:37:08', '2014-11-10 11:37:08', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164154', '95735', '0004782022', '0', '2014-11-10 11:37:09', '2014-11-10 11:37:09', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164155', '95578', '0008523968', '0', '2014-11-10 11:37:10', '2014-11-10 11:37:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164156', '95577', '0004765110', '0', '2014-11-10 11:37:13', '2014-11-10 11:37:13', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164157', '95734', '0004772728', '0', '2014-11-10 11:37:13', '2014-11-10 11:37:13', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164158', '95576', '0004761925', '0', '2014-11-10 11:37:15', '2014-11-10 11:37:15', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164159', '95733', '0004767480', '0', '2014-11-10 11:37:16', '2014-11-10 11:37:16', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164160', '95575', '0008498810', '0', '2014-11-10 11:37:19', '2014-11-10 11:37:19', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164161', '95732', '0004779003', '0', '2014-11-10 11:37:20', '2014-11-10 11:37:20', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164162', '95574', '0004761519', '0', '2014-11-10 11:37:23', '2014-11-10 11:37:23', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164163', '95731', '0008699130', '0', '2014-11-10 11:37:23', '2014-11-10 11:37:23', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164164', '95573', '0004780827', '0', '2014-11-10 11:37:25', '2014-11-10 11:37:25', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164165', '95730', '0004783762', '0', '2014-11-10 11:37:27', '2014-11-10 11:37:27', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164166', '95572', '0008531754', '0', '2014-11-10 11:37:28', '2014-11-10 11:37:28', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164167', '95729', '0008696847', '0', '2014-11-10 11:37:30', '2014-11-10 11:37:30', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164168', '95571', '0004777133', '0', '2014-11-10 11:37:32', '2014-11-10 11:37:32', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164169', '95728', '0004769966', '0', '2014-11-10 11:37:35', '2014-11-10 11:37:35', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164170', '95727', '0008603919', '0', '2014-11-10 11:37:39', '2014-11-10 11:37:39', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164171', '95726', '0004778669', '0', '2014-11-10 11:37:43', '2014-11-10 11:37:43', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164172', '95725', '0004767930', '0', '2014-11-10 11:37:46', '2014-11-10 11:37:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164173', '95724', '0004782443', '0', '2014-11-10 11:37:53', '2014-11-10 11:37:53', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164174', '95723', '0004782334', '0', '2014-11-10 11:37:56', '2014-11-10 11:37:56', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164175', '95722', '0008595381', '0', '2014-11-10 11:37:59', '2014-11-10 11:37:59', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164176', '95721', '0004781249', '0', '2014-11-10 11:38:02', '2014-11-10 11:38:02', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164177', '95720', '0004769551', '0', '2014-11-10 11:38:06', '2014-11-10 11:38:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164178', '95570', '0004751627', '0', '2014-11-10 11:38:10', '2014-11-10 11:38:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164179', '95719', '0004751849', '0', '2014-11-10 11:38:10', '2014-11-10 11:38:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164180', '95718', '0004749638', '0', '2014-11-10 11:38:51', '2014-11-10 11:38:51', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164181', '95717', '0008582158', '0', '2014-11-10 11:38:54', '2014-11-10 11:38:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164182', '95716', '0004757486', '0', '2014-11-10 11:38:57', '2014-11-10 11:38:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164183', '95715', '0004749637', '0', '2014-11-10 11:39:01', '2014-11-10 11:39:01', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164184', '95714', '0004749361', '0', '2014-11-10 11:39:04', '2014-11-10 11:39:04', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164185', '95713', '0008588722', '0', '2014-11-10 11:39:08', '2014-11-10 11:39:08', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164186', '95712', '0008515629', '0', '2014-11-10 11:39:11', '2014-11-10 11:39:11', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164187', '95711', '0006734604', '0', '2014-11-10 11:39:14', '2014-11-10 11:39:14', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164188', '95710', '0006786579', '0', '2014-11-10 11:39:17', '2014-11-10 11:39:17', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164189', '95779', '0006741534', '0', '2014-11-10 11:39:41', '2014-11-10 11:39:41', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164190', '95778', '0000246786', '0', '2014-11-10 11:39:43', '2014-11-10 11:39:43', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164191', '95777', '0009373299', '0', '2014-11-10 11:39:47', '2014-11-10 11:39:47', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164192', '95776', '0002619143', '0', '2014-11-10 11:39:49', '2014-11-10 11:39:49', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164193', '95775', '0002124173', '0', '2014-11-10 11:39:54', '2014-11-10 11:39:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164194', '95774', '0006783614', '0', '2014-11-10 11:39:57', '2014-11-10 11:39:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164195', '95773', '0006729911', '0', '2014-11-10 11:40:00', '2014-11-10 11:40:00', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164196', '95772', '0006760797', '0', '2014-11-10 11:40:03', '2014-11-10 11:40:03', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164197', '95771', '0002196489', '0', '2014-11-10 11:40:06', '2014-11-10 11:40:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164198', '95770', '0013697956', '0', '2014-11-10 11:40:09', '2014-11-10 11:40:09', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164199', '95769', '0002266305', '0', '2014-11-10 11:40:14', '2014-11-10 11:40:14', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164200', '95768', '0003026958', '0', '2014-11-10 11:40:18', '2014-11-10 11:40:18', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164201', '95767', '0003707767', '0', '2014-11-10 11:40:21', '2014-11-10 11:40:21', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164202', '95766', '0003109722', '0', '2014-11-10 11:40:24', '2014-11-10 11:40:24', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164203', '95765', '0001335346', '0', '2014-11-10 11:40:27', '2014-11-10 11:40:27', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164204', '95764', '0006639972', '0', '2014-11-10 11:40:30', '2014-11-10 11:40:30', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164205', '95763', '0003928700', '0', '2014-11-10 11:40:34', '2014-11-10 11:40:34', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164206', '95762', '0003105804', '0', '2014-11-10 11:40:37', '2014-11-10 11:40:37', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164207', '95761', '0006731867', '0', '2014-11-10 11:40:40', '2014-11-10 11:40:40', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164208', '95760', '0006760806', '0', '2014-11-10 11:40:43', '2014-11-10 11:40:43', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164209', '95759', '0006736600', '0', '2014-11-10 11:40:49', '2014-11-10 11:40:49', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164210', '95758', '0002267827', '0', '2014-11-10 11:40:53', '2014-11-10 11:40:53', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164211', '95757', '0006760833', '0', '2014-11-10 11:40:56', '2014-11-10 11:40:56', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164212', '95756', '0002725686', '0', '2014-11-10 11:41:01', '2014-11-10 11:41:01', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164213', '95755', '0000222713', '0', '2014-11-10 11:41:03', '2014-11-10 11:41:03', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164214', '95754', '0003702339', '0', '2014-11-10 11:41:06', '2014-11-10 11:41:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164215', '95753', '0006659779', '0', '2014-11-10 11:41:10', '2014-11-10 11:41:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164216', '95752', '0001341121', '0', '2014-11-10 11:41:17', '2014-11-10 11:41:17', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164217', '95751', '0006728202', '0', '2014-11-10 11:41:21', '2014-11-10 11:41:21', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164218', '95750', '0006638712', '0', '2014-11-10 11:41:23', '2014-11-10 11:41:23', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164219', '95749', '0009420290', '0', '2014-11-10 11:41:26', '2014-11-10 11:41:26', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164220', '95748', '0006700353', '0', '2014-11-10 11:41:29', '2014-11-10 11:41:29', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164221', '95747', '0006740462', '0', '2014-11-10 11:41:32', '2014-11-10 11:41:32', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164222', '95746', '0006739610', '0', '2014-11-10 11:41:34', '2014-11-10 11:41:34', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164223', '95745', '0006736410', '0', '2014-11-10 11:41:39', '2014-11-10 11:41:39', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164225', '95813', '0004760021', '0', '2014-11-10 11:42:42', '2014-11-10 11:42:42', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164226', '95812', '0004771307', '0', '2015-03-30 15:19:46', '2014-11-10 11:42:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164227', '95811', '0008533097', '0', '2014-11-10 11:42:49', '2014-11-10 11:42:49', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164228', '95810', '0004778501', '0', '2014-11-10 11:42:51', '2014-11-10 11:42:51', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164229', '95809', '0008510964', '0', '2015-02-17 17:41:02', '2014-11-10 11:42:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164230', '95808', '0004753183', '0', '2014-11-10 11:42:57', '2014-11-10 11:42:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164231', '95807', '0004781611', '0', '2014-11-10 11:42:59', '2014-11-10 11:42:59', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164232', '95806', '0004759147', '0', '2014-11-10 11:43:04', '2014-11-10 11:43:04', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164233', '95805', '0004781328', '0', '2014-11-10 11:43:06', '2014-11-10 11:43:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164234', '95804', '0004760343', '0', '2014-11-10 11:43:10', '2014-11-10 11:43:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164235', '95803', '0004757579', '0', '2014-11-10 11:43:12', '2014-11-10 11:43:12', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164236', '95802', '0004781184', '0', '2014-11-10 11:43:16', '2014-11-10 11:43:16', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164237', '95801', '0003107841', '0', '2014-11-10 11:43:19', '2014-11-10 11:43:19', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164238', '95800', '0008515075', '0', '2014-11-10 11:43:21', '2014-11-10 11:43:21', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164239', '95799', '0004780742', '0', '2014-11-10 11:43:24', '2014-11-10 11:43:24', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164240', '95798', '0004767888', '0', '2014-11-10 11:43:27', '2014-11-10 11:43:27', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164241', '95797', '0008505276', '0', '2014-11-10 11:43:30', '2014-11-10 11:43:30', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164242', '95796', '0008498064', '0', '2014-11-10 11:43:33', '2014-11-10 11:43:33', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164243', '95795', '0004780891', '0', '2014-11-10 11:43:36', '2014-11-10 11:43:36', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164244', '95794', '0008498706', '0', '2014-11-10 11:43:44', '2014-11-10 11:43:44', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164245', '95793', '0008504213', '0', '2014-11-10 11:43:47', '2014-11-10 11:43:47', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164246', '95792', '0004760143', '0', '2014-11-10 11:43:50', '2014-11-10 11:43:50', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164247', '95791', '0004775552', '0', '2014-11-10 11:43:53', '2014-11-10 11:43:53', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164248', '95790', '0008500096', '0', '2014-11-10 11:43:56', '2014-11-10 11:43:56', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164249', '95789', '0004781887', '0', '2014-11-10 11:44:01', '2014-11-10 11:44:01', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164250', '95788', '0004773657', '0', '2014-11-10 11:44:04', '2014-11-10 11:44:04', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164251', '95787', '0004782155', '0', '2014-11-10 11:44:07', '2014-11-10 11:44:07', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164252', '95786', '0004781038', '0', '2014-11-10 11:44:10', '2014-11-10 11:44:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164253', '95785', '0004774613', '0', '2014-11-10 11:44:14', '2014-11-10 11:44:14', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164254', '95639', '0009629725', '0', '2014-11-10 11:44:15', '2014-11-10 11:44:15', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164255', '95784', '0004775179', '0', '2014-11-10 11:44:16', '2014-11-10 11:44:16', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164256', '95638', '0006702600', '0', '2014-11-10 11:44:19', '2014-11-10 11:44:19', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164257', '95783', '0004765338', '0', '2014-11-10 11:44:20', '2014-11-10 11:44:20', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164258', '95637', '0006698339', '0', '2014-11-10 11:44:21', '2014-11-10 11:44:21', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164259', '95636', '0006669188', '0', '2014-11-10 11:44:24', '2014-11-10 11:44:24', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164260', '95782', '0008513239', '0', '2014-11-10 11:44:24', '2014-11-10 11:44:24', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164261', '95635', '0006724897', '0', '2014-11-10 11:44:26', '2014-11-10 11:44:26', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164262', '95781', '0004774423', '0', '2014-11-10 11:44:28', '2014-11-10 11:44:28', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164263', '95634', '0006664306', '0', '2014-11-10 11:44:29', '2014-11-10 11:44:29', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164264', '95780', '0008503718', '0', '2014-11-10 11:44:31', '2014-11-10 11:44:31', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164265', '95633', '0006669467', '0', '2014-11-10 11:44:31', '2014-11-10 11:44:31', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164266', '95632', '0006662508', '0', '2014-11-10 11:44:48', '2014-11-10 11:44:48', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164267', '95631', '0006651262', '0', '2014-11-10 11:44:50', '2014-11-10 11:44:50', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164268', '95630', '0006645137', '0', '2014-11-10 11:44:54', '2014-11-10 11:44:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164269', '95629', '0006646549', '0', '2014-11-10 11:44:57', '2014-11-10 11:44:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164270', '95628', '0006639508', '0', '2014-11-10 11:45:00', '2014-11-10 11:45:00', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164271', '95627', '0006725574', '0', '2014-11-10 11:45:03', '2014-11-10 11:45:03', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164272', '95626', '0006709986', '0', '2014-11-10 11:45:06', '2014-11-10 11:45:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164273', '95709', '0008530449', '0', '2014-11-10 11:45:10', '2014-11-10 11:45:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164274', '95625', '0006716062', '0', '2014-11-10 11:45:10', '2014-11-10 11:45:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164275', '95708', '0008499965', '0', '2014-11-10 11:45:13', '2014-11-10 11:45:13', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164276', '95624', '0006725694', '0', '2014-11-10 11:45:14', '2014-11-10 11:45:14', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164277', '95623', '0006725581', '0', '2014-11-10 11:45:16', '2014-11-10 11:45:16', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164278', '95622', '0006721301', '0', '2014-11-10 11:45:19', '2014-11-10 11:45:19', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164279', '95707', '0004754607', '0', '2014-11-10 11:45:20', '2014-11-10 11:45:20', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164280', '95621', '0006662237', '0', '2014-11-10 11:45:21', '2014-11-10 11:45:21', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164281', '95620', '0003763561', '0', '2014-11-10 11:45:25', '2014-11-10 11:45:25', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164282', '95619', '0003901067', '0', '2014-11-10 11:45:29', '2014-11-10 11:45:29', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164283', '95618', '0003795027', '0', '2014-11-10 11:45:31', '2014-11-10 11:45:31', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164284', '95706', '0008514055', '0', '2014-11-10 11:45:32', '2014-11-10 11:45:32', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164285', '95617', '0000358934', '0', '2014-11-10 11:45:34', '2014-11-10 11:45:34', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164286', '95705', '0004779168', '0', '2014-11-10 11:45:36', '2014-11-10 11:45:36', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164287', '95616', '0000368617', '0', '2014-11-10 11:45:36', '2014-11-10 11:45:36', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164288', '95615', '0006731835', '0', '2014-11-10 11:45:38', '2014-11-10 11:45:38', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164289', '95704', '0008499836', '0', '2014-11-10 11:45:39', '2014-11-10 11:45:39', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164290', '95614', '0006664578', '0', '2014-11-10 11:45:41', '2014-11-10 11:45:41', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164291', '95613', '0006658166', '0', '2014-11-10 11:45:44', '2014-11-10 11:45:44', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164292', '95612', '0006665014', '0', '2014-11-10 11:45:47', '2014-11-10 11:45:47', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164293', '95611', '0006664565', '0', '2014-11-10 11:45:49', '2014-11-10 11:45:49', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164294', '95610', '0006729271', '0', '2014-11-10 11:45:52', '2014-11-10 11:45:52', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164295', '95609', '0006629175', '0', '2014-11-10 11:45:54', '2014-11-10 11:45:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164296', '95703', '0008501065', '0', '2014-11-10 11:45:56', '2014-11-10 11:45:56', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164297', '95608', '0006691507', '0', '2014-11-10 11:45:57', '2014-11-10 11:45:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164298', '95607', '0006715503', '0', '2014-11-10 11:46:00', '2014-11-10 11:46:00', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164299', '95702', '0004780385', '0', '2014-11-10 11:46:00', '2014-11-10 11:46:00', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164300', '95606', '0006675470', '0', '2014-11-10 11:46:03', '2014-11-10 11:46:03', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164301', '95701', '0004773269', '0', '2014-11-10 11:46:04', '2014-11-10 11:46:04', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164302', '95700', '0004778837', '0', '2014-11-10 11:46:07', '2014-11-10 11:46:07', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164303', '95699', '0004768860', '0', '2014-11-10 11:46:10', '2014-11-10 11:46:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164304', '95698', '0004772435', '0', '2014-11-10 11:46:12', '2014-11-10 11:46:12', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164305', '95697', '0004775738', '0', '2014-11-10 11:46:15', '2014-11-10 11:46:15', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164306', '95696', '0008527736', '0', '2014-11-10 11:46:17', '2014-11-10 11:46:17', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164307', '95695', '0004781118', '0', '2014-11-10 11:46:20', '2014-11-10 11:46:20', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164308', '95694', '0008527190', '0', '2014-11-10 11:46:23', '2014-11-10 11:46:23', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164309', '95693', '0006699046', '0', '2014-11-10 11:46:25', '2014-11-10 11:46:25', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164310', '95692', '0006651183', '0', '2014-11-10 11:46:28', '2014-11-10 11:46:28', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164311', '95691', '0006655738', '0', '2014-11-10 11:46:31', '2014-11-10 11:46:31', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164312', '95605', '0006676620', '0', '2014-11-10 11:46:31', '2014-11-10 11:46:31', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164313', '95690', '0006657477', '0', '2014-11-10 11:46:33', '2014-11-10 11:46:33', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164314', '95689', '0006644538', '0', '2014-11-10 11:46:39', '2014-11-10 11:46:39', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164315', '95674', '0006669546', '0', '2014-11-10 11:46:39', '2014-11-10 11:46:39', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164316', '95673', '0006662587', '0', '2014-11-10 11:46:41', '2014-11-10 11:46:41', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164317', '95688', '0006639699', '0', '2014-11-10 11:46:42', '2014-11-10 11:46:42', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164318', '95672', '0006668409', '0', '2014-11-10 11:46:43', '2014-11-10 11:46:43', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164319', '95687', '0006759043', '0', '2014-11-10 11:46:44', '2014-11-10 11:46:44', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164320', '95671', '0006692789', '0', '2014-11-10 11:46:46', '2014-11-10 11:46:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164321', '95686', '0006758125', '0', '2014-11-10 11:46:47', '2014-11-10 11:46:47', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164322', '95670', '0006697322', '0', '2014-11-10 11:46:48', '2014-11-10 11:46:48', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164323', '95685', '0006764949', '0', '2014-11-10 11:46:50', '2014-11-10 11:46:50', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164324', '95669', '0006690421', '0', '2014-11-10 11:46:50', '2014-11-10 11:46:50', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164325', '95684', '0006684045', '0', '2014-11-10 11:46:53', '2014-11-10 11:46:53', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164326', '95668', '0006683370', '0', '2014-11-10 11:46:55', '2014-11-10 11:46:55', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164327', '95683', '0006686516', '0', '2014-11-10 11:46:57', '2014-11-10 11:46:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164328', '95667', '0006685775', '0', '2014-11-10 11:46:57', '2014-11-10 11:46:57', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164329', '95682', '0006691087', '0', '2014-11-10 11:46:59', '2014-11-10 11:46:59', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164330', '95666', '0006678677', '0', '2014-11-10 11:46:59', '2014-11-10 11:46:59', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164331', '95665', '0006699607', '0', '2014-11-10 11:47:02', '2014-11-10 11:47:02', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164332', '95681', '0006693517', '0', '2014-11-10 11:47:02', '2014-11-10 11:47:02', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164333', '95664', '0006671576', '0', '2014-11-10 11:47:04', '2014-11-10 11:47:04', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164334', '95663', '0006676258', '0', '2014-11-10 11:47:07', '2014-11-10 11:47:07', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164335', '95662', '0006730953', '0', '2014-11-10 11:47:10', '2014-11-10 11:47:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164336', '95661', '0006639660', '0', '2014-11-10 11:47:13', '2014-11-10 11:47:13', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164337', '95660', '0006635662', '0', '2014-11-10 11:47:17', '2014-11-10 11:47:17', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164338', '95659', '0006640781', '0', '2014-11-10 11:47:20', '2014-11-10 11:47:20', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164339', '95658', '0006728358', '0', '2014-11-10 11:47:22', '2014-11-10 11:47:22', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164340', '95657', '0006721133', '0', '2014-11-10 11:47:25', '2014-11-10 11:47:25', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164341', '95656', '0006715857', '0', '2014-11-10 11:47:27', '2014-11-10 11:47:27', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164342', '95655', '0006657740', '0', '2014-11-10 11:47:30', '2014-11-10 11:47:30', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164343', '95680', '0006720316', '0', '2014-11-10 11:47:37', '2014-11-10 11:47:37', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164344', '95654', '0006688946', '0', '2014-11-10 11:47:41', '2014-11-10 11:47:41', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164345', '95679', '0006691476', '0', '2014-11-10 11:47:43', '2014-11-10 11:47:43', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164346', '95678', '0006733499', '0', '2014-11-10 11:47:46', '2014-11-10 11:47:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164347', '95677', '0006803627', '0', '2014-11-10 11:47:49', '2014-11-10 11:47:49', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164348', '95676', '0006806621', '0', '2014-11-10 11:47:51', '2014-11-10 11:47:51', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164349', '95675', '0006637473', '0', '2014-11-10 11:47:54', '2014-11-10 11:47:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164355', '95653', '0006682587', '0', '2014-11-10 11:48:47', '2014-11-10 11:48:47', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164356', '95652', '0009294564', '0', '2014-11-10 11:48:51', '2014-11-10 11:48:51', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164357', '95651', '0009515039', '0', '2014-11-10 11:48:54', '2014-11-10 11:48:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164358', '95650', '0009294688', '0', '2014-11-10 11:48:56', '2014-11-10 11:48:56', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164359', '95649', '0000296676', '0', '2014-11-10 11:48:58', '2014-11-10 11:48:58', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164360', '95648', '0000287899', '0', '2014-11-10 11:49:01', '2014-11-10 11:49:01', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164361', '95647', '0000281406', '0', '2014-11-10 11:49:04', '2014-11-10 11:49:04', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164362', '95646', '0009193347', '0', '2014-11-10 11:49:08', '2014-11-10 11:49:08', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164363', '95645', '0000300596', '0', '2014-11-10 11:49:10', '2014-11-10 11:49:10', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164364', '95644', '0009379753', '0', '2014-11-10 11:49:13', '2014-11-10 11:49:13', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164365', '95643', '0000153913', '0', '2014-11-10 11:49:15', '2014-11-10 11:49:15', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164366', '95642', '0009280771', '0', '2014-11-10 11:49:47', '2014-11-10 11:49:47', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164367', '95641', '0006699269', '0', '2014-11-10 11:49:50', '2014-11-10 11:49:50', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('164368', '95640', '0006722544', '0', '2014-11-10 11:49:54', '2014-11-10 11:49:54', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('365641', '95800', '0000518518', '0', '2015-04-24 16:07:45', '2015-04-24 16:07:45', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('389264', '237349', '0006431965', '0', '2016-01-05 08:09:19', '2015-05-14 22:56:34', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('416449', '127056', '0005893170', '0', '2015-06-19 08:47:39', '2015-06-19 08:47:39', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('416450', '127055', '0005893167', '0', '2015-06-19 08:49:32', '2015-06-19 08:49:32', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('417156', '127054', '0006335378', '0', '2015-06-19 13:50:40', '2015-06-19 13:50:40', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('417172', '223120', '0004868376', '0', '2015-06-19 16:15:09', '2015-06-19 16:15:09', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('417173', '223120', '0005015724', '0', '2015-06-19 16:15:09', '2015-06-19 16:15:09', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('417174', '223120', '0007360601', '0', '2015-06-19 16:15:09', '2015-06-19 16:15:09', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('417175', '223120', '0005888748', '0', '2015-06-19 16:15:09', '2015-06-19 16:15:09', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('417183', '61812', '0003302516', '0', '2015-06-19 16:24:06', '2015-06-19 16:24:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('417184', '61812', '0005959697', '0', '2015-06-19 16:24:06', '2015-06-19 16:24:06', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('705914', '272102', '0009722256', '0', '2015-11-26 17:27:14', '2015-11-23 15:40:59', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('705916', '244234', '0007108111', '0', '2015-11-23 15:41:16', '2015-11-23 15:41:16', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('711410', '272102', '0007091204', '0', '2015-11-26 17:27:32', '2015-11-26 17:27:32', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('711411', '256681', '0007133980', '0', '2015-11-26 17:30:10', '2015-11-26 17:27:46', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('718137', '223120', '0007151151', '0', '2015-12-03 17:39:17', '2015-12-03 17:39:17', '9');
INSERT INTO `tp_yd_user_card_relation` VALUES ('1102104', '95603', '0008503383', '0', '2016-06-23 09:10:28', '2016-06-23 09:10:28', '9');
