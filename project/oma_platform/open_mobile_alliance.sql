/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.199
Source Server Version : 50505
Source Host           : 192.168.1.199:3306
Source Database       : open_mobile_alliance

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-05 15:53:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oma_about
-- ----------------------------
DROP TABLE IF EXISTS `oma_about`;
CREATE TABLE `oma_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `company_name` varchar(200) NOT NULL DEFAULT '' COMMENT '企业名称',
  `about_phone` int(11) NOT NULL DEFAULT '0' COMMENT '手机',
  `contact_status` int(2) NOT NULL DEFAULT '1' COMMENT '联系状态　１：未联系　２：已联系',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_about
-- ----------------------------
INSERT INTO `oma_about` VALUES ('1', '123', '123', '123', '1', '1513925637');
INSERT INTO `oma_about` VALUES ('2', '123', '12312', '123', '1', '1513925697');
INSERT INTO `oma_about` VALUES ('3', '123', '123', '123', '1', '1513925745');
INSERT INTO `oma_about` VALUES ('4', '12', '123', '123', '2', '1513925801');
INSERT INTO `oma_about` VALUES ('5', '123', '123', '123', '2', '1513926017');
INSERT INTO `oma_about` VALUES ('6', '123', '123', '0', '2', '1513926049');
INSERT INTO `oma_about` VALUES ('7', '1', '1', '1', '1', '1513926418');
INSERT INTO `oma_about` VALUES ('8', '1', '11', '1', '1', '1513926444');
INSERT INTO `oma_about` VALUES ('9', '123', '123', '123', '1', '1513926776');
INSERT INTO `oma_about` VALUES ('10', '12', '12', '0', '1', '1513926928');
INSERT INTO `oma_about` VALUES ('11', 'lidc', '启冠', '2147483647', '1', '1513927469');
INSERT INTO `oma_about` VALUES ('12', '11', 'gga', '33', '1', '1513931507');

-- ----------------------------
-- Table structure for oma_admin
-- ----------------------------
DROP TABLE IF EXISTS `oma_admin`;
CREATE TABLE `oma_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `real_name` varchar(10) NOT NULL DEFAULT '' COMMENT '真实名称',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(10) NOT NULL DEFAULT '' COMMENT '密码干扰数',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '账户状态 0 正常 1冻结 2 删除',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限组id',
  `login_time` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '登录ip',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of oma_admin
-- ----------------------------
INSERT INTO `oma_admin` VALUES ('1', 'admin', '管理员1', 'c0e3e481795100c283269380f851acf8', '7886', '0', '2', '1515138727', '127.0.0.1', '1222222222', '1513061871');
INSERT INTO `oma_admin` VALUES ('2', 'luozs', 'luozs', 'edb931c419a38a924981e972853638fa', '6071', '2', '2', '1513056973', '127.0.0.1', '1513056866', '1514541064');
INSERT INTO `oma_admin` VALUES ('7', '121', '1', '', '', '0', '2', '0', '', '0', '0');
INSERT INTO `oma_admin` VALUES ('8', '8', '1', '', '', '0', '2', '0', '', '0', '0');
INSERT INTO `oma_admin` VALUES ('9', '9', '', '', '', '0', '2', '0', '', '0', '0');
INSERT INTO `oma_admin` VALUES ('10', '10', 'admin', '43c582e68a1dcdbc0f56b43e7b4d6601', '2540', '2', '2', '0', '', '0', '1513684309');
INSERT INTO `oma_admin` VALUES ('11', '11', '', '', '', '0', '2', '0', '', '0', '0');
INSERT INTO `oma_admin` VALUES ('12', '12', '', '', '', '2', '2', '0', '', '0', '1513684270');
INSERT INTO `oma_admin` VALUES ('13', '13', '', '', '', '2', '3', '0', '', '0', '1513684130');
INSERT INTO `oma_admin` VALUES ('14', '14', '', '', '', '2', '2', '0', '', '0', '1513684137');
INSERT INTO `oma_admin` VALUES ('15', '15', '', '', '', '2', '2', '0', '', '0', '1513684123');
INSERT INTO `oma_admin` VALUES ('16', '16', '', '', '', '2', '3', '0', '', '0', '1513684087');
INSERT INTO `oma_admin` VALUES ('17', '17', '', '', '', '2', '2', '0', '', '0', '1513684030');
INSERT INTO `oma_admin` VALUES ('18', '18', '', '', '', '2', '2', '0', '', '0', '1513684029');
INSERT INTO `oma_admin` VALUES ('19', '19', '', '', '', '2', '7', '0', '', '0', '1513683823');
INSERT INTO `oma_admin` VALUES ('20', '20', '', '', '', '2', '2', '0', '', '0', '1513683749');
INSERT INTO `oma_admin` VALUES ('21', 'demo', 'test1', '6e680d52f31eda1259d0db87b664ee23', '2386', '0', '9', '0', '', '1513064104', '1513684283');
INSERT INTO `oma_admin` VALUES ('23', 'zb', 'zb', '82c9b807717506a7101bc8f702e3bfb4', '1232', '0', '2', '1513682888', '127.0.0.1', '1513682785', '1513682869');
INSERT INTO `oma_admin` VALUES ('24', 'yyyy', 'yyy', 'a541a6ede266983c78c2430c10b48e33', '7706', '2', '2', '1513683257', '127.0.0.1', '1513683164', '1513683839');
INSERT INTO `oma_admin` VALUES ('25', 'yyyyyy', 'admin', '5e4448b5dd8436c51c7c2e8d2c0dbf72', '6203', '0', '2', '0', '', '1513683453', '1513684245');
INSERT INTO `oma_admin` VALUES ('26', 'yyyy', 'admin', '2b965e899b8852dc48282fcd8bae5643', '7917', '2', '2', '0', '', '1513683948', '1513684001');
INSERT INTO `oma_admin` VALUES ('27', '3123', 'admin', '1819ca18c6da07c5280010224bb71366', '4617', '0', '2', '0', '', '1513684251', '1513736232');
INSERT INTO `oma_admin` VALUES ('28', 'wxhzjj114', 'wxh', '14dfac79b6023cf623e1247a78fb71ce', '7749', '2', '5', '0', '', '1513747145', '1513747246');
INSERT INTO `oma_admin` VALUES ('29', '111', '无', '713e485c696ee02886f41f1ccf44b917', '4687', '2', '2', '0', '', '1513748890', '1513748914');
INSERT INTO `oma_admin` VALUES ('30', 'wxhzjj114', 'wxh', '1a43e011d3484ce51cf19946f66636a5', '9783', '1', '2', '0', '', '1513749543', '1513749547');
INSERT INTO `oma_admin` VALUES ('31', 'wxh', 'www', '92a8acd41711263715705c0fa605e1ca', '6554', '0', '2', '0', '', '1513750325', '0');
INSERT INTO `oma_admin` VALUES ('32', 'luozs', 'test', 'cdad64fe659623f74ec4e8dc8531d0dc', '4350', '0', '2', '0', '', '1514541083', '1515138567');

-- ----------------------------
-- Table structure for oma_advert
-- ----------------------------
DROP TABLE IF EXISTS `oma_advert`;
CREATE TABLE `oma_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `ad_name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '广告类型：1 h5, 2 app拉活 , 3 js-气泡, 4 js-横幅',
  `business_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '广告类型:  1：棋牌，2 金融，3 网赚，4 电商，5 其他',
  `put_day_limit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '日限额',
  `put_begin_date` int(11) NOT NULL DEFAULT '0' COMMENT '投放开始时间',
  `put_end_date` int(11) NOT NULL DEFAULT '0' COMMENT '投放结束时间',
  `put_time_point` varchar(500) NOT NULL DEFAULT '' COMMENT '投放时间点 格式 : (1{24}|){7}\r\n24小时*7天 1代表选择 0 不选',
  `put_pic` varchar(200) NOT NULL DEFAULT '' COMMENT '图片地址',
  `put_pic_thumb` varchar(200) NOT NULL DEFAULT '' COMMENT '投放图片副图',
  `put_click_url` varchar(200) NOT NULL DEFAULT '' COMMENT '投放点击地址',
  `put_ios_download_url` varchar(200) DEFAULT '' COMMENT 'ios下载地址',
  `put_android_download_url` varchar(200) DEFAULT '' COMMENT '安卓下载地址',
  `put_price` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '出价',
  `put_onoff` tinyint(1) NOT NULL DEFAULT '0' COMMENT '投放开关： 0 关闭 1开启',
  `put_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '投放状态：0 未投放，1 投放中，2 日限额已到，3 不在投放周期， 4 余额不足,5 不在投放时间段',
  `put_btn_title` varchar(10) NOT NULL DEFAULT '' COMMENT '中奖广告按钮显示提示语',
  `audit_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态： 0 待审核， 1审核通过， 2审核失败',
  `audit_fail_reason` varchar(200) NOT NULL DEFAULT '' COMMENT '审核失败原因',
  `adinfo_expire_date` varchar(50) NOT NULL DEFAULT '' COMMENT '广告信息-过期时间 xxx~xxx',
  `app_url` varchar(200) NOT NULL DEFAULT '' COMMENT '拉货地址',
  `weight` decimal(5,2) DEFAULT '0.00' COMMENT '权重',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除： 0否，1是',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_advert
-- ----------------------------
INSERT INTO `oma_advert` VALUES ('1', '1', '测试广告误操作', '1', '1', '100.00', '1512662400', '1517328000', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111', 'http://imgsrc.baidu.com/imgad/pic/item/34fae6cd7b899e51fab3e9c048a7d933c8950d21.jpg', 'http://imgsrc.baidu.com/imgad/pic/item/34fae6cd7b899e51fab3e9c048a7d933c8950d21.jpg', 'http://www.baidu.com', '', '', '100.00', '1', '1', '', '1', '', '22', '', '0.00', '1512662400', '1514946595', '0');
INSERT INTO `oma_advert` VALUES ('2', '1', '添加测试', '1', '1', '4.00', '1513267200', '1515168000', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111110000000000000|111111111110000000000000|111111111110000000000000', 'http://img.9xu.com/group1/M00/00/8F/wKgAXloyKk-AAYQoAACBxDM65Zw932.jpg', 'http://img.9xu.com/group1/M00/00/8F/wKgAXloyKG6ALYERAAAEF56Efa4617.jpg', 'http://oma_platform.com/admin/advert/edit', '', '', '4.00', '0', '0', '', '1', '', '2017-12-14~2018-1-1', '', '0.00', '0', '1514881402', '0');
INSERT INTO `oma_advert` VALUES ('3', '1', '测试', '1', '1', '5.00', '1512662400', '1512662400', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111000000000000000000|111111000000000000000001', '/uploads/image/2017/12/20171215101739_86701.jpg', '', 'http://oma_platform.com/admin/advert/edit', '', '', '5.00', '0', '0', '', '1', '', '123', '', '0.00', '1513304259', '0', '1');
INSERT INTO `oma_advert` VALUES ('4', '11', '测试５', '1', '5', '0.00', '1512662400', '1512662400', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111110000000000000001111|111110000000000000001111', '/uploads/image/2017/12/20171215101909_16100.jpg', '', '12312', '', '', '5.00', '0', '0', '', '1', '', '123213', '', '0.00', '1513304349', '0', '0');
INSERT INTO `oma_advert` VALUES ('5', '1', '测试6', '1', '4', '5.00', '1512662400', '1512662400', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111100000000000000|111111111100000000000000|111111111100000000000000', '/uploads/image/2017/12/20171215102303_42006.jpg', '', '123', '', '', '12.00', '0', '3', '', '1', '', '123', '', '0.00', '1513304583', '0', '0');
INSERT INTO `oma_advert` VALUES ('6', '1', '测试7', '1', '5', '5.00', '1512662400', '1512662400', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111000000000000|111111111111000000000000', '/uploads/image/2017/12/20171215102430_80299.jpg', '', '12312', '', '', '123.00', '0', '3', '', '1', '', '123213', '', '0.00', '1513304670', '0', '0');
INSERT INTO `oma_advert` VALUES ('7', '1', '213123', '1', '4', '5.00', '1512662400', '1512662400', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111000000001|111111111111111000000001', '/uploads/image/2017/12/20171215102619_85197.jpg', '/static/image/2017/12/20171220164833_84298.jpg', '213', '', '', '999.99', '0', '3', '', '1', '', '21321', '', '0.00', '1513304779', '1513759715', '0');
INSERT INTO `oma_advert` VALUES ('8', '18', '21321', '1', '4', '5.00', '1512662400', '1512662400', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111110000000000|111111111111110000000000', '/uploads/image/2017/12/20171215102841_43316.jpg', '', '123', '', '', '999.99', '0', '3', '', '1', '', '123', '', '0.00', '1513304921', '0', '0');
INSERT INTO `oma_advert` VALUES ('9', '1', '21321', '1', '4', '5.00', '1512662400', '1512662400', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111100000000011111|000000000011111111100000|000000000011111111100000|000000000011111111100000', '/static/image/2017/12/20171220164250_47144.jpg', '/static/image/2017/12/20171220164253_12147.jpg', '123', '', '', '999.99', '0', '3', '', '1', '', '123', '', '0.00', '1513304990', '1513759697', '0');
INSERT INTO `oma_advert` VALUES ('10', '1', 'zbzbzb1', '1', '2', '500.00', '1512921600', '1515254400', '111111111111111111111111|111111111111111111111111|111111111101111111111111|111110000011111111111111|111110000011111111111111|111110000011111111111111|111111111111111111111111', '/static/image/2017/12/20171219194703_66918.jpg', '/static/image/2017/12/20171220163705_83392.jpg', 'http://www.baidu.com', '', '', '0.98', '1', '1', '', '1', '', '2017-08-12', '', '0.00', '1513684023', '1514881423', '0');
INSERT INTO `oma_advert` VALUES ('11', '1', 'ceshi', '1', '2', '22.00', '1513094400', '1517328000', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|000000000000000000000000|000000000000000000000000', '/static/image/2017/12/20171220135046_63569.jpg', '/static/image/2017/12/20171220135049_10248.jpg', 'http://www.baidu.com', '', '', '22.00', '0', '5', '', '1', '', '30', '', '0.00', '1513749069', '1514946573', '0');
INSERT INTO `oma_advert` VALUES ('12', '1', '000', '1', '2', '100.00', '1513094400', '1517328000', '111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|000000000000000000000000|000000000000000000000000', '/static/image/2017/12/20171220142234_13172.jpg', '/static/image/2017/12/20171220142332_58259.jpg', 'http://www.pcauto.com.cn/', '', '', '333.00', '0', '5', '', '1', '', '30', '', '0.00', '1513751014', '1514946556', '0');

-- ----------------------------
-- Table structure for oma_advert_position
-- ----------------------------
DROP TABLE IF EXISTS `oma_advert_position`;
CREATE TABLE `oma_advert_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '媒体id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '广告位类型： 1 h5, 2 app拉活 , 3 js',
  `js_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'js展现形式：1 顶部悬浮，2 底部悬浮，3 左部小图标，4右部小图标，5信息流， 6插屏',
  `pic_size` varchar(15) NOT NULL DEFAULT '' COMMENT '图片尺寸 : 320*160 ',
  `pic` varchar(200) NOT NULL DEFAULT '' COMMENT '广告位图片',
  `status` tinyint(1) DEFAULT '0' COMMENT '审核状态： 0 待审核， 1 审核通过， 2 审核失败',
  `audit_time` int(11) NOT NULL DEFAULT '0' COMMENT '审核时间',
  `audit_fail_reason` varchar(200) NOT NULL DEFAULT '' COMMENT '审核失败原因',
  `shield_id` int(11) NOT NULL DEFAULT '0' COMMENT '屏蔽包id',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除： 0否，1是',
  `third_rate` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '第三方连接调用比例',
  `third_tpl_url` varchar(200) NOT NULL DEFAULT '' COMMENT '第三方连接调用链接',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `media_id` (`media_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='广告位表';

-- ----------------------------
-- Records of oma_advert_position
-- ----------------------------
INSERT INTO `oma_advert_position` VALUES ('31', '1', '4', '测试广告位新增', '1', '0', '', '', '0', '0', '', '1', '0', '0.00', '', '1512638265', '1513063035');
INSERT INTO `oma_advert_position` VALUES ('32', '1', '5', '测试js广告', '3', '1', '', '', '0', '0', '', '0', '1', '0.00', '', '1512638443', '1513061709');
INSERT INTO `oma_advert_position` VALUES ('35', '1', '8', '测试广告位1', '1', '0', '', '', '2', '1513136024', '不给通过', '1', '0', '0.00', '', '1512638692', '1513062973');
INSERT INTO `oma_advert_position` VALUES ('36', '1', '9', '测试广告位', '1', '0', '', '', '0', '0', '', '0', '1', '0.00', '', '1512700557', '1513059290');
INSERT INTO `oma_advert_position` VALUES ('37', '1', '10', '测试广告位123', '1', '0', '', '', '0', '0', '', '0', '1', '0.00', '', '1512700607', '1513059286');
INSERT INTO `oma_advert_position` VALUES ('38', '1', '11', '宇宙无敌伽马射线', '1', '0', '', '', '1', '1513135884', '', '1', '0', '0.00', '', '1512703636', '1513069960');
INSERT INTO `oma_advert_position` VALUES ('41', '1', '14', 'admintest23', '1', '0', '', '', '1', '1513060668', '', '1', '0', '0.00', '', '1513059619', '1513062997');
INSERT INTO `oma_advert_position` VALUES ('42', '1', '15', '111', '1', '0', '', '', '0', '0', '', '0', '1', '0.00', '', '1513061793', '1513061801');
INSERT INTO `oma_advert_position` VALUES ('43', '1', '16', 'weqr', '1', '0', '', '', '1', '1513134927', '', '0', '0', '99.99', '', '1513069622', '0');
INSERT INTO `oma_advert_position` VALUES ('44', '1', '17', '123', '1', '0', '', '', '0', '0', '', '1', '1', '0.00', '', '1513069723', '1513132762');
INSERT INTO `oma_advert_position` VALUES ('45', '1', '18', '123122', '1', '0', '', '', '1', '1513132583', '', '1', '0', '0.00', '', '1513069733', '1513133349');
INSERT INTO `oma_advert_position` VALUES ('46', '2', '19', '这是新增的广告位1', '1', '0', '', '', '1', '1513132527', '', '1', '0', '0.00', '', '1513072571', '1513161635');
INSERT INTO `oma_advert_position` VALUES ('47', '1', '20', '1测试广告位1', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513151652', '0');
INSERT INTO `oma_advert_position` VALUES ('48', '1', '21', '123', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513153103', '0');
INSERT INTO `oma_advert_position` VALUES ('49', '1', '22', '123', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513153302', '1513686271');
INSERT INTO `oma_advert_position` VALUES ('50', '1', '23', '在测试一个1123', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513154724', '1513686374');
INSERT INTO `oma_advert_position` VALUES ('51', '7', '24', '李的广告位', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513227899', '0');
INSERT INTO `oma_advert_position` VALUES ('52', '7', '25', '李的广告位', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513227915', '0');
INSERT INTO `oma_advert_position` VALUES ('53', '9', '26', '的撒大所', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513227970', '0');
INSERT INTO `oma_advert_position` VALUES ('54', '2', '27', 'ying的广告位', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513228040', '1513749959');
INSERT INTO `oma_advert_position` VALUES ('55', '15', '28', 'test7的广告位', '1', '0', '', '', '1', '1513749340', 'sss ', '0', '0', '0.00', '', '1513228268', '1513749335');
INSERT INTO `oma_advert_position` VALUES ('56', '1', '29', '调整后测试12', '1', '0', '', '', '1', '1513573699', '', '0', '0', '0.00', '', '1513230363', '1513747355');
INSERT INTO `oma_advert_position` VALUES ('57', '32', '30', '调整后测试12', '1', '0', '', '', '1', '1513683562', 'aaaaf粉色发多少', '0', '0', '18.25', '312', '1513683273', '1513851027');
INSERT INTO `oma_advert_position` VALUES ('58', '1', '31', 'zbtest', '1', '0', '', '', '1', '1513747573', 's ', '6', '0', '0.00', '', '1513685400', '1513749477');
INSERT INTO `oma_advert_position` VALUES ('59', '1', '32', '21231', '1', '0', '', '', '1', '1513749801', '测试', '0', '0', '0.00', '', '1513747511', '0');
INSERT INTO `oma_advert_position` VALUES ('60', '40', '33', '荷花池', '1', '0', '', '', '1', '1513749366', '', '0', '0', '0.00', '', '1513749349', '1513840439');
INSERT INTO `oma_advert_position` VALUES ('61', '40', '34', '仙人球1', '1', '0', '', '', '0', '0', '', '0', '1', '0.00', '', '1513749489', '1513749742');
INSERT INTO `oma_advert_position` VALUES ('62', '37', '35', 'ceshi', '1', '0', '', '', '1', '1513749916', '', '0', '0', '0.00', '', '1513749894', '0');
INSERT INTO `oma_advert_position` VALUES ('63', '37', '36', 'ceshi02', '1', '0', '', '', '1', '1513750714', '', '0', '0', '0.00', '', '1513750128', '1513851932');
INSERT INTO `oma_advert_position` VALUES ('65', '40', '38', '1', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513750267', '0');
INSERT INTO `oma_advert_position` VALUES ('66', '1', '39', 'ssa', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513750367', '0');
INSERT INTO `oma_advert_position` VALUES ('67', '1', '40', 'ssa', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513750367', '0');
INSERT INTO `oma_advert_position` VALUES ('68', '1', '41', 'ssa', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513750368', '0');
INSERT INTO `oma_advert_position` VALUES ('69', '2', '42', '测试', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513750944', '0');
INSERT INTO `oma_advert_position` VALUES ('70', '2', '43', '测试', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513750945', '1513751286');
INSERT INTO `oma_advert_position` VALUES ('71', '1', '44', '发生的撒', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513751014', '0');
INSERT INTO `oma_advert_position` VALUES ('72', '2', '45', '新增看看', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513751301', '0');
INSERT INTO `oma_advert_position` VALUES ('73', '2', '46', '新增看看', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513751301', '1513751755');
INSERT INTO `oma_advert_position` VALUES ('74', '2', '47', '测试多次提交', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513751779', '0');
INSERT INTO `oma_advert_position` VALUES ('75', '2', '48', '测试多次提交', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513751780', '0');
INSERT INTO `oma_advert_position` VALUES ('76', '2', '49', '测试1', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513751894', '0');
INSERT INTO `oma_advert_position` VALUES ('77', '2', '50', '我睡得晚群', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513752288', '0');
INSERT INTO `oma_advert_position` VALUES ('78', '2', '51', '我睡得晚群', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513752289', '0');
INSERT INTO `oma_advert_position` VALUES ('79', '2', '52', '123123', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513752414', '0');
INSERT INTO `oma_advert_position` VALUES ('80', '2', '53', 'eqweqw', '1', '0', '', '', '1', '1514353350', '', '0', '0', '20.00', 'http://www.woshipm.com/operate/887219.html', '1513752969', '1514429007');
INSERT INTO `oma_advert_position` VALUES ('81', '2', '54', '大叔大婶', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1513753062', '0');
INSERT INTO `oma_advert_position` VALUES ('82', '2', '55', '恶趣味无群', '1', '0', '', '', '1', '1514516554', '', '0', '0', '0.00', '', '1513753081', '1513753115');
INSERT INTO `oma_advert_position` VALUES ('83', '2', '56', 'h5', '1', '0', '', '', '1', '1514516539', '', '0', '0', '0.00', '', '1513753174', '0');
INSERT INTO `oma_advert_position` VALUES ('84', '2', '57', '测试看看', '1', '0', '', '', '1', '1514516532', '', '0', '0', '9.99', '', '1513753871', '1513849891');
INSERT INTO `oma_advert_position` VALUES ('85', '2', '58', '测试４', '1', '0', '', '', '1', '1514516501', '', '0', '0', '0.00', '', '1513754148', '1514887341');
INSERT INTO `oma_advert_position` VALUES ('86', '2', '59', 'ceshi56666', '1', '0', '', '', '1', '1513850702', '', '0', '0', '0.00', '', '1513754173', '1514887240');
INSERT INTO `oma_advert_position` VALUES ('87', '2', '60', '恶趣味群翁', '1', '0', '', '', '1', '1513850179', '', '0', '0', '40.00', 'http://engine.sifuhe.cn/index/activity?appKey=3nAzSQWmcmrWkaRSgJbb68n12X5h&adslotId=5935', '1513754212', '1514514937');
INSERT INTO `oma_advert_position` VALUES ('88', '15', '61', 'sss', '1', '0', '', '', '1', '1514253893', '', '6', '0', '9.00', 'http://www.baidu.com', '1514253884', '1514444569');
INSERT INTO `oma_advert_position` VALUES ('89', '37', '62', '阿萨', '1', '0', '', '', '1', '1514273985', '', '0', '0', '50.00', 'http://engine.sifuhe.cn/index/activity?appKey=3nAzSQWmcmrWkaRSgJbb68n12X5h&adslotId=5935', '1514272072', '1514444039');
INSERT INTO `oma_advert_position` VALUES ('90', '1', '63', '测试122', '1', '0', '640*200', '/static/image/2018/01/20180104142321_69512.png', '1', '1514346814', '', '0', '0', '100.00', 'http://engine.sifuhe.cn/index/activity?appKey=3nAzSQWmcmrWkaRSgJbb68n12X5h&adslotId=5935 ', '1514346809', '1515047002');
INSERT INTO `oma_advert_position` VALUES ('91', '1', '64', '123123', '3', '1', '640*200', '/static/image/2018/01/20180104143100_27701.png', '0', '0', '', '0', '0', '0.00', '', '1515037576', '1515055966');
INSERT INTO `oma_advert_position` VALUES ('92', '1', '65', '123', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1515055946', '0');
INSERT INTO `oma_advert_position` VALUES ('93', '1', '66', '123', '3', '6', '', '', '0', '0', '', '0', '0', '0.00', '', '1515055946', '1515056641');
INSERT INTO `oma_advert_position` VALUES ('94', '1', '67', '123', '3', '6', '', '', '0', '0', '', '0', '0', '0.00', '', '1515056251', '1515056708');
INSERT INTO `oma_advert_position` VALUES ('95', '1', '68', '123', '3', '1', '', '', '0', '0', '', '0', '0', '0.00', '', '1515056706', '1515056751');
INSERT INTO `oma_advert_position` VALUES ('96', '1', '69', '测试', '1', '0', '', '', '0', '0', '', '0', '0', '0.00', '', '1515119354', '0');
INSERT INTO `oma_advert_position` VALUES ('97', '32', '70', 'js-test', '3', '1', '640x200', '/static/image/2018/01/20180104143100_27701.png', '1', '1515133690', '', '0', '0', '0.00', '', '1515133685', '0');

-- ----------------------------
-- Table structure for oma_advert_position_assist
-- ----------------------------
DROP TABLE IF EXISTS `oma_advert_position_assist`;
CREATE TABLE `oma_advert_position_assist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `show_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '展现形式：1 跳转 2后退',
  `show_rate` decimal(4,2) NOT NULL DEFAULT '0.00' COMMENT '跳转比例',
  `shield_area` text NOT NULL COMMENT '屏蔽地域',
  `shield_ip` varchar(1000) NOT NULL DEFAULT '' COMMENT '屏蔽ip按;分割',
  PRIMARY KEY (`id`),
  KEY `adwId` (`adw_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告位辅助投放';

-- ----------------------------
-- Records of oma_advert_position_assist
-- ----------------------------
INSERT INTO `oma_advert_position_assist` VALUES ('1', '38', '1', '20.00', '330000;330500;330100;330400;330700;331100;330200;330800;330600;331000;330300;330900', 'aaa;bbb;dddd');
INSERT INTO `oma_advert_position_assist` VALUES ('2', '41', '2', '0.00', '442100;445100;441300;440500', 'aaa;bbb;dddd;1');

-- ----------------------------
-- Table structure for oma_area
-- ----------------------------
DROP TABLE IF EXISTS `oma_area`;
CREATE TABLE `oma_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT '名称',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '编码',
  `pcode` varchar(10) NOT NULL DEFAULT '' COMMENT '父级编码',
  `level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '等级',
  PRIMARY KEY (`id`),
  KEY `pcde` (`pcode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_area
-- ----------------------------
INSERT INTO `oma_area` VALUES ('5685', '北京市', '110000', '', '1');
INSERT INTO `oma_area` VALUES ('5686', '北京城区', '110100', '110000', '2');
INSERT INTO `oma_area` VALUES ('5687', '昌平区', '110114', '110100', '3');
INSERT INTO `oma_area` VALUES ('5688', '朝阳区', '110105', '110100', '3');
INSERT INTO `oma_area` VALUES ('5689', '大兴区', '110115', '110100', '3');
INSERT INTO `oma_area` VALUES ('5690', '东城区', '110101', '110100', '3');
INSERT INTO `oma_area` VALUES ('5691', '房山区', '110111', '110100', '3');
INSERT INTO `oma_area` VALUES ('5692', '丰台区', '110106', '110100', '3');
INSERT INTO `oma_area` VALUES ('5693', '海淀区', '110108', '110100', '3');
INSERT INTO `oma_area` VALUES ('5694', '怀柔区', '110116', '110100', '3');
INSERT INTO `oma_area` VALUES ('5695', '密云区', '110118', '110100', '3');
INSERT INTO `oma_area` VALUES ('5696', '门头沟区', '110109', '110100', '3');
INSERT INTO `oma_area` VALUES ('5697', '平谷区', '110117', '110100', '3');
INSERT INTO `oma_area` VALUES ('5698', '石景山区', '110107', '110100', '3');
INSERT INTO `oma_area` VALUES ('5699', '顺义区', '110113', '110100', '3');
INSERT INTO `oma_area` VALUES ('5700', '通州区', '110112', '110100', '3');
INSERT INTO `oma_area` VALUES ('5701', '西城区', '110102', '110100', '3');
INSERT INTO `oma_area` VALUES ('5702', '延庆区', '110119', '110100', '3');
INSERT INTO `oma_area` VALUES ('5703', '重庆市', '500000', '', '1');
INSERT INTO `oma_area` VALUES ('5704', '重庆郊县', '500200', '500000', '2');
INSERT INTO `oma_area` VALUES ('5705', '城口县', '500229', '500200', '3');
INSERT INTO `oma_area` VALUES ('5706', '垫江县', '500231', '500200', '3');
INSERT INTO `oma_area` VALUES ('5707', '丰都县', '500230', '500200', '3');
INSERT INTO `oma_area` VALUES ('5708', '奉节县', '500236', '500200', '3');
INSERT INTO `oma_area` VALUES ('5709', '梁平区', '500155', '500200', '3');
INSERT INTO `oma_area` VALUES ('5710', '彭水苗族土家族自治县', '500243', '500200', '3');
INSERT INTO `oma_area` VALUES ('5711', '石柱土家族自治县', '500240', '500200', '3');
INSERT INTO `oma_area` VALUES ('5712', '巫山县', '500237', '500200', '3');
INSERT INTO `oma_area` VALUES ('5713', '巫溪县', '500238', '500200', '3');
INSERT INTO `oma_area` VALUES ('5714', '武隆区', '500156', '500200', '3');
INSERT INTO `oma_area` VALUES ('5715', '秀山土家族苗族自治县', '500241', '500200', '3');
INSERT INTO `oma_area` VALUES ('5716', '酉阳土家族苗族自治县', '500242', '500200', '3');
INSERT INTO `oma_area` VALUES ('5717', '云阳县', '500235', '500200', '3');
INSERT INTO `oma_area` VALUES ('5718', '忠县', '500233', '500200', '3');
INSERT INTO `oma_area` VALUES ('5719', '重庆城区', '500100', '500000', '2');
INSERT INTO `oma_area` VALUES ('5720', '巴南区', '500113', '500100', '3');
INSERT INTO `oma_area` VALUES ('5721', '北碚区', '500109', '500100', '3');
INSERT INTO `oma_area` VALUES ('5722', '璧山区', '500120', '500100', '3');
INSERT INTO `oma_area` VALUES ('5723', '大足区', '500111', '500100', '3');
INSERT INTO `oma_area` VALUES ('5724', '大渡口区', '500104', '500100', '3');
INSERT INTO `oma_area` VALUES ('5725', '涪陵区', '500102', '500100', '3');
INSERT INTO `oma_area` VALUES ('5726', '合川区', '500117', '500100', '3');
INSERT INTO `oma_area` VALUES ('5727', '江津区', '500116', '500100', '3');
INSERT INTO `oma_area` VALUES ('5728', '江北区', '500105', '500100', '3');
INSERT INTO `oma_area` VALUES ('5729', '九龙坡区', '500107', '500100', '3');
INSERT INTO `oma_area` VALUES ('5730', '开州区', '500154', '500100', '3');
INSERT INTO `oma_area` VALUES ('5731', '南岸区', '500108', '500100', '3');
INSERT INTO `oma_area` VALUES ('5732', '南川区', '500119', '500100', '3');
INSERT INTO `oma_area` VALUES ('5733', '綦江区', '500110', '500100', '3');
INSERT INTO `oma_area` VALUES ('5734', '黔江区', '500114', '500100', '3');
INSERT INTO `oma_area` VALUES ('5735', '荣昌区', '500153', '500100', '3');
INSERT INTO `oma_area` VALUES ('5736', '沙坪坝区', '500106', '500100', '3');
INSERT INTO `oma_area` VALUES ('5737', '潼南区', '500152', '500100', '3');
INSERT INTO `oma_area` VALUES ('5738', '铜梁区', '500151', '500100', '3');
INSERT INTO `oma_area` VALUES ('5739', '万州区', '500101', '500100', '3');
INSERT INTO `oma_area` VALUES ('5740', '永川区', '500118', '500100', '3');
INSERT INTO `oma_area` VALUES ('5741', '渝中区', '500103', '500100', '3');
INSERT INTO `oma_area` VALUES ('5742', '渝北区', '500112', '500100', '3');
INSERT INTO `oma_area` VALUES ('5743', '长寿区', '500115', '500100', '3');
INSERT INTO `oma_area` VALUES ('5744', '澳门特别行政区', '820000', '', '1');
INSERT INTO `oma_area` VALUES ('5745', '花王堂区', '820002', '820000', '2');
INSERT INTO `oma_area` VALUES ('5746', '望德堂区', '820003', '820000', '2');
INSERT INTO `oma_area` VALUES ('5747', '大堂区', '820004', '820000', '2');
INSERT INTO `oma_area` VALUES ('5748', '风顺堂区', '820005', '820000', '2');
INSERT INTO `oma_area` VALUES ('5749', '花地玛堂区', '820001', '820000', '2');
INSERT INTO `oma_area` VALUES ('5750', '嘉模堂区', '820006', '820000', '2');
INSERT INTO `oma_area` VALUES ('5751', '圣方济各堂区', '820008', '820000', '2');
INSERT INTO `oma_area` VALUES ('5752', '路凼填海区', '820007', '820000', '2');
INSERT INTO `oma_area` VALUES ('5753', '广东省', '440000', '', '1');
INSERT INTO `oma_area` VALUES ('5754', '中山市', '442000', '440000', '2');
INSERT INTO `oma_area` VALUES ('5755', '南头镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5756', '小榄镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5757', '东凤镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5758', '神湾镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5759', '南朗镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5760', '环城街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5761', '坦洲镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5762', '中山港街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5763', '南区街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5764', '五桂山街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5765', '石歧区街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5766', '西区街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5767', '东区街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5768', '三乡镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5769', '大涌镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5770', '黄圃镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5771', '石岐区街道', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5772', '沙溪镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5773', '东升镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5774', '阜沙镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5775', '民众镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5776', '横栏镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5777', '三角镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5778', '板芙镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5779', '港口镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5780', '古镇镇', '442000', '442000', '3');
INSERT INTO `oma_area` VALUES ('5781', '东沙群岛', '442100', '440000', '2');
INSERT INTO `oma_area` VALUES ('5782', '潮州市', '445100', '440000', '2');
INSERT INTO `oma_area` VALUES ('5783', '潮安区', '445103', '445100', '3');
INSERT INTO `oma_area` VALUES ('5784', '饶平县', '445122', '445100', '3');
INSERT INTO `oma_area` VALUES ('5785', '湘桥区', '445102', '445100', '3');
INSERT INTO `oma_area` VALUES ('5786', '东莞市', '441900', '440000', '2');
INSERT INTO `oma_area` VALUES ('5787', '东坑镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5788', '企石镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5789', '大岭山镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5790', '沙田镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5791', '道滘镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5792', '虎门镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5793', '望牛墩镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5794', '南城街道', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5795', '莞城街道', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5796', '东城街道', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5797', '万江街道', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5798', '石排镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5799', '厚街镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5800', '长安镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5801', '石碣镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5802', '横沥镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5803', '大朗镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5804', '樟木头镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5805', '清溪镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5806', '麻涌镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5807', '茶山镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5808', '凤岗镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5809', '高埗镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5810', '中堂镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5811', '桥头镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5812', '谢岗镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5813', '黄江镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5814', '塘厦镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5815', '寮步镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5816', '洪梅镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5817', '常平镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5818', '石龙镇', '441900', '441900', '3');
INSERT INTO `oma_area` VALUES ('5819', '广州市', '440100', '440000', '2');
INSERT INTO `oma_area` VALUES ('5820', '白云区', '440111', '440100', '3');
INSERT INTO `oma_area` VALUES ('5821', '从化区', '440117', '440100', '3');
INSERT INTO `oma_area` VALUES ('5822', '番禺区', '440113', '440100', '3');
INSERT INTO `oma_area` VALUES ('5823', '海珠区', '440105', '440100', '3');
INSERT INTO `oma_area` VALUES ('5824', '花都区', '440114', '440100', '3');
INSERT INTO `oma_area` VALUES ('5825', '黄埔区', '440112', '440100', '3');
INSERT INTO `oma_area` VALUES ('5826', '荔湾区', '440103', '440100', '3');
INSERT INTO `oma_area` VALUES ('5827', '南沙区', '440115', '440100', '3');
INSERT INTO `oma_area` VALUES ('5828', '天河区', '440106', '440100', '3');
INSERT INTO `oma_area` VALUES ('5829', '越秀区', '440104', '440100', '3');
INSERT INTO `oma_area` VALUES ('5830', '增城区', '440118', '440100', '3');
INSERT INTO `oma_area` VALUES ('5831', '佛山市', '440600', '440000', '2');
INSERT INTO `oma_area` VALUES ('5832', '禅城区', '440604', '440600', '3');
INSERT INTO `oma_area` VALUES ('5833', '高明区', '440608', '440600', '3');
INSERT INTO `oma_area` VALUES ('5834', '南海区', '440605', '440600', '3');
INSERT INTO `oma_area` VALUES ('5835', '三水区', '440607', '440600', '3');
INSERT INTO `oma_area` VALUES ('5836', '顺德区', '440606', '440600', '3');
INSERT INTO `oma_area` VALUES ('5837', '河源市', '441600', '440000', '2');
INSERT INTO `oma_area` VALUES ('5838', '东源县', '441625', '441600', '3');
INSERT INTO `oma_area` VALUES ('5839', '和平县', '441624', '441600', '3');
INSERT INTO `oma_area` VALUES ('5840', '连平县', '441623', '441600', '3');
INSERT INTO `oma_area` VALUES ('5841', '龙川县', '441622', '441600', '3');
INSERT INTO `oma_area` VALUES ('5842', '源城区', '441602', '441600', '3');
INSERT INTO `oma_area` VALUES ('5843', '紫金县', '441621', '441600', '3');
INSERT INTO `oma_area` VALUES ('5844', '惠州市', '441300', '440000', '2');
INSERT INTO `oma_area` VALUES ('5845', '博罗县', '441322', '441300', '3');
INSERT INTO `oma_area` VALUES ('5846', '惠东县', '441323', '441300', '3');
INSERT INTO `oma_area` VALUES ('5847', '惠阳区', '441303', '441300', '3');
INSERT INTO `oma_area` VALUES ('5848', '惠城区', '441302', '441300', '3');
INSERT INTO `oma_area` VALUES ('5849', '龙门县', '441324', '441300', '3');
INSERT INTO `oma_area` VALUES ('5850', '揭阳市', '445200', '440000', '2');
INSERT INTO `oma_area` VALUES ('5851', '惠来县', '445224', '445200', '3');
INSERT INTO `oma_area` VALUES ('5852', '揭西县', '445222', '445200', '3');
INSERT INTO `oma_area` VALUES ('5853', '揭东区', '445203', '445200', '3');
INSERT INTO `oma_area` VALUES ('5854', '普宁市', '445281', '445200', '3');
INSERT INTO `oma_area` VALUES ('5855', '榕城区', '445202', '445200', '3');
INSERT INTO `oma_area` VALUES ('5856', '江门市', '440700', '440000', '2');
INSERT INTO `oma_area` VALUES ('5857', '恩平市', '440785', '440700', '3');
INSERT INTO `oma_area` VALUES ('5858', '鹤山市', '440784', '440700', '3');
INSERT INTO `oma_area` VALUES ('5859', '江海区', '440704', '440700', '3');
INSERT INTO `oma_area` VALUES ('5860', '开平市', '440783', '440700', '3');
INSERT INTO `oma_area` VALUES ('5861', '蓬江区', '440703', '440700', '3');
INSERT INTO `oma_area` VALUES ('5862', '台山市', '440781', '440700', '3');
INSERT INTO `oma_area` VALUES ('5863', '新会区', '440705', '440700', '3');
INSERT INTO `oma_area` VALUES ('5864', '茂名市', '440900', '440000', '2');
INSERT INTO `oma_area` VALUES ('5865', '电白区', '440904', '440900', '3');
INSERT INTO `oma_area` VALUES ('5866', '高州市', '440981', '440900', '3');
INSERT INTO `oma_area` VALUES ('5867', '化州市', '440982', '440900', '3');
INSERT INTO `oma_area` VALUES ('5868', '茂南区', '440902', '440900', '3');
INSERT INTO `oma_area` VALUES ('5869', '信宜市', '440983', '440900', '3');
INSERT INTO `oma_area` VALUES ('5870', '梅州市', '441400', '440000', '2');
INSERT INTO `oma_area` VALUES ('5871', '大埔县', '441422', '441400', '3');
INSERT INTO `oma_area` VALUES ('5872', '丰顺县', '441423', '441400', '3');
INSERT INTO `oma_area` VALUES ('5873', '蕉岭县', '441427', '441400', '3');
INSERT INTO `oma_area` VALUES ('5874', '梅江区', '441402', '441400', '3');
INSERT INTO `oma_area` VALUES ('5875', '梅县区', '441403', '441400', '3');
INSERT INTO `oma_area` VALUES ('5876', '平远县', '441426', '441400', '3');
INSERT INTO `oma_area` VALUES ('5877', '五华县', '441424', '441400', '3');
INSERT INTO `oma_area` VALUES ('5878', '兴宁市', '441481', '441400', '3');
INSERT INTO `oma_area` VALUES ('5879', '汕尾市', '441500', '440000', '2');
INSERT INTO `oma_area` VALUES ('5880', '城区', '441502', '441500', '3');
INSERT INTO `oma_area` VALUES ('5881', '海丰县', '441521', '441500', '3');
INSERT INTO `oma_area` VALUES ('5882', '陆河县', '441523', '441500', '3');
INSERT INTO `oma_area` VALUES ('5883', '陆丰市', '441581', '441500', '3');
INSERT INTO `oma_area` VALUES ('5884', '汕头市', '440500', '440000', '2');
INSERT INTO `oma_area` VALUES ('5885', '潮南区', '440514', '440500', '3');
INSERT INTO `oma_area` VALUES ('5886', '潮阳区', '440513', '440500', '3');
INSERT INTO `oma_area` VALUES ('5887', '澄海区', '440515', '440500', '3');
INSERT INTO `oma_area` VALUES ('5888', '濠江区', '440512', '440500', '3');
INSERT INTO `oma_area` VALUES ('5889', '金平区', '440511', '440500', '3');
INSERT INTO `oma_area` VALUES ('5890', '龙湖区', '440507', '440500', '3');
INSERT INTO `oma_area` VALUES ('5891', '南澳县', '440523', '440500', '3');
INSERT INTO `oma_area` VALUES ('5892', '韶关市', '440200', '440000', '2');
INSERT INTO `oma_area` VALUES ('5893', '乐昌市', '440281', '440200', '3');
INSERT INTO `oma_area` VALUES ('5894', '南雄市', '440282', '440200', '3');
INSERT INTO `oma_area` VALUES ('5895', '曲江区', '440205', '440200', '3');
INSERT INTO `oma_area` VALUES ('5896', '仁化县', '440224', '440200', '3');
INSERT INTO `oma_area` VALUES ('5897', '乳源瑶族自治县', '440232', '440200', '3');
INSERT INTO `oma_area` VALUES ('5898', '始兴县', '440222', '440200', '3');
INSERT INTO `oma_area` VALUES ('5899', '翁源县', '440229', '440200', '3');
INSERT INTO `oma_area` VALUES ('5900', '武江区', '440203', '440200', '3');
INSERT INTO `oma_area` VALUES ('5901', '新丰县', '440233', '440200', '3');
INSERT INTO `oma_area` VALUES ('5902', '浈江区', '440204', '440200', '3');
INSERT INTO `oma_area` VALUES ('5903', '清远市', '441800', '440000', '2');
INSERT INTO `oma_area` VALUES ('5904', '佛冈县', '441821', '441800', '3');
INSERT INTO `oma_area` VALUES ('5905', '连南瑶族自治县', '441826', '441800', '3');
INSERT INTO `oma_area` VALUES ('5906', '连山壮族瑶族自治县', '441825', '441800', '3');
INSERT INTO `oma_area` VALUES ('5907', '连州市', '441882', '441800', '3');
INSERT INTO `oma_area` VALUES ('5908', '清城区', '441802', '441800', '3');
INSERT INTO `oma_area` VALUES ('5909', '清新区', '441803', '441800', '3');
INSERT INTO `oma_area` VALUES ('5910', '阳山县', '441823', '441800', '3');
INSERT INTO `oma_area` VALUES ('5911', '英德市', '441881', '441800', '3');
INSERT INTO `oma_area` VALUES ('5912', '深圳市', '440300', '440000', '2');
INSERT INTO `oma_area` VALUES ('5913', '宝安区', '440306', '440300', '3');
INSERT INTO `oma_area` VALUES ('5914', '福田区', '440304', '440300', '3');
INSERT INTO `oma_area` VALUES ('5915', '龙华区', '440309', '440300', '3');
INSERT INTO `oma_area` VALUES ('5916', '龙岗区', '440307', '440300', '3');
INSERT INTO `oma_area` VALUES ('5917', '罗湖区', '440303', '440300', '3');
INSERT INTO `oma_area` VALUES ('5918', '南山区', '440305', '440300', '3');
INSERT INTO `oma_area` VALUES ('5919', '坪山区', '440310', '440300', '3');
INSERT INTO `oma_area` VALUES ('5920', '盐田区', '440308', '440300', '3');
INSERT INTO `oma_area` VALUES ('5921', '阳江市', '441700', '440000', '2');
INSERT INTO `oma_area` VALUES ('5922', '江城区', '441702', '441700', '3');
INSERT INTO `oma_area` VALUES ('5923', '阳西县', '441721', '441700', '3');
INSERT INTO `oma_area` VALUES ('5924', '阳东区', '441704', '441700', '3');
INSERT INTO `oma_area` VALUES ('5925', '阳春市', '441781', '441700', '3');
INSERT INTO `oma_area` VALUES ('5926', '云浮市', '445300', '440000', '2');
INSERT INTO `oma_area` VALUES ('5927', '罗定市', '445381', '445300', '3');
INSERT INTO `oma_area` VALUES ('5928', '新兴县', '445321', '445300', '3');
INSERT INTO `oma_area` VALUES ('5929', '郁南县', '445322', '445300', '3');
INSERT INTO `oma_area` VALUES ('5930', '云安区', '445303', '445300', '3');
INSERT INTO `oma_area` VALUES ('5931', '云城区', '445302', '445300', '3');
INSERT INTO `oma_area` VALUES ('5932', '湛江市', '440800', '440000', '2');
INSERT INTO `oma_area` VALUES ('5933', '赤坎区', '440802', '440800', '3');
INSERT INTO `oma_area` VALUES ('5934', '雷州市', '440882', '440800', '3');
INSERT INTO `oma_area` VALUES ('5935', '廉江市', '440881', '440800', '3');
INSERT INTO `oma_area` VALUES ('5936', '麻章区', '440811', '440800', '3');
INSERT INTO `oma_area` VALUES ('5937', '坡头区', '440804', '440800', '3');
INSERT INTO `oma_area` VALUES ('5938', '遂溪县', '440823', '440800', '3');
INSERT INTO `oma_area` VALUES ('5939', '吴川市', '440883', '440800', '3');
INSERT INTO `oma_area` VALUES ('5940', '霞山区', '440803', '440800', '3');
INSERT INTO `oma_area` VALUES ('5941', '徐闻县', '440825', '440800', '3');
INSERT INTO `oma_area` VALUES ('5942', '珠海市', '440400', '440000', '2');
INSERT INTO `oma_area` VALUES ('5943', '斗门区', '440403', '440400', '3');
INSERT INTO `oma_area` VALUES ('5944', '金湾区', '440404', '440400', '3');
INSERT INTO `oma_area` VALUES ('5945', '香洲区', '440402', '440400', '3');
INSERT INTO `oma_area` VALUES ('5946', '肇庆市', '441200', '440000', '2');
INSERT INTO `oma_area` VALUES ('5947', '德庆县', '441226', '441200', '3');
INSERT INTO `oma_area` VALUES ('5948', '鼎湖区', '441203', '441200', '3');
INSERT INTO `oma_area` VALUES ('5949', '封开县', '441225', '441200', '3');
INSERT INTO `oma_area` VALUES ('5950', '端州区', '441202', '441200', '3');
INSERT INTO `oma_area` VALUES ('5951', '高要区', '441204', '441200', '3');
INSERT INTO `oma_area` VALUES ('5952', '广宁县', '441223', '441200', '3');
INSERT INTO `oma_area` VALUES ('5953', '怀集县', '441224', '441200', '3');
INSERT INTO `oma_area` VALUES ('5954', '四会市', '441284', '441200', '3');
INSERT INTO `oma_area` VALUES ('5955', '福建省', '350000', '', '1');
INSERT INTO `oma_area` VALUES ('5956', '福州市', '350100', '350000', '2');
INSERT INTO `oma_area` VALUES ('5957', '仓山区', '350104', '350100', '3');
INSERT INTO `oma_area` VALUES ('5958', '福清市', '350181', '350100', '3');
INSERT INTO `oma_area` VALUES ('5959', '鼓楼区', '350102', '350100', '3');
INSERT INTO `oma_area` VALUES ('5960', '晋安区', '350111', '350100', '3');
INSERT INTO `oma_area` VALUES ('5961', '连江县', '350122', '350100', '3');
INSERT INTO `oma_area` VALUES ('5962', '马尾区', '350105', '350100', '3');
INSERT INTO `oma_area` VALUES ('5963', '罗源县', '350123', '350100', '3');
INSERT INTO `oma_area` VALUES ('5964', '闽侯县', '350121', '350100', '3');
INSERT INTO `oma_area` VALUES ('5965', '闽清县', '350124', '350100', '3');
INSERT INTO `oma_area` VALUES ('5966', '平潭县', '350128', '350100', '3');
INSERT INTO `oma_area` VALUES ('5967', '台江区', '350103', '350100', '3');
INSERT INTO `oma_area` VALUES ('5968', '永泰县', '350125', '350100', '3');
INSERT INTO `oma_area` VALUES ('5969', '长乐市', '350182', '350100', '3');
INSERT INTO `oma_area` VALUES ('5970', '龙岩市', '350800', '350000', '2');
INSERT INTO `oma_area` VALUES ('5971', '连城县', '350825', '350800', '3');
INSERT INTO `oma_area` VALUES ('5972', '上杭县', '350823', '350800', '3');
INSERT INTO `oma_area` VALUES ('5973', '武平县', '350824', '350800', '3');
INSERT INTO `oma_area` VALUES ('5974', '新罗区', '350802', '350800', '3');
INSERT INTO `oma_area` VALUES ('5975', '永定区', '350803', '350800', '3');
INSERT INTO `oma_area` VALUES ('5976', '漳平市', '350881', '350800', '3');
INSERT INTO `oma_area` VALUES ('5977', '长汀县', '350821', '350800', '3');
INSERT INTO `oma_area` VALUES ('5978', '南平市', '350700', '350000', '2');
INSERT INTO `oma_area` VALUES ('5979', '光泽县', '350723', '350700', '3');
INSERT INTO `oma_area` VALUES ('5980', '建瓯市', '350783', '350700', '3');
INSERT INTO `oma_area` VALUES ('5981', '建阳区', '350703', '350700', '3');
INSERT INTO `oma_area` VALUES ('5982', '浦城县', '350722', '350700', '3');
INSERT INTO `oma_area` VALUES ('5983', '邵武市', '350781', '350700', '3');
INSERT INTO `oma_area` VALUES ('5984', '顺昌县', '350721', '350700', '3');
INSERT INTO `oma_area` VALUES ('5985', '松溪县', '350724', '350700', '3');
INSERT INTO `oma_area` VALUES ('5986', '武夷山市', '350782', '350700', '3');
INSERT INTO `oma_area` VALUES ('5987', '延平区', '350702', '350700', '3');
INSERT INTO `oma_area` VALUES ('5988', '政和县', '350725', '350700', '3');
INSERT INTO `oma_area` VALUES ('5989', '宁德市', '350900', '350000', '2');
INSERT INTO `oma_area` VALUES ('5990', '福鼎市', '350982', '350900', '3');
INSERT INTO `oma_area` VALUES ('5991', '福安市', '350981', '350900', '3');
INSERT INTO `oma_area` VALUES ('5992', '古田县', '350922', '350900', '3');
INSERT INTO `oma_area` VALUES ('5993', '蕉城区', '350902', '350900', '3');
INSERT INTO `oma_area` VALUES ('5994', '屏南县', '350923', '350900', '3');
INSERT INTO `oma_area` VALUES ('5995', '寿宁县', '350924', '350900', '3');
INSERT INTO `oma_area` VALUES ('5996', '霞浦县', '350921', '350900', '3');
INSERT INTO `oma_area` VALUES ('5997', '柘荣县', '350926', '350900', '3');
INSERT INTO `oma_area` VALUES ('5998', '周宁县', '350925', '350900', '3');
INSERT INTO `oma_area` VALUES ('5999', '莆田市', '350300', '350000', '2');
INSERT INTO `oma_area` VALUES ('6000', '城厢区', '350302', '350300', '3');
INSERT INTO `oma_area` VALUES ('6001', '涵江区', '350303', '350300', '3');
INSERT INTO `oma_area` VALUES ('6002', '荔城区', '350304', '350300', '3');
INSERT INTO `oma_area` VALUES ('6003', '仙游县', '350322', '350300', '3');
INSERT INTO `oma_area` VALUES ('6004', '秀屿区', '350305', '350300', '3');
INSERT INTO `oma_area` VALUES ('6005', '厦门市', '350200', '350000', '2');
INSERT INTO `oma_area` VALUES ('6006', '海沧区', '350205', '350200', '3');
INSERT INTO `oma_area` VALUES ('6007', '湖里区', '350206', '350200', '3');
INSERT INTO `oma_area` VALUES ('6008', '集美区', '350211', '350200', '3');
INSERT INTO `oma_area` VALUES ('6009', '思明区', '350203', '350200', '3');
INSERT INTO `oma_area` VALUES ('6010', '同安区', '350212', '350200', '3');
INSERT INTO `oma_area` VALUES ('6011', '翔安区', '350213', '350200', '3');
INSERT INTO `oma_area` VALUES ('6012', '三明市', '350400', '350000', '2');
INSERT INTO `oma_area` VALUES ('6013', '大田县', '350425', '350400', '3');
INSERT INTO `oma_area` VALUES ('6014', '将乐县', '350428', '350400', '3');
INSERT INTO `oma_area` VALUES ('6015', '建宁县', '350430', '350400', '3');
INSERT INTO `oma_area` VALUES ('6016', '梅列区', '350402', '350400', '3');
INSERT INTO `oma_area` VALUES ('6017', '明溪县', '350421', '350400', '3');
INSERT INTO `oma_area` VALUES ('6018', '宁化县', '350424', '350400', '3');
INSERT INTO `oma_area` VALUES ('6019', '清流县', '350423', '350400', '3');
INSERT INTO `oma_area` VALUES ('6020', '三元区', '350403', '350400', '3');
INSERT INTO `oma_area` VALUES ('6021', '沙县', '350427', '350400', '3');
INSERT INTO `oma_area` VALUES ('6022', '泰宁县', '350429', '350400', '3');
INSERT INTO `oma_area` VALUES ('6023', '永安市', '350481', '350400', '3');
INSERT INTO `oma_area` VALUES ('6024', '尤溪县', '350426', '350400', '3');
INSERT INTO `oma_area` VALUES ('6025', '泉州市', '350500', '350000', '2');
INSERT INTO `oma_area` VALUES ('6026', '安溪县', '350524', '350500', '3');
INSERT INTO `oma_area` VALUES ('6027', '德化县', '350526', '350500', '3');
INSERT INTO `oma_area` VALUES ('6028', '丰泽区', '350503', '350500', '3');
INSERT INTO `oma_area` VALUES ('6029', '惠安县', '350521', '350500', '3');
INSERT INTO `oma_area` VALUES ('6030', '金门县', '350527', '350500', '3');
INSERT INTO `oma_area` VALUES ('6031', '晋江市', '350582', '350500', '3');
INSERT INTO `oma_area` VALUES ('6032', '鲤城区', '350502', '350500', '3');
INSERT INTO `oma_area` VALUES ('6033', '洛江区', '350504', '350500', '3');
INSERT INTO `oma_area` VALUES ('6034', '南安市', '350583', '350500', '3');
INSERT INTO `oma_area` VALUES ('6035', '泉港区', '350505', '350500', '3');
INSERT INTO `oma_area` VALUES ('6036', '石狮市', '350581', '350500', '3');
INSERT INTO `oma_area` VALUES ('6037', '永春县', '350525', '350500', '3');
INSERT INTO `oma_area` VALUES ('6038', '漳州市', '350600', '350000', '2');
INSERT INTO `oma_area` VALUES ('6039', '东山县', '350626', '350600', '3');
INSERT INTO `oma_area` VALUES ('6040', '华安县', '350629', '350600', '3');
INSERT INTO `oma_area` VALUES ('6041', '龙文区', '350603', '350600', '3');
INSERT INTO `oma_area` VALUES ('6042', '龙海市', '350681', '350600', '3');
INSERT INTO `oma_area` VALUES ('6043', '南靖县', '350627', '350600', '3');
INSERT INTO `oma_area` VALUES ('6044', '平和县', '350628', '350600', '3');
INSERT INTO `oma_area` VALUES ('6045', '芗城区', '350602', '350600', '3');
INSERT INTO `oma_area` VALUES ('6046', '云霄县', '350622', '350600', '3');
INSERT INTO `oma_area` VALUES ('6047', '诏安县', '350624', '350600', '3');
INSERT INTO `oma_area` VALUES ('6048', '漳浦县', '350623', '350600', '3');
INSERT INTO `oma_area` VALUES ('6049', '长泰县', '350625', '350600', '3');
INSERT INTO `oma_area` VALUES ('6050', '海南省', '460000', '', '1');
INSERT INTO `oma_area` VALUES ('6051', '儋州市', '460400', '460000', '2');
INSERT INTO `oma_area` VALUES ('6052', '海头镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6053', '白马井镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6054', '新英湾街道', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6055', '那大街道', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6056', '木棠镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6057', '新州镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6058', '中和镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6059', '峨蔓镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6060', '光村镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6061', '排浦镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6062', '王五镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6063', '大成镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6064', '和庆镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6065', '兰洋镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6066', '雅星镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6067', '三都镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6068', '东成镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6069', '那大镇', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6070', '兰训乡', '460400', '460400', '3');
INSERT INTO `oma_area` VALUES ('6071', '海口市', '460100', '460000', '2');
INSERT INTO `oma_area` VALUES ('6072', '龙华区', '460106', '460100', '3');
INSERT INTO `oma_area` VALUES ('6073', '美兰区', '460108', '460100', '3');
INSERT INTO `oma_area` VALUES ('6074', '琼山区', '460107', '460100', '3');
INSERT INTO `oma_area` VALUES ('6075', '秀英区', '460105', '460100', '3');
INSERT INTO `oma_area` VALUES ('6076', '三亚市', '460200', '460000', '2');
INSERT INTO `oma_area` VALUES ('6077', '海棠区', '460202', '460200', '3');
INSERT INTO `oma_area` VALUES ('6078', '吉阳区', '460203', '460200', '3');
INSERT INTO `oma_area` VALUES ('6079', '天涯区', '460204', '460200', '3');
INSERT INTO `oma_area` VALUES ('6080', '崖州区', '460205', '460200', '3');
INSERT INTO `oma_area` VALUES ('6081', '三沙市', '460300', '460000', '2');
INSERT INTO `oma_area` VALUES ('6082', '南沙群岛', '460322', '460300', '3');
INSERT INTO `oma_area` VALUES ('6083', '西沙群岛', '460321', '460300', '3');
INSERT INTO `oma_area` VALUES ('6084', '中沙群岛的岛礁及其海域', '460323', '460300', '3');
INSERT INTO `oma_area` VALUES ('6085', '白沙黎族自治县', '469025', '460000', '2');
INSERT INTO `oma_area` VALUES ('6086', '细水乡', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6087', '阜龙乡', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6088', '邦溪镇', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6089', '南开乡', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6090', '七坊镇', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6091', '金波乡', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6092', '牙叉镇', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6093', '青松乡', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6094', '打安镇', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6095', '荣邦乡', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6096', '元门乡', '469025', '469025', '3');
INSERT INTO `oma_area` VALUES ('6097', '保亭黎族苗族自治县', '469029', '460000', '2');
INSERT INTO `oma_area` VALUES ('6098', '毛岸镇', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6099', '三道镇', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6100', '保城镇', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6101', '六弓乡', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6102', '什玲镇', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6103', '响水镇', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6104', '毛感乡', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6105', '新政镇', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6106', '南林乡', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6107', '加茂镇', '469029', '469029', '3');
INSERT INTO `oma_area` VALUES ('6108', '昌江黎族自治县', '469026', '460000', '2');
INSERT INTO `oma_area` VALUES ('6109', '石碌镇', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6110', '乌烈镇', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6111', '七叉镇', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6112', '海尾镇', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6113', '叉河镇', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6114', '十月田镇', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6115', '昌化镇', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6116', '王下乡', '469026', '469026', '3');
INSERT INTO `oma_area` VALUES ('6117', '澄迈县', '469023', '460000', '2');
INSERT INTO `oma_area` VALUES ('6118', '加乐镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6119', '福山镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6120', '瑞溪镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6121', '文儒镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6122', '仁兴镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6123', '永发镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6124', '大丰镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6125', '桥头镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6126', '中兴镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6127', '老城镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6128', '金江镇', '469023', '469023', '3');
INSERT INTO `oma_area` VALUES ('6129', '定安县', '469021', '460000', '2');
INSERT INTO `oma_area` VALUES ('6130', '龙河镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6131', '翰林镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6132', '黄竹镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6133', '龙门镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6134', '定城镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6135', '富文镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6136', '龙州乡', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6137', '龙湖镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6138', '居丁镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6139', '雷鸣镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6140', '岭口镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6141', '新竹镇', '469021', '469021', '3');
INSERT INTO `oma_area` VALUES ('6142', '东方市', '469007', '460000', '2');
INSERT INTO `oma_area` VALUES ('6143', '新龙镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6144', '江边乡', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6145', '四更镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6146', '板桥镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6147', '感城镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6148', '大田镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6149', '天安乡', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6150', '罗带乡', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6151', '三家镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6152', '东河镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6153', '八所镇', '469007', '469007', '3');
INSERT INTO `oma_area` VALUES ('6154', '乐东黎族自治县', '469027', '460000', '2');
INSERT INTO `oma_area` VALUES ('6155', '大安镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6156', '莺歌海镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6157', '黄流镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6158', '万冲镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6159', '志仲镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6160', '九所镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6161', '利国镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6162', '佛罗镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6163', '抱由镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6164', '尖峰镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6165', '冲坡镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6166', '千家镇', '469027', '469027', '3');
INSERT INTO `oma_area` VALUES ('6167', '临高县', '469024', '460000', '2');
INSERT INTO `oma_area` VALUES ('6168', '东英镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6169', '皇桐镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6170', '南宝镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6171', '和舍镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6172', '多文镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6173', '波莲镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6174', '临城镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6175', '博厚镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6176', '新盈镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6177', '调楼镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6178', '加来镇', '469024', '469024', '3');
INSERT INTO `oma_area` VALUES ('6179', '陵水黎族自治县', '469028', '460000', '2');
INSERT INTO `oma_area` VALUES ('6180', '光坡镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6181', '大里乡', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6182', '三才镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6183', '英州镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6184', '本号镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6185', '群英乡', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6186', '隆广镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6187', '提蒙乡', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6188', '椰林镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6189', '新村镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6190', '黎安镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6191', '文罗镇', '469028', '469028', '3');
INSERT INTO `oma_area` VALUES ('6192', '琼海市', '469002', '460000', '2');
INSERT INTO `oma_area` VALUES ('6193', '博鳌镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6194', '石壁镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6195', '会山镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6196', '大路镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6197', '万泉镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6198', '潭门镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6199', '加积街道', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6200', '中原镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6201', '阳江镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6202', '朝阳乡', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6203', '长坡镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6204', '塔洋镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6205', '嘉积镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6206', '龙江镇', '469002', '469002', '3');
INSERT INTO `oma_area` VALUES ('6207', '琼中黎族苗族自治县', '469030', '460000', '2');
INSERT INTO `oma_area` VALUES ('6208', '中平镇', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6209', '和平镇', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6210', '什运乡', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6211', '营根镇', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6212', '红毛镇', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6213', '吊罗山乡', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6214', '上安乡', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6215', '湾岭镇', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6216', '黎母山镇', '469030', '469030', '3');
INSERT INTO `oma_area` VALUES ('6217', '屯昌县', '469022', '460000', '2');
INSERT INTO `oma_area` VALUES ('6218', '南吕镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6219', '西昌镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6220', '新兴镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6221', '乌坡镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6222', '枫木镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6223', '坡心镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6224', '屯城镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6225', '南坤镇', '469022', '469022', '3');
INSERT INTO `oma_area` VALUES ('6226', '万宁市', '469006', '460000', '2');
INSERT INTO `oma_area` VALUES ('6227', '龙滚镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6228', '礼纪镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6229', '后安镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6230', '大茂镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6231', '北大镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6232', '万城镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6233', '南桥镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6234', '长丰镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6235', '东澳镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6236', '三更罗镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6237', '和乐镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6238', '山根镇', '469006', '469006', '3');
INSERT INTO `oma_area` VALUES ('6239', '文昌市', '469005', '460000', '2');
INSERT INTO `oma_area` VALUES ('6240', '重兴镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6241', '文城镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6242', '潭牛镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6243', '会文镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6244', '冯坡镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6245', '东路镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6246', '文教镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6247', '锦山镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6248', '蓬莱镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6249', '东阁镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6250', '昌洒镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6251', '铺前镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6252', '翁田镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6253', '东郊镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6254', '抱罗镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6255', '公坡镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6256', '龙楼镇', '469005', '469005', '3');
INSERT INTO `oma_area` VALUES ('6257', '五指山市', '469001', '460000', '2');
INSERT INTO `oma_area` VALUES ('6258', '番阳镇', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6259', '冲山镇', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6260', '毛阳镇', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6261', '水满乡', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6262', '通什镇', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6263', '南圣镇', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6264', '毛道乡', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6265', '畅好乡', '469001', '469001', '3');
INSERT INTO `oma_area` VALUES ('6266', '山西省', '140000', '', '1');
INSERT INTO `oma_area` VALUES ('6267', '大同市', '140200', '140000', '2');
INSERT INTO `oma_area` VALUES ('6268', '城区', '140202', '140200', '3');
INSERT INTO `oma_area` VALUES ('6269', '大同县', '140227', '140200', '3');
INSERT INTO `oma_area` VALUES ('6270', '广灵县', '140223', '140200', '3');
INSERT INTO `oma_area` VALUES ('6271', '浑源县', '140225', '140200', '3');
INSERT INTO `oma_area` VALUES ('6272', '矿区', '140203', '140200', '3');
INSERT INTO `oma_area` VALUES ('6273', '灵丘县', '140224', '140200', '3');
INSERT INTO `oma_area` VALUES ('6274', '南郊区', '140211', '140200', '3');
INSERT INTO `oma_area` VALUES ('6275', '天镇县', '140222', '140200', '3');
INSERT INTO `oma_area` VALUES ('6276', '新荣区', '140212', '140200', '3');
INSERT INTO `oma_area` VALUES ('6277', '阳高县', '140221', '140200', '3');
INSERT INTO `oma_area` VALUES ('6278', '左云县', '140226', '140200', '3');
INSERT INTO `oma_area` VALUES ('6279', '晋城市', '140500', '140000', '2');
INSERT INTO `oma_area` VALUES ('6280', '城区', '140502', '140500', '3');
INSERT INTO `oma_area` VALUES ('6281', '高平市', '140581', '140500', '3');
INSERT INTO `oma_area` VALUES ('6282', '陵川县', '140524', '140500', '3');
INSERT INTO `oma_area` VALUES ('6283', '沁水县', '140521', '140500', '3');
INSERT INTO `oma_area` VALUES ('6284', '阳城县', '140522', '140500', '3');
INSERT INTO `oma_area` VALUES ('6285', '泽州县', '140525', '140500', '3');
INSERT INTO `oma_area` VALUES ('6286', '晋中市', '140700', '140000', '2');
INSERT INTO `oma_area` VALUES ('6287', '和顺县', '140723', '140700', '3');
INSERT INTO `oma_area` VALUES ('6288', '介休市', '140781', '140700', '3');
INSERT INTO `oma_area` VALUES ('6289', '灵石县', '140729', '140700', '3');
INSERT INTO `oma_area` VALUES ('6290', '平遥县', '140728', '140700', '3');
INSERT INTO `oma_area` VALUES ('6291', '祁县', '140727', '140700', '3');
INSERT INTO `oma_area` VALUES ('6292', '寿阳县', '140725', '140700', '3');
INSERT INTO `oma_area` VALUES ('6293', '太谷县', '140726', '140700', '3');
INSERT INTO `oma_area` VALUES ('6294', '昔阳县', '140724', '140700', '3');
INSERT INTO `oma_area` VALUES ('6295', '榆次区', '140702', '140700', '3');
INSERT INTO `oma_area` VALUES ('6296', '榆社县', '140721', '140700', '3');
INSERT INTO `oma_area` VALUES ('6297', '左权县', '140722', '140700', '3');
INSERT INTO `oma_area` VALUES ('6298', '吕梁市', '141100', '140000', '2');
INSERT INTO `oma_area` VALUES ('6299', '汾阳市', '141182', '141100', '3');
INSERT INTO `oma_area` VALUES ('6300', '方山县', '141128', '141100', '3');
INSERT INTO `oma_area` VALUES ('6301', '交城县', '141122', '141100', '3');
INSERT INTO `oma_area` VALUES ('6302', '交口县', '141130', '141100', '3');
INSERT INTO `oma_area` VALUES ('6303', '岚县', '141127', '141100', '3');
INSERT INTO `oma_area` VALUES ('6304', '离石区', '141102', '141100', '3');
INSERT INTO `oma_area` VALUES ('6305', '临县', '141124', '141100', '3');
INSERT INTO `oma_area` VALUES ('6306', '柳林县', '141125', '141100', '3');
INSERT INTO `oma_area` VALUES ('6307', '石楼县', '141126', '141100', '3');
INSERT INTO `oma_area` VALUES ('6308', '文水县', '141121', '141100', '3');
INSERT INTO `oma_area` VALUES ('6309', '孝义市', '141181', '141100', '3');
INSERT INTO `oma_area` VALUES ('6310', '兴县', '141123', '141100', '3');
INSERT INTO `oma_area` VALUES ('6311', '中阳县', '141129', '141100', '3');
INSERT INTO `oma_area` VALUES ('6312', '临汾市', '141000', '140000', '2');
INSERT INTO `oma_area` VALUES ('6313', '安泽县', '141026', '141000', '3');
INSERT INTO `oma_area` VALUES ('6314', '大宁县', '141030', '141000', '3');
INSERT INTO `oma_area` VALUES ('6315', '汾西县', '141034', '141000', '3');
INSERT INTO `oma_area` VALUES ('6316', '浮山县', '141027', '141000', '3');
INSERT INTO `oma_area` VALUES ('6317', '古县', '141025', '141000', '3');
INSERT INTO `oma_area` VALUES ('6318', '洪洞县', '141024', '141000', '3');
INSERT INTO `oma_area` VALUES ('6319', '侯马市', '141081', '141000', '3');
INSERT INTO `oma_area` VALUES ('6320', '霍州市', '141082', '141000', '3');
INSERT INTO `oma_area` VALUES ('6321', '吉县', '141028', '141000', '3');
INSERT INTO `oma_area` VALUES ('6322', '蒲县', '141033', '141000', '3');
INSERT INTO `oma_area` VALUES ('6323', '曲沃县', '141021', '141000', '3');
INSERT INTO `oma_area` VALUES ('6324', '隰县', '141031', '141000', '3');
INSERT INTO `oma_area` VALUES ('6325', '襄汾县', '141023', '141000', '3');
INSERT INTO `oma_area` VALUES ('6326', '乡宁县', '141029', '141000', '3');
INSERT INTO `oma_area` VALUES ('6327', '尧都区', '141002', '141000', '3');
INSERT INTO `oma_area` VALUES ('6328', '翼城县', '141022', '141000', '3');
INSERT INTO `oma_area` VALUES ('6329', '永和县', '141032', '141000', '3');
INSERT INTO `oma_area` VALUES ('6330', '朔州市', '140600', '140000', '2');
INSERT INTO `oma_area` VALUES ('6331', '怀仁县', '140624', '140600', '3');
INSERT INTO `oma_area` VALUES ('6332', '平鲁区', '140603', '140600', '3');
INSERT INTO `oma_area` VALUES ('6333', '山阴县', '140621', '140600', '3');
INSERT INTO `oma_area` VALUES ('6334', '朔城区', '140602', '140600', '3');
INSERT INTO `oma_area` VALUES ('6335', '应县', '140622', '140600', '3');
INSERT INTO `oma_area` VALUES ('6336', '右玉县', '140623', '140600', '3');
INSERT INTO `oma_area` VALUES ('6337', '太原市', '140100', '140000', '2');
INSERT INTO `oma_area` VALUES ('6338', '古交市', '140181', '140100', '3');
INSERT INTO `oma_area` VALUES ('6339', '尖草坪区', '140108', '140100', '3');
INSERT INTO `oma_area` VALUES ('6340', '晋源区', '140110', '140100', '3');
INSERT INTO `oma_area` VALUES ('6341', '娄烦县', '140123', '140100', '3');
INSERT INTO `oma_area` VALUES ('6342', '清徐县', '140121', '140100', '3');
INSERT INTO `oma_area` VALUES ('6343', '万柏林区', '140109', '140100', '3');
INSERT INTO `oma_area` VALUES ('6344', '小店区', '140105', '140100', '3');
INSERT INTO `oma_area` VALUES ('6345', '杏花岭区', '140107', '140100', '3');
INSERT INTO `oma_area` VALUES ('6346', '阳曲县', '140122', '140100', '3');
INSERT INTO `oma_area` VALUES ('6347', '迎泽区', '140106', '140100', '3');
INSERT INTO `oma_area` VALUES ('6348', '忻州市', '140900', '140000', '2');
INSERT INTO `oma_area` VALUES ('6349', '保德县', '140931', '140900', '3');
INSERT INTO `oma_area` VALUES ('6350', '代县', '140923', '140900', '3');
INSERT INTO `oma_area` VALUES ('6351', '定襄县', '140921', '140900', '3');
INSERT INTO `oma_area` VALUES ('6352', '繁峙县', '140924', '140900', '3');
INSERT INTO `oma_area` VALUES ('6353', '河曲县', '140930', '140900', '3');
INSERT INTO `oma_area` VALUES ('6354', '静乐县', '140926', '140900', '3');
INSERT INTO `oma_area` VALUES ('6355', '岢岚县', '140929', '140900', '3');
INSERT INTO `oma_area` VALUES ('6356', '宁武县', '140925', '140900', '3');
INSERT INTO `oma_area` VALUES ('6357', '偏关县', '140932', '140900', '3');
INSERT INTO `oma_area` VALUES ('6358', '神池县', '140927', '140900', '3');
INSERT INTO `oma_area` VALUES ('6359', '五寨县', '140928', '140900', '3');
INSERT INTO `oma_area` VALUES ('6360', '五台县', '140922', '140900', '3');
INSERT INTO `oma_area` VALUES ('6361', '忻府区', '140902', '140900', '3');
INSERT INTO `oma_area` VALUES ('6362', '原平市', '140981', '140900', '3');
INSERT INTO `oma_area` VALUES ('6363', '阳泉市', '140300', '140000', '2');
INSERT INTO `oma_area` VALUES ('6364', '城区', '140302', '140300', '3');
INSERT INTO `oma_area` VALUES ('6365', '郊区', '140311', '140300', '3');
INSERT INTO `oma_area` VALUES ('6366', '矿区', '140303', '140300', '3');
INSERT INTO `oma_area` VALUES ('6367', '平定县', '140321', '140300', '3');
INSERT INTO `oma_area` VALUES ('6368', '盂县', '140322', '140300', '3');
INSERT INTO `oma_area` VALUES ('6369', '长治市', '140400', '140000', '2');
INSERT INTO `oma_area` VALUES ('6370', '城区', '140402', '140400', '3');
INSERT INTO `oma_area` VALUES ('6371', '壶关县', '140427', '140400', '3');
INSERT INTO `oma_area` VALUES ('6372', '郊区', '140411', '140400', '3');
INSERT INTO `oma_area` VALUES ('6373', '黎城县', '140426', '140400', '3');
INSERT INTO `oma_area` VALUES ('6374', '潞城市', '140481', '140400', '3');
INSERT INTO `oma_area` VALUES ('6375', '平顺县', '140425', '140400', '3');
INSERT INTO `oma_area` VALUES ('6376', '沁县', '140430', '140400', '3');
INSERT INTO `oma_area` VALUES ('6377', '沁源县', '140431', '140400', '3');
INSERT INTO `oma_area` VALUES ('6378', '屯留县', '140424', '140400', '3');
INSERT INTO `oma_area` VALUES ('6379', '武乡县', '140429', '140400', '3');
INSERT INTO `oma_area` VALUES ('6380', '襄垣县', '140423', '140400', '3');
INSERT INTO `oma_area` VALUES ('6381', '长治县', '140421', '140400', '3');
INSERT INTO `oma_area` VALUES ('6382', '长子县', '140428', '140400', '3');
INSERT INTO `oma_area` VALUES ('6383', '运城市', '140800', '140000', '2');
INSERT INTO `oma_area` VALUES ('6384', '河津市', '140882', '140800', '3');
INSERT INTO `oma_area` VALUES ('6385', '绛县', '140826', '140800', '3');
INSERT INTO `oma_area` VALUES ('6386', '稷山县', '140824', '140800', '3');
INSERT INTO `oma_area` VALUES ('6387', '临猗县', '140821', '140800', '3');
INSERT INTO `oma_area` VALUES ('6388', '平陆县', '140829', '140800', '3');
INSERT INTO `oma_area` VALUES ('6389', '芮城县', '140830', '140800', '3');
INSERT INTO `oma_area` VALUES ('6390', '万荣县', '140822', '140800', '3');
INSERT INTO `oma_area` VALUES ('6391', '闻喜县', '140823', '140800', '3');
INSERT INTO `oma_area` VALUES ('6392', '夏县', '140828', '140800', '3');
INSERT INTO `oma_area` VALUES ('6393', '新绛县', '140825', '140800', '3');
INSERT INTO `oma_area` VALUES ('6394', '盐湖区', '140802', '140800', '3');
INSERT INTO `oma_area` VALUES ('6395', '永济市', '140881', '140800', '3');
INSERT INTO `oma_area` VALUES ('6396', '垣曲县', '140827', '140800', '3');
INSERT INTO `oma_area` VALUES ('6397', '台湾省', '710000', '', '1');
INSERT INTO `oma_area` VALUES ('6398', '贵州省', '520000', '', '1');
INSERT INTO `oma_area` VALUES ('6399', '安顺市', '520400', '520000', '2');
INSERT INTO `oma_area` VALUES ('6400', '关岭布依族苗族自治县', '520424', '520400', '3');
INSERT INTO `oma_area` VALUES ('6401', '平坝区', '520403', '520400', '3');
INSERT INTO `oma_area` VALUES ('6402', '普定县', '520422', '520400', '3');
INSERT INTO `oma_area` VALUES ('6403', '西秀区', '520402', '520400', '3');
INSERT INTO `oma_area` VALUES ('6404', '镇宁布依族苗族自治县', '520423', '520400', '3');
INSERT INTO `oma_area` VALUES ('6405', '紫云苗族布依族自治县', '520425', '520400', '3');
INSERT INTO `oma_area` VALUES ('6406', '毕节市', '520500', '520000', '2');
INSERT INTO `oma_area` VALUES ('6407', '大方县', '520521', '520500', '3');
INSERT INTO `oma_area` VALUES ('6408', '赫章县', '520527', '520500', '3');
INSERT INTO `oma_area` VALUES ('6409', '金沙县', '520523', '520500', '3');
INSERT INTO `oma_area` VALUES ('6410', '纳雍县', '520525', '520500', '3');
INSERT INTO `oma_area` VALUES ('6411', '七星关区', '520502', '520500', '3');
INSERT INTO `oma_area` VALUES ('6412', '黔西县', '520522', '520500', '3');
INSERT INTO `oma_area` VALUES ('6413', '威宁彝族回族苗族自治县', '520526', '520500', '3');
INSERT INTO `oma_area` VALUES ('6414', '织金县', '520524', '520500', '3');
INSERT INTO `oma_area` VALUES ('6415', '贵阳市', '520100', '520000', '2');
INSERT INTO `oma_area` VALUES ('6416', '白云区', '520113', '520100', '3');
INSERT INTO `oma_area` VALUES ('6417', '观山湖区', '520115', '520100', '3');
INSERT INTO `oma_area` VALUES ('6418', '花溪区', '520111', '520100', '3');
INSERT INTO `oma_area` VALUES ('6419', '开阳县', '520121', '520100', '3');
INSERT INTO `oma_area` VALUES ('6420', '南明区', '520102', '520100', '3');
INSERT INTO `oma_area` VALUES ('6421', '清镇市', '520181', '520100', '3');
INSERT INTO `oma_area` VALUES ('6422', '乌当区', '520112', '520100', '3');
INSERT INTO `oma_area` VALUES ('6423', '息烽县', '520122', '520100', '3');
INSERT INTO `oma_area` VALUES ('6424', '修文县', '520123', '520100', '3');
INSERT INTO `oma_area` VALUES ('6425', '云岩区', '520103', '520100', '3');
INSERT INTO `oma_area` VALUES ('6426', '六盘水市', '520200', '520000', '2');
INSERT INTO `oma_area` VALUES ('6427', '六枝特区', '520203', '520200', '3');
INSERT INTO `oma_area` VALUES ('6428', '盘州市', '520222', '520200', '3');
INSERT INTO `oma_area` VALUES ('6429', '水城县', '520221', '520200', '3');
INSERT INTO `oma_area` VALUES ('6430', '钟山区', '520201', '520200', '3');
INSERT INTO `oma_area` VALUES ('6431', '黔西南布依族苗族自治州', '522300', '520000', '2');
INSERT INTO `oma_area` VALUES ('6432', '安龙县', '522328', '522300', '3');
INSERT INTO `oma_area` VALUES ('6433', '册亨县', '522327', '522300', '3');
INSERT INTO `oma_area` VALUES ('6434', '普安县', '522323', '522300', '3');
INSERT INTO `oma_area` VALUES ('6435', '晴隆县', '522324', '522300', '3');
INSERT INTO `oma_area` VALUES ('6436', '望谟县', '522326', '522300', '3');
INSERT INTO `oma_area` VALUES ('6437', '兴仁县', '522322', '522300', '3');
INSERT INTO `oma_area` VALUES ('6438', '兴义市', '522301', '522300', '3');
INSERT INTO `oma_area` VALUES ('6439', '贞丰县', '522325', '522300', '3');
INSERT INTO `oma_area` VALUES ('6440', '黔东南苗族侗族自治州', '522600', '520000', '2');
INSERT INTO `oma_area` VALUES ('6441', '岑巩县', '522626', '522600', '3');
INSERT INTO `oma_area` VALUES ('6442', '从江县', '522633', '522600', '3');
INSERT INTO `oma_area` VALUES ('6443', '丹寨县', '522636', '522600', '3');
INSERT INTO `oma_area` VALUES ('6444', '黄平县', '522622', '522600', '3');
INSERT INTO `oma_area` VALUES ('6445', '剑河县', '522629', '522600', '3');
INSERT INTO `oma_area` VALUES ('6446', '锦屏县', '522628', '522600', '3');
INSERT INTO `oma_area` VALUES ('6447', '凯里市', '522601', '522600', '3');
INSERT INTO `oma_area` VALUES ('6448', '雷山县', '522634', '522600', '3');
INSERT INTO `oma_area` VALUES ('6449', '黎平县', '522631', '522600', '3');
INSERT INTO `oma_area` VALUES ('6450', '麻江县', '522635', '522600', '3');
INSERT INTO `oma_area` VALUES ('6451', '三穗县', '522624', '522600', '3');
INSERT INTO `oma_area` VALUES ('6452', '榕江县', '522632', '522600', '3');
INSERT INTO `oma_area` VALUES ('6453', '施秉县', '522623', '522600', '3');
INSERT INTO `oma_area` VALUES ('6454', '台江县', '522630', '522600', '3');
INSERT INTO `oma_area` VALUES ('6455', '天柱县', '522627', '522600', '3');
INSERT INTO `oma_area` VALUES ('6456', '镇远县', '522625', '522600', '3');
INSERT INTO `oma_area` VALUES ('6457', '黔南布依族苗族自治州', '522700', '520000', '2');
INSERT INTO `oma_area` VALUES ('6458', '都匀市', '522701', '522700', '3');
INSERT INTO `oma_area` VALUES ('6459', '独山县', '522726', '522700', '3');
INSERT INTO `oma_area` VALUES ('6460', '福泉市', '522702', '522700', '3');
INSERT INTO `oma_area` VALUES ('6461', '贵定县', '522723', '522700', '3');
INSERT INTO `oma_area` VALUES ('6462', '惠水县', '522731', '522700', '3');
INSERT INTO `oma_area` VALUES ('6463', '荔波县', '522722', '522700', '3');
INSERT INTO `oma_area` VALUES ('6464', '龙里县', '522730', '522700', '3');
INSERT INTO `oma_area` VALUES ('6465', '罗甸县', '522728', '522700', '3');
INSERT INTO `oma_area` VALUES ('6466', '平塘县', '522727', '522700', '3');
INSERT INTO `oma_area` VALUES ('6467', '三都水族自治县', '522732', '522700', '3');
INSERT INTO `oma_area` VALUES ('6468', '瓮安县', '522725', '522700', '3');
INSERT INTO `oma_area` VALUES ('6469', '长顺县', '522729', '522700', '3');
INSERT INTO `oma_area` VALUES ('6470', '铜仁市', '520600', '520000', '2');
INSERT INTO `oma_area` VALUES ('6471', '碧江区', '520602', '520600', '3');
INSERT INTO `oma_area` VALUES ('6472', '德江县', '520626', '520600', '3');
INSERT INTO `oma_area` VALUES ('6473', '江口县', '520621', '520600', '3');
INSERT INTO `oma_area` VALUES ('6474', '石阡县', '520623', '520600', '3');
INSERT INTO `oma_area` VALUES ('6475', '松桃苗族自治县', '520628', '520600', '3');
INSERT INTO `oma_area` VALUES ('6476', '思南县', '520624', '520600', '3');
INSERT INTO `oma_area` VALUES ('6477', '万山区', '520603', '520600', '3');
INSERT INTO `oma_area` VALUES ('6478', '沿河土家族自治县', '520627', '520600', '3');
INSERT INTO `oma_area` VALUES ('6479', '印江土家族苗族自治县', '520625', '520600', '3');
INSERT INTO `oma_area` VALUES ('6480', '玉屏侗族自治县', '520622', '520600', '3');
INSERT INTO `oma_area` VALUES ('6481', '遵义市', '520300', '520000', '2');
INSERT INTO `oma_area` VALUES ('6482', '播州区', '520304', '520300', '3');
INSERT INTO `oma_area` VALUES ('6483', '赤水市', '520381', '520300', '3');
INSERT INTO `oma_area` VALUES ('6484', '道真仡佬族苗族自治县', '520325', '520300', '3');
INSERT INTO `oma_area` VALUES ('6485', '凤冈县', '520327', '520300', '3');
INSERT INTO `oma_area` VALUES ('6486', '红花岗区', '520302', '520300', '3');
INSERT INTO `oma_area` VALUES ('6487', '汇川区', '520303', '520300', '3');
INSERT INTO `oma_area` VALUES ('6488', '湄潭县', '520328', '520300', '3');
INSERT INTO `oma_area` VALUES ('6489', '仁怀市', '520382', '520300', '3');
INSERT INTO `oma_area` VALUES ('6490', '绥阳县', '520323', '520300', '3');
INSERT INTO `oma_area` VALUES ('6491', '桐梓县', '520322', '520300', '3');
INSERT INTO `oma_area` VALUES ('6492', '习水县', '520330', '520300', '3');
INSERT INTO `oma_area` VALUES ('6493', '务川仡佬族苗族自治县', '520326', '520300', '3');
INSERT INTO `oma_area` VALUES ('6494', '余庆县', '520329', '520300', '3');
INSERT INTO `oma_area` VALUES ('6495', '正安县', '520324', '520300', '3');
INSERT INTO `oma_area` VALUES ('6496', '广西壮族自治区', '450000', '', '1');
INSERT INTO `oma_area` VALUES ('6497', '北海市', '450500', '450000', '2');
INSERT INTO `oma_area` VALUES ('6498', '海城区', '450502', '450500', '3');
INSERT INTO `oma_area` VALUES ('6499', '合浦县', '450521', '450500', '3');
INSERT INTO `oma_area` VALUES ('6500', '铁山港区', '450512', '450500', '3');
INSERT INTO `oma_area` VALUES ('6501', '银海区', '450503', '450500', '3');
INSERT INTO `oma_area` VALUES ('6502', '百色市', '451000', '450000', '2');
INSERT INTO `oma_area` VALUES ('6503', '德保县', '451024', '451000', '3');
INSERT INTO `oma_area` VALUES ('6504', '靖西市', '451081', '451000', '3');
INSERT INTO `oma_area` VALUES ('6505', '乐业县', '451028', '451000', '3');
INSERT INTO `oma_area` VALUES ('6506', '凌云县', '451027', '451000', '3');
INSERT INTO `oma_area` VALUES ('6507', '隆林各族自治县', '451031', '451000', '3');
INSERT INTO `oma_area` VALUES ('6508', '那坡县', '451026', '451000', '3');
INSERT INTO `oma_area` VALUES ('6509', '平果县', '451023', '451000', '3');
INSERT INTO `oma_area` VALUES ('6510', '田东县', '451022', '451000', '3');
INSERT INTO `oma_area` VALUES ('6511', '田林县', '451029', '451000', '3');
INSERT INTO `oma_area` VALUES ('6512', '田阳县', '451021', '451000', '3');
INSERT INTO `oma_area` VALUES ('6513', '西林县', '451030', '451000', '3');
INSERT INTO `oma_area` VALUES ('6514', '右江区', '451002', '451000', '3');
INSERT INTO `oma_area` VALUES ('6515', '崇左市', '451400', '450000', '2');
INSERT INTO `oma_area` VALUES ('6516', '大新县', '451424', '451400', '3');
INSERT INTO `oma_area` VALUES ('6517', '扶绥县', '451421', '451400', '3');
INSERT INTO `oma_area` VALUES ('6518', '江州区', '451402', '451400', '3');
INSERT INTO `oma_area` VALUES ('6519', '龙州县', '451423', '451400', '3');
INSERT INTO `oma_area` VALUES ('6520', '宁明县', '451422', '451400', '3');
INSERT INTO `oma_area` VALUES ('6521', '凭祥市', '451481', '451400', '3');
INSERT INTO `oma_area` VALUES ('6522', '天等县', '451425', '451400', '3');
INSERT INTO `oma_area` VALUES ('6523', '防城港市', '450600', '450000', '2');
INSERT INTO `oma_area` VALUES ('6524', '东兴市', '450681', '450600', '3');
INSERT INTO `oma_area` VALUES ('6525', '防城区', '450603', '450600', '3');
INSERT INTO `oma_area` VALUES ('6526', '港口区', '450602', '450600', '3');
INSERT INTO `oma_area` VALUES ('6527', '上思县', '450621', '450600', '3');
INSERT INTO `oma_area` VALUES ('6528', '桂林市', '450300', '450000', '2');
INSERT INTO `oma_area` VALUES ('6529', '叠彩区', '450303', '450300', '3');
INSERT INTO `oma_area` VALUES ('6530', '恭城瑶族自治县', '450332', '450300', '3');
INSERT INTO `oma_area` VALUES ('6531', '灌阳县', '450327', '450300', '3');
INSERT INTO `oma_area` VALUES ('6532', '荔浦县', '450331', '450300', '3');
INSERT INTO `oma_area` VALUES ('6533', '临桂区', '450312', '450300', '3');
INSERT INTO `oma_area` VALUES ('6534', '灵川县', '450323', '450300', '3');
INSERT INTO `oma_area` VALUES ('6535', '龙胜各族自治县', '450328', '450300', '3');
INSERT INTO `oma_area` VALUES ('6536', '平乐县', '450330', '450300', '3');
INSERT INTO `oma_area` VALUES ('6537', '七星区', '450305', '450300', '3');
INSERT INTO `oma_area` VALUES ('6538', '全州县', '450324', '450300', '3');
INSERT INTO `oma_area` VALUES ('6539', '象山区', '450304', '450300', '3');
INSERT INTO `oma_area` VALUES ('6540', '兴安县', '450325', '450300', '3');
INSERT INTO `oma_area` VALUES ('6541', '秀峰区', '450302', '450300', '3');
INSERT INTO `oma_area` VALUES ('6542', '阳朔县', '450321', '450300', '3');
INSERT INTO `oma_area` VALUES ('6543', '雁山区', '450311', '450300', '3');
INSERT INTO `oma_area` VALUES ('6544', '永福县', '450326', '450300', '3');
INSERT INTO `oma_area` VALUES ('6545', '资源县', '450329', '450300', '3');
INSERT INTO `oma_area` VALUES ('6546', '贵港市', '450800', '450000', '2');
INSERT INTO `oma_area` VALUES ('6547', '港南区', '450803', '450800', '3');
INSERT INTO `oma_area` VALUES ('6548', '港北区', '450802', '450800', '3');
INSERT INTO `oma_area` VALUES ('6549', '桂平市', '450881', '450800', '3');
INSERT INTO `oma_area` VALUES ('6550', '平南县', '450821', '450800', '3');
INSERT INTO `oma_area` VALUES ('6551', '覃塘区', '450804', '450800', '3');
INSERT INTO `oma_area` VALUES ('6552', '河池市', '451200', '450000', '2');
INSERT INTO `oma_area` VALUES ('6553', '巴马瑶族自治县', '451227', '451200', '3');
INSERT INTO `oma_area` VALUES ('6554', '大化瑶族自治县', '451229', '451200', '3');
INSERT INTO `oma_area` VALUES ('6555', '东兰县', '451224', '451200', '3');
INSERT INTO `oma_area` VALUES ('6556', '凤山县', '451223', '451200', '3');
INSERT INTO `oma_area` VALUES ('6557', '都安瑶族自治县', '451228', '451200', '3');
INSERT INTO `oma_area` VALUES ('6558', '环江毛南族自治县', '451226', '451200', '3');
INSERT INTO `oma_area` VALUES ('6559', '金城江区', '451202', '451200', '3');
INSERT INTO `oma_area` VALUES ('6560', '罗城仫佬族自治县', '451225', '451200', '3');
INSERT INTO `oma_area` VALUES ('6561', '南丹县', '451221', '451200', '3');
INSERT INTO `oma_area` VALUES ('6562', '天峨县', '451222', '451200', '3');
INSERT INTO `oma_area` VALUES ('6563', '宜州区', '451203', '451200', '3');
INSERT INTO `oma_area` VALUES ('6564', '贺州市', '451100', '450000', '2');
INSERT INTO `oma_area` VALUES ('6565', '八步区', '451102', '451100', '3');
INSERT INTO `oma_area` VALUES ('6566', '富川瑶族自治县', '451123', '451100', '3');
INSERT INTO `oma_area` VALUES ('6567', '平桂区', '451103', '451100', '3');
INSERT INTO `oma_area` VALUES ('6568', '昭平县', '451121', '451100', '3');
INSERT INTO `oma_area` VALUES ('6569', '钟山县', '451122', '451100', '3');
INSERT INTO `oma_area` VALUES ('6570', '来宾市', '451300', '450000', '2');
INSERT INTO `oma_area` VALUES ('6571', '合山市', '451381', '451300', '3');
INSERT INTO `oma_area` VALUES ('6572', '金秀瑶族自治县', '451324', '451300', '3');
INSERT INTO `oma_area` VALUES ('6573', '武宣县', '451323', '451300', '3');
INSERT INTO `oma_area` VALUES ('6574', '忻城县', '451321', '451300', '3');
INSERT INTO `oma_area` VALUES ('6575', '象州县', '451322', '451300', '3');
INSERT INTO `oma_area` VALUES ('6576', '兴宾区', '451302', '451300', '3');
INSERT INTO `oma_area` VALUES ('6577', '柳州市', '450200', '450000', '2');
INSERT INTO `oma_area` VALUES ('6578', '城中区', '450202', '450200', '3');
INSERT INTO `oma_area` VALUES ('6579', '柳城县', '450222', '450200', '3');
INSERT INTO `oma_area` VALUES ('6580', '柳北区', '450205', '450200', '3');
INSERT INTO `oma_area` VALUES ('6581', '柳江区', '450206', '450200', '3');
INSERT INTO `oma_area` VALUES ('6582', '柳南区', '450204', '450200', '3');
INSERT INTO `oma_area` VALUES ('6583', '鹿寨县', '450223', '450200', '3');
INSERT INTO `oma_area` VALUES ('6584', '融安县', '450224', '450200', '3');
INSERT INTO `oma_area` VALUES ('6585', '融水苗族自治县', '450225', '450200', '3');
INSERT INTO `oma_area` VALUES ('6586', '三江侗族自治县', '450226', '450200', '3');
INSERT INTO `oma_area` VALUES ('6587', '鱼峰区', '450203', '450200', '3');
INSERT INTO `oma_area` VALUES ('6588', '南宁市', '450100', '450000', '2');
INSERT INTO `oma_area` VALUES ('6589', '宾阳县', '450126', '450100', '3');
INSERT INTO `oma_area` VALUES ('6590', '横县', '450127', '450100', '3');
INSERT INTO `oma_area` VALUES ('6591', '江南区', '450105', '450100', '3');
INSERT INTO `oma_area` VALUES ('6592', '良庆区', '450108', '450100', '3');
INSERT INTO `oma_area` VALUES ('6593', '隆安县', '450123', '450100', '3');
INSERT INTO `oma_area` VALUES ('6594', '马山县', '450124', '450100', '3');
INSERT INTO `oma_area` VALUES ('6595', '青秀区', '450103', '450100', '3');
INSERT INTO `oma_area` VALUES ('6596', '上林县', '450125', '450100', '3');
INSERT INTO `oma_area` VALUES ('6597', '武鸣区', '450110', '450100', '3');
INSERT INTO `oma_area` VALUES ('6598', '西乡塘区', '450107', '450100', '3');
INSERT INTO `oma_area` VALUES ('6599', '兴宁区', '450102', '450100', '3');
INSERT INTO `oma_area` VALUES ('6600', '邕宁区', '450109', '450100', '3');
INSERT INTO `oma_area` VALUES ('6601', '钦州市', '450700', '450000', '2');
INSERT INTO `oma_area` VALUES ('6602', '灵山县', '450721', '450700', '3');
INSERT INTO `oma_area` VALUES ('6603', '浦北县', '450722', '450700', '3');
INSERT INTO `oma_area` VALUES ('6604', '钦北区', '450703', '450700', '3');
INSERT INTO `oma_area` VALUES ('6605', '钦南区', '450702', '450700', '3');
INSERT INTO `oma_area` VALUES ('6606', '梧州市', '450400', '450000', '2');
INSERT INTO `oma_area` VALUES ('6607', '苍梧县', '450421', '450400', '3');
INSERT INTO `oma_area` VALUES ('6608', '岑溪市', '450481', '450400', '3');
INSERT INTO `oma_area` VALUES ('6609', '龙圩区', '450406', '450400', '3');
INSERT INTO `oma_area` VALUES ('6610', '蒙山县', '450423', '450400', '3');
INSERT INTO `oma_area` VALUES ('6611', '藤县', '450422', '450400', '3');
INSERT INTO `oma_area` VALUES ('6612', '万秀区', '450403', '450400', '3');
INSERT INTO `oma_area` VALUES ('6613', '长洲区', '450405', '450400', '3');
INSERT INTO `oma_area` VALUES ('6614', '玉林市', '450900', '450000', '2');
INSERT INTO `oma_area` VALUES ('6615', '博白县', '450923', '450900', '3');
INSERT INTO `oma_area` VALUES ('6616', '北流市', '450981', '450900', '3');
INSERT INTO `oma_area` VALUES ('6617', '福绵区', '450903', '450900', '3');
INSERT INTO `oma_area` VALUES ('6618', '陆川县', '450922', '450900', '3');
INSERT INTO `oma_area` VALUES ('6619', '容县', '450921', '450900', '3');
INSERT INTO `oma_area` VALUES ('6620', '兴业县', '450924', '450900', '3');
INSERT INTO `oma_area` VALUES ('6621', '玉州区', '450902', '450900', '3');
INSERT INTO `oma_area` VALUES ('6622', '甘肃省', '620000', '', '1');
INSERT INTO `oma_area` VALUES ('6623', '白银市', '620400', '620000', '2');
INSERT INTO `oma_area` VALUES ('6624', '白银区', '620402', '620400', '3');
INSERT INTO `oma_area` VALUES ('6625', '会宁县', '620422', '620400', '3');
INSERT INTO `oma_area` VALUES ('6626', '靖远县', '620421', '620400', '3');
INSERT INTO `oma_area` VALUES ('6627', '景泰县', '620423', '620400', '3');
INSERT INTO `oma_area` VALUES ('6628', '平川区', '620403', '620400', '3');
INSERT INTO `oma_area` VALUES ('6629', '甘南藏族自治州', '623000', '620000', '2');
INSERT INTO `oma_area` VALUES ('6630', '迭部县', '623024', '623000', '3');
INSERT INTO `oma_area` VALUES ('6631', '合作市', '623001', '623000', '3');
INSERT INTO `oma_area` VALUES ('6632', '临潭县', '623021', '623000', '3');
INSERT INTO `oma_area` VALUES ('6633', '碌曲县', '623026', '623000', '3');
INSERT INTO `oma_area` VALUES ('6634', '玛曲县', '623025', '623000', '3');
INSERT INTO `oma_area` VALUES ('6635', '夏河县', '623027', '623000', '3');
INSERT INTO `oma_area` VALUES ('6636', '舟曲县', '623023', '623000', '3');
INSERT INTO `oma_area` VALUES ('6637', '卓尼县', '623022', '623000', '3');
INSERT INTO `oma_area` VALUES ('6638', '定西市', '621100', '620000', '2');
INSERT INTO `oma_area` VALUES ('6639', '安定区', '621102', '621100', '3');
INSERT INTO `oma_area` VALUES ('6640', '临洮县', '621124', '621100', '3');
INSERT INTO `oma_area` VALUES ('6641', '陇西县', '621122', '621100', '3');
INSERT INTO `oma_area` VALUES ('6642', '岷县', '621126', '621100', '3');
INSERT INTO `oma_area` VALUES ('6643', '通渭县', '621121', '621100', '3');
INSERT INTO `oma_area` VALUES ('6644', '渭源县', '621123', '621100', '3');
INSERT INTO `oma_area` VALUES ('6645', '漳县', '621125', '621100', '3');
INSERT INTO `oma_area` VALUES ('6646', '嘉峪关市', '620200', '620000', '2');
INSERT INTO `oma_area` VALUES ('6647', '嘉峪关乡', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6648', '前进路街道', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6649', '五一路街道', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6650', '建设路街道', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6651', '新华路街道', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6652', '前进街道', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6653', '峪泉镇', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6654', '新城镇', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6655', '文殊镇', '620200', '620200', '3');
INSERT INTO `oma_area` VALUES ('6656', '酒泉市', '620900', '620000', '2');
INSERT INTO `oma_area` VALUES ('6657', '阿克塞哈萨克族自治县', '620924', '620900', '3');
INSERT INTO `oma_area` VALUES ('6658', '敦煌市', '620982', '620900', '3');
INSERT INTO `oma_area` VALUES ('6659', '瓜州县', '620922', '620900', '3');
INSERT INTO `oma_area` VALUES ('6660', '金塔县', '620921', '620900', '3');
INSERT INTO `oma_area` VALUES ('6661', '肃州区', '620902', '620900', '3');
INSERT INTO `oma_area` VALUES ('6662', '肃北蒙古族自治县', '620923', '620900', '3');
INSERT INTO `oma_area` VALUES ('6663', '玉门市', '620981', '620900', '3');
INSERT INTO `oma_area` VALUES ('6664', '金昌市', '620300', '620000', '2');
INSERT INTO `oma_area` VALUES ('6665', '金川区', '620302', '620300', '3');
INSERT INTO `oma_area` VALUES ('6666', '永昌县', '620321', '620300', '3');
INSERT INTO `oma_area` VALUES ('6667', '兰州市', '620100', '620000', '2');
INSERT INTO `oma_area` VALUES ('6668', '安宁区', '620105', '620100', '3');
INSERT INTO `oma_area` VALUES ('6669', '城关区', '620102', '620100', '3');
INSERT INTO `oma_area` VALUES ('6670', '皋兰县', '620122', '620100', '3');
INSERT INTO `oma_area` VALUES ('6671', '红古区', '620111', '620100', '3');
INSERT INTO `oma_area` VALUES ('6672', '七里河区', '620103', '620100', '3');
INSERT INTO `oma_area` VALUES ('6673', '西固区', '620104', '620100', '3');
INSERT INTO `oma_area` VALUES ('6674', '永登县', '620121', '620100', '3');
INSERT INTO `oma_area` VALUES ('6675', '榆中县', '620123', '620100', '3');
INSERT INTO `oma_area` VALUES ('6676', '陇南市', '621200', '620000', '2');
INSERT INTO `oma_area` VALUES ('6677', '成县', '621221', '621200', '3');
INSERT INTO `oma_area` VALUES ('6678', '宕昌县', '621223', '621200', '3');
INSERT INTO `oma_area` VALUES ('6679', '徽县', '621227', '621200', '3');
INSERT INTO `oma_area` VALUES ('6680', '康县', '621224', '621200', '3');
INSERT INTO `oma_area` VALUES ('6681', '礼县', '621226', '621200', '3');
INSERT INTO `oma_area` VALUES ('6682', '两当县', '621228', '621200', '3');
INSERT INTO `oma_area` VALUES ('6683', '文县', '621222', '621200', '3');
INSERT INTO `oma_area` VALUES ('6684', '武都区', '621202', '621200', '3');
INSERT INTO `oma_area` VALUES ('6685', '西和县', '621225', '621200', '3');
INSERT INTO `oma_area` VALUES ('6686', '临夏回族自治州', '622900', '620000', '2');
INSERT INTO `oma_area` VALUES ('6687', '东乡族自治县', '622926', '622900', '3');
INSERT INTO `oma_area` VALUES ('6688', '广河县', '622924', '622900', '3');
INSERT INTO `oma_area` VALUES ('6689', '和政县', '622925', '622900', '3');
INSERT INTO `oma_area` VALUES ('6690', '积石山保安族东乡族撒拉族自治县', '622927', '622900', '3');
INSERT INTO `oma_area` VALUES ('6691', '康乐县', '622922', '622900', '3');
INSERT INTO `oma_area` VALUES ('6692', '临夏市', '622901', '622900', '3');
INSERT INTO `oma_area` VALUES ('6693', '临夏县', '622921', '622900', '3');
INSERT INTO `oma_area` VALUES ('6694', '永靖县', '622923', '622900', '3');
INSERT INTO `oma_area` VALUES ('6695', '平凉市', '620800', '620000', '2');
INSERT INTO `oma_area` VALUES ('6696', '崇信县', '620823', '620800', '3');
INSERT INTO `oma_area` VALUES ('6697', '华亭县', '620824', '620800', '3');
INSERT INTO `oma_area` VALUES ('6698', '静宁县', '620826', '620800', '3');
INSERT INTO `oma_area` VALUES ('6699', '泾川县', '620821', '620800', '3');
INSERT INTO `oma_area` VALUES ('6700', '崆峒区', '620802', '620800', '3');
INSERT INTO `oma_area` VALUES ('6701', '灵台县', '620822', '620800', '3');
INSERT INTO `oma_area` VALUES ('6702', '庄浪县', '620825', '620800', '3');
INSERT INTO `oma_area` VALUES ('6703', '庆阳市', '621000', '620000', '2');
INSERT INTO `oma_area` VALUES ('6704', '合水县', '621024', '621000', '3');
INSERT INTO `oma_area` VALUES ('6705', '华池县', '621023', '621000', '3');
INSERT INTO `oma_area` VALUES ('6706', '环县', '621022', '621000', '3');
INSERT INTO `oma_area` VALUES ('6707', '宁县', '621026', '621000', '3');
INSERT INTO `oma_area` VALUES ('6708', '庆城县', '621021', '621000', '3');
INSERT INTO `oma_area` VALUES ('6709', '西峰区', '621002', '621000', '3');
INSERT INTO `oma_area` VALUES ('6710', '镇原县', '621027', '621000', '3');
INSERT INTO `oma_area` VALUES ('6711', '正宁县', '621025', '621000', '3');
INSERT INTO `oma_area` VALUES ('6712', '天水市', '620500', '620000', '2');
INSERT INTO `oma_area` VALUES ('6713', '甘谷县', '620523', '620500', '3');
INSERT INTO `oma_area` VALUES ('6714', '麦积区', '620503', '620500', '3');
INSERT INTO `oma_area` VALUES ('6715', '秦安县', '620522', '620500', '3');
INSERT INTO `oma_area` VALUES ('6716', '秦州区', '620502', '620500', '3');
INSERT INTO `oma_area` VALUES ('6717', '清水县', '620521', '620500', '3');
INSERT INTO `oma_area` VALUES ('6718', '武山县', '620524', '620500', '3');
INSERT INTO `oma_area` VALUES ('6719', '张家川回族自治县', '620525', '620500', '3');
INSERT INTO `oma_area` VALUES ('6720', '武威市', '620600', '620000', '2');
INSERT INTO `oma_area` VALUES ('6721', '古浪县', '620622', '620600', '3');
INSERT INTO `oma_area` VALUES ('6722', '凉州区', '620602', '620600', '3');
INSERT INTO `oma_area` VALUES ('6723', '民勤县', '620621', '620600', '3');
INSERT INTO `oma_area` VALUES ('6724', '天祝藏族自治县', '620623', '620600', '3');
INSERT INTO `oma_area` VALUES ('6725', '张掖市', '620700', '620000', '2');
INSERT INTO `oma_area` VALUES ('6726', '甘州区', '620702', '620700', '3');
INSERT INTO `oma_area` VALUES ('6727', '高台县', '620724', '620700', '3');
INSERT INTO `oma_area` VALUES ('6728', '临泽县', '620723', '620700', '3');
INSERT INTO `oma_area` VALUES ('6729', '民乐县', '620722', '620700', '3');
INSERT INTO `oma_area` VALUES ('6730', '山丹县', '620725', '620700', '3');
INSERT INTO `oma_area` VALUES ('6731', '肃南裕固族自治县', '620721', '620700', '3');
INSERT INTO `oma_area` VALUES ('6732', '河南省', '410000', '', '1');
INSERT INTO `oma_area` VALUES ('6733', '安阳市', '410500', '410000', '2');
INSERT INTO `oma_area` VALUES ('6734', '安阳县', '410522', '410500', '3');
INSERT INTO `oma_area` VALUES ('6735', '北关区', '410503', '410500', '3');
INSERT INTO `oma_area` VALUES ('6736', '滑县', '410526', '410500', '3');
INSERT INTO `oma_area` VALUES ('6737', '林州市', '410581', '410500', '3');
INSERT INTO `oma_area` VALUES ('6738', '龙安区', '410506', '410500', '3');
INSERT INTO `oma_area` VALUES ('6739', '内黄县', '410527', '410500', '3');
INSERT INTO `oma_area` VALUES ('6740', '汤阴县', '410523', '410500', '3');
INSERT INTO `oma_area` VALUES ('6741', '文峰区', '410502', '410500', '3');
INSERT INTO `oma_area` VALUES ('6742', '殷都区', '410505', '410500', '3');
INSERT INTO `oma_area` VALUES ('6743', '鹤壁市', '410600', '410000', '2');
INSERT INTO `oma_area` VALUES ('6744', '鹤山区', '410602', '410600', '3');
INSERT INTO `oma_area` VALUES ('6745', '浚县', '410621', '410600', '3');
INSERT INTO `oma_area` VALUES ('6746', '淇滨区', '410611', '410600', '3');
INSERT INTO `oma_area` VALUES ('6747', '淇县', '410622', '410600', '3');
INSERT INTO `oma_area` VALUES ('6748', '山城区', '410603', '410600', '3');
INSERT INTO `oma_area` VALUES ('6749', '焦作市', '410800', '410000', '2');
INSERT INTO `oma_area` VALUES ('6750', '博爱县', '410822', '410800', '3');
INSERT INTO `oma_area` VALUES ('6751', '解放区', '410802', '410800', '3');
INSERT INTO `oma_area` VALUES ('6752', '马村区', '410804', '410800', '3');
INSERT INTO `oma_area` VALUES ('6753', '孟州市', '410883', '410800', '3');
INSERT INTO `oma_area` VALUES ('6754', '沁阳市', '410882', '410800', '3');
INSERT INTO `oma_area` VALUES ('6755', '山阳区', '410811', '410800', '3');
INSERT INTO `oma_area` VALUES ('6756', '温县', '410825', '410800', '3');
INSERT INTO `oma_area` VALUES ('6757', '武陟县', '410823', '410800', '3');
INSERT INTO `oma_area` VALUES ('6758', '修武县', '410821', '410800', '3');
INSERT INTO `oma_area` VALUES ('6759', '中站区', '410803', '410800', '3');
INSERT INTO `oma_area` VALUES ('6760', '开封市', '410200', '410000', '2');
INSERT INTO `oma_area` VALUES ('6761', '鼓楼区', '410204', '410200', '3');
INSERT INTO `oma_area` VALUES ('6762', '兰考县', '410225', '410200', '3');
INSERT INTO `oma_area` VALUES ('6763', '龙亭区', '410202', '410200', '3');
INSERT INTO `oma_area` VALUES ('6764', '杞县', '410221', '410200', '3');
INSERT INTO `oma_area` VALUES ('6765', '顺河回族区', '410203', '410200', '3');
INSERT INTO `oma_area` VALUES ('6766', '通许县', '410222', '410200', '3');
INSERT INTO `oma_area` VALUES ('6767', '尉氏县', '410223', '410200', '3');
INSERT INTO `oma_area` VALUES ('6768', '祥符区', '410212', '410200', '3');
INSERT INTO `oma_area` VALUES ('6769', '禹王台区', '410205', '410200', '3');
INSERT INTO `oma_area` VALUES ('6770', '漯河市', '411100', '410000', '2');
INSERT INTO `oma_area` VALUES ('6771', '临颍县', '411122', '411100', '3');
INSERT INTO `oma_area` VALUES ('6772', '舞阳县', '411121', '411100', '3');
INSERT INTO `oma_area` VALUES ('6773', '郾城区', '411103', '411100', '3');
INSERT INTO `oma_area` VALUES ('6774', '源汇区', '411102', '411100', '3');
INSERT INTO `oma_area` VALUES ('6775', '召陵区', '411104', '411100', '3');
INSERT INTO `oma_area` VALUES ('6776', '洛阳市', '410300', '410000', '2');
INSERT INTO `oma_area` VALUES ('6777', '瀍河回族区', '410304', '410300', '3');
INSERT INTO `oma_area` VALUES ('6778', '吉利区', '410306', '410300', '3');
INSERT INTO `oma_area` VALUES ('6779', '涧西区', '410305', '410300', '3');
INSERT INTO `oma_area` VALUES ('6780', '老城区', '410302', '410300', '3');
INSERT INTO `oma_area` VALUES ('6781', '栾川县', '410324', '410300', '3');
INSERT INTO `oma_area` VALUES ('6782', '洛宁县', '410328', '410300', '3');
INSERT INTO `oma_area` VALUES ('6783', '洛龙区', '410311', '410300', '3');
INSERT INTO `oma_area` VALUES ('6784', '孟津县', '410322', '410300', '3');
INSERT INTO `oma_area` VALUES ('6785', '汝阳县', '410326', '410300', '3');
INSERT INTO `oma_area` VALUES ('6786', '嵩县', '410325', '410300', '3');
INSERT INTO `oma_area` VALUES ('6787', '西工区', '410303', '410300', '3');
INSERT INTO `oma_area` VALUES ('6788', '新安县', '410323', '410300', '3');
INSERT INTO `oma_area` VALUES ('6789', '偃师市', '410381', '410300', '3');
INSERT INTO `oma_area` VALUES ('6790', '伊川县', '410329', '410300', '3');
INSERT INTO `oma_area` VALUES ('6791', '宜阳县', '410327', '410300', '3');
INSERT INTO `oma_area` VALUES ('6792', '濮阳市', '410900', '410000', '2');
INSERT INTO `oma_area` VALUES ('6793', '范县', '410926', '410900', '3');
INSERT INTO `oma_area` VALUES ('6794', '华龙区', '410902', '410900', '3');
INSERT INTO `oma_area` VALUES ('6795', '南乐县', '410923', '410900', '3');
INSERT INTO `oma_area` VALUES ('6796', '濮阳县', '410928', '410900', '3');
INSERT INTO `oma_area` VALUES ('6797', '清丰县', '410922', '410900', '3');
INSERT INTO `oma_area` VALUES ('6798', '台前县', '410927', '410900', '3');
INSERT INTO `oma_area` VALUES ('6799', '南阳市', '411300', '410000', '2');
INSERT INTO `oma_area` VALUES ('6800', '邓州市', '411381', '411300', '3');
INSERT INTO `oma_area` VALUES ('6801', '方城县', '411322', '411300', '3');
INSERT INTO `oma_area` VALUES ('6802', '南召县', '411321', '411300', '3');
INSERT INTO `oma_area` VALUES ('6803', '内乡县', '411325', '411300', '3');
INSERT INTO `oma_area` VALUES ('6804', '社旗县', '411327', '411300', '3');
INSERT INTO `oma_area` VALUES ('6805', '唐河县', '411328', '411300', '3');
INSERT INTO `oma_area` VALUES ('6806', '桐柏县', '411330', '411300', '3');
INSERT INTO `oma_area` VALUES ('6807', '宛城区', '411302', '411300', '3');
INSERT INTO `oma_area` VALUES ('6808', '卧龙区', '411303', '411300', '3');
INSERT INTO `oma_area` VALUES ('6809', '淅川县', '411326', '411300', '3');
INSERT INTO `oma_area` VALUES ('6810', '西峡县', '411323', '411300', '3');
INSERT INTO `oma_area` VALUES ('6811', '新野县', '411329', '411300', '3');
INSERT INTO `oma_area` VALUES ('6812', '镇平县', '411324', '411300', '3');
INSERT INTO `oma_area` VALUES ('6813', '平顶山市', '410400', '410000', '2');
INSERT INTO `oma_area` VALUES ('6814', '宝丰县', '410421', '410400', '3');
INSERT INTO `oma_area` VALUES ('6815', '郏县', '410425', '410400', '3');
INSERT INTO `oma_area` VALUES ('6816', '鲁山县', '410423', '410400', '3');
INSERT INTO `oma_area` VALUES ('6817', '汝州市', '410482', '410400', '3');
INSERT INTO `oma_area` VALUES ('6818', '石龙区', '410404', '410400', '3');
INSERT INTO `oma_area` VALUES ('6819', '卫东区', '410403', '410400', '3');
INSERT INTO `oma_area` VALUES ('6820', '舞钢市', '410481', '410400', '3');
INSERT INTO `oma_area` VALUES ('6821', '新华区', '410402', '410400', '3');
INSERT INTO `oma_area` VALUES ('6822', '叶县', '410422', '410400', '3');
INSERT INTO `oma_area` VALUES ('6823', '湛河区', '410411', '410400', '3');
INSERT INTO `oma_area` VALUES ('6824', '商丘市', '411400', '410000', '2');
INSERT INTO `oma_area` VALUES ('6825', '梁园区', '411402', '411400', '3');
INSERT INTO `oma_area` VALUES ('6826', '民权县', '411421', '411400', '3');
INSERT INTO `oma_area` VALUES ('6827', '宁陵县', '411423', '411400', '3');
INSERT INTO `oma_area` VALUES ('6828', '睢县', '411422', '411400', '3');
INSERT INTO `oma_area` VALUES ('6829', '睢阳区', '411403', '411400', '3');
INSERT INTO `oma_area` VALUES ('6830', '夏邑县', '411426', '411400', '3');
INSERT INTO `oma_area` VALUES ('6831', '永城市', '411481', '411400', '3');
INSERT INTO `oma_area` VALUES ('6832', '虞城县', '411425', '411400', '3');
INSERT INTO `oma_area` VALUES ('6833', '柘城县', '411424', '411400', '3');
INSERT INTO `oma_area` VALUES ('6834', '三门峡市', '411200', '410000', '2');
INSERT INTO `oma_area` VALUES ('6835', '湖滨区', '411202', '411200', '3');
INSERT INTO `oma_area` VALUES ('6836', '灵宝市', '411282', '411200', '3');
INSERT INTO `oma_area` VALUES ('6837', '卢氏县', '411224', '411200', '3');
INSERT INTO `oma_area` VALUES ('6838', '渑池县', '411221', '411200', '3');
INSERT INTO `oma_area` VALUES ('6839', '陕州区', '411203', '411200', '3');
INSERT INTO `oma_area` VALUES ('6840', '义马市', '411281', '411200', '3');
INSERT INTO `oma_area` VALUES ('6841', '信阳市', '411500', '410000', '2');
INSERT INTO `oma_area` VALUES ('6842', '固始县', '411525', '411500', '3');
INSERT INTO `oma_area` VALUES ('6843', '光山县', '411522', '411500', '3');
INSERT INTO `oma_area` VALUES ('6844', '淮滨县', '411527', '411500', '3');
INSERT INTO `oma_area` VALUES ('6845', '潢川县', '411526', '411500', '3');
INSERT INTO `oma_area` VALUES ('6846', '罗山县', '411521', '411500', '3');
INSERT INTO `oma_area` VALUES ('6847', '平桥区', '411503', '411500', '3');
INSERT INTO `oma_area` VALUES ('6848', '商城县', '411524', '411500', '3');
INSERT INTO `oma_area` VALUES ('6849', '浉河区', '411502', '411500', '3');
INSERT INTO `oma_area` VALUES ('6850', '息县', '411528', '411500', '3');
INSERT INTO `oma_area` VALUES ('6851', '新县', '411523', '411500', '3');
INSERT INTO `oma_area` VALUES ('6852', '新乡市', '410700', '410000', '2');
INSERT INTO `oma_area` VALUES ('6853', '封丘县', '410727', '410700', '3');
INSERT INTO `oma_area` VALUES ('6854', '凤泉区', '410704', '410700', '3');
INSERT INTO `oma_area` VALUES ('6855', '红旗区', '410702', '410700', '3');
INSERT INTO `oma_area` VALUES ('6856', '辉县市', '410782', '410700', '3');
INSERT INTO `oma_area` VALUES ('6857', '获嘉县', '410724', '410700', '3');
INSERT INTO `oma_area` VALUES ('6858', '牧野区', '410711', '410700', '3');
INSERT INTO `oma_area` VALUES ('6859', '卫辉市', '410781', '410700', '3');
INSERT INTO `oma_area` VALUES ('6860', '卫滨区', '410703', '410700', '3');
INSERT INTO `oma_area` VALUES ('6861', '新乡县', '410721', '410700', '3');
INSERT INTO `oma_area` VALUES ('6862', '延津县', '410726', '410700', '3');
INSERT INTO `oma_area` VALUES ('6863', '原阳县', '410725', '410700', '3');
INSERT INTO `oma_area` VALUES ('6864', '长垣县', '410728', '410700', '3');
INSERT INTO `oma_area` VALUES ('6865', '许昌市', '411000', '410000', '2');
INSERT INTO `oma_area` VALUES ('6866', '建安区', '411003', '411000', '3');
INSERT INTO `oma_area` VALUES ('6867', '魏都区', '411002', '411000', '3');
INSERT INTO `oma_area` VALUES ('6868', '襄城县', '411025', '411000', '3');
INSERT INTO `oma_area` VALUES ('6869', '鄢陵县', '411024', '411000', '3');
INSERT INTO `oma_area` VALUES ('6870', '禹州市', '411081', '411000', '3');
INSERT INTO `oma_area` VALUES ('6871', '长葛市', '411082', '411000', '3');
INSERT INTO `oma_area` VALUES ('6872', '郑州市', '410100', '410000', '2');
INSERT INTO `oma_area` VALUES ('6873', '登封市', '410185', '410100', '3');
INSERT INTO `oma_area` VALUES ('6874', '二七区', '410103', '410100', '3');
INSERT INTO `oma_area` VALUES ('6875', '管城回族区', '410104', '410100', '3');
INSERT INTO `oma_area` VALUES ('6876', '巩义市', '410181', '410100', '3');
INSERT INTO `oma_area` VALUES ('6877', '惠济区', '410108', '410100', '3');
INSERT INTO `oma_area` VALUES ('6878', '金水区', '410105', '410100', '3');
INSERT INTO `oma_area` VALUES ('6879', '上街区', '410106', '410100', '3');
INSERT INTO `oma_area` VALUES ('6880', '荥阳市', '410182', '410100', '3');
INSERT INTO `oma_area` VALUES ('6881', '新密市', '410183', '410100', '3');
INSERT INTO `oma_area` VALUES ('6882', '新郑市', '410184', '410100', '3');
INSERT INTO `oma_area` VALUES ('6883', '中原区', '410102', '410100', '3');
INSERT INTO `oma_area` VALUES ('6884', '中牟县', '410122', '410100', '3');
INSERT INTO `oma_area` VALUES ('6885', '周口市', '411600', '410000', '2');
INSERT INTO `oma_area` VALUES ('6886', '沈丘县', '411624', '411600', '3');
INSERT INTO `oma_area` VALUES ('6887', '川汇区', '411602', '411600', '3');
INSERT INTO `oma_area` VALUES ('6888', '郸城县', '411625', '411600', '3');
INSERT INTO `oma_area` VALUES ('6889', '扶沟县', '411621', '411600', '3');
INSERT INTO `oma_area` VALUES ('6890', '淮阳县', '411626', '411600', '3');
INSERT INTO `oma_area` VALUES ('6891', '鹿邑县', '411628', '411600', '3');
INSERT INTO `oma_area` VALUES ('6892', '商水县', '411623', '411600', '3');
INSERT INTO `oma_area` VALUES ('6893', '太康县', '411627', '411600', '3');
INSERT INTO `oma_area` VALUES ('6894', '西华县', '411622', '411600', '3');
INSERT INTO `oma_area` VALUES ('6895', '项城市', '411681', '411600', '3');
INSERT INTO `oma_area` VALUES ('6896', '驻马店市', '411700', '410000', '2');
INSERT INTO `oma_area` VALUES ('6897', '泌阳县', '411726', '411700', '3');
INSERT INTO `oma_area` VALUES ('6898', '平舆县', '411723', '411700', '3');
INSERT INTO `oma_area` VALUES ('6899', '确山县', '411725', '411700', '3');
INSERT INTO `oma_area` VALUES ('6900', '汝南县', '411727', '411700', '3');
INSERT INTO `oma_area` VALUES ('6901', '上蔡县', '411722', '411700', '3');
INSERT INTO `oma_area` VALUES ('6902', '遂平县', '411728', '411700', '3');
INSERT INTO `oma_area` VALUES ('6903', '西平县', '411721', '411700', '3');
INSERT INTO `oma_area` VALUES ('6904', '新蔡县', '411729', '411700', '3');
INSERT INTO `oma_area` VALUES ('6905', '驿城区', '411702', '411700', '3');
INSERT INTO `oma_area` VALUES ('6906', '正阳县', '411724', '411700', '3');
INSERT INTO `oma_area` VALUES ('6907', '济源市', '419001', '410000', '2');
INSERT INTO `oma_area` VALUES ('6908', '坡头镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6909', '轵城镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6910', '大峪镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6911', '天坛街道', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6912', '济水街道', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6913', '玉泉街道', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6914', '邵原镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6915', '思礼镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6916', '下冶镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6917', '五龙口镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6918', '梨林镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6919', '王屋镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6920', '克井镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6921', '承留镇', '419001', '419001', '3');
INSERT INTO `oma_area` VALUES ('6922', '河北省', '130000', '', '1');
INSERT INTO `oma_area` VALUES ('6923', '保定市', '130600', '130000', '2');
INSERT INTO `oma_area` VALUES ('6924', '安国市', '130683', '130600', '3');
INSERT INTO `oma_area` VALUES ('6925', '安新县', '130632', '130600', '3');
INSERT INTO `oma_area` VALUES ('6926', '博野县', '130637', '130600', '3');
INSERT INTO `oma_area` VALUES ('6927', '定州市', '130682', '130600', '3');
INSERT INTO `oma_area` VALUES ('6928', '定兴县', '130626', '130600', '3');
INSERT INTO `oma_area` VALUES ('6929', '阜平县', '130624', '130600', '3');
INSERT INTO `oma_area` VALUES ('6930', '高碑店市', '130684', '130600', '3');
INSERT INTO `oma_area` VALUES ('6931', '高阳县', '130628', '130600', '3');
INSERT INTO `oma_area` VALUES ('6932', '竞秀区', '130602', '130600', '3');
INSERT INTO `oma_area` VALUES ('6933', '涞水县', '130623', '130600', '3');
INSERT INTO `oma_area` VALUES ('6934', '涞源县', '130630', '130600', '3');
INSERT INTO `oma_area` VALUES ('6935', '蠡县', '130635', '130600', '3');
INSERT INTO `oma_area` VALUES ('6936', '莲池区', '130606', '130600', '3');
INSERT INTO `oma_area` VALUES ('6937', '满城区', '130607', '130600', '3');
INSERT INTO `oma_area` VALUES ('6938', '曲阳县', '130634', '130600', '3');
INSERT INTO `oma_area` VALUES ('6939', '清苑区', '130608', '130600', '3');
INSERT INTO `oma_area` VALUES ('6940', '容城县', '130629', '130600', '3');
INSERT INTO `oma_area` VALUES ('6941', '顺平县', '130636', '130600', '3');
INSERT INTO `oma_area` VALUES ('6942', '唐县', '130627', '130600', '3');
INSERT INTO `oma_area` VALUES ('6943', '望都县', '130631', '130600', '3');
INSERT INTO `oma_area` VALUES ('6944', '雄县', '130638', '130600', '3');
INSERT INTO `oma_area` VALUES ('6945', '徐水区', '130609', '130600', '3');
INSERT INTO `oma_area` VALUES ('6946', '易县', '130633', '130600', '3');
INSERT INTO `oma_area` VALUES ('6947', '涿州市', '130681', '130600', '3');
INSERT INTO `oma_area` VALUES ('6948', '沧州市', '130900', '130000', '2');
INSERT INTO `oma_area` VALUES ('6949', '沧县', '130921', '130900', '3');
INSERT INTO `oma_area` VALUES ('6950', '东光县', '130923', '130900', '3');
INSERT INTO `oma_area` VALUES ('6951', '海兴县', '130924', '130900', '3');
INSERT INTO `oma_area` VALUES ('6952', '河间市', '130984', '130900', '3');
INSERT INTO `oma_area` VALUES ('6953', '黄骅市', '130983', '130900', '3');
INSERT INTO `oma_area` VALUES ('6954', '孟村回族自治县', '130930', '130900', '3');
INSERT INTO `oma_area` VALUES ('6955', '南皮县', '130927', '130900', '3');
INSERT INTO `oma_area` VALUES ('6956', '泊头市', '130981', '130900', '3');
INSERT INTO `oma_area` VALUES ('6957', '青县', '130922', '130900', '3');
INSERT INTO `oma_area` VALUES ('6958', '任丘市', '130982', '130900', '3');
INSERT INTO `oma_area` VALUES ('6959', '肃宁县', '130926', '130900', '3');
INSERT INTO `oma_area` VALUES ('6960', '吴桥县', '130928', '130900', '3');
INSERT INTO `oma_area` VALUES ('6961', '献县', '130929', '130900', '3');
INSERT INTO `oma_area` VALUES ('6962', '新华区', '130902', '130900', '3');
INSERT INTO `oma_area` VALUES ('6963', '盐山县', '130925', '130900', '3');
INSERT INTO `oma_area` VALUES ('6964', '运河区', '130903', '130900', '3');
INSERT INTO `oma_area` VALUES ('6965', '承德市', '130800', '130000', '2');
INSERT INTO `oma_area` VALUES ('6966', '承德县', '130821', '130800', '3');
INSERT INTO `oma_area` VALUES ('6967', '丰宁满族自治县', '130826', '130800', '3');
INSERT INTO `oma_area` VALUES ('6968', '宽城满族自治县', '130827', '130800', '3');
INSERT INTO `oma_area` VALUES ('6969', '隆化县', '130825', '130800', '3');
INSERT INTO `oma_area` VALUES ('6970', '滦平县', '130824', '130800', '3');
INSERT INTO `oma_area` VALUES ('6971', '平泉市', '130881', '130800', '3');
INSERT INTO `oma_area` VALUES ('6972', '双桥区', '130802', '130800', '3');
INSERT INTO `oma_area` VALUES ('6973', '双滦区', '130803', '130800', '3');
INSERT INTO `oma_area` VALUES ('6974', '围场满族蒙古族自治县', '130828', '130800', '3');
INSERT INTO `oma_area` VALUES ('6975', '兴隆县', '130822', '130800', '3');
INSERT INTO `oma_area` VALUES ('6976', '鹰手营子矿区', '130804', '130800', '3');
INSERT INTO `oma_area` VALUES ('6977', '邯郸市', '130400', '130000', '2');
INSERT INTO `oma_area` VALUES ('6978', '成安县', '130424', '130400', '3');
INSERT INTO `oma_area` VALUES ('6979', '磁县', '130427', '130400', '3');
INSERT INTO `oma_area` VALUES ('6980', '丛台区', '130403', '130400', '3');
INSERT INTO `oma_area` VALUES ('6981', '大名县', '130425', '130400', '3');
INSERT INTO `oma_area` VALUES ('6982', '肥乡区', '130407', '130400', '3');
INSERT INTO `oma_area` VALUES ('6983', '峰峰矿区', '130406', '130400', '3');
INSERT INTO `oma_area` VALUES ('6984', '复兴区', '130404', '130400', '3');
INSERT INTO `oma_area` VALUES ('6985', '广平县', '130432', '130400', '3');
INSERT INTO `oma_area` VALUES ('6986', '馆陶县', '130433', '130400', '3');
INSERT INTO `oma_area` VALUES ('6987', '邯山区', '130402', '130400', '3');
INSERT INTO `oma_area` VALUES ('6988', '鸡泽县', '130431', '130400', '3');
INSERT INTO `oma_area` VALUES ('6989', '临漳县', '130423', '130400', '3');
INSERT INTO `oma_area` VALUES ('6990', '邱县', '130430', '130400', '3');
INSERT INTO `oma_area` VALUES ('6991', '曲周县', '130435', '130400', '3');
INSERT INTO `oma_area` VALUES ('6992', '涉县', '130426', '130400', '3');
INSERT INTO `oma_area` VALUES ('6993', '魏县', '130434', '130400', '3');
INSERT INTO `oma_area` VALUES ('6994', '武安市', '130481', '130400', '3');
INSERT INTO `oma_area` VALUES ('6995', '永年区', '130408', '130400', '3');
INSERT INTO `oma_area` VALUES ('6996', '衡水市', '131100', '130000', '2');
INSERT INTO `oma_area` VALUES ('6997', '安平县', '131125', '131100', '3');
INSERT INTO `oma_area` VALUES ('6998', '阜城县', '131128', '131100', '3');
INSERT INTO `oma_area` VALUES ('6999', '故城县', '131126', '131100', '3');
INSERT INTO `oma_area` VALUES ('7000', '冀州区', '131103', '131100', '3');
INSERT INTO `oma_area` VALUES ('7001', '景县', '131127', '131100', '3');
INSERT INTO `oma_area` VALUES ('7002', '饶阳县', '131124', '131100', '3');
INSERT INTO `oma_area` VALUES ('7003', '深州市', '131182', '131100', '3');
INSERT INTO `oma_area` VALUES ('7004', '桃城区', '131102', '131100', '3');
INSERT INTO `oma_area` VALUES ('7005', '武邑县', '131122', '131100', '3');
INSERT INTO `oma_area` VALUES ('7006', '武强县', '131123', '131100', '3');
INSERT INTO `oma_area` VALUES ('7007', '枣强县', '131121', '131100', '3');
INSERT INTO `oma_area` VALUES ('7008', '廊坊市', '131000', '130000', '2');
INSERT INTO `oma_area` VALUES ('7009', '霸州市', '131081', '131000', '3');
INSERT INTO `oma_area` VALUES ('7010', '安次区', '131002', '131000', '3');
INSERT INTO `oma_area` VALUES ('7011', '大厂回族自治县', '131028', '131000', '3');
INSERT INTO `oma_area` VALUES ('7012', '大城县', '131025', '131000', '3');
INSERT INTO `oma_area` VALUES ('7013', '固安县', '131022', '131000', '3');
INSERT INTO `oma_area` VALUES ('7014', '广阳区', '131003', '131000', '3');
INSERT INTO `oma_area` VALUES ('7015', '三河市', '131082', '131000', '3');
INSERT INTO `oma_area` VALUES ('7016', '文安县', '131026', '131000', '3');
INSERT INTO `oma_area` VALUES ('7017', '香河县', '131024', '131000', '3');
INSERT INTO `oma_area` VALUES ('7018', '永清县', '131023', '131000', '3');
INSERT INTO `oma_area` VALUES ('7019', '秦皇岛市', '130300', '130000', '2');
INSERT INTO `oma_area` VALUES ('7020', '北戴河区', '130304', '130300', '3');
INSERT INTO `oma_area` VALUES ('7021', '昌黎县', '130322', '130300', '3');
INSERT INTO `oma_area` VALUES ('7022', '抚宁区', '130306', '130300', '3');
INSERT INTO `oma_area` VALUES ('7023', '海港区', '130302', '130300', '3');
INSERT INTO `oma_area` VALUES ('7024', '卢龙县', '130324', '130300', '3');
INSERT INTO `oma_area` VALUES ('7025', '青龙满族自治县', '130321', '130300', '3');
INSERT INTO `oma_area` VALUES ('7026', '山海关区', '130303', '130300', '3');
INSERT INTO `oma_area` VALUES ('7027', '石家庄市', '130100', '130000', '2');
INSERT INTO `oma_area` VALUES ('7028', '藁城区', '130109', '130100', '3');
INSERT INTO `oma_area` VALUES ('7029', '高邑县', '130127', '130100', '3');
INSERT INTO `oma_area` VALUES ('7030', '井陉县', '130121', '130100', '3');
INSERT INTO `oma_area` VALUES ('7031', '晋州市', '130183', '130100', '3');
INSERT INTO `oma_area` VALUES ('7032', '井陉矿区', '130107', '130100', '3');
INSERT INTO `oma_area` VALUES ('7033', '灵寿县', '130126', '130100', '3');
INSERT INTO `oma_area` VALUES ('7034', '鹿泉区', '130110', '130100', '3');
INSERT INTO `oma_area` VALUES ('7035', '栾城区', '130111', '130100', '3');
INSERT INTO `oma_area` VALUES ('7036', '平山县', '130131', '130100', '3');
INSERT INTO `oma_area` VALUES ('7037', '桥西区', '130104', '130100', '3');
INSERT INTO `oma_area` VALUES ('7038', '深泽县', '130128', '130100', '3');
INSERT INTO `oma_area` VALUES ('7039', '无极县', '130130', '130100', '3');
INSERT INTO `oma_area` VALUES ('7040', '辛集市', '130181', '130100', '3');
INSERT INTO `oma_area` VALUES ('7041', '行唐县', '130125', '130100', '3');
INSERT INTO `oma_area` VALUES ('7042', '新乐市', '130184', '130100', '3');
INSERT INTO `oma_area` VALUES ('7043', '新华区', '130105', '130100', '3');
INSERT INTO `oma_area` VALUES ('7044', '裕华区', '130108', '130100', '3');
INSERT INTO `oma_area` VALUES ('7045', '元氏县', '130132', '130100', '3');
INSERT INTO `oma_area` VALUES ('7046', '赞皇县', '130129', '130100', '3');
INSERT INTO `oma_area` VALUES ('7047', '长安区', '130102', '130100', '3');
INSERT INTO `oma_area` VALUES ('7048', '正定县', '130123', '130100', '3');
INSERT INTO `oma_area` VALUES ('7049', '赵县', '130133', '130100', '3');
INSERT INTO `oma_area` VALUES ('7050', '唐山市', '130200', '130000', '2');
INSERT INTO `oma_area` VALUES ('7051', '曹妃甸区', '130209', '130200', '3');
INSERT INTO `oma_area` VALUES ('7052', '丰南区', '130207', '130200', '3');
INSERT INTO `oma_area` VALUES ('7053', '丰润区', '130208', '130200', '3');
INSERT INTO `oma_area` VALUES ('7054', '古冶区', '130204', '130200', '3');
INSERT INTO `oma_area` VALUES ('7055', '开平区', '130205', '130200', '3');
INSERT INTO `oma_area` VALUES ('7056', '乐亭县', '130225', '130200', '3');
INSERT INTO `oma_area` VALUES ('7057', '路南区', '130202', '130200', '3');
INSERT INTO `oma_area` VALUES ('7058', '路北区', '130203', '130200', '3');
INSERT INTO `oma_area` VALUES ('7059', '滦县', '130223', '130200', '3');
INSERT INTO `oma_area` VALUES ('7060', '滦南县', '130224', '130200', '3');
INSERT INTO `oma_area` VALUES ('7061', '迁西县', '130227', '130200', '3');
INSERT INTO `oma_area` VALUES ('7062', '迁安市', '130283', '130200', '3');
INSERT INTO `oma_area` VALUES ('7063', '玉田县', '130229', '130200', '3');
INSERT INTO `oma_area` VALUES ('7064', '遵化市', '130281', '130200', '3');
INSERT INTO `oma_area` VALUES ('7065', '邢台市', '130500', '130000', '2');
INSERT INTO `oma_area` VALUES ('7066', '柏乡县', '130524', '130500', '3');
INSERT INTO `oma_area` VALUES ('7067', '广宗县', '130531', '130500', '3');
INSERT INTO `oma_area` VALUES ('7068', '巨鹿县', '130529', '130500', '3');
INSERT INTO `oma_area` VALUES ('7069', '临城县', '130522', '130500', '3');
INSERT INTO `oma_area` VALUES ('7070', '临西县', '130535', '130500', '3');
INSERT INTO `oma_area` VALUES ('7071', '隆尧县', '130525', '130500', '3');
INSERT INTO `oma_area` VALUES ('7072', '内丘县', '130523', '130500', '3');
INSERT INTO `oma_area` VALUES ('7073', '南和县', '130527', '130500', '3');
INSERT INTO `oma_area` VALUES ('7074', '南宫市', '130581', '130500', '3');
INSERT INTO `oma_area` VALUES ('7075', '宁晋县', '130528', '130500', '3');
INSERT INTO `oma_area` VALUES ('7076', '平乡县', '130532', '130500', '3');
INSERT INTO `oma_area` VALUES ('7077', '桥东区', '130502', '130500', '3');
INSERT INTO `oma_area` VALUES ('7078', '桥西区', '130503', '130500', '3');
INSERT INTO `oma_area` VALUES ('7079', '清河县', '130534', '130500', '3');
INSERT INTO `oma_area` VALUES ('7080', '任县', '130526', '130500', '3');
INSERT INTO `oma_area` VALUES ('7081', '沙河市', '130582', '130500', '3');
INSERT INTO `oma_area` VALUES ('7082', '威县', '130533', '130500', '3');
INSERT INTO `oma_area` VALUES ('7083', '新河县', '130530', '130500', '3');
INSERT INTO `oma_area` VALUES ('7084', '邢台县', '130521', '130500', '3');
INSERT INTO `oma_area` VALUES ('7085', '张家口市', '130700', '130000', '2');
INSERT INTO `oma_area` VALUES ('7086', '赤城县', '130732', '130700', '3');
INSERT INTO `oma_area` VALUES ('7087', '崇礼区', '130709', '130700', '3');
INSERT INTO `oma_area` VALUES ('7088', '沽源县', '130724', '130700', '3');
INSERT INTO `oma_area` VALUES ('7089', '怀安县', '130728', '130700', '3');
INSERT INTO `oma_area` VALUES ('7090', '怀来县', '130730', '130700', '3');
INSERT INTO `oma_area` VALUES ('7091', '康保县', '130723', '130700', '3');
INSERT INTO `oma_area` VALUES ('7092', '桥东区', '130702', '130700', '3');
INSERT INTO `oma_area` VALUES ('7093', '桥西区', '130703', '130700', '3');
INSERT INTO `oma_area` VALUES ('7094', '尚义县', '130725', '130700', '3');
INSERT INTO `oma_area` VALUES ('7095', '万全区', '130708', '130700', '3');
INSERT INTO `oma_area` VALUES ('7096', '蔚县', '130726', '130700', '3');
INSERT INTO `oma_area` VALUES ('7097', '下花园区', '130706', '130700', '3');
INSERT INTO `oma_area` VALUES ('7098', '宣化区', '130705', '130700', '3');
INSERT INTO `oma_area` VALUES ('7099', '阳原县', '130727', '130700', '3');
INSERT INTO `oma_area` VALUES ('7100', '张北县', '130722', '130700', '3');
INSERT INTO `oma_area` VALUES ('7101', '涿鹿县', '130731', '130700', '3');
INSERT INTO `oma_area` VALUES ('7102', '安徽省', '340000', '', '1');
INSERT INTO `oma_area` VALUES ('7103', '安庆市', '340800', '340000', '2');
INSERT INTO `oma_area` VALUES ('7104', '大观区', '340803', '340800', '3');
INSERT INTO `oma_area` VALUES ('7105', '怀宁县', '340822', '340800', '3');
INSERT INTO `oma_area` VALUES ('7106', '潜山县', '340824', '340800', '3');
INSERT INTO `oma_area` VALUES ('7107', '宿松县', '340826', '340800', '3');
INSERT INTO `oma_area` VALUES ('7108', '太湖县', '340825', '340800', '3');
INSERT INTO `oma_area` VALUES ('7109', '桐城市', '340881', '340800', '3');
INSERT INTO `oma_area` VALUES ('7110', '望江县', '340827', '340800', '3');
INSERT INTO `oma_area` VALUES ('7111', '宜秀区', '340811', '340800', '3');
INSERT INTO `oma_area` VALUES ('7112', '迎江区', '340802', '340800', '3');
INSERT INTO `oma_area` VALUES ('7113', '岳西县', '340828', '340800', '3');
INSERT INTO `oma_area` VALUES ('7114', '蚌埠市', '340300', '340000', '2');
INSERT INTO `oma_area` VALUES ('7115', '蚌山区', '340303', '340300', '3');
INSERT INTO `oma_area` VALUES ('7116', '固镇县', '340323', '340300', '3');
INSERT INTO `oma_area` VALUES ('7117', '怀远县', '340321', '340300', '3');
INSERT INTO `oma_area` VALUES ('7118', '淮上区', '340311', '340300', '3');
INSERT INTO `oma_area` VALUES ('7119', '龙子湖区', '340302', '340300', '3');
INSERT INTO `oma_area` VALUES ('7120', '五河县', '340322', '340300', '3');
INSERT INTO `oma_area` VALUES ('7121', '禹会区', '340304', '340300', '3');
INSERT INTO `oma_area` VALUES ('7122', '亳州市', '341600', '340000', '2');
INSERT INTO `oma_area` VALUES ('7123', '利辛县', '341623', '341600', '3');
INSERT INTO `oma_area` VALUES ('7124', '蒙城县', '341622', '341600', '3');
INSERT INTO `oma_area` VALUES ('7125', '谯城区', '341602', '341600', '3');
INSERT INTO `oma_area` VALUES ('7126', '涡阳县', '341621', '341600', '3');
INSERT INTO `oma_area` VALUES ('7127', '滁州市', '341100', '340000', '2');
INSERT INTO `oma_area` VALUES ('7128', '定远县', '341125', '341100', '3');
INSERT INTO `oma_area` VALUES ('7129', '凤阳县', '341126', '341100', '3');
INSERT INTO `oma_area` VALUES ('7130', '来安县', '341122', '341100', '3');
INSERT INTO `oma_area` VALUES ('7131', '琅琊区', '341102', '341100', '3');
INSERT INTO `oma_area` VALUES ('7132', '明光市', '341182', '341100', '3');
INSERT INTO `oma_area` VALUES ('7133', '南谯区', '341103', '341100', '3');
INSERT INTO `oma_area` VALUES ('7134', '全椒县', '341124', '341100', '3');
INSERT INTO `oma_area` VALUES ('7135', '天长市', '341181', '341100', '3');
INSERT INTO `oma_area` VALUES ('7136', '池州市', '341700', '340000', '2');
INSERT INTO `oma_area` VALUES ('7137', '东至县', '341721', '341700', '3');
INSERT INTO `oma_area` VALUES ('7138', '贵池区', '341702', '341700', '3');
INSERT INTO `oma_area` VALUES ('7139', '青阳县', '341723', '341700', '3');
INSERT INTO `oma_area` VALUES ('7140', '石台县', '341722', '341700', '3');
INSERT INTO `oma_area` VALUES ('7141', '阜阳市', '341200', '340000', '2');
INSERT INTO `oma_area` VALUES ('7142', '阜南县', '341225', '341200', '3');
INSERT INTO `oma_area` VALUES ('7143', '界首市', '341282', '341200', '3');
INSERT INTO `oma_area` VALUES ('7144', '临泉县', '341221', '341200', '3');
INSERT INTO `oma_area` VALUES ('7145', '太和县', '341222', '341200', '3');
INSERT INTO `oma_area` VALUES ('7146', '颍东区', '341203', '341200', '3');
INSERT INTO `oma_area` VALUES ('7147', '颍州区', '341202', '341200', '3');
INSERT INTO `oma_area` VALUES ('7148', '颍泉区', '341204', '341200', '3');
INSERT INTO `oma_area` VALUES ('7149', '颍上县', '341226', '341200', '3');
INSERT INTO `oma_area` VALUES ('7150', '淮南市', '340400', '340000', '2');
INSERT INTO `oma_area` VALUES ('7151', '八公山区', '340405', '340400', '3');
INSERT INTO `oma_area` VALUES ('7152', '大通区', '340402', '340400', '3');
INSERT INTO `oma_area` VALUES ('7153', '凤台县', '340421', '340400', '3');
INSERT INTO `oma_area` VALUES ('7154', '潘集区', '340406', '340400', '3');
INSERT INTO `oma_area` VALUES ('7155', '寿县', '340422', '340400', '3');
INSERT INTO `oma_area` VALUES ('7156', '田家庵区', '340403', '340400', '3');
INSERT INTO `oma_area` VALUES ('7157', '谢家集区', '340404', '340400', '3');
INSERT INTO `oma_area` VALUES ('7158', '合肥市', '340100', '340000', '2');
INSERT INTO `oma_area` VALUES ('7159', '包河区', '340111', '340100', '3');
INSERT INTO `oma_area` VALUES ('7160', '巢湖市', '340181', '340100', '3');
INSERT INTO `oma_area` VALUES ('7161', '肥西县', '340123', '340100', '3');
INSERT INTO `oma_area` VALUES ('7162', '肥东县', '340122', '340100', '3');
INSERT INTO `oma_area` VALUES ('7163', '庐阳区', '340103', '340100', '3');
INSERT INTO `oma_area` VALUES ('7164', '庐江县', '340124', '340100', '3');
INSERT INTO `oma_area` VALUES ('7165', '蜀山区', '340104', '340100', '3');
INSERT INTO `oma_area` VALUES ('7166', '瑶海区', '340102', '340100', '3');
INSERT INTO `oma_area` VALUES ('7167', '长丰县', '340121', '340100', '3');
INSERT INTO `oma_area` VALUES ('7168', '淮北市', '340600', '340000', '2');
INSERT INTO `oma_area` VALUES ('7169', '杜集区', '340602', '340600', '3');
INSERT INTO `oma_area` VALUES ('7170', '烈山区', '340604', '340600', '3');
INSERT INTO `oma_area` VALUES ('7171', '濉溪县', '340621', '340600', '3');
INSERT INTO `oma_area` VALUES ('7172', '相山区', '340603', '340600', '3');
INSERT INTO `oma_area` VALUES ('7173', '黄山市', '341000', '340000', '2');
INSERT INTO `oma_area` VALUES ('7174', '黄山区', '341003', '341000', '3');
INSERT INTO `oma_area` VALUES ('7175', '徽州区', '341004', '341000', '3');
INSERT INTO `oma_area` VALUES ('7176', '祁门县', '341024', '341000', '3');
INSERT INTO `oma_area` VALUES ('7177', '歙县', '341021', '341000', '3');
INSERT INTO `oma_area` VALUES ('7178', '屯溪区', '341002', '341000', '3');
INSERT INTO `oma_area` VALUES ('7179', '休宁县', '341022', '341000', '3');
INSERT INTO `oma_area` VALUES ('7180', '黟县', '341023', '341000', '3');
INSERT INTO `oma_area` VALUES ('7181', '马鞍山市', '340500', '340000', '2');
INSERT INTO `oma_area` VALUES ('7182', '博望区', '340506', '340500', '3');
INSERT INTO `oma_area` VALUES ('7183', '当涂县', '340521', '340500', '3');
INSERT INTO `oma_area` VALUES ('7184', '含山县', '340522', '340500', '3');
INSERT INTO `oma_area` VALUES ('7185', '和县', '340523', '340500', '3');
INSERT INTO `oma_area` VALUES ('7186', '花山区', '340503', '340500', '3');
INSERT INTO `oma_area` VALUES ('7187', '雨山区', '340504', '340500', '3');
INSERT INTO `oma_area` VALUES ('7188', '六安市', '341500', '340000', '2');
INSERT INTO `oma_area` VALUES ('7189', '霍山县', '341525', '341500', '3');
INSERT INTO `oma_area` VALUES ('7190', '霍邱县', '341522', '341500', '3');
INSERT INTO `oma_area` VALUES ('7191', '金安区', '341502', '341500', '3');
INSERT INTO `oma_area` VALUES ('7192', '金寨县', '341524', '341500', '3');
INSERT INTO `oma_area` VALUES ('7193', '舒城县', '341523', '341500', '3');
INSERT INTO `oma_area` VALUES ('7194', '叶集区', '341504', '341500', '3');
INSERT INTO `oma_area` VALUES ('7195', '裕安区', '341503', '341500', '3');
INSERT INTO `oma_area` VALUES ('7196', '铜陵市', '340700', '340000', '2');
INSERT INTO `oma_area` VALUES ('7197', '枞阳县', '340722', '340700', '3');
INSERT INTO `oma_area` VALUES ('7198', '郊区', '340711', '340700', '3');
INSERT INTO `oma_area` VALUES ('7199', '铜官区', '340705', '340700', '3');
INSERT INTO `oma_area` VALUES ('7200', '义安区', '340706', '340700', '3');
INSERT INTO `oma_area` VALUES ('7201', '宿州市', '341300', '340000', '2');
INSERT INTO `oma_area` VALUES ('7202', '砀山县', '341321', '341300', '3');
INSERT INTO `oma_area` VALUES ('7203', '灵璧县', '341323', '341300', '3');
INSERT INTO `oma_area` VALUES ('7204', '泗县', '341324', '341300', '3');
INSERT INTO `oma_area` VALUES ('7205', '萧县', '341322', '341300', '3');
INSERT INTO `oma_area` VALUES ('7206', '埇桥区', '341302', '341300', '3');
INSERT INTO `oma_area` VALUES ('7207', '芜湖市', '340200', '340000', '2');
INSERT INTO `oma_area` VALUES ('7208', '繁昌县', '340222', '340200', '3');
INSERT INTO `oma_area` VALUES ('7209', '鸠江区', '340207', '340200', '3');
INSERT INTO `oma_area` VALUES ('7210', '镜湖区', '340202', '340200', '3');
INSERT INTO `oma_area` VALUES ('7211', '南陵县', '340223', '340200', '3');
INSERT INTO `oma_area` VALUES ('7212', '三山区', '340208', '340200', '3');
INSERT INTO `oma_area` VALUES ('7213', '无为县', '340225', '340200', '3');
INSERT INTO `oma_area` VALUES ('7214', '芜湖县', '340221', '340200', '3');
INSERT INTO `oma_area` VALUES ('7215', '弋江区', '340203', '340200', '3');
INSERT INTO `oma_area` VALUES ('7216', '宣城市', '341800', '340000', '2');
INSERT INTO `oma_area` VALUES ('7217', '广德县', '341822', '341800', '3');
INSERT INTO `oma_area` VALUES ('7218', '绩溪县', '341824', '341800', '3');
INSERT INTO `oma_area` VALUES ('7219', '泾县', '341823', '341800', '3');
INSERT INTO `oma_area` VALUES ('7220', '旌德县', '341825', '341800', '3');
INSERT INTO `oma_area` VALUES ('7221', '郎溪县', '341821', '341800', '3');
INSERT INTO `oma_area` VALUES ('7222', '宁国市', '341881', '341800', '3');
INSERT INTO `oma_area` VALUES ('7223', '宣州区', '341802', '341800', '3');
INSERT INTO `oma_area` VALUES ('7224', '湖南省', '430000', '', '1');
INSERT INTO `oma_area` VALUES ('7225', '常德市', '430700', '430000', '2');
INSERT INTO `oma_area` VALUES ('7226', '安乡县', '430721', '430700', '3');
INSERT INTO `oma_area` VALUES ('7227', '鼎城区', '430703', '430700', '3');
INSERT INTO `oma_area` VALUES ('7228', '汉寿县', '430722', '430700', '3');
INSERT INTO `oma_area` VALUES ('7229', '津市市', '430781', '430700', '3');
INSERT INTO `oma_area` VALUES ('7230', '澧县', '430723', '430700', '3');
INSERT INTO `oma_area` VALUES ('7231', '临澧县', '430724', '430700', '3');
INSERT INTO `oma_area` VALUES ('7232', '石门县', '430726', '430700', '3');
INSERT INTO `oma_area` VALUES ('7233', '桃源县', '430725', '430700', '3');
INSERT INTO `oma_area` VALUES ('7234', '武陵区', '430702', '430700', '3');
INSERT INTO `oma_area` VALUES ('7235', '郴州市', '431000', '430000', '2');
INSERT INTO `oma_area` VALUES ('7236', '安仁县', '431028', '431000', '3');
INSERT INTO `oma_area` VALUES ('7237', '北湖区', '431002', '431000', '3');
INSERT INTO `oma_area` VALUES ('7238', '桂阳县', '431021', '431000', '3');
INSERT INTO `oma_area` VALUES ('7239', '桂东县', '431027', '431000', '3');
INSERT INTO `oma_area` VALUES ('7240', '嘉禾县', '431024', '431000', '3');
INSERT INTO `oma_area` VALUES ('7241', '临武县', '431025', '431000', '3');
INSERT INTO `oma_area` VALUES ('7242', '汝城县', '431026', '431000', '3');
INSERT INTO `oma_area` VALUES ('7243', '苏仙区', '431003', '431000', '3');
INSERT INTO `oma_area` VALUES ('7244', '宜章县', '431022', '431000', '3');
INSERT INTO `oma_area` VALUES ('7245', '永兴县', '431023', '431000', '3');
INSERT INTO `oma_area` VALUES ('7246', '资兴市', '431081', '431000', '3');
INSERT INTO `oma_area` VALUES ('7247', '衡阳市', '430400', '430000', '2');
INSERT INTO `oma_area` VALUES ('7248', '常宁市', '430482', '430400', '3');
INSERT INTO `oma_area` VALUES ('7249', '衡南县', '430422', '430400', '3');
INSERT INTO `oma_area` VALUES ('7250', '衡山县', '430423', '430400', '3');
INSERT INTO `oma_area` VALUES ('7251', '衡阳县', '430421', '430400', '3');
INSERT INTO `oma_area` VALUES ('7252', '衡东县', '430424', '430400', '3');
INSERT INTO `oma_area` VALUES ('7253', '耒阳市', '430481', '430400', '3');
INSERT INTO `oma_area` VALUES ('7254', '南岳区', '430412', '430400', '3');
INSERT INTO `oma_area` VALUES ('7255', '祁东县', '430426', '430400', '3');
INSERT INTO `oma_area` VALUES ('7256', '石鼓区', '430407', '430400', '3');
INSERT INTO `oma_area` VALUES ('7257', '雁峰区', '430406', '430400', '3');
INSERT INTO `oma_area` VALUES ('7258', '蒸湘区', '430408', '430400', '3');
INSERT INTO `oma_area` VALUES ('7259', '珠晖区', '430405', '430400', '3');
INSERT INTO `oma_area` VALUES ('7260', '娄底市', '431300', '430000', '2');
INSERT INTO `oma_area` VALUES ('7261', '冷水江市', '431381', '431300', '3');
INSERT INTO `oma_area` VALUES ('7262', '涟源市', '431382', '431300', '3');
INSERT INTO `oma_area` VALUES ('7263', '娄星区', '431302', '431300', '3');
INSERT INTO `oma_area` VALUES ('7264', '双峰县', '431321', '431300', '3');
INSERT INTO `oma_area` VALUES ('7265', '新化县', '431322', '431300', '3');
INSERT INTO `oma_area` VALUES ('7266', '邵阳市', '430500', '430000', '2');
INSERT INTO `oma_area` VALUES ('7267', '北塔区', '430511', '430500', '3');
INSERT INTO `oma_area` VALUES ('7268', '城步苗族自治县', '430529', '430500', '3');
INSERT INTO `oma_area` VALUES ('7269', '大祥区', '430503', '430500', '3');
INSERT INTO `oma_area` VALUES ('7270', '洞口县', '430525', '430500', '3');
INSERT INTO `oma_area` VALUES ('7271', '隆回县', '430524', '430500', '3');
INSERT INTO `oma_area` VALUES ('7272', '邵东县', '430521', '430500', '3');
INSERT INTO `oma_area` VALUES ('7273', '邵阳县', '430523', '430500', '3');
INSERT INTO `oma_area` VALUES ('7274', '双清区', '430502', '430500', '3');
INSERT INTO `oma_area` VALUES ('7275', '绥宁县', '430527', '430500', '3');
INSERT INTO `oma_area` VALUES ('7276', '武冈市', '430581', '430500', '3');
INSERT INTO `oma_area` VALUES ('7277', '新邵县', '430522', '430500', '3');
INSERT INTO `oma_area` VALUES ('7278', '新宁县', '430528', '430500', '3');
INSERT INTO `oma_area` VALUES ('7279', '湘潭市', '430300', '430000', '2');
INSERT INTO `oma_area` VALUES ('7280', '韶山市', '430382', '430300', '3');
INSERT INTO `oma_area` VALUES ('7281', '湘潭县', '430321', '430300', '3');
INSERT INTO `oma_area` VALUES ('7282', '湘乡市', '430381', '430300', '3');
INSERT INTO `oma_area` VALUES ('7283', '雨湖区', '430302', '430300', '3');
INSERT INTO `oma_area` VALUES ('7284', '岳塘区', '430304', '430300', '3');
INSERT INTO `oma_area` VALUES ('7285', '湘西土家族苗族自治州', '433100', '430000', '2');
INSERT INTO `oma_area` VALUES ('7286', '保靖县', '433125', '433100', '3');
INSERT INTO `oma_area` VALUES ('7287', '凤凰县', '433123', '433100', '3');
INSERT INTO `oma_area` VALUES ('7288', '古丈县', '433126', '433100', '3');
INSERT INTO `oma_area` VALUES ('7289', '花垣县', '433124', '433100', '3');
INSERT INTO `oma_area` VALUES ('7290', '吉首市', '433101', '433100', '3');
INSERT INTO `oma_area` VALUES ('7291', '龙山县', '433130', '433100', '3');
INSERT INTO `oma_area` VALUES ('7292', '泸溪县', '433122', '433100', '3');
INSERT INTO `oma_area` VALUES ('7293', '永顺县', '433127', '433100', '3');
INSERT INTO `oma_area` VALUES ('7294', '益阳市', '430900', '430000', '2');
INSERT INTO `oma_area` VALUES ('7295', '安化县', '430923', '430900', '3');
INSERT INTO `oma_area` VALUES ('7296', '赫山区', '430903', '430900', '3');
INSERT INTO `oma_area` VALUES ('7297', '南县', '430921', '430900', '3');
INSERT INTO `oma_area` VALUES ('7298', '桃江县', '430922', '430900', '3');
INSERT INTO `oma_area` VALUES ('7299', '沅江市', '430981', '430900', '3');
INSERT INTO `oma_area` VALUES ('7300', '资阳区', '430902', '430900', '3');
INSERT INTO `oma_area` VALUES ('7301', '永州市', '431100', '430000', '2');
INSERT INTO `oma_area` VALUES ('7302', '道县', '431124', '431100', '3');
INSERT INTO `oma_area` VALUES ('7303', '东安县', '431122', '431100', '3');
INSERT INTO `oma_area` VALUES ('7304', '江华瑶族自治县', '431129', '431100', '3');
INSERT INTO `oma_area` VALUES ('7305', '江永县', '431125', '431100', '3');
INSERT INTO `oma_area` VALUES ('7306', '冷水滩区', '431103', '431100', '3');
INSERT INTO `oma_area` VALUES ('7307', '蓝山县', '431127', '431100', '3');
INSERT INTO `oma_area` VALUES ('7308', '零陵区', '431102', '431100', '3');
INSERT INTO `oma_area` VALUES ('7309', '宁远县', '431126', '431100', '3');
INSERT INTO `oma_area` VALUES ('7310', '祁阳县', '431121', '431100', '3');
INSERT INTO `oma_area` VALUES ('7311', '双牌县', '431123', '431100', '3');
INSERT INTO `oma_area` VALUES ('7312', '新田县', '431128', '431100', '3');
INSERT INTO `oma_area` VALUES ('7313', '株洲市', '430200', '430000', '2');
INSERT INTO `oma_area` VALUES ('7314', '茶陵县', '430224', '430200', '3');
INSERT INTO `oma_area` VALUES ('7315', '荷塘区', '430202', '430200', '3');
INSERT INTO `oma_area` VALUES ('7316', '醴陵市', '430281', '430200', '3');
INSERT INTO `oma_area` VALUES ('7317', '芦淞区', '430203', '430200', '3');
INSERT INTO `oma_area` VALUES ('7318', '石峰区', '430204', '430200', '3');
INSERT INTO `oma_area` VALUES ('7319', '天元区', '430211', '430200', '3');
INSERT INTO `oma_area` VALUES ('7320', '炎陵县', '430225', '430200', '3');
INSERT INTO `oma_area` VALUES ('7321', '攸县', '430223', '430200', '3');
INSERT INTO `oma_area` VALUES ('7322', '株洲县', '430221', '430200', '3');
INSERT INTO `oma_area` VALUES ('7323', '张家界市', '430800', '430000', '2');
INSERT INTO `oma_area` VALUES ('7324', '慈利县', '430821', '430800', '3');
INSERT INTO `oma_area` VALUES ('7325', '桑植县', '430822', '430800', '3');
INSERT INTO `oma_area` VALUES ('7326', '武陵源区', '430811', '430800', '3');
INSERT INTO `oma_area` VALUES ('7327', '永定区', '430802', '430800', '3');
INSERT INTO `oma_area` VALUES ('7328', '岳阳市', '430600', '430000', '2');
INSERT INTO `oma_area` VALUES ('7329', '华容县', '430623', '430600', '3');
INSERT INTO `oma_area` VALUES ('7330', '君山区', '430611', '430600', '3');
INSERT INTO `oma_area` VALUES ('7331', '临湘市', '430682', '430600', '3');
INSERT INTO `oma_area` VALUES ('7332', '汨罗市', '430681', '430600', '3');
INSERT INTO `oma_area` VALUES ('7333', '平江县', '430626', '430600', '3');
INSERT INTO `oma_area` VALUES ('7334', '湘阴县', '430624', '430600', '3');
INSERT INTO `oma_area` VALUES ('7335', '云溪区', '430603', '430600', '3');
INSERT INTO `oma_area` VALUES ('7336', '岳阳县', '430621', '430600', '3');
INSERT INTO `oma_area` VALUES ('7337', '岳阳楼区', '430602', '430600', '3');
INSERT INTO `oma_area` VALUES ('7338', '长沙市', '430100', '430000', '2');
INSERT INTO `oma_area` VALUES ('7339', '芙蓉区', '430102', '430100', '3');
INSERT INTO `oma_area` VALUES ('7340', '开福区', '430105', '430100', '3');
INSERT INTO `oma_area` VALUES ('7341', '浏阳市', '430181', '430100', '3');
INSERT INTO `oma_area` VALUES ('7342', '宁乡市', '430124', '430100', '3');
INSERT INTO `oma_area` VALUES ('7343', '天心区', '430103', '430100', '3');
INSERT INTO `oma_area` VALUES ('7344', '望城区', '430112', '430100', '3');
INSERT INTO `oma_area` VALUES ('7345', '雨花区', '430111', '430100', '3');
INSERT INTO `oma_area` VALUES ('7346', '岳麓区', '430104', '430100', '3');
INSERT INTO `oma_area` VALUES ('7347', '长沙县', '430121', '430100', '3');
INSERT INTO `oma_area` VALUES ('7348', '怀化市', '431200', '430000', '2');
INSERT INTO `oma_area` VALUES ('7349', '辰溪县', '431223', '431200', '3');
INSERT INTO `oma_area` VALUES ('7350', '鹤城区', '431202', '431200', '3');
INSERT INTO `oma_area` VALUES ('7351', '洪江市', '431281', '431200', '3');
INSERT INTO `oma_area` VALUES ('7352', '会同县', '431225', '431200', '3');
INSERT INTO `oma_area` VALUES ('7353', '靖州苗族侗族自治县', '431229', '431200', '3');
INSERT INTO `oma_area` VALUES ('7354', '麻阳苗族自治县', '431226', '431200', '3');
INSERT INTO `oma_area` VALUES ('7355', '通道侗族自治县', '431230', '431200', '3');
INSERT INTO `oma_area` VALUES ('7356', '新晃侗族自治县', '431227', '431200', '3');
INSERT INTO `oma_area` VALUES ('7357', '溆浦县', '431224', '431200', '3');
INSERT INTO `oma_area` VALUES ('7358', '沅陵县', '431222', '431200', '3');
INSERT INTO `oma_area` VALUES ('7359', '中方县', '431221', '431200', '3');
INSERT INTO `oma_area` VALUES ('7360', '芷江侗族自治县', '431228', '431200', '3');
INSERT INTO `oma_area` VALUES ('7361', '上海市', '310000', '', '1');
INSERT INTO `oma_area` VALUES ('7362', '上海城区', '310100', '310000', '2');
INSERT INTO `oma_area` VALUES ('7363', '宝山区', '310113', '310100', '3');
INSERT INTO `oma_area` VALUES ('7364', '崇明区', '310151', '310100', '3');
INSERT INTO `oma_area` VALUES ('7365', '奉贤区', '310120', '310100', '3');
INSERT INTO `oma_area` VALUES ('7366', '虹口区', '310109', '310100', '3');
INSERT INTO `oma_area` VALUES ('7367', '黄浦区', '310101', '310100', '3');
INSERT INTO `oma_area` VALUES ('7368', '嘉定区', '310114', '310100', '3');
INSERT INTO `oma_area` VALUES ('7369', '金山区', '310116', '310100', '3');
INSERT INTO `oma_area` VALUES ('7370', '静安区', '310106', '310100', '3');
INSERT INTO `oma_area` VALUES ('7371', '闵行区', '310112', '310100', '3');
INSERT INTO `oma_area` VALUES ('7372', '青浦区', '310118', '310100', '3');
INSERT INTO `oma_area` VALUES ('7373', '浦东新区', '310115', '310100', '3');
INSERT INTO `oma_area` VALUES ('7374', '普陀区', '310107', '310100', '3');
INSERT INTO `oma_area` VALUES ('7375', '松江区', '310117', '310100', '3');
INSERT INTO `oma_area` VALUES ('7376', '徐汇区', '310104', '310100', '3');
INSERT INTO `oma_area` VALUES ('7377', '杨浦区', '310110', '310100', '3');
INSERT INTO `oma_area` VALUES ('7378', '长宁区', '310105', '310100', '3');
INSERT INTO `oma_area` VALUES ('7379', '湖北省', '420000', '', '1');
INSERT INTO `oma_area` VALUES ('7380', '鄂州市', '420700', '420000', '2');
INSERT INTO `oma_area` VALUES ('7381', '鄂城区', '420704', '420700', '3');
INSERT INTO `oma_area` VALUES ('7382', '华容区', '420703', '420700', '3');
INSERT INTO `oma_area` VALUES ('7383', '梁子湖区', '420702', '420700', '3');
INSERT INTO `oma_area` VALUES ('7384', '恩施土家族苗族自治州', '422800', '420000', '2');
INSERT INTO `oma_area` VALUES ('7385', '巴东县', '422823', '422800', '3');
INSERT INTO `oma_area` VALUES ('7386', '恩施市', '422801', '422800', '3');
INSERT INTO `oma_area` VALUES ('7387', '鹤峰县', '422828', '422800', '3');
INSERT INTO `oma_area` VALUES ('7388', '建始县', '422822', '422800', '3');
INSERT INTO `oma_area` VALUES ('7389', '来凤县', '422827', '422800', '3');
INSERT INTO `oma_area` VALUES ('7390', '利川市', '422802', '422800', '3');
INSERT INTO `oma_area` VALUES ('7391', '咸丰县', '422826', '422800', '3');
INSERT INTO `oma_area` VALUES ('7392', '宣恩县', '422825', '422800', '3');
INSERT INTO `oma_area` VALUES ('7393', '黄冈市', '421100', '420000', '2');
INSERT INTO `oma_area` VALUES ('7394', '红安县', '421122', '421100', '3');
INSERT INTO `oma_area` VALUES ('7395', '黄梅县', '421127', '421100', '3');
INSERT INTO `oma_area` VALUES ('7396', '黄州区', '421102', '421100', '3');
INSERT INTO `oma_area` VALUES ('7397', '罗田县', '421123', '421100', '3');
INSERT INTO `oma_area` VALUES ('7398', '麻城市', '421181', '421100', '3');
INSERT INTO `oma_area` VALUES ('7399', '蕲春县', '421126', '421100', '3');
INSERT INTO `oma_area` VALUES ('7400', '团风县', '421121', '421100', '3');
INSERT INTO `oma_area` VALUES ('7401', '浠水县', '421125', '421100', '3');
INSERT INTO `oma_area` VALUES ('7402', '武穴市', '421182', '421100', '3');
INSERT INTO `oma_area` VALUES ('7403', '英山县', '421124', '421100', '3');
INSERT INTO `oma_area` VALUES ('7404', '黄石市', '420200', '420000', '2');
INSERT INTO `oma_area` VALUES ('7405', '大冶市', '420281', '420200', '3');
INSERT INTO `oma_area` VALUES ('7406', '黄石港区', '420202', '420200', '3');
INSERT INTO `oma_area` VALUES ('7407', '铁山区', '420205', '420200', '3');
INSERT INTO `oma_area` VALUES ('7408', '下陆区', '420204', '420200', '3');
INSERT INTO `oma_area` VALUES ('7409', '西塞山区', '420203', '420200', '3');
INSERT INTO `oma_area` VALUES ('7410', '阳新县', '420222', '420200', '3');
INSERT INTO `oma_area` VALUES ('7411', '荆门市', '420800', '420000', '2');
INSERT INTO `oma_area` VALUES ('7412', '东宝区', '420802', '420800', '3');
INSERT INTO `oma_area` VALUES ('7413', '掇刀区', '420804', '420800', '3');
INSERT INTO `oma_area` VALUES ('7414', '京山县', '420821', '420800', '3');
INSERT INTO `oma_area` VALUES ('7415', '沙洋县', '420822', '420800', '3');
INSERT INTO `oma_area` VALUES ('7416', '钟祥市', '420881', '420800', '3');
INSERT INTO `oma_area` VALUES ('7417', '荆州市', '421000', '420000', '2');
INSERT INTO `oma_area` VALUES ('7418', '公安县', '421022', '421000', '3');
INSERT INTO `oma_area` VALUES ('7419', '洪湖市', '421083', '421000', '3');
INSERT INTO `oma_area` VALUES ('7420', '监利县', '421023', '421000', '3');
INSERT INTO `oma_area` VALUES ('7421', '江陵县', '421024', '421000', '3');
INSERT INTO `oma_area` VALUES ('7422', '荆州区', '421003', '421000', '3');
INSERT INTO `oma_area` VALUES ('7423', '沙市区', '421002', '421000', '3');
INSERT INTO `oma_area` VALUES ('7424', '石首市', '421081', '421000', '3');
INSERT INTO `oma_area` VALUES ('7425', '松滋市', '421087', '421000', '3');
INSERT INTO `oma_area` VALUES ('7426', '十堰市', '420300', '420000', '2');
INSERT INTO `oma_area` VALUES ('7427', '丹江口市', '420381', '420300', '3');
INSERT INTO `oma_area` VALUES ('7428', '房县', '420325', '420300', '3');
INSERT INTO `oma_area` VALUES ('7429', '茅箭区', '420302', '420300', '3');
INSERT INTO `oma_area` VALUES ('7430', '郧西县', '420322', '420300', '3');
INSERT INTO `oma_area` VALUES ('7431', '郧阳区', '420304', '420300', '3');
INSERT INTO `oma_area` VALUES ('7432', '张湾区', '420303', '420300', '3');
INSERT INTO `oma_area` VALUES ('7433', '竹溪县', '420324', '420300', '3');
INSERT INTO `oma_area` VALUES ('7434', '竹山县', '420323', '420300', '3');
INSERT INTO `oma_area` VALUES ('7435', '随州市', '421300', '420000', '2');
INSERT INTO `oma_area` VALUES ('7436', '曾都区', '421303', '421300', '3');
INSERT INTO `oma_area` VALUES ('7437', '广水市', '421381', '421300', '3');
INSERT INTO `oma_area` VALUES ('7438', '随县', '421321', '421300', '3');
INSERT INTO `oma_area` VALUES ('7439', '襄阳市', '420600', '420000', '2');
INSERT INTO `oma_area` VALUES ('7440', '保康县', '420626', '420600', '3');
INSERT INTO `oma_area` VALUES ('7441', '樊城区', '420606', '420600', '3');
INSERT INTO `oma_area` VALUES ('7442', '谷城县', '420625', '420600', '3');
INSERT INTO `oma_area` VALUES ('7443', '老河口市', '420682', '420600', '3');
INSERT INTO `oma_area` VALUES ('7444', '南漳县', '420624', '420600', '3');
INSERT INTO `oma_area` VALUES ('7445', '襄城区', '420602', '420600', '3');
INSERT INTO `oma_area` VALUES ('7446', '襄州区', '420607', '420600', '3');
INSERT INTO `oma_area` VALUES ('7447', '宜城市', '420684', '420600', '3');
INSERT INTO `oma_area` VALUES ('7448', '枣阳市', '420683', '420600', '3');
INSERT INTO `oma_area` VALUES ('7449', '孝感市', '420900', '420000', '2');
INSERT INTO `oma_area` VALUES ('7450', '安陆市', '420982', '420900', '3');
INSERT INTO `oma_area` VALUES ('7451', '大悟县', '420922', '420900', '3');
INSERT INTO `oma_area` VALUES ('7452', '汉川市', '420984', '420900', '3');
INSERT INTO `oma_area` VALUES ('7453', '孝昌县', '420921', '420900', '3');
INSERT INTO `oma_area` VALUES ('7454', '孝南区', '420902', '420900', '3');
INSERT INTO `oma_area` VALUES ('7455', '应城市', '420981', '420900', '3');
INSERT INTO `oma_area` VALUES ('7456', '云梦县', '420923', '420900', '3');
INSERT INTO `oma_area` VALUES ('7457', '武汉市', '420100', '420000', '2');
INSERT INTO `oma_area` VALUES ('7458', '蔡甸区', '420114', '420100', '3');
INSERT INTO `oma_area` VALUES ('7459', '东西湖区', '420112', '420100', '3');
INSERT INTO `oma_area` VALUES ('7460', '汉南区', '420113', '420100', '3');
INSERT INTO `oma_area` VALUES ('7461', '汉阳区', '420105', '420100', '3');
INSERT INTO `oma_area` VALUES ('7462', '洪山区', '420111', '420100', '3');
INSERT INTO `oma_area` VALUES ('7463', '黄陂区', '420116', '420100', '3');
INSERT INTO `oma_area` VALUES ('7464', '江夏区', '420115', '420100', '3');
INSERT INTO `oma_area` VALUES ('7465', '江汉区', '420103', '420100', '3');
INSERT INTO `oma_area` VALUES ('7466', '江岸区', '420102', '420100', '3');
INSERT INTO `oma_area` VALUES ('7467', '硚口区', '420104', '420100', '3');
INSERT INTO `oma_area` VALUES ('7468', '青山区', '420107', '420100', '3');
INSERT INTO `oma_area` VALUES ('7469', '武昌区', '420106', '420100', '3');
INSERT INTO `oma_area` VALUES ('7470', '新洲区', '420117', '420100', '3');
INSERT INTO `oma_area` VALUES ('7471', '咸宁市', '421200', '420000', '2');
INSERT INTO `oma_area` VALUES ('7472', '赤壁市', '421281', '421200', '3');
INSERT INTO `oma_area` VALUES ('7473', '崇阳县', '421223', '421200', '3');
INSERT INTO `oma_area` VALUES ('7474', '嘉鱼县', '421221', '421200', '3');
INSERT INTO `oma_area` VALUES ('7475', '通城县', '421222', '421200', '3');
INSERT INTO `oma_area` VALUES ('7476', '通山县', '421224', '421200', '3');
INSERT INTO `oma_area` VALUES ('7477', '咸安区', '421202', '421200', '3');
INSERT INTO `oma_area` VALUES ('7478', '宜昌市', '420500', '420000', '2');
INSERT INTO `oma_area` VALUES ('7479', '点军区', '420504', '420500', '3');
INSERT INTO `oma_area` VALUES ('7480', '当阳市', '420582', '420500', '3');
INSERT INTO `oma_area` VALUES ('7481', '伍家岗区', '420503', '420500', '3');
INSERT INTO `oma_area` VALUES ('7482', '五峰土家族自治县', '420529', '420500', '3');
INSERT INTO `oma_area` VALUES ('7483', '西陵区', '420502', '420500', '3');
INSERT INTO `oma_area` VALUES ('7484', '猇亭区', '420505', '420500', '3');
INSERT INTO `oma_area` VALUES ('7485', '兴山县', '420526', '420500', '3');
INSERT INTO `oma_area` VALUES ('7486', '夷陵区', '420506', '420500', '3');
INSERT INTO `oma_area` VALUES ('7487', '宜都市', '420581', '420500', '3');
INSERT INTO `oma_area` VALUES ('7488', '远安县', '420525', '420500', '3');
INSERT INTO `oma_area` VALUES ('7489', '长阳土家族自治县', '420528', '420500', '3');
INSERT INTO `oma_area` VALUES ('7490', '枝江市', '420583', '420500', '3');
INSERT INTO `oma_area` VALUES ('7491', '秭归县', '420527', '420500', '3');
INSERT INTO `oma_area` VALUES ('7492', '潜江市', '429005', '420000', '2');
INSERT INTO `oma_area` VALUES ('7493', '积玉口镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7494', '浩口镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7495', '张金镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7496', '龙湾镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7497', '杨市街道', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7498', '广华街道', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7499', '周矶街道', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7500', '园林街道', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7501', '泽口街道', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7502', '渔洋镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7503', '兴隆镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7504', '老新镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7505', '竹根滩镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7506', '高石碑镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7507', '熊口镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7508', '王场镇', '429005', '429005', '3');
INSERT INTO `oma_area` VALUES ('7509', '神农架林区', '429021', '420000', '2');
INSERT INTO `oma_area` VALUES ('7510', '新华镇', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7511', '宋洛乡', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7512', '阳日镇', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7513', '九湖乡', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7514', '下谷坪土家族乡', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7515', '木鱼镇', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7516', '红坪镇', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7517', '松柏镇', '429021', '429021', '3');
INSERT INTO `oma_area` VALUES ('7518', '天门市', '429006', '420000', '2');
INSERT INTO `oma_area` VALUES ('7519', '净潭乡', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7520', '麻洋镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7521', '多祥镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7522', '拖市镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7523', '汪场镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7524', '蒋场镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7525', '马湾镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7526', '横林镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7527', '九真镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7528', '石河镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7529', '张港镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7530', '小板镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7531', '彭市镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7532', '岳口街道', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7533', '候口街道', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7534', '杨林街道', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7535', '竟陵街道', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7536', '皂市镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7537', '岳口镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7538', '渔薪镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7539', '卢市镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7540', '多宝镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7541', '胡市镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7542', '佛子山镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7543', '黄潭镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7544', '干驿镇', '429006', '429006', '3');
INSERT INTO `oma_area` VALUES ('7545', '仙桃市', '429004', '420000', '2');
INSERT INTO `oma_area` VALUES ('7546', '郑场镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7547', '西流河镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7548', '郭河镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7549', '干河街道', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7550', '毛嘴镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7551', '龙华山街道', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7552', '沙咀街道', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7553', '袁市街道', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7554', '沙嘴街道', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7555', '剅河镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7556', '三伏潭镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7557', '胡场镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7558', '长埫口镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7559', '张沟镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7560', '陈场镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7561', '通海口镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7562', '彭场镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7563', '杨林尾镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7564', '沙湖镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7565', '沔城回族镇', '429004', '429004', '3');
INSERT INTO `oma_area` VALUES ('7566', '黑龙江省', '230000', '', '1');
INSERT INTO `oma_area` VALUES ('7567', '大庆市', '230600', '230000', '2');
INSERT INTO `oma_area` VALUES ('7568', '大同区', '230606', '230600', '3');
INSERT INTO `oma_area` VALUES ('7569', '杜尔伯特蒙古族自治县', '230624', '230600', '3');
INSERT INTO `oma_area` VALUES ('7570', '红岗区', '230605', '230600', '3');
INSERT INTO `oma_area` VALUES ('7571', '林甸县', '230623', '230600', '3');
INSERT INTO `oma_area` VALUES ('7572', '龙凤区', '230603', '230600', '3');
INSERT INTO `oma_area` VALUES ('7573', '萨尔图区', '230602', '230600', '3');
INSERT INTO `oma_area` VALUES ('7574', '让胡路区', '230604', '230600', '3');
INSERT INTO `oma_area` VALUES ('7575', '肇州县', '230621', '230600', '3');
INSERT INTO `oma_area` VALUES ('7576', '肇源县', '230622', '230600', '3');
INSERT INTO `oma_area` VALUES ('7577', '大兴安岭地区', '232700', '230000', '2');
INSERT INTO `oma_area` VALUES ('7578', '呼玛县', '232721', '232700', '3');
INSERT INTO `oma_area` VALUES ('7579', '加格达奇区', '232701', '232700', '3');
INSERT INTO `oma_area` VALUES ('7580', '漠河县', '232723', '232700', '3');
INSERT INTO `oma_area` VALUES ('7581', '塔河县', '232722', '232700', '3');
INSERT INTO `oma_area` VALUES ('7582', '哈尔滨市', '230100', '230000', '2');
INSERT INTO `oma_area` VALUES ('7583', '阿城区', '230112', '230100', '3');
INSERT INTO `oma_area` VALUES ('7584', '巴彦县', '230126', '230100', '3');
INSERT INTO `oma_area` VALUES ('7585', '宾县', '230125', '230100', '3');
INSERT INTO `oma_area` VALUES ('7586', '道里区', '230102', '230100', '3');
INSERT INTO `oma_area` VALUES ('7587', '道外区', '230104', '230100', '3');
INSERT INTO `oma_area` VALUES ('7588', '方正县', '230124', '230100', '3');
INSERT INTO `oma_area` VALUES ('7589', '呼兰区', '230111', '230100', '3');
INSERT INTO `oma_area` VALUES ('7590', '木兰县', '230127', '230100', '3');
INSERT INTO `oma_area` VALUES ('7591', '南岗区', '230103', '230100', '3');
INSERT INTO `oma_area` VALUES ('7592', '平房区', '230108', '230100', '3');
INSERT INTO `oma_area` VALUES ('7593', '尚志市', '230183', '230100', '3');
INSERT INTO `oma_area` VALUES ('7594', '双城区', '230113', '230100', '3');
INSERT INTO `oma_area` VALUES ('7595', '松北区', '230109', '230100', '3');
INSERT INTO `oma_area` VALUES ('7596', '通河县', '230128', '230100', '3');
INSERT INTO `oma_area` VALUES ('7597', '五常市', '230184', '230100', '3');
INSERT INTO `oma_area` VALUES ('7598', '香坊区', '230110', '230100', '3');
INSERT INTO `oma_area` VALUES ('7599', '延寿县', '230129', '230100', '3');
INSERT INTO `oma_area` VALUES ('7600', '依兰县', '230123', '230100', '3');
INSERT INTO `oma_area` VALUES ('7601', '鹤岗市', '230400', '230000', '2');
INSERT INTO `oma_area` VALUES ('7602', '东山区', '230406', '230400', '3');
INSERT INTO `oma_area` VALUES ('7603', '工农区', '230403', '230400', '3');
INSERT INTO `oma_area` VALUES ('7604', '萝北县', '230421', '230400', '3');
INSERT INTO `oma_area` VALUES ('7605', '南山区', '230404', '230400', '3');
INSERT INTO `oma_area` VALUES ('7606', '绥滨县', '230422', '230400', '3');
INSERT INTO `oma_area` VALUES ('7607', '向阳区', '230402', '230400', '3');
INSERT INTO `oma_area` VALUES ('7608', '兴安区', '230405', '230400', '3');
INSERT INTO `oma_area` VALUES ('7609', '兴山区', '230407', '230400', '3');
INSERT INTO `oma_area` VALUES ('7610', '鸡西市', '230300', '230000', '2');
INSERT INTO `oma_area` VALUES ('7611', '城子河区', '230306', '230300', '3');
INSERT INTO `oma_area` VALUES ('7612', '滴道区', '230304', '230300', '3');
INSERT INTO `oma_area` VALUES ('7613', '恒山区', '230303', '230300', '3');
INSERT INTO `oma_area` VALUES ('7614', '虎林市', '230381', '230300', '3');
INSERT INTO `oma_area` VALUES ('7615', '鸡冠区', '230302', '230300', '3');
INSERT INTO `oma_area` VALUES ('7616', '鸡东县', '230321', '230300', '3');
INSERT INTO `oma_area` VALUES ('7617', '梨树区', '230305', '230300', '3');
INSERT INTO `oma_area` VALUES ('7618', '麻山区', '230307', '230300', '3');
INSERT INTO `oma_area` VALUES ('7619', '密山市', '230382', '230300', '3');
INSERT INTO `oma_area` VALUES ('7620', '黑河市', '231100', '230000', '2');
INSERT INTO `oma_area` VALUES ('7621', '爱辉区', '231102', '231100', '3');
INSERT INTO `oma_area` VALUES ('7622', '北安市', '231181', '231100', '3');
INSERT INTO `oma_area` VALUES ('7623', '嫩江县', '231121', '231100', '3');
INSERT INTO `oma_area` VALUES ('7624', '孙吴县', '231124', '231100', '3');
INSERT INTO `oma_area` VALUES ('7625', '五大连池市', '231182', '231100', '3');
INSERT INTO `oma_area` VALUES ('7626', '逊克县', '231123', '231100', '3');
INSERT INTO `oma_area` VALUES ('7627', '佳木斯市', '230800', '230000', '2');
INSERT INTO `oma_area` VALUES ('7628', '东风区', '230805', '230800', '3');
INSERT INTO `oma_area` VALUES ('7629', '富锦市', '230882', '230800', '3');
INSERT INTO `oma_area` VALUES ('7630', '抚远市', '230883', '230800', '3');
INSERT INTO `oma_area` VALUES ('7631', '桦川县', '230826', '230800', '3');
INSERT INTO `oma_area` VALUES ('7632', '桦南县', '230822', '230800', '3');
INSERT INTO `oma_area` VALUES ('7633', '郊区', '230811', '230800', '3');
INSERT INTO `oma_area` VALUES ('7634', '前进区', '230804', '230800', '3');
INSERT INTO `oma_area` VALUES ('7635', '汤原县', '230828', '230800', '3');
INSERT INTO `oma_area` VALUES ('7636', '同江市', '230881', '230800', '3');
INSERT INTO `oma_area` VALUES ('7637', '向阳区', '230803', '230800', '3');
INSERT INTO `oma_area` VALUES ('7638', '牡丹江市', '231000', '230000', '2');
INSERT INTO `oma_area` VALUES ('7639', '爱民区', '231004', '231000', '3');
INSERT INTO `oma_area` VALUES ('7640', '东宁市', '231086', '231000', '3');
INSERT INTO `oma_area` VALUES ('7641', '东安区', '231002', '231000', '3');
INSERT INTO `oma_area` VALUES ('7642', '海林市', '231083', '231000', '3');
INSERT INTO `oma_area` VALUES ('7643', '林口县', '231025', '231000', '3');
INSERT INTO `oma_area` VALUES ('7644', '穆棱市', '231085', '231000', '3');
INSERT INTO `oma_area` VALUES ('7645', '宁安市', '231084', '231000', '3');
INSERT INTO `oma_area` VALUES ('7646', '绥芬河市', '231081', '231000', '3');
INSERT INTO `oma_area` VALUES ('7647', '西安区', '231005', '231000', '3');
INSERT INTO `oma_area` VALUES ('7648', '阳明区', '231003', '231000', '3');
INSERT INTO `oma_area` VALUES ('7649', '七台河市', '230900', '230000', '2');
INSERT INTO `oma_area` VALUES ('7650', '勃利县', '230921', '230900', '3');
INSERT INTO `oma_area` VALUES ('7651', '茄子河区', '230904', '230900', '3');
INSERT INTO `oma_area` VALUES ('7652', '桃山区', '230903', '230900', '3');
INSERT INTO `oma_area` VALUES ('7653', '新兴区', '230902', '230900', '3');
INSERT INTO `oma_area` VALUES ('7654', '齐齐哈尔市', '230200', '230000', '2');
INSERT INTO `oma_area` VALUES ('7655', '昂昂溪区', '230205', '230200', '3');
INSERT INTO `oma_area` VALUES ('7656', '拜泉县', '230231', '230200', '3');
INSERT INTO `oma_area` VALUES ('7657', '富拉尔基区', '230206', '230200', '3');
INSERT INTO `oma_area` VALUES ('7658', '富裕县', '230227', '230200', '3');
INSERT INTO `oma_area` VALUES ('7659', '甘南县', '230225', '230200', '3');
INSERT INTO `oma_area` VALUES ('7660', '建华区', '230203', '230200', '3');
INSERT INTO `oma_area` VALUES ('7661', '克山县', '230229', '230200', '3');
INSERT INTO `oma_area` VALUES ('7662', '克东县', '230230', '230200', '3');
INSERT INTO `oma_area` VALUES ('7663', '龙沙区', '230202', '230200', '3');
INSERT INTO `oma_area` VALUES ('7664', '龙江县', '230221', '230200', '3');
INSERT INTO `oma_area` VALUES ('7665', '梅里斯达斡尔族区', '230208', '230200', '3');
INSERT INTO `oma_area` VALUES ('7666', '讷河市', '230281', '230200', '3');
INSERT INTO `oma_area` VALUES ('7667', '碾子山区', '230207', '230200', '3');
INSERT INTO `oma_area` VALUES ('7668', '泰来县', '230224', '230200', '3');
INSERT INTO `oma_area` VALUES ('7669', '铁锋区', '230204', '230200', '3');
INSERT INTO `oma_area` VALUES ('7670', '依安县', '230223', '230200', '3');
INSERT INTO `oma_area` VALUES ('7671', '绥化市', '231200', '230000', '2');
INSERT INTO `oma_area` VALUES ('7672', '安达市', '231281', '231200', '3');
INSERT INTO `oma_area` VALUES ('7673', '北林区', '231202', '231200', '3');
INSERT INTO `oma_area` VALUES ('7674', '海伦市', '231283', '231200', '3');
INSERT INTO `oma_area` VALUES ('7675', '兰西县', '231222', '231200', '3');
INSERT INTO `oma_area` VALUES ('7676', '明水县', '231225', '231200', '3');
INSERT INTO `oma_area` VALUES ('7677', '青冈县', '231223', '231200', '3');
INSERT INTO `oma_area` VALUES ('7678', '庆安县', '231224', '231200', '3');
INSERT INTO `oma_area` VALUES ('7679', '绥棱县', '231226', '231200', '3');
INSERT INTO `oma_area` VALUES ('7680', '望奎县', '231221', '231200', '3');
INSERT INTO `oma_area` VALUES ('7681', '肇东市', '231282', '231200', '3');
INSERT INTO `oma_area` VALUES ('7682', '双鸭山市', '230500', '230000', '2');
INSERT INTO `oma_area` VALUES ('7683', '宝山区', '230506', '230500', '3');
INSERT INTO `oma_area` VALUES ('7684', '宝清县', '230523', '230500', '3');
INSERT INTO `oma_area` VALUES ('7685', '集贤县', '230521', '230500', '3');
INSERT INTO `oma_area` VALUES ('7686', '尖山区', '230502', '230500', '3');
INSERT INTO `oma_area` VALUES ('7687', '岭东区', '230503', '230500', '3');
INSERT INTO `oma_area` VALUES ('7688', '饶河县', '230524', '230500', '3');
INSERT INTO `oma_area` VALUES ('7689', '四方台区', '230505', '230500', '3');
INSERT INTO `oma_area` VALUES ('7690', '友谊县', '230522', '230500', '3');
INSERT INTO `oma_area` VALUES ('7691', '伊春市', '230700', '230000', '2');
INSERT INTO `oma_area` VALUES ('7692', '翠峦区', '230706', '230700', '3');
INSERT INTO `oma_area` VALUES ('7693', '带岭区', '230713', '230700', '3');
INSERT INTO `oma_area` VALUES ('7694', '红星区', '230715', '230700', '3');
INSERT INTO `oma_area` VALUES ('7695', '嘉荫县', '230722', '230700', '3');
INSERT INTO `oma_area` VALUES ('7696', '金山屯区', '230709', '230700', '3');
INSERT INTO `oma_area` VALUES ('7697', '美溪区', '230708', '230700', '3');
INSERT INTO `oma_area` VALUES ('7698', '南岔区', '230703', '230700', '3');
INSERT INTO `oma_area` VALUES ('7699', '上甘岭区', '230716', '230700', '3');
INSERT INTO `oma_area` VALUES ('7700', '汤旺河区', '230712', '230700', '3');
INSERT INTO `oma_area` VALUES ('7701', '铁力市', '230781', '230700', '3');
INSERT INTO `oma_area` VALUES ('7702', '乌马河区', '230711', '230700', '3');
INSERT INTO `oma_area` VALUES ('7703', '乌伊岭区', '230714', '230700', '3');
INSERT INTO `oma_area` VALUES ('7704', '五营区', '230710', '230700', '3');
INSERT INTO `oma_area` VALUES ('7705', '西林区', '230705', '230700', '3');
INSERT INTO `oma_area` VALUES ('7706', '新青区', '230707', '230700', '3');
INSERT INTO `oma_area` VALUES ('7707', '伊春区', '230702', '230700', '3');
INSERT INTO `oma_area` VALUES ('7708', '友好区', '230704', '230700', '3');
INSERT INTO `oma_area` VALUES ('7709', '内蒙古自治区', '150000', '', '1');
INSERT INTO `oma_area` VALUES ('7710', '阿拉善盟', '152900', '150000', '2');
INSERT INTO `oma_area` VALUES ('7711', '阿拉善右旗', '152922', '152900', '3');
INSERT INTO `oma_area` VALUES ('7712', '阿拉善左旗', '152921', '152900', '3');
INSERT INTO `oma_area` VALUES ('7713', '额济纳旗', '152923', '152900', '3');
INSERT INTO `oma_area` VALUES ('7714', '巴彦淖尔市', '150800', '150000', '2');
INSERT INTO `oma_area` VALUES ('7715', '磴口县', '150822', '150800', '3');
INSERT INTO `oma_area` VALUES ('7716', '杭锦后旗', '150826', '150800', '3');
INSERT INTO `oma_area` VALUES ('7717', '临河区', '150802', '150800', '3');
INSERT INTO `oma_area` VALUES ('7718', '乌拉特前旗', '150823', '150800', '3');
INSERT INTO `oma_area` VALUES ('7719', '乌拉特中旗', '150824', '150800', '3');
INSERT INTO `oma_area` VALUES ('7720', '乌拉特后旗', '150825', '150800', '3');
INSERT INTO `oma_area` VALUES ('7721', '五原县', '150821', '150800', '3');
INSERT INTO `oma_area` VALUES ('7722', '包头市', '150200', '150000', '2');
INSERT INTO `oma_area` VALUES ('7723', '白云鄂博矿区', '150206', '150200', '3');
INSERT INTO `oma_area` VALUES ('7724', '达尔罕茂明安联合旗', '150223', '150200', '3');
INSERT INTO `oma_area` VALUES ('7725', '东河区', '150202', '150200', '3');
INSERT INTO `oma_area` VALUES ('7726', '固阳县', '150222', '150200', '3');
INSERT INTO `oma_area` VALUES ('7727', '九原区', '150207', '150200', '3');
INSERT INTO `oma_area` VALUES ('7728', '昆都仑区', '150203', '150200', '3');
INSERT INTO `oma_area` VALUES ('7729', '青山区', '150204', '150200', '3');
INSERT INTO `oma_area` VALUES ('7730', '石拐区', '150205', '150200', '3');
INSERT INTO `oma_area` VALUES ('7731', '土默特右旗', '150221', '150200', '3');
INSERT INTO `oma_area` VALUES ('7732', '赤峰市', '150400', '150000', '2');
INSERT INTO `oma_area` VALUES ('7733', '阿鲁科尔沁旗', '150421', '150400', '3');
INSERT INTO `oma_area` VALUES ('7734', '敖汉旗', '150430', '150400', '3');
INSERT INTO `oma_area` VALUES ('7735', '巴林右旗', '150423', '150400', '3');
INSERT INTO `oma_area` VALUES ('7736', '巴林左旗', '150422', '150400', '3');
INSERT INTO `oma_area` VALUES ('7737', '红山区', '150402', '150400', '3');
INSERT INTO `oma_area` VALUES ('7738', '喀喇沁旗', '150428', '150400', '3');
INSERT INTO `oma_area` VALUES ('7739', '克什克腾旗', '150425', '150400', '3');
INSERT INTO `oma_area` VALUES ('7740', '林西县', '150424', '150400', '3');
INSERT INTO `oma_area` VALUES ('7741', '宁城县', '150429', '150400', '3');
INSERT INTO `oma_area` VALUES ('7742', '松山区', '150404', '150400', '3');
INSERT INTO `oma_area` VALUES ('7743', '翁牛特旗', '150426', '150400', '3');
INSERT INTO `oma_area` VALUES ('7744', '元宝山区', '150403', '150400', '3');
INSERT INTO `oma_area` VALUES ('7745', '鄂尔多斯市', '150600', '150000', '2');
INSERT INTO `oma_area` VALUES ('7746', '达拉特旗', '150621', '150600', '3');
INSERT INTO `oma_area` VALUES ('7747', '东胜区', '150602', '150600', '3');
INSERT INTO `oma_area` VALUES ('7748', '鄂托克旗', '150624', '150600', '3');
INSERT INTO `oma_area` VALUES ('7749', '鄂托克前旗', '150623', '150600', '3');
INSERT INTO `oma_area` VALUES ('7750', '杭锦旗', '150625', '150600', '3');
INSERT INTO `oma_area` VALUES ('7751', '康巴什区', '150603', '150600', '3');
INSERT INTO `oma_area` VALUES ('7752', '乌审旗', '150626', '150600', '3');
INSERT INTO `oma_area` VALUES ('7753', '伊金霍洛旗', '150627', '150600', '3');
INSERT INTO `oma_area` VALUES ('7754', '准格尔旗', '150622', '150600', '3');
INSERT INTO `oma_area` VALUES ('7755', '呼和浩特市', '150100', '150000', '2');
INSERT INTO `oma_area` VALUES ('7756', '和林格尔县', '150123', '150100', '3');
INSERT INTO `oma_area` VALUES ('7757', '回民区', '150103', '150100', '3');
INSERT INTO `oma_area` VALUES ('7758', '清水河县', '150124', '150100', '3');
INSERT INTO `oma_area` VALUES ('7759', '赛罕区', '150105', '150100', '3');
INSERT INTO `oma_area` VALUES ('7760', '托克托县', '150122', '150100', '3');
INSERT INTO `oma_area` VALUES ('7761', '土默特左旗', '150121', '150100', '3');
INSERT INTO `oma_area` VALUES ('7762', '武川县', '150125', '150100', '3');
INSERT INTO `oma_area` VALUES ('7763', '新城区', '150102', '150100', '3');
INSERT INTO `oma_area` VALUES ('7764', '玉泉区', '150104', '150100', '3');
INSERT INTO `oma_area` VALUES ('7765', '呼伦贝尔市', '150700', '150000', '2');
INSERT INTO `oma_area` VALUES ('7766', '阿荣旗', '150721', '150700', '3');
INSERT INTO `oma_area` VALUES ('7767', '陈巴尔虎旗', '150725', '150700', '3');
INSERT INTO `oma_area` VALUES ('7768', '额尔古纳市', '150784', '150700', '3');
INSERT INTO `oma_area` VALUES ('7769', '鄂伦春自治旗', '150723', '150700', '3');
INSERT INTO `oma_area` VALUES ('7770', '鄂温克族自治旗', '150724', '150700', '3');
INSERT INTO `oma_area` VALUES ('7771', '根河市', '150785', '150700', '3');
INSERT INTO `oma_area` VALUES ('7772', '海拉尔区', '150702', '150700', '3');
INSERT INTO `oma_area` VALUES ('7773', '满洲里市', '150781', '150700', '3');
INSERT INTO `oma_area` VALUES ('7774', '莫力达瓦达斡尔族自治旗', '150722', '150700', '3');
INSERT INTO `oma_area` VALUES ('7775', '新巴尔虎右旗', '150727', '150700', '3');
INSERT INTO `oma_area` VALUES ('7776', '新巴尔虎左旗', '150726', '150700', '3');
INSERT INTO `oma_area` VALUES ('7777', '牙克石市', '150782', '150700', '3');
INSERT INTO `oma_area` VALUES ('7778', '扎兰屯市', '150783', '150700', '3');
INSERT INTO `oma_area` VALUES ('7779', '扎赉诺尔区', '150703', '150700', '3');
INSERT INTO `oma_area` VALUES ('7780', '乌海市', '150300', '150000', '2');
INSERT INTO `oma_area` VALUES ('7781', '海南区', '150303', '150300', '3');
INSERT INTO `oma_area` VALUES ('7782', '海勃湾区', '150302', '150300', '3');
INSERT INTO `oma_area` VALUES ('7783', '乌达区', '150304', '150300', '3');
INSERT INTO `oma_area` VALUES ('7784', '乌兰察布市', '150900', '150000', '2');
INSERT INTO `oma_area` VALUES ('7785', '察哈尔右翼后旗', '150928', '150900', '3');
INSERT INTO `oma_area` VALUES ('7786', '察哈尔右翼中旗', '150927', '150900', '3');
INSERT INTO `oma_area` VALUES ('7787', '察哈尔右翼前旗', '150926', '150900', '3');
INSERT INTO `oma_area` VALUES ('7788', '丰镇市', '150981', '150900', '3');
INSERT INTO `oma_area` VALUES ('7789', '化德县', '150922', '150900', '3');
INSERT INTO `oma_area` VALUES ('7790', '集宁区', '150902', '150900', '3');
INSERT INTO `oma_area` VALUES ('7791', '凉城县', '150925', '150900', '3');
INSERT INTO `oma_area` VALUES ('7792', '商都县', '150923', '150900', '3');
INSERT INTO `oma_area` VALUES ('7793', '四子王旗', '150929', '150900', '3');
INSERT INTO `oma_area` VALUES ('7794', '兴和县', '150924', '150900', '3');
INSERT INTO `oma_area` VALUES ('7795', '卓资县', '150921', '150900', '3');
INSERT INTO `oma_area` VALUES ('7796', '锡林郭勒盟', '152500', '150000', '2');
INSERT INTO `oma_area` VALUES ('7797', '阿巴嘎旗', '152522', '152500', '3');
INSERT INTO `oma_area` VALUES ('7798', '东乌珠穆沁旗', '152525', '152500', '3');
INSERT INTO `oma_area` VALUES ('7799', '多伦县', '152531', '152500', '3');
INSERT INTO `oma_area` VALUES ('7800', '二连浩特市', '152501', '152500', '3');
INSERT INTO `oma_area` VALUES ('7801', '苏尼特右旗', '152524', '152500', '3');
INSERT INTO `oma_area` VALUES ('7802', '苏尼特左旗', '152523', '152500', '3');
INSERT INTO `oma_area` VALUES ('7803', '太仆寺旗', '152527', '152500', '3');
INSERT INTO `oma_area` VALUES ('7804', '锡林浩特市', '152502', '152500', '3');
INSERT INTO `oma_area` VALUES ('7805', '西乌珠穆沁旗', '152526', '152500', '3');
INSERT INTO `oma_area` VALUES ('7806', '镶黄旗', '152528', '152500', '3');
INSERT INTO `oma_area` VALUES ('7807', '正蓝旗', '152530', '152500', '3');
INSERT INTO `oma_area` VALUES ('7808', '正镶白旗', '152529', '152500', '3');
INSERT INTO `oma_area` VALUES ('7809', '通辽市', '150500', '150000', '2');
INSERT INTO `oma_area` VALUES ('7810', '霍林郭勒市', '150581', '150500', '3');
INSERT INTO `oma_area` VALUES ('7811', '开鲁县', '150523', '150500', '3');
INSERT INTO `oma_area` VALUES ('7812', '科尔沁区', '150502', '150500', '3');
INSERT INTO `oma_area` VALUES ('7813', '科尔沁左翼中旗', '150521', '150500', '3');
INSERT INTO `oma_area` VALUES ('7814', '科尔沁左翼后旗', '150522', '150500', '3');
INSERT INTO `oma_area` VALUES ('7815', '库伦旗', '150524', '150500', '3');
INSERT INTO `oma_area` VALUES ('7816', '奈曼旗', '150525', '150500', '3');
INSERT INTO `oma_area` VALUES ('7817', '扎鲁特旗', '150526', '150500', '3');
INSERT INTO `oma_area` VALUES ('7818', '兴安盟', '152200', '150000', '2');
INSERT INTO `oma_area` VALUES ('7819', '阿尔山市', '152202', '152200', '3');
INSERT INTO `oma_area` VALUES ('7820', '科尔沁右翼前旗', '152221', '152200', '3');
INSERT INTO `oma_area` VALUES ('7821', '科尔沁右翼中旗', '152222', '152200', '3');
INSERT INTO `oma_area` VALUES ('7822', '突泉县', '152224', '152200', '3');
INSERT INTO `oma_area` VALUES ('7823', '乌兰浩特市', '152201', '152200', '3');
INSERT INTO `oma_area` VALUES ('7824', '扎赉特旗', '152223', '152200', '3');
INSERT INTO `oma_area` VALUES ('7825', '宁夏回族自治区', '640000', '', '1');
INSERT INTO `oma_area` VALUES ('7826', '固原市', '640400', '640000', '2');
INSERT INTO `oma_area` VALUES ('7827', '泾源县', '640424', '640400', '3');
INSERT INTO `oma_area` VALUES ('7828', '隆德县', '640423', '640400', '3');
INSERT INTO `oma_area` VALUES ('7829', '彭阳县', '640425', '640400', '3');
INSERT INTO `oma_area` VALUES ('7830', '西吉县', '640422', '640400', '3');
INSERT INTO `oma_area` VALUES ('7831', '原州区', '640402', '640400', '3');
INSERT INTO `oma_area` VALUES ('7832', '石嘴山市', '640200', '640000', '2');
INSERT INTO `oma_area` VALUES ('7833', '大武口区', '640202', '640200', '3');
INSERT INTO `oma_area` VALUES ('7834', '惠农区', '640205', '640200', '3');
INSERT INTO `oma_area` VALUES ('7835', '平罗县', '640221', '640200', '3');
INSERT INTO `oma_area` VALUES ('7836', '吴忠市', '640300', '640000', '2');
INSERT INTO `oma_area` VALUES ('7837', '红寺堡区', '640303', '640300', '3');
INSERT INTO `oma_area` VALUES ('7838', '利通区', '640302', '640300', '3');
INSERT INTO `oma_area` VALUES ('7839', '青铜峡市', '640381', '640300', '3');
INSERT INTO `oma_area` VALUES ('7840', '同心县', '640324', '640300', '3');
INSERT INTO `oma_area` VALUES ('7841', '盐池县', '640323', '640300', '3');
INSERT INTO `oma_area` VALUES ('7842', '银川市', '640100', '640000', '2');
INSERT INTO `oma_area` VALUES ('7843', '贺兰县', '640122', '640100', '3');
INSERT INTO `oma_area` VALUES ('7844', '金凤区', '640106', '640100', '3');
INSERT INTO `oma_area` VALUES ('7845', '灵武市', '640181', '640100', '3');
INSERT INTO `oma_area` VALUES ('7846', '西夏区', '640105', '640100', '3');
INSERT INTO `oma_area` VALUES ('7847', '兴庆区', '640104', '640100', '3');
INSERT INTO `oma_area` VALUES ('7848', '永宁县', '640121', '640100', '3');
INSERT INTO `oma_area` VALUES ('7849', '中卫市', '640500', '640000', '2');
INSERT INTO `oma_area` VALUES ('7850', '海原县', '640522', '640500', '3');
INSERT INTO `oma_area` VALUES ('7851', '沙坡头区', '640502', '640500', '3');
INSERT INTO `oma_area` VALUES ('7852', '中宁县', '640521', '640500', '3');
INSERT INTO `oma_area` VALUES ('7853', '江西省', '360000', '', '1');
INSERT INTO `oma_area` VALUES ('7854', '抚州市', '361000', '360000', '2');
INSERT INTO `oma_area` VALUES ('7855', '崇仁县', '361024', '361000', '3');
INSERT INTO `oma_area` VALUES ('7856', '东乡区', '361003', '361000', '3');
INSERT INTO `oma_area` VALUES ('7857', '广昌县', '361030', '361000', '3');
INSERT INTO `oma_area` VALUES ('7858', '金溪县', '361027', '361000', '3');
INSERT INTO `oma_area` VALUES ('7859', '黎川县', '361022', '361000', '3');
INSERT INTO `oma_area` VALUES ('7860', '乐安县', '361025', '361000', '3');
INSERT INTO `oma_area` VALUES ('7861', '临川区', '361002', '361000', '3');
INSERT INTO `oma_area` VALUES ('7862', '南城县', '361021', '361000', '3');
INSERT INTO `oma_area` VALUES ('7863', '南丰县', '361023', '361000', '3');
INSERT INTO `oma_area` VALUES ('7864', '宜黄县', '361026', '361000', '3');
INSERT INTO `oma_area` VALUES ('7865', '资溪县', '361028', '361000', '3');
INSERT INTO `oma_area` VALUES ('7866', '赣州市', '360700', '360000', '2');
INSERT INTO `oma_area` VALUES ('7867', '安远县', '360726', '360700', '3');
INSERT INTO `oma_area` VALUES ('7868', '崇义县', '360725', '360700', '3');
INSERT INTO `oma_area` VALUES ('7869', '大余县', '360723', '360700', '3');
INSERT INTO `oma_area` VALUES ('7870', '定南县', '360728', '360700', '3');
INSERT INTO `oma_area` VALUES ('7871', '赣县区', '360704', '360700', '3');
INSERT INTO `oma_area` VALUES ('7872', '会昌县', '360733', '360700', '3');
INSERT INTO `oma_area` VALUES ('7873', '龙南县', '360727', '360700', '3');
INSERT INTO `oma_area` VALUES ('7874', '南康区', '360703', '360700', '3');
INSERT INTO `oma_area` VALUES ('7875', '宁都县', '360730', '360700', '3');
INSERT INTO `oma_area` VALUES ('7876', '全南县', '360729', '360700', '3');
INSERT INTO `oma_area` VALUES ('7877', '瑞金市', '360781', '360700', '3');
INSERT INTO `oma_area` VALUES ('7878', '上犹县', '360724', '360700', '3');
INSERT INTO `oma_area` VALUES ('7879', '石城县', '360735', '360700', '3');
INSERT INTO `oma_area` VALUES ('7880', '兴国县', '360732', '360700', '3');
INSERT INTO `oma_area` VALUES ('7881', '信丰县', '360722', '360700', '3');
INSERT INTO `oma_area` VALUES ('7882', '寻乌县', '360734', '360700', '3');
INSERT INTO `oma_area` VALUES ('7883', '于都县', '360731', '360700', '3');
INSERT INTO `oma_area` VALUES ('7884', '章贡区', '360702', '360700', '3');
INSERT INTO `oma_area` VALUES ('7885', '吉安市', '360800', '360000', '2');
INSERT INTO `oma_area` VALUES ('7886', '安福县', '360829', '360800', '3');
INSERT INTO `oma_area` VALUES ('7887', '吉州区', '360802', '360800', '3');
INSERT INTO `oma_area` VALUES ('7888', '吉安县', '360821', '360800', '3');
INSERT INTO `oma_area` VALUES ('7889', '吉水县', '360822', '360800', '3');
INSERT INTO `oma_area` VALUES ('7890', '井冈山市', '360881', '360800', '3');
INSERT INTO `oma_area` VALUES ('7891', '青原区', '360803', '360800', '3');
INSERT INTO `oma_area` VALUES ('7892', '泰和县', '360826', '360800', '3');
INSERT INTO `oma_area` VALUES ('7893', '遂川县', '360827', '360800', '3');
INSERT INTO `oma_area` VALUES ('7894', '万安县', '360828', '360800', '3');
INSERT INTO `oma_area` VALUES ('7895', '峡江县', '360823', '360800', '3');
INSERT INTO `oma_area` VALUES ('7896', '新干县', '360824', '360800', '3');
INSERT INTO `oma_area` VALUES ('7897', '永新县', '360830', '360800', '3');
INSERT INTO `oma_area` VALUES ('7898', '永丰县', '360825', '360800', '3');
INSERT INTO `oma_area` VALUES ('7899', '景德镇市', '360200', '360000', '2');
INSERT INTO `oma_area` VALUES ('7900', '昌江区', '360202', '360200', '3');
INSERT INTO `oma_area` VALUES ('7901', '浮梁县', '360222', '360200', '3');
INSERT INTO `oma_area` VALUES ('7902', '乐平市', '360281', '360200', '3');
INSERT INTO `oma_area` VALUES ('7903', '珠山区', '360203', '360200', '3');
INSERT INTO `oma_area` VALUES ('7904', '九江市', '360400', '360000', '2');
INSERT INTO `oma_area` VALUES ('7905', '德安县', '360426', '360400', '3');
INSERT INTO `oma_area` VALUES ('7906', '都昌县', '360428', '360400', '3');
INSERT INTO `oma_area` VALUES ('7907', '共青城市', '360482', '360400', '3');
INSERT INTO `oma_area` VALUES ('7908', '湖口县', '360429', '360400', '3');
INSERT INTO `oma_area` VALUES ('7909', '九江县', '360421', '360400', '3');
INSERT INTO `oma_area` VALUES ('7910', '濂溪区', '360402', '360400', '3');
INSERT INTO `oma_area` VALUES ('7911', '庐山市', '360483', '360400', '3');
INSERT INTO `oma_area` VALUES ('7912', '彭泽县', '360430', '360400', '3');
INSERT INTO `oma_area` VALUES ('7913', '瑞昌市', '360481', '360400', '3');
INSERT INTO `oma_area` VALUES ('7914', '武宁县', '360423', '360400', '3');
INSERT INTO `oma_area` VALUES ('7915', '修水县', '360424', '360400', '3');
INSERT INTO `oma_area` VALUES ('7916', '浔阳区', '360403', '360400', '3');
INSERT INTO `oma_area` VALUES ('7917', '永修县', '360425', '360400', '3');
INSERT INTO `oma_area` VALUES ('7918', '南昌市', '360100', '360000', '2');
INSERT INTO `oma_area` VALUES ('7919', '安义县', '360123', '360100', '3');
INSERT INTO `oma_area` VALUES ('7920', '东湖区', '360102', '360100', '3');
INSERT INTO `oma_area` VALUES ('7921', '进贤县', '360124', '360100', '3');
INSERT INTO `oma_area` VALUES ('7922', '南昌县', '360121', '360100', '3');
INSERT INTO `oma_area` VALUES ('7923', '青云谱区', '360104', '360100', '3');
INSERT INTO `oma_area` VALUES ('7924', '青山湖区', '360111', '360100', '3');
INSERT INTO `oma_area` VALUES ('7925', '湾里区', '360105', '360100', '3');
INSERT INTO `oma_area` VALUES ('7926', '西湖区', '360103', '360100', '3');
INSERT INTO `oma_area` VALUES ('7927', '新建区', '360112', '360100', '3');
INSERT INTO `oma_area` VALUES ('7928', '萍乡市', '360300', '360000', '2');
INSERT INTO `oma_area` VALUES ('7929', '安源区', '360302', '360300', '3');
INSERT INTO `oma_area` VALUES ('7930', '莲花县', '360321', '360300', '3');
INSERT INTO `oma_area` VALUES ('7931', '芦溪县', '360323', '360300', '3');
INSERT INTO `oma_area` VALUES ('7932', '上栗县', '360322', '360300', '3');
INSERT INTO `oma_area` VALUES ('7933', '湘东区', '360313', '360300', '3');
INSERT INTO `oma_area` VALUES ('7934', '上饶市', '361100', '360000', '2');
INSERT INTO `oma_area` VALUES ('7935', '德兴市', '361181', '361100', '3');
INSERT INTO `oma_area` VALUES ('7936', '广丰区', '361103', '361100', '3');
INSERT INTO `oma_area` VALUES ('7937', '横峰县', '361125', '361100', '3');
INSERT INTO `oma_area` VALUES ('7938', '鄱阳县', '361128', '361100', '3');
INSERT INTO `oma_area` VALUES ('7939', '铅山县', '361124', '361100', '3');
INSERT INTO `oma_area` VALUES ('7940', '上饶县', '361121', '361100', '3');
INSERT INTO `oma_area` VALUES ('7941', '万年县', '361129', '361100', '3');
INSERT INTO `oma_area` VALUES ('7942', '婺源县', '361130', '361100', '3');
INSERT INTO `oma_area` VALUES ('7943', '信州区', '361102', '361100', '3');
INSERT INTO `oma_area` VALUES ('7944', '弋阳县', '361126', '361100', '3');
INSERT INTO `oma_area` VALUES ('7945', '余干县', '361127', '361100', '3');
INSERT INTO `oma_area` VALUES ('7946', '玉山县', '361123', '361100', '3');
INSERT INTO `oma_area` VALUES ('7947', '新余市', '360500', '360000', '2');
INSERT INTO `oma_area` VALUES ('7948', '分宜县', '360521', '360500', '3');
INSERT INTO `oma_area` VALUES ('7949', '渝水区', '360502', '360500', '3');
INSERT INTO `oma_area` VALUES ('7950', '宜春市', '360900', '360000', '2');
INSERT INTO `oma_area` VALUES ('7951', '奉新县', '360921', '360900', '3');
INSERT INTO `oma_area` VALUES ('7952', '丰城市', '360981', '360900', '3');
INSERT INTO `oma_area` VALUES ('7953', '高安市', '360983', '360900', '3');
INSERT INTO `oma_area` VALUES ('7954', '靖安县', '360925', '360900', '3');
INSERT INTO `oma_area` VALUES ('7955', '上高县', '360923', '360900', '3');
INSERT INTO `oma_area` VALUES ('7956', '铜鼓县', '360926', '360900', '3');
INSERT INTO `oma_area` VALUES ('7957', '万载县', '360922', '360900', '3');
INSERT INTO `oma_area` VALUES ('7958', '宜丰县', '360924', '360900', '3');
INSERT INTO `oma_area` VALUES ('7959', '袁州区', '360902', '360900', '3');
INSERT INTO `oma_area` VALUES ('7960', '樟树市', '360982', '360900', '3');
INSERT INTO `oma_area` VALUES ('7961', '鹰潭市', '360600', '360000', '2');
INSERT INTO `oma_area` VALUES ('7962', '贵溪市', '360681', '360600', '3');
INSERT INTO `oma_area` VALUES ('7963', '余江县', '360622', '360600', '3');
INSERT INTO `oma_area` VALUES ('7964', '月湖区', '360602', '360600', '3');
INSERT INTO `oma_area` VALUES ('7965', '江苏省', '320000', '', '1');
INSERT INTO `oma_area` VALUES ('7966', '常州市', '320400', '320000', '2');
INSERT INTO `oma_area` VALUES ('7967', '金坛区', '320413', '320400', '3');
INSERT INTO `oma_area` VALUES ('7968', '溧阳市', '320481', '320400', '3');
INSERT INTO `oma_area` VALUES ('7969', '天宁区', '320402', '320400', '3');
INSERT INTO `oma_area` VALUES ('7970', '武进区', '320412', '320400', '3');
INSERT INTO `oma_area` VALUES ('7971', '新北区', '320411', '320400', '3');
INSERT INTO `oma_area` VALUES ('7972', '钟楼区', '320404', '320400', '3');
INSERT INTO `oma_area` VALUES ('7973', '淮安市', '320800', '320000', '2');
INSERT INTO `oma_area` VALUES ('7974', '洪泽区', '320813', '320800', '3');
INSERT INTO `oma_area` VALUES ('7975', '淮安区', '320803', '320800', '3');
INSERT INTO `oma_area` VALUES ('7976', '淮阴区', '320804', '320800', '3');
INSERT INTO `oma_area` VALUES ('7977', '金湖县', '320831', '320800', '3');
INSERT INTO `oma_area` VALUES ('7978', '涟水县', '320826', '320800', '3');
INSERT INTO `oma_area` VALUES ('7979', '清江浦区', '320812', '320800', '3');
INSERT INTO `oma_area` VALUES ('7980', '盱眙县', '320830', '320800', '3');
INSERT INTO `oma_area` VALUES ('7981', '连云港市', '320700', '320000', '2');
INSERT INTO `oma_area` VALUES ('7982', '东海县', '320722', '320700', '3');
INSERT INTO `oma_area` VALUES ('7983', '赣榆区', '320707', '320700', '3');
INSERT INTO `oma_area` VALUES ('7984', '灌南县', '320724', '320700', '3');
INSERT INTO `oma_area` VALUES ('7985', '灌云县', '320723', '320700', '3');
INSERT INTO `oma_area` VALUES ('7986', '海州区', '320706', '320700', '3');
INSERT INTO `oma_area` VALUES ('7987', '连云区', '320703', '320700', '3');
INSERT INTO `oma_area` VALUES ('7988', '南京市', '320100', '320000', '2');
INSERT INTO `oma_area` VALUES ('7989', '高淳区', '320118', '320100', '3');
INSERT INTO `oma_area` VALUES ('7990', '鼓楼区', '320106', '320100', '3');
INSERT INTO `oma_area` VALUES ('7991', '江宁区', '320115', '320100', '3');
INSERT INTO `oma_area` VALUES ('7992', '建邺区', '320105', '320100', '3');
INSERT INTO `oma_area` VALUES ('7993', '溧水区', '320117', '320100', '3');
INSERT INTO `oma_area` VALUES ('7994', '六合区', '320116', '320100', '3');
INSERT INTO `oma_area` VALUES ('7995', '浦口区', '320111', '320100', '3');
INSERT INTO `oma_area` VALUES ('7996', '栖霞区', '320113', '320100', '3');
INSERT INTO `oma_area` VALUES ('7997', '秦淮区', '320104', '320100', '3');
INSERT INTO `oma_area` VALUES ('7998', '玄武区', '320102', '320100', '3');
INSERT INTO `oma_area` VALUES ('7999', '雨花台区', '320114', '320100', '3');
INSERT INTO `oma_area` VALUES ('8000', '南通市', '320600', '320000', '2');
INSERT INTO `oma_area` VALUES ('8001', '崇川区', '320602', '320600', '3');
INSERT INTO `oma_area` VALUES ('8002', '港闸区', '320611', '320600', '3');
INSERT INTO `oma_area` VALUES ('8003', '海安县', '320621', '320600', '3');
INSERT INTO `oma_area` VALUES ('8004', '海门市', '320684', '320600', '3');
INSERT INTO `oma_area` VALUES ('8005', '启东市', '320681', '320600', '3');
INSERT INTO `oma_area` VALUES ('8006', '如东县', '320623', '320600', '3');
INSERT INTO `oma_area` VALUES ('8007', '如皋市', '320682', '320600', '3');
INSERT INTO `oma_area` VALUES ('8008', '通州区', '320612', '320600', '3');
INSERT INTO `oma_area` VALUES ('8009', '宿迁市', '321300', '320000', '2');
INSERT INTO `oma_area` VALUES ('8010', '沭阳县', '321322', '321300', '3');
INSERT INTO `oma_area` VALUES ('8011', '泗洪县', '321324', '321300', '3');
INSERT INTO `oma_area` VALUES ('8012', '泗阳县', '321323', '321300', '3');
INSERT INTO `oma_area` VALUES ('8013', '宿豫区', '321311', '321300', '3');
INSERT INTO `oma_area` VALUES ('8014', '宿城区', '321302', '321300', '3');
INSERT INTO `oma_area` VALUES ('8015', '苏州市', '320500', '320000', '2');
INSERT INTO `oma_area` VALUES ('8016', '常熟市', '320581', '320500', '3');
INSERT INTO `oma_area` VALUES ('8017', '姑苏区', '320508', '320500', '3');
INSERT INTO `oma_area` VALUES ('8018', '虎丘区', '320505', '320500', '3');
INSERT INTO `oma_area` VALUES ('8019', '昆山市', '320583', '320500', '3');
INSERT INTO `oma_area` VALUES ('8020', '太仓市', '320585', '320500', '3');
INSERT INTO `oma_area` VALUES ('8021', '吴江区', '320509', '320500', '3');
INSERT INTO `oma_area` VALUES ('8022', '吴中区', '320506', '320500', '3');
INSERT INTO `oma_area` VALUES ('8023', '相城区', '320507', '320500', '3');
INSERT INTO `oma_area` VALUES ('8024', '张家港市', '320582', '320500', '3');
INSERT INTO `oma_area` VALUES ('8025', '泰州市', '321200', '320000', '2');
INSERT INTO `oma_area` VALUES ('8026', '高港区', '321203', '321200', '3');
INSERT INTO `oma_area` VALUES ('8027', '海陵区', '321202', '321200', '3');
INSERT INTO `oma_area` VALUES ('8028', '姜堰区', '321204', '321200', '3');
INSERT INTO `oma_area` VALUES ('8029', '靖江市', '321282', '321200', '3');
INSERT INTO `oma_area` VALUES ('8030', '泰兴市', '321283', '321200', '3');
INSERT INTO `oma_area` VALUES ('8031', '兴化市', '321281', '321200', '3');
INSERT INTO `oma_area` VALUES ('8032', '无锡市', '320200', '320000', '2');
INSERT INTO `oma_area` VALUES ('8033', '滨湖区', '320211', '320200', '3');
INSERT INTO `oma_area` VALUES ('8034', '惠山区', '320206', '320200', '3');
INSERT INTO `oma_area` VALUES ('8035', '江阴市', '320281', '320200', '3');
INSERT INTO `oma_area` VALUES ('8036', '梁溪区', '320213', '320200', '3');
INSERT INTO `oma_area` VALUES ('8037', '锡山区', '320205', '320200', '3');
INSERT INTO `oma_area` VALUES ('8038', '新吴区', '320214', '320200', '3');
INSERT INTO `oma_area` VALUES ('8039', '宜兴市', '320282', '320200', '3');
INSERT INTO `oma_area` VALUES ('8040', '徐州市', '320300', '320000', '2');
INSERT INTO `oma_area` VALUES ('8041', '丰县', '320321', '320300', '3');
INSERT INTO `oma_area` VALUES ('8042', '鼓楼区', '320302', '320300', '3');
INSERT INTO `oma_area` VALUES ('8043', '贾汪区', '320305', '320300', '3');
INSERT INTO `oma_area` VALUES ('8044', '沛县', '320322', '320300', '3');
INSERT INTO `oma_area` VALUES ('8045', '邳州市', '320382', '320300', '3');
INSERT INTO `oma_area` VALUES ('8046', '泉山区', '320311', '320300', '3');
INSERT INTO `oma_area` VALUES ('8047', '睢宁县', '320324', '320300', '3');
INSERT INTO `oma_area` VALUES ('8048', '铜山区', '320312', '320300', '3');
INSERT INTO `oma_area` VALUES ('8049', '新沂市', '320381', '320300', '3');
INSERT INTO `oma_area` VALUES ('8050', '云龙区', '320303', '320300', '3');
INSERT INTO `oma_area` VALUES ('8051', '盐城市', '320900', '320000', '2');
INSERT INTO `oma_area` VALUES ('8052', '滨海县', '320922', '320900', '3');
INSERT INTO `oma_area` VALUES ('8053', '大丰区', '320904', '320900', '3');
INSERT INTO `oma_area` VALUES ('8054', '东台市', '320981', '320900', '3');
INSERT INTO `oma_area` VALUES ('8055', '阜宁县', '320923', '320900', '3');
INSERT INTO `oma_area` VALUES ('8056', '建湖县', '320925', '320900', '3');
INSERT INTO `oma_area` VALUES ('8057', '射阳县', '320924', '320900', '3');
INSERT INTO `oma_area` VALUES ('8058', '亭湖区', '320902', '320900', '3');
INSERT INTO `oma_area` VALUES ('8059', '响水县', '320921', '320900', '3');
INSERT INTO `oma_area` VALUES ('8060', '盐都区', '320903', '320900', '3');
INSERT INTO `oma_area` VALUES ('8061', '扬州市', '321000', '320000', '2');
INSERT INTO `oma_area` VALUES ('8062', '宝应县', '321023', '321000', '3');
INSERT INTO `oma_area` VALUES ('8063', '高邮市', '321084', '321000', '3');
INSERT INTO `oma_area` VALUES ('8064', '广陵区', '321002', '321000', '3');
INSERT INTO `oma_area` VALUES ('8065', '邗江区', '321003', '321000', '3');
INSERT INTO `oma_area` VALUES ('8066', '江都区', '321012', '321000', '3');
INSERT INTO `oma_area` VALUES ('8067', '仪征市', '321081', '321000', '3');
INSERT INTO `oma_area` VALUES ('8068', '镇江市', '321100', '320000', '2');
INSERT INTO `oma_area` VALUES ('8069', '丹徒区', '321112', '321100', '3');
INSERT INTO `oma_area` VALUES ('8070', '丹阳市', '321181', '321100', '3');
INSERT INTO `oma_area` VALUES ('8071', '京口区', '321102', '321100', '3');
INSERT INTO `oma_area` VALUES ('8072', '句容市', '321183', '321100', '3');
INSERT INTO `oma_area` VALUES ('8073', '润州区', '321111', '321100', '3');
INSERT INTO `oma_area` VALUES ('8074', '扬中市', '321182', '321100', '3');
INSERT INTO `oma_area` VALUES ('8075', '吉林省', '220000', '', '1');
INSERT INTO `oma_area` VALUES ('8076', '白山市', '220600', '220000', '2');
INSERT INTO `oma_area` VALUES ('8077', '抚松县', '220621', '220600', '3');
INSERT INTO `oma_area` VALUES ('8078', '浑江区', '220602', '220600', '3');
INSERT INTO `oma_area` VALUES ('8079', '江源区', '220605', '220600', '3');
INSERT INTO `oma_area` VALUES ('8080', '靖宇县', '220622', '220600', '3');
INSERT INTO `oma_area` VALUES ('8081', '临江市', '220681', '220600', '3');
INSERT INTO `oma_area` VALUES ('8082', '长白朝鲜族自治县', '220623', '220600', '3');
INSERT INTO `oma_area` VALUES ('8083', '白城市', '220800', '220000', '2');
INSERT INTO `oma_area` VALUES ('8084', '大安市', '220882', '220800', '3');
INSERT INTO `oma_area` VALUES ('8085', '洮北区', '220802', '220800', '3');
INSERT INTO `oma_area` VALUES ('8086', '洮南市', '220881', '220800', '3');
INSERT INTO `oma_area` VALUES ('8087', '通榆县', '220822', '220800', '3');
INSERT INTO `oma_area` VALUES ('8088', '镇赉县', '220821', '220800', '3');
INSERT INTO `oma_area` VALUES ('8089', '吉林市', '220200', '220000', '2');
INSERT INTO `oma_area` VALUES ('8090', '昌邑区', '220202', '220200', '3');
INSERT INTO `oma_area` VALUES ('8091', '船营区', '220204', '220200', '3');
INSERT INTO `oma_area` VALUES ('8092', '丰满区', '220211', '220200', '3');
INSERT INTO `oma_area` VALUES ('8093', '桦甸市', '220282', '220200', '3');
INSERT INTO `oma_area` VALUES ('8094', '蛟河市', '220281', '220200', '3');
INSERT INTO `oma_area` VALUES ('8095', '龙潭区', '220203', '220200', '3');
INSERT INTO `oma_area` VALUES ('8096', '磐石市', '220284', '220200', '3');
INSERT INTO `oma_area` VALUES ('8097', '舒兰市', '220283', '220200', '3');
INSERT INTO `oma_area` VALUES ('8098', '永吉县', '220221', '220200', '3');
INSERT INTO `oma_area` VALUES ('8099', '辽源市', '220400', '220000', '2');
INSERT INTO `oma_area` VALUES ('8100', '东丰县', '220421', '220400', '3');
INSERT INTO `oma_area` VALUES ('8101', '东辽县', '220422', '220400', '3');
INSERT INTO `oma_area` VALUES ('8102', '龙山区', '220402', '220400', '3');
INSERT INTO `oma_area` VALUES ('8103', '西安区', '220403', '220400', '3');
INSERT INTO `oma_area` VALUES ('8104', '四平市', '220300', '220000', '2');
INSERT INTO `oma_area` VALUES ('8105', '公主岭市', '220381', '220300', '3');
INSERT INTO `oma_area` VALUES ('8106', '梨树县', '220322', '220300', '3');
INSERT INTO `oma_area` VALUES ('8107', '双辽市', '220382', '220300', '3');
INSERT INTO `oma_area` VALUES ('8108', '铁东区', '220303', '220300', '3');
INSERT INTO `oma_area` VALUES ('8109', '铁西区', '220302', '220300', '3');
INSERT INTO `oma_area` VALUES ('8110', '伊通满族自治县', '220323', '220300', '3');
INSERT INTO `oma_area` VALUES ('8111', '松原市', '220700', '220000', '2');
INSERT INTO `oma_area` VALUES ('8112', '扶余市', '220781', '220700', '3');
INSERT INTO `oma_area` VALUES ('8113', '乾安县', '220723', '220700', '3');
INSERT INTO `oma_area` VALUES ('8114', '宁江区', '220702', '220700', '3');
INSERT INTO `oma_area` VALUES ('8115', '前郭尔罗斯蒙古族自治县', '220721', '220700', '3');
INSERT INTO `oma_area` VALUES ('8116', '长岭县', '220722', '220700', '3');
INSERT INTO `oma_area` VALUES ('8117', '通化市', '220500', '220000', '2');
INSERT INTO `oma_area` VALUES ('8118', '东昌区', '220502', '220500', '3');
INSERT INTO `oma_area` VALUES ('8119', '二道江区', '220503', '220500', '3');
INSERT INTO `oma_area` VALUES ('8120', '辉南县', '220523', '220500', '3');
INSERT INTO `oma_area` VALUES ('8121', '集安市', '220582', '220500', '3');
INSERT INTO `oma_area` VALUES ('8122', '柳河县', '220524', '220500', '3');
INSERT INTO `oma_area` VALUES ('8123', '梅河口市', '220581', '220500', '3');
INSERT INTO `oma_area` VALUES ('8124', '通化县', '220521', '220500', '3');
INSERT INTO `oma_area` VALUES ('8125', '延边朝鲜族自治州', '222400', '220000', '2');
INSERT INTO `oma_area` VALUES ('8126', '安图县', '222426', '222400', '3');
INSERT INTO `oma_area` VALUES ('8127', '敦化市', '222403', '222400', '3');
INSERT INTO `oma_area` VALUES ('8128', '和龙市', '222406', '222400', '3');
INSERT INTO `oma_area` VALUES ('8129', '珲春市', '222404', '222400', '3');
INSERT INTO `oma_area` VALUES ('8130', '龙井市', '222405', '222400', '3');
INSERT INTO `oma_area` VALUES ('8131', '图们市', '222402', '222400', '3');
INSERT INTO `oma_area` VALUES ('8132', '汪清县', '222424', '222400', '3');
INSERT INTO `oma_area` VALUES ('8133', '延吉市', '222401', '222400', '3');
INSERT INTO `oma_area` VALUES ('8134', '长春市', '220100', '220000', '2');
INSERT INTO `oma_area` VALUES ('8135', '朝阳区', '220104', '220100', '3');
INSERT INTO `oma_area` VALUES ('8136', '德惠市', '220183', '220100', '3');
INSERT INTO `oma_area` VALUES ('8137', '二道区', '220105', '220100', '3');
INSERT INTO `oma_area` VALUES ('8138', '九台区', '220113', '220100', '3');
INSERT INTO `oma_area` VALUES ('8139', '宽城区', '220103', '220100', '3');
INSERT INTO `oma_area` VALUES ('8140', '绿园区', '220106', '220100', '3');
INSERT INTO `oma_area` VALUES ('8141', '南关区', '220102', '220100', '3');
INSERT INTO `oma_area` VALUES ('8142', '农安县', '220122', '220100', '3');
INSERT INTO `oma_area` VALUES ('8143', '双阳区', '220112', '220100', '3');
INSERT INTO `oma_area` VALUES ('8144', '榆树市', '220182', '220100', '3');
INSERT INTO `oma_area` VALUES ('8145', '辽宁省', '210000', '', '1');
INSERT INTO `oma_area` VALUES ('8146', '本溪市', '210500', '210000', '2');
INSERT INTO `oma_area` VALUES ('8147', '本溪满族自治县', '210521', '210500', '3');
INSERT INTO `oma_area` VALUES ('8148', '桓仁满族自治县', '210522', '210500', '3');
INSERT INTO `oma_area` VALUES ('8149', '明山区', '210504', '210500', '3');
INSERT INTO `oma_area` VALUES ('8150', '南芬区', '210505', '210500', '3');
INSERT INTO `oma_area` VALUES ('8151', '平山区', '210502', '210500', '3');
INSERT INTO `oma_area` VALUES ('8152', '溪湖区', '210503', '210500', '3');
INSERT INTO `oma_area` VALUES ('8153', '鞍山市', '210300', '210000', '2');
INSERT INTO `oma_area` VALUES ('8154', '海城市', '210381', '210300', '3');
INSERT INTO `oma_area` VALUES ('8155', '立山区', '210304', '210300', '3');
INSERT INTO `oma_area` VALUES ('8156', '千山区', '210311', '210300', '3');
INSERT INTO `oma_area` VALUES ('8157', '台安县', '210321', '210300', '3');
INSERT INTO `oma_area` VALUES ('8158', '铁东区', '210302', '210300', '3');
INSERT INTO `oma_area` VALUES ('8159', '铁西区', '210303', '210300', '3');
INSERT INTO `oma_area` VALUES ('8160', '岫岩满族自治县', '210323', '210300', '3');
INSERT INTO `oma_area` VALUES ('8161', '朝阳市', '211300', '210000', '2');
INSERT INTO `oma_area` VALUES ('8162', '北票市', '211381', '211300', '3');
INSERT INTO `oma_area` VALUES ('8163', '朝阳县', '211321', '211300', '3');
INSERT INTO `oma_area` VALUES ('8164', '建平县', '211322', '211300', '3');
INSERT INTO `oma_area` VALUES ('8165', '喀喇沁左翼蒙古族自治县', '211324', '211300', '3');
INSERT INTO `oma_area` VALUES ('8166', '凌源市', '211382', '211300', '3');
INSERT INTO `oma_area` VALUES ('8167', '龙城区', '211303', '211300', '3');
INSERT INTO `oma_area` VALUES ('8168', '双塔区', '211302', '211300', '3');
INSERT INTO `oma_area` VALUES ('8169', '大连市', '210200', '210000', '2');
INSERT INTO `oma_area` VALUES ('8170', '甘井子区', '210211', '210200', '3');
INSERT INTO `oma_area` VALUES ('8171', '金州区', '210213', '210200', '3');
INSERT INTO `oma_area` VALUES ('8172', '旅顺口区', '210212', '210200', '3');
INSERT INTO `oma_area` VALUES ('8173', '普兰店区', '210214', '210200', '3');
INSERT INTO `oma_area` VALUES ('8174', '沙河口区', '210204', '210200', '3');
INSERT INTO `oma_area` VALUES ('8175', '瓦房店市', '210281', '210200', '3');
INSERT INTO `oma_area` VALUES ('8176', '西岗区', '210203', '210200', '3');
INSERT INTO `oma_area` VALUES ('8177', '长海县', '210224', '210200', '3');
INSERT INTO `oma_area` VALUES ('8178', '庄河市', '210283', '210200', '3');
INSERT INTO `oma_area` VALUES ('8179', '中山区', '210202', '210200', '3');
INSERT INTO `oma_area` VALUES ('8180', '丹东市', '210600', '210000', '2');
INSERT INTO `oma_area` VALUES ('8181', '东港市', '210681', '210600', '3');
INSERT INTO `oma_area` VALUES ('8182', '凤城市', '210682', '210600', '3');
INSERT INTO `oma_area` VALUES ('8183', '宽甸满族自治县', '210624', '210600', '3');
INSERT INTO `oma_area` VALUES ('8184', '元宝区', '210602', '210600', '3');
INSERT INTO `oma_area` VALUES ('8185', '振安区', '210604', '210600', '3');
INSERT INTO `oma_area` VALUES ('8186', '振兴区', '210603', '210600', '3');
INSERT INTO `oma_area` VALUES ('8187', '阜新市', '210900', '210000', '2');
INSERT INTO `oma_area` VALUES ('8188', '阜新蒙古族自治县', '210921', '210900', '3');
INSERT INTO `oma_area` VALUES ('8189', '海州区', '210902', '210900', '3');
INSERT INTO `oma_area` VALUES ('8190', '清河门区', '210905', '210900', '3');
INSERT INTO `oma_area` VALUES ('8191', '太平区', '210904', '210900', '3');
INSERT INTO `oma_area` VALUES ('8192', '细河区', '210911', '210900', '3');
INSERT INTO `oma_area` VALUES ('8193', '新邱区', '210903', '210900', '3');
INSERT INTO `oma_area` VALUES ('8194', '彰武县', '210922', '210900', '3');
INSERT INTO `oma_area` VALUES ('8195', '抚顺市', '210400', '210000', '2');
INSERT INTO `oma_area` VALUES ('8196', '东洲区', '210403', '210400', '3');
INSERT INTO `oma_area` VALUES ('8197', '抚顺县', '210421', '210400', '3');
INSERT INTO `oma_area` VALUES ('8198', '清原满族自治县', '210423', '210400', '3');
INSERT INTO `oma_area` VALUES ('8199', '顺城区', '210411', '210400', '3');
INSERT INTO `oma_area` VALUES ('8200', '望花区', '210404', '210400', '3');
INSERT INTO `oma_area` VALUES ('8201', '新宾满族自治县', '210422', '210400', '3');
INSERT INTO `oma_area` VALUES ('8202', '新抚区', '210402', '210400', '3');
INSERT INTO `oma_area` VALUES ('8203', '葫芦岛市', '211400', '210000', '2');
INSERT INTO `oma_area` VALUES ('8204', '建昌县', '211422', '211400', '3');
INSERT INTO `oma_area` VALUES ('8205', '连山区', '211402', '211400', '3');
INSERT INTO `oma_area` VALUES ('8206', '龙港区', '211403', '211400', '3');
INSERT INTO `oma_area` VALUES ('8207', '南票区', '211404', '211400', '3');
INSERT INTO `oma_area` VALUES ('8208', '绥中县', '211421', '211400', '3');
INSERT INTO `oma_area` VALUES ('8209', '兴城市', '211481', '211400', '3');
INSERT INTO `oma_area` VALUES ('8210', '锦州市', '210700', '210000', '2');
INSERT INTO `oma_area` VALUES ('8211', '北镇市', '210782', '210700', '3');
INSERT INTO `oma_area` VALUES ('8212', '古塔区', '210702', '210700', '3');
INSERT INTO `oma_area` VALUES ('8213', '黑山县', '210726', '210700', '3');
INSERT INTO `oma_area` VALUES ('8214', '凌海市', '210781', '210700', '3');
INSERT INTO `oma_area` VALUES ('8215', '凌河区', '210703', '210700', '3');
INSERT INTO `oma_area` VALUES ('8216', '太和区', '210711', '210700', '3');
INSERT INTO `oma_area` VALUES ('8217', '义县', '210727', '210700', '3');
INSERT INTO `oma_area` VALUES ('8218', '辽阳市', '211000', '210000', '2');
INSERT INTO `oma_area` VALUES ('8219', '白塔区', '211002', '211000', '3');
INSERT INTO `oma_area` VALUES ('8220', '灯塔市', '211081', '211000', '3');
INSERT INTO `oma_area` VALUES ('8221', '弓长岭区', '211005', '211000', '3');
INSERT INTO `oma_area` VALUES ('8222', '宏伟区', '211004', '211000', '3');
INSERT INTO `oma_area` VALUES ('8223', '辽阳县', '211021', '211000', '3');
INSERT INTO `oma_area` VALUES ('8224', '太子河区', '211011', '211000', '3');
INSERT INTO `oma_area` VALUES ('8225', '文圣区', '211003', '211000', '3');
INSERT INTO `oma_area` VALUES ('8226', '盘锦市', '211100', '210000', '2');
INSERT INTO `oma_area` VALUES ('8227', '大洼区', '211104', '211100', '3');
INSERT INTO `oma_area` VALUES ('8228', '盘山县', '211122', '211100', '3');
INSERT INTO `oma_area` VALUES ('8229', '双台子区', '211102', '211100', '3');
INSERT INTO `oma_area` VALUES ('8230', '兴隆台区', '211103', '211100', '3');
INSERT INTO `oma_area` VALUES ('8231', '铁岭市', '211200', '210000', '2');
INSERT INTO `oma_area` VALUES ('8232', '昌图县', '211224', '211200', '3');
INSERT INTO `oma_area` VALUES ('8233', '调兵山市', '211281', '211200', '3');
INSERT INTO `oma_area` VALUES ('8234', '开原市', '211282', '211200', '3');
INSERT INTO `oma_area` VALUES ('8235', '清河区', '211204', '211200', '3');
INSERT INTO `oma_area` VALUES ('8236', '铁岭县', '211221', '211200', '3');
INSERT INTO `oma_area` VALUES ('8237', '西丰县', '211223', '211200', '3');
INSERT INTO `oma_area` VALUES ('8238', '银州区', '211202', '211200', '3');
INSERT INTO `oma_area` VALUES ('8239', '沈阳市', '210100', '210000', '2');
INSERT INTO `oma_area` VALUES ('8240', '沈北新区', '210113', '210100', '3');
INSERT INTO `oma_area` VALUES ('8241', '沈河区', '210103', '210100', '3');
INSERT INTO `oma_area` VALUES ('8242', '大东区', '210104', '210100', '3');
INSERT INTO `oma_area` VALUES ('8243', '法库县', '210124', '210100', '3');
INSERT INTO `oma_area` VALUES ('8244', '和平区', '210102', '210100', '3');
INSERT INTO `oma_area` VALUES ('8245', '浑南区', '210112', '210100', '3');
INSERT INTO `oma_area` VALUES ('8246', '皇姑区', '210105', '210100', '3');
INSERT INTO `oma_area` VALUES ('8247', '康平县', '210123', '210100', '3');
INSERT INTO `oma_area` VALUES ('8248', '辽中区', '210115', '210100', '3');
INSERT INTO `oma_area` VALUES ('8249', '苏家屯区', '210111', '210100', '3');
INSERT INTO `oma_area` VALUES ('8250', '铁西区', '210106', '210100', '3');
INSERT INTO `oma_area` VALUES ('8251', '新民市', '210181', '210100', '3');
INSERT INTO `oma_area` VALUES ('8252', '于洪区', '210114', '210100', '3');
INSERT INTO `oma_area` VALUES ('8253', '营口市', '210800', '210000', '2');
INSERT INTO `oma_area` VALUES ('8254', '鲅鱼圈区', '210804', '210800', '3');
INSERT INTO `oma_area` VALUES ('8255', '大石桥市', '210882', '210800', '3');
INSERT INTO `oma_area` VALUES ('8256', '盖州市', '210881', '210800', '3');
INSERT INTO `oma_area` VALUES ('8257', '老边区', '210811', '210800', '3');
INSERT INTO `oma_area` VALUES ('8258', '西市区', '210803', '210800', '3');
INSERT INTO `oma_area` VALUES ('8259', '站前区', '210802', '210800', '3');
INSERT INTO `oma_area` VALUES ('8260', '山东省', '370000', '', '1');
INSERT INTO `oma_area` VALUES ('8261', '滨州市', '371600', '370000', '2');
INSERT INTO `oma_area` VALUES ('8262', '滨城区', '371602', '371600', '3');
INSERT INTO `oma_area` VALUES ('8263', '博兴县', '371625', '371600', '3');
INSERT INTO `oma_area` VALUES ('8264', '惠民县', '371621', '371600', '3');
INSERT INTO `oma_area` VALUES ('8265', '无棣县', '371623', '371600', '3');
INSERT INTO `oma_area` VALUES ('8266', '阳信县', '371622', '371600', '3');
INSERT INTO `oma_area` VALUES ('8267', '沾化区', '371603', '371600', '3');
INSERT INTO `oma_area` VALUES ('8268', '邹平县', '371626', '371600', '3');
INSERT INTO `oma_area` VALUES ('8269', '德州市', '371400', '370000', '2');
INSERT INTO `oma_area` VALUES ('8270', '德城区', '371402', '371400', '3');
INSERT INTO `oma_area` VALUES ('8271', '乐陵市', '371481', '371400', '3');
INSERT INTO `oma_area` VALUES ('8272', '临邑县', '371424', '371400', '3');
INSERT INTO `oma_area` VALUES ('8273', '陵城区', '371403', '371400', '3');
INSERT INTO `oma_area` VALUES ('8274', '平原县', '371426', '371400', '3');
INSERT INTO `oma_area` VALUES ('8275', '宁津县', '371422', '371400', '3');
INSERT INTO `oma_area` VALUES ('8276', '齐河县', '371425', '371400', '3');
INSERT INTO `oma_area` VALUES ('8277', '庆云县', '371423', '371400', '3');
INSERT INTO `oma_area` VALUES ('8278', '武城县', '371428', '371400', '3');
INSERT INTO `oma_area` VALUES ('8279', '夏津县', '371427', '371400', '3');
INSERT INTO `oma_area` VALUES ('8280', '禹城市', '371482', '371400', '3');
INSERT INTO `oma_area` VALUES ('8281', '东营市', '370500', '370000', '2');
INSERT INTO `oma_area` VALUES ('8282', '东营区', '370502', '370500', '3');
INSERT INTO `oma_area` VALUES ('8283', '广饶县', '370523', '370500', '3');
INSERT INTO `oma_area` VALUES ('8284', '河口区', '370503', '370500', '3');
INSERT INTO `oma_area` VALUES ('8285', '垦利区', '370505', '370500', '3');
INSERT INTO `oma_area` VALUES ('8286', '利津县', '370522', '370500', '3');
INSERT INTO `oma_area` VALUES ('8287', '菏泽市', '371700', '370000', '2');
INSERT INTO `oma_area` VALUES ('8288', '曹县', '371721', '371700', '3');
INSERT INTO `oma_area` VALUES ('8289', '成武县', '371723', '371700', '3');
INSERT INTO `oma_area` VALUES ('8290', '单县', '371722', '371700', '3');
INSERT INTO `oma_area` VALUES ('8291', '定陶区', '371703', '371700', '3');
INSERT INTO `oma_area` VALUES ('8292', '东明县', '371728', '371700', '3');
INSERT INTO `oma_area` VALUES ('8293', '巨野县', '371724', '371700', '3');
INSERT INTO `oma_area` VALUES ('8294', '鄄城县', '371726', '371700', '3');
INSERT INTO `oma_area` VALUES ('8295', '牡丹区', '371702', '371700', '3');
INSERT INTO `oma_area` VALUES ('8296', '郓城县', '371725', '371700', '3');
INSERT INTO `oma_area` VALUES ('8297', '济宁市', '370800', '370000', '2');
INSERT INTO `oma_area` VALUES ('8298', '嘉祥县', '370829', '370800', '3');
INSERT INTO `oma_area` VALUES ('8299', '金乡县', '370828', '370800', '3');
INSERT INTO `oma_area` VALUES ('8300', '梁山县', '370832', '370800', '3');
INSERT INTO `oma_area` VALUES ('8301', '曲阜市', '370881', '370800', '3');
INSERT INTO `oma_area` VALUES ('8302', '任城区', '370811', '370800', '3');
INSERT INTO `oma_area` VALUES ('8303', '泗水县', '370831', '370800', '3');
INSERT INTO `oma_area` VALUES ('8304', '微山县', '370826', '370800', '3');
INSERT INTO `oma_area` VALUES ('8305', '汶上县', '370830', '370800', '3');
INSERT INTO `oma_area` VALUES ('8306', '兖州区', '370812', '370800', '3');
INSERT INTO `oma_area` VALUES ('8307', '鱼台县', '370827', '370800', '3');
INSERT INTO `oma_area` VALUES ('8308', '邹城市', '370883', '370800', '3');
INSERT INTO `oma_area` VALUES ('8309', '济南市', '370100', '370000', '2');
INSERT INTO `oma_area` VALUES ('8310', '槐荫区', '370104', '370100', '3');
INSERT INTO `oma_area` VALUES ('8311', '济阳县', '370125', '370100', '3');
INSERT INTO `oma_area` VALUES ('8312', '历城区', '370112', '370100', '3');
INSERT INTO `oma_area` VALUES ('8313', '历下区', '370102', '370100', '3');
INSERT INTO `oma_area` VALUES ('8314', '平阴县', '370124', '370100', '3');
INSERT INTO `oma_area` VALUES ('8315', '市中区', '370103', '370100', '3');
INSERT INTO `oma_area` VALUES ('8316', '商河县', '370126', '370100', '3');
INSERT INTO `oma_area` VALUES ('8317', '天桥区', '370105', '370100', '3');
INSERT INTO `oma_area` VALUES ('8318', '长清区', '370113', '370100', '3');
INSERT INTO `oma_area` VALUES ('8319', '章丘区', '370114', '370100', '3');
INSERT INTO `oma_area` VALUES ('8320', '聊城市', '371500', '370000', '2');
INSERT INTO `oma_area` VALUES ('8321', '茌平县', '371523', '371500', '3');
INSERT INTO `oma_area` VALUES ('8322', '东昌府区', '371502', '371500', '3');
INSERT INTO `oma_area` VALUES ('8323', '东阿县', '371524', '371500', '3');
INSERT INTO `oma_area` VALUES ('8324', '高唐县', '371526', '371500', '3');
INSERT INTO `oma_area` VALUES ('8325', '冠县', '371525', '371500', '3');
INSERT INTO `oma_area` VALUES ('8326', '临清市', '371581', '371500', '3');
INSERT INTO `oma_area` VALUES ('8327', '莘县', '371522', '371500', '3');
INSERT INTO `oma_area` VALUES ('8328', '阳谷县', '371521', '371500', '3');
INSERT INTO `oma_area` VALUES ('8329', '莱芜市', '371200', '370000', '2');
INSERT INTO `oma_area` VALUES ('8330', '钢城区', '371203', '371200', '3');
INSERT INTO `oma_area` VALUES ('8331', '莱城区', '371202', '371200', '3');
INSERT INTO `oma_area` VALUES ('8332', '临沂市', '371300', '370000', '2');
INSERT INTO `oma_area` VALUES ('8333', '费县', '371325', '371300', '3');
INSERT INTO `oma_area` VALUES ('8334', '河东区', '371312', '371300', '3');
INSERT INTO `oma_area` VALUES ('8335', '莒南县', '371327', '371300', '3');
INSERT INTO `oma_area` VALUES ('8336', '兰陵县', '371324', '371300', '3');
INSERT INTO `oma_area` VALUES ('8337', '兰山区', '371302', '371300', '3');
INSERT INTO `oma_area` VALUES ('8338', '临沭县', '371329', '371300', '3');
INSERT INTO `oma_area` VALUES ('8339', '蒙阴县', '371328', '371300', '3');
INSERT INTO `oma_area` VALUES ('8340', '罗庄区', '371311', '371300', '3');
INSERT INTO `oma_area` VALUES ('8341', '平邑县', '371326', '371300', '3');
INSERT INTO `oma_area` VALUES ('8342', '郯城县', '371322', '371300', '3');
INSERT INTO `oma_area` VALUES ('8343', '沂水县', '371323', '371300', '3');
INSERT INTO `oma_area` VALUES ('8344', '沂南县', '371321', '371300', '3');
INSERT INTO `oma_area` VALUES ('8345', '日照市', '371100', '370000', '2');
INSERT INTO `oma_area` VALUES ('8346', '东港区', '371102', '371100', '3');
INSERT INTO `oma_area` VALUES ('8347', '莒县', '371122', '371100', '3');
INSERT INTO `oma_area` VALUES ('8348', '岚山区', '371103', '371100', '3');
INSERT INTO `oma_area` VALUES ('8349', '五莲县', '371121', '371100', '3');
INSERT INTO `oma_area` VALUES ('8350', '青岛市', '370200', '370000', '2');
INSERT INTO `oma_area` VALUES ('8351', '城阳区', '370214', '370200', '3');
INSERT INTO `oma_area` VALUES ('8352', '黄岛区', '370211', '370200', '3');
INSERT INTO `oma_area` VALUES ('8353', '即墨市', '370282', '370200', '3');
INSERT INTO `oma_area` VALUES ('8354', '胶州市', '370281', '370200', '3');
INSERT INTO `oma_area` VALUES ('8355', '莱西市', '370285', '370200', '3');
INSERT INTO `oma_area` VALUES ('8356', '李沧区', '370213', '370200', '3');
INSERT INTO `oma_area` VALUES ('8357', '崂山区', '370212', '370200', '3');
INSERT INTO `oma_area` VALUES ('8358', '平度市', '370283', '370200', '3');
INSERT INTO `oma_area` VALUES ('8359', '市南区', '370202', '370200', '3');
INSERT INTO `oma_area` VALUES ('8360', '市北区', '370203', '370200', '3');
INSERT INTO `oma_area` VALUES ('8361', '泰安市', '370900', '370000', '2');
INSERT INTO `oma_area` VALUES ('8362', '岱岳区', '370911', '370900', '3');
INSERT INTO `oma_area` VALUES ('8363', '东平县', '370923', '370900', '3');
INSERT INTO `oma_area` VALUES ('8364', '肥城市', '370983', '370900', '3');
INSERT INTO `oma_area` VALUES ('8365', '宁阳县', '370921', '370900', '3');
INSERT INTO `oma_area` VALUES ('8366', '泰山区', '370902', '370900', '3');
INSERT INTO `oma_area` VALUES ('8367', '新泰市', '370982', '370900', '3');
INSERT INTO `oma_area` VALUES ('8368', '威海市', '371000', '370000', '2');
INSERT INTO `oma_area` VALUES ('8369', '环翠区', '371002', '371000', '3');
INSERT INTO `oma_area` VALUES ('8370', '乳山市', '371083', '371000', '3');
INSERT INTO `oma_area` VALUES ('8371', '荣成市', '371082', '371000', '3');
INSERT INTO `oma_area` VALUES ('8372', '文登区', '371003', '371000', '3');
INSERT INTO `oma_area` VALUES ('8373', '潍坊市', '370700', '370000', '2');
INSERT INTO `oma_area` VALUES ('8374', '安丘市', '370784', '370700', '3');
INSERT INTO `oma_area` VALUES ('8375', '昌乐县', '370725', '370700', '3');
INSERT INTO `oma_area` VALUES ('8376', '昌邑市', '370786', '370700', '3');
INSERT INTO `oma_area` VALUES ('8377', '坊子区', '370704', '370700', '3');
INSERT INTO `oma_area` VALUES ('8378', '高密市', '370785', '370700', '3');
INSERT INTO `oma_area` VALUES ('8379', '寒亭区', '370703', '370700', '3');
INSERT INTO `oma_area` VALUES ('8380', '奎文区', '370705', '370700', '3');
INSERT INTO `oma_area` VALUES ('8381', '临朐县', '370724', '370700', '3');
INSERT INTO `oma_area` VALUES ('8382', '青州市', '370781', '370700', '3');
INSERT INTO `oma_area` VALUES ('8383', '寿光市', '370783', '370700', '3');
INSERT INTO `oma_area` VALUES ('8384', '潍城区', '370702', '370700', '3');
INSERT INTO `oma_area` VALUES ('8385', '诸城市', '370782', '370700', '3');
INSERT INTO `oma_area` VALUES ('8386', '烟台市', '370600', '370000', '2');
INSERT INTO `oma_area` VALUES ('8387', '福山区', '370611', '370600', '3');
INSERT INTO `oma_area` VALUES ('8388', '海阳市', '370687', '370600', '3');
INSERT INTO `oma_area` VALUES ('8389', '莱山区', '370613', '370600', '3');
INSERT INTO `oma_area` VALUES ('8390', '莱阳市', '370682', '370600', '3');
INSERT INTO `oma_area` VALUES ('8391', '莱州市', '370683', '370600', '3');
INSERT INTO `oma_area` VALUES ('8392', '龙口市', '370681', '370600', '3');
INSERT INTO `oma_area` VALUES ('8393', '牟平区', '370612', '370600', '3');
INSERT INTO `oma_area` VALUES ('8394', '蓬莱市', '370684', '370600', '3');
INSERT INTO `oma_area` VALUES ('8395', '栖霞市', '370686', '370600', '3');
INSERT INTO `oma_area` VALUES ('8396', '招远市', '370685', '370600', '3');
INSERT INTO `oma_area` VALUES ('8397', '芝罘区', '370602', '370600', '3');
INSERT INTO `oma_area` VALUES ('8398', '长岛县', '370634', '370600', '3');
INSERT INTO `oma_area` VALUES ('8399', '淄博市', '370300', '370000', '2');
INSERT INTO `oma_area` VALUES ('8400', '博山区', '370304', '370300', '3');
INSERT INTO `oma_area` VALUES ('8401', '高青县', '370322', '370300', '3');
INSERT INTO `oma_area` VALUES ('8402', '桓台县', '370321', '370300', '3');
INSERT INTO `oma_area` VALUES ('8403', '临淄区', '370305', '370300', '3');
INSERT INTO `oma_area` VALUES ('8404', '沂源县', '370323', '370300', '3');
INSERT INTO `oma_area` VALUES ('8405', '张店区', '370303', '370300', '3');
INSERT INTO `oma_area` VALUES ('8406', '周村区', '370306', '370300', '3');
INSERT INTO `oma_area` VALUES ('8407', '淄川区', '370302', '370300', '3');
INSERT INTO `oma_area` VALUES ('8408', '枣庄市', '370400', '370000', '2');
INSERT INTO `oma_area` VALUES ('8409', '山亭区', '370406', '370400', '3');
INSERT INTO `oma_area` VALUES ('8410', '市中区', '370402', '370400', '3');
INSERT INTO `oma_area` VALUES ('8411', '台儿庄区', '370405', '370400', '3');
INSERT INTO `oma_area` VALUES ('8412', '滕州市', '370481', '370400', '3');
INSERT INTO `oma_area` VALUES ('8413', '薛城区', '370403', '370400', '3');
INSERT INTO `oma_area` VALUES ('8414', '峄城区', '370404', '370400', '3');
INSERT INTO `oma_area` VALUES ('8415', '新疆维吾尔自治区', '650000', '', '1');
INSERT INTO `oma_area` VALUES ('8416', '阿克苏地区', '652900', '650000', '2');
INSERT INTO `oma_area` VALUES ('8417', '阿克苏市', '652901', '652900', '3');
INSERT INTO `oma_area` VALUES ('8418', '阿瓦提县', '652928', '652900', '3');
INSERT INTO `oma_area` VALUES ('8419', '拜城县', '652926', '652900', '3');
INSERT INTO `oma_area` VALUES ('8420', '柯坪县', '652929', '652900', '3');
INSERT INTO `oma_area` VALUES ('8421', '库车县', '652923', '652900', '3');
INSERT INTO `oma_area` VALUES ('8422', '沙雅县', '652924', '652900', '3');
INSERT INTO `oma_area` VALUES ('8423', '温宿县', '652922', '652900', '3');
INSERT INTO `oma_area` VALUES ('8424', '乌什县', '652927', '652900', '3');
INSERT INTO `oma_area` VALUES ('8425', '新和县', '652925', '652900', '3');
INSERT INTO `oma_area` VALUES ('8426', '阿勒泰地区', '654300', '650000', '2');
INSERT INTO `oma_area` VALUES ('8427', '阿勒泰市', '654301', '654300', '3');
INSERT INTO `oma_area` VALUES ('8428', '布尔津县', '654321', '654300', '3');
INSERT INTO `oma_area` VALUES ('8429', '富蕴县', '654322', '654300', '3');
INSERT INTO `oma_area` VALUES ('8430', '福海县', '654323', '654300', '3');
INSERT INTO `oma_area` VALUES ('8431', '哈巴河县', '654324', '654300', '3');
INSERT INTO `oma_area` VALUES ('8432', '吉木乃县', '654326', '654300', '3');
INSERT INTO `oma_area` VALUES ('8433', '青河县', '654325', '654300', '3');
INSERT INTO `oma_area` VALUES ('8434', '巴音郭楞蒙古自治州', '652800', '650000', '2');
INSERT INTO `oma_area` VALUES ('8435', '博湖县', '652829', '652800', '3');
INSERT INTO `oma_area` VALUES ('8436', '和静县', '652827', '652800', '3');
INSERT INTO `oma_area` VALUES ('8437', '和硕县', '652828', '652800', '3');
INSERT INTO `oma_area` VALUES ('8438', '库尔勒市', '652801', '652800', '3');
INSERT INTO `oma_area` VALUES ('8439', '轮台县', '652822', '652800', '3');
INSERT INTO `oma_area` VALUES ('8440', '且末县', '652825', '652800', '3');
INSERT INTO `oma_area` VALUES ('8441', '若羌县', '652824', '652800', '3');
INSERT INTO `oma_area` VALUES ('8442', '尉犁县', '652823', '652800', '3');
INSERT INTO `oma_area` VALUES ('8443', '焉耆回族自治县', '652826', '652800', '3');
INSERT INTO `oma_area` VALUES ('8444', '博尔塔拉蒙古自治州', '652700', '650000', '2');
INSERT INTO `oma_area` VALUES ('8445', '阿拉山口市', '652702', '652700', '3');
INSERT INTO `oma_area` VALUES ('8446', '博乐市', '652701', '652700', '3');
INSERT INTO `oma_area` VALUES ('8447', '精河县', '652722', '652700', '3');
INSERT INTO `oma_area` VALUES ('8448', '温泉县', '652723', '652700', '3');
INSERT INTO `oma_area` VALUES ('8449', '昌吉回族自治州', '652300', '650000', '2');
INSERT INTO `oma_area` VALUES ('8450', '昌吉市', '652301', '652300', '3');
INSERT INTO `oma_area` VALUES ('8451', '阜康市', '652302', '652300', '3');
INSERT INTO `oma_area` VALUES ('8452', '呼图壁县', '652323', '652300', '3');
INSERT INTO `oma_area` VALUES ('8453', '吉木萨尔县', '652327', '652300', '3');
INSERT INTO `oma_area` VALUES ('8454', '玛纳斯县', '652324', '652300', '3');
INSERT INTO `oma_area` VALUES ('8455', '木垒哈萨克自治县', '652328', '652300', '3');
INSERT INTO `oma_area` VALUES ('8456', '奇台县', '652325', '652300', '3');
INSERT INTO `oma_area` VALUES ('8457', '哈密市', '650500', '650000', '2');
INSERT INTO `oma_area` VALUES ('8458', '巴里坤哈萨克自治县', '650521', '650500', '3');
INSERT INTO `oma_area` VALUES ('8459', '伊州区', '650502', '650500', '3');
INSERT INTO `oma_area` VALUES ('8460', '伊吾县', '650522', '650500', '3');
INSERT INTO `oma_area` VALUES ('8461', '和田地区', '653200', '650000', '2');
INSERT INTO `oma_area` VALUES ('8462', '策勒县', '653225', '653200', '3');
INSERT INTO `oma_area` VALUES ('8463', '和田市', '653201', '653200', '3');
INSERT INTO `oma_area` VALUES ('8464', '和田县', '653221', '653200', '3');
INSERT INTO `oma_area` VALUES ('8465', '洛浦县', '653224', '653200', '3');
INSERT INTO `oma_area` VALUES ('8466', '民丰县', '653227', '653200', '3');
INSERT INTO `oma_area` VALUES ('8467', '墨玉县', '653222', '653200', '3');
INSERT INTO `oma_area` VALUES ('8468', '皮山县', '653223', '653200', '3');
INSERT INTO `oma_area` VALUES ('8469', '于田县', '653226', '653200', '3');
INSERT INTO `oma_area` VALUES ('8470', '喀什地区', '653100', '650000', '2');
INSERT INTO `oma_area` VALUES ('8471', '巴楚县', '653130', '653100', '3');
INSERT INTO `oma_area` VALUES ('8472', '伽师县', '653129', '653100', '3');
INSERT INTO `oma_area` VALUES ('8473', '喀什市', '653101', '653100', '3');
INSERT INTO `oma_area` VALUES ('8474', '麦盖提县', '653127', '653100', '3');
INSERT INTO `oma_area` VALUES ('8475', '莎车县', '653125', '653100', '3');
INSERT INTO `oma_area` VALUES ('8476', '疏附县', '653121', '653100', '3');
INSERT INTO `oma_area` VALUES ('8477', '疏勒县', '653122', '653100', '3');
INSERT INTO `oma_area` VALUES ('8478', '塔什库尔干塔吉克自治县', '653131', '653100', '3');
INSERT INTO `oma_area` VALUES ('8479', '叶城县', '653126', '653100', '3');
INSERT INTO `oma_area` VALUES ('8480', '英吉沙县', '653123', '653100', '3');
INSERT INTO `oma_area` VALUES ('8481', '岳普湖县', '653128', '653100', '3');
INSERT INTO `oma_area` VALUES ('8482', '泽普县', '653124', '653100', '3');
INSERT INTO `oma_area` VALUES ('8483', '克孜勒苏柯尔克孜自治州', '653000', '650000', '2');
INSERT INTO `oma_area` VALUES ('8484', '阿克陶县', '653022', '653000', '3');
INSERT INTO `oma_area` VALUES ('8485', '阿图什市', '653001', '653000', '3');
INSERT INTO `oma_area` VALUES ('8486', '阿合奇县', '653023', '653000', '3');
INSERT INTO `oma_area` VALUES ('8487', '乌恰县', '653024', '653000', '3');
INSERT INTO `oma_area` VALUES ('8488', '克拉玛依市', '650200', '650000', '2');
INSERT INTO `oma_area` VALUES ('8489', '白碱滩区', '650204', '650200', '3');
INSERT INTO `oma_area` VALUES ('8490', '独山子区', '650202', '650200', '3');
INSERT INTO `oma_area` VALUES ('8491', '克拉玛依区', '650203', '650200', '3');
INSERT INTO `oma_area` VALUES ('8492', '乌尔禾区', '650205', '650200', '3');
INSERT INTO `oma_area` VALUES ('8493', '塔城地区', '654200', '650000', '2');
INSERT INTO `oma_area` VALUES ('8494', '额敏县', '654221', '654200', '3');
INSERT INTO `oma_area` VALUES ('8495', '和布克赛尔蒙古自治县', '654226', '654200', '3');
INSERT INTO `oma_area` VALUES ('8496', '沙湾县', '654223', '654200', '3');
INSERT INTO `oma_area` VALUES ('8497', '塔城市', '654201', '654200', '3');
INSERT INTO `oma_area` VALUES ('8498', '托里县', '654224', '654200', '3');
INSERT INTO `oma_area` VALUES ('8499', '乌苏市', '654202', '654200', '3');
INSERT INTO `oma_area` VALUES ('8500', '裕民县', '654225', '654200', '3');
INSERT INTO `oma_area` VALUES ('8501', '吐鲁番市', '650400', '650000', '2');
INSERT INTO `oma_area` VALUES ('8502', '高昌区', '650402', '650400', '3');
INSERT INTO `oma_area` VALUES ('8503', '鄯善县', '650421', '650400', '3');
INSERT INTO `oma_area` VALUES ('8504', '托克逊县', '650422', '650400', '3');
INSERT INTO `oma_area` VALUES ('8505', '乌鲁木齐市', '650100', '650000', '2');
INSERT INTO `oma_area` VALUES ('8506', '达坂城区', '650107', '650100', '3');
INSERT INTO `oma_area` VALUES ('8507', '米东区', '650109', '650100', '3');
INSERT INTO `oma_area` VALUES ('8508', '沙依巴克区', '650103', '650100', '3');
INSERT INTO `oma_area` VALUES ('8509', '水磨沟区', '650105', '650100', '3');
INSERT INTO `oma_area` VALUES ('8510', '天山区', '650102', '650100', '3');
INSERT INTO `oma_area` VALUES ('8511', '头屯河区', '650106', '650100', '3');
INSERT INTO `oma_area` VALUES ('8512', '乌鲁木齐县', '650121', '650100', '3');
INSERT INTO `oma_area` VALUES ('8513', '新市区', '650104', '650100', '3');
INSERT INTO `oma_area` VALUES ('8514', '伊犁哈萨克自治州', '654000', '650000', '2');
INSERT INTO `oma_area` VALUES ('8515', '察布查尔锡伯自治县', '654022', '654000', '3');
INSERT INTO `oma_area` VALUES ('8516', '巩留县', '654024', '654000', '3');
INSERT INTO `oma_area` VALUES ('8517', '霍尔果斯市', '654004', '654000', '3');
INSERT INTO `oma_area` VALUES ('8518', '霍城县', '654023', '654000', '3');
INSERT INTO `oma_area` VALUES ('8519', '奎屯市', '654003', '654000', '3');
INSERT INTO `oma_area` VALUES ('8520', '尼勒克县', '654028', '654000', '3');
INSERT INTO `oma_area` VALUES ('8521', '特克斯县', '654027', '654000', '3');
INSERT INTO `oma_area` VALUES ('8522', '新源县', '654025', '654000', '3');
INSERT INTO `oma_area` VALUES ('8523', '伊宁县', '654021', '654000', '3');
INSERT INTO `oma_area` VALUES ('8524', '伊宁市', '654002', '654000', '3');
INSERT INTO `oma_area` VALUES ('8525', '昭苏县', '654026', '654000', '3');
INSERT INTO `oma_area` VALUES ('8526', '阿拉尔市', '659002', '650000', '2');
INSERT INTO `oma_area` VALUES ('8527', '托喀依乡', '659002', '659002', '3');
INSERT INTO `oma_area` VALUES ('8528', '北屯市', '659005', '650000', '2');
INSERT INTO `oma_area` VALUES ('8529', '北屯镇', '659005', '659005', '3');
INSERT INTO `oma_area` VALUES ('8530', '可克达拉市', '659008', '650000', '2');
INSERT INTO `oma_area` VALUES ('8531', '昆玉市', '659009', '650000', '2');
INSERT INTO `oma_area` VALUES ('8532', '石河子市', '659001', '650000', '2');
INSERT INTO `oma_area` VALUES ('8533', '向阳街道', '659001', '659001', '3');
INSERT INTO `oma_area` VALUES ('8534', '老街街道', '659001', '659001', '3');
INSERT INTO `oma_area` VALUES ('8535', '东城街道', '659001', '659001', '3');
INSERT INTO `oma_area` VALUES ('8536', '新城镇', '659001', '659001', '3');
INSERT INTO `oma_area` VALUES ('8537', '红山街道', '659001', '659001', '3');
INSERT INTO `oma_area` VALUES ('8538', '北泉镇', '659001', '659001', '3');
INSERT INTO `oma_area` VALUES ('8539', '石河子镇', '659001', '659001', '3');
INSERT INTO `oma_area` VALUES ('8540', '双河市', '659007', '650000', '2');
INSERT INTO `oma_area` VALUES ('8541', '铁门关市', '659006', '650000', '2');
INSERT INTO `oma_area` VALUES ('8542', '图木舒克市', '659003', '650000', '2');
INSERT INTO `oma_area` VALUES ('8543', '四十九团九连', '659003', '659003', '3');
INSERT INTO `oma_area` VALUES ('8544', '五家渠市', '659004', '650000', '2');
INSERT INTO `oma_area` VALUES ('8545', '梧桐镇', '659004', '659004', '3');
INSERT INTO `oma_area` VALUES ('8546', '天津市', '120000', '', '1');
INSERT INTO `oma_area` VALUES ('8547', '天津城区', '120100', '120000', '2');
INSERT INTO `oma_area` VALUES ('8548', '北辰区', '120113', '120100', '3');
INSERT INTO `oma_area` VALUES ('8549', '宝坻区', '120115', '120100', '3');
INSERT INTO `oma_area` VALUES ('8550', '滨海新区', '120116', '120100', '3');
INSERT INTO `oma_area` VALUES ('8551', '东丽区', '120110', '120100', '3');
INSERT INTO `oma_area` VALUES ('8552', '河北区', '120105', '120100', '3');
INSERT INTO `oma_area` VALUES ('8553', '河东区', '120102', '120100', '3');
INSERT INTO `oma_area` VALUES ('8554', '河西区', '120103', '120100', '3');
INSERT INTO `oma_area` VALUES ('8555', '和平区', '120101', '120100', '3');
INSERT INTO `oma_area` VALUES ('8556', '红桥区', '120106', '120100', '3');
INSERT INTO `oma_area` VALUES ('8557', '蓟州区', '120119', '120100', '3');
INSERT INTO `oma_area` VALUES ('8558', '静海区', '120118', '120100', '3');
INSERT INTO `oma_area` VALUES ('8559', '津南区', '120112', '120100', '3');
INSERT INTO `oma_area` VALUES ('8560', '南开区', '120104', '120100', '3');
INSERT INTO `oma_area` VALUES ('8561', '宁河区', '120117', '120100', '3');
INSERT INTO `oma_area` VALUES ('8562', '武清区', '120114', '120100', '3');
INSERT INTO `oma_area` VALUES ('8563', '西青区', '120111', '120100', '3');
INSERT INTO `oma_area` VALUES ('8564', '青海省', '630000', '', '1');
INSERT INTO `oma_area` VALUES ('8565', '果洛藏族自治州', '632600', '630000', '2');
INSERT INTO `oma_area` VALUES ('8566', '班玛县', '632622', '632600', '3');
INSERT INTO `oma_area` VALUES ('8567', '达日县', '632624', '632600', '3');
INSERT INTO `oma_area` VALUES ('8568', '甘德县', '632623', '632600', '3');
INSERT INTO `oma_area` VALUES ('8569', '久治县', '632625', '632600', '3');
INSERT INTO `oma_area` VALUES ('8570', '玛沁县', '632621', '632600', '3');
INSERT INTO `oma_area` VALUES ('8571', '玛多县', '632626', '632600', '3');
INSERT INTO `oma_area` VALUES ('8572', '海东市', '630200', '630000', '2');
INSERT INTO `oma_area` VALUES ('8573', '互助土族自治县', '630223', '630200', '3');
INSERT INTO `oma_area` VALUES ('8574', '化隆回族自治县', '630224', '630200', '3');
INSERT INTO `oma_area` VALUES ('8575', '乐都区', '630202', '630200', '3');
INSERT INTO `oma_area` VALUES ('8576', '民和回族土族自治县', '630222', '630200', '3');
INSERT INTO `oma_area` VALUES ('8577', '平安区', '630203', '630200', '3');
INSERT INTO `oma_area` VALUES ('8578', '循化撒拉族自治县', '630225', '630200', '3');
INSERT INTO `oma_area` VALUES ('8579', '海南藏族自治州', '632500', '630000', '2');
INSERT INTO `oma_area` VALUES ('8580', '贵德县', '632523', '632500', '3');
INSERT INTO `oma_area` VALUES ('8581', '贵南县', '632525', '632500', '3');
INSERT INTO `oma_area` VALUES ('8582', '共和县', '632521', '632500', '3');
INSERT INTO `oma_area` VALUES ('8583', '同德县', '632522', '632500', '3');
INSERT INTO `oma_area` VALUES ('8584', '兴海县', '632524', '632500', '3');
INSERT INTO `oma_area` VALUES ('8585', '海北藏族自治州', '632200', '630000', '2');
INSERT INTO `oma_area` VALUES ('8586', '刚察县', '632224', '632200', '3');
INSERT INTO `oma_area` VALUES ('8587', '海晏县', '632223', '632200', '3');
INSERT INTO `oma_area` VALUES ('8588', '门源回族自治县', '632221', '632200', '3');
INSERT INTO `oma_area` VALUES ('8589', '祁连县', '632222', '632200', '3');
INSERT INTO `oma_area` VALUES ('8590', '海西蒙古族藏族自治州', '632800', '630000', '2');
INSERT INTO `oma_area` VALUES ('8591', '德令哈市', '632802', '632800', '3');
INSERT INTO `oma_area` VALUES ('8592', '都兰县', '632822', '632800', '3');
INSERT INTO `oma_area` VALUES ('8593', '格尔木市', '632801', '632800', '3');
INSERT INTO `oma_area` VALUES ('8594', '海西蒙古族藏族自治州直辖', '632825', '632800', '3');
INSERT INTO `oma_area` VALUES ('8595', '天峻县', '632823', '632800', '3');
INSERT INTO `oma_area` VALUES ('8596', '乌兰县', '632821', '632800', '3');
INSERT INTO `oma_area` VALUES ('8597', '黄南藏族自治州', '632300', '630000', '2');
INSERT INTO `oma_area` VALUES ('8598', '河南蒙古族自治县', '632324', '632300', '3');
INSERT INTO `oma_area` VALUES ('8599', '尖扎县', '632322', '632300', '3');
INSERT INTO `oma_area` VALUES ('8600', '同仁县', '632321', '632300', '3');
INSERT INTO `oma_area` VALUES ('8601', '泽库县', '632323', '632300', '3');
INSERT INTO `oma_area` VALUES ('8602', '西宁市', '630100', '630000', '2');
INSERT INTO `oma_area` VALUES ('8603', '城北区', '630105', '630100', '3');
INSERT INTO `oma_area` VALUES ('8604', '城中区', '630103', '630100', '3');
INSERT INTO `oma_area` VALUES ('8605', '城东区', '630102', '630100', '3');
INSERT INTO `oma_area` VALUES ('8606', '大通回族土族自治县', '630121', '630100', '3');
INSERT INTO `oma_area` VALUES ('8607', '城西区', '630104', '630100', '3');
INSERT INTO `oma_area` VALUES ('8608', '湟中县', '630122', '630100', '3');
INSERT INTO `oma_area` VALUES ('8609', '湟源县', '630123', '630100', '3');
INSERT INTO `oma_area` VALUES ('8610', '玉树藏族自治州', '632700', '630000', '2');
INSERT INTO `oma_area` VALUES ('8611', '称多县', '632723', '632700', '3');
INSERT INTO `oma_area` VALUES ('8612', '囊谦县', '632725', '632700', '3');
INSERT INTO `oma_area` VALUES ('8613', '曲麻莱县', '632726', '632700', '3');
INSERT INTO `oma_area` VALUES ('8614', '玉树市', '632701', '632700', '3');
INSERT INTO `oma_area` VALUES ('8615', '杂多县', '632722', '632700', '3');
INSERT INTO `oma_area` VALUES ('8616', '治多县', '632724', '632700', '3');
INSERT INTO `oma_area` VALUES ('8617', '陕西省', '610000', '', '1');
INSERT INTO `oma_area` VALUES ('8618', '安康市', '610900', '610000', '2');
INSERT INTO `oma_area` VALUES ('8619', '白河县', '610929', '610900', '3');
INSERT INTO `oma_area` VALUES ('8620', '汉阴县', '610921', '610900', '3');
INSERT INTO `oma_area` VALUES ('8621', '汉滨区', '610902', '610900', '3');
INSERT INTO `oma_area` VALUES ('8622', '岚皋县', '610925', '610900', '3');
INSERT INTO `oma_area` VALUES ('8623', '宁陕县', '610923', '610900', '3');
INSERT INTO `oma_area` VALUES ('8624', '平利县', '610926', '610900', '3');
INSERT INTO `oma_area` VALUES ('8625', '石泉县', '610922', '610900', '3');
INSERT INTO `oma_area` VALUES ('8626', '旬阳县', '610928', '610900', '3');
INSERT INTO `oma_area` VALUES ('8627', '镇坪县', '610927', '610900', '3');
INSERT INTO `oma_area` VALUES ('8628', '紫阳县', '610924', '610900', '3');
INSERT INTO `oma_area` VALUES ('8629', '宝鸡市', '610300', '610000', '2');
INSERT INTO `oma_area` VALUES ('8630', '陈仓区', '610304', '610300', '3');
INSERT INTO `oma_area` VALUES ('8631', '凤县', '610330', '610300', '3');
INSERT INTO `oma_area` VALUES ('8632', '凤翔县', '610322', '610300', '3');
INSERT INTO `oma_area` VALUES ('8633', '扶风县', '610324', '610300', '3');
INSERT INTO `oma_area` VALUES ('8634', '金台区', '610303', '610300', '3');
INSERT INTO `oma_area` VALUES ('8635', '麟游县', '610329', '610300', '3');
INSERT INTO `oma_area` VALUES ('8636', '陇县', '610327', '610300', '3');
INSERT INTO `oma_area` VALUES ('8637', '眉县', '610326', '610300', '3');
INSERT INTO `oma_area` VALUES ('8638', '岐山县', '610323', '610300', '3');
INSERT INTO `oma_area` VALUES ('8639', '千阳县', '610328', '610300', '3');
INSERT INTO `oma_area` VALUES ('8640', '太白县', '610331', '610300', '3');
INSERT INTO `oma_area` VALUES ('8641', '渭滨区', '610302', '610300', '3');
INSERT INTO `oma_area` VALUES ('8642', '汉中市', '610700', '610000', '2');
INSERT INTO `oma_area` VALUES ('8643', '城固县', '610722', '610700', '3');
INSERT INTO `oma_area` VALUES ('8644', '略阳县', '610727', '610700', '3');
INSERT INTO `oma_area` VALUES ('8645', '佛坪县', '610730', '610700', '3');
INSERT INTO `oma_area` VALUES ('8646', '汉台区', '610702', '610700', '3');
INSERT INTO `oma_area` VALUES ('8647', '留坝县', '610729', '610700', '3');
INSERT INTO `oma_area` VALUES ('8648', '勉县', '610725', '610700', '3');
INSERT INTO `oma_area` VALUES ('8649', '南郑县', '610721', '610700', '3');
INSERT INTO `oma_area` VALUES ('8650', '宁强县', '610726', '610700', '3');
INSERT INTO `oma_area` VALUES ('8651', '西乡县', '610724', '610700', '3');
INSERT INTO `oma_area` VALUES ('8652', '洋县', '610723', '610700', '3');
INSERT INTO `oma_area` VALUES ('8653', '镇巴县', '610728', '610700', '3');
INSERT INTO `oma_area` VALUES ('8654', '商洛市', '611000', '610000', '2');
INSERT INTO `oma_area` VALUES ('8655', '丹凤县', '611022', '611000', '3');
INSERT INTO `oma_area` VALUES ('8656', '洛南县', '611021', '611000', '3');
INSERT INTO `oma_area` VALUES ('8657', '山阳县', '611024', '611000', '3');
INSERT INTO `oma_area` VALUES ('8658', '商南县', '611023', '611000', '3');
INSERT INTO `oma_area` VALUES ('8659', '商州区', '611002', '611000', '3');
INSERT INTO `oma_area` VALUES ('8660', '柞水县', '611026', '611000', '3');
INSERT INTO `oma_area` VALUES ('8661', '镇安县', '611025', '611000', '3');
INSERT INTO `oma_area` VALUES ('8662', '西安市', '610100', '610000', '2');
INSERT INTO `oma_area` VALUES ('8663', '灞桥区', '610111', '610100', '3');
INSERT INTO `oma_area` VALUES ('8664', '碑林区', '610103', '610100', '3');
INSERT INTO `oma_area` VALUES ('8665', '高陵区', '610117', '610100', '3');
INSERT INTO `oma_area` VALUES ('8666', '鄠邑区', '610118', '610100', '3');
INSERT INTO `oma_area` VALUES ('8667', '蓝田县', '610122', '610100', '3');
INSERT INTO `oma_area` VALUES ('8668', '莲湖区', '610104', '610100', '3');
INSERT INTO `oma_area` VALUES ('8669', '临潼区', '610115', '610100', '3');
INSERT INTO `oma_area` VALUES ('8670', '未央区', '610112', '610100', '3');
INSERT INTO `oma_area` VALUES ('8671', '新城区', '610102', '610100', '3');
INSERT INTO `oma_area` VALUES ('8672', '雁塔区', '610113', '610100', '3');
INSERT INTO `oma_area` VALUES ('8673', '阎良区', '610114', '610100', '3');
INSERT INTO `oma_area` VALUES ('8674', '长安区', '610116', '610100', '3');
INSERT INTO `oma_area` VALUES ('8675', '周至县', '610124', '610100', '3');
INSERT INTO `oma_area` VALUES ('8676', '铜川市', '610200', '610000', '2');
INSERT INTO `oma_area` VALUES ('8677', '王益区', '610202', '610200', '3');
INSERT INTO `oma_area` VALUES ('8678', '耀州区', '610204', '610200', '3');
INSERT INTO `oma_area` VALUES ('8679', '宜君县', '610222', '610200', '3');
INSERT INTO `oma_area` VALUES ('8680', '印台区', '610203', '610200', '3');
INSERT INTO `oma_area` VALUES ('8681', '咸阳市', '610400', '610000', '2');
INSERT INTO `oma_area` VALUES ('8682', '彬县', '610427', '610400', '3');
INSERT INTO `oma_area` VALUES ('8683', '淳化县', '610430', '610400', '3');
INSERT INTO `oma_area` VALUES ('8684', '乾县', '610424', '610400', '3');
INSERT INTO `oma_area` VALUES ('8685', '泾阳县', '610423', '610400', '3');
INSERT INTO `oma_area` VALUES ('8686', '礼泉县', '610425', '610400', '3');
INSERT INTO `oma_area` VALUES ('8687', '秦都区', '610402', '610400', '3');
INSERT INTO `oma_area` VALUES ('8688', '三原县', '610422', '610400', '3');
INSERT INTO `oma_area` VALUES ('8689', '渭城区', '610404', '610400', '3');
INSERT INTO `oma_area` VALUES ('8690', '武功县', '610431', '610400', '3');
INSERT INTO `oma_area` VALUES ('8691', '兴平市', '610481', '610400', '3');
INSERT INTO `oma_area` VALUES ('8692', '旬邑县', '610429', '610400', '3');
INSERT INTO `oma_area` VALUES ('8693', '杨陵区', '610403', '610400', '3');
INSERT INTO `oma_area` VALUES ('8694', '永寿县', '610426', '610400', '3');
INSERT INTO `oma_area` VALUES ('8695', '长武县', '610428', '610400', '3');
INSERT INTO `oma_area` VALUES ('8696', '渭南市', '610500', '610000', '2');
INSERT INTO `oma_area` VALUES ('8697', '白水县', '610527', '610500', '3');
INSERT INTO `oma_area` VALUES ('8698', '澄城县', '610525', '610500', '3');
INSERT INTO `oma_area` VALUES ('8699', '大荔县', '610523', '610500', '3');
INSERT INTO `oma_area` VALUES ('8700', '富平县', '610528', '610500', '3');
INSERT INTO `oma_area` VALUES ('8701', '合阳县', '610524', '610500', '3');
INSERT INTO `oma_area` VALUES ('8702', '韩城市', '610581', '610500', '3');
INSERT INTO `oma_area` VALUES ('8703', '华州区', '610503', '610500', '3');
INSERT INTO `oma_area` VALUES ('8704', '华阴市', '610582', '610500', '3');
INSERT INTO `oma_area` VALUES ('8705', '临渭区', '610502', '610500', '3');
INSERT INTO `oma_area` VALUES ('8706', '蒲城县', '610526', '610500', '3');
INSERT INTO `oma_area` VALUES ('8707', '潼关县', '610522', '610500', '3');
INSERT INTO `oma_area` VALUES ('8708', '延安市', '610600', '610000', '2');
INSERT INTO `oma_area` VALUES ('8709', '安塞区', '610603', '610600', '3');
INSERT INTO `oma_area` VALUES ('8710', '宝塔区', '610602', '610600', '3');
INSERT INTO `oma_area` VALUES ('8711', '富县', '610628', '610600', '3');
INSERT INTO `oma_area` VALUES ('8712', '甘泉县', '610627', '610600', '3');
INSERT INTO `oma_area` VALUES ('8713', '黄龙县', '610631', '610600', '3');
INSERT INTO `oma_area` VALUES ('8714', '黄陵县', '610632', '610600', '3');
INSERT INTO `oma_area` VALUES ('8715', '洛川县', '610629', '610600', '3');
INSERT INTO `oma_area` VALUES ('8716', '吴起县', '610626', '610600', '3');
INSERT INTO `oma_area` VALUES ('8717', '延川县', '610622', '610600', '3');
INSERT INTO `oma_area` VALUES ('8718', '延长县', '610621', '610600', '3');
INSERT INTO `oma_area` VALUES ('8719', '宜川县', '610630', '610600', '3');
INSERT INTO `oma_area` VALUES ('8720', '志丹县', '610625', '610600', '3');
INSERT INTO `oma_area` VALUES ('8721', '子长县', '610623', '610600', '3');
INSERT INTO `oma_area` VALUES ('8722', '榆林市', '610800', '610000', '2');
INSERT INTO `oma_area` VALUES ('8723', '定边县', '610825', '610800', '3');
INSERT INTO `oma_area` VALUES ('8724', '府谷县', '610822', '610800', '3');
INSERT INTO `oma_area` VALUES ('8725', '横山区', '610803', '610800', '3');
INSERT INTO `oma_area` VALUES ('8726', '佳县', '610828', '610800', '3');
INSERT INTO `oma_area` VALUES ('8727', '靖边县', '610824', '610800', '3');
INSERT INTO `oma_area` VALUES ('8728', '米脂县', '610827', '610800', '3');
INSERT INTO `oma_area` VALUES ('8729', '清涧县', '610830', '610800', '3');
INSERT INTO `oma_area` VALUES ('8730', '神木市', '610881', '610800', '3');
INSERT INTO `oma_area` VALUES ('8731', '绥德县', '610826', '610800', '3');
INSERT INTO `oma_area` VALUES ('8732', '吴堡县', '610829', '610800', '3');
INSERT INTO `oma_area` VALUES ('8733', '榆阳区', '610802', '610800', '3');
INSERT INTO `oma_area` VALUES ('8734', '子洲县', '610831', '610800', '3');
INSERT INTO `oma_area` VALUES ('8735', '西藏自治区', '540000', '', '1');
INSERT INTO `oma_area` VALUES ('8736', '阿里地区', '542500', '540000', '2');
INSERT INTO `oma_area` VALUES ('8737', '措勤县', '542527', '542500', '3');
INSERT INTO `oma_area` VALUES ('8738', '噶尔县', '542523', '542500', '3');
INSERT INTO `oma_area` VALUES ('8739', '改则县', '542526', '542500', '3');
INSERT INTO `oma_area` VALUES ('8740', '革吉县', '542525', '542500', '3');
INSERT INTO `oma_area` VALUES ('8741', '普兰县', '542521', '542500', '3');
INSERT INTO `oma_area` VALUES ('8742', '日土县', '542524', '542500', '3');
INSERT INTO `oma_area` VALUES ('8743', '札达县', '542522', '542500', '3');
INSERT INTO `oma_area` VALUES ('8744', '昌都市', '540300', '540000', '2');
INSERT INTO `oma_area` VALUES ('8745', '八宿县', '540326', '540300', '3');
INSERT INTO `oma_area` VALUES ('8746', '边坝县', '540330', '540300', '3');
INSERT INTO `oma_area` VALUES ('8747', '察雅县', '540325', '540300', '3');
INSERT INTO `oma_area` VALUES ('8748', '丁青县', '540324', '540300', '3');
INSERT INTO `oma_area` VALUES ('8749', '贡觉县', '540322', '540300', '3');
INSERT INTO `oma_area` VALUES ('8750', '江达县', '540321', '540300', '3');
INSERT INTO `oma_area` VALUES ('8751', '卡若区', '540302', '540300', '3');
INSERT INTO `oma_area` VALUES ('8752', '类乌齐县', '540323', '540300', '3');
INSERT INTO `oma_area` VALUES ('8753', '洛隆县', '540329', '540300', '3');
INSERT INTO `oma_area` VALUES ('8754', '芒康县', '540328', '540300', '3');
INSERT INTO `oma_area` VALUES ('8755', '左贡县', '540327', '540300', '3');
INSERT INTO `oma_area` VALUES ('8756', '拉萨市', '540100', '540000', '2');
INSERT INTO `oma_area` VALUES ('8757', '达孜县', '540126', '540100', '3');
INSERT INTO `oma_area` VALUES ('8758', '城关区', '540102', '540100', '3');
INSERT INTO `oma_area` VALUES ('8759', '当雄县', '540122', '540100', '3');
INSERT INTO `oma_area` VALUES ('8760', '堆龙德庆区', '540103', '540100', '3');
INSERT INTO `oma_area` VALUES ('8761', '林周县', '540121', '540100', '3');
INSERT INTO `oma_area` VALUES ('8762', '墨竹工卡县', '540127', '540100', '3');
INSERT INTO `oma_area` VALUES ('8763', '尼木县', '540123', '540100', '3');
INSERT INTO `oma_area` VALUES ('8764', '曲水县', '540124', '540100', '3');
INSERT INTO `oma_area` VALUES ('8765', '林芝市', '540400', '540000', '2');
INSERT INTO `oma_area` VALUES ('8766', '巴宜区', '540402', '540400', '3');
INSERT INTO `oma_area` VALUES ('8767', '察隅县', '540425', '540400', '3');
INSERT INTO `oma_area` VALUES ('8768', '波密县', '540424', '540400', '3');
INSERT INTO `oma_area` VALUES ('8769', '工布江达县', '540421', '540400', '3');
INSERT INTO `oma_area` VALUES ('8770', '朗县', '540426', '540400', '3');
INSERT INTO `oma_area` VALUES ('8771', '米林县', '540422', '540400', '3');
INSERT INTO `oma_area` VALUES ('8772', '墨脱县', '540423', '540400', '3');
INSERT INTO `oma_area` VALUES ('8773', '那曲地区', '542400', '540000', '2');
INSERT INTO `oma_area` VALUES ('8774', '安多县', '542425', '542400', '3');
INSERT INTO `oma_area` VALUES ('8775', '巴青县', '542429', '542400', '3');
INSERT INTO `oma_area` VALUES ('8776', '班戈县', '542428', '542400', '3');
INSERT INTO `oma_area` VALUES ('8777', '比如县', '542423', '542400', '3');
INSERT INTO `oma_area` VALUES ('8778', '嘉黎县', '542422', '542400', '3');
INSERT INTO `oma_area` VALUES ('8779', '那曲县', '542421', '542400', '3');
INSERT INTO `oma_area` VALUES ('8780', '尼玛县', '542430', '542400', '3');
INSERT INTO `oma_area` VALUES ('8781', '聂荣县', '542424', '542400', '3');
INSERT INTO `oma_area` VALUES ('8782', '申扎县', '542426', '542400', '3');
INSERT INTO `oma_area` VALUES ('8783', '双湖县', '542431', '542400', '3');
INSERT INTO `oma_area` VALUES ('8784', '索县', '542427', '542400', '3');
INSERT INTO `oma_area` VALUES ('8785', '山南市', '540500', '540000', '2');
INSERT INTO `oma_area` VALUES ('8786', '措美县', '540526', '540500', '3');
INSERT INTO `oma_area` VALUES ('8787', '错那县', '540530', '540500', '3');
INSERT INTO `oma_area` VALUES ('8788', '贡嘎县', '540522', '540500', '3');
INSERT INTO `oma_area` VALUES ('8789', '加查县', '540528', '540500', '3');
INSERT INTO `oma_area` VALUES ('8790', '浪卡子县', '540531', '540500', '3');
INSERT INTO `oma_area` VALUES ('8791', '隆子县', '540529', '540500', '3');
INSERT INTO `oma_area` VALUES ('8792', '洛扎县', '540527', '540500', '3');
INSERT INTO `oma_area` VALUES ('8793', '乃东区', '540502', '540500', '3');
INSERT INTO `oma_area` VALUES ('8794', '曲松县', '540525', '540500', '3');
INSERT INTO `oma_area` VALUES ('8795', '琼结县', '540524', '540500', '3');
INSERT INTO `oma_area` VALUES ('8796', '桑日县', '540523', '540500', '3');
INSERT INTO `oma_area` VALUES ('8797', '扎囊县', '540521', '540500', '3');
INSERT INTO `oma_area` VALUES ('8798', '日喀则市', '540200', '540000', '2');
INSERT INTO `oma_area` VALUES ('8799', '白朗县', '540228', '540200', '3');
INSERT INTO `oma_area` VALUES ('8800', '昂仁县', '540226', '540200', '3');
INSERT INTO `oma_area` VALUES ('8801', '定结县', '540231', '540200', '3');
INSERT INTO `oma_area` VALUES ('8802', '定日县', '540223', '540200', '3');
INSERT INTO `oma_area` VALUES ('8803', '岗巴县', '540237', '540200', '3');
INSERT INTO `oma_area` VALUES ('8804', '吉隆县', '540234', '540200', '3');
INSERT INTO `oma_area` VALUES ('8805', '江孜县', '540222', '540200', '3');
INSERT INTO `oma_area` VALUES ('8806', '康马县', '540230', '540200', '3');
INSERT INTO `oma_area` VALUES ('8807', '拉孜县', '540225', '540200', '3');
INSERT INTO `oma_area` VALUES ('8808', '南木林县', '540221', '540200', '3');
INSERT INTO `oma_area` VALUES ('8809', '聂拉木县', '540235', '540200', '3');
INSERT INTO `oma_area` VALUES ('8810', '仁布县', '540229', '540200', '3');
INSERT INTO `oma_area` VALUES ('8811', '萨迦县', '540224', '540200', '3');
INSERT INTO `oma_area` VALUES ('8812', '萨嘎县', '540236', '540200', '3');
INSERT INTO `oma_area` VALUES ('8813', '桑珠孜区', '540202', '540200', '3');
INSERT INTO `oma_area` VALUES ('8814', '谢通门县', '540227', '540200', '3');
INSERT INTO `oma_area` VALUES ('8815', '亚东县', '540233', '540200', '3');
INSERT INTO `oma_area` VALUES ('8816', '仲巴县', '540232', '540200', '3');
INSERT INTO `oma_area` VALUES ('8817', '四川省', '510000', '', '1');
INSERT INTO `oma_area` VALUES ('8818', '阿坝藏族羌族自治州', '513200', '510000', '2');
INSERT INTO `oma_area` VALUES ('8819', '阿坝县', '513231', '513200', '3');
INSERT INTO `oma_area` VALUES ('8820', '红原县', '513233', '513200', '3');
INSERT INTO `oma_area` VALUES ('8821', '黑水县', '513228', '513200', '3');
INSERT INTO `oma_area` VALUES ('8822', '金川县', '513226', '513200', '3');
INSERT INTO `oma_area` VALUES ('8823', '九寨沟县', '513225', '513200', '3');
INSERT INTO `oma_area` VALUES ('8824', '理县', '513222', '513200', '3');
INSERT INTO `oma_area` VALUES ('8825', '茂县', '513223', '513200', '3');
INSERT INTO `oma_area` VALUES ('8826', '马尔康市', '513201', '513200', '3');
INSERT INTO `oma_area` VALUES ('8827', '壤塘县', '513230', '513200', '3');
INSERT INTO `oma_area` VALUES ('8828', '若尔盖县', '513232', '513200', '3');
INSERT INTO `oma_area` VALUES ('8829', '松潘县', '513224', '513200', '3');
INSERT INTO `oma_area` VALUES ('8830', '汶川县', '513221', '513200', '3');
INSERT INTO `oma_area` VALUES ('8831', '小金县', '513227', '513200', '3');
INSERT INTO `oma_area` VALUES ('8832', '巴中市', '511900', '510000', '2');
INSERT INTO `oma_area` VALUES ('8833', '巴州区', '511902', '511900', '3');
INSERT INTO `oma_area` VALUES ('8834', '恩阳区', '511903', '511900', '3');
INSERT INTO `oma_area` VALUES ('8835', '南江县', '511922', '511900', '3');
INSERT INTO `oma_area` VALUES ('8836', '平昌县', '511923', '511900', '3');
INSERT INTO `oma_area` VALUES ('8837', '通江县', '511921', '511900', '3');
INSERT INTO `oma_area` VALUES ('8838', '成都市', '510100', '510000', '2');
INSERT INTO `oma_area` VALUES ('8839', '成华区', '510108', '510100', '3');
INSERT INTO `oma_area` VALUES ('8840', '崇州市', '510184', '510100', '3');
INSERT INTO `oma_area` VALUES ('8841', '大邑县', '510129', '510100', '3');
INSERT INTO `oma_area` VALUES ('8842', '都江堰市', '510181', '510100', '3');
INSERT INTO `oma_area` VALUES ('8843', '简阳市', '510185', '510100', '3');
INSERT INTO `oma_area` VALUES ('8844', '金堂县', '510121', '510100', '3');
INSERT INTO `oma_area` VALUES ('8845', '金牛区', '510106', '510100', '3');
INSERT INTO `oma_area` VALUES ('8846', '锦江区', '510104', '510100', '3');
INSERT INTO `oma_area` VALUES ('8847', '龙泉驿区', '510112', '510100', '3');
INSERT INTO `oma_area` VALUES ('8848', '彭州市', '510182', '510100', '3');
INSERT INTO `oma_area` VALUES ('8849', '郫都区', '510117', '510100', '3');
INSERT INTO `oma_area` VALUES ('8850', '蒲江县', '510131', '510100', '3');
INSERT INTO `oma_area` VALUES ('8851', '青白江区', '510113', '510100', '3');
INSERT INTO `oma_area` VALUES ('8852', '青羊区', '510105', '510100', '3');
INSERT INTO `oma_area` VALUES ('8853', '邛崃市', '510183', '510100', '3');
INSERT INTO `oma_area` VALUES ('8854', '双流区', '510116', '510100', '3');
INSERT INTO `oma_area` VALUES ('8855', '温江区', '510115', '510100', '3');
INSERT INTO `oma_area` VALUES ('8856', '武侯区', '510107', '510100', '3');
INSERT INTO `oma_area` VALUES ('8857', '新津县', '510132', '510100', '3');
INSERT INTO `oma_area` VALUES ('8858', '新都区', '510114', '510100', '3');
INSERT INTO `oma_area` VALUES ('8859', '达州市', '511700', '510000', '2');
INSERT INTO `oma_area` VALUES ('8860', '达川区', '511703', '511700', '3');
INSERT INTO `oma_area` VALUES ('8861', '大竹县', '511724', '511700', '3');
INSERT INTO `oma_area` VALUES ('8862', '开江县', '511723', '511700', '3');
INSERT INTO `oma_area` VALUES ('8863', '渠县', '511725', '511700', '3');
INSERT INTO `oma_area` VALUES ('8864', '通川区', '511702', '511700', '3');
INSERT INTO `oma_area` VALUES ('8865', '万源市', '511781', '511700', '3');
INSERT INTO `oma_area` VALUES ('8866', '宣汉县', '511722', '511700', '3');
INSERT INTO `oma_area` VALUES ('8867', '广元市', '510800', '510000', '2');
INSERT INTO `oma_area` VALUES ('8868', '苍溪县', '510824', '510800', '3');
INSERT INTO `oma_area` VALUES ('8869', '朝天区', '510812', '510800', '3');
INSERT INTO `oma_area` VALUES ('8870', '剑阁县', '510823', '510800', '3');
INSERT INTO `oma_area` VALUES ('8871', '利州区', '510802', '510800', '3');
INSERT INTO `oma_area` VALUES ('8872', '青川县', '510822', '510800', '3');
INSERT INTO `oma_area` VALUES ('8873', '旺苍县', '510821', '510800', '3');
INSERT INTO `oma_area` VALUES ('8874', '昭化区', '510811', '510800', '3');
INSERT INTO `oma_area` VALUES ('8875', '广安市', '511600', '510000', '2');
INSERT INTO `oma_area` VALUES ('8876', '广安区', '511602', '511600', '3');
INSERT INTO `oma_area` VALUES ('8877', '华蓥市', '511681', '511600', '3');
INSERT INTO `oma_area` VALUES ('8878', '邻水县', '511623', '511600', '3');
INSERT INTO `oma_area` VALUES ('8879', '前锋区', '511603', '511600', '3');
INSERT INTO `oma_area` VALUES ('8880', '武胜县', '511622', '511600', '3');
INSERT INTO `oma_area` VALUES ('8881', '岳池县', '511621', '511600', '3');
INSERT INTO `oma_area` VALUES ('8882', '德阳市', '510600', '510000', '2');
INSERT INTO `oma_area` VALUES ('8883', '广汉市', '510681', '510600', '3');
INSERT INTO `oma_area` VALUES ('8884', '旌阳区', '510603', '510600', '3');
INSERT INTO `oma_area` VALUES ('8885', '罗江县', '510626', '510600', '3');
INSERT INTO `oma_area` VALUES ('8886', '绵竹市', '510683', '510600', '3');
INSERT INTO `oma_area` VALUES ('8887', '什邡市', '510682', '510600', '3');
INSERT INTO `oma_area` VALUES ('8888', '中江县', '510623', '510600', '3');
INSERT INTO `oma_area` VALUES ('8889', '甘孜藏族自治州', '513300', '510000', '2');
INSERT INTO `oma_area` VALUES ('8890', '巴塘县', '513335', '513300', '3');
INSERT INTO `oma_area` VALUES ('8891', '白玉县', '513331', '513300', '3');
INSERT INTO `oma_area` VALUES ('8892', '德格县', '513330', '513300', '3');
INSERT INTO `oma_area` VALUES ('8893', '道孚县', '513326', '513300', '3');
INSERT INTO `oma_area` VALUES ('8894', '丹巴县', '513323', '513300', '3');
INSERT INTO `oma_area` VALUES ('8895', '稻城县', '513337', '513300', '3');
INSERT INTO `oma_area` VALUES ('8896', '得荣县', '513338', '513300', '3');
INSERT INTO `oma_area` VALUES ('8897', '甘孜县', '513328', '513300', '3');
INSERT INTO `oma_area` VALUES ('8898', '九龙县', '513324', '513300', '3');
INSERT INTO `oma_area` VALUES ('8899', '康定市', '513301', '513300', '3');
INSERT INTO `oma_area` VALUES ('8900', '理塘县', '513334', '513300', '3');
INSERT INTO `oma_area` VALUES ('8901', '泸定县', '513322', '513300', '3');
INSERT INTO `oma_area` VALUES ('8902', '炉霍县', '513327', '513300', '3');
INSERT INTO `oma_area` VALUES ('8903', '色达县', '513333', '513300', '3');
INSERT INTO `oma_area` VALUES ('8904', '石渠县', '513332', '513300', '3');
INSERT INTO `oma_area` VALUES ('8905', '乡城县', '513336', '513300', '3');
INSERT INTO `oma_area` VALUES ('8906', '新龙县', '513329', '513300', '3');
INSERT INTO `oma_area` VALUES ('8907', '雅江县', '513325', '513300', '3');
INSERT INTO `oma_area` VALUES ('8908', '乐山市', '511100', '510000', '2');
INSERT INTO `oma_area` VALUES ('8909', '峨眉山市', '511181', '511100', '3');
INSERT INTO `oma_area` VALUES ('8910', '峨边彝族自治县', '511132', '511100', '3');
INSERT INTO `oma_area` VALUES ('8911', '夹江县', '511126', '511100', '3');
INSERT INTO `oma_area` VALUES ('8912', '犍为县', '511123', '511100', '3');
INSERT INTO `oma_area` VALUES ('8913', '金口河区', '511113', '511100', '3');
INSERT INTO `oma_area` VALUES ('8914', '井研县', '511124', '511100', '3');
INSERT INTO `oma_area` VALUES ('8915', '马边彝族自治县', '511133', '511100', '3');
INSERT INTO `oma_area` VALUES ('8916', '沐川县', '511129', '511100', '3');
INSERT INTO `oma_area` VALUES ('8917', '沙湾区', '511111', '511100', '3');
INSERT INTO `oma_area` VALUES ('8918', '市中区', '511102', '511100', '3');
INSERT INTO `oma_area` VALUES ('8919', '五通桥区', '511112', '511100', '3');
INSERT INTO `oma_area` VALUES ('8920', '凉山彝族自治州', '513400', '510000', '2');
INSERT INTO `oma_area` VALUES ('8921', '布拖县', '513429', '513400', '3');
INSERT INTO `oma_area` VALUES ('8922', '德昌县', '513424', '513400', '3');
INSERT INTO `oma_area` VALUES ('8923', '甘洛县', '513435', '513400', '3');
INSERT INTO `oma_area` VALUES ('8924', '会东县', '513426', '513400', '3');
INSERT INTO `oma_area` VALUES ('8925', '会理县', '513425', '513400', '3');
INSERT INTO `oma_area` VALUES ('8926', '金阳县', '513430', '513400', '3');
INSERT INTO `oma_area` VALUES ('8927', '雷波县', '513437', '513400', '3');
INSERT INTO `oma_area` VALUES ('8928', '美姑县', '513436', '513400', '3');
INSERT INTO `oma_area` VALUES ('8929', '冕宁县', '513433', '513400', '3');
INSERT INTO `oma_area` VALUES ('8930', '木里藏族自治县', '513422', '513400', '3');
INSERT INTO `oma_area` VALUES ('8931', '宁南县', '513427', '513400', '3');
INSERT INTO `oma_area` VALUES ('8932', '普格县', '513428', '513400', '3');
INSERT INTO `oma_area` VALUES ('8933', '西昌市', '513401', '513400', '3');
INSERT INTO `oma_area` VALUES ('8934', '喜德县', '513432', '513400', '3');
INSERT INTO `oma_area` VALUES ('8935', '盐源县', '513423', '513400', '3');
INSERT INTO `oma_area` VALUES ('8936', '越西县', '513434', '513400', '3');
INSERT INTO `oma_area` VALUES ('8937', '昭觉县', '513431', '513400', '3');
INSERT INTO `oma_area` VALUES ('8938', '泸州市', '510500', '510000', '2');
INSERT INTO `oma_area` VALUES ('8939', '古蔺县', '510525', '510500', '3');
INSERT INTO `oma_area` VALUES ('8940', '合江县', '510522', '510500', '3');
INSERT INTO `oma_area` VALUES ('8941', '江阳区', '510502', '510500', '3');
INSERT INTO `oma_area` VALUES ('8942', '龙马潭区', '510504', '510500', '3');
INSERT INTO `oma_area` VALUES ('8943', '泸县', '510521', '510500', '3');
INSERT INTO `oma_area` VALUES ('8944', '纳溪区', '510503', '510500', '3');
INSERT INTO `oma_area` VALUES ('8945', '叙永县', '510524', '510500', '3');
INSERT INTO `oma_area` VALUES ('8946', '眉山市', '511400', '510000', '2');
INSERT INTO `oma_area` VALUES ('8947', '丹棱县', '511424', '511400', '3');
INSERT INTO `oma_area` VALUES ('8948', '东坡区', '511402', '511400', '3');
INSERT INTO `oma_area` VALUES ('8949', '洪雅县', '511423', '511400', '3');
INSERT INTO `oma_area` VALUES ('8950', '彭山区', '511403', '511400', '3');
INSERT INTO `oma_area` VALUES ('8951', '青神县', '511425', '511400', '3');
INSERT INTO `oma_area` VALUES ('8952', '仁寿县', '511421', '511400', '3');
INSERT INTO `oma_area` VALUES ('8953', '绵阳市', '510700', '510000', '2');
INSERT INTO `oma_area` VALUES ('8954', '安州区', '510705', '510700', '3');
INSERT INTO `oma_area` VALUES ('8955', '北川羌族自治县', '510726', '510700', '3');
INSERT INTO `oma_area` VALUES ('8956', '涪城区', '510703', '510700', '3');
INSERT INTO `oma_area` VALUES ('8957', '江油市', '510781', '510700', '3');
INSERT INTO `oma_area` VALUES ('8958', '平武县', '510727', '510700', '3');
INSERT INTO `oma_area` VALUES ('8959', '三台县', '510722', '510700', '3');
INSERT INTO `oma_area` VALUES ('8960', '盐亭县', '510723', '510700', '3');
INSERT INTO `oma_area` VALUES ('8961', '游仙区', '510704', '510700', '3');
INSERT INTO `oma_area` VALUES ('8962', '梓潼县', '510725', '510700', '3');
INSERT INTO `oma_area` VALUES ('8963', '南充市', '511300', '510000', '2');
INSERT INTO `oma_area` VALUES ('8964', '高坪区', '511303', '511300', '3');
INSERT INTO `oma_area` VALUES ('8965', '嘉陵区', '511304', '511300', '3');
INSERT INTO `oma_area` VALUES ('8966', '阆中市', '511381', '511300', '3');
INSERT INTO `oma_area` VALUES ('8967', '南部县', '511321', '511300', '3');
INSERT INTO `oma_area` VALUES ('8968', '蓬安县', '511323', '511300', '3');
INSERT INTO `oma_area` VALUES ('8969', '顺庆区', '511302', '511300', '3');
INSERT INTO `oma_area` VALUES ('8970', '西充县', '511325', '511300', '3');
INSERT INTO `oma_area` VALUES ('8971', '仪陇县', '511324', '511300', '3');
INSERT INTO `oma_area` VALUES ('8972', '营山县', '511322', '511300', '3');
INSERT INTO `oma_area` VALUES ('8973', '内江市', '511000', '510000', '2');
INSERT INTO `oma_area` VALUES ('8974', '东兴区', '511011', '511000', '3');
INSERT INTO `oma_area` VALUES ('8975', '隆昌市', '511028', '511000', '3');
INSERT INTO `oma_area` VALUES ('8976', '市中区', '511002', '511000', '3');
INSERT INTO `oma_area` VALUES ('8977', '威远县', '511024', '511000', '3');
INSERT INTO `oma_area` VALUES ('8978', '资中县', '511025', '511000', '3');
INSERT INTO `oma_area` VALUES ('8979', '攀枝花市', '510400', '510000', '2');
INSERT INTO `oma_area` VALUES ('8980', '东区', '510402', '510400', '3');
INSERT INTO `oma_area` VALUES ('8981', '米易县', '510421', '510400', '3');
INSERT INTO `oma_area` VALUES ('8982', '仁和区', '510411', '510400', '3');
INSERT INTO `oma_area` VALUES ('8983', '西区', '510403', '510400', '3');
INSERT INTO `oma_area` VALUES ('8984', '盐边县', '510422', '510400', '3');
INSERT INTO `oma_area` VALUES ('8985', '遂宁市', '510900', '510000', '2');
INSERT INTO `oma_area` VALUES ('8986', '安居区', '510904', '510900', '3');
INSERT INTO `oma_area` VALUES ('8987', '大英县', '510923', '510900', '3');
INSERT INTO `oma_area` VALUES ('8988', '船山区', '510903', '510900', '3');
INSERT INTO `oma_area` VALUES ('8989', '蓬溪县', '510921', '510900', '3');
INSERT INTO `oma_area` VALUES ('8990', '射洪县', '510922', '510900', '3');
INSERT INTO `oma_area` VALUES ('8991', '雅安市', '511800', '510000', '2');
INSERT INTO `oma_area` VALUES ('8992', '宝兴县', '511827', '511800', '3');
INSERT INTO `oma_area` VALUES ('8993', '汉源县', '511823', '511800', '3');
INSERT INTO `oma_area` VALUES ('8994', '芦山县', '511826', '511800', '3');
INSERT INTO `oma_area` VALUES ('8995', '名山区', '511803', '511800', '3');
INSERT INTO `oma_area` VALUES ('8996', '石棉县', '511824', '511800', '3');
INSERT INTO `oma_area` VALUES ('8997', '天全县', '511825', '511800', '3');
INSERT INTO `oma_area` VALUES ('8998', '荥经县', '511822', '511800', '3');
INSERT INTO `oma_area` VALUES ('8999', '雨城区', '511802', '511800', '3');
INSERT INTO `oma_area` VALUES ('9000', '宜宾市', '511500', '510000', '2');
INSERT INTO `oma_area` VALUES ('9001', '翠屏区', '511502', '511500', '3');
INSERT INTO `oma_area` VALUES ('9002', '高县', '511525', '511500', '3');
INSERT INTO `oma_area` VALUES ('9003', '珙县', '511526', '511500', '3');
INSERT INTO `oma_area` VALUES ('9004', '江安县', '511523', '511500', '3');
INSERT INTO `oma_area` VALUES ('9005', '南溪区', '511503', '511500', '3');
INSERT INTO `oma_area` VALUES ('9006', '屏山县', '511529', '511500', '3');
INSERT INTO `oma_area` VALUES ('9007', '兴文县', '511528', '511500', '3');
INSERT INTO `oma_area` VALUES ('9008', '宜宾县', '511521', '511500', '3');
INSERT INTO `oma_area` VALUES ('9009', '筠连县', '511527', '511500', '3');
INSERT INTO `oma_area` VALUES ('9010', '长宁县', '511524', '511500', '3');
INSERT INTO `oma_area` VALUES ('9011', '资阳市', '512000', '510000', '2');
INSERT INTO `oma_area` VALUES ('9012', '安岳县', '512021', '512000', '3');
INSERT INTO `oma_area` VALUES ('9013', '乐至县', '512022', '512000', '3');
INSERT INTO `oma_area` VALUES ('9014', '雁江区', '512002', '512000', '3');
INSERT INTO `oma_area` VALUES ('9015', '自贡市', '510300', '510000', '2');
INSERT INTO `oma_area` VALUES ('9016', '大安区', '510304', '510300', '3');
INSERT INTO `oma_area` VALUES ('9017', '富顺县', '510322', '510300', '3');
INSERT INTO `oma_area` VALUES ('9018', '贡井区', '510303', '510300', '3');
INSERT INTO `oma_area` VALUES ('9019', '荣县', '510321', '510300', '3');
INSERT INTO `oma_area` VALUES ('9020', '沿滩区', '510311', '510300', '3');
INSERT INTO `oma_area` VALUES ('9021', '自流井区', '510302', '510300', '3');
INSERT INTO `oma_area` VALUES ('9022', '香港特别行政区', '810000', '', '1');
INSERT INTO `oma_area` VALUES ('9023', '油尖旺区', '810005', '810000', '2');
INSERT INTO `oma_area` VALUES ('9024', '湾仔区', '810002', '810000', '2');
INSERT INTO `oma_area` VALUES ('9025', '北区', '810013', '810000', '2');
INSERT INTO `oma_area` VALUES ('9026', '龙跃头乡', '810013', '810013', '3');
INSERT INTO `oma_area` VALUES ('9027', '大埔区', '810014', '810000', '2');
INSERT INTO `oma_area` VALUES ('9028', '东区', '810003', '810000', '2');
INSERT INTO `oma_area` VALUES ('9029', '观塘区', '810009', '810000', '2');
INSERT INTO `oma_area` VALUES ('9030', '黄大仙区', '810008', '810000', '2');
INSERT INTO `oma_area` VALUES ('9031', '九龙城区', '810007', '810000', '2');
INSERT INTO `oma_area` VALUES ('9032', '葵青区', '810017', '810000', '2');
INSERT INTO `oma_area` VALUES ('9033', '离岛区', '810018', '810000', '2');
INSERT INTO `oma_area` VALUES ('9034', '梅窝乡', '810018', '810018', '3');
INSERT INTO `oma_area` VALUES ('9035', '南区', '810004', '810000', '2');
INSERT INTO `oma_area` VALUES ('9036', '荃湾区', '810010', '810000', '2');
INSERT INTO `oma_area` VALUES ('9037', '沙田区', '810016', '810000', '2');
INSERT INTO `oma_area` VALUES ('9038', '深水埗区', '810006', '810000', '2');
INSERT INTO `oma_area` VALUES ('9039', '屯门区', '810011', '810000', '2');
INSERT INTO `oma_area` VALUES ('9040', '西贡区', '810015', '810000', '2');
INSERT INTO `oma_area` VALUES ('9041', '元朗区', '810012', '810000', '2');
INSERT INTO `oma_area` VALUES ('9042', '逢吉乡', '810012', '810012', '3');
INSERT INTO `oma_area` VALUES ('9043', '中西区', '810001', '810000', '2');
INSERT INTO `oma_area` VALUES ('9044', '云南省', '530000', '', '1');
INSERT INTO `oma_area` VALUES ('9045', '保山市', '530500', '530000', '2');
INSERT INTO `oma_area` VALUES ('9046', '昌宁县', '530524', '530500', '3');
INSERT INTO `oma_area` VALUES ('9047', '隆阳区', '530502', '530500', '3');
INSERT INTO `oma_area` VALUES ('9048', '龙陵县', '530523', '530500', '3');
INSERT INTO `oma_area` VALUES ('9049', '施甸县', '530521', '530500', '3');
INSERT INTO `oma_area` VALUES ('9050', '腾冲市', '530581', '530500', '3');
INSERT INTO `oma_area` VALUES ('9051', '楚雄彝族自治州', '532300', '530000', '2');
INSERT INTO `oma_area` VALUES ('9052', '楚雄市', '532301', '532300', '3');
INSERT INTO `oma_area` VALUES ('9053', '大姚县', '532326', '532300', '3');
INSERT INTO `oma_area` VALUES ('9054', '禄丰县', '532331', '532300', '3');
INSERT INTO `oma_area` VALUES ('9055', '牟定县', '532323', '532300', '3');
INSERT INTO `oma_area` VALUES ('9056', '南华县', '532324', '532300', '3');
INSERT INTO `oma_area` VALUES ('9057', '双柏县', '532322', '532300', '3');
INSERT INTO `oma_area` VALUES ('9058', '武定县', '532329', '532300', '3');
INSERT INTO `oma_area` VALUES ('9059', '姚安县', '532325', '532300', '3');
INSERT INTO `oma_area` VALUES ('9060', '永仁县', '532327', '532300', '3');
INSERT INTO `oma_area` VALUES ('9061', '元谋县', '532328', '532300', '3');
INSERT INTO `oma_area` VALUES ('9062', '大理白族自治州', '532900', '530000', '2');
INSERT INTO `oma_area` VALUES ('9063', '宾川县', '532924', '532900', '3');
INSERT INTO `oma_area` VALUES ('9064', '大理市', '532901', '532900', '3');
INSERT INTO `oma_area` VALUES ('9065', '洱源县', '532930', '532900', '3');
INSERT INTO `oma_area` VALUES ('9066', '鹤庆县', '532932', '532900', '3');
INSERT INTO `oma_area` VALUES ('9067', '剑川县', '532931', '532900', '3');
INSERT INTO `oma_area` VALUES ('9068', '弥渡县', '532925', '532900', '3');
INSERT INTO `oma_area` VALUES ('9069', '南涧彝族自治县', '532926', '532900', '3');
INSERT INTO `oma_area` VALUES ('9070', '巍山彝族回族自治县', '532927', '532900', '3');
INSERT INTO `oma_area` VALUES ('9071', '祥云县', '532923', '532900', '3');
INSERT INTO `oma_area` VALUES ('9072', '漾濞彝族自治县', '532922', '532900', '3');
INSERT INTO `oma_area` VALUES ('9073', '永平县', '532928', '532900', '3');
INSERT INTO `oma_area` VALUES ('9074', '云龙县', '532929', '532900', '3');
INSERT INTO `oma_area` VALUES ('9075', '德宏傣族景颇族自治州', '533100', '530000', '2');
INSERT INTO `oma_area` VALUES ('9076', '梁河县', '533122', '533100', '3');
INSERT INTO `oma_area` VALUES ('9077', '陇川县', '533124', '533100', '3');
INSERT INTO `oma_area` VALUES ('9078', '芒市', '533103', '533100', '3');
INSERT INTO `oma_area` VALUES ('9079', '瑞丽市', '533102', '533100', '3');
INSERT INTO `oma_area` VALUES ('9080', '盈江县', '533123', '533100', '3');
INSERT INTO `oma_area` VALUES ('9081', '迪庆藏族自治州', '533400', '530000', '2');
INSERT INTO `oma_area` VALUES ('9082', '德钦县', '533422', '533400', '3');
INSERT INTO `oma_area` VALUES ('9083', '维西傈僳族自治县', '533423', '533400', '3');
INSERT INTO `oma_area` VALUES ('9084', '香格里拉市', '533401', '533400', '3');
INSERT INTO `oma_area` VALUES ('9085', '红河哈尼族彝族自治州', '532500', '530000', '2');
INSERT INTO `oma_area` VALUES ('9086', '个旧市', '532501', '532500', '3');
INSERT INTO `oma_area` VALUES ('9087', '红河县', '532529', '532500', '3');
INSERT INTO `oma_area` VALUES ('9088', '河口瑶族自治县', '532532', '532500', '3');
INSERT INTO `oma_area` VALUES ('9089', '建水县', '532524', '532500', '3');
INSERT INTO `oma_area` VALUES ('9090', '金平苗族瑶族傣族自治县', '532530', '532500', '3');
INSERT INTO `oma_area` VALUES ('9091', '开远市', '532502', '532500', '3');
INSERT INTO `oma_area` VALUES ('9092', '泸西县', '532527', '532500', '3');
INSERT INTO `oma_area` VALUES ('9093', '绿春县', '532531', '532500', '3');
INSERT INTO `oma_area` VALUES ('9094', '弥勒市', '532504', '532500', '3');
INSERT INTO `oma_area` VALUES ('9095', '蒙自市', '532503', '532500', '3');
INSERT INTO `oma_area` VALUES ('9096', '屏边苗族自治县', '532523', '532500', '3');
INSERT INTO `oma_area` VALUES ('9097', '石屏县', '532525', '532500', '3');
INSERT INTO `oma_area` VALUES ('9098', '元阳县', '532528', '532500', '3');
INSERT INTO `oma_area` VALUES ('9099', '临沧市', '530900', '530000', '2');
INSERT INTO `oma_area` VALUES ('9100', '沧源佤族自治县', '530927', '530900', '3');
INSERT INTO `oma_area` VALUES ('9101', '凤庆县', '530921', '530900', '3');
INSERT INTO `oma_area` VALUES ('9102', '耿马傣族佤族自治县', '530926', '530900', '3');
INSERT INTO `oma_area` VALUES ('9103', '临翔区', '530902', '530900', '3');
INSERT INTO `oma_area` VALUES ('9104', '双江拉祜族佤族布朗族傣族自治县', '530925', '530900', '3');
INSERT INTO `oma_area` VALUES ('9105', '永德县', '530923', '530900', '3');
INSERT INTO `oma_area` VALUES ('9106', '云县', '530922', '530900', '3');
INSERT INTO `oma_area` VALUES ('9107', '镇康县', '530924', '530900', '3');
INSERT INTO `oma_area` VALUES ('9108', '昆明市', '530100', '530000', '2');
INSERT INTO `oma_area` VALUES ('9109', '安宁市', '530181', '530100', '3');
INSERT INTO `oma_area` VALUES ('9110', '呈贡区', '530114', '530100', '3');
INSERT INTO `oma_area` VALUES ('9111', '东川区', '530113', '530100', '3');
INSERT INTO `oma_area` VALUES ('9112', '富民县', '530124', '530100', '3');
INSERT INTO `oma_area` VALUES ('9113', '官渡区', '530111', '530100', '3');
INSERT INTO `oma_area` VALUES ('9114', '晋宁区', '530115', '530100', '3');
INSERT INTO `oma_area` VALUES ('9115', '禄劝彝族苗族自治县', '530128', '530100', '3');
INSERT INTO `oma_area` VALUES ('9116', '盘龙区', '530103', '530100', '3');
INSERT INTO `oma_area` VALUES ('9117', '石林彝族自治县', '530126', '530100', '3');
INSERT INTO `oma_area` VALUES ('9118', '嵩明县', '530127', '530100', '3');
INSERT INTO `oma_area` VALUES ('9119', '五华区', '530102', '530100', '3');
INSERT INTO `oma_area` VALUES ('9120', '西山区', '530112', '530100', '3');
INSERT INTO `oma_area` VALUES ('9121', '寻甸回族彝族自治县', '530129', '530100', '3');
INSERT INTO `oma_area` VALUES ('9122', '宜良县', '530125', '530100', '3');
INSERT INTO `oma_area` VALUES ('9123', '丽江市', '530700', '530000', '2');
INSERT INTO `oma_area` VALUES ('9124', '古城区', '530702', '530700', '3');
INSERT INTO `oma_area` VALUES ('9125', '华坪县', '530723', '530700', '3');
INSERT INTO `oma_area` VALUES ('9126', '宁蒗彝族自治县', '530724', '530700', '3');
INSERT INTO `oma_area` VALUES ('9127', '永胜县', '530722', '530700', '3');
INSERT INTO `oma_area` VALUES ('9128', '玉龙纳西族自治县', '530721', '530700', '3');
INSERT INTO `oma_area` VALUES ('9129', '怒江傈僳族自治州', '533300', '530000', '2');
INSERT INTO `oma_area` VALUES ('9130', '福贡县', '533323', '533300', '3');
INSERT INTO `oma_area` VALUES ('9131', '贡山独龙族怒族自治县', '533324', '533300', '3');
INSERT INTO `oma_area` VALUES ('9132', '兰坪白族普米族自治县', '533325', '533300', '3');
INSERT INTO `oma_area` VALUES ('9133', '泸水市', '533301', '533300', '3');
INSERT INTO `oma_area` VALUES ('9134', '普洱市', '530800', '530000', '2');
INSERT INTO `oma_area` VALUES ('9135', '江城哈尼族彝族自治县', '530826', '530800', '3');
INSERT INTO `oma_area` VALUES ('9136', '景谷傣族彝族自治县', '530824', '530800', '3');
INSERT INTO `oma_area` VALUES ('9137', '景东彝族自治县', '530823', '530800', '3');
INSERT INTO `oma_area` VALUES ('9138', '澜沧拉祜族自治县', '530828', '530800', '3');
INSERT INTO `oma_area` VALUES ('9139', '孟连傣族拉祜族佤族自治县', '530827', '530800', '3');
INSERT INTO `oma_area` VALUES ('9140', '墨江哈尼族自治县', '530822', '530800', '3');
INSERT INTO `oma_area` VALUES ('9141', '宁洱哈尼族彝族自治县', '530821', '530800', '3');
INSERT INTO `oma_area` VALUES ('9142', '思茅区', '530802', '530800', '3');
INSERT INTO `oma_area` VALUES ('9143', '西盟佤族自治县', '530829', '530800', '3');
INSERT INTO `oma_area` VALUES ('9144', '镇沅彝族哈尼族拉祜族自治县', '530825', '530800', '3');
INSERT INTO `oma_area` VALUES ('9145', '曲靖市', '530300', '530000', '2');
INSERT INTO `oma_area` VALUES ('9146', '富源县', '530325', '530300', '3');
INSERT INTO `oma_area` VALUES ('9147', '会泽县', '530326', '530300', '3');
INSERT INTO `oma_area` VALUES ('9148', '陆良县', '530322', '530300', '3');
INSERT INTO `oma_area` VALUES ('9149', '罗平县', '530324', '530300', '3');
INSERT INTO `oma_area` VALUES ('9150', '马龙县', '530321', '530300', '3');
INSERT INTO `oma_area` VALUES ('9151', '麒麟区', '530302', '530300', '3');
INSERT INTO `oma_area` VALUES ('9152', '师宗县', '530323', '530300', '3');
INSERT INTO `oma_area` VALUES ('9153', '宣威市', '530381', '530300', '3');
INSERT INTO `oma_area` VALUES ('9154', '沾益区', '530303', '530300', '3');
INSERT INTO `oma_area` VALUES ('9155', '文山壮族苗族自治州', '532600', '530000', '2');
INSERT INTO `oma_area` VALUES ('9156', '富宁县', '532628', '532600', '3');
INSERT INTO `oma_area` VALUES ('9157', '广南县', '532627', '532600', '3');
INSERT INTO `oma_area` VALUES ('9158', '马关县', '532625', '532600', '3');
INSERT INTO `oma_area` VALUES ('9159', '麻栗坡县', '532624', '532600', '3');
INSERT INTO `oma_area` VALUES ('9160', '丘北县', '532626', '532600', '3');
INSERT INTO `oma_area` VALUES ('9161', '文山市', '532601', '532600', '3');
INSERT INTO `oma_area` VALUES ('9162', '西畴县', '532623', '532600', '3');
INSERT INTO `oma_area` VALUES ('9163', '砚山县', '532622', '532600', '3');
INSERT INTO `oma_area` VALUES ('9164', '西双版纳傣族自治州', '532800', '530000', '2');
INSERT INTO `oma_area` VALUES ('9165', '景洪市', '532801', '532800', '3');
INSERT INTO `oma_area` VALUES ('9166', '勐腊县', '532823', '532800', '3');
INSERT INTO `oma_area` VALUES ('9167', '勐海县', '532822', '532800', '3');
INSERT INTO `oma_area` VALUES ('9168', '昭通市', '530600', '530000', '2');
INSERT INTO `oma_area` VALUES ('9169', '大关县', '530624', '530600', '3');
INSERT INTO `oma_area` VALUES ('9170', '鲁甸县', '530621', '530600', '3');
INSERT INTO `oma_area` VALUES ('9171', '巧家县', '530622', '530600', '3');
INSERT INTO `oma_area` VALUES ('9172', '水富县', '530630', '530600', '3');
INSERT INTO `oma_area` VALUES ('9173', '绥江县', '530626', '530600', '3');
INSERT INTO `oma_area` VALUES ('9174', '威信县', '530629', '530600', '3');
INSERT INTO `oma_area` VALUES ('9175', '盐津县', '530623', '530600', '3');
INSERT INTO `oma_area` VALUES ('9176', '彝良县', '530628', '530600', '3');
INSERT INTO `oma_area` VALUES ('9177', '永善县', '530625', '530600', '3');
INSERT INTO `oma_area` VALUES ('9178', '镇雄县', '530627', '530600', '3');
INSERT INTO `oma_area` VALUES ('9179', '昭阳区', '530602', '530600', '3');
INSERT INTO `oma_area` VALUES ('9180', '玉溪市', '530400', '530000', '2');
INSERT INTO `oma_area` VALUES ('9181', '澄江县', '530422', '530400', '3');
INSERT INTO `oma_area` VALUES ('9182', '峨山彝族自治县', '530426', '530400', '3');
INSERT INTO `oma_area` VALUES ('9183', '华宁县', '530424', '530400', '3');
INSERT INTO `oma_area` VALUES ('9184', '红塔区', '530402', '530400', '3');
INSERT INTO `oma_area` VALUES ('9185', '江川区', '530403', '530400', '3');
INSERT INTO `oma_area` VALUES ('9186', '通海县', '530423', '530400', '3');
INSERT INTO `oma_area` VALUES ('9187', '新平彝族傣族自治县', '530427', '530400', '3');
INSERT INTO `oma_area` VALUES ('9188', '易门县', '530425', '530400', '3');
INSERT INTO `oma_area` VALUES ('9189', '元江哈尼族彝族傣族自治县', '530428', '530400', '3');
INSERT INTO `oma_area` VALUES ('9190', '浙江省', '330000', '', '1');
INSERT INTO `oma_area` VALUES ('9191', '湖州市', '330500', '330000', '2');
INSERT INTO `oma_area` VALUES ('9192', '安吉县', '330523', '330500', '3');
INSERT INTO `oma_area` VALUES ('9193', '德清县', '330521', '330500', '3');
INSERT INTO `oma_area` VALUES ('9194', '南浔区', '330503', '330500', '3');
INSERT INTO `oma_area` VALUES ('9195', '吴兴区', '330502', '330500', '3');
INSERT INTO `oma_area` VALUES ('9196', '长兴县', '330522', '330500', '3');
INSERT INTO `oma_area` VALUES ('9197', '杭州市', '330100', '330000', '2');
INSERT INTO `oma_area` VALUES ('9198', '滨江区', '330108', '330100', '3');
INSERT INTO `oma_area` VALUES ('9199', '淳安县', '330127', '330100', '3');
INSERT INTO `oma_area` VALUES ('9200', '富阳区', '330111', '330100', '3');
INSERT INTO `oma_area` VALUES ('9201', '拱墅区', '330105', '330100', '3');
INSERT INTO `oma_area` VALUES ('9202', '建德市', '330182', '330100', '3');
INSERT INTO `oma_area` VALUES ('9203', '江干区', '330104', '330100', '3');
INSERT INTO `oma_area` VALUES ('9204', '临安市', '330185', '330100', '3');
INSERT INTO `oma_area` VALUES ('9205', '上城区', '330102', '330100', '3');
INSERT INTO `oma_area` VALUES ('9206', '桐庐县', '330122', '330100', '3');
INSERT INTO `oma_area` VALUES ('9207', '西湖区', '330106', '330100', '3');
INSERT INTO `oma_area` VALUES ('9208', '下城区', '330103', '330100', '3');
INSERT INTO `oma_area` VALUES ('9209', '萧山区', '330109', '330100', '3');
INSERT INTO `oma_area` VALUES ('9210', '余杭区', '330110', '330100', '3');
INSERT INTO `oma_area` VALUES ('9211', '嘉兴市', '330400', '330000', '2');
INSERT INTO `oma_area` VALUES ('9212', '海盐县', '330424', '330400', '3');
INSERT INTO `oma_area` VALUES ('9213', '海宁市', '330481', '330400', '3');
INSERT INTO `oma_area` VALUES ('9214', '嘉善县', '330421', '330400', '3');
INSERT INTO `oma_area` VALUES ('9215', '南湖区', '330402', '330400', '3');
INSERT INTO `oma_area` VALUES ('9216', '平湖市', '330482', '330400', '3');
INSERT INTO `oma_area` VALUES ('9217', '桐乡市', '330483', '330400', '3');
INSERT INTO `oma_area` VALUES ('9218', '秀洲区', '330411', '330400', '3');
INSERT INTO `oma_area` VALUES ('9219', '金华市', '330700', '330000', '2');
INSERT INTO `oma_area` VALUES ('9220', '东阳市', '330783', '330700', '3');
INSERT INTO `oma_area` VALUES ('9221', '金东区', '330703', '330700', '3');
INSERT INTO `oma_area` VALUES ('9222', '兰溪市', '330781', '330700', '3');
INSERT INTO `oma_area` VALUES ('9223', '磐安县', '330727', '330700', '3');
INSERT INTO `oma_area` VALUES ('9224', '浦江县', '330726', '330700', '3');
INSERT INTO `oma_area` VALUES ('9225', '婺城区', '330702', '330700', '3');
INSERT INTO `oma_area` VALUES ('9226', '武义县', '330723', '330700', '3');
INSERT INTO `oma_area` VALUES ('9227', '义乌市', '330782', '330700', '3');
INSERT INTO `oma_area` VALUES ('9228', '永康市', '330784', '330700', '3');
INSERT INTO `oma_area` VALUES ('9229', '丽水市', '331100', '330000', '2');
INSERT INTO `oma_area` VALUES ('9230', '缙云县', '331122', '331100', '3');
INSERT INTO `oma_area` VALUES ('9231', '景宁畲族自治县', '331127', '331100', '3');
INSERT INTO `oma_area` VALUES ('9232', '莲都区', '331102', '331100', '3');
INSERT INTO `oma_area` VALUES ('9233', '龙泉市', '331181', '331100', '3');
INSERT INTO `oma_area` VALUES ('9234', '青田县', '331121', '331100', '3');
INSERT INTO `oma_area` VALUES ('9235', '庆元县', '331126', '331100', '3');
INSERT INTO `oma_area` VALUES ('9236', '松阳县', '331124', '331100', '3');
INSERT INTO `oma_area` VALUES ('9237', '遂昌县', '331123', '331100', '3');
INSERT INTO `oma_area` VALUES ('9238', '云和县', '331125', '331100', '3');
INSERT INTO `oma_area` VALUES ('9239', '宁波市', '330200', '330000', '2');
INSERT INTO `oma_area` VALUES ('9240', '北仑区', '330206', '330200', '3');
INSERT INTO `oma_area` VALUES ('9241', '慈溪市', '330282', '330200', '3');
INSERT INTO `oma_area` VALUES ('9242', '奉化区', '330213', '330200', '3');
INSERT INTO `oma_area` VALUES ('9243', '海曙区', '330203', '330200', '3');
INSERT INTO `oma_area` VALUES ('9244', '江北区', '330205', '330200', '3');
INSERT INTO `oma_area` VALUES ('9245', '宁海县', '330226', '330200', '3');
INSERT INTO `oma_area` VALUES ('9246', '象山县', '330225', '330200', '3');
INSERT INTO `oma_area` VALUES ('9247', '鄞州区', '330212', '330200', '3');
INSERT INTO `oma_area` VALUES ('9248', '余姚市', '330281', '330200', '3');
INSERT INTO `oma_area` VALUES ('9249', '镇海区', '330211', '330200', '3');
INSERT INTO `oma_area` VALUES ('9250', '衢州市', '330800', '330000', '2');
INSERT INTO `oma_area` VALUES ('9251', '常山县', '330822', '330800', '3');
INSERT INTO `oma_area` VALUES ('9252', '江山市', '330881', '330800', '3');
INSERT INTO `oma_area` VALUES ('9253', '开化县', '330824', '330800', '3');
INSERT INTO `oma_area` VALUES ('9254', '柯城区', '330802', '330800', '3');
INSERT INTO `oma_area` VALUES ('9255', '龙游县', '330825', '330800', '3');
INSERT INTO `oma_area` VALUES ('9256', '衢江区', '330803', '330800', '3');
INSERT INTO `oma_area` VALUES ('9257', '绍兴市', '330600', '330000', '2');
INSERT INTO `oma_area` VALUES ('9258', '柯桥区', '330603', '330600', '3');
INSERT INTO `oma_area` VALUES ('9259', '嵊州市', '330683', '330600', '3');
INSERT INTO `oma_area` VALUES ('9260', '上虞区', '330604', '330600', '3');
INSERT INTO `oma_area` VALUES ('9261', '新昌县', '330624', '330600', '3');
INSERT INTO `oma_area` VALUES ('9262', '越城区', '330602', '330600', '3');
INSERT INTO `oma_area` VALUES ('9263', '诸暨市', '330681', '330600', '3');
INSERT INTO `oma_area` VALUES ('9264', '台州市', '331000', '330000', '2');
INSERT INTO `oma_area` VALUES ('9265', '黄岩区', '331003', '331000', '3');
INSERT INTO `oma_area` VALUES ('9266', '椒江区', '331002', '331000', '3');
INSERT INTO `oma_area` VALUES ('9267', '临海市', '331082', '331000', '3');
INSERT INTO `oma_area` VALUES ('9268', '路桥区', '331004', '331000', '3');
INSERT INTO `oma_area` VALUES ('9269', '三门县', '331022', '331000', '3');
INSERT INTO `oma_area` VALUES ('9270', '天台县', '331023', '331000', '3');
INSERT INTO `oma_area` VALUES ('9271', '温岭市', '331081', '331000', '3');
INSERT INTO `oma_area` VALUES ('9272', '仙居县', '331024', '331000', '3');
INSERT INTO `oma_area` VALUES ('9273', '玉环市', '331021', '331000', '3');
INSERT INTO `oma_area` VALUES ('9274', '温州市', '330300', '330000', '2');
INSERT INTO `oma_area` VALUES ('9275', '苍南县', '330327', '330300', '3');
INSERT INTO `oma_area` VALUES ('9276', '洞头区', '330305', '330300', '3');
INSERT INTO `oma_area` VALUES ('9277', '乐清市', '330382', '330300', '3');
INSERT INTO `oma_area` VALUES ('9278', '龙湾区', '330303', '330300', '3');
INSERT INTO `oma_area` VALUES ('9279', '鹿城区', '330302', '330300', '3');
INSERT INTO `oma_area` VALUES ('9280', '瓯海区', '330304', '330300', '3');
INSERT INTO `oma_area` VALUES ('9281', '平阳县', '330326', '330300', '3');
INSERT INTO `oma_area` VALUES ('9282', '瑞安市', '330381', '330300', '3');
INSERT INTO `oma_area` VALUES ('9283', '泰顺县', '330329', '330300', '3');
INSERT INTO `oma_area` VALUES ('9284', '文成县', '330328', '330300', '3');
INSERT INTO `oma_area` VALUES ('9285', '永嘉县', '330324', '330300', '3');
INSERT INTO `oma_area` VALUES ('9286', '舟山市', '330900', '330000', '2');
INSERT INTO `oma_area` VALUES ('9287', '岱山县', '330921', '330900', '3');
INSERT INTO `oma_area` VALUES ('9288', '定海区', '330902', '330900', '3');
INSERT INTO `oma_area` VALUES ('9289', '普陀区', '330903', '330900', '3');
INSERT INTO `oma_area` VALUES ('9290', '嵊泗县', '330922', '330900', '3');

-- ----------------------------
-- Table structure for oma_media
-- ----------------------------
DROP TABLE IF EXISTS `oma_media`;
CREATE TABLE `oma_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '媒体名称',
  `pkg_name` varchar(20) NOT NULL DEFAULT '' COMMENT '程序包名称',
  `web_url` varchar(100) DEFAULT '' COMMENT '网站域名',
  `download_url` varchar(200) NOT NULL DEFAULT '' COMMENT '下载地址',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '媒体类型： 1 Android, 2 IOS  3 H5',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='媒体表';

-- ----------------------------
-- Records of oma_media
-- ----------------------------
INSERT INTO `oma_media` VALUES ('1', '1', '新媒体', '测试包', '', 'www.baidu.com', '1', '1512638010', '1512955810');
INSERT INTO `oma_media` VALUES ('2', '1', '测试', '', 'www.crm.com', '', '3', '1512638095', '0');
INSERT INTO `oma_media` VALUES ('3', '1', '测试', '', 'www.crm.com', '', '3', '1512638108', '0');
INSERT INTO `oma_media` VALUES ('4', '1', '新媒体名称', '', '啥玩意', '', '3', '1512638265', '0');
INSERT INTO `oma_media` VALUES ('5', '1', '213123', '', '123123', '', '3', '1512638443', '0');
INSERT INTO `oma_media` VALUES ('6', '1', '123', '', '12312', '', '3', '1512638490', '0');
INSERT INTO `oma_media` VALUES ('7', '1', '123', '123', '', '123', '1', '1512638521', '0');
INSERT INTO `oma_media` VALUES ('8', '1', 'erqwerqwe', '', '神额和', '', '1', '1512638692', '1513060229');
INSERT INTO `oma_media` VALUES ('9', '1', 'erqwerqwe', '', '神额和', '', '1', '1512700557', '1512955708');
INSERT INTO `oma_media` VALUES ('10', '1', '123erqwerq', '12312', '', '123123123', '1', '1512700607', '1512702757');
INSERT INTO `oma_media` VALUES ('11', '1', '宇宙无敌伽马射线', '123', '宇宙无敌伽马射线', '123', '1', '1512703636', '1512955628');
INSERT INTO `oma_media` VALUES ('12', '1', '123', '', '12', '', '3', '1512703863', '0');
INSERT INTO `oma_media` VALUES ('13', '1', '而我却', '恶趣味', '', '而我却', '2', '1512704254', '0');
INSERT INTO `oma_media` VALUES ('14', '1', 'admintest', 'admintest', '', 'admintest', '1', '1513059619', '1513060207');
INSERT INTO `oma_media` VALUES ('15', '1', '111', '111', '', '11', '1', '1513061793', '0');
INSERT INTO `oma_media` VALUES ('16', '1', 'qwe', '', '123', '', '3', '1513069622', '0');
INSERT INTO `oma_media` VALUES ('17', '1', '213', '213', '', '123', '1', '1513069723', '0');
INSERT INTO `oma_media` VALUES ('18', '1', '213123', '213', '', '123', '1', '1513069733', '1513070424');
INSERT INTO `oma_media` VALUES ('19', '2', '测试', '', '312323', '', '1', '1513072571', '1513073721');
INSERT INTO `oma_media` VALUES ('20', '1', '测试', '', 'www.baidu.com', '', '3', '1513151652', '0');
INSERT INTO `oma_media` VALUES ('21', '1', '123', '', '123', '', '3', '1513153103', '0');
INSERT INTO `oma_media` VALUES ('22', '1', '123', '12', '123', '12', '1', '1513153302', '1513686271');
INSERT INTO `oma_media` VALUES ('23', '1', '驱蚊器无', '而我却二无群', 'www.baidu.com', 'eqwewq', '2', '1513154724', '1513686374');
INSERT INTO `oma_media` VALUES ('24', '7', 'das', 'das ', '', 'das', '2', '1513227899', '0');
INSERT INTO `oma_media` VALUES ('25', '7', 'das', 'das ', '', 'das', '2', '1513227915', '0');
INSERT INTO `oma_media` VALUES ('26', '9', '大手', '大声道撒', '', '大声道撒', '1', '1513227970', '0');
INSERT INTO `oma_media` VALUES ('27', '2', '我去', '我去', '', '奇热网若无', '1', '1513228040', '0');
INSERT INTO `oma_media` VALUES ('28', '15', '万千瓦群二', '而我却二群无', '', '我骑的撒多', '2', '1513228268', '1513749335');
INSERT INTO `oma_media` VALUES ('29', '1', '调整媒体名1', '包名1', 'www.baidu.com', '下载地址1', '1', '1513230363', '1513684654');
INSERT INTO `oma_media` VALUES ('30', '32', 'aaaab', '21122', 'www.baidu.com', 'ssss', '1', '1513683273', '1513747476');
INSERT INTO `oma_media` VALUES ('31', '1', 'aaaaaab', '', 'http://www.baidu.com', '', '1', '1513685400', '1513685471');
INSERT INTO `oma_media` VALUES ('32', '1', '1231', '', '12312', '', '3', '1513747511', '0');
INSERT INTO `oma_media` VALUES ('33', '40', '植物大', '没有', '', '111123.com', '1', '1513749349', '1513749646');
INSERT INTO `oma_media` VALUES ('34', '40', '植物', '', '2222.com', '', '3', '1513749489', '1513749692');
INSERT INTO `oma_media` VALUES ('35', '37', 'ssss', '', '11111', '', '3', '1513749894', '0');
INSERT INTO `oma_media` VALUES ('36', '37', 'cheshi', 'ss', '', 'sss', '1', '1513750128', '0');
INSERT INTO `oma_media` VALUES ('37', '37', 'cheshi', 'ss', '', 'sss', '1', '1513750128', '0');
INSERT INTO `oma_media` VALUES ('38', '40', '11', '', '11', '', '3', '1513750267', '0');
INSERT INTO `oma_media` VALUES ('39', '1', 'ss', 'ss', '', '11', '1', '1513750367', '0');
INSERT INTO `oma_media` VALUES ('40', '1', 'ss', 'ss', '', '11', '1', '1513750367', '0');
INSERT INTO `oma_media` VALUES ('41', '1', 'ss', 'ss', '', '11', '1', '1513750368', '0');
INSERT INTO `oma_media` VALUES ('42', '2', '122', '', '222', '', '3', '1513750944', '0');
INSERT INTO `oma_media` VALUES ('43', '2', '122', '', '222', '', '3', '1513750945', '1513751286');
INSERT INTO `oma_media` VALUES ('44', '1', '大手撒', '', '大手', '', '3', '1513751014', '0');
INSERT INTO `oma_media` VALUES ('45', '2', '2121', '', '32132', '', '3', '1513751301', '0');
INSERT INTO `oma_media` VALUES ('46', '2', '2121', '', '32132', '', '3', '1513751301', '1513751755');
INSERT INTO `oma_media` VALUES ('47', '2', 'www', '', 'wwww', '', '3', '1513751779', '0');
INSERT INTO `oma_media` VALUES ('48', '2', 'www', '', 'wwww', '', '3', '1513751780', '0');
INSERT INTO `oma_media` VALUES ('49', '2', '测试1', '', '测试1', '', '3', '1513751894', '0');
INSERT INTO `oma_media` VALUES ('50', '2', '恶趣味', '', '恶趣味', '', '3', '1513752288', '0');
INSERT INTO `oma_media` VALUES ('51', '2', '恶趣味', '', '恶趣味', '', '3', '1513752289', '0');
INSERT INTO `oma_media` VALUES ('52', '2', '2223', '', '1233', '', '3', '1513752414', '0');
INSERT INTO `oma_media` VALUES ('53', '2', '恶趣味', '', '恶趣味', '', '3', '1513752969', '0');
INSERT INTO `oma_media` VALUES ('54', '2', '大手', '', '大叔大婶', '', '3', '1513753062', '0');
INSERT INTO `oma_media` VALUES ('55', '2', '恶趣味群无', '', '热污染无', '', '3', '1513753081', '1513753115');
INSERT INTO `oma_media` VALUES ('56', '2', '212', '', '2121', '', '3', '1513753174', '0');
INSERT INTO `oma_media` VALUES ('57', '2', '2121', '', '434', '', '3', '1513753871', '1513754057');
INSERT INTO `oma_media` VALUES ('58', '2', '1232131', '', 'http://oma_platform.com/advertposition/add', '', '3', '1513754148', '0');
INSERT INTO `oma_media` VALUES ('59', '2', '1123213213', '', 'http://oma_platform.com/advertposition/add', '', '3', '1513754173', '0');
INSERT INTO `oma_media` VALUES ('60', '2', '恶趣味', '', 'http://www.woshipm.com/chuangye/887052.html', '', '3', '1513754212', '1514275866');
INSERT INTO `oma_media` VALUES ('61', '15', '啊啊', '', 'http://oma.9xu.com/activity?appKey=YmdiZGhkZ2hiZg==&awid=88', '', '3', '1514253884', '1514277079');
INSERT INTO `oma_media` VALUES ('62', '37', '是', '', 'http://oma.9xu.com/activity?appKey=aWdnaGZpaWVkaA==&awid=89', '', '3', '1514272072', '1514275924');
INSERT INTO `oma_media` VALUES ('63', '1', '测试', '', 'www.taobao.com', '', '3', '1514346809', '1514346974');
INSERT INTO `oma_media` VALUES ('64', '1', '123123', '123', '', '123', '1', '1515037576', '1515055966');
INSERT INTO `oma_media` VALUES ('65', '1', '123', '123', '', '123', '1', '1515055946', '0');
INSERT INTO `oma_media` VALUES ('66', '1', '123', '123', '', '123', '1', '1515055946', '1515056641');
INSERT INTO `oma_media` VALUES ('67', '1', '123', '123', '', '123', '1', '1515056251', '1515056708');
INSERT INTO `oma_media` VALUES ('68', '1', '123', '123', '', '123', '2', '1515056706', '1515056751');
INSERT INTO `oma_media` VALUES ('69', '1', '我去', '', '打算', '', '3', '1515119354', '0');
INSERT INTO `oma_media` VALUES ('70', '32', '测试', '', 'http://www.baidu.com', '', '3', '1515133685', '0');

-- ----------------------------
-- Table structure for oma_pay
-- ----------------------------
DROP TABLE IF EXISTS `oma_pay`;
CREATE TABLE `oma_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总收入 (当月+之前未付款)',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当月收入',
  `has_invoice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否要发票 0 否 1是',
  `invaild_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '无效流量扣款',
  `pay_tax` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '代扣税',
  `real_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '税后收入',
  `pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '已付金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '打款状态 ：0 未打款  1已打款',
  `date` int(10) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='结算表';

-- ----------------------------
-- Records of oma_pay
-- ----------------------------
INSERT INTO `oma_pay` VALUES ('1', '1', '1111.00', '1231.00', '1', '1123.00', '23.00', '44.00', '123.00', '1', '1222222222', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('2', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('3', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('4', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('5', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('6', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('7', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('8', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('9', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('10', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('11', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('12', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('13', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('14', '1', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0');
INSERT INTO `oma_pay` VALUES ('15', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('16', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('17', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('18', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('19', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('20', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('21', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('22', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('23', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('24', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('26', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('27', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('28', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');
INSERT INTO `oma_pay` VALUES ('29', '29', '1234.00', '234.00', '1', '123.00', '44.00', '123.00', '44.00', '1', '1333333333', '1333333333', '0');

-- ----------------------------
-- Table structure for oma_record_advert_click
-- ----------------------------
DROP TABLE IF EXISTS `oma_record_advert_click`;
CREATE TABLE `oma_record_advert_click` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `tpl_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
  `ad_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告id',
  `money` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '扣费',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '日期',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `date` (`date`) USING BTREE,
  KEY `ad_id` (`ad_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='广告点击记录表';

-- ----------------------------
-- Records of oma_record_advert_click
-- ----------------------------
INSERT INTO `oma_record_advert_click` VALUES ('1', '1', '1', '1', '1', '0.80', '1512921600', '1512921600');
INSERT INTO `oma_record_advert_click` VALUES ('2', '1', '1', '1', '1', '0.80', '1512921600', '1512921600');
INSERT INTO `oma_record_advert_click` VALUES ('3', '1', '1', '1', '1', '9.00', '1513008000', '1513008000');
INSERT INTO `oma_record_advert_click` VALUES ('4', '1', '1', '1', '1', '9.00', '1513008000', '1513008000');
INSERT INTO `oma_record_advert_click` VALUES ('5', '0', '1', '0', '1', '100.00', '1513641600', '1513678276');
INSERT INTO `oma_record_advert_click` VALUES ('6', '0', '1', '0', '1', '100.00', '1513641600', '1513678407');
INSERT INTO `oma_record_advert_click` VALUES ('7', '0', '1', '0', '1', '100.00', '1513641600', '1513678426');
INSERT INTO `oma_record_advert_click` VALUES ('8', '0', '1', '0', '1', '100.00', '1513728000', '1513751136');
INSERT INTO `oma_record_advert_click` VALUES ('9', '0', '2', '0', '1', '100.00', '1513728000', '1513758834');
INSERT INTO `oma_record_advert_click` VALUES ('10', '0', '2', '0', '10', '0.98', '1513728000', '1513759107');
INSERT INTO `oma_record_advert_click` VALUES ('11', '0', '2', '0', '1', '100.00', '1513728000', '1513759116');
INSERT INTO `oma_record_advert_click` VALUES ('12', '0', '2', '0', '1', '100.00', '1513728000', '1513759256');
INSERT INTO `oma_record_advert_click` VALUES ('13', '0', '2', '0', '10', '0.98', '1513728000', '1513759270');
INSERT INTO `oma_record_advert_click` VALUES ('14', '0', '2', '0', '1', '100.00', '1513728000', '1513759638');
INSERT INTO `oma_record_advert_click` VALUES ('15', '0', '1', '0', '10', '0.98', '1513728000', '1513762785');
INSERT INTO `oma_record_advert_click` VALUES ('16', '0', '2', '0', '1', '100.00', '1513728000', '1513764120');
INSERT INTO `oma_record_advert_click` VALUES ('17', '0', '1', '0', '10', '0.98', '1513814400', '1513827244');
INSERT INTO `oma_record_advert_click` VALUES ('18', '0', '1', '0', '10', '0.98', '1513814400', '1513827446');
INSERT INTO `oma_record_advert_click` VALUES ('19', '0', '86', '0', '12', '1.00', '1514246400', '1514276635');
INSERT INTO `oma_record_advert_click` VALUES ('20', '0', '89', '0', '12', '1.00', '1514246400', '1514277132');
INSERT INTO `oma_record_advert_click` VALUES ('21', '0', '89', '0', '12', '1.00', '1514246400', '1514277158');
INSERT INTO `oma_record_advert_click` VALUES ('22', '0', '89', '0', '10', '0.98', '1514246400', '1514277163');
INSERT INTO `oma_record_advert_click` VALUES ('23', '0', '89', '0', '12', '1.00', '1514246400', '1514277169');
INSERT INTO `oma_record_advert_click` VALUES ('24', '0', '89', '0', '12', '1.00', '1514246400', '1514277233');
INSERT INTO `oma_record_advert_click` VALUES ('25', '0', '89', '0', '12', '1.00', '1514246400', '1514277338');
INSERT INTO `oma_record_advert_click` VALUES ('26', '0', '89', '0', '12', '1.00', '1514246400', '1514277354');
INSERT INTO `oma_record_advert_click` VALUES ('27', '0', '89', '0', '12', '1.00', '1514246400', '1514277392');
INSERT INTO `oma_record_advert_click` VALUES ('28', '0', '89', '0', '12', '1.00', '1514246400', '1514277401');
INSERT INTO `oma_record_advert_click` VALUES ('29', '0', '89', '0', '12', '1.00', '1514246400', '1514277570');
INSERT INTO `oma_record_advert_click` VALUES ('30', '0', '89', '0', '12', '1.00', '1514246400', '1514277614');
INSERT INTO `oma_record_advert_click` VALUES ('31', '0', '89', '0', '12', '1.00', '1514246400', '1514277694');
INSERT INTO `oma_record_advert_click` VALUES ('32', '0', '89', '0', '12', '1.00', '1514246400', '1514278147');
INSERT INTO `oma_record_advert_click` VALUES ('33', '0', '89', '0', '12', '1.00', '1514246400', '1514278174');
INSERT INTO `oma_record_advert_click` VALUES ('34', '0', '89', '0', '12', '1.00', '1514246400', '1514278180');
INSERT INTO `oma_record_advert_click` VALUES ('35', '0', '89', '0', '12', '1.00', '1514246400', '1514278186');
INSERT INTO `oma_record_advert_click` VALUES ('36', '0', '89', '0', '12', '1.00', '1514246400', '1514278294');
INSERT INTO `oma_record_advert_click` VALUES ('37', '0', '89', '0', '12', '1.00', '1514246400', '1514278300');
INSERT INTO `oma_record_advert_click` VALUES ('38', '0', '89', '0', '12', '1.00', '1514246400', '1514278306');
INSERT INTO `oma_record_advert_click` VALUES ('39', '0', '89', '0', '12', '1.00', '1514246400', '1514278311');
INSERT INTO `oma_record_advert_click` VALUES ('40', '0', '89', '0', '12', '1.00', '1514332800', '1514343275');
INSERT INTO `oma_record_advert_click` VALUES ('41', '0', '43', '0', '11', '22.00', '1514332800', '1514344820');
INSERT INTO `oma_record_advert_click` VALUES ('42', '0', '43', '0', '11', '22.00', '1514332800', '1514344824');
INSERT INTO `oma_record_advert_click` VALUES ('43', '0', '90', '0', '11', '22.00', '1514332800', '1514347058');
INSERT INTO `oma_record_advert_click` VALUES ('44', '0', '90', '0', '11', '22.00', '1514332800', '1514347065');
INSERT INTO `oma_record_advert_click` VALUES ('45', '0', '90', '0', '11', '22.00', '1514332800', '1514347155');
INSERT INTO `oma_record_advert_click` VALUES ('46', '0', '70', '0', '11', '22.00', '1514332800', '1514353156');
INSERT INTO `oma_record_advert_click` VALUES ('47', '0', '80', '0', '11', '22.00', '1514332800', '1514353525');
INSERT INTO `oma_record_advert_click` VALUES ('48', '0', '80', '0', '11', '22.00', '1514332800', '1514353623');
INSERT INTO `oma_record_advert_click` VALUES ('49', '0', '80', '0', '12', '333.00', '1514332800', '1514354129');
INSERT INTO `oma_record_advert_click` VALUES ('50', '0', '80', '0', '1', '100.00', '1514332800', '1514366193');
INSERT INTO `oma_record_advert_click` VALUES ('51', '0', '80', '0', '12', '333.00', '1514332800', '1514366285');
INSERT INTO `oma_record_advert_click` VALUES ('52', '0', '80', '0', '12', '333.00', '1514419200', '1514429123');
INSERT INTO `oma_record_advert_click` VALUES ('53', '0', '80', '0', '11', '22.00', '1514419200', '1514429170');
INSERT INTO `oma_record_advert_click` VALUES ('54', '0', '80', '0', '1', '100.00', '1514419200', '1514429197');
INSERT INTO `oma_record_advert_click` VALUES ('55', '0', '80', '0', '12', '333.00', '1514419200', '1514429234');
INSERT INTO `oma_record_advert_click` VALUES ('56', '0', '90', '0', '12', '333.00', '1514419200', '1514442631');
INSERT INTO `oma_record_advert_click` VALUES ('57', '0', '89', '0', '12', '333.00', '1514419200', '1514443490');
INSERT INTO `oma_record_advert_click` VALUES ('58', '0', '89', '0', '11', '22.00', '1514419200', '1514443606');
INSERT INTO `oma_record_advert_click` VALUES ('59', '0', '90', '0', '11', '22.00', '1514419200', '1514444313');
INSERT INTO `oma_record_advert_click` VALUES ('60', '0', '89', '0', '12', '333.00', '1514419200', '1514444352');
INSERT INTO `oma_record_advert_click` VALUES ('61', '0', '88', '0', '11', '22.00', '1514419200', '1514444628');
INSERT INTO `oma_record_advert_click` VALUES ('62', '0', '90', '0', '11', '22.00', '1514419200', '1514444712');
INSERT INTO `oma_record_advert_click` VALUES ('63', '0', '89', '0', '1', '100.00', '1514505600', '1514513895');
INSERT INTO `oma_record_advert_click` VALUES ('64', '0', '89', '0', '12', '333.00', '1514505600', '1514513905');
INSERT INTO `oma_record_advert_click` VALUES ('65', '0', '88', '0', '1', '100.00', '1514505600', '1514514281');
INSERT INTO `oma_record_advert_click` VALUES ('66', '0', '57', '0', '11', '22.00', '1514851200', '1514880546');
INSERT INTO `oma_record_advert_click` VALUES ('67', '0', '57', '0', '1', '100.00', '1514851200', '1514880570');
INSERT INTO `oma_record_advert_click` VALUES ('68', '0', '57', '0', '2', '4.00', '1514851200', '1514881490');
INSERT INTO `oma_record_advert_click` VALUES ('69', '0', '57', '0', '10', '0.98', '1514851200', '1514881499');
INSERT INTO `oma_record_advert_click` VALUES ('70', '0', '57', '0', '2', '4.00', '1514851200', '1514881510');
INSERT INTO `oma_record_advert_click` VALUES ('71', '0', '57', '0', '10', '0.98', '1514851200', '1514881569');
INSERT INTO `oma_record_advert_click` VALUES ('72', '0', '57', '0', '2', '4.00', '1514851200', '1514881585');
INSERT INTO `oma_record_advert_click` VALUES ('73', '0', '57', '0', '10', '0.98', '1514851200', '1514881701');
INSERT INTO `oma_record_advert_click` VALUES ('74', '0', '57', '0', '2', '4.00', '1514851200', '1514882045');
INSERT INTO `oma_record_advert_click` VALUES ('75', '0', '57', '0', '2', '4.00', '1514851200', '1514882097');
INSERT INTO `oma_record_advert_click` VALUES ('76', '0', '57', '0', '10', '0.98', '1514851200', '1514882273');
INSERT INTO `oma_record_advert_click` VALUES ('77', '0', '57', '0', '10', '0.98', '1514851200', '1514882366');
INSERT INTO `oma_record_advert_click` VALUES ('78', '0', '57', '0', '2', '4.00', '1514851200', '1514882373');
INSERT INTO `oma_record_advert_click` VALUES ('79', '0', '57', '0', '10', '0.98', '1514851200', '1514882378');
INSERT INTO `oma_record_advert_click` VALUES ('80', '0', '57', '0', '10', '0.98', '1514851200', '1514882401');
INSERT INTO `oma_record_advert_click` VALUES ('81', '0', '57', '0', '2', '4.00', '1514851200', '1514882425');
INSERT INTO `oma_record_advert_click` VALUES ('82', '0', '57', '0', '2', '4.00', '1514851200', '1514883309');
INSERT INTO `oma_record_advert_click` VALUES ('83', '0', '57', '0', '10', '0.98', '1514851200', '1514883315');
INSERT INTO `oma_record_advert_click` VALUES ('84', '0', '57', '0', '2', '4.00', '1514851200', '1514883720');
INSERT INTO `oma_record_advert_click` VALUES ('85', '0', '57', '0', '2', '4.00', '1514851200', '1514883854');

-- ----------------------------
-- Table structure for oma_report_advert
-- ----------------------------
DROP TABLE IF EXISTS `oma_report_advert`;
CREATE TABLE `oma_report_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `ad_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告id',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `tpl_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动模板id',
  `uv` int(11) NOT NULL DEFAULT '0' COMMENT '客户端唯一展现量',
  `ip` int(11) NOT NULL DEFAULT '0' COMMENT 'ip唯一统计量',
  `pv` int(11) NOT NULL DEFAULT '0' COMMENT '曝光量',
  `my_prize_pv` int(11) NOT NULL DEFAULT '0' COMMENT '我的奖品的展现量',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '广告类型：1 h5, 2 app拉活 , 3 js-气泡, 4 js-横幅',
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总收入',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户收入',
  `user_rate` decimal(5,2) NOT NULL DEFAULT '1.00' COMMENT '用户折扣比',
  `activate_price` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '激活价',
  `activate_count` int(8) NOT NULL DEFAULT '0' COMMENT '激活量',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `adw_id` (`adw_id`) USING BTREE,
  KEY `ad_id` (`ad_id`) USING BTREE,
  KEY `tpl_id` (`tpl_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='广告报表';

-- ----------------------------
-- Records of oma_report_advert
-- ----------------------------
INSERT INTO `oma_report_advert` VALUES ('2', '1', '1', '1', '1', '102', '101', '100', '66', '10', '1', '1.60', '1.60', '1.00', '0.00', '0', '1513440000', '1513084656', '1513084801');
INSERT INTO `oma_report_advert` VALUES ('3', '1', '1', '1', '1', '102', '101', '100', '66', '10', '1', '1.60', '1.60', '1.00', '0.00', '0', '1513526400', '1513084656', '1513084801');
INSERT INTO `oma_report_advert` VALUES ('5', '1', '12', '89', '3', '1', '1', '1', '0', '1', '1', '0.00', '0.00', '1.00', '0.00', '0', '1514304000', '1514364680', '1514365547');
INSERT INTO `oma_report_advert` VALUES ('6', '1', '11', '80', '5', '1', '1', '1', '1', '0', '1', '0.00', '0.00', '1.00', '0.00', '0', '1514304000', '1514364680', '1514365547');
INSERT INTO `oma_report_advert` VALUES ('7', '1', '1', '87', '5', '1', '1', '1', '0', '0', '1', '0.00', '0.00', '1.00', '0.00', '0', '1514304000', '1514364680', '1514365547');
INSERT INTO `oma_report_advert` VALUES ('8', '1', '12', '80', '3', '1', '1', '2', '0', '2', '1', '0.00', '0.00', '1.00', '0.00', '0', '1514390400', '1514429133', '1514443537');
INSERT INTO `oma_report_advert` VALUES ('9', '1', '11', '80', '3', '1', '1', '1', '0', '0', '1', '0.00', '0.00', '1.00', '0.00', '0', '1514390400', '1514429174', '1514443537');
INSERT INTO `oma_report_advert` VALUES ('10', '1', '1', '80', '3', '1', '1', '1', '0', '0', '1', '0.00', '0.00', '1.00', '0.00', '0', '1514390400', '1514429204', '1514443536');

-- ----------------------------
-- Table structure for oma_report_advert_position
-- ----------------------------
DROP TABLE IF EXISTS `oma_report_advert_position`;
CREATE TABLE `oma_report_advert_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `uv` int(11) NOT NULL DEFAULT '0' COMMENT '客户端唯一展现量',
  `ip` int(11) NOT NULL DEFAULT '0' COMMENT 'ip唯一统计',
  `pv` int(11) NOT NULL DEFAULT '0' COMMENT '曝光量',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '广告类型：1 h5, 2 app拉活 , 3 js-气泡, 4 js-横幅',
  `is_third` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是第三方模板数据 0 否 1是',
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总收入',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户收入',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `adw_id` (`adw_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='广告位报表';

-- ----------------------------
-- Records of oma_report_advert_position
-- ----------------------------
INSERT INTO `oma_report_advert_position` VALUES ('1', '1', '32', '123', '13', '1200', '121', '3', '1', '300.00', '100.00', '1512316800', '1512316800', '0');
INSERT INTO `oma_report_advert_position` VALUES ('2', '1', '31', '1', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('3', '1', '31', '2', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('4', '1', '31', '3', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('5', '1', '31', '3', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('6', '1', '31', '4', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('7', '22', '31', '4', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('8', '1', '31', '4', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('9', '22', '31', '4', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('10', '22', '31', '4', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('11', '1', '31', '4', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('12', '11', '31', '0', '0', '0', '0', '1', '0', '0.00', '0.00', '0', '0', '0');
INSERT INTO `oma_report_advert_position` VALUES ('14', '22', '31', '102', '103', '100', '111', '1', '0', '18.00', '18.00', '1513267200', '1513148087', '1513148104');
INSERT INTO `oma_report_advert_position` VALUES ('15', '22', '31', '112', '123', '213', '1233', '1', '0', '444.00', '23.00', '1513267200', '1555555555', '0');
INSERT INTO `oma_report_advert_position` VALUES ('16', '32', '57', '1', '1', '1', '0', '1', '0', '0.00', '0.00', '1514304000', '1514363913', '1514367023');
INSERT INTO `oma_report_advert_position` VALUES ('17', '2', '87', '2', '2', '10', '0', '1', '0', '0.00', '123.20', '1514304000', '1514363913', '1514943086');
INSERT INTO `oma_report_advert_position` VALUES ('18', '15', '88', '2', '1', '70', '0', '1', '0', '0.00', '0.00', '1514304000', '1514363913', '1514367023');
INSERT INTO `oma_report_advert_position` VALUES ('19', '40', '60', '1', '1', '1', '0', '1', '0', '0.00', '0.00', '1514304000', '1514363913', '1514367023');
INSERT INTO `oma_report_advert_position` VALUES ('20', '2', '86', '1', '1', '2', '0', '1', '0', '0.00', '0.00', '1514304000', '1514363913', '1514367023');
INSERT INTO `oma_report_advert_position` VALUES ('21', '37', '89', '3', '3', '28', '0', '1', '0', '0.00', '0.00', '1514304000', '1514363913', '1514367023');
INSERT INTO `oma_report_advert_position` VALUES ('22', '2', '80', '3', '2', '27', '0', '1', '0', '0.00', '0.00', '1514304000', '1514363913', '1514367024');
INSERT INTO `oma_report_advert_position` VALUES ('23', '1', '90', '2', '1', '62', '0', '1', '0', '40.00', '50.00', '1514304000', '1514363913', '1514945574');
INSERT INTO `oma_report_advert_position` VALUES ('24', '2', '70', '1', '1', '2', '0', '1', '0', '0.00', '0.00', '1514304000', '1514363913', '1514367024');
INSERT INTO `oma_report_advert_position` VALUES ('25', '1', '43', '1', '1', '1', '0', '1', '0', '355.20', '444.00', '1514304000', '1514363913', '1514886425');
INSERT INTO `oma_report_advert_position` VALUES ('26', '2', '80', '2', '1', '33', '0', '1', '0', '0.00', '0.00', '1514390400', '1514429022', '1514517307');
INSERT INTO `oma_report_advert_position` VALUES ('27', '37', '89', '2', '2', '36', '0', '1', '0', '0.00', '0.00', '1514390400', '1514443038', '1514517307');
INSERT INTO `oma_report_advert_position` VALUES ('28', '1', '90', '2', '2', '16', '0', '1', '0', '0.00', '0.00', '1514390400', '1514443039', '1514517307');
INSERT INTO `oma_report_advert_position` VALUES ('29', '15', '88', '1', '1', '12', '0', '1', '0', '0.00', '0.00', '1514390400', '1514445079', '1514517307');
INSERT INTO `oma_report_advert_position` VALUES ('30', '15', '88', '1', '1', '18', '0', '1', '0', '0.00', '0.00', '1514476800', '1514516924', '1514516924');
INSERT INTO `oma_report_advert_position` VALUES ('31', '2', '87', '1', '1', '1', '0', '1', '0', '0.00', '0.00', '1514476800', '1514516924', '1514516924');
INSERT INTO `oma_report_advert_position` VALUES ('32', '2', '86', '1', '1', '8', '0', '1', '1', '0.00', '0.00', '1514476800', '1514516924', '1514517498');
INSERT INTO `oma_report_advert_position` VALUES ('33', '37', '89', '1', '1', '23', '0', '1', '0', '0.00', '0.00', '1514476800', '1514516924', '1514516924');
INSERT INTO `oma_report_advert_position` VALUES ('34', '32', '57', '4', '1', '22', '0', '1', '0', '0.00', '0.00', '1514822400', '1514884618', '1514887449');
INSERT INTO `oma_report_advert_position` VALUES ('35', '2', '86', '1', '1', '1', '0', '1', '0', '0.00', '0.00', '1514822400', '1514887250', '1514887449');
INSERT INTO `oma_report_advert_position` VALUES ('36', '1', '90', '1', '1', '3', '0', '1', '0', '8.00', '10.00', '1514822400', '1514887250', '1514942367');
INSERT INTO `oma_report_advert_position` VALUES ('37', '2', '86', '1', '1', '1', '0', '1', '1', '0.00', '0.00', '1514822400', '1514887250', '1514887450');
INSERT INTO `oma_report_advert_position` VALUES ('38', '2', '85', '1', '1', '15', '0', '1', '1', '0.00', '0.00', '1514822400', '1514887318', '1514887449');
INSERT INTO `oma_report_advert_position` VALUES ('39', '2', '87', '1', '1', '11', '0', '1', '0', '0.00', '1231.45', '1514822400', '1514887449', '1514943045');
INSERT INTO `oma_report_advert_position` VALUES ('40', '2', '87', '1', '1', '2', '0', '1', '1', '0.00', '1231.45', '1514822400', '1514887449', '1514943045');

-- ----------------------------
-- Table structure for oma_report_advert_position_app
-- ----------------------------
DROP TABLE IF EXISTS `oma_report_advert_position_app`;
CREATE TABLE `oma_report_advert_position_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `act_count` int(11) NOT NULL DEFAULT '0' COMMENT '激活量',
  `act_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '激活价',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `adw_id` (`adw_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告位-app拉活';

-- ----------------------------
-- Records of oma_report_advert_position_app
-- ----------------------------

-- ----------------------------
-- Table structure for oma_report_advert_position_h5
-- ----------------------------
DROP TABLE IF EXISTS `oma_report_advert_position_h5`;
CREATE TABLE `oma_report_advert_position_h5` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `tpl_ads_ip` int(11) NOT NULL DEFAULT '0' COMMENT '活动广告ip统计量',
  `tpl_ads_uv` int(11) NOT NULL DEFAULT '0' COMMENT '活动广告客户端唯一展现量',
  `tpl_ads_pv` int(11) NOT NULL DEFAULT '0' COMMENT '活动广告曝光量',
  `tpl_ads_click` int(11) NOT NULL DEFAULT '0' COMMENT '活动广告点击量',
  `tpl_ads_price` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '活动广告均价',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `adw_id` (`adw_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='广告位-h5报表';

-- ----------------------------
-- Records of oma_report_advert_position_h5
-- ----------------------------
INSERT INTO `oma_report_advert_position_h5` VALUES ('1', '1', '31', '123', '12', '1000', '312', '999.99', '1514217600', '1333333333');
INSERT INTO `oma_report_advert_position_h5` VALUES ('2', '2', '1', '103', '102', '100', '111', '0.16', '1513008000', '1513147763');
INSERT INTO `oma_report_advert_position_h5` VALUES ('3', '29', '1', '3123', '123', '12312', '312', '999.99', '1512662400', '1512711972');
INSERT INTO `oma_report_advert_position_h5` VALUES ('4', '32', '57', '1', '1', '1', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('5', '2', '87', '2', '2', '9', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('6', '15', '88', '1', '2', '70', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('7', '40', '60', '1', '1', '1', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('8', '2', '86', '1', '1', '2', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('9', '37', '89', '3', '3', '24', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('10', '2', '80', '2', '3', '24', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('11', '1', '90', '1', '2', '62', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('12', '2', '70', '1', '1', '2', '0', '0.00', '1514304000', '1514364540');
INSERT INTO `oma_report_advert_position_h5` VALUES ('13', '1', '43', '1', '1', '1', '0', '0.00', '1514304000', '1514364541');
INSERT INTO `oma_report_advert_position_h5` VALUES ('28', '32', '57', '1', '4', '22', '0', '0.00', '1514822400', '1514887455');
INSERT INTO `oma_report_advert_position_h5` VALUES ('30', '1', '90', '1', '1', '3', '0', '0.00', '1514822400', '1514887455');
INSERT INTO `oma_report_advert_position_h5` VALUES ('31', '2', '86', '1', '1', '1', '0', '0.00', '1514822400', '1514887455');
INSERT INTO `oma_report_advert_position_h5` VALUES ('32', '2', '85', '1', '1', '15', '0', '0.00', '1514822400', '1514887455');
INSERT INTO `oma_report_advert_position_h5` VALUES ('34', '2', '87', '1', '1', '2', '0', '0.00', '1514822400', '1514887455');

-- ----------------------------
-- Table structure for oma_report_advert_position_js
-- ----------------------------
DROP TABLE IF EXISTS `oma_report_advert_position_js`;
CREATE TABLE `oma_report_advert_position_js` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '广告形式：1 顶部悬浮，2 底部悬浮，3 左部小图标，4右部小图标，5信息流， 6插屏',
  `ad_pv` int(11) NOT NULL DEFAULT '0' COMMENT '广告曝光量',
  `ad_click` int(11) NOT NULL DEFAULT '0' COMMENT '广告点击量',
  `ad_uv` int(11) NOT NULL DEFAULT '0' COMMENT '广告uv',
  `tpl_pv` int(11) NOT NULL DEFAULT '0' COMMENT '活动曝光量',
  `tpl_uv` int(11) NOT NULL DEFAULT '0' COMMENT '活动uv',
  `tpl_click` int(11) NOT NULL DEFAULT '0' COMMENT '活动点击量',
  `tpl_ads_uv` int(11) NOT NULL DEFAULT '0' COMMENT '活动广告user-agent展现量',
  `tpl_ads_pv` int(11) NOT NULL DEFAULT '0' COMMENT '活动广告曝光量',
  `tpl_ads_click` int(11) NOT NULL DEFAULT '0' COMMENT '活动广告点击量',
  `tpl_ads_price` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '活动广告均价',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `adw_id` (`adw_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='广告位-js报表';

-- ----------------------------
-- Records of oma_report_advert_position_js
-- ----------------------------
INSERT INTO `oma_report_advert_position_js` VALUES ('1', '1', '32', '1', '10', '2', '10', '50', '20', '5', '5', '100', '10', '2.65', '1514822400', '1514822400');

-- ----------------------------
-- Table structure for oma_report_tpl
-- ----------------------------
DROP TABLE IF EXISTS `oma_report_tpl`;
CREATE TABLE `oma_report_tpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `adw_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告位id',
  `tpl_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动模板id',
  `uv` int(11) NOT NULL DEFAULT '0' COMMENT '客户端唯一展现量',
  `ip` int(11) NOT NULL DEFAULT '0' COMMENT 'ip唯一统计',
  `pv` int(11) NOT NULL DEFAULT '0' COMMENT '曝光量',
  `o_ck_1` int(11) NOT NULL DEFAULT '0' COMMENT '开始游戏按钮点击',
  `o_ck_2` int(11) NOT NULL DEFAULT '0' COMMENT '马上使用点击量',
  `o_ck_3` int(11) NOT NULL DEFAULT '0' COMMENT '奖品列表查看点击量',
  `o_ck_4` int(11) NOT NULL DEFAULT '0' COMMENT '我的奖品按钮点击量',
  `o_ck_5` int(11) NOT NULL DEFAULT '0' COMMENT '我的奖品，奖品详情点击',
  `o_ck_6` int(11) NOT NULL DEFAULT '0' COMMENT '结束语 1号位 立即参与点击量',
  `o_ck_7` int(11) NOT NULL DEFAULT '0' COMMENT '结束语2号位 立即参与点击量',
  `o_ck_8` int(11) NOT NULL DEFAULT '0' COMMENT '规则按钮点击量',
  `o_ck_9` int(11) NOT NULL DEFAULT '0',
  `o_ck_10` int(11) NOT NULL DEFAULT '0',
  `o_pv_1` int(11) NOT NULL DEFAULT '0' COMMENT '结束页pv',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `adw_id` (`adw_id`) USING BTREE,
  KEY `tpl_id` (`tpl_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='广告模板报表';

-- ----------------------------
-- Records of oma_report_tpl
-- ----------------------------
INSERT INTO `oma_report_tpl` VALUES ('1', '1', '1', '1', '10', '20', '15', '11', '12', '13', '14', '123', '15', '17', '453', '543', '45', '455', '1513094400', '1513094400', '0');
INSERT INTO `oma_report_tpl` VALUES ('2', '1', '1', '1', '20', '20', '20', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '100', '1513440000', '1513094400', '0');
INSERT INTO `oma_report_tpl` VALUES ('3', '2', '86', '3', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1514217600', '1514363387', '1514363737');
INSERT INTO `oma_report_tpl` VALUES ('4', '15', '88', '5', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1514217600', '1514363387', '1514363737');
INSERT INTO `oma_report_tpl` VALUES ('5', '37', '89', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1514217600', '1514363388', '1514363737');
INSERT INTO `oma_report_tpl` VALUES ('6', '2', '87', '5', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1514217600', '1514363388', '1514363737');
INSERT INTO `oma_report_tpl` VALUES ('7', '2', '82', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1514217600', '1514363388', '1514363737');
INSERT INTO `oma_report_tpl` VALUES ('8', '1', '90', '5', '1', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1514390400', '1514443289', '1514445501');
INSERT INTO `oma_report_tpl` VALUES ('9', '37', '89', '3', '2', '2', '15', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1514390400', '1514443289', '1514445501');
INSERT INTO `oma_report_tpl` VALUES ('10', '2', '80', '3', '1', '1', '9', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1514390400', '1514443289', '1514445501');
INSERT INTO `oma_report_tpl` VALUES ('11', '15', '88', '3', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1514390400', '1514445497', '1514445501');
INSERT INTO `oma_report_tpl` VALUES ('12', '37', '89', '5', '1', '1', '6', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1514476800', '1514514145', '1514514290');
INSERT INTO `oma_report_tpl` VALUES ('13', '15', '88', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1514476800', '1514514145', '1514514290');

-- ----------------------------
-- Table structure for oma_role_group
-- ----------------------------
DROP TABLE IF EXISTS `oma_role_group`;
CREATE TABLE `oma_role_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `platform` varchar(10) NOT NULL DEFAULT '',
  `status` smallint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_role_group
-- ----------------------------
INSERT INTO `oma_role_group` VALUES ('2', '管理员', 'SSP', '1');
INSERT INTO `oma_role_group` VALUES ('3', '广告主', 'SSP', '1');
INSERT INTO `oma_role_group` VALUES ('5', '网站主', 'SSP', '1');
INSERT INTO `oma_role_group` VALUES ('6', '财务', 'SSP', '1');
INSERT INTO `oma_role_group` VALUES ('7', '商务', 'SSP', '1');
INSERT INTO `oma_role_group` VALUES ('8', '123', '', '1');
INSERT INTO `oma_role_group` VALUES ('9', '3123', '', '1');
INSERT INTO `oma_role_group` VALUES ('10', 'demo', '', '1');
INSERT INTO `oma_role_group` VALUES ('11', '123', '', '1');
INSERT INTO `oma_role_group` VALUES ('12', '1111', '', '1');

-- ----------------------------
-- Table structure for oma_role_operations
-- ----------------------------
DROP TABLE IF EXISTS `oma_role_operations`;
CREATE TABLE `oma_role_operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `action_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `task_id` (`task_id`),
  KEY `action_id` (`action_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3533 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_role_operations
-- ----------------------------
INSERT INTO `oma_role_operations` VALUES ('3517', '2', '8000', '8001');
INSERT INTO `oma_role_operations` VALUES ('3516', '2', '0', '8000');
INSERT INTO `oma_role_operations` VALUES ('3515', '2', '7900', '2903');
INSERT INTO `oma_role_operations` VALUES ('3514', '2', '7900', '7902');
INSERT INTO `oma_role_operations` VALUES ('3513', '2', '7900', '7901');
INSERT INTO `oma_role_operations` VALUES ('3512', '2', '0', '7900');
INSERT INTO `oma_role_operations` VALUES ('3511', '2', '7800', '7804');
INSERT INTO `oma_role_operations` VALUES ('3510', '2', '7800', '7803');
INSERT INTO `oma_role_operations` VALUES ('3509', '2', '7800', '7802');
INSERT INTO `oma_role_operations` VALUES ('3508', '2', '7800', '7801');
INSERT INTO `oma_role_operations` VALUES ('3507', '2', '0', '7800');
INSERT INTO `oma_role_operations` VALUES ('3506', '2', '7700', '7704');
INSERT INTO `oma_role_operations` VALUES ('3505', '2', '7700', '7703');
INSERT INTO `oma_role_operations` VALUES ('3504', '2', '7700', '7702');
INSERT INTO `oma_role_operations` VALUES ('3503', '2', '7700', '7701');
INSERT INTO `oma_role_operations` VALUES ('3502', '2', '0', '7700');
INSERT INTO `oma_role_operations` VALUES ('3501', '2', '7600', '7602');
INSERT INTO `oma_role_operations` VALUES ('3500', '2', '7600', '7601');
INSERT INTO `oma_role_operations` VALUES ('3499', '2', '0', '7600');
INSERT INTO `oma_role_operations` VALUES ('3498', '2', '7500', '7502');
INSERT INTO `oma_role_operations` VALUES ('3497', '2', '7500', '7501');
INSERT INTO `oma_role_operations` VALUES ('3496', '2', '0', '7500');
INSERT INTO `oma_role_operations` VALUES ('3495', '2', '7400', '7406');
INSERT INTO `oma_role_operations` VALUES ('3494', '2', '7400', '7405');
INSERT INTO `oma_role_operations` VALUES ('3493', '2', '7400', '7404');
INSERT INTO `oma_role_operations` VALUES ('3492', '2', '7400', '7403');
INSERT INTO `oma_role_operations` VALUES ('3491', '2', '7400', '7402');
INSERT INTO `oma_role_operations` VALUES ('3490', '2', '7400', '7401');
INSERT INTO `oma_role_operations` VALUES ('3489', '2', '0', '7400');
INSERT INTO `oma_role_operations` VALUES ('3488', '2', '7300', '7309');
INSERT INTO `oma_role_operations` VALUES ('3487', '2', '7300', '7308');
INSERT INTO `oma_role_operations` VALUES ('3486', '2', '7300', '7307');
INSERT INTO `oma_role_operations` VALUES ('3485', '2', '7300', '7306');
INSERT INTO `oma_role_operations` VALUES ('3484', '2', '7300', '7305');
INSERT INTO `oma_role_operations` VALUES ('3483', '2', '7300', '7304');
INSERT INTO `oma_role_operations` VALUES ('3482', '2', '7300', '7303');
INSERT INTO `oma_role_operations` VALUES ('3481', '2', '7300', '7302');
INSERT INTO `oma_role_operations` VALUES ('3480', '2', '7300', '7301');
INSERT INTO `oma_role_operations` VALUES ('3479', '2', '0', '7300');
INSERT INTO `oma_role_operations` VALUES ('3478', '2', '7200', '7208');
INSERT INTO `oma_role_operations` VALUES ('3477', '2', '7200', '7207');
INSERT INTO `oma_role_operations` VALUES ('3476', '2', '7200', '7206');
INSERT INTO `oma_role_operations` VALUES ('3475', '2', '7200', '7205');
INSERT INTO `oma_role_operations` VALUES ('3474', '2', '7200', '7204');
INSERT INTO `oma_role_operations` VALUES ('3473', '2', '7200', '7203');
INSERT INTO `oma_role_operations` VALUES ('3472', '2', '7200', '7202');
INSERT INTO `oma_role_operations` VALUES ('3471', '2', '7200', '7201');
INSERT INTO `oma_role_operations` VALUES ('3470', '2', '0', '7200');
INSERT INTO `oma_role_operations` VALUES ('3469', '2', '7100', '7104');
INSERT INTO `oma_role_operations` VALUES ('3468', '2', '7100', '7103');
INSERT INTO `oma_role_operations` VALUES ('3467', '2', '7100', '7102');
INSERT INTO `oma_role_operations` VALUES ('3466', '2', '7100', '7101');
INSERT INTO `oma_role_operations` VALUES ('3465', '2', '0', '7100');
INSERT INTO `oma_role_operations` VALUES ('3464', '2', '7000', '7004');
INSERT INTO `oma_role_operations` VALUES ('3463', '2', '7000', '7003');
INSERT INTO `oma_role_operations` VALUES ('2017', '7', '7400', '7402');
INSERT INTO `oma_role_operations` VALUES ('2016', '7', '7400', '7401');
INSERT INTO `oma_role_operations` VALUES ('2015', '7', '0', '7400');
INSERT INTO `oma_role_operations` VALUES ('2014', '7', '7300', '7307');
INSERT INTO `oma_role_operations` VALUES ('2013', '7', '7300', '7306');
INSERT INTO `oma_role_operations` VALUES ('2012', '7', '7300', '7305');
INSERT INTO `oma_role_operations` VALUES ('2011', '7', '7300', '7301');
INSERT INTO `oma_role_operations` VALUES ('2010', '7', '0', '7300');
INSERT INTO `oma_role_operations` VALUES ('2009', '7', '7200', '7203');
INSERT INTO `oma_role_operations` VALUES ('2008', '7', '7200', '7201');
INSERT INTO `oma_role_operations` VALUES ('2007', '7', '0', '7200');
INSERT INTO `oma_role_operations` VALUES ('2006', '7', '2400', '2403');
INSERT INTO `oma_role_operations` VALUES ('2005', '7', '2400', '2402');
INSERT INTO `oma_role_operations` VALUES ('2004', '7', '2400', '2401');
INSERT INTO `oma_role_operations` VALUES ('2003', '7', '0', '2400');
INSERT INTO `oma_role_operations` VALUES ('2002', '7', '2300', '2301');
INSERT INTO `oma_role_operations` VALUES ('2001', '7', '0', '2300');
INSERT INTO `oma_role_operations` VALUES ('2000', '7', '2100', '2102');
INSERT INTO `oma_role_operations` VALUES ('1999', '7', '2100', '2101');
INSERT INTO `oma_role_operations` VALUES ('1998', '7', '0', '2100');
INSERT INTO `oma_role_operations` VALUES ('1997', '7', '1000', '1003');
INSERT INTO `oma_role_operations` VALUES ('2018', '7', '7400', '7403');
INSERT INTO `oma_role_operations` VALUES ('2019', '7', '7400', '7404');
INSERT INTO `oma_role_operations` VALUES ('2020', '7', '7400', '7405');
INSERT INTO `oma_role_operations` VALUES ('2021', '7', '7400', '7406');
INSERT INTO `oma_role_operations` VALUES ('3532', '5', '1200', '1202');
INSERT INTO `oma_role_operations` VALUES ('3531', '5', '1200', '1201');
INSERT INTO `oma_role_operations` VALUES ('3530', '5', '0', '1200');
INSERT INTO `oma_role_operations` VALUES ('3529', '5', '1100', '1102');
INSERT INTO `oma_role_operations` VALUES ('3528', '5', '0', '1100');
INSERT INTO `oma_role_operations` VALUES ('3527', '5', '1000', '8022');
INSERT INTO `oma_role_operations` VALUES ('3526', '5', '1000', '1005');
INSERT INTO `oma_role_operations` VALUES ('3525', '5', '1000', '1004');
INSERT INTO `oma_role_operations` VALUES ('3520', '2', '8000', '8004');
INSERT INTO `oma_role_operations` VALUES ('3524', '5', '1000', '1003');
INSERT INTO `oma_role_operations` VALUES ('3519', '2', '8000', '8003');
INSERT INTO `oma_role_operations` VALUES ('3523', '5', '1000', '1002');
INSERT INTO `oma_role_operations` VALUES ('3522', '5', '1000', '1001');
INSERT INTO `oma_role_operations` VALUES ('3521', '5', '0', '1000');
INSERT INTO `oma_role_operations` VALUES ('3518', '2', '8000', '8002');
INSERT INTO `oma_role_operations` VALUES ('3462', '2', '7000', '7002');
INSERT INTO `oma_role_operations` VALUES ('3461', '2', '7000', '7001');
INSERT INTO `oma_role_operations` VALUES ('3460', '2', '0', '7000');
INSERT INTO `oma_role_operations` VALUES ('3459', '2', '8017', '8021');
INSERT INTO `oma_role_operations` VALUES ('3458', '2', '8017', '8020');
INSERT INTO `oma_role_operations` VALUES ('3457', '2', '8017', '8019');
INSERT INTO `oma_role_operations` VALUES ('3456', '2', '0', '8017');
INSERT INTO `oma_role_operations` VALUES ('3455', '2', '0', '8005');
INSERT INTO `oma_role_operations` VALUES ('3454', '2', '2800', '2802');
INSERT INTO `oma_role_operations` VALUES ('3453', '2', '2800', '2801');
INSERT INTO `oma_role_operations` VALUES ('3452', '2', '0', '2800');
INSERT INTO `oma_role_operations` VALUES ('3451', '2', '2700', '2703');
INSERT INTO `oma_role_operations` VALUES ('3450', '2', '2700', '2702');
INSERT INTO `oma_role_operations` VALUES ('3449', '2', '2700', '2701');
INSERT INTO `oma_role_operations` VALUES ('3448', '2', '0', '2700');
INSERT INTO `oma_role_operations` VALUES ('3447', '2', '2600', '8007');
INSERT INTO `oma_role_operations` VALUES ('3446', '2', '2600', '8006');
INSERT INTO `oma_role_operations` VALUES ('3445', '2', '0', '2600');
INSERT INTO `oma_role_operations` VALUES ('3444', '2', '0', '2500');
INSERT INTO `oma_role_operations` VALUES ('3443', '2', '2400', '2403');
INSERT INTO `oma_role_operations` VALUES ('3442', '2', '2400', '2402');
INSERT INTO `oma_role_operations` VALUES ('3441', '2', '2400', '2401');
INSERT INTO `oma_role_operations` VALUES ('3440', '2', '0', '2400');
INSERT INTO `oma_role_operations` VALUES ('3439', '2', '2300', '2302');
INSERT INTO `oma_role_operations` VALUES ('3438', '2', '2300', '2301');
INSERT INTO `oma_role_operations` VALUES ('3437', '2', '0', '2300');
INSERT INTO `oma_role_operations` VALUES ('3436', '2', '2200', '2204');
INSERT INTO `oma_role_operations` VALUES ('3435', '2', '2200', '8009');
INSERT INTO `oma_role_operations` VALUES ('3434', '2', '2200', '2203');
INSERT INTO `oma_role_operations` VALUES ('3433', '2', '2200', '2202');
INSERT INTO `oma_role_operations` VALUES ('3432', '2', '2200', '2201');
INSERT INTO `oma_role_operations` VALUES ('3431', '2', '0', '2200');
INSERT INTO `oma_role_operations` VALUES ('3430', '2', '2100', '2103');
INSERT INTO `oma_role_operations` VALUES ('3429', '2', '2100', '2102');
INSERT INTO `oma_role_operations` VALUES ('3428', '2', '2100', '2101');
INSERT INTO `oma_role_operations` VALUES ('3427', '2', '0', '2100');
INSERT INTO `oma_role_operations` VALUES ('3426', '2', '2000', '2004');
INSERT INTO `oma_role_operations` VALUES ('3425', '2', '2000', '2003');
INSERT INTO `oma_role_operations` VALUES ('3424', '2', '2000', '2002');
INSERT INTO `oma_role_operations` VALUES ('3423', '2', '2000', '2001');
INSERT INTO `oma_role_operations` VALUES ('3422', '2', '0', '2000');
INSERT INTO `oma_role_operations` VALUES ('3421', '2', '1200', '1203');
INSERT INTO `oma_role_operations` VALUES ('3099', '6', '8000', '8004');
INSERT INTO `oma_role_operations` VALUES ('3098', '6', '8000', '8003');
INSERT INTO `oma_role_operations` VALUES ('3097', '6', '8000', '8002');
INSERT INTO `oma_role_operations` VALUES ('3096', '6', '8000', '8001');
INSERT INTO `oma_role_operations` VALUES ('3095', '6', '0', '8000');
INSERT INTO `oma_role_operations` VALUES ('3094', '6', '7900', '7903');
INSERT INTO `oma_role_operations` VALUES ('3093', '6', '7900', '2903');
INSERT INTO `oma_role_operations` VALUES ('3092', '6', '7900', '7902');
INSERT INTO `oma_role_operations` VALUES ('3091', '6', '7900', '7901');
INSERT INTO `oma_role_operations` VALUES ('3090', '6', '0', '7900');
INSERT INTO `oma_role_operations` VALUES ('3089', '6', '7800', '7804');
INSERT INTO `oma_role_operations` VALUES ('3088', '6', '7800', '7803');
INSERT INTO `oma_role_operations` VALUES ('3087', '6', '7800', '7802');
INSERT INTO `oma_role_operations` VALUES ('3086', '6', '7800', '7801');
INSERT INTO `oma_role_operations` VALUES ('3085', '6', '0', '7800');
INSERT INTO `oma_role_operations` VALUES ('3084', '6', '7700', '7704');
INSERT INTO `oma_role_operations` VALUES ('3083', '6', '7700', '7703');
INSERT INTO `oma_role_operations` VALUES ('3082', '6', '7700', '7702');
INSERT INTO `oma_role_operations` VALUES ('3081', '6', '7700', '7701');
INSERT INTO `oma_role_operations` VALUES ('3080', '6', '0', '7700');
INSERT INTO `oma_role_operations` VALUES ('3079', '6', '7600', '7602');
INSERT INTO `oma_role_operations` VALUES ('3078', '6', '7600', '7601');
INSERT INTO `oma_role_operations` VALUES ('3077', '6', '0', '7600');
INSERT INTO `oma_role_operations` VALUES ('3076', '6', '7500', '7502');
INSERT INTO `oma_role_operations` VALUES ('3075', '6', '7500', '7501');
INSERT INTO `oma_role_operations` VALUES ('3074', '6', '0', '7500');
INSERT INTO `oma_role_operations` VALUES ('3073', '6', '7400', '7406');
INSERT INTO `oma_role_operations` VALUES ('3072', '6', '7400', '7405');
INSERT INTO `oma_role_operations` VALUES ('3071', '6', '7400', '7404');
INSERT INTO `oma_role_operations` VALUES ('3070', '6', '7400', '7403');
INSERT INTO `oma_role_operations` VALUES ('3069', '6', '7400', '7402');
INSERT INTO `oma_role_operations` VALUES ('3068', '6', '7400', '7401');
INSERT INTO `oma_role_operations` VALUES ('3067', '6', '0', '7400');
INSERT INTO `oma_role_operations` VALUES ('3066', '6', '7300', '7309');
INSERT INTO `oma_role_operations` VALUES ('3065', '6', '7300', '7308');
INSERT INTO `oma_role_operations` VALUES ('3064', '6', '7300', '7307');
INSERT INTO `oma_role_operations` VALUES ('3063', '6', '7300', '7306');
INSERT INTO `oma_role_operations` VALUES ('3062', '6', '7300', '7305');
INSERT INTO `oma_role_operations` VALUES ('3061', '6', '7300', '7304');
INSERT INTO `oma_role_operations` VALUES ('3060', '6', '7300', '7303');
INSERT INTO `oma_role_operations` VALUES ('3059', '6', '7300', '7302');
INSERT INTO `oma_role_operations` VALUES ('3058', '6', '7300', '7301');
INSERT INTO `oma_role_operations` VALUES ('3057', '6', '0', '7300');
INSERT INTO `oma_role_operations` VALUES ('3056', '6', '7200', '7208');
INSERT INTO `oma_role_operations` VALUES ('3055', '6', '7200', '7207');
INSERT INTO `oma_role_operations` VALUES ('3054', '6', '7200', '7206');
INSERT INTO `oma_role_operations` VALUES ('3053', '6', '7200', '7205');
INSERT INTO `oma_role_operations` VALUES ('3052', '6', '7200', '7204');
INSERT INTO `oma_role_operations` VALUES ('3051', '6', '7200', '7203');
INSERT INTO `oma_role_operations` VALUES ('3050', '6', '7200', '7202');
INSERT INTO `oma_role_operations` VALUES ('3049', '6', '7200', '7201');
INSERT INTO `oma_role_operations` VALUES ('3048', '6', '0', '7200');
INSERT INTO `oma_role_operations` VALUES ('3047', '6', '7100', '7104');
INSERT INTO `oma_role_operations` VALUES ('3046', '6', '7100', '7103');
INSERT INTO `oma_role_operations` VALUES ('3045', '6', '7100', '7102');
INSERT INTO `oma_role_operations` VALUES ('3044', '6', '7100', '7101');
INSERT INTO `oma_role_operations` VALUES ('3043', '6', '0', '7100');
INSERT INTO `oma_role_operations` VALUES ('3042', '6', '7000', '7004');
INSERT INTO `oma_role_operations` VALUES ('3041', '6', '7000', '7003');
INSERT INTO `oma_role_operations` VALUES ('3040', '6', '7000', '7002');
INSERT INTO `oma_role_operations` VALUES ('3039', '6', '7000', '7001');
INSERT INTO `oma_role_operations` VALUES ('3038', '6', '0', '7000');
INSERT INTO `oma_role_operations` VALUES ('3037', '6', '2800', '2802');
INSERT INTO `oma_role_operations` VALUES ('3036', '6', '2800', '2801');
INSERT INTO `oma_role_operations` VALUES ('3035', '6', '0', '2800');
INSERT INTO `oma_role_operations` VALUES ('3034', '6', '2700', '2703');
INSERT INTO `oma_role_operations` VALUES ('3033', '6', '2700', '2702');
INSERT INTO `oma_role_operations` VALUES ('3032', '6', '2700', '2701');
INSERT INTO `oma_role_operations` VALUES ('3031', '6', '0', '2700');
INSERT INTO `oma_role_operations` VALUES ('3030', '6', '0', '2600');
INSERT INTO `oma_role_operations` VALUES ('3029', '6', '0', '2500');
INSERT INTO `oma_role_operations` VALUES ('3028', '6', '2400', '2403');
INSERT INTO `oma_role_operations` VALUES ('3027', '6', '2400', '2402');
INSERT INTO `oma_role_operations` VALUES ('3026', '6', '2400', '2401');
INSERT INTO `oma_role_operations` VALUES ('3025', '6', '0', '2400');
INSERT INTO `oma_role_operations` VALUES ('3024', '6', '2300', '2302');
INSERT INTO `oma_role_operations` VALUES ('3023', '6', '2300', '2301');
INSERT INTO `oma_role_operations` VALUES ('3022', '6', '0', '2300');
INSERT INTO `oma_role_operations` VALUES ('3021', '6', '2200', '2204');
INSERT INTO `oma_role_operations` VALUES ('3020', '6', '2200', '2203');
INSERT INTO `oma_role_operations` VALUES ('3019', '6', '2200', '2202');
INSERT INTO `oma_role_operations` VALUES ('3018', '6', '2200', '2201');
INSERT INTO `oma_role_operations` VALUES ('3017', '6', '0', '2200');
INSERT INTO `oma_role_operations` VALUES ('3016', '6', '2100', '2103');
INSERT INTO `oma_role_operations` VALUES ('3015', '6', '2100', '2102');
INSERT INTO `oma_role_operations` VALUES ('3014', '6', '2100', '2101');
INSERT INTO `oma_role_operations` VALUES ('3013', '6', '0', '2100');
INSERT INTO `oma_role_operations` VALUES ('3420', '2', '1200', '1202');
INSERT INTO `oma_role_operations` VALUES ('3419', '2', '1200', '1201');
INSERT INTO `oma_role_operations` VALUES ('3418', '2', '0', '1200');
INSERT INTO `oma_role_operations` VALUES ('3417', '2', '1100', '1103');
INSERT INTO `oma_role_operations` VALUES ('3416', '2', '1100', '1102');
INSERT INTO `oma_role_operations` VALUES ('3415', '2', '1100', '1101');
INSERT INTO `oma_role_operations` VALUES ('3414', '2', '0', '1100');
INSERT INTO `oma_role_operations` VALUES ('3413', '2', '1000', '1005');
INSERT INTO `oma_role_operations` VALUES ('3412', '2', '1000', '1004');
INSERT INTO `oma_role_operations` VALUES ('3411', '2', '1000', '1003');
INSERT INTO `oma_role_operations` VALUES ('3410', '2', '1000', '1002');
INSERT INTO `oma_role_operations` VALUES ('3409', '2', '1000', '1001');
INSERT INTO `oma_role_operations` VALUES ('3408', '2', '0', '1000');

-- ----------------------------
-- Table structure for oma_role_tasks
-- ----------------------------
DROP TABLE IF EXISTS `oma_role_tasks`;
CREATE TABLE `oma_role_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL DEFAULT '',
  `is_menu` tinyint(1) NOT NULL DEFAULT '0',
  `platform` varchar(10) NOT NULL DEFAULT '',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `platform` (`platform`),
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8023 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_role_tasks
-- ----------------------------
INSERT INTO `oma_role_tasks` VALUES ('1000', '账号首页', '0', 'ssp', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('1001', '概况', '1000', 'ssp', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('1002', '媒体管理', '1000', 'web', 'index', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('1003', '付款记录', '1000', 'ssp', 'payRecord', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('1004', '账户信息', '1000', 'user', 'accinfo', '1', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('1005', '我的消息', '1000', 'message', 'index', '1', 'SSP', '5');
INSERT INTO `oma_role_tasks` VALUES ('1100', '推广管理', '0', 'advertising', 'index', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('1101', '概况', '1100', 'advertising', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('1102', '单品推广', '1100', 'advertising', 'single', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('1103', '频道推广', '1100', 'advertising', 'channel', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('1200', '效果报表', '0', 'report', 'adweffect', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('1201', '网站报表', '1200', 'report', 'adeffect', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('1202', '单品推广', '1200', 'report', 'adweffect', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('1203', '频道推广', '1200', 'report', 'cnneffect', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('2000', '权限管理', '0', 'group', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2001', '用户组管理', '2000', 'group', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2002', '模块管理', '2000', 'module', 'index', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2003', '控制器/动作管理', '2000', 'control', 'index', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('2004', '权限分配', '2000', 'operator', 'index', '1', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('2100', '审核管理', '0', 'audit', 'web', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2101', '网站审核', '2100', 'audit', 'web', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2102', '打款处理', '2100', 'audit', 'pay', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2103', '广告审核', '2100', 'audit', 'popularize', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('2200', '消息管理', '0', 'message', 'index', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('2201', '公告管理', '2200', 'message', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2202', '用户消息管理', '2200', 'notice', 'index', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2203', '直通车公告', '2200', 'zhimessage', 'index', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('2204', '直通车用户消息', '2200', 'zhinotice', 'index', '1', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('2300', '用户管理', '0', 'user', 'index', '1', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('2301', '列表', '2300', 'user', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2302', '添加', '2300', 'user', 'add', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2400', '效果报表', '0', 'report', 'adeffect', '1', 'SSP', '5');
INSERT INTO `oma_role_tasks` VALUES ('2401', '网站报表', '2400', 'report', 'adeffect', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2402', '单品推广', '2400', 'report', 'adweffect', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2403', '频道推广', '2400', 'report', 'cnneffect', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('2500', '日志管理', '0', 'log', 'index', '1', 'SSP', '6');
INSERT INTO `oma_role_tasks` VALUES ('2600', '广告位管理', '0', 'advertising', 'index', '1', 'SSP', '7');
INSERT INTO `oma_role_tasks` VALUES ('2700', '直通车管理', '0', 'advert', 'report', '1', 'SSP', '8');
INSERT INTO `oma_role_tasks` VALUES ('2701', '投放中报表', '2700', 'advert', 'report', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2702', '分类管理', '2700', 'protype', 'index', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2703', '红包返利比例', '2700', 'rebate', 'index', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('2800', '综合报表', '0', 'report', 'colliagePd', '1', 'SSP', '9');
INSERT INTO `oma_role_tasks` VALUES ('2801', '单品推广', '2800', 'report', 'colliagePd', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('2802', '频道推广', '2800', 'report', 'colliageLink', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('2903', '红包返利比例', '7900', 'rebate', 'index', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7000', '公告管理', '0', 'message', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7001', '列表', '7000', 'message', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7002', '添加', '7000', 'message', 'add', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7003', '修改', '7000', 'message', 'edit', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7004', '删除', '7000', 'message', 'del', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7100', '消息管理', '0', 'notice', 'index', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7101', '列表', '7100', 'notice', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7102', '添加', '7100', 'notice', 'add', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7103', '修改', '7100', 'notice', 'edit', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7104', '删除', '7100', 'notice', 'del', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7200', '审核管理', '0', 'audit', 'web', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7201', '网站审核列表', '7200', 'audit', 'web', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7202', '网站审核', '7200', 'audit', 'webAudit', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7203', '打款处理列表', '7200', 'audit', 'pay', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7204', '打款处理', '7200', 'audit', 'payStatus', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7205', '广告列表', '7200', 'audit', 'popularize', '0', 'SSP', '5');
INSERT INTO `oma_role_tasks` VALUES ('7206', '广告审核处理', '7200', 'audit', 'popularizeStatus', '0', 'SSP', '6');
INSERT INTO `oma_role_tasks` VALUES ('7207', '广告审核修改', '7200', 'audit', 'saveAdvert', '0', 'SSP', '7');
INSERT INTO `oma_role_tasks` VALUES ('7208', '广告图片上传', '7200', 'audit', 'uploadImg', '0', 'SSP', '8');
INSERT INTO `oma_role_tasks` VALUES ('7300', '用户管理', '0', 'user', 'index', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7301', '列表', '7300', 'user', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7302', '添加', '7300', 'user', 'add', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7303', '修改', '7300', 'user', 'edit', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7304', '删除', '7300', 'user', 'del', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7305', '用户详细', '7300', 'user', 'getUserDetail', '0', 'SSP', '5');
INSERT INTO `oma_role_tasks` VALUES ('7306', '用户下网站', '7300', 'user', 'getUserWebs', '0', 'SSP', '6');
INSERT INTO `oma_role_tasks` VALUES ('7307', '用户下广告位', '7300', 'user', 'getUserAdvertising', '0', 'SSP', '7');
INSERT INTO `oma_role_tasks` VALUES ('7308', '修改单品折扣比', '7300', 'user', 'editRateSingle', '0', 'SSP', '8');
INSERT INTO `oma_role_tasks` VALUES ('7309', '修改频道折扣比', '7300', 'user', 'editRateChannel', '0', 'SSP', '9');
INSERT INTO `oma_role_tasks` VALUES ('7400', '报表管理', '0', 'report', 'adeffect', '0', 'SSP', '5');
INSERT INTO `oma_role_tasks` VALUES ('7401', '网站报表', '7400', 'report', 'adeffect', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7402', '单品推广', '7400', 'report', 'adweffect', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7403', '频道推广', '7400', 'report', 'cnneffect', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7404', '综合导出', '7400', 'report', ' exportAdw', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7405', '单品导出', '7400', 'report', 'exportWeb', '0', 'SSP', '5');
INSERT INTO `oma_role_tasks` VALUES ('7406', '频道导出', '7400', 'report', 'exportCn', '0', 'SSP', '6');
INSERT INTO `oma_role_tasks` VALUES ('7500', '日志管理', '0', 'log', 'index', '0', 'SSP', '6');
INSERT INTO `oma_role_tasks` VALUES ('7501', '列表', '7500', 'log', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7502', '删除', '7500', 'log', 'del', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7600', '广告位管理', '0', 'advertising', 'index', '0', 'SSP', '7');
INSERT INTO `oma_role_tasks` VALUES ('7601', '列表', '7600', 'advertising', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7602', '删除', '7600', 'advertising', 'edit', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7700', '直通车公告管理', '0', 'zhimessage', 'index', '0', 'SSP', '8');
INSERT INTO `oma_role_tasks` VALUES ('7701', '列表', '7700', 'zhimessage', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7702', '添加', '7700', 'zhimessage', 'add', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7703', '修改', '7700', 'zhimessage', 'edit', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7704', '删除', '7700', 'zhimessage', 'del', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7800', '直通车消息管理', '0', 'zhinotice', 'index', '0', 'SSP', '9');
INSERT INTO `oma_role_tasks` VALUES ('7801', '列表', '7800', 'zhinotice', 'index', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7802', '添加', '7800', 'zhinotice', 'add', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7803', '修改', '7800', 'zhinotice', 'edit', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('7804', '删除', '7800', 'zhinotice', 'del', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('7900', '直通车管理', '0', 'advert', 'report', '0', 'SSP', '10');
INSERT INTO `oma_role_tasks` VALUES ('7901', '投放中报表', '7900', 'advert', 'report', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('7902', '分类管理', '7900', 'protype', 'index', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('7903', '红包返利比例', '7900', 'rebate', 'index', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('8000', '综合报表', '0', 'report', 'colliagePd', '0', 'SSP', '11');
INSERT INTO `oma_role_tasks` VALUES ('8001', '单品推广', '8000', 'report', 'colliagePd', '0', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('8002', '频道推广', '8000', 'report', 'colliageLink', '0', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('8003', '单品推广导出', '8000', 'report', 'exportCPd', '0', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('8004', '频道推广导出', '8000', 'report', 'exportLink', '0', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('8005', '双十一活动', '0', 'Eleven', 'index', '1', 'SSP', '10');
INSERT INTO `oma_role_tasks` VALUES ('8006', '单品推广', '2600', 'advertising', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('8007', '频道推广', '2600', 'advertising', 'channel', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('8009', '浙江电信公告', '2200', 'zhimessage', 'indexzj', '1', 'SSP', '4');
INSERT INTO `oma_role_tasks` VALUES ('8010', '渠道分组', '2600', 'advertising', 'adwGrp', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('8017', 'AdSense管理', '0', 'Adsense', 'index', '1', 'SSP', '12');
INSERT INTO `oma_role_tasks` VALUES ('8019', '账号绑定管理', '8017', 'adsense', 'index', '1', 'SSP', '1');
INSERT INTO `oma_role_tasks` VALUES ('8020', '域名解封管理', '8017', 'adsense', 'unblock', '1', 'SSP', '2');
INSERT INTO `oma_role_tasks` VALUES ('8021', '域名过审管理', '8017', 'adsense', 'audit', '1', 'SSP', '3');
INSERT INTO `oma_role_tasks` VALUES ('8022', 'AdSense管理', '1000', 'AdSense', 'index', '1', 'SSP', '6');

-- ----------------------------
-- Table structure for oma_shield
-- ----------------------------
DROP TABLE IF EXISTS `oma_shield`;
CREATE TABLE `oma_shield` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '屏蔽名称',
  `industry_id` int(11) NOT NULL DEFAULT '0' COMMENT '行业id 暂定 1：棋牌，2 金融，3 网赚，4 电商，5 其他',
  `urls` varchar(1000) NOT NULL DEFAULT '' COMMENT '屏蔽域名 存在多条url，按|分割',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='屏蔽包';

-- ----------------------------
-- Records of oma_shield
-- ----------------------------
INSERT INTO `oma_shield` VALUES ('1', '测试屏蔽包', '3', '   http://www.baidu.com|http://www.163.com ', '1512835200', '1513678206');
INSERT INTO `oma_shield` VALUES ('6', '3334', '5', '1232312', '1513690502', '1515029597');
INSERT INTO `oma_shield` VALUES ('8', '222', '1', '22', '1513747969', '0');

-- ----------------------------
-- Table structure for oma_tpl
-- ----------------------------
DROP TABLE IF EXISTS `oma_tpl`;
CREATE TABLE `oma_tpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '模板名称',
  `pic` varchar(200) NOT NULL DEFAULT '' COMMENT '模板图片',
  `uniqe_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模板唯一标识符',
  `weight` decimal(4,2) NOT NULL DEFAULT '1.00' COMMENT '权重',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板类型id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '模板状态 0 正常 1下架',
  `is_third` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是第三方 0否 1是',
  `third_url` varchar(200) NOT NULL DEFAULT '' COMMENT '第三方模板链接',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqe_name` (`uniqe_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_tpl
-- ----------------------------
INSERT INTO `oma_tpl` VALUES ('1', 'test模板', '111', 'pan1002', '1.00', '1', '0', '0', '', '1512057600', '1514275057');
INSERT INTO `oma_tpl` VALUES ('3', '2223', '/static/image/2017/12/20171214200707_40318.jpg', 'pan1001', '22.00', '1', '0', '0', '', '0', '1514863781');
INSERT INTO `oma_tpl` VALUES ('5', 'sssxxxxxx', '/static/image/2017/12/20171220133322_23997.jpg', 'egg1001', '19.99', '1', '0', '0', '', '1513748024', '1514864043');

-- ----------------------------
-- Table structure for oma_tpl_type
-- ----------------------------
DROP TABLE IF EXISTS `oma_tpl_type`;
CREATE TABLE `oma_tpl_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级模板id',
  `weight` decimal(5,2) NOT NULL DEFAULT '1.00' COMMENT '模板显示权重',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='模板类型表';

-- ----------------------------
-- Records of oma_tpl_type
-- ----------------------------
INSERT INTO `oma_tpl_type` VALUES ('1', '砸金蛋', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('2', '转盘', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('3', '娃娃机', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('4', '刷红包', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('5', '捞奖品', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('6', '转盘', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('7', '打金蛋', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('8', '筛子', '0', '1.00');
INSERT INTO `oma_tpl_type` VALUES ('9', '砸鸭子', '0', '1.00');

-- ----------------------------
-- Table structure for oma_user
-- ----------------------------
DROP TABLE IF EXISTS `oma_user`;
CREATE TABLE `oma_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(10) NOT NULL DEFAULT '' COMMENT '密码干扰数',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱号码',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT 'QQ',
  `kf_qq` varchar(15) NOT NULL DEFAULT '' COMMENT '专属客服qq',
  `fc_type` tinyint(1) NOT NULL COMMENT '财务对象: 1企业 2个人',
  `fc_has_invoice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '财务信息-是否有发票: 1是 0否',
  `fc_bank` varchar(50) NOT NULL COMMENT '收款银行: 1工商银行 2农业银行 3建设银行 4中国银行',
  `fc_account` varchar(50) NOT NULL DEFAULT '' COMMENT '财务信息-银行账号',
  `fc_payee` varchar(10) NOT NULL DEFAULT '' COMMENT '财务信息 - 收款人',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '账户状态 0 正常 1冻结 2 删除',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `rate` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '用户分成比',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '登录ip',
  `user_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户类型 ： 0 网站组 1 广告主',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of oma_user
-- ----------------------------
INSERT INTO `oma_user` VALUES ('1', 'test', 'ea1e9e1cef5efcf573cf366651edb075', '8093', '13111111111', '12134@qq.com', '13111111111', '', '2', '0', '哈哈哈', '1112', '34554', '0', '1000.00', '0.8000', '1515129934', '127.0.0.1', '0', '1512464142', '1515056930');
INSERT INTO `oma_user` VALUES ('2', 'ying', 'ea1e9e1cef5efcf573cf366651edb075', '8093', '13', '222@qq.com', '1', '', '1', '1', '2哈哈哈', '1233', '31233', '0', '4444.00', '0.0000', '1514254530', '192.168.1.121', '0', '1564561213', '1513681543');
INSERT INTO `oma_user` VALUES ('7', 'li', 'f041ef12e28f4a630ff740dba6e1babb', '6013', '13736048207', '396211801@qq.com', '333', '', '0', '0', '012哈哈哈', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513070006', '0');
INSERT INTO `oma_user` VALUES ('9', 'demo', '82117a3686d9eb5122abd6c25e472cf0', '1611', '132564897', '132564897', '132564897', '', '0', '0', '012', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513127724', '0');
INSERT INTO `oma_user` VALUES ('10', 'demo2', 'aea6b16211c06ab4ebf38438abdf3b5a', '6618', '23156487', '23156489', '213564897', '', '0', '0', '哈哈哈', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513127927', '0');
INSERT INTO `oma_user` VALUES ('11', 'demo3', '2958a4c988016ae0f0b2032bfd80f946', '7941', '12345678', '12345678', '12345678', '', '0', '0', '0哈哈哈', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128144', '0');
INSERT INTO `oma_user` VALUES ('12', 'demo4', '0ac61f812f7ed7251994a46fc942cd6d', '8330', '12345678', '12345678', '12345678', '', '0', '0', '0哈哈哈', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128452', '0');
INSERT INTO `oma_user` VALUES ('13', 'demo5', '235509a4f9ab1864c409ffce102037c8', '8333', '12345678', '12345678', '12345678', '', '0', '0', '0哈哈哈', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128454', '0');
INSERT INTO `oma_user` VALUES ('14', 'demo6', 'e192da18f828baa57b35c773e49119f4', '8572', '12345678', '12345678', '12345678', '', '0', '0', '0哈哈哈', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128456', '0');
INSERT INTO `oma_user` VALUES ('15', 'test7', '496b91a7f3a1e4959311a6cac8003342', '1824', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128460', '0');
INSERT INTO `oma_user` VALUES ('16', 'test8', '2ca1bdc50f74b19b39773e2ce64cf83e', '6786', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128465', '0');
INSERT INTO `oma_user` VALUES ('17', 'test9', 'd301453f829c50db089a6f4139644777', '2559', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128467', '0');
INSERT INTO `oma_user` VALUES ('18', 'test10', 'b2f18612ab41cf50aaff7cd3f1056347', '8036', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128471', '0');
INSERT INTO `oma_user` VALUES ('19', 'test11', '01884f142f181222ddeaaec4eb03878b', '6572', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128474', '0');
INSERT INTO `oma_user` VALUES ('20', 'test12', 'be017d7cbf3f70df1a968485007470b9', '8076', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128475', '0');
INSERT INTO `oma_user` VALUES ('21', 'test13', 'c2ae0b681cb3b68ad4a14a83a43f6d37', '7895', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128478', '0');
INSERT INTO `oma_user` VALUES ('22', 'test14', '92e7b26d1fddaeedf47c4a16ad87183a', '6287', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128480', '0');
INSERT INTO `oma_user` VALUES ('23', 'test15', '6d542362a6af8d7f6d191ce61c6ee788', '8685', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128483', '0');
INSERT INTO `oma_user` VALUES ('24', 'test16', '19737645f85afc0cc0e26d8b31614da1', '9585', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '1', '0.00', '0.0000', '0', '', '0', '1513128485', '0');
INSERT INTO `oma_user` VALUES ('25', 'test17', '1f06fda2429c7c0fc52e2db73ee91827', '6449', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128487', '0');
INSERT INTO `oma_user` VALUES ('26', 'test18', 'cd0913ade2b487bf91d141dc717fd2ac', '1977', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128489', '0');
INSERT INTO `oma_user` VALUES ('27', 'test19', '6cd7c4e658cc45912fad29b83e842ca9', '7111', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128491', '0');
INSERT INTO `oma_user` VALUES ('28', 'test20', 'a85256695a93d89f7a5fb3d67977f265', '1322', '12345678', '12345678', '12345678', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513128494', '0');
INSERT INTO `oma_user` VALUES ('29', 'ying2', 'db373acaf12b09a7cfcbfdf67091b516', '8812', '18768041111', '1@qqq.com', '18768041111', '', '2', '1', '2', '123123', '676767', '0', '0.00', '0.0000', '1513252965', '127.0.0.1', '0', '1513145863', '1513252936');
INSERT INTO `oma_user` VALUES ('30', 'lidc', '9dd48e9109ba33b8b771a929b90eed9e', '5732', '13121231', '1315@qq.com', '123564', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513155090', '0');
INSERT INTO `oma_user` VALUES ('31', 'lidc445', '6df829637ade96e42eb518947ccfbedc', '8675', '123231', '132153@qq.com', '12313', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513155304', '1513750156');
INSERT INTO `oma_user` VALUES ('32', 'zb', '471c4a1bfbe2d14ed8b21389a53276b0', '2246', '15158117079', '976481619@qq.com', '976481619', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '1513682567', '127.0.0.1', '0', '1513682418', '1513682503');
INSERT INTO `oma_user` VALUES ('35', 'ying3', '584146f1fe665e10c3e64d50a9e62171', '8604', '123456789', '123456789', '132456', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513683395', '0');
INSERT INTO `oma_user` VALUES ('36', 'ying34', 'ac19530db8acc6d38abf9f5dbf5ef670', '8142', '123456', '789', '45656', '', '0', '0', '0', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513683510', '0');
INSERT INTO `oma_user` VALUES ('37', 'wxhzjj114', 'f5471da5bdc7cfbe05728331d0792bd5', '1255', '1111', '222', '2222', '', '1', '0', '1111', '111', '111', '0', '0.00', '0.0000', '1514943658', '192.168.1.193', '0', '1513746643', '1514528887');
INSERT INTO `oma_user` VALUES ('38', 'hhd', 'a047622774eb2b9bc206041d357be43f', '8266', '18749679097', '222222@qq.com', '', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513747318', '0');
INSERT INTO `oma_user` VALUES ('39', '11', '5c48c8325c0b93941c9f36b466f9ce6d', '3719', '111111', '', '', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '1514871537', '192.168.1.193', '0', '1513747711', '0');
INSERT INTO `oma_user` VALUES ('40', '呜呜', '31032667aebd7067a9615f2b990740fb', '1757', '111133', '', '', '', '0', '0', '', '', '', '1', '0.00', '0.0000', '0', '', '0', '1513748004', '1513748529');
INSERT INTO `oma_user` VALUES ('41', '广告', '4abad92d04ed18fe87ef985991db28f8', '9178', '11', '', '', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513748365', '0');
INSERT INTO `oma_user` VALUES ('42', 'wxh', '7e8a02d09ce5a7f65d8ee8a2565ad23b', '7675', '3333', '222', '', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513750155', '1513753524');
INSERT INTO `oma_user` VALUES ('43', 'ying6', '95004bc1eed548fa82bed9cfc88b1a38', '3135', '12312312321', '123', '123', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '0', '', '0', '1513750181', '1513750193');
INSERT INTO `oma_user` VALUES ('44', 'qtcs', '640377171267338bfd6a2cb32450034f', '2073', '', '', '', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '1513752358', '192.168.1.150', '0', '1513752147', '0');
INSERT INTO `oma_user` VALUES ('45', 'wxhzjj110', '457e0d6c2134ea7e4b2a4dd78c81a3e8', '6783', '11122', 'sss', 'qqqqq', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '0', '', '0', '1514529291', '0');
INSERT INTO `oma_user` VALUES ('48', 'admin', 'e3457785a8c95cfb1cee33ac4876212b', '8611', '9999999', '', '', '', '0', '0', '', '', '', '0', '0.00', '0.0000', '0', '', '0', '1515124054', '0');
INSERT INTO `oma_user` VALUES ('49', 'test_01', 'bdfee5493a3adcbe5ddab697d25a0372', '9153', '18787878787', '123123123', '12344455r1', '453104512', '0', '0', '', '', '', '0', '0.00', '0.0000', '0', '', '0', '1515130483', '1515133009');

-- ----------------------------
-- Table structure for oma_user_contact
-- ----------------------------
DROP TABLE IF EXISTS `oma_user_contact`;
CREATE TABLE `oma_user_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `contact` varchar(50) NOT NULL COMMENT '联系人',
  `area` varchar(50) NOT NULL COMMENT '地址',
  `post_code` varchar(50) NOT NULL COMMENT '邮编',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `mobile` varchar(50) NOT NULL COMMENT '手机号码',
  `qq` varchar(50) NOT NULL COMMENT 'qq号码',
  `open_province` varchar(50) NOT NULL COMMENT '开户省',
  `open_city` varchar(50) NOT NULL COMMENT '开户市',
  `open_area` varchar(50) NOT NULL COMMENT '开户区',
  `branch_bank` varchar(50) NOT NULL COMMENT '支行',
  `bank_name` varchar(50) NOT NULL COMMENT '银行名称',
  `bank_account` varchar(50) NOT NULL COMMENT '银行帐号',
  `open_people` varchar(50) NOT NULL COMMENT '开户人',
  `id_card` varchar(50) NOT NULL COMMENT '身份证号码',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oma_user_contact
-- ----------------------------
