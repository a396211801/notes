/*
Navicat MySQL Data Transfer

Source Server         : qy_all
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : qy_all

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-09-08 15:41:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_agency_level`
-- ----------------------------
DROP TABLE IF EXISTS `tp_agency_level`;
CREATE TABLE `tp_agency_level` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `power` int(10) NOT NULL,
  `desc` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_agency_level
-- ----------------------------
INSERT INTO `tp_agency_level` VALUES ('1', '超级管理员', '1', '3', '这是超级管理员');
INSERT INTO `tp_agency_level` VALUES ('2', '高级管理', '1', '0', '这是高级管理');
INSERT INTO `tp_agency_level` VALUES ('3', '低级代理', '1', '1', '这是低级代理');
INSERT INTO `tp_agency_level` VALUES ('9', '中级代理', '0', '0', '这是中级代理');

-- ----------------------------
-- Table structure for `tp_agency_list`
-- ----------------------------
DROP TABLE IF EXISTS `tp_agency_list`;
CREATE TABLE `tp_agency_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `password` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `desc` varchar(128) NOT NULL,
  `last_ip` varchar(20) NOT NULL,
  `last_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_agency_list
-- ----------------------------
INSERT INTO `tp_agency_list` VALUES ('1', 'admin', '1', '', '1', 'asdasdasd', '', '0');
INSERT INTO `tp_agency_list` VALUES ('2', 'ceshi55', '9', '123', '1', 'dsdadvvv', '', '0');
INSERT INTO `tp_agency_list` VALUES ('3', 'admin123', '3', '', '0', 'fsdfsdf', '', '0');
INSERT INTO `tp_agency_list` VALUES ('4', 'sky', '9', '123456', '1', '这是高级管理', '', '0');

-- ----------------------------
-- Table structure for `tp_announce_news`
-- ----------------------------
DROP TABLE IF EXISTS `tp_announce_news`;
CREATE TABLE `tp_announce_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `touser` varchar(300) DEFAULT NULL,
  `todepart` varchar(300) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` longtext,
  `time` varchar(16) DEFAULT NULL,
  `pic` varchar(300) DEFAULT 'http://ico.ooopic.com/ajax/iconpng/?id=61532.png',
  `alldepart` longtext,
  `department` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_announce_news
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_app_class`
-- ----------------------------
DROP TABLE IF EXISTS `tp_app_class`;
CREATE TABLE `tp_app_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(16) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=596 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_app_class
-- ----------------------------
INSERT INTO `tp_app_class` VALUES ('1', '', '1', '/index.php?m=Address&a=wap_list&id=0', 'Address', '通讯录', null);
INSERT INTO `tp_app_class` VALUES ('2', '', '1', '/index.php?m=Attendance&a=wap_out', 'Attendance', '签退', null);
INSERT INTO `tp_app_class` VALUES ('5', null, '1', '/index.php?m=Attendance&a=wap_index', 'Attendance', '签到', null);
INSERT INTO `tp_app_class` VALUES ('6', null, '1', '/index.php?m=Attendance&a=wap_records', 'Attendance', '查询记录', null);
INSERT INTO `tp_app_class` VALUES ('8', null, '1', '/index.php?m=Workflow&a=wap_act_list', 'Workflow', '待审批', null);
INSERT INTO `tp_app_class` VALUES ('9', null, '1', '/index.php?m=Workflow&a=wap_act_my', 'Workflow', '我的审批', null);
INSERT INTO `tp_app_class` VALUES ('10', null, '1', '/index.php?m=Workflow&a=wap_index', 'Workflow', '发起审批', null);
INSERT INTO `tp_app_class` VALUES ('11', null, '1', '/index.php?m=Email&a=wap_index', 'Email', '写邮件', null);
INSERT INTO `tp_app_class` VALUES ('12', null, '1', '/index.php?m=Vote&a=wap_vote_list', 'Vote', '投票列表', null);
INSERT INTO `tp_app_class` VALUES ('13', null, '1', '/index.php?m=Applyflow&a=wap_index', 'Applyflow', '审批记录', null);
INSERT INTO `tp_app_class` VALUES ('14', null, '1', '/index.php?m=Applyflow&a=wap_my_apply', 'Applyflow', '我的报销', null);
INSERT INTO `tp_app_class` VALUES ('15', null, '1', '/index.php?m=Applyflow&a=wap_post', 'Applyflow', '申请报销', null);
INSERT INTO `tp_app_class` VALUES ('16', null, '1', '/index.php?m=Task&a=wap_add_task', 'Task', '添加任务', null);
INSERT INTO `tp_app_class` VALUES ('17', null, '1', '/index.php?m=Task&a=wap_index_one', 'Task', '任务管理', null);
INSERT INTO `tp_app_class` VALUES ('21', null, '1', '/index.php?m=Leave&a=wap_index', 'Leave', '审批记录', null);
INSERT INTO `tp_app_class` VALUES ('22', null, '1', '/index.php?m=Leave&a=wap_record', 'Leave', '我的假单', '560');
INSERT INTO `tp_app_class` VALUES ('23', null, '1', '/index.php?m=Leave&a=wap_holiday', 'Leave', '请假', null);
INSERT INTO `tp_app_class` VALUES ('24', null, '1', '/index.php?m=Card&a=wap_my_card', 'Card', '名片夹', null);
INSERT INTO `tp_app_class` VALUES ('25', null, '1', '/index.php?m=Card&a=wap_card_set', 'Card', '我的名片', null);
INSERT INTO `tp_app_class` VALUES ('26', null, '1', '/index.php?m=Meet&a=wap_index', 'Meet', '会议室预定', null);
INSERT INTO `tp_app_class` VALUES ('27', null, '1', '/index.php?m=Day&a=wap_my_day', 'Day', '我的汇报', null);
INSERT INTO `tp_app_class` VALUES ('29', null, '1', '/index.php?m=Announce&a=wap_index', 'Announce', '通知公告', null);
INSERT INTO `tp_app_class` VALUES ('30', null, '1', '/index.php?m=Home&a=wap_index', 'Home', '企业官网', null);
INSERT INTO `tp_app_class` VALUES ('31', null, '1', '/index.php?m=Knowledge&a=wap_index', 'Knowledge', '知识库', null);
INSERT INTO `tp_app_class` VALUES ('32', null, '1', '/index.php?m=Knowledge&a=wap_my', 'Knowledge', '我的收藏', null);
INSERT INTO `tp_app_class` VALUES ('33', null, '1', '/index.php?m=Legwork&a=wap_index', 'Legwork', '我的外勤', null);
INSERT INTO `tp_app_class` VALUES ('34', null, '1', '/index.php?m=Legwork&a=wap_record', 'Legwork', '签到记录', null);
INSERT INTO `tp_app_class` VALUES ('35', null, '1', '/index.php?m=Legwork&a=wap_add', 'Legwork', '添加外勤', null);
INSERT INTO `tp_app_class` VALUES ('37', null, '1', '/index.php?m=Quit&a=wap_wait_check', 'Quit', '待审核', null);
INSERT INTO `tp_app_class` VALUES ('38', null, '1', '/index.php?m=Quit&a=wap_list', 'Quit', '我的离职', null);
INSERT INTO `tp_app_class` VALUES ('39', null, '1', '/index.php?m=Quit&a=wap_holiday', 'Quit', '申请离职', null);
INSERT INTO `tp_app_class` VALUES ('40', null, '1', '/index.php?m=Day&a=wap_add_day', 'Day', '新增汇报', null);
INSERT INTO `tp_app_class` VALUES ('42', null, '1', '/index.php?m=Secretary&a=wap_index', 'Secretary', '意见建议', null);
INSERT INTO `tp_app_class` VALUES ('43', null, '1', '/index.php?m=Company_salon&a=wap_activity_attend', 'Company_salon', '我参与的', null);
INSERT INTO `tp_app_class` VALUES ('46', null, '1', '/index.php?m=Micro_class&a=wap_my_lesson', 'Micro_class', '我的课程', null);
INSERT INTO `tp_app_class` VALUES ('48', null, '1', '/index.php?m=Micro_class&a=wap_latest_lesson', 'Micro_class', '最新课程', null);
INSERT INTO `tp_app_class` VALUES ('49', null, '1', '/index.php?m=Secretary&a=wap_tel', 'Secretary', '联系我们', null);
INSERT INTO `tp_app_class` VALUES ('50', null, '1', '/index.php?m=Company_salon&a=wap_activity', 'Secretary', '最新活动', null);
INSERT INTO `tp_app_class` VALUES ('51', null, '1', '/index.php?m=Company_salon&a=wap_latest_activity', 'Company_salon', '最新活动', null);
INSERT INTO `tp_app_class` VALUES ('52', null, '1', '/index.php?m=Company_salon&a=wap_activity_history', 'Company_salon', '往期回顾', null);
INSERT INTO `tp_app_class` VALUES ('53', null, '1', '/index.php?m=Micro_class&a=wap_history_lesson', 'Micro_class', '往期回顾', null);
INSERT INTO `tp_app_class` VALUES ('534', null, '1', '/index.php?m=Test&a=wap_index', 'Test', '在线考试', null);
INSERT INTO `tp_app_class` VALUES ('535', null, '1', '/index.php?m=Research&a=wap_index', 'Research', '在线调研', null);
INSERT INTO `tp_app_class` VALUES ('536', null, '1', '/index.php?m=Card&a=wap_index', 'Card', '通讯录', null);
INSERT INTO `tp_app_class` VALUES ('537', null, '1', '/index.php?m=Email&a=wap_inbox', 'Email', '收件箱', null);
INSERT INTO `tp_app_class` VALUES ('538', null, '1', '/index.php?m=Borrow_books&a=wap_index', 'Borrow_books', '借书', null);
INSERT INTO `tp_app_class` VALUES ('539', null, '1', '/index.php?m=Group_chat&a=wap_add_chat', 'Group_chat', '发起群聊', null);
INSERT INTO `tp_app_class` VALUES ('540', null, '1', '/index.php?m=Group_chat&a=wap_my_chat', 'Group_chat', '我发起的', null);
INSERT INTO `tp_app_class` VALUES ('541', null, '1', '/index.php?m=Group_chat&a=wap_my_attend', 'Group_chat', '我参与的', null);
INSERT INTO `tp_app_class` VALUES ('542', null, '1', '/index.php?m=Offical_website&a=wap_index', 'Offical_website', '首页', null);
INSERT INTO `tp_app_class` VALUES ('543', null, '1', '/index.php?m=Work&a=wap_paper_list', 'Work', '在线答题', null);
INSERT INTO `tp_app_class` VALUES ('544', null, '1', '/index.php?m=Work&a=wap_index', 'Work', '我的发布', null);
INSERT INTO `tp_app_class` VALUES ('547', null, '1', '/index.php?m=Xinwen&a=wap_add_task', 'Xinwen', '发布公告', null);
INSERT INTO `tp_app_class` VALUES ('548', null, '1', '/index.php?m=Xinwen&a=wap_my_news', 'Xinwen', '我的公告', null);
INSERT INTO `tp_app_class` VALUES ('549', null, null, '/index.php?m=Secretary&a=wap_add_advice', 'Secretary', '添加意见', '42');
INSERT INTO `tp_app_class` VALUES ('550', null, null, '/index.php?m=Secretary&a=wap_my_advice', 'Secretary', '我的意见', '42');
INSERT INTO `tp_app_class` VALUES ('553', null, null, '/index.php?m=Work&a=wap_add_paper', 'Work', '发布作业', '544');
INSERT INTO `tp_app_class` VALUES ('554', null, null, '/index.php?m=Work&a=wap_tongji_list', 'Work', '统计列表', '544');
INSERT INTO `tp_app_class` VALUES ('557', null, '1', '/index.php?m=Day&a=wap_wait_check', 'Day', '待我审批', '559');
INSERT INTO `tp_app_class` VALUES ('558', null, '1', '/index.php?m=Day&a=wap_checked', 'Day', '我已审批', '559');
INSERT INTO `tp_app_class` VALUES ('559', null, '1', '/index.php?m=Day&a=wap_index', 'Day', '审批记录', null);
INSERT INTO `tp_app_class` VALUES ('560', null, '1', '/index.php?m=Leave&a=wap_index', 'Leave', '假单', null);
INSERT INTO `tp_app_class` VALUES ('561', null, '1', '/index.php?m=Leave&a=wap_helped', 'Leave', '我已交接', '560');
INSERT INTO `tp_app_class` VALUES ('562', null, '1', '/index.php?m=Leave&a=wap_wait_help', 'Leave', '待我交接', '560');
INSERT INTO `tp_app_class` VALUES ('563', null, '1', '/index.php?m=Leave&a=wap_checked', 'Leave', '我已审批', '21');
INSERT INTO `tp_app_class` VALUES ('564', null, '1', '/index.php?m=Leave&a=wap_wait_check', 'Leave', '待我审批', '21');
INSERT INTO `tp_app_class` VALUES ('565', null, '1', '/index.php?m=Meet&a=wap_my_order', 'Meet', '我的预定', '26');
INSERT INTO `tp_app_class` VALUES ('566', null, '1', '/index.php?m=Meet&a=wap_index', 'Meet', '我要预定', '26');
INSERT INTO `tp_app_class` VALUES ('567', null, '1', '/index.php?m=Meet&a=wap_index', 'Meet', '我的审核', null);
INSERT INTO `tp_app_class` VALUES ('568', null, '1', '/index.php?m=Meet&a=wap_wait_check', 'Meet', '待我审核', '567');
INSERT INTO `tp_app_class` VALUES ('569', null, '1', '/index.php?m=Meet&a=wap_checked', 'Meet', '我已审核', '567');
INSERT INTO `tp_app_class` VALUES ('571', null, '1', '/index.php?m=Vote&a=wap_vote_set', 'Vote', '发起投票', null);
INSERT INTO `tp_app_class` VALUES ('572', null, '1', '/index.php?m=Class_table&a=wap_my_table', 'Class_table', '我的课表', null);
INSERT INTO `tp_app_class` VALUES ('573', null, '1', '/index.php?m=Class_table&a=wap_table_manage', 'Class_table', '课表管理', null);
INSERT INTO `tp_app_class` VALUES ('574', null, '1', '/index.php?m=Student_tongji&a=wap_class_attendance', 'Student_tongji', '在校情况', null);
INSERT INTO `tp_app_class` VALUES ('576', null, '1', '/index.php?m=Test_view&a=wap_test_list', 'Test_view', '考试倒计时', null);
INSERT INTO `tp_app_class` VALUES ('577', null, '1', '/index.php?m=Test_view&a=wap_score_list', 'Test_view', '成绩列表', null);
INSERT INTO `tp_app_class` VALUES ('578', null, '1', '/index.php?m=Test_view&a=wap_index', 'Test_view', '图表分析', null);
INSERT INTO `tp_app_class` VALUES ('579', null, '1', '/index.php?m=Test_view&a=wap_stu_pic', 'Test_view', '统考详情', '578');
INSERT INTO `tp_app_class` VALUES ('580', null, '1', '/index.php?m=Test_view&a=wap_class_pic', 'Test_view', '班级情况', '578');
INSERT INTO `tp_app_class` VALUES ('581', null, '1', '/index.php?m=School_attendance&a=wap_attendance', 'School_attendance', '在校考勤', null);
INSERT INTO `tp_app_class` VALUES ('582', null, '1', '/index.php?m=Test_view&a=wap_stu_pic', 'Student_tongji', '统考详情', null);
INSERT INTO `tp_app_class` VALUES ('583', null, '1', '/index.php?m=Homework_t&a=wap_work_list', 'Homework_t', '作业列表', null);
INSERT INTO `tp_app_class` VALUES ('584', null, '1', '/index.php?m=Organization&a=wap_index', 'Organization', '有关于我', null);
INSERT INTO `tp_app_class` VALUES ('585', null, '1', '/index.php?m=Organization&a=wap_my_activity', 'Organization', '我的活动', '584');
INSERT INTO `tp_app_class` VALUES ('586', null, '1', '/index.php?m=Organization&a=wap_wait_check', 'Organization', '我的审核', '584');
INSERT INTO `tp_app_class` VALUES ('587', null, '1', '/index.php?m=Organization&a=wap_add_activity', 'Organization', '发起活动', null);
INSERT INTO `tp_app_class` VALUES ('588', null, '1', '/index.php?m=Organization&a=wap_index', 'Organization', '活动列表', null);
INSERT INTO `tp_app_class` VALUES ('589', null, '1', '/index.php?m=Organization&a=wap_latest_activity', 'Organization', '最新活动', '588');
INSERT INTO `tp_app_class` VALUES ('590', null, '1', '/index.php?m=Organization&a=wap_history_activity', 'Organization', '历史活动', '588');
INSERT INTO `tp_app_class` VALUES ('591', null, '1', '/index.php?m=Photo_co&a=wap_classify', 'Photo_co', '企业相册', null);
INSERT INTO `tp_app_class` VALUES ('592', null, '1', '/index.php?m=Annual_meet&a=wap_index', 'Annual_meet', '年会', null);
INSERT INTO `tp_app_class` VALUES ('593', null, '1', '/index.php?m=Applyflow&a=wap_checked', 'Applyflow', '我已审批', '13');
INSERT INTO `tp_app_class` VALUES ('594', null, '1', '/index.php?m=Applyflow&a=wap_wait_check', 'Applyflow', '待我审批', '13');
INSERT INTO `tp_app_class` VALUES ('595', null, '1', '/index.php?m=Email&a=wap_send', 'Email', ' 发件箱', null);

-- ----------------------------
-- Table structure for `tp_department`
-- ----------------------------
DROP TABLE IF EXISTS `tp_department`;
CREATE TABLE `tp_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8 NOT NULL COMMENT '部门名称',
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `lvl` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `pos` int(10) unsigned NOT NULL,
  `wxpid` int(11) DEFAULT '0',
  `wxid` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `leaderid` int(11) DEFAULT NULL,
  `leaderuserid` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `leadername` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2933 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_department
-- ----------------------------
INSERT INTO `tp_department` VALUES ('2926', '三年级二班', '16', '17', '3', '2924', '0', '38', '44', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2925', '三年级一班', '18', '19', '3', '2924', '1', '38', '43', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2924', '三年级', '15', '20', '2', '2917', '0', '15', '38', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2923', '二年级二班', '22', '23', '3', '2921', '0', '37', '42', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2922', '二年级一班', '24', '25', '3', '2921', '1', '37', '41', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2921', '二年级', '21', '26', '2', '2917', '1', '15', '37', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2920', '一年级二班', '28', '29', '3', '2918', '0', '36', '40', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2918', '一年级', '27', '32', '2', '2917', '2', '15', '36', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2919', '一年级一班', '30', '31', '3', '2918', '1', '36', '39', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2916', '团支部', '35', '36', '2', '2914', '0', '14', '35', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2917', '年级', '14', '33', '1', '2893', '0', '1', '15', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2915', '学生会', '37', '38', '2', '2914', '1', '14', '34', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2914', '团委', '34', '39', '1', '2893', '1', '1', '14', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2913', '安全应急组', '41', '42', '2', '2910', '0', '13', '33', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2912', '心理室', '43', '44', '2', '2910', '1', '13', '32', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2910', '德育处', '40', '47', '1', '2893', '2', '1', '13', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2911', '级部', '45', '46', '2', '2910', '2', '13', '31', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2909', '人事办公室', '48', '49', '1', '2893', '3', '1', '12', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2908', '膳食组', '51', '52', '2', '2902', '0', '11', '30', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2907', '医务室', '53', '54', '2', '2902', '1', '11', '29', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2906', '总务室', '55', '56', '2', '2902', '2', '11', '28', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2905', '财务室', '57', '58', '2', '2902', '3', '11', '27', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2904', '校车室', '59', '60', '2', '2902', '4', '11', '26', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2903', '印刷室', '61', '62', '2', '2902', '5', '11', '25', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2902', '总务处', '50', '63', '1', '2893', '4', '1', '11', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2900', '图书馆', '67', '68', '2', '2895', '1', '10', '23', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2901', '就业中心', '65', '66', '2', '2895', '0', '10', '24', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2898', '实训组', '71', '72', '2', '2895', '3', '10', '21', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2899', '教材组', '69', '70', '2', '2895', '2', '10', '22', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2897', '教研组', '73', '74', '2', '2895', '4', '10', '20', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2896', '科组', '75', '76', '2', '2895', '5', '10', '19', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2895', '教务处', '64', '77', '1', '2893', '5', '1', '10', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2894', '校长', '78', '79', '1', '2893', '6', '1', '9', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2893', '东裕小学', '0', '80', '0', '0', '0', '0', '1', '236', null, null, null);
INSERT INTO `tp_department` VALUES ('2927', '易跨购', '0', '14', '0', '0', '0', '0', '1', '246', null, null, null);
INSERT INTO `tp_department` VALUES ('2928', '新部门', '12', '13', '1', '2927', '4', '1', '2', '246', null, null, null);
INSERT INTO `tp_department` VALUES ('2929', '一年级一班', '10', '11', '1', '2927', '3', '1', '3', '246', null, null, null);
INSERT INTO `tp_department` VALUES ('2930', '老师', '8', '9', '1', '2927', '2', '1', '4', '246', null, null, null);
INSERT INTO `tp_department` VALUES ('2931', '管理层', '6', '7', '1', '2927', '1', '1', '5', '246', null, null, null);
INSERT INTO `tp_department` VALUES ('2932', '家长', '4', '5', '1', '2927', '0', '1', '6', '246', null, null, null);

-- ----------------------------
-- Table structure for `tp_group`
-- ----------------------------
DROP TABLE IF EXISTS `tp_group`;
CREATE TABLE `tp_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `pwd` varchar(60) DEFAULT NULL,
  `group` varchar(60) DEFAULT NULL,
  `position` varchar(300) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_group
-- ----------------------------
INSERT INTO `tp_group` VALUES ('44', '人事处主任', '236', 'e10adc3949ba59abbe56e057f20f883e', '人事处主任', '管理', null);
INSERT INTO `tp_group` VALUES ('42', '校长', '236', 'e10adc3949ba59abbe56e057f20f883e', '校长', '管理', null);
INSERT INTO `tp_group` VALUES ('43', '教务处主任', '236', 'e10adc3949ba59abbe56e057f20f883e', '教务处主任', '管理', null);
INSERT INTO `tp_group` VALUES ('45', '教研室主任', '236', 'e10adc3949ba59abbe56e057f20f883e', '教研室主任', '管理', null);
INSERT INTO `tp_group` VALUES ('46', '文娱部长', '236', 'e10adc3949ba59abbe56e057f20f883e', '文娱部长', '负责活动通知', null);

-- ----------------------------
-- Table structure for `tp_group_list`
-- ----------------------------
DROP TABLE IF EXISTS `tp_group_list`;
CREATE TABLE `tp_group_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(20) DEFAULT NULL,
  `appgroup` varchar(300) DEFAULT NULL,
  `setuserrule` int(1) DEFAULT '0',
  `setorgrule` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_group_list
-- ----------------------------
INSERT INTO `tp_group_list` VALUES ('35', '35', null, '0', '0');
INSERT INTO `tp_group_list` VALUES ('36', '36', null, '0', '1');
INSERT INTO `tp_group_list` VALUES ('37', '44', null, '0', '0');

-- ----------------------------
-- Table structure for `tp_indent`
-- ----------------------------
DROP TABLE IF EXISTS `tp_indent`;
CREATE TABLE `tp_indent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `order` varchar(80) NOT NULL,
  `price` float NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `gid` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` int(11) NOT NULL,
  `widtrade_no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_indent
-- ----------------------------
INSERT INTO `tp_indent` VALUES ('8', '充值vip会员1个月', '25', 'weiyi', '_1421839001', '100', '0', '2', '2', '1421839001', '0', '0');
INSERT INTO `tp_indent` VALUES ('9', '充值vip会员1个月', '25', 'weiyi', '_1421894983', '100', '0', '0', '2', '1421894983', '0', '0');
INSERT INTO `tp_indent` VALUES ('10', '充值vip会员1个月', '25', 'weiyi', '_1421896321', '100', '0', '0', '2', '1421896321', '0', '0');
INSERT INTO `tp_indent` VALUES ('11', '充值vip会员2个月', '25', 'weiyi', '_1421901832', '200', '0', '0', '2', '1421901832', '0', '0');

-- ----------------------------
-- Table structure for `tp_location`
-- ----------------------------
DROP TABLE IF EXISTS `tp_location`;
CREATE TABLE `tp_location` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `provinceId` varchar(20) DEFAULT NULL,
  `cityId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2856 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_location
-- ----------------------------
INSERT INTO `tp_location` VALUES ('1', '北京市', '北京市', '东城区', '02', '010');
INSERT INTO `tp_location` VALUES ('2', '北京市', '北京市', '西城区', '02', '010');
INSERT INTO `tp_location` VALUES ('3', '北京市', '北京市', '崇文区', '02', '010');
INSERT INTO `tp_location` VALUES ('4', '北京市', '北京市', '宣武区', '02', '010');
INSERT INTO `tp_location` VALUES ('5', '北京市', '北京市', '朝阳区', '02', '010');
INSERT INTO `tp_location` VALUES ('6', '北京市', '北京市', '丰台区', '02', '010');
INSERT INTO `tp_location` VALUES ('7', '北京市', '北京市', '石景山区', '02', '010');
INSERT INTO `tp_location` VALUES ('8', '北京市', '北京市', '海淀区', '02', '010');
INSERT INTO `tp_location` VALUES ('9', '北京市', '北京市', '门头沟区', '02', '010');
INSERT INTO `tp_location` VALUES ('10', '北京市', '北京市', '房山区', '02', '010');
INSERT INTO `tp_location` VALUES ('11', '北京市', '北京市', '通州区', '02', '010');
INSERT INTO `tp_location` VALUES ('12', '北京市', '北京市', '顺义区', '02', '010');
INSERT INTO `tp_location` VALUES ('13', '北京市', '北京市', '昌平区', '02', '010');
INSERT INTO `tp_location` VALUES ('14', '北京市', '北京市', '大兴区', '02', '010');
INSERT INTO `tp_location` VALUES ('15', '北京市', '北京市', '平谷区', '02', '010');
INSERT INTO `tp_location` VALUES ('16', '北京市', '北京市', '怀柔区', '02', '010');
INSERT INTO `tp_location` VALUES ('17', '北京市', '北京市', '密云县', '02', '010');
INSERT INTO `tp_location` VALUES ('18', '北京市', '北京市', '延庆县', '02', '010');
INSERT INTO `tp_location` VALUES ('19', '天津市', '天津市', '和平区', '26', '022');
INSERT INTO `tp_location` VALUES ('20', '天津市', '天津市', '河东区', '26', '022');
INSERT INTO `tp_location` VALUES ('21', '天津市', '天津市', '河西区', '26', '022');
INSERT INTO `tp_location` VALUES ('22', '天津市', '天津市', '南开区', '26', '022');
INSERT INTO `tp_location` VALUES ('23', '天津市', '天津市', '河北区', '26', '022');
INSERT INTO `tp_location` VALUES ('24', '天津市', '天津市', '红桥区', '26', '022');
INSERT INTO `tp_location` VALUES ('25', '天津市', '天津市', '塘沽区', '26', '022');
INSERT INTO `tp_location` VALUES ('26', '天津市', '天津市', '汉沽区', '26', '022');
INSERT INTO `tp_location` VALUES ('27', '天津市', '天津市', '大港区', '26', '022');
INSERT INTO `tp_location` VALUES ('28', '天津市', '天津市', '东丽区', '26', '022');
INSERT INTO `tp_location` VALUES ('29', '天津市', '天津市', '西青区', '26', '022');
INSERT INTO `tp_location` VALUES ('30', '天津市', '天津市', '津南区', '26', '022');
INSERT INTO `tp_location` VALUES ('31', '天津市', '天津市', '北辰区', '26', '022');
INSERT INTO `tp_location` VALUES ('32', '天津市', '天津市', '武清区', '26', '022');
INSERT INTO `tp_location` VALUES ('33', '天津市', '天津市', '宝坻区', '26', '022');
INSERT INTO `tp_location` VALUES ('34', '天津市', '天津市', '宁河县', '26', '022');
INSERT INTO `tp_location` VALUES ('35', '天津市', '天津市', '静海县', '26', '022');
INSERT INTO `tp_location` VALUES ('36', '天津市', '天津市', '蓟县', '26', '022');
INSERT INTO `tp_location` VALUES ('37', '河北省', '石家庄市', '长安区', '09', '0311');
INSERT INTO `tp_location` VALUES ('38', '河北省', '石家庄市', '桥东区', '09', '0311');
INSERT INTO `tp_location` VALUES ('39', '河北省', '石家庄市', '桥西区', '09', '0311');
INSERT INTO `tp_location` VALUES ('40', '河北省', '石家庄市', '新华区', '09', '0311');
INSERT INTO `tp_location` VALUES ('41', '河北省', '石家庄市', '井陉矿区', '09', '0311');
INSERT INTO `tp_location` VALUES ('42', '河北省', '石家庄市', '井陉县', '09', '0311');
INSERT INTO `tp_location` VALUES ('43', '河北省', '石家庄市', '正定县', '09', '0311');
INSERT INTO `tp_location` VALUES ('44', '河北省', '石家庄市', '栾城县', '09', '0311');
INSERT INTO `tp_location` VALUES ('45', '河北省', '石家庄市', '行唐县', '09', '0311');
INSERT INTO `tp_location` VALUES ('46', '河北省', '石家庄市', '灵寿县', '09', '0311');
INSERT INTO `tp_location` VALUES ('47', '河北省', '石家庄市', '高邑县', '09', '0311');
INSERT INTO `tp_location` VALUES ('48', '河北省', '石家庄市', '深泽县', '09', '0311');
INSERT INTO `tp_location` VALUES ('49', '河北省', '石家庄市', '赞皇县', '09', '0311');
INSERT INTO `tp_location` VALUES ('50', '河北省', '石家庄市', '无极县', '09', '0311');
INSERT INTO `tp_location` VALUES ('51', '河北省', '石家庄市', '平山县', '09', '0311');
INSERT INTO `tp_location` VALUES ('52', '河北省', '石家庄市', '元氏县', '09', '0311');
INSERT INTO `tp_location` VALUES ('53', '河北省', '石家庄市', '赵县', '09', '0311');
INSERT INTO `tp_location` VALUES ('54', '河北省', '石家庄市', '辛集市', '09', '0311');
INSERT INTO `tp_location` VALUES ('55', '河北省', '石家庄市', '藁城市', '09', '0311');
INSERT INTO `tp_location` VALUES ('56', '河北省', '石家庄市', '晋州市', '09', '0311');
INSERT INTO `tp_location` VALUES ('57', '河北省', '石家庄市', '新乐市', '09', '0311');
INSERT INTO `tp_location` VALUES ('58', '河北省', '石家庄市', '鹿泉市', '09', '0311');
INSERT INTO `tp_location` VALUES ('59', '河北省', '唐山市', '路南区', '09', '0315');
INSERT INTO `tp_location` VALUES ('60', '河北省', '唐山市', '路北区', '09', '0315');
INSERT INTO `tp_location` VALUES ('61', '河北省', '唐山市', '古冶区', '09', '0315');
INSERT INTO `tp_location` VALUES ('62', '河北省', '唐山市', '开平区', '09', '0315');
INSERT INTO `tp_location` VALUES ('63', '河北省', '唐山市', '新区', '09', '0315');
INSERT INTO `tp_location` VALUES ('64', '河北省', '唐山市', '丰润区', '09', '0315');
INSERT INTO `tp_location` VALUES ('65', '河北省', '唐山市', '滦县', '09', '0315');
INSERT INTO `tp_location` VALUES ('66', '河北省', '唐山市', '滦南县', '09', '0315');
INSERT INTO `tp_location` VALUES ('67', '河北省', '唐山市', '乐亭县', '09', '0315');
INSERT INTO `tp_location` VALUES ('68', '河北省', '唐山市', '迁西县', '09', '0315');
INSERT INTO `tp_location` VALUES ('69', '河北省', '唐山市', '玉田县', '09', '0315');
INSERT INTO `tp_location` VALUES ('70', '河北省', '唐山市', '唐海县', '09', '0315');
INSERT INTO `tp_location` VALUES ('71', '河北省', '唐山市', '遵化市', '09', '0315');
INSERT INTO `tp_location` VALUES ('72', '河北省', '唐山市', '丰南区', '09', '0315');
INSERT INTO `tp_location` VALUES ('73', '河北省', '唐山市', '迁安市', '09', '0315');
INSERT INTO `tp_location` VALUES ('74', '河北省', '秦皇岛市', '海港区', '09', '0335');
INSERT INTO `tp_location` VALUES ('75', '河北省', '秦皇岛市', '山海关区', '09', '0335');
INSERT INTO `tp_location` VALUES ('76', '河北省', '秦皇岛市', '北戴河区', '09', '0335');
INSERT INTO `tp_location` VALUES ('77', '河北省', '秦皇岛市', '青龙满族自治县', '09', '0335');
INSERT INTO `tp_location` VALUES ('78', '河北省', '秦皇岛市', '昌黎县', '09', '0335');
INSERT INTO `tp_location` VALUES ('79', '河北省', '秦皇岛市', '抚宁县', '09', '0335');
INSERT INTO `tp_location` VALUES ('80', '河北省', '秦皇岛市', '卢龙县', '09', '0335');
INSERT INTO `tp_location` VALUES ('81', '河北省', '邯郸市', '邯山区', '09', '0310');
INSERT INTO `tp_location` VALUES ('82', '河北省', '邯郸市', '丛台区', '09', '0310');
INSERT INTO `tp_location` VALUES ('83', '河北省', '邯郸市', '复兴区', '09', '0310');
INSERT INTO `tp_location` VALUES ('84', '河北省', '邯郸市', '峰峰矿区', '09', '0310');
INSERT INTO `tp_location` VALUES ('85', '河北省', '邯郸市', '邯郸县', '09', '0310');
INSERT INTO `tp_location` VALUES ('86', '河北省', '邯郸市', '临漳县', '09', '0310');
INSERT INTO `tp_location` VALUES ('87', '河北省', '邯郸市', '成安县', '09', '0310');
INSERT INTO `tp_location` VALUES ('88', '河北省', '邯郸市', '大名县', '09', '0310');
INSERT INTO `tp_location` VALUES ('89', '河北省', '邯郸市', '涉县', '09', '0310');
INSERT INTO `tp_location` VALUES ('90', '河北省', '邯郸市', '磁县', '09', '0310');
INSERT INTO `tp_location` VALUES ('91', '河北省', '邯郸市', '肥乡县', '09', '0310');
INSERT INTO `tp_location` VALUES ('92', '河北省', '邯郸市', '永年县', '09', '0310');
INSERT INTO `tp_location` VALUES ('93', '河北省', '邯郸市', '邱县', '09', '0310');
INSERT INTO `tp_location` VALUES ('94', '河北省', '邯郸市', '鸡泽县', '09', '0310');
INSERT INTO `tp_location` VALUES ('95', '河北省', '邯郸市', '广平县', '09', '0310');
INSERT INTO `tp_location` VALUES ('96', '河北省', '邯郸市', '馆陶县', '09', '0310');
INSERT INTO `tp_location` VALUES ('97', '河北省', '邯郸市', '魏县', '09', '0310');
INSERT INTO `tp_location` VALUES ('98', '河北省', '邯郸市', '曲周县', '09', '0310');
INSERT INTO `tp_location` VALUES ('99', '河北省', '邯郸市', '武安市', '09', '0310');
INSERT INTO `tp_location` VALUES ('100', '河北省', '邢台市', '桥东区', '09', '0319');
INSERT INTO `tp_location` VALUES ('101', '河北省', '邢台市', '桥西区', '09', '0319');
INSERT INTO `tp_location` VALUES ('102', '河北省', '邢台市', '邢台县', '09', '0319');
INSERT INTO `tp_location` VALUES ('103', '河北省', '邢台市', '临城县', '09', '0319');
INSERT INTO `tp_location` VALUES ('104', '河北省', '邢台市', '内丘县', '09', '0319');
INSERT INTO `tp_location` VALUES ('105', '河北省', '邢台市', '柏乡县', '09', '0319');
INSERT INTO `tp_location` VALUES ('106', '河北省', '邢台市', '隆尧县', '09', '0319');
INSERT INTO `tp_location` VALUES ('107', '河北省', '邢台市', '任县', '09', '0319');
INSERT INTO `tp_location` VALUES ('108', '河北省', '邢台市', '南和县', '09', '0319');
INSERT INTO `tp_location` VALUES ('109', '河北省', '邢台市', '宁晋县', '09', '0319');
INSERT INTO `tp_location` VALUES ('110', '河北省', '邢台市', '巨鹿县', '09', '0319');
INSERT INTO `tp_location` VALUES ('111', '河北省', '邢台市', '新河县', '09', '0319');
INSERT INTO `tp_location` VALUES ('112', '河北省', '邢台市', '广宗县', '09', '0319');
INSERT INTO `tp_location` VALUES ('113', '河北省', '邢台市', '平乡县', '09', '0319');
INSERT INTO `tp_location` VALUES ('114', '河北省', '邢台市', '威县', '09', '0319');
INSERT INTO `tp_location` VALUES ('115', '河北省', '邢台市', '清河县', '09', '0319');
INSERT INTO `tp_location` VALUES ('116', '河北省', '邢台市', '临西县', '09', '0319');
INSERT INTO `tp_location` VALUES ('117', '河北省', '邢台市', '南宫市', '09', '0319');
INSERT INTO `tp_location` VALUES ('118', '河北省', '邢台市', '沙河市', '09', '0319');
INSERT INTO `tp_location` VALUES ('119', '河北省', '保定市', '新市区', '09', '0312');
INSERT INTO `tp_location` VALUES ('120', '河北省', '保定市', '北市区', '09', '0312');
INSERT INTO `tp_location` VALUES ('121', '河北省', '保定市', '南市区', '09', '0312');
INSERT INTO `tp_location` VALUES ('122', '河北省', '保定市', '满城县', '09', '0312');
INSERT INTO `tp_location` VALUES ('123', '河北省', '保定市', '清苑县', '09', '0312');
INSERT INTO `tp_location` VALUES ('124', '河北省', '保定市', '涞水县', '09', '0312');
INSERT INTO `tp_location` VALUES ('125', '河北省', '保定市', '阜平县', '09', '0312');
INSERT INTO `tp_location` VALUES ('126', '河北省', '保定市', '徐水县', '09', '0312');
INSERT INTO `tp_location` VALUES ('127', '河北省', '保定市', '定兴县', '09', '0312');
INSERT INTO `tp_location` VALUES ('128', '河北省', '保定市', '唐县', '09', '0312');
INSERT INTO `tp_location` VALUES ('129', '河北省', '保定市', '高阳县', '09', '0312');
INSERT INTO `tp_location` VALUES ('130', '河北省', '保定市', '容城县', '09', '0312');
INSERT INTO `tp_location` VALUES ('131', '河北省', '保定市', '涞源县', '09', '0312');
INSERT INTO `tp_location` VALUES ('132', '河北省', '保定市', '望都县', '09', '0312');
INSERT INTO `tp_location` VALUES ('133', '河北省', '保定市', '安新县', '09', '0312');
INSERT INTO `tp_location` VALUES ('134', '河北省', '保定市', '易县', '09', '0312');
INSERT INTO `tp_location` VALUES ('135', '河北省', '保定市', '曲阳县', '09', '0312');
INSERT INTO `tp_location` VALUES ('136', '河北省', '保定市', '蠡县', '09', '0312');
INSERT INTO `tp_location` VALUES ('137', '河北省', '保定市', '顺平县', '09', '0312');
INSERT INTO `tp_location` VALUES ('138', '河北省', '保定市', '博野县', '09', '0312');
INSERT INTO `tp_location` VALUES ('139', '河北省', '保定市', '雄县', '09', '0312');
INSERT INTO `tp_location` VALUES ('140', '河北省', '保定市', '涿州市', '09', '0312');
INSERT INTO `tp_location` VALUES ('141', '河北省', '保定市', '定州市', '09', '0312');
INSERT INTO `tp_location` VALUES ('142', '河北省', '保定市', '安国市', '09', '0312');
INSERT INTO `tp_location` VALUES ('143', '河北省', '保定市', '高碑店市', '09', '0312');
INSERT INTO `tp_location` VALUES ('144', '河北省', '张家口市', '桥东区', '09', '0313');
INSERT INTO `tp_location` VALUES ('145', '河北省', '张家口市', '桥西区', '09', '0313');
INSERT INTO `tp_location` VALUES ('146', '河北省', '张家口市', '宣化区', '09', '0313');
INSERT INTO `tp_location` VALUES ('147', '河北省', '张家口市', '下花园区', '09', '0313');
INSERT INTO `tp_location` VALUES ('148', '河北省', '张家口市', '宣化县', '09', '0313');
INSERT INTO `tp_location` VALUES ('149', '河北省', '张家口市', '张北县', '09', '0313');
INSERT INTO `tp_location` VALUES ('150', '河北省', '张家口市', '康保县', '09', '0313');
INSERT INTO `tp_location` VALUES ('151', '河北省', '张家口市', '沽源县', '09', '0313');
INSERT INTO `tp_location` VALUES ('152', '河北省', '张家口市', '尚义县', '09', '0313');
INSERT INTO `tp_location` VALUES ('153', '河北省', '张家口市', '蔚县', '09', '0313');
INSERT INTO `tp_location` VALUES ('154', '河北省', '张家口市', '阳原县', '09', '0313');
INSERT INTO `tp_location` VALUES ('155', '河北省', '张家口市', '怀安县', '09', '0313');
INSERT INTO `tp_location` VALUES ('156', '河北省', '张家口市', '万全县', '09', '0313');
INSERT INTO `tp_location` VALUES ('157', '河北省', '张家口市', '怀来县', '09', '0313');
INSERT INTO `tp_location` VALUES ('158', '河北省', '张家口市', '涿鹿县', '09', '0313');
INSERT INTO `tp_location` VALUES ('159', '河北省', '张家口市', '赤城县', '09', '0313');
INSERT INTO `tp_location` VALUES ('160', '河北省', '张家口市', '崇礼县', '09', '0313');
INSERT INTO `tp_location` VALUES ('161', '河北省', '承德市', '双桥区', '09', '0314');
INSERT INTO `tp_location` VALUES ('162', '河北省', '承德市', '双滦区', '09', '0314');
INSERT INTO `tp_location` VALUES ('163', '河北省', '承德市', '鹰手营子矿区', '09', '0314');
INSERT INTO `tp_location` VALUES ('164', '河北省', '承德市', '承德县', '09', '0314');
INSERT INTO `tp_location` VALUES ('165', '河北省', '承德市', '兴隆县', '09', '0314');
INSERT INTO `tp_location` VALUES ('166', '河北省', '承德市', '平泉县', '09', '0314');
INSERT INTO `tp_location` VALUES ('167', '河北省', '承德市', '滦平县', '09', '0314');
INSERT INTO `tp_location` VALUES ('168', '河北省', '承德市', '隆化县', '09', '0314');
INSERT INTO `tp_location` VALUES ('169', '河北省', '承德市', '丰宁满族自治县', '09', '0314');
INSERT INTO `tp_location` VALUES ('170', '河北省', '承德市', '宽城满族自治县', '09', '0314');
INSERT INTO `tp_location` VALUES ('171', '河北省', '承德市', '围场满族蒙古族自治县', '09', '0314');
INSERT INTO `tp_location` VALUES ('172', '河北省', '沧州市', '新华区', '09', '0317');
INSERT INTO `tp_location` VALUES ('173', '河北省', '沧州市', '运河区', '09', '0317');
INSERT INTO `tp_location` VALUES ('174', '河北省', '沧州市', '沧县', '09', '0317');
INSERT INTO `tp_location` VALUES ('175', '河北省', '沧州市', '青县', '09', '0317');
INSERT INTO `tp_location` VALUES ('176', '河北省', '沧州市', '东光县', '09', '0317');
INSERT INTO `tp_location` VALUES ('177', '河北省', '沧州市', '海兴县', '09', '0317');
INSERT INTO `tp_location` VALUES ('178', '河北省', '沧州市', '盐山县', '09', '0317');
INSERT INTO `tp_location` VALUES ('179', '河北省', '沧州市', '肃宁县', '09', '0317');
INSERT INTO `tp_location` VALUES ('180', '河北省', '沧州市', '南皮县', '09', '0317');
INSERT INTO `tp_location` VALUES ('181', '河北省', '沧州市', '吴桥县', '09', '0317');
INSERT INTO `tp_location` VALUES ('182', '河北省', '沧州市', '献县', '09', '0317');
INSERT INTO `tp_location` VALUES ('183', '河北省', '沧州市', '孟村回族自治县', '09', '0317');
INSERT INTO `tp_location` VALUES ('184', '河北省', '沧州市', '泊头市', '09', '0317');
INSERT INTO `tp_location` VALUES ('185', '河北省', '沧州市', '任丘市', '09', '0317');
INSERT INTO `tp_location` VALUES ('186', '河北省', '沧州市', '黄骅市', '09', '0317');
INSERT INTO `tp_location` VALUES ('187', '河北省', '沧州市', '河间市', '09', '0317');
INSERT INTO `tp_location` VALUES ('188', '河北省', '廊坊市', '安次区', '09', '0316');
INSERT INTO `tp_location` VALUES ('189', '河北省', '廊坊市', '固安县', '09', '0316');
INSERT INTO `tp_location` VALUES ('190', '河北省', '廊坊市', '永清县', '09', '0316');
INSERT INTO `tp_location` VALUES ('191', '河北省', '廊坊市', '香河县', '09', '0316');
INSERT INTO `tp_location` VALUES ('192', '河北省', '廊坊市', '大城县', '09', '0316');
INSERT INTO `tp_location` VALUES ('193', '河北省', '廊坊市', '文安县', '09', '0316');
INSERT INTO `tp_location` VALUES ('194', '河北省', '廊坊市', '大厂回族自治县', '09', '0316');
INSERT INTO `tp_location` VALUES ('195', '河北省', '廊坊市', '霸州市', '09', '0316');
INSERT INTO `tp_location` VALUES ('196', '河北省', '廊坊市', '三河市', '09', '0316');
INSERT INTO `tp_location` VALUES ('197', '河北省', '衡水市', '桃城区', '09', '0318');
INSERT INTO `tp_location` VALUES ('198', '河北省', '衡水市', '枣强县', '09', '0318');
INSERT INTO `tp_location` VALUES ('199', '河北省', '衡水市', '武邑县', '09', '0318');
INSERT INTO `tp_location` VALUES ('200', '河北省', '衡水市', '武强县', '09', '0318');
INSERT INTO `tp_location` VALUES ('201', '河北省', '衡水市', '饶阳县', '09', '0318');
INSERT INTO `tp_location` VALUES ('202', '河北省', '衡水市', '安平县', '09', '0318');
INSERT INTO `tp_location` VALUES ('203', '河北省', '衡水市', '故城县', '09', '0318');
INSERT INTO `tp_location` VALUES ('204', '河北省', '衡水市', '景县', '09', '0318');
INSERT INTO `tp_location` VALUES ('205', '河北省', '衡水市', '阜城县', '09', '0318');
INSERT INTO `tp_location` VALUES ('206', '河北省', '衡水市', '冀州市', '09', '0318');
INSERT INTO `tp_location` VALUES ('207', '河北省', '衡水市', '深州市', '09', '0318');
INSERT INTO `tp_location` VALUES ('208', '山西省', '太原市', '小店区', '22', '0351');
INSERT INTO `tp_location` VALUES ('209', '山西省', '太原市', '迎泽区', '22', '0351');
INSERT INTO `tp_location` VALUES ('210', '山西省', '太原市', '杏花岭区', '22', '0351');
INSERT INTO `tp_location` VALUES ('211', '山西省', '太原市', '尖草坪区', '22', '0351');
INSERT INTO `tp_location` VALUES ('212', '山西省', '太原市', '万柏林区', '22', '0351');
INSERT INTO `tp_location` VALUES ('213', '山西省', '太原市', '晋源区', '22', '0351');
INSERT INTO `tp_location` VALUES ('214', '山西省', '太原市', '清徐县', '22', '0351');
INSERT INTO `tp_location` VALUES ('215', '山西省', '太原市', '阳曲县', '22', '0351');
INSERT INTO `tp_location` VALUES ('216', '山西省', '太原市', '娄烦县', '22', '0351');
INSERT INTO `tp_location` VALUES ('217', '山西省', '太原市', '古交市', '22', '0351');
INSERT INTO `tp_location` VALUES ('218', '山西省', '大同市', '大同城区', '22', '0352');
INSERT INTO `tp_location` VALUES ('219', '山西省', '大同市', '大同矿区', '22', '0352');
INSERT INTO `tp_location` VALUES ('220', '山西省', '大同市', '南郊区', '22', '0352');
INSERT INTO `tp_location` VALUES ('221', '山西省', '大同市', '新荣区', '22', '0352');
INSERT INTO `tp_location` VALUES ('222', '山西省', '大同市', '阳高县', '22', '0352');
INSERT INTO `tp_location` VALUES ('223', '山西省', '大同市', '天镇县', '22', '0352');
INSERT INTO `tp_location` VALUES ('224', '山西省', '大同市', '广灵县', '22', '0352');
INSERT INTO `tp_location` VALUES ('225', '山西省', '大同市', '灵丘县', '22', '0352');
INSERT INTO `tp_location` VALUES ('226', '山西省', '大同市', '浑源县', '22', '0352');
INSERT INTO `tp_location` VALUES ('227', '山西省', '大同市', '左云县', '22', '0352');
INSERT INTO `tp_location` VALUES ('228', '山西省', '大同市', '大同县', '22', '0352');
INSERT INTO `tp_location` VALUES ('229', '山西省', '阳泉市', '阳泉城区', '22', '0353');
INSERT INTO `tp_location` VALUES ('230', '山西省', '阳泉市', '阳泉矿区', '22', '0353');
INSERT INTO `tp_location` VALUES ('231', '山西省', '阳泉市', '阳泉郊区', '22', '0353');
INSERT INTO `tp_location` VALUES ('232', '山西省', '阳泉市', '平定县', '22', '0353');
INSERT INTO `tp_location` VALUES ('233', '山西省', '阳泉市', '盂县', '22', '0353');
INSERT INTO `tp_location` VALUES ('234', '山西省', '长治市', '长治城区', '22', '0355');
INSERT INTO `tp_location` VALUES ('235', '山西省', '长治市', '长治郊区', '22', '0355');
INSERT INTO `tp_location` VALUES ('236', '山西省', '长治市', '长治县', '22', '0355');
INSERT INTO `tp_location` VALUES ('237', '山西省', '长治市', '襄垣县', '22', '0355');
INSERT INTO `tp_location` VALUES ('238', '山西省', '长治市', '屯留县', '22', '0355');
INSERT INTO `tp_location` VALUES ('239', '山西省', '长治市', '平顺县', '22', '0355');
INSERT INTO `tp_location` VALUES ('240', '山西省', '长治市', '黎城县', '22', '0355');
INSERT INTO `tp_location` VALUES ('241', '山西省', '长治市', '壶关县', '22', '0355');
INSERT INTO `tp_location` VALUES ('242', '山西省', '长治市', '长子县', '22', '0355');
INSERT INTO `tp_location` VALUES ('243', '山西省', '长治市', '武乡县', '22', '0355');
INSERT INTO `tp_location` VALUES ('244', '山西省', '长治市', '沁县', '22', '0355');
INSERT INTO `tp_location` VALUES ('245', '山西省', '长治市', '沁源县', '22', '0355');
INSERT INTO `tp_location` VALUES ('246', '山西省', '长治市', '潞城市', '22', '0355');
INSERT INTO `tp_location` VALUES ('247', '山西省', '晋城市', '晋城城区', '22', '0356');
INSERT INTO `tp_location` VALUES ('248', '山西省', '晋城市', '沁水县', '22', '0356');
INSERT INTO `tp_location` VALUES ('249', '山西省', '晋城市', '阳城县', '22', '0356');
INSERT INTO `tp_location` VALUES ('250', '山西省', '晋城市', '陵川县', '22', '0356');
INSERT INTO `tp_location` VALUES ('251', '山西省', '晋城市', '泽州县', '22', '0356');
INSERT INTO `tp_location` VALUES ('252', '山西省', '晋城市', '高平市', '22', '0356');
INSERT INTO `tp_location` VALUES ('253', '山西省', '朔州市', '朔城区', '22', '0349');
INSERT INTO `tp_location` VALUES ('254', '山西省', '朔州市', '平鲁区', '22', '0349');
INSERT INTO `tp_location` VALUES ('255', '山西省', '朔州市', '山阴县', '22', '0349');
INSERT INTO `tp_location` VALUES ('256', '山西省', '朔州市', '应县', '22', '0349');
INSERT INTO `tp_location` VALUES ('257', '山西省', '朔州市', '右玉县', '22', '0349');
INSERT INTO `tp_location` VALUES ('258', '山西省', '朔州市', '怀仁县', '22', '0349');
INSERT INTO `tp_location` VALUES ('259', '山西省', '忻州市', '忻府区', '22', '0350');
INSERT INTO `tp_location` VALUES ('260', '山西省', '忻州市', '原平市', '22', '0350');
INSERT INTO `tp_location` VALUES ('261', '山西省', '忻州市', '定襄县', '22', '0350');
INSERT INTO `tp_location` VALUES ('262', '山西省', '忻州市', '五台县', '22', '0350');
INSERT INTO `tp_location` VALUES ('263', '山西省', '忻州市', '代县', '22', '0350');
INSERT INTO `tp_location` VALUES ('264', '山西省', '忻州市', '繁峙县', '22', '0350');
INSERT INTO `tp_location` VALUES ('265', '山西省', '忻州市', '宁武县', '22', '0350');
INSERT INTO `tp_location` VALUES ('266', '山西省', '忻州市', '静乐县', '22', '0350');
INSERT INTO `tp_location` VALUES ('267', '山西省', '忻州市', '神池县', '22', '0350');
INSERT INTO `tp_location` VALUES ('268', '山西省', '忻州市', '五寨县', '22', '0350');
INSERT INTO `tp_location` VALUES ('269', '山西省', '忻州市', '岢岚县', '22', '0350');
INSERT INTO `tp_location` VALUES ('270', '山西省', '忻州市', '河曲县', '22', '0350');
INSERT INTO `tp_location` VALUES ('271', '山西省', '忻州市', '保德县', '22', '0350');
INSERT INTO `tp_location` VALUES ('272', '山西省', '忻州市', '偏关县', '22', '0350');
INSERT INTO `tp_location` VALUES ('273', '山西省', '吕梁市', '离石区', '22', '0358');
INSERT INTO `tp_location` VALUES ('274', '山西省', '吕梁市', '孝义市', '22', '0358');
INSERT INTO `tp_location` VALUES ('275', '山西省', '吕梁市', '汾阳市', '22', '0358');
INSERT INTO `tp_location` VALUES ('276', '山西省', '吕梁市', '文水县', '22', '0358');
INSERT INTO `tp_location` VALUES ('277', '山西省', '吕梁市', '交城县', '22', '0358');
INSERT INTO `tp_location` VALUES ('278', '山西省', '吕梁市', '兴县', '22', '0358');
INSERT INTO `tp_location` VALUES ('279', '山西省', '吕梁市', '临县', '22', '0358');
INSERT INTO `tp_location` VALUES ('280', '山西省', '吕梁市', '柳林县', '22', '0358');
INSERT INTO `tp_location` VALUES ('281', '山西省', '吕梁市', '石楼县', '22', '0358');
INSERT INTO `tp_location` VALUES ('282', '山西省', '吕梁市', '岚县', '22', '0358');
INSERT INTO `tp_location` VALUES ('283', '山西省', '吕梁市', '方山县', '22', '0358');
INSERT INTO `tp_location` VALUES ('284', '山西省', '吕梁市', '中阳县', '22', '0358');
INSERT INTO `tp_location` VALUES ('285', '山西省', '吕梁市', '交口县', '22', '0358');
INSERT INTO `tp_location` VALUES ('286', '山西省', '晋中市', '榆次区', '22', '0354');
INSERT INTO `tp_location` VALUES ('287', '山西省', '晋中市', '介休市', '22', '0354');
INSERT INTO `tp_location` VALUES ('288', '山西省', '晋中市', '榆社县', '22', '0354');
INSERT INTO `tp_location` VALUES ('289', '山西省', '晋中市', '左权县', '22', '0354');
INSERT INTO `tp_location` VALUES ('290', '山西省', '晋中市', '和顺县', '22', '0354');
INSERT INTO `tp_location` VALUES ('291', '山西省', '晋中市', '昔阳县', '22', '0354');
INSERT INTO `tp_location` VALUES ('292', '山西省', '晋中市', '寿阳县', '22', '0354');
INSERT INTO `tp_location` VALUES ('293', '山西省', '晋中市', '太谷县', '22', '0354');
INSERT INTO `tp_location` VALUES ('294', '山西省', '晋中市', '祁县', '22', '0354');
INSERT INTO `tp_location` VALUES ('295', '山西省', '晋中市', '平遥县', '22', '0354');
INSERT INTO `tp_location` VALUES ('296', '山西省', '晋中市', '灵石县', '22', '0354');
INSERT INTO `tp_location` VALUES ('297', '山西省', '临汾市', '临汾市', '22', '0357');
INSERT INTO `tp_location` VALUES ('298', '山西省', '临汾市', '侯马市', '22', '0357');
INSERT INTO `tp_location` VALUES ('299', '山西省', '临汾市', '霍州市', '22', '0357');
INSERT INTO `tp_location` VALUES ('300', '山西省', '临汾市', '曲沃县', '22', '0357');
INSERT INTO `tp_location` VALUES ('301', '山西省', '临汾市', '翼城县', '22', '0357');
INSERT INTO `tp_location` VALUES ('302', '山西省', '临汾市', '襄汾县', '22', '0357');
INSERT INTO `tp_location` VALUES ('303', '山西省', '临汾市', '洪洞县', '22', '0357');
INSERT INTO `tp_location` VALUES ('304', '山西省', '临汾市', '古县', '22', '0357');
INSERT INTO `tp_location` VALUES ('305', '山西省', '临汾市', '安泽县', '22', '0357');
INSERT INTO `tp_location` VALUES ('306', '山西省', '临汾市', '浮山县', '22', '0357');
INSERT INTO `tp_location` VALUES ('307', '山西省', '临汾市', '吉县', '22', '0357');
INSERT INTO `tp_location` VALUES ('308', '山西省', '临汾市', '乡宁县', '22', '0357');
INSERT INTO `tp_location` VALUES ('309', '山西省', '临汾市', '蒲县', '22', '0357');
INSERT INTO `tp_location` VALUES ('310', '山西省', '临汾市', '大宁县', '22', '0357');
INSERT INTO `tp_location` VALUES ('311', '山西省', '临汾市', '永和县', '22', '0357');
INSERT INTO `tp_location` VALUES ('312', '山西省', '临汾市', '隰县', '22', '0357');
INSERT INTO `tp_location` VALUES ('313', '山西省', '临汾市', '汾西县', '22', '0357');
INSERT INTO `tp_location` VALUES ('314', '山西省', '运城市', '运城市', '22', '0359');
INSERT INTO `tp_location` VALUES ('315', '山西省', '运城市', '永济市', '22', '0359');
INSERT INTO `tp_location` VALUES ('316', '山西省', '运城市', '河津市', '22', '0359');
INSERT INTO `tp_location` VALUES ('317', '山西省', '运城市', '芮城县', '22', '0359');
INSERT INTO `tp_location` VALUES ('318', '山西省', '运城市', '临猗县', '22', '0359');
INSERT INTO `tp_location` VALUES ('319', '山西省', '运城市', '万荣县', '22', '0359');
INSERT INTO `tp_location` VALUES ('320', '山西省', '运城市', '新绛县', '22', '0359');
INSERT INTO `tp_location` VALUES ('321', '山西省', '运城市', '稷山县', '22', '0359');
INSERT INTO `tp_location` VALUES ('322', '山西省', '运城市', '闻喜县', '22', '0359');
INSERT INTO `tp_location` VALUES ('323', '山西省', '运城市', '夏县', '22', '0359');
INSERT INTO `tp_location` VALUES ('324', '山西省', '运城市', '绛县', '22', '0359');
INSERT INTO `tp_location` VALUES ('325', '山西省', '运城市', '平陆县', '22', '0359');
INSERT INTO `tp_location` VALUES ('326', '山西省', '运城市', '垣曲县', '22', '0359');
INSERT INTO `tp_location` VALUES ('327', '内蒙古', '呼和浩特市', '新城区', '18', '0471');
INSERT INTO `tp_location` VALUES ('328', '内蒙古', '呼和浩特市', '回民区', '18', '0471');
INSERT INTO `tp_location` VALUES ('329', '内蒙古', '呼和浩特市', '玉泉区', '18', '0471');
INSERT INTO `tp_location` VALUES ('330', '内蒙古', '呼和浩特市', '土默特左旗', '18', '0471');
INSERT INTO `tp_location` VALUES ('331', '内蒙古', '呼和浩特市', '托克托县', '18', '0471');
INSERT INTO `tp_location` VALUES ('332', '内蒙古', '呼和浩特市', '和林格尔县', '18', '0471');
INSERT INTO `tp_location` VALUES ('333', '内蒙古', '呼和浩特市', '清水河县', '18', '0471');
INSERT INTO `tp_location` VALUES ('334', '内蒙古', '呼和浩特市', '武川县', '18', '0471');
INSERT INTO `tp_location` VALUES ('335', '内蒙古', '包头市', '东河区', '18', '0472');
INSERT INTO `tp_location` VALUES ('336', '内蒙古', '包头市', '昆都伦区', '18', '0472');
INSERT INTO `tp_location` VALUES ('337', '内蒙古', '包头市', '青山区', '18', '0472');
INSERT INTO `tp_location` VALUES ('338', '内蒙古', '包头市', '石拐区', '18', '0472');
INSERT INTO `tp_location` VALUES ('339', '内蒙古', '包头市', '白云矿区', '18', '0472');
INSERT INTO `tp_location` VALUES ('340', '内蒙古', '包头市', '九原区', '18', '0472');
INSERT INTO `tp_location` VALUES ('341', '内蒙古', '包头市', '土默特右旗', '18', '0472');
INSERT INTO `tp_location` VALUES ('342', '内蒙古', '包头市', '固阳县', '18', '0472');
INSERT INTO `tp_location` VALUES ('343', '内蒙古', '包头市', '达尔罕茂明安联合旗', '18', '0472');
INSERT INTO `tp_location` VALUES ('344', '内蒙古', '乌海市', '海勃湾区', '18', '0473');
INSERT INTO `tp_location` VALUES ('345', '内蒙古', '乌海市', '海南区', '18', '0473');
INSERT INTO `tp_location` VALUES ('346', '内蒙古', '乌海市', '乌达区', '18', '0473');
INSERT INTO `tp_location` VALUES ('347', '内蒙古', '赤峰市', '红山区', '18', '0476');
INSERT INTO `tp_location` VALUES ('348', '内蒙古', '赤峰市', '元宝山区', '18', '0476');
INSERT INTO `tp_location` VALUES ('349', '内蒙古', '赤峰市', '松山区', '18', '0476');
INSERT INTO `tp_location` VALUES ('350', '内蒙古', '赤峰市', '阿鲁科尔沁旗', '18', '0476');
INSERT INTO `tp_location` VALUES ('351', '内蒙古', '赤峰市', '巴林左旗', '18', '0476');
INSERT INTO `tp_location` VALUES ('352', '内蒙古', '赤峰市', '巴林右旗', '18', '0476');
INSERT INTO `tp_location` VALUES ('353', '内蒙古', '赤峰市', '林西县', '18', '0476');
INSERT INTO `tp_location` VALUES ('354', '内蒙古', '赤峰市', '克什克腾旗', '18', '0476');
INSERT INTO `tp_location` VALUES ('355', '内蒙古', '赤峰市', '翁牛特旗', '18', '0476');
INSERT INTO `tp_location` VALUES ('356', '内蒙古', '赤峰市', '喀喇沁旗', '18', '0476');
INSERT INTO `tp_location` VALUES ('357', '内蒙古', '赤峰市', '宁城县', '18', '0476');
INSERT INTO `tp_location` VALUES ('358', '内蒙古', '赤峰市', '敖汉旗', '18', '0476');
INSERT INTO `tp_location` VALUES ('359', '内蒙古', '呼伦贝尔市', '海拉尔区', '18', '0470');
INSERT INTO `tp_location` VALUES ('360', '内蒙古', '呼伦贝尔市', '满洲里市', '18', '0470');
INSERT INTO `tp_location` VALUES ('361', '内蒙古', '呼伦贝尔市', '扎兰屯市', '18', '0470');
INSERT INTO `tp_location` VALUES ('362', '内蒙古', '呼伦贝尔市', '牙克石市', '18', '0470');
INSERT INTO `tp_location` VALUES ('363', '内蒙古', '呼伦贝尔市', '根河市', '18', '0470');
INSERT INTO `tp_location` VALUES ('364', '内蒙古', '呼伦贝尔市', '额尔古纳市', '18', '0470');
INSERT INTO `tp_location` VALUES ('365', '内蒙古', '呼伦贝尔市', '阿荣旗', '18', '0470');
INSERT INTO `tp_location` VALUES ('366', '内蒙古', '呼伦贝尔市', '莫力达瓦达斡尔族自治旗', '18', '0470');
INSERT INTO `tp_location` VALUES ('367', '内蒙古', '呼伦贝尔市', '鄂伦春自治旗', '18', '0470');
INSERT INTO `tp_location` VALUES ('368', '内蒙古', '呼伦贝尔市', '鄂温克族自治旗', '18', '0470');
INSERT INTO `tp_location` VALUES ('369', '内蒙古', '呼伦贝尔市', '新巴尔虎右旗', '18', '0470');
INSERT INTO `tp_location` VALUES ('370', '内蒙古', '呼伦贝尔市', '新巴尔虎左旗', '18', '0470');
INSERT INTO `tp_location` VALUES ('371', '内蒙古', '呼伦贝尔市', '陈巴尔虎旗', '18', '0470');
INSERT INTO `tp_location` VALUES ('372', '内蒙古', '兴安盟', '乌兰浩特市', '18', '0482');
INSERT INTO `tp_location` VALUES ('373', '内蒙古', '兴安盟', '阿尔山市', '18', '0482');
INSERT INTO `tp_location` VALUES ('374', '内蒙古', '兴安盟', '科尔沁右翼前旗', '18', '0482');
INSERT INTO `tp_location` VALUES ('375', '内蒙古', '兴安盟', '科尔沁右翼中旗', '18', '0482');
INSERT INTO `tp_location` VALUES ('376', '内蒙古', '兴安盟', '扎赉特旗', '18', '0482');
INSERT INTO `tp_location` VALUES ('377', '内蒙古', '兴安盟', '突泉县', '18', '0482');
INSERT INTO `tp_location` VALUES ('378', '内蒙古', '通辽市', '科尔沁区', '18', '0475');
INSERT INTO `tp_location` VALUES ('379', '内蒙古', '通辽市', '霍林郭勒市', '18', '0475');
INSERT INTO `tp_location` VALUES ('380', '内蒙古', '通辽市', '科尔沁左翼中旗', '18', '0475');
INSERT INTO `tp_location` VALUES ('381', '内蒙古', '通辽市', '科尔沁左翼后旗', '18', '0475');
INSERT INTO `tp_location` VALUES ('382', '内蒙古', '通辽市', '开鲁县', '18', '0475');
INSERT INTO `tp_location` VALUES ('383', '内蒙古', '通辽市', '库伦旗', '18', '0475');
INSERT INTO `tp_location` VALUES ('384', '内蒙古', '通辽市', '奈曼旗', '18', '0475');
INSERT INTO `tp_location` VALUES ('385', '内蒙古', '通辽市', '扎鲁特旗', '18', '0475');
INSERT INTO `tp_location` VALUES ('386', '内蒙古', '锡林郭勒盟', '二连浩特市', '18', '0479');
INSERT INTO `tp_location` VALUES ('387', '内蒙古', '锡林郭勒盟', '锡林浩特市', '18', '0479');
INSERT INTO `tp_location` VALUES ('388', '内蒙古', '锡林郭勒盟', '阿巴嘎旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('389', '内蒙古', '锡林郭勒盟', '苏尼特左旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('390', '内蒙古', '锡林郭勒盟', '苏尼特右旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('391', '内蒙古', '锡林郭勒盟', '东乌珠穆沁旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('392', '内蒙古', '锡林郭勒盟', '西乌珠穆沁旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('393', '内蒙古', '锡林郭勒盟', '太仆寺旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('394', '内蒙古', '锡林郭勒盟', '镶黄旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('395', '内蒙古', '锡林郭勒盟', '正镶白旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('396', '内蒙古', '锡林郭勒盟', '正蓝旗', '18', '0479');
INSERT INTO `tp_location` VALUES ('397', '内蒙古', '锡林郭勒盟', '多伦县', '18', '0479');
INSERT INTO `tp_location` VALUES ('398', '内蒙古', '乌兰察布市', '集宁区', '18', '0474');
INSERT INTO `tp_location` VALUES ('399', '内蒙古', '乌兰察布市', '丰镇市', '18', '0474');
INSERT INTO `tp_location` VALUES ('400', '内蒙古', '乌兰察布市', '卓资县', '18', '0474');
INSERT INTO `tp_location` VALUES ('401', '内蒙古', '乌兰察布市', '化德县', '18', '0474');
INSERT INTO `tp_location` VALUES ('402', '内蒙古', '乌兰察布市', '商都县', '18', '0474');
INSERT INTO `tp_location` VALUES ('403', '内蒙古', '乌兰察布市', '兴和县', '18', '0474');
INSERT INTO `tp_location` VALUES ('404', '内蒙古', '乌兰察布市', '凉城县', '18', '0474');
INSERT INTO `tp_location` VALUES ('405', '内蒙古', '乌兰察布市', '察哈尔右翼前旗', '18', '0474');
INSERT INTO `tp_location` VALUES ('406', '内蒙古', '乌兰察布市', '察哈尔右翼中旗', '18', '0474');
INSERT INTO `tp_location` VALUES ('407', '内蒙古', '乌兰察布市', '察哈尔右翼后旗', '18', '0474');
INSERT INTO `tp_location` VALUES ('408', '内蒙古', '乌兰察布市', '四子王旗', '18', '0474');
INSERT INTO `tp_location` VALUES ('409', '内蒙古', '鄂尔多斯市', '东胜区', '18', '0477');
INSERT INTO `tp_location` VALUES ('410', '内蒙古', '鄂尔多斯市', '达拉特旗', '18', '0477');
INSERT INTO `tp_location` VALUES ('411', '内蒙古', '鄂尔多斯市', '准格尔旗', '18', '0477');
INSERT INTO `tp_location` VALUES ('412', '内蒙古', '鄂尔多斯市', '鄂托克前旗', '18', '0477');
INSERT INTO `tp_location` VALUES ('413', '内蒙古', '鄂尔多斯市', '鄂托克旗', '18', '0477');
INSERT INTO `tp_location` VALUES ('414', '内蒙古', '鄂尔多斯市', '杭锦旗', '18', '0477');
INSERT INTO `tp_location` VALUES ('415', '内蒙古', '鄂尔多斯市', '乌审旗', '18', '0477');
INSERT INTO `tp_location` VALUES ('416', '内蒙古', '鄂尔多斯市', '伊金霍洛旗', '18', '0477');
INSERT INTO `tp_location` VALUES ('417', '内蒙古', '巴彦淖尔市', '临河区', '18', '0478');
INSERT INTO `tp_location` VALUES ('418', '内蒙古', '巴彦淖尔市', '五原县', '18', '0478');
INSERT INTO `tp_location` VALUES ('419', '内蒙古', '巴彦淖尔市', '磴口县', '18', '0478');
INSERT INTO `tp_location` VALUES ('420', '内蒙古', '巴彦淖尔市', '乌拉特前旗', '18', '0478');
INSERT INTO `tp_location` VALUES ('421', '内蒙古', '巴彦淖尔市', '乌拉特中旗', '18', '0478');
INSERT INTO `tp_location` VALUES ('422', '内蒙古', '巴彦淖尔市', '乌拉特后旗', '18', '0478');
INSERT INTO `tp_location` VALUES ('423', '内蒙古', '巴彦淖尔市', '杭锦后旗', '18', '0478');
INSERT INTO `tp_location` VALUES ('424', '内蒙古', '阿拉善盟', '阿拉善左旗', '18', '0483');
INSERT INTO `tp_location` VALUES ('425', '内蒙古', '阿拉善盟', '阿拉善右旗', '18', '0483');
INSERT INTO `tp_location` VALUES ('426', '内蒙古', '阿拉善盟', '额济纳旗', '18', '0483');
INSERT INTO `tp_location` VALUES ('427', '辽宁省', '沈阳市', '和平区', '17', '024');
INSERT INTO `tp_location` VALUES ('428', '辽宁省', '沈阳市', '沈河区', '17', '024');
INSERT INTO `tp_location` VALUES ('429', '辽宁省', '沈阳市', '大东区', '17', '024');
INSERT INTO `tp_location` VALUES ('430', '辽宁省', '沈阳市', '皇姑区', '17', '024');
INSERT INTO `tp_location` VALUES ('431', '辽宁省', '沈阳市', '铁西区', '17', '024');
INSERT INTO `tp_location` VALUES ('432', '辽宁省', '沈阳市', '苏家屯区', '17', '024');
INSERT INTO `tp_location` VALUES ('433', '辽宁省', '沈阳市', '东陵区', '17', '024');
INSERT INTO `tp_location` VALUES ('434', '辽宁省', '沈阳市', '新城子区', '17', '024');
INSERT INTO `tp_location` VALUES ('435', '辽宁省', '沈阳市', '于洪区', '17', '024');
INSERT INTO `tp_location` VALUES ('436', '辽宁省', '沈阳市', '辽中县', '17', '024');
INSERT INTO `tp_location` VALUES ('437', '辽宁省', '沈阳市', '康平县', '17', '024');
INSERT INTO `tp_location` VALUES ('438', '辽宁省', '沈阳市', '法库县', '17', '024');
INSERT INTO `tp_location` VALUES ('439', '辽宁省', '沈阳市', '新民市', '17', '024');
INSERT INTO `tp_location` VALUES ('440', '辽宁省', '大连市', '中山区', '17', '0411');
INSERT INTO `tp_location` VALUES ('441', '辽宁省', '大连市', '西岗区', '17', '0411');
INSERT INTO `tp_location` VALUES ('442', '辽宁省', '大连市', '沙河口区', '17', '0411');
INSERT INTO `tp_location` VALUES ('443', '辽宁省', '大连市', '甘井子区', '17', '0411');
INSERT INTO `tp_location` VALUES ('444', '辽宁省', '大连市', '旅顺口区', '17', '0411');
INSERT INTO `tp_location` VALUES ('445', '辽宁省', '大连市', '金州区', '17', '0411');
INSERT INTO `tp_location` VALUES ('446', '辽宁省', '大连市', '长海县', '17', '0411');
INSERT INTO `tp_location` VALUES ('447', '辽宁省', '大连市', '瓦房店市', '17', '0411');
INSERT INTO `tp_location` VALUES ('448', '辽宁省', '大连市', '普兰店市', '17', '0411');
INSERT INTO `tp_location` VALUES ('449', '辽宁省', '大连市', '庄河市', '17', '0411');
INSERT INTO `tp_location` VALUES ('450', '辽宁省', '鞍山市', '铁东区', '17', '0412');
INSERT INTO `tp_location` VALUES ('451', '辽宁省', '鞍山市', '铁西区', '17', '0412');
INSERT INTO `tp_location` VALUES ('452', '辽宁省', '鞍山市', '立山区', '17', '0412');
INSERT INTO `tp_location` VALUES ('453', '辽宁省', '鞍山市', '千山区', '17', '0412');
INSERT INTO `tp_location` VALUES ('454', '辽宁省', '鞍山市', '台安县', '17', '0412');
INSERT INTO `tp_location` VALUES ('455', '辽宁省', '鞍山市', '岫岩满族自治县', '17', '0412');
INSERT INTO `tp_location` VALUES ('456', '辽宁省', '鞍山市', '海城市', '17', '0412');
INSERT INTO `tp_location` VALUES ('457', '辽宁省', '抚顺市', '新抚区', '17', '0413');
INSERT INTO `tp_location` VALUES ('458', '辽宁省', '抚顺市', '东洲区', '17', '0413');
INSERT INTO `tp_location` VALUES ('459', '辽宁省', '抚顺市', '望花区', '17', '0413');
INSERT INTO `tp_location` VALUES ('460', '辽宁省', '抚顺市', '顺城区', '17', '0413');
INSERT INTO `tp_location` VALUES ('461', '辽宁省', '抚顺市', '抚顺县', '17', '0413');
INSERT INTO `tp_location` VALUES ('462', '辽宁省', '抚顺市', '新宾满族自治县', '17', '0413');
INSERT INTO `tp_location` VALUES ('463', '辽宁省', '抚顺市', '清原满族自治县', '17', '0413');
INSERT INTO `tp_location` VALUES ('464', '辽宁省', '本溪市', '平山区', '17', '0414');
INSERT INTO `tp_location` VALUES ('465', '辽宁省', '本溪市', '溪湖区', '17', '0414');
INSERT INTO `tp_location` VALUES ('466', '辽宁省', '本溪市', '明山区', '17', '0414');
INSERT INTO `tp_location` VALUES ('467', '辽宁省', '本溪市', '南芬区', '17', '0414');
INSERT INTO `tp_location` VALUES ('468', '辽宁省', '本溪市', '本溪满族自治县', '17', '0414');
INSERT INTO `tp_location` VALUES ('469', '辽宁省', '本溪市', '桓仁满族自治县', '17', '0414');
INSERT INTO `tp_location` VALUES ('470', '辽宁省', '丹东市', '元宝区', '17', '0415');
INSERT INTO `tp_location` VALUES ('471', '辽宁省', '丹东市', '振兴区', '17', '0415');
INSERT INTO `tp_location` VALUES ('472', '辽宁省', '丹东市', '振安区', '17', '0415');
INSERT INTO `tp_location` VALUES ('473', '辽宁省', '丹东市', '宽甸满族自治县', '17', '0415');
INSERT INTO `tp_location` VALUES ('474', '辽宁省', '丹东市', '东港市', '17', '0415');
INSERT INTO `tp_location` VALUES ('475', '辽宁省', '丹东市', '凤城市', '17', '0415');
INSERT INTO `tp_location` VALUES ('476', '辽宁省', '锦州市', '古塔区', '17', '0416');
INSERT INTO `tp_location` VALUES ('477', '辽宁省', '锦州市', '凌河区', '17', '0416');
INSERT INTO `tp_location` VALUES ('478', '辽宁省', '锦州市', '太和区', '17', '0416');
INSERT INTO `tp_location` VALUES ('479', '辽宁省', '锦州市', '黑山县', '17', '0416');
INSERT INTO `tp_location` VALUES ('480', '辽宁省', '锦州市', '义县', '17', '0416');
INSERT INTO `tp_location` VALUES ('481', '辽宁省', '锦州市', '凌海市', '17', '0416');
INSERT INTO `tp_location` VALUES ('482', '辽宁省', '锦州市', '北宁市', '17', '0416');
INSERT INTO `tp_location` VALUES ('483', '辽宁省', '营口市', '站前区', '17', '0417');
INSERT INTO `tp_location` VALUES ('484', '辽宁省', '营口市', '西市区', '17', '0417');
INSERT INTO `tp_location` VALUES ('485', '辽宁省', '营口市', '鲅鱼圈区', '17', '0417');
INSERT INTO `tp_location` VALUES ('486', '辽宁省', '营口市', '老边区', '17', '0417');
INSERT INTO `tp_location` VALUES ('487', '辽宁省', '营口市', '盖州市', '17', '0417');
INSERT INTO `tp_location` VALUES ('488', '辽宁省', '营口市', '大石桥市', '17', '0417');
INSERT INTO `tp_location` VALUES ('489', '辽宁省', '阜新市', '海州区', '17', '0418');
INSERT INTO `tp_location` VALUES ('490', '辽宁省', '阜新市', '新邱区', '17', '0418');
INSERT INTO `tp_location` VALUES ('491', '辽宁省', '阜新市', '太平区', '17', '0418');
INSERT INTO `tp_location` VALUES ('492', '辽宁省', '阜新市', '清河门区', '17', '0418');
INSERT INTO `tp_location` VALUES ('493', '辽宁省', '阜新市', '细河区', '17', '0418');
INSERT INTO `tp_location` VALUES ('494', '辽宁省', '阜新市', '阜新蒙古族自治县', '17', '0418');
INSERT INTO `tp_location` VALUES ('495', '辽宁省', '阜新市', '彰武县', '17', '0418');
INSERT INTO `tp_location` VALUES ('496', '辽宁省', '辽阳市', '白塔区', '17', '0419');
INSERT INTO `tp_location` VALUES ('497', '辽宁省', '辽阳市', '文圣区', '17', '0419');
INSERT INTO `tp_location` VALUES ('498', '辽宁省', '辽阳市', '宏伟区', '17', '0419');
INSERT INTO `tp_location` VALUES ('499', '辽宁省', '辽阳市', '弓长岭区', '17', '0419');
INSERT INTO `tp_location` VALUES ('500', '辽宁省', '辽阳市', '太子河区', '17', '0419');
INSERT INTO `tp_location` VALUES ('501', '辽宁省', '辽阳市', '辽阳县', '17', '0419');
INSERT INTO `tp_location` VALUES ('502', '辽宁省', '辽阳市', '灯塔市', '17', '0419');
INSERT INTO `tp_location` VALUES ('503', '辽宁省', '盘锦市', '双台子区', '17', '0427');
INSERT INTO `tp_location` VALUES ('504', '辽宁省', '盘锦市', '兴隆台区', '17', '0427');
INSERT INTO `tp_location` VALUES ('505', '辽宁省', '盘锦市', '大洼县', '17', '0427');
INSERT INTO `tp_location` VALUES ('506', '辽宁省', '盘锦市', '盘山县', '17', '0427');
INSERT INTO `tp_location` VALUES ('507', '辽宁省', '铁岭市', '银州区', '17', '024');
INSERT INTO `tp_location` VALUES ('508', '辽宁省', '铁岭市', '清河区', '17', '024');
INSERT INTO `tp_location` VALUES ('509', '辽宁省', '铁岭市', '铁岭县', '17', '024');
INSERT INTO `tp_location` VALUES ('510', '辽宁省', '铁岭市', '西丰县', '17', '024');
INSERT INTO `tp_location` VALUES ('511', '辽宁省', '铁岭市', '昌图县', '17', '024');
INSERT INTO `tp_location` VALUES ('512', '辽宁省', '铁岭市', '调兵山市', '17', '024');
INSERT INTO `tp_location` VALUES ('513', '辽宁省', '铁岭市', '开原市', '17', '024');
INSERT INTO `tp_location` VALUES ('514', '辽宁省', '朝阳市', '双塔区', '17', '0421');
INSERT INTO `tp_location` VALUES ('515', '辽宁省', '朝阳市', '龙城区', '17', '0421');
INSERT INTO `tp_location` VALUES ('516', '辽宁省', '朝阳市', '朝阳县', '17', '0421');
INSERT INTO `tp_location` VALUES ('517', '辽宁省', '朝阳市', '建平县', '17', '0421');
INSERT INTO `tp_location` VALUES ('518', '辽宁省', '朝阳市', '喀喇沁左翼蒙古族自治县', '17', '0421');
INSERT INTO `tp_location` VALUES ('519', '辽宁省', '朝阳市', '北票市', '17', '0421');
INSERT INTO `tp_location` VALUES ('520', '辽宁省', '朝阳市', '凌源市', '17', '0421');
INSERT INTO `tp_location` VALUES ('521', '辽宁省', '葫芦岛市', '连山区', '17', '0429');
INSERT INTO `tp_location` VALUES ('522', '辽宁省', '葫芦岛市', '龙港区', '17', '0429');
INSERT INTO `tp_location` VALUES ('523', '辽宁省', '葫芦岛市', '南票区', '17', '0429');
INSERT INTO `tp_location` VALUES ('524', '辽宁省', '葫芦岛市', '绥中县', '17', '0429');
INSERT INTO `tp_location` VALUES ('525', '辽宁省', '葫芦岛市', '建昌县', '17', '0429');
INSERT INTO `tp_location` VALUES ('526', '辽宁省', '葫芦岛市', '兴城市', '17', '0429');
INSERT INTO `tp_location` VALUES ('527', '吉林省', '长春市', '南关区', '14', '0431');
INSERT INTO `tp_location` VALUES ('528', '吉林省', '长春市', '宽城区', '14', '0431');
INSERT INTO `tp_location` VALUES ('529', '吉林省', '长春市', '朝阳区', '14', '0431');
INSERT INTO `tp_location` VALUES ('530', '吉林省', '长春市', '二道区', '14', '0431');
INSERT INTO `tp_location` VALUES ('531', '吉林省', '长春市', '绿园区', '14', '0431');
INSERT INTO `tp_location` VALUES ('532', '吉林省', '长春市', '双阳区', '14', '0431');
INSERT INTO `tp_location` VALUES ('533', '吉林省', '长春市', '农安县', '14', '0431');
INSERT INTO `tp_location` VALUES ('534', '吉林省', '长春市', '九台市', '14', '0431');
INSERT INTO `tp_location` VALUES ('535', '吉林省', '长春市', '榆树市', '14', '0431');
INSERT INTO `tp_location` VALUES ('536', '吉林省', '长春市', '德惠市', '14', '0431');
INSERT INTO `tp_location` VALUES ('537', '吉林省', '吉林市', '昌邑区', '14', '0432');
INSERT INTO `tp_location` VALUES ('538', '吉林省', '吉林市', '龙潭区', '14', '0432');
INSERT INTO `tp_location` VALUES ('539', '吉林省', '吉林市', '船营区', '14', '0432');
INSERT INTO `tp_location` VALUES ('540', '吉林省', '吉林市', '丰满区', '14', '0432');
INSERT INTO `tp_location` VALUES ('541', '吉林省', '吉林市', '永吉县', '14', '0432');
INSERT INTO `tp_location` VALUES ('542', '吉林省', '吉林市', '蛟河市', '14', '0432');
INSERT INTO `tp_location` VALUES ('543', '吉林省', '吉林市', '桦甸市', '14', '0432');
INSERT INTO `tp_location` VALUES ('544', '吉林省', '吉林市', '舒兰市', '14', '0432');
INSERT INTO `tp_location` VALUES ('545', '吉林省', '吉林市', '磐石市', '14', '0432');
INSERT INTO `tp_location` VALUES ('546', '吉林省', '四平市', '铁西区', '14', '0434');
INSERT INTO `tp_location` VALUES ('547', '吉林省', '四平市', '铁东区', '14', '0434');
INSERT INTO `tp_location` VALUES ('548', '吉林省', '四平市', '梨树县', '14', '0434');
INSERT INTO `tp_location` VALUES ('549', '吉林省', '四平市', '伊通满族自治县', '14', '0434');
INSERT INTO `tp_location` VALUES ('550', '吉林省', '四平市', '公主岭市', '14', '0434');
INSERT INTO `tp_location` VALUES ('551', '吉林省', '四平市', '双辽市', '14', '0434');
INSERT INTO `tp_location` VALUES ('552', '吉林省', '辽源市', '龙山区', '14', '0437');
INSERT INTO `tp_location` VALUES ('553', '吉林省', '辽源市', '西安区', '14', '0437');
INSERT INTO `tp_location` VALUES ('554', '吉林省', '辽源市', '东丰县', '14', '0437');
INSERT INTO `tp_location` VALUES ('555', '吉林省', '辽源市', '东辽县', '14', '0437');
INSERT INTO `tp_location` VALUES ('556', '吉林省', '通化市', '东昌区', '14', '0435');
INSERT INTO `tp_location` VALUES ('557', '吉林省', '通化市', '二道江区', '14', '0435');
INSERT INTO `tp_location` VALUES ('558', '吉林省', '通化市', '通化县', '14', '0435');
INSERT INTO `tp_location` VALUES ('559', '吉林省', '通化市', '辉南县', '14', '0435');
INSERT INTO `tp_location` VALUES ('560', '吉林省', '通化市', '柳河县', '14', '0435');
INSERT INTO `tp_location` VALUES ('561', '吉林省', '通化市', '梅河口市', '14', '0435');
INSERT INTO `tp_location` VALUES ('562', '吉林省', '通化市', '集安市', '14', '0435');
INSERT INTO `tp_location` VALUES ('563', '吉林省', '白山市', '八道江区', '14', '0439');
INSERT INTO `tp_location` VALUES ('564', '吉林省', '白山市', '抚松县', '14', '0439');
INSERT INTO `tp_location` VALUES ('565', '吉林省', '白山市', '靖宇县', '14', '0439');
INSERT INTO `tp_location` VALUES ('566', '吉林省', '白山市', '长白朝鲜族自治县', '14', '0439');
INSERT INTO `tp_location` VALUES ('567', '吉林省', '白山市', '江源县', '14', '0439');
INSERT INTO `tp_location` VALUES ('568', '吉林省', '白山市', '临江市', '14', '0439');
INSERT INTO `tp_location` VALUES ('569', '吉林省', '松原市', '宁江区', '14', '0438');
INSERT INTO `tp_location` VALUES ('570', '吉林省', '松原市', '前郭尔罗斯蒙古族自治县', '14', '0438');
INSERT INTO `tp_location` VALUES ('571', '吉林省', '松原市', '长岭县', '14', '0438');
INSERT INTO `tp_location` VALUES ('572', '吉林省', '松原市', '乾安县', '14', '0438');
INSERT INTO `tp_location` VALUES ('573', '吉林省', '松原市', '扶余县', '14', '0438');
INSERT INTO `tp_location` VALUES ('574', '吉林省', '白城市', '洮北区', '14', '0436');
INSERT INTO `tp_location` VALUES ('575', '吉林省', '白城市', '镇赉县', '14', '0436');
INSERT INTO `tp_location` VALUES ('576', '吉林省', '白城市', '通榆县', '14', '0436');
INSERT INTO `tp_location` VALUES ('577', '吉林省', '白城市', '洮南市', '14', '0436');
INSERT INTO `tp_location` VALUES ('578', '吉林省', '白城市', '大安市', '14', '0436');
INSERT INTO `tp_location` VALUES ('579', '吉林省', '延边朝鲜族自治州', '延吉市', '14', '0433');
INSERT INTO `tp_location` VALUES ('580', '吉林省', '延边朝鲜族自治州', '图们市', '14', '0433');
INSERT INTO `tp_location` VALUES ('581', '吉林省', '延边朝鲜族自治州', '敦化市', '14', '0433');
INSERT INTO `tp_location` VALUES ('582', '吉林省', '延边朝鲜族自治州', '珲春市', '14', '0433');
INSERT INTO `tp_location` VALUES ('583', '吉林省', '延边朝鲜族自治州', '龙井市', '14', '0433');
INSERT INTO `tp_location` VALUES ('584', '吉林省', '延边朝鲜族自治州', '和龙市', '14', '0433');
INSERT INTO `tp_location` VALUES ('585', '吉林省', '延边朝鲜族自治州', '汪清县', '14', '0433');
INSERT INTO `tp_location` VALUES ('586', '吉林省', '延边朝鲜族自治州', '安图县', '14', '0433');
INSERT INTO `tp_location` VALUES ('587', '黑龙江省', '哈尔滨市', '道里区', '11', '0451');
INSERT INTO `tp_location` VALUES ('588', '黑龙江省', '哈尔滨市', '南岗区', '11', '0451');
INSERT INTO `tp_location` VALUES ('589', '黑龙江省', '哈尔滨市', '道外区', '11', '0451');
INSERT INTO `tp_location` VALUES ('590', '黑龙江省', '哈尔滨市', '松北区', '11', '0451');
INSERT INTO `tp_location` VALUES ('591', '黑龙江省', '哈尔滨市', '香坊区', '11', '0451');
INSERT INTO `tp_location` VALUES ('592', '黑龙江省', '哈尔滨市', '阿城区', '11', '0451');
INSERT INTO `tp_location` VALUES ('593', '黑龙江省', '哈尔滨市', '平房区', '11', '0451');
INSERT INTO `tp_location` VALUES ('594', '黑龙江省', '哈尔滨市', '呼兰区', '11', '0451');
INSERT INTO `tp_location` VALUES ('595', '黑龙江省', '哈尔滨市', '依兰县', '11', '0451');
INSERT INTO `tp_location` VALUES ('596', '黑龙江省', '哈尔滨市', '方正县', '11', '0451');
INSERT INTO `tp_location` VALUES ('597', '黑龙江省', '哈尔滨市', '宾县', '11', '0451');
INSERT INTO `tp_location` VALUES ('598', '黑龙江省', '哈尔滨市', '巴彦县', '11', '0451');
INSERT INTO `tp_location` VALUES ('599', '黑龙江省', '哈尔滨市', '木兰县', '11', '0451');
INSERT INTO `tp_location` VALUES ('600', '黑龙江省', '哈尔滨市', '通河县', '11', '0451');
INSERT INTO `tp_location` VALUES ('601', '黑龙江省', '哈尔滨市', '延寿县', '11', '0451');
INSERT INTO `tp_location` VALUES ('602', '黑龙江省', '哈尔滨市', '双城市', '11', '0451');
INSERT INTO `tp_location` VALUES ('603', '黑龙江省', '哈尔滨市', '尚志市', '11', '0451');
INSERT INTO `tp_location` VALUES ('604', '黑龙江省', '哈尔滨市', '五常市', '11', '0451');
INSERT INTO `tp_location` VALUES ('605', '黑龙江省', '齐齐哈尔市', '龙沙区', '11', '0452');
INSERT INTO `tp_location` VALUES ('606', '黑龙江省', '齐齐哈尔市', '建华区', '11', '0452');
INSERT INTO `tp_location` VALUES ('607', '黑龙江省', '齐齐哈尔市', '铁锋区', '11', '0452');
INSERT INTO `tp_location` VALUES ('608', '黑龙江省', '齐齐哈尔市', '昂昂溪区', '11', '0452');
INSERT INTO `tp_location` VALUES ('609', '黑龙江省', '齐齐哈尔市', '富拉尔基区', '11', '0452');
INSERT INTO `tp_location` VALUES ('610', '黑龙江省', '齐齐哈尔市', '碾子山区', '11', '0452');
INSERT INTO `tp_location` VALUES ('611', '黑龙江省', '齐齐哈尔市', '梅里斯达斡尔族区', '11', '0452');
INSERT INTO `tp_location` VALUES ('612', '黑龙江省', '齐齐哈尔市', '龙江县', '11', '0452');
INSERT INTO `tp_location` VALUES ('613', '黑龙江省', '齐齐哈尔市', '依安县', '11', '0452');
INSERT INTO `tp_location` VALUES ('614', '黑龙江省', '齐齐哈尔市', '泰来县', '11', '0452');
INSERT INTO `tp_location` VALUES ('615', '黑龙江省', '齐齐哈尔市', '甘南县', '11', '0452');
INSERT INTO `tp_location` VALUES ('616', '黑龙江省', '齐齐哈尔市', '富裕县', '11', '0452');
INSERT INTO `tp_location` VALUES ('617', '黑龙江省', '齐齐哈尔市', '克山县', '11', '0452');
INSERT INTO `tp_location` VALUES ('618', '黑龙江省', '齐齐哈尔市', '克东县', '11', '0452');
INSERT INTO `tp_location` VALUES ('619', '黑龙江省', '齐齐哈尔市', '拜泉县', '11', '0452');
INSERT INTO `tp_location` VALUES ('620', '黑龙江省', '齐齐哈尔市', '讷河市', '11', '0452');
INSERT INTO `tp_location` VALUES ('621', '黑龙江省', '鸡西市', '鸡冠区', '11', '0467');
INSERT INTO `tp_location` VALUES ('622', '黑龙江省', '鸡西市', '恒山区', '11', '0467');
INSERT INTO `tp_location` VALUES ('623', '黑龙江省', '鸡西市', '滴道区', '11', '0467');
INSERT INTO `tp_location` VALUES ('624', '黑龙江省', '鸡西市', '梨树区', '11', '0467');
INSERT INTO `tp_location` VALUES ('625', '黑龙江省', '鸡西市', '城子河区', '11', '0467');
INSERT INTO `tp_location` VALUES ('626', '黑龙江省', '鸡西市', '麻山区', '11', '0467');
INSERT INTO `tp_location` VALUES ('627', '黑龙江省', '鸡西市', '鸡东县', '11', '0467');
INSERT INTO `tp_location` VALUES ('628', '黑龙江省', '鸡西市', '虎林市', '11', '0467');
INSERT INTO `tp_location` VALUES ('629', '黑龙江省', '鸡西市', '密山市', '11', '0467');
INSERT INTO `tp_location` VALUES ('630', '黑龙江省', '鹤岗市', '向阳区', '11', '0468');
INSERT INTO `tp_location` VALUES ('631', '黑龙江省', '鹤岗市', '工农区', '11', '0468');
INSERT INTO `tp_location` VALUES ('632', '黑龙江省', '鹤岗市', '南山区', '11', '0468');
INSERT INTO `tp_location` VALUES ('633', '黑龙江省', '鹤岗市', '兴安区', '11', '0468');
INSERT INTO `tp_location` VALUES ('634', '黑龙江省', '鹤岗市', '东山区', '11', '0468');
INSERT INTO `tp_location` VALUES ('635', '黑龙江省', '鹤岗市', '兴山区', '11', '0468');
INSERT INTO `tp_location` VALUES ('636', '黑龙江省', '鹤岗市', '萝北县', '11', '0468');
INSERT INTO `tp_location` VALUES ('637', '黑龙江省', '鹤岗市', '绥滨县', '11', '0468');
INSERT INTO `tp_location` VALUES ('638', '黑龙江省', '双鸭山市', '尖山区', '11', '0469');
INSERT INTO `tp_location` VALUES ('639', '黑龙江省', '双鸭山市', '岭东区', '11', '0469');
INSERT INTO `tp_location` VALUES ('640', '黑龙江省', '双鸭山市', '四方台区', '11', '0469');
INSERT INTO `tp_location` VALUES ('641', '黑龙江省', '双鸭山市', '宝山区', '11', '0469');
INSERT INTO `tp_location` VALUES ('642', '黑龙江省', '双鸭山市', '集贤县', '11', '0469');
INSERT INTO `tp_location` VALUES ('643', '黑龙江省', '双鸭山市', '友谊县', '11', '0469');
INSERT INTO `tp_location` VALUES ('644', '黑龙江省', '双鸭山市', '宝清县', '11', '0469');
INSERT INTO `tp_location` VALUES ('645', '黑龙江省', '双鸭山市', '饶河县', '11', '0469');
INSERT INTO `tp_location` VALUES ('646', '黑龙江省', '大庆市', '萨尔图区', '11', '0459');
INSERT INTO `tp_location` VALUES ('647', '黑龙江省', '大庆市', '龙凤区', '11', '0459');
INSERT INTO `tp_location` VALUES ('648', '黑龙江省', '大庆市', '让胡路区', '11', '0459');
INSERT INTO `tp_location` VALUES ('649', '黑龙江省', '大庆市', '红岗区', '11', '0459');
INSERT INTO `tp_location` VALUES ('650', '黑龙江省', '大庆市', '大同区', '11', '0459');
INSERT INTO `tp_location` VALUES ('651', '黑龙江省', '大庆市', '肇州县', '11', '0459');
INSERT INTO `tp_location` VALUES ('652', '黑龙江省', '大庆市', '肇源县', '11', '0459');
INSERT INTO `tp_location` VALUES ('653', '黑龙江省', '大庆市', '林甸县', '11', '0459');
INSERT INTO `tp_location` VALUES ('654', '黑龙江省', '大庆市', '杜尔伯特蒙古族自治县', '11', '0459');
INSERT INTO `tp_location` VALUES ('655', '黑龙江省', '伊春市', '伊春区', '11', '0458');
INSERT INTO `tp_location` VALUES ('656', '黑龙江省', '伊春市', '南岔区', '11', '0458');
INSERT INTO `tp_location` VALUES ('657', '黑龙江省', '伊春市', '友好区', '11', '0458');
INSERT INTO `tp_location` VALUES ('658', '黑龙江省', '伊春市', '西林区', '11', '0458');
INSERT INTO `tp_location` VALUES ('659', '黑龙江省', '伊春市', '翠峦区', '11', '0458');
INSERT INTO `tp_location` VALUES ('660', '黑龙江省', '伊春市', '新青区', '11', '0458');
INSERT INTO `tp_location` VALUES ('661', '黑龙江省', '伊春市', '美溪区', '11', '0458');
INSERT INTO `tp_location` VALUES ('662', '黑龙江省', '伊春市', '金山屯区', '11', '0458');
INSERT INTO `tp_location` VALUES ('663', '黑龙江省', '伊春市', '五营区', '11', '0458');
INSERT INTO `tp_location` VALUES ('664', '黑龙江省', '伊春市', '乌马河区', '11', '0458');
INSERT INTO `tp_location` VALUES ('665', '黑龙江省', '伊春市', '汤旺河区', '11', '0458');
INSERT INTO `tp_location` VALUES ('666', '黑龙江省', '伊春市', '带岭区', '11', '0458');
INSERT INTO `tp_location` VALUES ('667', '黑龙江省', '伊春市', '乌伊岭区', '11', '0458');
INSERT INTO `tp_location` VALUES ('668', '黑龙江省', '伊春市', '红星区', '11', '0458');
INSERT INTO `tp_location` VALUES ('669', '黑龙江省', '伊春市', '上甘岭区', '11', '0458');
INSERT INTO `tp_location` VALUES ('670', '黑龙江省', '伊春市', '嘉荫县', '11', '0458');
INSERT INTO `tp_location` VALUES ('671', '黑龙江省', '伊春市', '铁力市', '11', '0458');
INSERT INTO `tp_location` VALUES ('672', '黑龙江省', '佳木斯市', '向阳区', '11', '0454');
INSERT INTO `tp_location` VALUES ('673', '黑龙江省', '佳木斯市', '前进区', '11', '0454');
INSERT INTO `tp_location` VALUES ('674', '黑龙江省', '佳木斯市', '东风区', '11', '0454');
INSERT INTO `tp_location` VALUES ('675', '黑龙江省', '佳木斯市', '佳木斯郊区', '11', '0454');
INSERT INTO `tp_location` VALUES ('676', '黑龙江省', '佳木斯市', '桦南县', '11', '0454');
INSERT INTO `tp_location` VALUES ('677', '黑龙江省', '佳木斯市', '桦川县', '11', '0454');
INSERT INTO `tp_location` VALUES ('678', '黑龙江省', '佳木斯市', '汤原县', '11', '0454');
INSERT INTO `tp_location` VALUES ('679', '黑龙江省', '佳木斯市', '抚远县', '11', '0454');
INSERT INTO `tp_location` VALUES ('680', '黑龙江省', '佳木斯市', '同江市', '11', '0454');
INSERT INTO `tp_location` VALUES ('681', '黑龙江省', '佳木斯市', '富锦市', '11', '0454');
INSERT INTO `tp_location` VALUES ('682', '黑龙江省', '七台河市', '新兴区', '11', '0464');
INSERT INTO `tp_location` VALUES ('683', '黑龙江省', '七台河市', '桃山区', '11', '0464');
INSERT INTO `tp_location` VALUES ('684', '黑龙江省', '七台河市', '茄子河区', '11', '0464');
INSERT INTO `tp_location` VALUES ('685', '黑龙江省', '七台河市', '勃利县', '11', '0464');
INSERT INTO `tp_location` VALUES ('686', '黑龙江省', '牡丹江市', '东安区', '11', '0453');
INSERT INTO `tp_location` VALUES ('687', '黑龙江省', '牡丹江市', '阳明区', '11', '0453');
INSERT INTO `tp_location` VALUES ('688', '黑龙江省', '牡丹江市', '爱民区', '11', '0453');
INSERT INTO `tp_location` VALUES ('689', '黑龙江省', '牡丹江市', '西安区', '11', '0453');
INSERT INTO `tp_location` VALUES ('690', '黑龙江省', '牡丹江市', '东宁县', '11', '0453');
INSERT INTO `tp_location` VALUES ('691', '黑龙江省', '牡丹江市', '林口县', '11', '0453');
INSERT INTO `tp_location` VALUES ('692', '黑龙江省', '牡丹江市', '绥芬河市', '11', '0453');
INSERT INTO `tp_location` VALUES ('693', '黑龙江省', '牡丹江市', '海林市', '11', '0453');
INSERT INTO `tp_location` VALUES ('694', '黑龙江省', '牡丹江市', '宁安市', '11', '0453');
INSERT INTO `tp_location` VALUES ('695', '黑龙江省', '牡丹江市', '穆棱市', '11', '0453');
INSERT INTO `tp_location` VALUES ('696', '黑龙江省', '黑河市', '爱辉区', '11', '0456');
INSERT INTO `tp_location` VALUES ('697', '黑龙江省', '黑河市', '嫩江县', '11', '0456');
INSERT INTO `tp_location` VALUES ('698', '黑龙江省', '黑河市', '逊克县', '11', '0456');
INSERT INTO `tp_location` VALUES ('699', '黑龙江省', '黑河市', '孙吴县', '11', '0456');
INSERT INTO `tp_location` VALUES ('700', '黑龙江省', '黑河市', '北安市', '11', '0456');
INSERT INTO `tp_location` VALUES ('701', '黑龙江省', '黑河市', '五大连池市', '11', '0456');
INSERT INTO `tp_location` VALUES ('702', '黑龙江省', '绥化市', '绥化市', '11', '0455');
INSERT INTO `tp_location` VALUES ('703', '黑龙江省', '绥化市', '安达市', '11', '0455');
INSERT INTO `tp_location` VALUES ('704', '黑龙江省', '绥化市', '肇东市', '11', '0455');
INSERT INTO `tp_location` VALUES ('705', '黑龙江省', '绥化市', '海伦市', '11', '0455');
INSERT INTO `tp_location` VALUES ('706', '黑龙江省', '绥化市', '望奎县', '11', '0455');
INSERT INTO `tp_location` VALUES ('707', '黑龙江省', '绥化市', '兰西县', '11', '0455');
INSERT INTO `tp_location` VALUES ('708', '黑龙江省', '绥化市', '青冈县', '11', '0455');
INSERT INTO `tp_location` VALUES ('709', '黑龙江省', '绥化市', '庆安县', '11', '0455');
INSERT INTO `tp_location` VALUES ('710', '黑龙江省', '绥化市', '明水县', '11', '0455');
INSERT INTO `tp_location` VALUES ('711', '黑龙江省', '绥化市', '绥棱县', '11', '0455');
INSERT INTO `tp_location` VALUES ('712', '黑龙江省', '大兴安岭地区', '呼玛县', '11', '0457');
INSERT INTO `tp_location` VALUES ('713', '黑龙江省', '大兴安岭地区', '塔河县', '11', '0457');
INSERT INTO `tp_location` VALUES ('714', '黑龙江省', '大兴安岭地区', '漠河县', '11', '0457');
INSERT INTO `tp_location` VALUES ('715', '上海市', '上海市', '浦东新区', '24', '021');
INSERT INTO `tp_location` VALUES ('716', '上海市', '上海市', '徐汇区', '24', '021');
INSERT INTO `tp_location` VALUES ('717', '上海市', '上海市', '黄浦区', '24', '021');
INSERT INTO `tp_location` VALUES ('718', '上海市', '上海市', '杨浦区', '24', '021');
INSERT INTO `tp_location` VALUES ('719', '上海市', '上海市', '虹口区', '24', '021');
INSERT INTO `tp_location` VALUES ('720', '上海市', '上海市', '闵行区', '24', '021');
INSERT INTO `tp_location` VALUES ('721', '上海市', '上海市', '长宁区', '24', '021');
INSERT INTO `tp_location` VALUES ('722', '上海市', '上海市', '普陀区', '24', '021');
INSERT INTO `tp_location` VALUES ('723', '上海市', '上海市', '宝山区', '24', '021');
INSERT INTO `tp_location` VALUES ('724', '上海市', '上海市', '静安区', '24', '021');
INSERT INTO `tp_location` VALUES ('725', '上海市', '上海市', '闸北区', '24', '021');
INSERT INTO `tp_location` VALUES ('726', '上海市', '上海市', '卢湾区', '24', '021');
INSERT INTO `tp_location` VALUES ('727', '上海市', '上海市', '松江区', '24', '021');
INSERT INTO `tp_location` VALUES ('728', '上海市', '上海市', '嘉定区', '24', '021');
INSERT INTO `tp_location` VALUES ('729', '上海市', '上海市', '南汇区', '24', '021');
INSERT INTO `tp_location` VALUES ('730', '上海市', '上海市', '金山区', '24', '021');
INSERT INTO `tp_location` VALUES ('731', '上海市', '上海市', '青浦区', '24', '021');
INSERT INTO `tp_location` VALUES ('732', '上海市', '上海市', '奉贤区', '24', '021');
INSERT INTO `tp_location` VALUES ('733', '上海市', '上海市', '崇明县', '24', '021');
INSERT INTO `tp_location` VALUES ('734', '江苏省', '南京市', '玄武区', '15', '025');
INSERT INTO `tp_location` VALUES ('735', '江苏省', '南京市', '白下区', '15', '025');
INSERT INTO `tp_location` VALUES ('736', '江苏省', '南京市', '秦淮区', '15', '025');
INSERT INTO `tp_location` VALUES ('737', '江苏省', '南京市', '建邺区', '15', '025');
INSERT INTO `tp_location` VALUES ('738', '江苏省', '南京市', '鼓楼区', '15', '025');
INSERT INTO `tp_location` VALUES ('739', '江苏省', '南京市', '下关区', '15', '025');
INSERT INTO `tp_location` VALUES ('740', '江苏省', '南京市', '浦口区', '15', '025');
INSERT INTO `tp_location` VALUES ('741', '江苏省', '南京市', '栖霞区', '15', '025');
INSERT INTO `tp_location` VALUES ('742', '江苏省', '南京市', '雨花台区', '15', '025');
INSERT INTO `tp_location` VALUES ('743', '江苏省', '南京市', '江宁区', '15', '025');
INSERT INTO `tp_location` VALUES ('744', '江苏省', '南京市', '六合区', '15', '025');
INSERT INTO `tp_location` VALUES ('745', '江苏省', '南京市', '溧水县', '15', '025');
INSERT INTO `tp_location` VALUES ('746', '江苏省', '南京市', '高淳县', '15', '025');
INSERT INTO `tp_location` VALUES ('747', '江苏省', '无锡市', '崇安区', '15', '0510');
INSERT INTO `tp_location` VALUES ('748', '江苏省', '无锡市', '南长区', '15', '0510');
INSERT INTO `tp_location` VALUES ('749', '江苏省', '无锡市', '北塘区', '15', '0510');
INSERT INTO `tp_location` VALUES ('750', '江苏省', '无锡市', '惠山区', '15', '0510');
INSERT INTO `tp_location` VALUES ('751', '江苏省', '无锡市', '无锡新区', '15', '0510');
INSERT INTO `tp_location` VALUES ('752', '江苏省', '无锡市', '江阴市', '15', '0510');
INSERT INTO `tp_location` VALUES ('753', '江苏省', '无锡市', '宜兴市', '15', '0510');
INSERT INTO `tp_location` VALUES ('754', '江苏省', '无锡市', '锡山区', '15', '0510');
INSERT INTO `tp_location` VALUES ('755', '江苏省', '无锡市', '滨湖区', '15', '0510');
INSERT INTO `tp_location` VALUES ('756', '江苏省', '徐州市', '鼓楼区', '15', '0516');
INSERT INTO `tp_location` VALUES ('757', '江苏省', '徐州市', '云龙区', '15', '0516');
INSERT INTO `tp_location` VALUES ('758', '江苏省', '徐州市', '九里区', '15', '0516');
INSERT INTO `tp_location` VALUES ('759', '江苏省', '徐州市', '贾汪区', '15', '0516');
INSERT INTO `tp_location` VALUES ('760', '江苏省', '徐州市', '泉山区', '15', '0516');
INSERT INTO `tp_location` VALUES ('761', '江苏省', '徐州市', '丰县', '15', '0516');
INSERT INTO `tp_location` VALUES ('762', '江苏省', '徐州市', '沛县', '15', '0516');
INSERT INTO `tp_location` VALUES ('763', '江苏省', '徐州市', '铜山县', '15', '0516');
INSERT INTO `tp_location` VALUES ('764', '江苏省', '徐州市', '睢宁县', '15', '0516');
INSERT INTO `tp_location` VALUES ('765', '江苏省', '徐州市', '新沂市', '15', '0516');
INSERT INTO `tp_location` VALUES ('766', '江苏省', '徐州市', '邳州市', '15', '0516');
INSERT INTO `tp_location` VALUES ('767', '江苏省', '常州市', '天宁区', '15', '0519');
INSERT INTO `tp_location` VALUES ('768', '江苏省', '常州市', '钟楼区', '15', '0519');
INSERT INTO `tp_location` VALUES ('769', '江苏省', '常州市', '戚墅堰区', '15', '0519');
INSERT INTO `tp_location` VALUES ('770', '江苏省', '常州市', '溧阳市', '15', '0519');
INSERT INTO `tp_location` VALUES ('771', '江苏省', '常州市', '金坛市', '15', '0519');
INSERT INTO `tp_location` VALUES ('772', '江苏省', '常州市', '武进区', '15', '0519');
INSERT INTO `tp_location` VALUES ('773', '江苏省', '苏州市', '苏州工业园区', '15', '0512');
INSERT INTO `tp_location` VALUES ('774', '江苏省', '苏州市', '吴中区', '15', '0512');
INSERT INTO `tp_location` VALUES ('775', '江苏省', '苏州市', '常熟市', '15', '0512');
INSERT INTO `tp_location` VALUES ('776', '江苏省', '苏州市', '昆山市', '15', '0512');
INSERT INTO `tp_location` VALUES ('777', '江苏省', '苏州市', '太仓市', '15', '0512');
INSERT INTO `tp_location` VALUES ('778', '江苏省', '苏州市', '姑苏区', '15', '0512');
INSERT INTO `tp_location` VALUES ('779', '江苏省', '苏州市', '虎丘区', '15', '0512');
INSERT INTO `tp_location` VALUES ('780', '江苏省', '苏州市', '相城区', '15', '0512');
INSERT INTO `tp_location` VALUES ('781', '江苏省', '苏州市', '张家港市', '15', '0512');
INSERT INTO `tp_location` VALUES ('782', '江苏省', '苏州市', '吴江区', '15', '0512');
INSERT INTO `tp_location` VALUES ('783', '江苏省', '南通市', '崇川区', '15', '0513');
INSERT INTO `tp_location` VALUES ('784', '江苏省', '南通市', '港闸区', '15', '0513');
INSERT INTO `tp_location` VALUES ('785', '江苏省', '南通市', '海安县', '15', '0513');
INSERT INTO `tp_location` VALUES ('786', '江苏省', '南通市', '如东县', '15', '0513');
INSERT INTO `tp_location` VALUES ('787', '江苏省', '南通市', '启东市', '15', '0513');
INSERT INTO `tp_location` VALUES ('788', '江苏省', '南通市', '如皋市', '15', '0513');
INSERT INTO `tp_location` VALUES ('789', '江苏省', '南通市', '通州市', '15', '0513');
INSERT INTO `tp_location` VALUES ('790', '江苏省', '南通市', '海门市', '15', '0513');
INSERT INTO `tp_location` VALUES ('791', '江苏省', '连云港市', '连云区', '15', '0518');
INSERT INTO `tp_location` VALUES ('792', '江苏省', '连云港市', '新浦区', '15', '0518');
INSERT INTO `tp_location` VALUES ('793', '江苏省', '连云港市', '海州区', '15', '0518');
INSERT INTO `tp_location` VALUES ('794', '江苏省', '连云港市', '赣榆县', '15', '0518');
INSERT INTO `tp_location` VALUES ('795', '江苏省', '连云港市', '东海县', '15', '0518');
INSERT INTO `tp_location` VALUES ('796', '江苏省', '连云港市', '灌云县', '15', '0518');
INSERT INTO `tp_location` VALUES ('797', '江苏省', '连云港市', '灌南县', '15', '0518');
INSERT INTO `tp_location` VALUES ('798', '江苏省', '淮安市', '清河区', '15', '0517');
INSERT INTO `tp_location` VALUES ('799', '江苏省', '淮安市', '清浦区', '15', '0517');
INSERT INTO `tp_location` VALUES ('800', '江苏省', '淮安市', '淮阴区', '15', '0517');
INSERT INTO `tp_location` VALUES ('801', '江苏省', '淮安市', '涟水县', '15', '0517');
INSERT INTO `tp_location` VALUES ('802', '江苏省', '淮安市', '洪泽县', '15', '0517');
INSERT INTO `tp_location` VALUES ('803', '江苏省', '淮安市', '盱眙县', '15', '0517');
INSERT INTO `tp_location` VALUES ('804', '江苏省', '淮安市', '金湖县', '15', '0517');
INSERT INTO `tp_location` VALUES ('805', '江苏省', '淮安市', '淮安区', '15', '0517');
INSERT INTO `tp_location` VALUES ('806', '江苏省', '盐城市', '亭湖区', '15', '0515');
INSERT INTO `tp_location` VALUES ('807', '江苏省', '盐城市', '响水县', '15', '0515');
INSERT INTO `tp_location` VALUES ('808', '江苏省', '盐城市', '滨海县', '15', '0515');
INSERT INTO `tp_location` VALUES ('809', '江苏省', '盐城市', '阜宁县', '15', '0515');
INSERT INTO `tp_location` VALUES ('810', '江苏省', '盐城市', '射阳县', '15', '0515');
INSERT INTO `tp_location` VALUES ('811', '江苏省', '盐城市', '建湖县', '15', '0515');
INSERT INTO `tp_location` VALUES ('812', '江苏省', '盐城市', '盐都区', '15', '0515');
INSERT INTO `tp_location` VALUES ('813', '江苏省', '盐城市', '东台市', '15', '0515');
INSERT INTO `tp_location` VALUES ('814', '江苏省', '盐城市', '大丰市', '15', '0515');
INSERT INTO `tp_location` VALUES ('815', '江苏省', '扬州市', '广陵区', '15', '0514');
INSERT INTO `tp_location` VALUES ('816', '江苏省', '扬州市', '宝应县', '15', '0514');
INSERT INTO `tp_location` VALUES ('817', '江苏省', '扬州市', '邗江区', '15', '0514');
INSERT INTO `tp_location` VALUES ('818', '江苏省', '扬州市', '仪征市', '15', '0514');
INSERT INTO `tp_location` VALUES ('819', '江苏省', '扬州市', '高邮市', '15', '0514');
INSERT INTO `tp_location` VALUES ('820', '江苏省', '扬州市', '江都区', '15', '0514');
INSERT INTO `tp_location` VALUES ('821', '江苏省', '镇江市', '京口区', '15', '0511');
INSERT INTO `tp_location` VALUES ('822', '江苏省', '镇江市', '润州区', '15', '0511');
INSERT INTO `tp_location` VALUES ('823', '江苏省', '镇江市', '镇江新区', '15', '0511');
INSERT INTO `tp_location` VALUES ('824', '江苏省', '镇江市', '丹徒区', '15', '0511');
INSERT INTO `tp_location` VALUES ('825', '江苏省', '镇江市', '丹阳市', '15', '0511');
INSERT INTO `tp_location` VALUES ('826', '江苏省', '镇江市', '扬中市', '15', '0511');
INSERT INTO `tp_location` VALUES ('827', '江苏省', '镇江市', '句容市', '15', '0511');
INSERT INTO `tp_location` VALUES ('828', '江苏省', '泰州市', '海陵区', '15', '0523');
INSERT INTO `tp_location` VALUES ('829', '江苏省', '泰州市', '高港区', '15', '0523');
INSERT INTO `tp_location` VALUES ('830', '江苏省', '泰州市', '兴化市', '15', '0523');
INSERT INTO `tp_location` VALUES ('831', '江苏省', '泰州市', '靖江市', '15', '0523');
INSERT INTO `tp_location` VALUES ('832', '江苏省', '泰州市', '泰兴市', '15', '0523');
INSERT INTO `tp_location` VALUES ('833', '江苏省', '泰州市', '姜堰市', '15', '0523');
INSERT INTO `tp_location` VALUES ('834', '江苏省', '宿迁市', '宿城区', '15', '0527');
INSERT INTO `tp_location` VALUES ('835', '江苏省', '宿迁市', '宿豫区', '15', '0527');
INSERT INTO `tp_location` VALUES ('836', '江苏省', '宿迁市', '沭阳县', '15', '0527');
INSERT INTO `tp_location` VALUES ('837', '江苏省', '宿迁市', '泗阳县', '15', '0527');
INSERT INTO `tp_location` VALUES ('838', '江苏省', '宿迁市', '泗洪县', '15', '0527');
INSERT INTO `tp_location` VALUES ('839', '浙江省', '杭州市', '上城区', '30', '0571');
INSERT INTO `tp_location` VALUES ('840', '浙江省', '杭州市', '下城区', '30', '0571');
INSERT INTO `tp_location` VALUES ('841', '浙江省', '杭州市', '江干区', '30', '0571');
INSERT INTO `tp_location` VALUES ('842', '浙江省', '杭州市', '拱墅区', '30', '0571');
INSERT INTO `tp_location` VALUES ('843', '浙江省', '杭州市', '西湖区', '30', '0571');
INSERT INTO `tp_location` VALUES ('844', '浙江省', '杭州市', '滨江区', '30', '0571');
INSERT INTO `tp_location` VALUES ('845', '浙江省', '杭州市', '桐庐县', '30', '0571');
INSERT INTO `tp_location` VALUES ('846', '浙江省', '杭州市', '淳安县', '30', '0571');
INSERT INTO `tp_location` VALUES ('847', '浙江省', '杭州市', '萧山区', '30', '0571');
INSERT INTO `tp_location` VALUES ('848', '浙江省', '杭州市', '建德市', '30', '0571');
INSERT INTO `tp_location` VALUES ('849', '浙江省', '杭州市', '富阳市', '30', '0571');
INSERT INTO `tp_location` VALUES ('850', '浙江省', '杭州市', '余杭区', '30', '0571');
INSERT INTO `tp_location` VALUES ('851', '浙江省', '杭州市', '临安市', '30', '0571');
INSERT INTO `tp_location` VALUES ('852', '浙江省', '宁波市', '海曙区', '30', '0574');
INSERT INTO `tp_location` VALUES ('853', '浙江省', '宁波市', '江东区', '30', '0574');
INSERT INTO `tp_location` VALUES ('854', '浙江省', '宁波市', '江北区', '30', '0574');
INSERT INTO `tp_location` VALUES ('855', '浙江省', '宁波市', '北仑区', '30', '0574');
INSERT INTO `tp_location` VALUES ('856', '浙江省', '宁波市', '镇海区', '30', '0574');
INSERT INTO `tp_location` VALUES ('857', '浙江省', '宁波市', '象山县', '30', '0574');
INSERT INTO `tp_location` VALUES ('858', '浙江省', '宁波市', '宁海县', '30', '0574');
INSERT INTO `tp_location` VALUES ('859', '浙江省', '宁波市', '鄞州区', '30', '0574');
INSERT INTO `tp_location` VALUES ('860', '浙江省', '宁波市', '余姚市', '30', '0574');
INSERT INTO `tp_location` VALUES ('861', '浙江省', '宁波市', '慈溪市', '30', '0574');
INSERT INTO `tp_location` VALUES ('862', '浙江省', '宁波市', '奉化市', '30', '0574');
INSERT INTO `tp_location` VALUES ('863', '浙江省', '温州市', '鹿城区', '30', '0577');
INSERT INTO `tp_location` VALUES ('864', '浙江省', '温州市', '龙湾区', '30', '0577');
INSERT INTO `tp_location` VALUES ('865', '浙江省', '温州市', '瓯海区', '30', '0577');
INSERT INTO `tp_location` VALUES ('866', '浙江省', '温州市', '洞头县', '30', '0577');
INSERT INTO `tp_location` VALUES ('867', '浙江省', '温州市', '永嘉县', '30', '0577');
INSERT INTO `tp_location` VALUES ('868', '浙江省', '温州市', '平阳县', '30', '0577');
INSERT INTO `tp_location` VALUES ('869', '浙江省', '温州市', '苍南县', '30', '0577');
INSERT INTO `tp_location` VALUES ('870', '浙江省', '温州市', '文成县', '30', '0577');
INSERT INTO `tp_location` VALUES ('871', '浙江省', '温州市', '泰顺县', '30', '0577');
INSERT INTO `tp_location` VALUES ('872', '浙江省', '温州市', '瑞安市', '30', '0577');
INSERT INTO `tp_location` VALUES ('873', '浙江省', '温州市', '乐清市', '30', '0577');
INSERT INTO `tp_location` VALUES ('874', '浙江省', '嘉兴市', '秀洲区', '30', '0573');
INSERT INTO `tp_location` VALUES ('875', '浙江省', '嘉兴市', '南湖区', '30', '0573');
INSERT INTO `tp_location` VALUES ('876', '浙江省', '嘉兴市', '嘉善县', '30', '0573');
INSERT INTO `tp_location` VALUES ('877', '浙江省', '嘉兴市', '海盐县', '30', '0573');
INSERT INTO `tp_location` VALUES ('878', '浙江省', '嘉兴市', '海宁市', '30', '0573');
INSERT INTO `tp_location` VALUES ('879', '浙江省', '嘉兴市', '平湖市', '30', '0573');
INSERT INTO `tp_location` VALUES ('880', '浙江省', '嘉兴市', '桐乡市', '30', '0573');
INSERT INTO `tp_location` VALUES ('881', '浙江省', '湖州市', '吴兴区', '30', '0572');
INSERT INTO `tp_location` VALUES ('882', '浙江省', '湖州市', '南浔区', '30', '0572');
INSERT INTO `tp_location` VALUES ('883', '浙江省', '湖州市', '德清县', '30', '0572');
INSERT INTO `tp_location` VALUES ('884', '浙江省', '湖州市', '长兴县', '30', '0572');
INSERT INTO `tp_location` VALUES ('885', '浙江省', '湖州市', '安吉县', '30', '0572');
INSERT INTO `tp_location` VALUES ('886', '浙江省', '绍兴市', '越城区', '30', '0575');
INSERT INTO `tp_location` VALUES ('887', '浙江省', '绍兴市', '绍兴县', '30', '0575');
INSERT INTO `tp_location` VALUES ('888', '浙江省', '绍兴市', '新昌县', '30', '0575');
INSERT INTO `tp_location` VALUES ('889', '浙江省', '绍兴市', '诸暨市', '30', '0575');
INSERT INTO `tp_location` VALUES ('890', '浙江省', '绍兴市', '上虞市', '30', '0575');
INSERT INTO `tp_location` VALUES ('891', '浙江省', '绍兴市', '嵊州市', '30', '0575');
INSERT INTO `tp_location` VALUES ('892', '浙江省', '金华市', '婺城区', '30', '0579');
INSERT INTO `tp_location` VALUES ('893', '浙江省', '金华市', '金东区', '30', '0579');
INSERT INTO `tp_location` VALUES ('894', '浙江省', '金华市', '武义县', '30', '0579');
INSERT INTO `tp_location` VALUES ('895', '浙江省', '金华市', '浦江县', '30', '0579');
INSERT INTO `tp_location` VALUES ('896', '浙江省', '金华市', '磐安县', '30', '0579');
INSERT INTO `tp_location` VALUES ('897', '浙江省', '金华市', '兰溪市', '30', '0579');
INSERT INTO `tp_location` VALUES ('898', '浙江省', '金华市', '义乌市', '30', '0579');
INSERT INTO `tp_location` VALUES ('899', '浙江省', '金华市', '东阳市', '30', '0579');
INSERT INTO `tp_location` VALUES ('900', '浙江省', '金华市', '永康市', '30', '0579');
INSERT INTO `tp_location` VALUES ('901', '浙江省', '衢州市', '柯城区', '30', '0570');
INSERT INTO `tp_location` VALUES ('902', '浙江省', '衢州市', '衢江区', '30', '0570');
INSERT INTO `tp_location` VALUES ('903', '浙江省', '衢州市', '常山县', '30', '0570');
INSERT INTO `tp_location` VALUES ('904', '浙江省', '衢州市', '开化县', '30', '0570');
INSERT INTO `tp_location` VALUES ('905', '浙江省', '衢州市', '龙游县', '30', '0570');
INSERT INTO `tp_location` VALUES ('906', '浙江省', '衢州市', '江山市', '30', '0570');
INSERT INTO `tp_location` VALUES ('907', '浙江省', '舟山市', '定海区', '30', '0580');
INSERT INTO `tp_location` VALUES ('908', '浙江省', '舟山市', '普陀区', '30', '0580');
INSERT INTO `tp_location` VALUES ('909', '浙江省', '舟山市', '岱山县', '30', '0580');
INSERT INTO `tp_location` VALUES ('910', '浙江省', '舟山市', '嵊泗县', '30', '0580');
INSERT INTO `tp_location` VALUES ('911', '浙江省', '台州市', '椒江区', '30', '0576');
INSERT INTO `tp_location` VALUES ('912', '浙江省', '台州市', '黄岩区', '30', '0576');
INSERT INTO `tp_location` VALUES ('913', '浙江省', '台州市', '路桥区', '30', '0576');
INSERT INTO `tp_location` VALUES ('914', '浙江省', '台州市', '玉环县', '30', '0576');
INSERT INTO `tp_location` VALUES ('915', '浙江省', '台州市', '三门县', '30', '0576');
INSERT INTO `tp_location` VALUES ('916', '浙江省', '台州市', '天台县', '30', '0576');
INSERT INTO `tp_location` VALUES ('917', '浙江省', '台州市', '仙居县', '30', '0576');
INSERT INTO `tp_location` VALUES ('918', '浙江省', '台州市', '温岭市', '30', '0576');
INSERT INTO `tp_location` VALUES ('919', '浙江省', '台州市', '临海市', '30', '0576');
INSERT INTO `tp_location` VALUES ('920', '浙江省', '丽水市', '丽水市', '30', '0578');
INSERT INTO `tp_location` VALUES ('921', '浙江省', '丽水市', '龙泉市', '30', '0578');
INSERT INTO `tp_location` VALUES ('922', '浙江省', '丽水市', '青田县', '30', '0578');
INSERT INTO `tp_location` VALUES ('923', '浙江省', '丽水市', '云和县', '30', '0578');
INSERT INTO `tp_location` VALUES ('924', '浙江省', '丽水市', '庆元县', '30', '0578');
INSERT INTO `tp_location` VALUES ('925', '浙江省', '丽水市', '缙云县', '30', '0578');
INSERT INTO `tp_location` VALUES ('926', '浙江省', '丽水市', '遂昌县', '30', '0578');
INSERT INTO `tp_location` VALUES ('927', '浙江省', '丽水市', '松阳县', '30', '0578');
INSERT INTO `tp_location` VALUES ('928', '浙江省', '丽水市', '景宁畲族自治县', '30', '0578');
INSERT INTO `tp_location` VALUES ('929', '安徽省', '合肥市', '瑶海区', '01', '0551');
INSERT INTO `tp_location` VALUES ('930', '安徽省', '合肥市', '庐阳区', '01', '0551');
INSERT INTO `tp_location` VALUES ('931', '安徽省', '合肥市', '蜀山区', '01', '0551');
INSERT INTO `tp_location` VALUES ('932', '安徽省', '合肥市', '包河区', '01', '0551');
INSERT INTO `tp_location` VALUES ('933', '安徽省', '合肥市', '巢湖市', '01', '0551');
INSERT INTO `tp_location` VALUES ('934', '安徽省', '合肥市', '长丰县', '01', '0551');
INSERT INTO `tp_location` VALUES ('935', '安徽省', '合肥市', '肥东县', '01', '0551');
INSERT INTO `tp_location` VALUES ('936', '安徽省', '合肥市', '肥西县', '01', '0551');
INSERT INTO `tp_location` VALUES ('937', '安徽省', '合肥市', '庐江县', '01', '0551');
INSERT INTO `tp_location` VALUES ('938', '安徽省', '芜湖市', '镜湖区', '01', '0553');
INSERT INTO `tp_location` VALUES ('939', '安徽省', '芜湖市', '三山区', '01', '0553');
INSERT INTO `tp_location` VALUES ('940', '安徽省', '芜湖市', '弋江区', '01', '0553');
INSERT INTO `tp_location` VALUES ('941', '安徽省', '芜湖市', '鸠江区', '01', '0553');
INSERT INTO `tp_location` VALUES ('942', '安徽省', '芜湖市', '芜湖县', '01', '0553');
INSERT INTO `tp_location` VALUES ('943', '安徽省', '芜湖市', '繁昌县', '01', '0553');
INSERT INTO `tp_location` VALUES ('944', '安徽省', '芜湖市', '南陵县', '01', '0553');
INSERT INTO `tp_location` VALUES ('945', '安徽省', '芜湖市', '无为县', '01', '0553');
INSERT INTO `tp_location` VALUES ('946', '安徽省', '蚌埠市', '龙子湖区', '01', '0552');
INSERT INTO `tp_location` VALUES ('947', '安徽省', '蚌埠市', '禹会区', '01', '0552');
INSERT INTO `tp_location` VALUES ('948', '安徽省', '蚌埠市', '蚌山区', '01', '0552');
INSERT INTO `tp_location` VALUES ('949', '安徽省', '蚌埠市', '淮上区', '01', '0552');
INSERT INTO `tp_location` VALUES ('950', '安徽省', '蚌埠市', '怀远县', '01', '0552');
INSERT INTO `tp_location` VALUES ('951', '安徽省', '蚌埠市', '五河县', '01', '0552');
INSERT INTO `tp_location` VALUES ('952', '安徽省', '蚌埠市', '固镇县', '01', '0552');
INSERT INTO `tp_location` VALUES ('953', '安徽省', '淮南市', '大通区', '01', '0554');
INSERT INTO `tp_location` VALUES ('954', '安徽省', '淮南市', '田家庵区', '01', '0554');
INSERT INTO `tp_location` VALUES ('955', '安徽省', '淮南市', '谢家集区', '01', '0554');
INSERT INTO `tp_location` VALUES ('956', '安徽省', '淮南市', '八公山区', '01', '0554');
INSERT INTO `tp_location` VALUES ('957', '安徽省', '淮南市', '潘集区', '01', '0554');
INSERT INTO `tp_location` VALUES ('958', '安徽省', '淮南市', '凤台县', '01', '0554');
INSERT INTO `tp_location` VALUES ('959', '安徽省', '马鞍山市', '博望区', '01', '0555');
INSERT INTO `tp_location` VALUES ('960', '安徽省', '马鞍山市', '花山区', '01', '0555');
INSERT INTO `tp_location` VALUES ('961', '安徽省', '马鞍山市', '雨山区', '01', '0555');
INSERT INTO `tp_location` VALUES ('962', '安徽省', '马鞍山市', '当涂县', '01', '0555');
INSERT INTO `tp_location` VALUES ('963', '安徽省', '马鞍山市', '含山县', '01', '0555');
INSERT INTO `tp_location` VALUES ('964', '安徽省', '马鞍山市', '和县', '01', '0555');
INSERT INTO `tp_location` VALUES ('965', '安徽省', '淮北市', '杜集区', '01', '0561');
INSERT INTO `tp_location` VALUES ('966', '安徽省', '淮北市', '相山区', '01', '0561');
INSERT INTO `tp_location` VALUES ('967', '安徽省', '淮北市', '烈山区', '01', '0561');
INSERT INTO `tp_location` VALUES ('968', '安徽省', '淮北市', '濉溪县', '01', '0561');
INSERT INTO `tp_location` VALUES ('969', '安徽省', '铜陵市', '铜官山区', '01', '0562');
INSERT INTO `tp_location` VALUES ('970', '安徽省', '铜陵市', '狮子山区', '01', '0562');
INSERT INTO `tp_location` VALUES ('971', '安徽省', '铜陵市', '铜陵郊区', '01', '0562');
INSERT INTO `tp_location` VALUES ('972', '安徽省', '铜陵市', '铜陵县', '01', '0562');
INSERT INTO `tp_location` VALUES ('973', '安徽省', '安庆市', '迎江区', '01', '0556');
INSERT INTO `tp_location` VALUES ('974', '安徽省', '安庆市', '大观区', '01', '0556');
INSERT INTO `tp_location` VALUES ('975', '安徽省', '安庆市', '宜秀区', '01', '0556');
INSERT INTO `tp_location` VALUES ('976', '安徽省', '安庆市', '怀宁县', '01', '0556');
INSERT INTO `tp_location` VALUES ('977', '安徽省', '安庆市', '枞阳县', '01', '0556');
INSERT INTO `tp_location` VALUES ('978', '安徽省', '安庆市', '潜山县', '01', '0556');
INSERT INTO `tp_location` VALUES ('979', '安徽省', '安庆市', '太湖县', '01', '0556');
INSERT INTO `tp_location` VALUES ('980', '安徽省', '安庆市', '宿松县', '01', '0556');
INSERT INTO `tp_location` VALUES ('981', '安徽省', '安庆市', '望江县', '01', '0556');
INSERT INTO `tp_location` VALUES ('982', '安徽省', '安庆市', '岳西县', '01', '0556');
INSERT INTO `tp_location` VALUES ('983', '安徽省', '安庆市', '桐城市', '01', '0556');
INSERT INTO `tp_location` VALUES ('984', '安徽省', '黄山市', '屯溪区', '01', '0559');
INSERT INTO `tp_location` VALUES ('985', '安徽省', '黄山市', '黄山区', '01', '0559');
INSERT INTO `tp_location` VALUES ('986', '安徽省', '黄山市', '徽州区', '01', '0559');
INSERT INTO `tp_location` VALUES ('987', '安徽省', '黄山市', '歙县', '01', '0559');
INSERT INTO `tp_location` VALUES ('988', '安徽省', '黄山市', '休宁县', '01', '0559');
INSERT INTO `tp_location` VALUES ('989', '安徽省', '黄山市', '黟县', '01', '0559');
INSERT INTO `tp_location` VALUES ('990', '安徽省', '黄山市', '祁门县', '01', '0559');
INSERT INTO `tp_location` VALUES ('991', '安徽省', '滁州市', '琅琊区', '01', '0550');
INSERT INTO `tp_location` VALUES ('992', '安徽省', '滁州市', '南谯区', '01', '0550');
INSERT INTO `tp_location` VALUES ('993', '安徽省', '滁州市', '来安县', '01', '0550');
INSERT INTO `tp_location` VALUES ('994', '安徽省', '滁州市', '全椒县', '01', '0550');
INSERT INTO `tp_location` VALUES ('995', '安徽省', '滁州市', '定远县', '01', '0550');
INSERT INTO `tp_location` VALUES ('996', '安徽省', '滁州市', '凤阳县', '01', '0550');
INSERT INTO `tp_location` VALUES ('997', '安徽省', '滁州市', '天长市', '01', '0550');
INSERT INTO `tp_location` VALUES ('998', '安徽省', '滁州市', '明光市', '01', '0550');
INSERT INTO `tp_location` VALUES ('999', '安徽省', '阜阳市', '颍州区', '01', '0558');
INSERT INTO `tp_location` VALUES ('1000', '安徽省', '阜阳市', '颍东区', '01', '0558');
INSERT INTO `tp_location` VALUES ('1001', '安徽省', '阜阳市', '颍泉区', '01', '0558');
INSERT INTO `tp_location` VALUES ('1002', '安徽省', '阜阳市', '临泉县', '01', '0558');
INSERT INTO `tp_location` VALUES ('1003', '安徽省', '阜阳市', '太和县', '01', '0558');
INSERT INTO `tp_location` VALUES ('1004', '安徽省', '阜阳市', '阜南县', '01', '0558');
INSERT INTO `tp_location` VALUES ('1005', '安徽省', '阜阳市', '颍上县', '01', '0558');
INSERT INTO `tp_location` VALUES ('1006', '安徽省', '阜阳市', '界首市', '01', '0558');
INSERT INTO `tp_location` VALUES ('1007', '安徽省', '宿州市', '墉桥区', '01', '0557');
INSERT INTO `tp_location` VALUES ('1008', '安徽省', '宿州市', '砀山县', '01', '0557');
INSERT INTO `tp_location` VALUES ('1009', '安徽省', '宿州市', '萧县', '01', '0557');
INSERT INTO `tp_location` VALUES ('1010', '安徽省', '宿州市', '灵璧县', '01', '0557');
INSERT INTO `tp_location` VALUES ('1011', '安徽省', '宿州市', '泗县', '01', '0557');
INSERT INTO `tp_location` VALUES ('1012', '安徽省', '六安市', '金安区', '01', '0564');
INSERT INTO `tp_location` VALUES ('1013', '安徽省', '六安市', '裕安区', '01', '0564');
INSERT INTO `tp_location` VALUES ('1014', '安徽省', '六安市', '寿县', '01', '0564');
INSERT INTO `tp_location` VALUES ('1015', '安徽省', '六安市', '霍邱县', '01', '0564');
INSERT INTO `tp_location` VALUES ('1016', '安徽省', '六安市', '舒城县', '01', '0564');
INSERT INTO `tp_location` VALUES ('1017', '安徽省', '六安市', '金寨县', '01', '0564');
INSERT INTO `tp_location` VALUES ('1018', '安徽省', '六安市', '霍山县', '01', '0564');
INSERT INTO `tp_location` VALUES ('1019', '安徽省', '宣城市', '宣州区', '01', '0563');
INSERT INTO `tp_location` VALUES ('1020', '安徽省', '宣城市', '宁国市', '01', '0563');
INSERT INTO `tp_location` VALUES ('1021', '安徽省', '宣城市', '郎溪县', '01', '0563');
INSERT INTO `tp_location` VALUES ('1022', '安徽省', '宣城市', '广德县', '01', '0563');
INSERT INTO `tp_location` VALUES ('1023', '安徽省', '宣城市', '泾县', '01', '0563');
INSERT INTO `tp_location` VALUES ('1024', '安徽省', '宣城市', '旌德县', '01', '0563');
INSERT INTO `tp_location` VALUES ('1025', '安徽省', '宣城市', '绩溪县', '01', '0563');
INSERT INTO `tp_location` VALUES ('1026', '安徽省', '池州市', '贵池区', '01', '0566');
INSERT INTO `tp_location` VALUES ('1027', '安徽省', '池州市', '东至县', '01', '0566');
INSERT INTO `tp_location` VALUES ('1028', '安徽省', '池州市', '石台县', '01', '0566');
INSERT INTO `tp_location` VALUES ('1029', '安徽省', '池州市', '青阳县', '01', '0566');
INSERT INTO `tp_location` VALUES ('1030', '福建省', '福州市', '鼓楼区', '03', '0591');
INSERT INTO `tp_location` VALUES ('1031', '福建省', '福州市', '台江区', '03', '0591');
INSERT INTO `tp_location` VALUES ('1032', '福建省', '福州市', '仓山区', '03', '0591');
INSERT INTO `tp_location` VALUES ('1033', '福建省', '福州市', '马尾区', '03', '0591');
INSERT INTO `tp_location` VALUES ('1034', '福建省', '福州市', '晋安区', '03', '0591');
INSERT INTO `tp_location` VALUES ('1035', '福建省', '福州市', '闽侯县', '03', '0591');
INSERT INTO `tp_location` VALUES ('1036', '福建省', '福州市', '连江县', '03', '0591');
INSERT INTO `tp_location` VALUES ('1037', '福建省', '福州市', '罗源县', '03', '0591');
INSERT INTO `tp_location` VALUES ('1038', '福建省', '福州市', '闽清县', '03', '0591');
INSERT INTO `tp_location` VALUES ('1039', '福建省', '福州市', '永泰县', '03', '0591');
INSERT INTO `tp_location` VALUES ('1040', '福建省', '福州市', '平潭县', '03', '0591');
INSERT INTO `tp_location` VALUES ('1041', '福建省', '福州市', '福清市', '03', '0591');
INSERT INTO `tp_location` VALUES ('1042', '福建省', '福州市', '长乐市', '03', '0591');
INSERT INTO `tp_location` VALUES ('1043', '福建省', '厦门市', '思明区', '03', '0592');
INSERT INTO `tp_location` VALUES ('1044', '福建省', '厦门市', '海沧区', '03', '0592');
INSERT INTO `tp_location` VALUES ('1045', '福建省', '厦门市', '湖里区', '03', '0592');
INSERT INTO `tp_location` VALUES ('1046', '福建省', '厦门市', '集美区', '03', '0592');
INSERT INTO `tp_location` VALUES ('1047', '福建省', '厦门市', '同安区', '03', '0592');
INSERT INTO `tp_location` VALUES ('1048', '福建省', '厦门市', '翔安区', '03', '0592');
INSERT INTO `tp_location` VALUES ('1049', '福建省', '宁德市', '蕉城区', '03', '0593');
INSERT INTO `tp_location` VALUES ('1050', '福建省', '宁德市', '霞浦县', '03', '0593');
INSERT INTO `tp_location` VALUES ('1051', '福建省', '宁德市', '古田县', '03', '0593');
INSERT INTO `tp_location` VALUES ('1052', '福建省', '宁德市', '屏南县', '03', '0593');
INSERT INTO `tp_location` VALUES ('1053', '福建省', '宁德市', '寿宁县', '03', '0593');
INSERT INTO `tp_location` VALUES ('1054', '福建省', '宁德市', '周宁县', '03', '0593');
INSERT INTO `tp_location` VALUES ('1055', '福建省', '宁德市', '柘荣县', '03', '0593');
INSERT INTO `tp_location` VALUES ('1056', '福建省', '宁德市', '福安市', '03', '0593');
INSERT INTO `tp_location` VALUES ('1057', '福建省', '宁德市', '福鼎市', '03', '0593');
INSERT INTO `tp_location` VALUES ('1058', '福建省', '莆田市', '城厢区', '03', '0594');
INSERT INTO `tp_location` VALUES ('1059', '福建省', '莆田市', '涵江区', '03', '0594');
INSERT INTO `tp_location` VALUES ('1060', '福建省', '莆田市', '荔城区', '03', '0594');
INSERT INTO `tp_location` VALUES ('1061', '福建省', '莆田市', '秀屿区', '03', '0594');
INSERT INTO `tp_location` VALUES ('1062', '福建省', '莆田市', '仙游县', '03', '0594');
INSERT INTO `tp_location` VALUES ('1063', '福建省', '泉州市', '鲤城区', '03', '0595');
INSERT INTO `tp_location` VALUES ('1064', '福建省', '泉州市', '丰泽区', '03', '0595');
INSERT INTO `tp_location` VALUES ('1065', '福建省', '泉州市', '洛江区', '03', '0595');
INSERT INTO `tp_location` VALUES ('1066', '福建省', '泉州市', '泉港区', '03', '0595');
INSERT INTO `tp_location` VALUES ('1067', '福建省', '泉州市', '惠安县', '03', '0595');
INSERT INTO `tp_location` VALUES ('1068', '福建省', '泉州市', '安溪县', '03', '0595');
INSERT INTO `tp_location` VALUES ('1069', '福建省', '泉州市', '永春县', '03', '0595');
INSERT INTO `tp_location` VALUES ('1070', '福建省', '泉州市', '德化县', '03', '0595');
INSERT INTO `tp_location` VALUES ('1071', '福建省', '泉州市', '石狮市', '03', '0595');
INSERT INTO `tp_location` VALUES ('1072', '福建省', '泉州市', '晋江市', '03', '0595');
INSERT INTO `tp_location` VALUES ('1073', '福建省', '泉州市', '南安市', '03', '0595');
INSERT INTO `tp_location` VALUES ('1074', '福建省', '漳州市', '芗城区', '03', '0596');
INSERT INTO `tp_location` VALUES ('1075', '福建省', '漳州市', '龙文区', '03', '0596');
INSERT INTO `tp_location` VALUES ('1076', '福建省', '漳州市', '云霄县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1077', '福建省', '漳州市', '漳浦县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1078', '福建省', '漳州市', '诏安县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1079', '福建省', '漳州市', '长泰县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1080', '福建省', '漳州市', '东山县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1081', '福建省', '漳州市', '南靖县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1082', '福建省', '漳州市', '平和县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1083', '福建省', '漳州市', '华安县', '03', '0596');
INSERT INTO `tp_location` VALUES ('1084', '福建省', '漳州市', '龙海市', '03', '0596');
INSERT INTO `tp_location` VALUES ('1085', '福建省', '龙岩市', '新罗区', '03', '0597');
INSERT INTO `tp_location` VALUES ('1086', '福建省', '龙岩市', '长汀县', '03', '0597');
INSERT INTO `tp_location` VALUES ('1087', '福建省', '龙岩市', '永定县', '03', '0597');
INSERT INTO `tp_location` VALUES ('1088', '福建省', '龙岩市', '上杭县', '03', '0597');
INSERT INTO `tp_location` VALUES ('1089', '福建省', '龙岩市', '武平县', '03', '0597');
INSERT INTO `tp_location` VALUES ('1090', '福建省', '龙岩市', '连城县', '03', '0597');
INSERT INTO `tp_location` VALUES ('1091', '福建省', '龙岩市', '漳平市', '03', '0597');
INSERT INTO `tp_location` VALUES ('1092', '福建省', '三明市', '梅列区', '03', '0598');
INSERT INTO `tp_location` VALUES ('1093', '福建省', '三明市', '三元区', '03', '0598');
INSERT INTO `tp_location` VALUES ('1094', '福建省', '三明市', '明溪县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1095', '福建省', '三明市', '清流县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1096', '福建省', '三明市', '宁化县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1097', '福建省', '三明市', '大田县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1098', '福建省', '三明市', '尤溪县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1099', '福建省', '三明市', '沙县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1100', '福建省', '三明市', '将乐县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1101', '福建省', '三明市', '泰宁县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1102', '福建省', '三明市', '建宁县', '03', '0598');
INSERT INTO `tp_location` VALUES ('1103', '福建省', '三明市', '永安市', '03', '0598');
INSERT INTO `tp_location` VALUES ('1104', '福建省', '南平市', '延平区', '03', '0599');
INSERT INTO `tp_location` VALUES ('1105', '福建省', '南平市', '顺昌县', '03', '0599');
INSERT INTO `tp_location` VALUES ('1106', '福建省', '南平市', '浦城县', '03', '0599');
INSERT INTO `tp_location` VALUES ('1107', '福建省', '南平市', '光泽县', '03', '0599');
INSERT INTO `tp_location` VALUES ('1108', '福建省', '南平市', '松溪县', '03', '0599');
INSERT INTO `tp_location` VALUES ('1109', '福建省', '南平市', '政和县', '03', '0599');
INSERT INTO `tp_location` VALUES ('1110', '福建省', '南平市', '邵武市', '03', '0599');
INSERT INTO `tp_location` VALUES ('1111', '福建省', '南平市', '武夷山市', '03', '0599');
INSERT INTO `tp_location` VALUES ('1112', '福建省', '南平市', '建瓯市', '03', '0599');
INSERT INTO `tp_location` VALUES ('1113', '福建省', '南平市', '建阳市', '03', '0599');
INSERT INTO `tp_location` VALUES ('1114', '江西省', '南昌市', '东湖区', '16', '0791');
INSERT INTO `tp_location` VALUES ('1115', '江西省', '南昌市', '西湖区', '16', '0791');
INSERT INTO `tp_location` VALUES ('1116', '江西省', '南昌市', '青云谱区', '16', '0791');
INSERT INTO `tp_location` VALUES ('1117', '江西省', '南昌市', '湾里区', '16', '0791');
INSERT INTO `tp_location` VALUES ('1118', '江西省', '南昌市', '南昌县', '16', '0791');
INSERT INTO `tp_location` VALUES ('1119', '江西省', '南昌市', '新建县', '16', '0791');
INSERT INTO `tp_location` VALUES ('1120', '江西省', '南昌市', '安义县', '16', '0791');
INSERT INTO `tp_location` VALUES ('1121', '江西省', '南昌市', '进贤县', '16', '0791');
INSERT INTO `tp_location` VALUES ('1122', '江西省', '景德镇市', '昌江区', '16', '0798');
INSERT INTO `tp_location` VALUES ('1123', '江西省', '景德镇市', '珠山区', '16', '0798');
INSERT INTO `tp_location` VALUES ('1124', '江西省', '景德镇市', '浮梁县', '16', '0798');
INSERT INTO `tp_location` VALUES ('1125', '江西省', '景德镇市', '乐平市', '16', '0798');
INSERT INTO `tp_location` VALUES ('1126', '江西省', '萍乡市', '安源区', '16', '0799');
INSERT INTO `tp_location` VALUES ('1127', '江西省', '萍乡市', '湘东区', '16', '0799');
INSERT INTO `tp_location` VALUES ('1128', '江西省', '萍乡市', '莲花县', '16', '0799');
INSERT INTO `tp_location` VALUES ('1129', '江西省', '萍乡市', '上栗县', '16', '0799');
INSERT INTO `tp_location` VALUES ('1130', '江西省', '萍乡市', '芦溪县', '16', '0799');
INSERT INTO `tp_location` VALUES ('1131', '江西省', '九江市', '庐山区', '16', '0792');
INSERT INTO `tp_location` VALUES ('1132', '江西省', '九江市', '浔阳区', '16', '0792');
INSERT INTO `tp_location` VALUES ('1133', '江西省', '九江市', '九江县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1134', '江西省', '九江市', '武宁县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1135', '江西省', '九江市', '修水县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1136', '江西省', '九江市', '永修县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1137', '江西省', '九江市', '德安县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1138', '江西省', '九江市', '星子县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1139', '江西省', '九江市', '都昌县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1140', '江西省', '九江市', '湖口县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1141', '江西省', '九江市', '彭泽县', '16', '0792');
INSERT INTO `tp_location` VALUES ('1142', '江西省', '九江市', '瑞昌市', '16', '0792');
INSERT INTO `tp_location` VALUES ('1143', '江西省', '新余市', '渝水区', '16', '0790');
INSERT INTO `tp_location` VALUES ('1144', '江西省', '新余市', '分宜县', '16', '0790');
INSERT INTO `tp_location` VALUES ('1145', '江西省', '鹰潭市', '月湖区', '16', '0701');
INSERT INTO `tp_location` VALUES ('1146', '江西省', '鹰潭市', '余江县', '16', '0701');
INSERT INTO `tp_location` VALUES ('1147', '江西省', '鹰潭市', '贵溪市', '16', '0701');
INSERT INTO `tp_location` VALUES ('1148', '江西省', '赣州市', '章贡区', '16', '0797');
INSERT INTO `tp_location` VALUES ('1149', '江西省', '赣州市', '赣县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1150', '江西省', '赣州市', '信丰县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1151', '江西省', '赣州市', '大余县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1152', '江西省', '赣州市', '上犹县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1153', '江西省', '赣州市', '崇义县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1154', '江西省', '赣州市', '安远县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1155', '江西省', '赣州市', '龙南县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1156', '江西省', '赣州市', '定南县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1157', '江西省', '赣州市', '全南县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1158', '江西省', '赣州市', '宁都县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1159', '江西省', '赣州市', '于都县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1160', '江西省', '赣州市', '兴国县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1161', '江西省', '赣州市', '会昌县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1162', '江西省', '赣州市', '寻乌县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1163', '江西省', '赣州市', '石城县', '16', '0797');
INSERT INTO `tp_location` VALUES ('1164', '江西省', '赣州市', '瑞金市', '16', '0797');
INSERT INTO `tp_location` VALUES ('1165', '江西省', '赣州市', '南康市', '16', '0797');
INSERT INTO `tp_location` VALUES ('1166', '江西省', '宜春市', '宜春市', '16', '0795');
INSERT INTO `tp_location` VALUES ('1167', '江西省', '宜春市', '丰城市', '16', '0795');
INSERT INTO `tp_location` VALUES ('1168', '江西省', '宜春市', '樟树市', '16', '0795');
INSERT INTO `tp_location` VALUES ('1169', '江西省', '宜春市', '高安市', '16', '0795');
INSERT INTO `tp_location` VALUES ('1170', '江西省', '宜春市', '奉新县', '16', '0795');
INSERT INTO `tp_location` VALUES ('1171', '江西省', '宜春市', '万载县', '16', '0795');
INSERT INTO `tp_location` VALUES ('1172', '江西省', '宜春市', '上高县', '16', '0795');
INSERT INTO `tp_location` VALUES ('1173', '江西省', '宜春市', '宜丰县', '16', '0795');
INSERT INTO `tp_location` VALUES ('1174', '江西省', '宜春市', '靖安县', '16', '0795');
INSERT INTO `tp_location` VALUES ('1175', '江西省', '宜春市', '铜鼓县', '16', '0795');
INSERT INTO `tp_location` VALUES ('1176', '江西省', '上饶市', '上饶市', '16', '0793');
INSERT INTO `tp_location` VALUES ('1177', '江西省', '上饶市', '德兴市', '16', '0793');
INSERT INTO `tp_location` VALUES ('1178', '江西省', '上饶市', '上饶县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1179', '江西省', '上饶市', '广丰县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1180', '江西省', '上饶市', '玉山县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1181', '江西省', '上饶市', '铅山县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1182', '江西省', '上饶市', '横峰县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1183', '江西省', '上饶市', '弋阳县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1184', '江西省', '上饶市', '余干县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1185', '江西省', '上饶市', '鄱阳县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1186', '江西省', '上饶市', '万年县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1187', '江西省', '上饶市', '婺源县', '16', '0793');
INSERT INTO `tp_location` VALUES ('1188', '江西省', '吉安市', '吉州区', '16', '0796');
INSERT INTO `tp_location` VALUES ('1189', '江西省', '吉安市', '井冈山市', '16', '0796');
INSERT INTO `tp_location` VALUES ('1190', '江西省', '吉安市', '吉安县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1191', '江西省', '吉安市', '吉水县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1192', '江西省', '吉安市', '峡江县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1193', '江西省', '吉安市', '新干县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1194', '江西省', '吉安市', '永丰县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1195', '江西省', '吉安市', '泰和县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1196', '江西省', '吉安市', '遂川县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1197', '江西省', '吉安市', '万安县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1198', '江西省', '吉安市', '安福县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1199', '江西省', '吉安市', '永新县', '16', '0796');
INSERT INTO `tp_location` VALUES ('1200', '江西省', '吉安市', '青原区', '16', '0796');
INSERT INTO `tp_location` VALUES ('1201', '江西省', '抚州市', '临川区', '16', '0794');
INSERT INTO `tp_location` VALUES ('1202', '江西省', '抚州市', '南城县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1203', '江西省', '抚州市', '黎川县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1204', '江西省', '抚州市', '南丰县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1205', '江西省', '抚州市', '崇仁县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1206', '江西省', '抚州市', '乐安县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1207', '江西省', '抚州市', '宜黄县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1208', '江西省', '抚州市', '金溪县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1209', '江西省', '抚州市', '资溪县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1210', '江西省', '抚州市', '东乡县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1211', '江西省', '抚州市', '广昌县', '16', '0794');
INSERT INTO `tp_location` VALUES ('1212', '山东省', '济南市', '历下区', '21', '0531');
INSERT INTO `tp_location` VALUES ('1213', '山东省', '济南市', '市中区', '21', '0531');
INSERT INTO `tp_location` VALUES ('1214', '山东省', '济南市', '槐荫区', '21', '0531');
INSERT INTO `tp_location` VALUES ('1215', '山东省', '济南市', '天桥区', '21', '0531');
INSERT INTO `tp_location` VALUES ('1216', '山东省', '济南市', '历城区', '21', '0531');
INSERT INTO `tp_location` VALUES ('1217', '山东省', '济南市', '长清区', '21', '0531');
INSERT INTO `tp_location` VALUES ('1218', '山东省', '济南市', '平阴县', '21', '0531');
INSERT INTO `tp_location` VALUES ('1219', '山东省', '济南市', '济阳县', '21', '0531');
INSERT INTO `tp_location` VALUES ('1220', '山东省', '济南市', '商河县', '21', '0531');
INSERT INTO `tp_location` VALUES ('1221', '山东省', '济南市', '章丘市', '21', '0531');
INSERT INTO `tp_location` VALUES ('1222', '山东省', '青岛市', '市南区', '21', '0532');
INSERT INTO `tp_location` VALUES ('1223', '山东省', '青岛市', '市北区', '21', '0532');
INSERT INTO `tp_location` VALUES ('1224', '山东省', '青岛市', '四方区', '21', '0532');
INSERT INTO `tp_location` VALUES ('1225', '山东省', '青岛市', '黄岛区', '21', '0532');
INSERT INTO `tp_location` VALUES ('1226', '山东省', '青岛市', '崂山区', '21', '0532');
INSERT INTO `tp_location` VALUES ('1227', '山东省', '青岛市', '李沧区', '21', '0532');
INSERT INTO `tp_location` VALUES ('1228', '山东省', '青岛市', '城阳区', '21', '0532');
INSERT INTO `tp_location` VALUES ('1229', '山东省', '青岛市', '胶州市', '21', '0532');
INSERT INTO `tp_location` VALUES ('1230', '山东省', '青岛市', '即墨市', '21', '0532');
INSERT INTO `tp_location` VALUES ('1231', '山东省', '青岛市', '平度市', '21', '0532');
INSERT INTO `tp_location` VALUES ('1232', '山东省', '青岛市', '胶南市', '21', '0532');
INSERT INTO `tp_location` VALUES ('1233', '山东省', '青岛市', '莱西市', '21', '0532');
INSERT INTO `tp_location` VALUES ('1234', '山东省', '淄博市', '淄川区', '21', '0533');
INSERT INTO `tp_location` VALUES ('1235', '山东省', '淄博市', '张店区', '21', '0533');
INSERT INTO `tp_location` VALUES ('1236', '山东省', '淄博市', '博山区', '21', '0533');
INSERT INTO `tp_location` VALUES ('1237', '山东省', '淄博市', '临淄区', '21', '0533');
INSERT INTO `tp_location` VALUES ('1238', '山东省', '淄博市', '周村区', '21', '0533');
INSERT INTO `tp_location` VALUES ('1239', '山东省', '淄博市', '桓台县', '21', '0533');
INSERT INTO `tp_location` VALUES ('1240', '山东省', '淄博市', '高青县', '21', '0533');
INSERT INTO `tp_location` VALUES ('1241', '山东省', '淄博市', '沂源县', '21', '0533');
INSERT INTO `tp_location` VALUES ('1242', '山东省', '枣庄市', '市中区', '21', '0632');
INSERT INTO `tp_location` VALUES ('1243', '山东省', '枣庄市', '薛城区', '21', '0632');
INSERT INTO `tp_location` VALUES ('1244', '山东省', '枣庄市', '峄城区', '21', '0632');
INSERT INTO `tp_location` VALUES ('1245', '山东省', '枣庄市', '台儿庄区', '21', '0632');
INSERT INTO `tp_location` VALUES ('1246', '山东省', '枣庄市', '山亭区', '21', '0632');
INSERT INTO `tp_location` VALUES ('1247', '山东省', '枣庄市', '滕州市', '21', '0632');
INSERT INTO `tp_location` VALUES ('1248', '山东省', '东营市', '东营区', '21', '0546');
INSERT INTO `tp_location` VALUES ('1249', '山东省', '东营市', '河口区', '21', '0546');
INSERT INTO `tp_location` VALUES ('1250', '山东省', '东营市', '垦利县', '21', '0546');
INSERT INTO `tp_location` VALUES ('1251', '山东省', '东营市', '利津县', '21', '0546');
INSERT INTO `tp_location` VALUES ('1252', '山东省', '东营市', '广饶县', '21', '0546');
INSERT INTO `tp_location` VALUES ('1253', '山东省', '烟台市', '芝罘区', '21', '0535');
INSERT INTO `tp_location` VALUES ('1254', '山东省', '烟台市', '福山区', '21', '0535');
INSERT INTO `tp_location` VALUES ('1255', '山东省', '烟台市', '牟平区', '21', '0535');
INSERT INTO `tp_location` VALUES ('1256', '山东省', '烟台市', '莱山区', '21', '0535');
INSERT INTO `tp_location` VALUES ('1257', '山东省', '烟台市', '长岛县', '21', '0535');
INSERT INTO `tp_location` VALUES ('1258', '山东省', '烟台市', '龙口市', '21', '0535');
INSERT INTO `tp_location` VALUES ('1259', '山东省', '烟台市', '莱阳市', '21', '0535');
INSERT INTO `tp_location` VALUES ('1260', '山东省', '烟台市', '莱州市', '21', '0535');
INSERT INTO `tp_location` VALUES ('1261', '山东省', '烟台市', '蓬莱市', '21', '0535');
INSERT INTO `tp_location` VALUES ('1262', '山东省', '烟台市', '招远市', '21', '0535');
INSERT INTO `tp_location` VALUES ('1263', '山东省', '烟台市', '栖霞市', '21', '0535');
INSERT INTO `tp_location` VALUES ('1264', '山东省', '烟台市', '海阳市', '21', '0535');
INSERT INTO `tp_location` VALUES ('1265', '山东省', '潍坊市', '潍城区', '21', '0536');
INSERT INTO `tp_location` VALUES ('1266', '山东省', '潍坊市', '寒亭区', '21', '0536');
INSERT INTO `tp_location` VALUES ('1267', '山东省', '潍坊市', '坊子区', '21', '0536');
INSERT INTO `tp_location` VALUES ('1268', '山东省', '潍坊市', '奎文区', '21', '0536');
INSERT INTO `tp_location` VALUES ('1269', '山东省', '潍坊市', '临朐县', '21', '0536');
INSERT INTO `tp_location` VALUES ('1270', '山东省', '潍坊市', '昌乐县', '21', '0536');
INSERT INTO `tp_location` VALUES ('1271', '山东省', '潍坊市', '青州市', '21', '0536');
INSERT INTO `tp_location` VALUES ('1272', '山东省', '潍坊市', '诸城市', '21', '0536');
INSERT INTO `tp_location` VALUES ('1273', '山东省', '潍坊市', '寿光市', '21', '0536');
INSERT INTO `tp_location` VALUES ('1274', '山东省', '潍坊市', '安丘市', '21', '0536');
INSERT INTO `tp_location` VALUES ('1275', '山东省', '潍坊市', '高密市', '21', '0536');
INSERT INTO `tp_location` VALUES ('1276', '山东省', '潍坊市', '昌邑市', '21', '0536');
INSERT INTO `tp_location` VALUES ('1277', '山东省', '济宁市', '市中区', '21', '0537');
INSERT INTO `tp_location` VALUES ('1278', '山东省', '济宁市', '任城区', '21', '0537');
INSERT INTO `tp_location` VALUES ('1279', '山东省', '济宁市', '微山县', '21', '0537');
INSERT INTO `tp_location` VALUES ('1280', '山东省', '济宁市', '鱼台县', '21', '0537');
INSERT INTO `tp_location` VALUES ('1281', '山东省', '济宁市', '金乡县', '21', '0537');
INSERT INTO `tp_location` VALUES ('1282', '山东省', '济宁市', '嘉祥县', '21', '0537');
INSERT INTO `tp_location` VALUES ('1283', '山东省', '济宁市', '汶上县', '21', '0537');
INSERT INTO `tp_location` VALUES ('1284', '山东省', '济宁市', '泗水县', '21', '0537');
INSERT INTO `tp_location` VALUES ('1285', '山东省', '济宁市', '梁山县', '21', '0537');
INSERT INTO `tp_location` VALUES ('1286', '山东省', '济宁市', '曲阜市', '21', '0537');
INSERT INTO `tp_location` VALUES ('1287', '山东省', '济宁市', '兖州市', '21', '0537');
INSERT INTO `tp_location` VALUES ('1288', '山东省', '济宁市', '邹城市', '21', '0537');
INSERT INTO `tp_location` VALUES ('1289', '山东省', '泰安市', '泰山区', '21', '0538');
INSERT INTO `tp_location` VALUES ('1290', '山东省', '泰安市', '岱岳区', '21', '0538');
INSERT INTO `tp_location` VALUES ('1291', '山东省', '泰安市', '宁阳县', '21', '0538');
INSERT INTO `tp_location` VALUES ('1292', '山东省', '泰安市', '东平县', '21', '0538');
INSERT INTO `tp_location` VALUES ('1293', '山东省', '泰安市', '新泰市', '21', '0538');
INSERT INTO `tp_location` VALUES ('1294', '山东省', '泰安市', '肥城市', '21', '0538');
INSERT INTO `tp_location` VALUES ('1295', '山东省', '威海市', '环翠区', '21', '0631');
INSERT INTO `tp_location` VALUES ('1296', '山东省', '威海市', '文登市', '21', '0631');
INSERT INTO `tp_location` VALUES ('1297', '山东省', '威海市', '荣成市', '21', '0631');
INSERT INTO `tp_location` VALUES ('1298', '山东省', '威海市', '乳山市', '21', '0631');
INSERT INTO `tp_location` VALUES ('1299', '山东省', '日照市', '东港区', '21', '0633');
INSERT INTO `tp_location` VALUES ('1300', '山东省', '日照市', '岚山区', '21', '0633');
INSERT INTO `tp_location` VALUES ('1301', '山东省', '日照市', '五莲县', '21', '0633');
INSERT INTO `tp_location` VALUES ('1302', '山东省', '日照市', '莒县', '21', '0633');
INSERT INTO `tp_location` VALUES ('1303', '山东省', '莱芜市', '莱城区', '21', '0634');
INSERT INTO `tp_location` VALUES ('1304', '山东省', '莱芜市', '钢城区', '21', '0634');
INSERT INTO `tp_location` VALUES ('1305', '山东省', '临沂市', '兰山区', '21', '0539');
INSERT INTO `tp_location` VALUES ('1306', '山东省', '临沂市', '罗庄区', '21', '0539');
INSERT INTO `tp_location` VALUES ('1307', '山东省', '临沂市', '河东区', '21', '0539');
INSERT INTO `tp_location` VALUES ('1308', '山东省', '临沂市', '沂南县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1309', '山东省', '临沂市', '郯城县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1310', '山东省', '临沂市', '沂水县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1311', '山东省', '临沂市', '苍山县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1312', '山东省', '临沂市', '费县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1313', '山东省', '临沂市', '平邑县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1314', '山东省', '临沂市', '莒南县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1315', '山东省', '临沂市', '蒙阴县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1316', '山东省', '临沂市', '临沭县', '21', '0539');
INSERT INTO `tp_location` VALUES ('1317', '山东省', '德州市', '德城区', '21', '0534');
INSERT INTO `tp_location` VALUES ('1318', '山东省', '德州市', '陵县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1319', '山东省', '德州市', '宁津县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1320', '山东省', '德州市', '庆云县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1321', '山东省', '德州市', '临邑县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1322', '山东省', '德州市', '齐河县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1323', '山东省', '德州市', '平原县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1324', '山东省', '德州市', '夏津县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1325', '山东省', '德州市', '武城县', '21', '0534');
INSERT INTO `tp_location` VALUES ('1326', '山东省', '德州市', '乐陵市', '21', '0534');
INSERT INTO `tp_location` VALUES ('1327', '山东省', '德州市', '禹城市', '21', '0534');
INSERT INTO `tp_location` VALUES ('1328', '山东省', '聊城市', '东昌府区', '21', '0635');
INSERT INTO `tp_location` VALUES ('1329', '山东省', '聊城市', '阳谷县', '21', '0635');
INSERT INTO `tp_location` VALUES ('1330', '山东省', '聊城市', '莘县', '21', '0635');
INSERT INTO `tp_location` VALUES ('1331', '山东省', '聊城市', '茌平县', '21', '0635');
INSERT INTO `tp_location` VALUES ('1332', '山东省', '聊城市', '东阿县', '21', '0635');
INSERT INTO `tp_location` VALUES ('1333', '山东省', '聊城市', '冠县', '21', '0635');
INSERT INTO `tp_location` VALUES ('1334', '山东省', '聊城市', '高唐县', '21', '0635');
INSERT INTO `tp_location` VALUES ('1335', '山东省', '聊城市', '临清市', '21', '0635');
INSERT INTO `tp_location` VALUES ('1336', '山东省', '滨州市', '滨州市', '21', '0543');
INSERT INTO `tp_location` VALUES ('1337', '山东省', '滨州市', '惠民县', '21', '0543');
INSERT INTO `tp_location` VALUES ('1338', '山东省', '滨州市', '阳信县', '21', '0543');
INSERT INTO `tp_location` VALUES ('1339', '山东省', '滨州市', '无棣县', '21', '0543');
INSERT INTO `tp_location` VALUES ('1340', '山东省', '滨州市', '沾化县', '21', '0543');
INSERT INTO `tp_location` VALUES ('1341', '山东省', '滨州市', '博兴县', '21', '0543');
INSERT INTO `tp_location` VALUES ('1342', '山东省', '滨州市', '邹平县', '21', '0543');
INSERT INTO `tp_location` VALUES ('1343', '山东省', '荷泽市', '牡丹区', '21', '0530');
INSERT INTO `tp_location` VALUES ('1344', '山东省', '荷泽市', '曹县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1345', '山东省', '荷泽市', '定陶县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1346', '山东省', '荷泽市', '成武县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1347', '山东省', '荷泽市', '单县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1348', '山东省', '荷泽市', '巨野县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1349', '山东省', '荷泽市', '郓城县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1350', '山东省', '荷泽市', '鄄城县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1351', '山东省', '荷泽市', '东明县', '21', '0530');
INSERT INTO `tp_location` VALUES ('1352', '河南省', '郑州市', '中原区', '10', '0371');
INSERT INTO `tp_location` VALUES ('1353', '河南省', '郑州市', '二七区', '10', '0371');
INSERT INTO `tp_location` VALUES ('1354', '河南省', '郑州市', '管城回族区', '10', '0371');
INSERT INTO `tp_location` VALUES ('1355', '河南省', '郑州市', '金水区', '10', '0371');
INSERT INTO `tp_location` VALUES ('1356', '河南省', '郑州市', '上街区', '10', '0371');
INSERT INTO `tp_location` VALUES ('1357', '河南省', '郑州市', '邙山区', '10', '0371');
INSERT INTO `tp_location` VALUES ('1358', '河南省', '郑州市', '中牟县', '10', '0371');
INSERT INTO `tp_location` VALUES ('1359', '河南省', '郑州市', '巩义市', '10', '0371');
INSERT INTO `tp_location` VALUES ('1360', '河南省', '郑州市', '荥阳市', '10', '0371');
INSERT INTO `tp_location` VALUES ('1361', '河南省', '郑州市', '新密市', '10', '0371');
INSERT INTO `tp_location` VALUES ('1362', '河南省', '郑州市', '新郑市', '10', '0371');
INSERT INTO `tp_location` VALUES ('1363', '河南省', '郑州市', '登封市', '10', '0371');
INSERT INTO `tp_location` VALUES ('1364', '河南省', '开封市', '龙亭区', '10', '0378');
INSERT INTO `tp_location` VALUES ('1365', '河南省', '开封市', '顺河回族区', '10', '0378');
INSERT INTO `tp_location` VALUES ('1366', '河南省', '开封市', '鼓楼区', '10', '0378');
INSERT INTO `tp_location` VALUES ('1367', '河南省', '开封市', '禹王台区 ', '10', '0378');
INSERT INTO `tp_location` VALUES ('1368', '河南省', '开封市', '金明区', '10', '0378');
INSERT INTO `tp_location` VALUES ('1369', '河南省', '开封市', '杞县', '10', '0378');
INSERT INTO `tp_location` VALUES ('1370', '河南省', '开封市', '通许县', '10', '0378');
INSERT INTO `tp_location` VALUES ('1371', '河南省', '开封市', '尉氏县', '10', '0378');
INSERT INTO `tp_location` VALUES ('1372', '河南省', '开封市', '开封县', '10', '0378');
INSERT INTO `tp_location` VALUES ('1373', '河南省', '开封市', '兰考县', '10', '0378');
INSERT INTO `tp_location` VALUES ('1374', '河南省', '洛阳市', '老城区', '10', '0379');
INSERT INTO `tp_location` VALUES ('1375', '河南省', '洛阳市', '西工区', '10', '0379');
INSERT INTO `tp_location` VALUES ('1376', '河南省', '洛阳市', '廛河回族区', '10', '0379');
INSERT INTO `tp_location` VALUES ('1377', '河南省', '洛阳市', '涧西区', '10', '0379');
INSERT INTO `tp_location` VALUES ('1378', '河南省', '洛阳市', '吉利区', '10', '0379');
INSERT INTO `tp_location` VALUES ('1379', '河南省', '洛阳市', '西工区', '10', '0379');
INSERT INTO `tp_location` VALUES ('1380', '河南省', '洛阳市', '孟津县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1381', '河南省', '洛阳市', '新安县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1382', '河南省', '洛阳市', '栾川县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1383', '河南省', '洛阳市', '嵩县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1384', '河南省', '洛阳市', '汝阳县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1385', '河南省', '洛阳市', '宜阳县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1386', '河南省', '洛阳市', '洛宁县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1387', '河南省', '洛阳市', '伊川县', '10', '0379');
INSERT INTO `tp_location` VALUES ('1388', '河南省', '洛阳市', '偃师市', '10', '0379');
INSERT INTO `tp_location` VALUES ('1389', '河南省', '平顶山市', '新华区', '10', '0375');
INSERT INTO `tp_location` VALUES ('1390', '河南省', '平顶山市', '卫东区', '10', '0375');
INSERT INTO `tp_location` VALUES ('1391', '河南省', '平顶山市', '石龙区', '10', '0375');
INSERT INTO `tp_location` VALUES ('1392', '河南省', '平顶山市', '湛河区', '10', '0375');
INSERT INTO `tp_location` VALUES ('1393', '河南省', '平顶山市', '宝丰县', '10', '0375');
INSERT INTO `tp_location` VALUES ('1394', '河南省', '平顶山市', '叶县', '10', '0375');
INSERT INTO `tp_location` VALUES ('1395', '河南省', '平顶山市', '鲁山县', '10', '0375');
INSERT INTO `tp_location` VALUES ('1396', '河南省', '平顶山市', '郏县', '10', '0375');
INSERT INTO `tp_location` VALUES ('1397', '河南省', '平顶山市', '舞钢市', '10', '0375');
INSERT INTO `tp_location` VALUES ('1398', '河南省', '平顶山市', '汝州市', '10', '0375');
INSERT INTO `tp_location` VALUES ('1399', '河南省', '安阳市', '文峰区', '10', '0372');
INSERT INTO `tp_location` VALUES ('1400', '河南省', '安阳市', '北关区', '10', '0372');
INSERT INTO `tp_location` VALUES ('1401', '河南省', '安阳市', '殷都区', '10', '0372');
INSERT INTO `tp_location` VALUES ('1402', '河南省', '安阳市', '龙安区', '10', '0372');
INSERT INTO `tp_location` VALUES ('1403', '河南省', '安阳市', '安阳县', '10', '0372');
INSERT INTO `tp_location` VALUES ('1404', '河南省', '安阳市', '汤阴县', '10', '0372');
INSERT INTO `tp_location` VALUES ('1405', '河南省', '安阳市', '滑县', '10', '0372');
INSERT INTO `tp_location` VALUES ('1406', '河南省', '安阳市', '内黄县', '10', '0372');
INSERT INTO `tp_location` VALUES ('1407', '河南省', '安阳市', '林州市', '10', '0372');
INSERT INTO `tp_location` VALUES ('1408', '河南省', '鹤壁市', '鹤山区', '10', '0392');
INSERT INTO `tp_location` VALUES ('1409', '河南省', '鹤壁市', '山城区', '10', '0392');
INSERT INTO `tp_location` VALUES ('1410', '河南省', '鹤壁市', '郊区', '10', '0392');
INSERT INTO `tp_location` VALUES ('1411', '河南省', '鹤壁市', '浚县', '10', '0392');
INSERT INTO `tp_location` VALUES ('1412', '河南省', '鹤壁市', '淇县', '10', '0392');
INSERT INTO `tp_location` VALUES ('1413', '河南省', '新乡市', '红旗区', '10', '0373');
INSERT INTO `tp_location` VALUES ('1414', '河南省', '新乡市', '卫滨区', '10', '0373');
INSERT INTO `tp_location` VALUES ('1415', '河南省', '新乡市', '牧野区', '10', '0373');
INSERT INTO `tp_location` VALUES ('1416', '河南省', '新乡市', '凤泉区', '10', '0373');
INSERT INTO `tp_location` VALUES ('1417', '河南省', '新乡市', '新乡县', '10', '0373');
INSERT INTO `tp_location` VALUES ('1418', '河南省', '新乡市', '获嘉县', '10', '0373');
INSERT INTO `tp_location` VALUES ('1419', '河南省', '新乡市', '原阳县', '10', '0373');
INSERT INTO `tp_location` VALUES ('1420', '河南省', '新乡市', '延津县', '10', '0373');
INSERT INTO `tp_location` VALUES ('1421', '河南省', '新乡市', '封丘县', '10', '0373');
INSERT INTO `tp_location` VALUES ('1422', '河南省', '新乡市', '长垣县', '10', '0373');
INSERT INTO `tp_location` VALUES ('1423', '河南省', '新乡市', '卫辉市', '10', '0373');
INSERT INTO `tp_location` VALUES ('1424', '河南省', '新乡市', '辉县市', '10', '0373');
INSERT INTO `tp_location` VALUES ('1425', '河南省', '焦作市', '解放区', '10', '0391');
INSERT INTO `tp_location` VALUES ('1426', '河南省', '焦作市', '中站区', '10', '0391');
INSERT INTO `tp_location` VALUES ('1427', '河南省', '焦作市', '马村区', '10', '0391');
INSERT INTO `tp_location` VALUES ('1428', '河南省', '焦作市', '山阳区', '10', '0391');
INSERT INTO `tp_location` VALUES ('1429', '河南省', '焦作市', '修武县', '10', '0391');
INSERT INTO `tp_location` VALUES ('1430', '河南省', '焦作市', '博爱县', '10', '0391');
INSERT INTO `tp_location` VALUES ('1431', '河南省', '焦作市', '武陟县', '10', '0391');
INSERT INTO `tp_location` VALUES ('1432', '河南省', '焦作市', '温县', '10', '0391');
INSERT INTO `tp_location` VALUES ('1433', '河南省', '焦作市', '沁阳市', '10', '0391');
INSERT INTO `tp_location` VALUES ('1434', '河南省', '焦作市', '孟州市', '10', '0391');
INSERT INTO `tp_location` VALUES ('1435', '河南省', '濮阳市', '华龙区', '10', '0393');
INSERT INTO `tp_location` VALUES ('1436', '河南省', '濮阳市', '清丰县', '10', '0393');
INSERT INTO `tp_location` VALUES ('1437', '河南省', '濮阳市', '南乐县', '10', '0393');
INSERT INTO `tp_location` VALUES ('1438', '河南省', '濮阳市', '范县', '10', '0393');
INSERT INTO `tp_location` VALUES ('1439', '河南省', '濮阳市', '台前县', '10', '0393');
INSERT INTO `tp_location` VALUES ('1440', '河南省', '濮阳市', '濮阳县', '10', '0393');
INSERT INTO `tp_location` VALUES ('1441', '河南省', '许昌市', '魏都区', '10', '0374');
INSERT INTO `tp_location` VALUES ('1442', '河南省', '许昌市', '许昌县', '10', '0374');
INSERT INTO `tp_location` VALUES ('1443', '河南省', '许昌市', '鄢陵县', '10', '0374');
INSERT INTO `tp_location` VALUES ('1444', '河南省', '许昌市', '襄城县', '10', '0374');
INSERT INTO `tp_location` VALUES ('1445', '河南省', '许昌市', '禹州市', '10', '0374');
INSERT INTO `tp_location` VALUES ('1446', '河南省', '许昌市', '长葛市', '10', '0374');
INSERT INTO `tp_location` VALUES ('1447', '河南省', '漯河市', '源汇区', '10', '0395');
INSERT INTO `tp_location` VALUES ('1448', '河南省', '漯河市', '郾城区', '10', '0395');
INSERT INTO `tp_location` VALUES ('1449', '河南省', '漯河市', '召陵区', '10', '0395');
INSERT INTO `tp_location` VALUES ('1450', '河南省', '漯河市', '舞阳县', '10', '0395');
INSERT INTO `tp_location` VALUES ('1451', '河南省', '漯河市', '临颍县', '10', '0395');
INSERT INTO `tp_location` VALUES ('1452', '河南省', '三门峡市', '湖滨区', '10', '0398');
INSERT INTO `tp_location` VALUES ('1453', '河南省', '三门峡市', '渑池县', '10', '0398');
INSERT INTO `tp_location` VALUES ('1454', '河南省', '三门峡市', '陕县', '10', '0398');
INSERT INTO `tp_location` VALUES ('1455', '河南省', '三门峡市', '卢氏县', '10', '0398');
INSERT INTO `tp_location` VALUES ('1456', '河南省', '三门峡市', '义马市', '10', '0398');
INSERT INTO `tp_location` VALUES ('1457', '河南省', '三门峡市', '灵宝市', '10', '0398');
INSERT INTO `tp_location` VALUES ('1458', '河南省', '南阳市', '宛城区', '10', '0377');
INSERT INTO `tp_location` VALUES ('1459', '河南省', '南阳市', '卧龙区', '10', '0377');
INSERT INTO `tp_location` VALUES ('1460', '河南省', '南阳市', '南召县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1461', '河南省', '南阳市', '方城县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1462', '河南省', '南阳市', '西峡县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1463', '河南省', '南阳市', '镇平县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1464', '河南省', '南阳市', '内乡县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1465', '河南省', '南阳市', '淅川县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1466', '河南省', '南阳市', '社旗县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1467', '河南省', '南阳市', '唐河县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1468', '河南省', '南阳市', '新野县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1469', '河南省', '南阳市', '桐柏县', '10', '0377');
INSERT INTO `tp_location` VALUES ('1470', '河南省', '南阳市', '邓州市', '10', '0377');
INSERT INTO `tp_location` VALUES ('1471', '河南省', '商丘市', '梁园区', '10', '0370');
INSERT INTO `tp_location` VALUES ('1472', '河南省', '商丘市', '睢阳区', '10', '0370');
INSERT INTO `tp_location` VALUES ('1473', '河南省', '商丘市', '民权县', '10', '0370');
INSERT INTO `tp_location` VALUES ('1474', '河南省', '商丘市', '睢县', '10', '0370');
INSERT INTO `tp_location` VALUES ('1475', '河南省', '商丘市', '宁陵县', '10', '0370');
INSERT INTO `tp_location` VALUES ('1476', '河南省', '商丘市', '柘城县', '10', '0370');
INSERT INTO `tp_location` VALUES ('1477', '河南省', '商丘市', '虞城县', '10', '0370');
INSERT INTO `tp_location` VALUES ('1478', '河南省', '商丘市', '夏邑县', '10', '0370');
INSERT INTO `tp_location` VALUES ('1479', '河南省', '商丘市', '永城市', '10', '0370');
INSERT INTO `tp_location` VALUES ('1480', '河南省', '信阳市', '浉河区', '10', '0376');
INSERT INTO `tp_location` VALUES ('1481', '河南省', '信阳市', '平桥区', '10', '0376');
INSERT INTO `tp_location` VALUES ('1482', '河南省', '信阳市', '罗山县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1483', '河南省', '信阳市', '光山县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1484', '河南省', '信阳市', '新县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1485', '河南省', '信阳市', '商城县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1486', '河南省', '信阳市', '固始县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1487', '河南省', '信阳市', '潢川县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1488', '河南省', '信阳市', '淮滨县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1489', '河南省', '信阳市', '息县', '10', '0376');
INSERT INTO `tp_location` VALUES ('1490', '河南省', '周口市', '周口市', '10', '0394');
INSERT INTO `tp_location` VALUES ('1491', '河南省', '周口市', '项城市', '10', '0394');
INSERT INTO `tp_location` VALUES ('1492', '河南省', '周口市', '扶沟县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1493', '河南省', '周口市', '西华县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1494', '河南省', '周口市', '商水县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1495', '河南省', '周口市', '太康县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1496', '河南省', '周口市', '鹿邑县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1497', '河南省', '周口市', '郸城县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1498', '河南省', '周口市', '淮阳县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1499', '河南省', '周口市', '沈丘县', '10', '0394');
INSERT INTO `tp_location` VALUES ('1500', '河南省', '驻马店市', '驻马店市', '10', '0396');
INSERT INTO `tp_location` VALUES ('1501', '河南省', '驻马店市', '确山县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1502', '河南省', '驻马店市', '泌阳县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1503', '河南省', '驻马店市', '遂平县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1504', '河南省', '驻马店市', '西平县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1505', '河南省', '驻马店市', '上蔡县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1506', '河南省', '驻马店市', '汝南县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1507', '河南省', '驻马店市', '平舆县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1508', '河南省', '驻马店市', '新蔡县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1509', '河南省', '驻马店市', '正阳县', '10', '0396');
INSERT INTO `tp_location` VALUES ('1510', '河南省', '济源市', '济源市', '10', '0391');
INSERT INTO `tp_location` VALUES ('1511', '湖北省', '武汉市', '江岸区', '12', '027');
INSERT INTO `tp_location` VALUES ('1512', '湖北省', '武汉市', '江汉区', '12', '027');
INSERT INTO `tp_location` VALUES ('1513', '湖北省', '武汉市', '乔口区', '12', '027');
INSERT INTO `tp_location` VALUES ('1514', '湖北省', '武汉市', '汉阳区', '12', '027');
INSERT INTO `tp_location` VALUES ('1515', '湖北省', '武汉市', '武昌区', '12', '027');
INSERT INTO `tp_location` VALUES ('1516', '湖北省', '武汉市', '青山区', '12', '027');
INSERT INTO `tp_location` VALUES ('1517', '湖北省', '武汉市', '洪山区', '12', '027');
INSERT INTO `tp_location` VALUES ('1518', '湖北省', '武汉市', '东西湖区', '12', '027');
INSERT INTO `tp_location` VALUES ('1519', '湖北省', '武汉市', '汉南区', '12', '027');
INSERT INTO `tp_location` VALUES ('1520', '湖北省', '武汉市', '蔡甸区', '12', '027');
INSERT INTO `tp_location` VALUES ('1521', '湖北省', '武汉市', '江夏区', '12', '027');
INSERT INTO `tp_location` VALUES ('1522', '湖北省', '武汉市', '黄陂区', '12', '027');
INSERT INTO `tp_location` VALUES ('1523', '湖北省', '武汉市', '新洲区', '12', '027');
INSERT INTO `tp_location` VALUES ('1524', '湖北省', '黄石市', '黄石港区', '12', '0714');
INSERT INTO `tp_location` VALUES ('1525', '湖北省', '黄石市', '西塞山区', '12', '0714');
INSERT INTO `tp_location` VALUES ('1526', '湖北省', '黄石市', '下陆区', '12', '0714');
INSERT INTO `tp_location` VALUES ('1527', '湖北省', '黄石市', '铁山区', '12', '0714');
INSERT INTO `tp_location` VALUES ('1528', '湖北省', '黄石市', '阳新县', '12', '0714');
INSERT INTO `tp_location` VALUES ('1529', '湖北省', '黄石市', '大冶市', '12', '0714');
INSERT INTO `tp_location` VALUES ('1530', '湖北省', '十堰市', '茅箭区', '12', '0719');
INSERT INTO `tp_location` VALUES ('1531', '湖北省', '十堰市', '张湾区', '12', '0719');
INSERT INTO `tp_location` VALUES ('1532', '湖北省', '十堰市', '郧县', '12', '0719');
INSERT INTO `tp_location` VALUES ('1533', '湖北省', '十堰市', '郧西县', '12', '0719');
INSERT INTO `tp_location` VALUES ('1534', '湖北省', '十堰市', '竹山县', '12', '0719');
INSERT INTO `tp_location` VALUES ('1535', '湖北省', '十堰市', '竹溪县', '12', '0719');
INSERT INTO `tp_location` VALUES ('1536', '湖北省', '十堰市', '房县', '12', '0719');
INSERT INTO `tp_location` VALUES ('1537', '湖北省', '十堰市', '丹江口市', '12', '0719');
INSERT INTO `tp_location` VALUES ('1538', '湖北省', '宜昌市', '西陵区', '12', '0717');
INSERT INTO `tp_location` VALUES ('1539', '湖北省', '宜昌市', '伍家岗区', '12', '0717');
INSERT INTO `tp_location` VALUES ('1540', '湖北省', '宜昌市', '点军区', '12', '0717');
INSERT INTO `tp_location` VALUES ('1541', '湖北省', '宜昌市', '猇亭区', '12', '0717');
INSERT INTO `tp_location` VALUES ('1542', '湖北省', '宜昌市', '夷陵区', '12', '0717');
INSERT INTO `tp_location` VALUES ('1543', '湖北省', '宜昌市', '远安县', '12', '0717');
INSERT INTO `tp_location` VALUES ('1544', '湖北省', '宜昌市', '兴山县', '12', '0717');
INSERT INTO `tp_location` VALUES ('1545', '湖北省', '宜昌市', '秭归县', '12', '0717');
INSERT INTO `tp_location` VALUES ('1546', '湖北省', '宜昌市', '长阳土家族自治县', '12', '0717');
INSERT INTO `tp_location` VALUES ('1547', '湖北省', '宜昌市', '五峰土家族自治县', '12', '0717');
INSERT INTO `tp_location` VALUES ('1548', '湖北省', '宜昌市', '宜都市', '12', '0717');
INSERT INTO `tp_location` VALUES ('1549', '湖北省', '宜昌市', '当阳市', '12', '0717');
INSERT INTO `tp_location` VALUES ('1550', '湖北省', '宜昌市', '枝江市', '12', '0717');
INSERT INTO `tp_location` VALUES ('1551', '湖北省', '襄阳市', '襄城区', '12', '0710');
INSERT INTO `tp_location` VALUES ('1552', '湖北省', '襄阳市', '樊城区', '12', '0710');
INSERT INTO `tp_location` VALUES ('1553', '湖北省', '襄阳市', '襄州区', '12', '0710');
INSERT INTO `tp_location` VALUES ('1554', '湖北省', '襄阳市', '南漳县', '12', '0710');
INSERT INTO `tp_location` VALUES ('1555', '湖北省', '襄阳市', '谷城县', '12', '0710');
INSERT INTO `tp_location` VALUES ('1556', '湖北省', '襄阳市', '保康县', '12', '0710');
INSERT INTO `tp_location` VALUES ('1557', '湖北省', '襄阳市', '老河口市', '12', '0710');
INSERT INTO `tp_location` VALUES ('1558', '湖北省', '襄阳市', '枣阳市', '12', '0710');
INSERT INTO `tp_location` VALUES ('1559', '湖北省', '襄阳市', '宜城市', '12', '0710');
INSERT INTO `tp_location` VALUES ('1560', '湖北省', '鄂州市', '梁子湖区', '12', '0711');
INSERT INTO `tp_location` VALUES ('1561', '湖北省', '鄂州市', '华容区', '12', '0711');
INSERT INTO `tp_location` VALUES ('1562', '湖北省', '鄂州市', '鄂城区', '12', '0711');
INSERT INTO `tp_location` VALUES ('1563', '湖北省', '荆门市', '东宝区', '12', '0724');
INSERT INTO `tp_location` VALUES ('1564', '湖北省', '荆门市', '掇刀区', '12', '0724');
INSERT INTO `tp_location` VALUES ('1565', '湖北省', '荆门市', '京山县', '12', '0724');
INSERT INTO `tp_location` VALUES ('1566', '湖北省', '荆门市', '沙洋县', '12', '0724');
INSERT INTO `tp_location` VALUES ('1567', '湖北省', '荆门市', '钟祥市', '12', '0724');
INSERT INTO `tp_location` VALUES ('1568', '湖北省', '孝感市', '孝南区', '12', '0712');
INSERT INTO `tp_location` VALUES ('1569', '湖北省', '孝感市', '孝昌县', '12', '0712');
INSERT INTO `tp_location` VALUES ('1570', '湖北省', '孝感市', '大悟县', '12', '0712');
INSERT INTO `tp_location` VALUES ('1571', '湖北省', '孝感市', '云梦县', '12', '0712');
INSERT INTO `tp_location` VALUES ('1572', '湖北省', '孝感市', '应城市', '12', '0712');
INSERT INTO `tp_location` VALUES ('1573', '湖北省', '孝感市', '安陆市', '12', '0712');
INSERT INTO `tp_location` VALUES ('1574', '湖北省', '孝感市', '汉川市', '12', '0712');
INSERT INTO `tp_location` VALUES ('1575', '湖北省', '荆州市', '沙市区', '12', '0716');
INSERT INTO `tp_location` VALUES ('1576', '湖北省', '荆州市', '荆州区', '12', '0716');
INSERT INTO `tp_location` VALUES ('1577', '湖北省', '荆州市', '公安县', '12', '0716');
INSERT INTO `tp_location` VALUES ('1578', '湖北省', '荆州市', '监利县', '12', '0716');
INSERT INTO `tp_location` VALUES ('1579', '湖北省', '荆州市', '江陵县', '12', '0716');
INSERT INTO `tp_location` VALUES ('1580', '湖北省', '荆州市', '石首市', '12', '0716');
INSERT INTO `tp_location` VALUES ('1581', '湖北省', '荆州市', '洪湖市', '12', '0716');
INSERT INTO `tp_location` VALUES ('1582', '湖北省', '荆州市', '松滋市', '12', '0716');
INSERT INTO `tp_location` VALUES ('1583', '湖北省', '黄冈市', '黄州区', '12', '0713');
INSERT INTO `tp_location` VALUES ('1584', '湖北省', '黄冈市', '团风县', '12', '0713');
INSERT INTO `tp_location` VALUES ('1585', '湖北省', '黄冈市', '红安县', '12', '0713');
INSERT INTO `tp_location` VALUES ('1586', '湖北省', '黄冈市', '罗田县', '12', '0713');
INSERT INTO `tp_location` VALUES ('1587', '湖北省', '黄冈市', '英山县', '12', '0713');
INSERT INTO `tp_location` VALUES ('1588', '湖北省', '黄冈市', '浠水县', '12', '0713');
INSERT INTO `tp_location` VALUES ('1589', '湖北省', '黄冈市', '蕲春县', '12', '0713');
INSERT INTO `tp_location` VALUES ('1590', '湖北省', '黄冈市', '黄梅县', '12', '0713');
INSERT INTO `tp_location` VALUES ('1591', '湖北省', '黄冈市', '麻城市', '12', '0713');
INSERT INTO `tp_location` VALUES ('1592', '湖北省', '黄冈市', '武穴市', '12', '0713');
INSERT INTO `tp_location` VALUES ('1593', '湖北省', '咸宁市', '咸安区', '12', '0715');
INSERT INTO `tp_location` VALUES ('1594', '湖北省', '咸宁市', '嘉鱼县', '12', '0715');
INSERT INTO `tp_location` VALUES ('1595', '湖北省', '咸宁市', '通城县', '12', '0715');
INSERT INTO `tp_location` VALUES ('1596', '湖北省', '咸宁市', '崇阳县', '12', '0715');
INSERT INTO `tp_location` VALUES ('1597', '湖北省', '咸宁市', '通山县', '12', '0715');
INSERT INTO `tp_location` VALUES ('1598', '湖北省', '咸宁市', '赤壁市', '12', '0715');
INSERT INTO `tp_location` VALUES ('1599', '湖北省', '恩施土家族苗族自治州', '恩施市', '12', '0718');
INSERT INTO `tp_location` VALUES ('1600', '湖北省', '恩施土家族苗族自治州', '利川市', '12', '0718');
INSERT INTO `tp_location` VALUES ('1601', '湖北省', '恩施土家族苗族自治州', '建始县', '12', '0718');
INSERT INTO `tp_location` VALUES ('1602', '湖北省', '恩施土家族苗族自治州', '巴东县', '12', '0718');
INSERT INTO `tp_location` VALUES ('1603', '湖北省', '恩施土家族苗族自治州', '宣恩县', '12', '0718');
INSERT INTO `tp_location` VALUES ('1604', '湖北省', '恩施土家族苗族自治州', '咸丰县', '12', '0718');
INSERT INTO `tp_location` VALUES ('1605', '湖北省', '恩施土家族苗族自治州', '来凤县', '12', '0718');
INSERT INTO `tp_location` VALUES ('1606', '湖北省', '恩施土家族苗族自治州', '鹤峰县', '12', '0718');
INSERT INTO `tp_location` VALUES ('1607', '湖北省', '仙桃市', '仙桃市', '12', '0728');
INSERT INTO `tp_location` VALUES ('1608', '湖北省', '潜江市', '潜江市', '12', '0728');
INSERT INTO `tp_location` VALUES ('1609', '湖北省', '天门市', '天门市', '12', '0728');
INSERT INTO `tp_location` VALUES ('1610', '湖北省', '神农架林区', '神农架林区', '12', '0719');
INSERT INTO `tp_location` VALUES ('1611', '湖南省', '长沙市', '芙蓉区', '13', '0731');
INSERT INTO `tp_location` VALUES ('1612', '湖南省', '长沙市', '天心区', '13', '0731');
INSERT INTO `tp_location` VALUES ('1613', '湖南省', '长沙市', '岳麓区', '13', '0731');
INSERT INTO `tp_location` VALUES ('1614', '湖南省', '长沙市', '开福区', '13', '0731');
INSERT INTO `tp_location` VALUES ('1615', '湖南省', '长沙市', '雨花区', '13', '0731');
INSERT INTO `tp_location` VALUES ('1616', '湖南省', '长沙市', '长沙县', '13', '0731');
INSERT INTO `tp_location` VALUES ('1617', '湖南省', '长沙市', '望城县', '13', '0731');
INSERT INTO `tp_location` VALUES ('1618', '湖南省', '长沙市', '宁乡县', '13', '0731');
INSERT INTO `tp_location` VALUES ('1619', '湖南省', '长沙市', '浏阳市', '13', '0731');
INSERT INTO `tp_location` VALUES ('1620', '湖南省', '株洲市', '荷塘区', '13', '0733');
INSERT INTO `tp_location` VALUES ('1621', '湖南省', '株洲市', '芦淞区', '13', '0733');
INSERT INTO `tp_location` VALUES ('1622', '湖南省', '株洲市', '石峰区', '13', '0733');
INSERT INTO `tp_location` VALUES ('1623', '湖南省', '株洲市', '天元区', '13', '0733');
INSERT INTO `tp_location` VALUES ('1624', '湖南省', '株洲市', '株洲县', '13', '0733');
INSERT INTO `tp_location` VALUES ('1625', '湖南省', '株洲市', '攸县', '13', '0733');
INSERT INTO `tp_location` VALUES ('1626', '湖南省', '株洲市', '茶陵县', '13', '0733');
INSERT INTO `tp_location` VALUES ('1627', '湖南省', '株洲市', '炎陵县', '13', '0733');
INSERT INTO `tp_location` VALUES ('1628', '湖南省', '株洲市', '醴陵市', '13', '0733');
INSERT INTO `tp_location` VALUES ('1629', '湖南省', '湘潭市', '雨湖区', '13', '0732');
INSERT INTO `tp_location` VALUES ('1630', '湖南省', '湘潭市', '岳塘区', '13', '0732');
INSERT INTO `tp_location` VALUES ('1631', '湖南省', '湘潭市', '湘潭县', '13', '0732');
INSERT INTO `tp_location` VALUES ('1632', '湖南省', '湘潭市', '湘乡市', '13', '0732');
INSERT INTO `tp_location` VALUES ('1633', '湖南省', '湘潭市', '韶山市', '13', '0732');
INSERT INTO `tp_location` VALUES ('1634', '湖南省', '衡阳市', '珠晖区', '13', '0734');
INSERT INTO `tp_location` VALUES ('1635', '湖南省', '衡阳市', '石鼓区', '13', '0734');
INSERT INTO `tp_location` VALUES ('1636', '湖南省', '衡阳市', '雁峰区', '13', '0734');
INSERT INTO `tp_location` VALUES ('1637', '湖南省', '衡阳市', '蒸湘区', '13', '0734');
INSERT INTO `tp_location` VALUES ('1638', '湖南省', '衡阳市', '南岳区', '13', '0734');
INSERT INTO `tp_location` VALUES ('1639', '湖南省', '衡阳市', '衡阳县', '13', '0734');
INSERT INTO `tp_location` VALUES ('1640', '湖南省', '衡阳市', '衡南县', '13', '0734');
INSERT INTO `tp_location` VALUES ('1641', '湖南省', '衡阳市', '衡山县', '13', '0734');
INSERT INTO `tp_location` VALUES ('1642', '湖南省', '衡阳市', '衡东县', '13', '0734');
INSERT INTO `tp_location` VALUES ('1643', '湖南省', '衡阳市', '祁东县', '13', '0734');
INSERT INTO `tp_location` VALUES ('1644', '湖南省', '衡阳市', '耒阳市', '13', '0734');
INSERT INTO `tp_location` VALUES ('1645', '湖南省', '衡阳市', '常宁市', '13', '0734');
INSERT INTO `tp_location` VALUES ('1646', '湖南省', '邵阳市', '双清区', '13', '0739');
INSERT INTO `tp_location` VALUES ('1647', '湖南省', '邵阳市', '大祥区', '13', '0739');
INSERT INTO `tp_location` VALUES ('1648', '湖南省', '邵阳市', '北塔区', '13', '0739');
INSERT INTO `tp_location` VALUES ('1649', '湖南省', '邵阳市', '邵东县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1650', '湖南省', '邵阳市', '新邵县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1651', '湖南省', '邵阳市', '邵阳县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1652', '湖南省', '邵阳市', '隆回县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1653', '湖南省', '邵阳市', '洞口县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1654', '湖南省', '邵阳市', '绥宁县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1655', '湖南省', '邵阳市', '新宁县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1656', '湖南省', '邵阳市', '城步苗族自治县', '13', '0739');
INSERT INTO `tp_location` VALUES ('1657', '湖南省', '邵阳市', '武冈市', '13', '0739');
INSERT INTO `tp_location` VALUES ('1658', '湖南省', '岳阳市', '岳阳楼区', '13', '0730');
INSERT INTO `tp_location` VALUES ('1659', '湖南省', '岳阳市', '云溪区', '13', '0730');
INSERT INTO `tp_location` VALUES ('1660', '湖南省', '岳阳市', '君山区', '13', '0730');
INSERT INTO `tp_location` VALUES ('1661', '湖南省', '岳阳市', '岳阳县', '13', '0730');
INSERT INTO `tp_location` VALUES ('1662', '湖南省', '岳阳市', '华容县', '13', '0730');
INSERT INTO `tp_location` VALUES ('1663', '湖南省', '岳阳市', '湘阴县', '13', '0730');
INSERT INTO `tp_location` VALUES ('1664', '湖南省', '岳阳市', '平江县', '13', '0730');
INSERT INTO `tp_location` VALUES ('1665', '湖南省', '岳阳市', '汨罗市', '13', '0730');
INSERT INTO `tp_location` VALUES ('1666', '湖南省', '岳阳市', '临湘市', '13', '0730');
INSERT INTO `tp_location` VALUES ('1667', '湖南省', '常德市', '武陵区', '13', '0736');
INSERT INTO `tp_location` VALUES ('1668', '湖南省', '常德市', '鼎城区', '13', '0736');
INSERT INTO `tp_location` VALUES ('1669', '湖南省', '常德市', '安乡县', '13', '0736');
INSERT INTO `tp_location` VALUES ('1670', '湖南省', '常德市', '汉寿县', '13', '0736');
INSERT INTO `tp_location` VALUES ('1671', '湖南省', '常德市', '澧县', '13', '0736');
INSERT INTO `tp_location` VALUES ('1672', '湖南省', '常德市', '临澧县', '13', '0736');
INSERT INTO `tp_location` VALUES ('1673', '湖南省', '常德市', '桃源县', '13', '0736');
INSERT INTO `tp_location` VALUES ('1674', '湖南省', '常德市', '石门县', '13', '0736');
INSERT INTO `tp_location` VALUES ('1675', '湖南省', '常德市', '津市市', '13', '0736');
INSERT INTO `tp_location` VALUES ('1676', '湖南省', '张家界市', '永定区', '13', '0744');
INSERT INTO `tp_location` VALUES ('1677', '湖南省', '张家界市', '武陵源区', '13', '0744');
INSERT INTO `tp_location` VALUES ('1678', '湖南省', '张家界市', '慈利县', '13', '0744');
INSERT INTO `tp_location` VALUES ('1679', '湖南省', '张家界市', '桑植县', '13', '0744');
INSERT INTO `tp_location` VALUES ('1680', '湖南省', '益阳市', '资阳区', '13', '0737');
INSERT INTO `tp_location` VALUES ('1681', '湖南省', '益阳市', '赫山区', '13', '0737');
INSERT INTO `tp_location` VALUES ('1682', '湖南省', '益阳市', '南县', '13', '0737');
INSERT INTO `tp_location` VALUES ('1683', '湖南省', '益阳市', '桃江县', '13', '0737');
INSERT INTO `tp_location` VALUES ('1684', '湖南省', '益阳市', '安化县', '13', '0737');
INSERT INTO `tp_location` VALUES ('1685', '湖南省', '益阳市', '沅江市', '13', '0737');
INSERT INTO `tp_location` VALUES ('1686', '湖南省', '郴州市', '北湖区', '13', '0735');
INSERT INTO `tp_location` VALUES ('1687', '湖南省', '郴州市', '苏仙区', '13', '0735');
INSERT INTO `tp_location` VALUES ('1688', '湖南省', '郴州市', '桂阳县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1689', '湖南省', '郴州市', '宜章县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1690', '湖南省', '郴州市', '永兴县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1691', '湖南省', '郴州市', '嘉禾县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1692', '湖南省', '郴州市', '临武县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1693', '湖南省', '郴州市', '汝城县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1694', '湖南省', '郴州市', '桂东县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1695', '湖南省', '郴州市', '安仁县', '13', '0735');
INSERT INTO `tp_location` VALUES ('1696', '湖南省', '郴州市', '资兴市', '13', '0735');
INSERT INTO `tp_location` VALUES ('1697', '湖南省', '永州市', '芝山区', '13', '0746');
INSERT INTO `tp_location` VALUES ('1698', '湖南省', '永州市', '冷水滩区', '13', '0746');
INSERT INTO `tp_location` VALUES ('1699', '湖南省', '永州市', '祁阳县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1700', '湖南省', '永州市', '东安县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1701', '湖南省', '永州市', '双牌县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1702', '湖南省', '永州市', '道县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1703', '湖南省', '永州市', '江永县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1704', '湖南省', '永州市', '宁远县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1705', '湖南省', '永州市', '蓝山县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1706', '湖南省', '永州市', '新田县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1707', '湖南省', '永州市', '江华瑶族自治县', '13', '0746');
INSERT INTO `tp_location` VALUES ('1708', '湖南省', '怀化市', '鹤城区', '13', '0745');
INSERT INTO `tp_location` VALUES ('1709', '湖南省', '怀化市', '中方县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1710', '湖南省', '怀化市', '沅陵县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1711', '湖南省', '怀化市', '辰溪县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1712', '湖南省', '怀化市', '溆浦县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1713', '湖南省', '怀化市', '会同县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1714', '湖南省', '怀化市', '麻阳苗族自治县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1715', '湖南省', '怀化市', '新晃侗族自治县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1716', '湖南省', '怀化市', '芷江侗族自治县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1717', '湖南省', '怀化市', '靖州苗族侗族自治县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1718', '湖南省', '怀化市', '通道侗族自治县', '13', '0745');
INSERT INTO `tp_location` VALUES ('1719', '湖南省', '怀化市', '洪江市', '13', '0745');
INSERT INTO `tp_location` VALUES ('1720', '湖南省', '娄底市', '娄底市', '13', '0738');
INSERT INTO `tp_location` VALUES ('1721', '湖南省', '娄底市', '冷水江市', '13', '0738');
INSERT INTO `tp_location` VALUES ('1722', '湖南省', '娄底市', '涟源市', '13', '0738');
INSERT INTO `tp_location` VALUES ('1723', '湖南省', '娄底市', '双峰县', '13', '0738');
INSERT INTO `tp_location` VALUES ('1724', '湖南省', '娄底市', '新化县', '13', '0738');
INSERT INTO `tp_location` VALUES ('1725', '湖南省', '湘西土家族苗族自治州', '吉首市', '13', '0743');
INSERT INTO `tp_location` VALUES ('1726', '湖南省', '湘西土家族苗族自治州', '泸溪县', '13', '0743');
INSERT INTO `tp_location` VALUES ('1727', '湖南省', '湘西土家族苗族自治州', '凤凰县', '13', '0743');
INSERT INTO `tp_location` VALUES ('1728', '湖南省', '湘西土家族苗族自治州', '花垣县', '13', '0743');
INSERT INTO `tp_location` VALUES ('1729', '湖南省', '湘西土家族苗族自治州', '保靖县', '13', '0743');
INSERT INTO `tp_location` VALUES ('1730', '湖南省', '湘西土家族苗族自治州', '古丈县', '13', '0743');
INSERT INTO `tp_location` VALUES ('1731', '湖南省', '湘西土家族苗族自治州', '永顺县', '13', '0743');
INSERT INTO `tp_location` VALUES ('1732', '湖南省', '湘西土家族苗族自治州', '龙山县', '13', '0743');
INSERT INTO `tp_location` VALUES ('1733', '广东省', '广州市', '东山区', '05', '020');
INSERT INTO `tp_location` VALUES ('1734', '广东省', '广州市', '荔湾区', '05', '020');
INSERT INTO `tp_location` VALUES ('1735', '广东省', '广州市', '越秀区', '05', '020');
INSERT INTO `tp_location` VALUES ('1736', '广东省', '广州市', '海珠区', '05', '020');
INSERT INTO `tp_location` VALUES ('1737', '广东省', '广州市', '天河区', '05', '020');
INSERT INTO `tp_location` VALUES ('1738', '广东省', '广州市', '芳村区', '05', '020');
INSERT INTO `tp_location` VALUES ('1739', '广东省', '广州市', '白云区', '05', '020');
INSERT INTO `tp_location` VALUES ('1740', '广东省', '广州市', '黄埔区', '05', '020');
INSERT INTO `tp_location` VALUES ('1741', '广东省', '广州市', '番禺区', '05', '020');
INSERT INTO `tp_location` VALUES ('1742', '广东省', '广州市', '花都区', '05', '020');
INSERT INTO `tp_location` VALUES ('1743', '广东省', '广州市', '增城市', '05', '020');
INSERT INTO `tp_location` VALUES ('1744', '广东省', '广州市', '从化市', '05', '020');
INSERT INTO `tp_location` VALUES ('1745', '广东省', '韶关市', '武江区', '05', '0751');
INSERT INTO `tp_location` VALUES ('1746', '广东省', '韶关市', '浈江区', '05', '0751');
INSERT INTO `tp_location` VALUES ('1747', '广东省', '韶关市', '曲江区', '05', '0751');
INSERT INTO `tp_location` VALUES ('1748', '广东省', '韶关市', '始兴县', '05', '0751');
INSERT INTO `tp_location` VALUES ('1749', '广东省', '韶关市', '仁化县', '05', '0751');
INSERT INTO `tp_location` VALUES ('1750', '广东省', '韶关市', '翁源县', '05', '0751');
INSERT INTO `tp_location` VALUES ('1751', '广东省', '韶关市', '乳源瑶族自治县', '05', '0751');
INSERT INTO `tp_location` VALUES ('1752', '广东省', '韶关市', '新丰县', '05', '0751');
INSERT INTO `tp_location` VALUES ('1753', '广东省', '韶关市', '乐昌市', '05', '0751');
INSERT INTO `tp_location` VALUES ('1754', '广东省', '韶关市', '南雄市', '05', '0751');
INSERT INTO `tp_location` VALUES ('1755', '广东省', '深圳市', '罗湖区', '05', '0755');
INSERT INTO `tp_location` VALUES ('1756', '广东省', '深圳市', '福田区', '05', '0755');
INSERT INTO `tp_location` VALUES ('1757', '广东省', '深圳市', '南山区', '05', '0755');
INSERT INTO `tp_location` VALUES ('1758', '广东省', '深圳市', '宝安区', '05', '0755');
INSERT INTO `tp_location` VALUES ('1759', '广东省', '深圳市', '龙岗区', '05', '0755');
INSERT INTO `tp_location` VALUES ('1760', '广东省', '深圳市', '盐田区', '05', '0755');
INSERT INTO `tp_location` VALUES ('1761', '广东省', '珠海市', '香洲区', '05', '0756');
INSERT INTO `tp_location` VALUES ('1762', '广东省', '珠海市', '斗门区', '05', '0756');
INSERT INTO `tp_location` VALUES ('1763', '广东省', '珠海市', '金湾区', '05', '0756');
INSERT INTO `tp_location` VALUES ('1764', '广东省', '汕头市', '濠江区', '05', '0754');
INSERT INTO `tp_location` VALUES ('1765', '广东省', '汕头市', '龙湖区', '05', '0754');
INSERT INTO `tp_location` VALUES ('1766', '广东省', '汕头市', '金平区', '05', '0754');
INSERT INTO `tp_location` VALUES ('1767', '广东省', '汕头市', '潮南区', '05', '0754');
INSERT INTO `tp_location` VALUES ('1768', '广东省', '汕头市', '澄海区', '05', '0754');
INSERT INTO `tp_location` VALUES ('1769', '广东省', '汕头市', '潮阳区', '05', '0754');
INSERT INTO `tp_location` VALUES ('1770', '广东省', '汕头市', '南澳县', '05', '0754');
INSERT INTO `tp_location` VALUES ('1771', '广东省', '佛山市', '禅城区', '05', '0757');
INSERT INTO `tp_location` VALUES ('1772', '广东省', '佛山市', '顺德区', '05', '0757');
INSERT INTO `tp_location` VALUES ('1773', '广东省', '佛山市', '南海区', '05', '0757');
INSERT INTO `tp_location` VALUES ('1774', '广东省', '佛山市', '三水区', '05', '0757');
INSERT INTO `tp_location` VALUES ('1775', '广东省', '佛山市', '高明区', '05', '0757');
INSERT INTO `tp_location` VALUES ('1776', '广东省', '江门市', '蓬江区', '05', '0750');
INSERT INTO `tp_location` VALUES ('1777', '广东省', '江门市', '江海区', '05', '0750');
INSERT INTO `tp_location` VALUES ('1778', '广东省', '江门市', '台山市', '05', '0750');
INSERT INTO `tp_location` VALUES ('1779', '广东省', '江门市', '新会区', '05', '0750');
INSERT INTO `tp_location` VALUES ('1780', '广东省', '江门市', '开平市', '05', '0750');
INSERT INTO `tp_location` VALUES ('1781', '广东省', '江门市', '鹤山市', '05', '0750');
INSERT INTO `tp_location` VALUES ('1782', '广东省', '江门市', '恩平市', '05', '0750');
INSERT INTO `tp_location` VALUES ('1783', '广东省', '湛江市', '赤坎区', '05', '0759');
INSERT INTO `tp_location` VALUES ('1784', '广东省', '湛江市', '霞山区', '05', '0759');
INSERT INTO `tp_location` VALUES ('1785', '广东省', '湛江市', '坡头区', '05', '0759');
INSERT INTO `tp_location` VALUES ('1786', '广东省', '湛江市', '麻章区', '05', '0759');
INSERT INTO `tp_location` VALUES ('1787', '广东省', '湛江市', '遂溪县', '05', '0759');
INSERT INTO `tp_location` VALUES ('1788', '广东省', '湛江市', '徐闻县', '05', '0759');
INSERT INTO `tp_location` VALUES ('1789', '广东省', '湛江市', '廉江市', '05', '0759');
INSERT INTO `tp_location` VALUES ('1790', '广东省', '湛江市', '雷州市', '05', '0759');
INSERT INTO `tp_location` VALUES ('1791', '广东省', '湛江市', '吴川市', '05', '0759');
INSERT INTO `tp_location` VALUES ('1792', '广东省', '茂名市', '茂南区', '05', '0668');
INSERT INTO `tp_location` VALUES ('1793', '广东省', '茂名市', '茂港区', '05', '0668');
INSERT INTO `tp_location` VALUES ('1794', '广东省', '茂名市', '电白县', '05', '0668');
INSERT INTO `tp_location` VALUES ('1795', '广东省', '茂名市', '高州市', '05', '0668');
INSERT INTO `tp_location` VALUES ('1796', '广东省', '茂名市', '化州市', '05', '0668');
INSERT INTO `tp_location` VALUES ('1797', '广东省', '茂名市', '信宜市', '05', '0668');
INSERT INTO `tp_location` VALUES ('1798', '广东省', '肇庆市', '端州区', '05', '0758');
INSERT INTO `tp_location` VALUES ('1799', '广东省', '肇庆市', '鼎湖区', '05', '0758');
INSERT INTO `tp_location` VALUES ('1800', '广东省', '肇庆市', '广宁县', '05', '0758');
INSERT INTO `tp_location` VALUES ('1801', '广东省', '肇庆市', '怀集县', '05', '0758');
INSERT INTO `tp_location` VALUES ('1802', '广东省', '肇庆市', '封开县', '05', '0758');
INSERT INTO `tp_location` VALUES ('1803', '广东省', '肇庆市', '德庆县', '05', '0758');
INSERT INTO `tp_location` VALUES ('1804', '广东省', '肇庆市', '高要市', '05', '0758');
INSERT INTO `tp_location` VALUES ('1805', '广东省', '肇庆市', '四会市', '05', '0758');
INSERT INTO `tp_location` VALUES ('1806', '广东省', '惠州市', '惠城区', '05', '0752');
INSERT INTO `tp_location` VALUES ('1807', '广东省', '惠州市', '博罗县', '05', '0752');
INSERT INTO `tp_location` VALUES ('1808', '广东省', '惠州市', '惠东县', '05', '0752');
INSERT INTO `tp_location` VALUES ('1809', '广东省', '惠州市', '龙门县', '05', '0752');
INSERT INTO `tp_location` VALUES ('1810', '广东省', '惠州市', '惠阳区', '05', '0752');
INSERT INTO `tp_location` VALUES ('1811', '广东省', '梅州市', '梅江区', '05', '0753');
INSERT INTO `tp_location` VALUES ('1812', '广东省', '梅州市', '梅县', '05', '0753');
INSERT INTO `tp_location` VALUES ('1813', '广东省', '梅州市', '大埔县', '05', '0753');
INSERT INTO `tp_location` VALUES ('1814', '广东省', '梅州市', '丰顺县', '05', '0753');
INSERT INTO `tp_location` VALUES ('1815', '广东省', '梅州市', '五华县', '05', '0753');
INSERT INTO `tp_location` VALUES ('1816', '广东省', '梅州市', '平远县', '05', '0753');
INSERT INTO `tp_location` VALUES ('1817', '广东省', '梅州市', '蕉岭县', '05', '0753');
INSERT INTO `tp_location` VALUES ('1818', '广东省', '梅州市', '兴宁市', '05', '0753');
INSERT INTO `tp_location` VALUES ('1819', '广东省', '汕尾市', '汕尾城区', '05', '0660');
INSERT INTO `tp_location` VALUES ('1820', '广东省', '汕尾市', '海丰县', '05', '0660');
INSERT INTO `tp_location` VALUES ('1821', '广东省', '汕尾市', '陆河县', '05', '0660');
INSERT INTO `tp_location` VALUES ('1822', '广东省', '汕尾市', '陆丰市', '05', '0660');
INSERT INTO `tp_location` VALUES ('1823', '广东省', '河源市', '源城区', '05', '0762');
INSERT INTO `tp_location` VALUES ('1824', '广东省', '河源市', '紫金县', '05', '0762');
INSERT INTO `tp_location` VALUES ('1825', '广东省', '河源市', '龙川县', '05', '0762');
INSERT INTO `tp_location` VALUES ('1826', '广东省', '河源市', '连平县', '05', '0762');
INSERT INTO `tp_location` VALUES ('1827', '广东省', '河源市', '和平县', '05', '0762');
INSERT INTO `tp_location` VALUES ('1828', '广东省', '河源市', '东源县', '05', '0762');
INSERT INTO `tp_location` VALUES ('1829', '广东省', '阳江市', '江城区', '05', '0662');
INSERT INTO `tp_location` VALUES ('1830', '广东省', '阳江市', '阳西县', '05', '0662');
INSERT INTO `tp_location` VALUES ('1831', '广东省', '阳江市', '阳东县', '05', '0662');
INSERT INTO `tp_location` VALUES ('1832', '广东省', '阳江市', '阳春市', '05', '0662');
INSERT INTO `tp_location` VALUES ('1833', '广东省', '清远市', '清城区', '05', '0763');
INSERT INTO `tp_location` VALUES ('1834', '广东省', '清远市', '佛冈县', '05', '0763');
INSERT INTO `tp_location` VALUES ('1835', '广东省', '清远市', '阳山县', '05', '0763');
INSERT INTO `tp_location` VALUES ('1836', '广东省', '清远市', '连山壮族瑶族自治县', '05', '0763');
INSERT INTO `tp_location` VALUES ('1837', '广东省', '清远市', '连南瑶族自治县', '05', '0763');
INSERT INTO `tp_location` VALUES ('1838', '广东省', '清远市', '清新县', '05', '0763');
INSERT INTO `tp_location` VALUES ('1839', '广东省', '清远市', '英德市', '05', '0763');
INSERT INTO `tp_location` VALUES ('1840', '广东省', '清远市', '连州市', '05', '0763');
INSERT INTO `tp_location` VALUES ('1841', '广东省', '东莞市', '东莞市', '05', '0769');
INSERT INTO `tp_location` VALUES ('1842', '广东省', '中山市', '中山市', '05', '0760');
INSERT INTO `tp_location` VALUES ('1843', '广东省', '潮州市', '湘桥区', '05', '0768');
INSERT INTO `tp_location` VALUES ('1844', '广东省', '潮州市', '潮安县', '05', '0768');
INSERT INTO `tp_location` VALUES ('1845', '广东省', '潮州市', '饶平县', '05', '0768');
INSERT INTO `tp_location` VALUES ('1846', '广东省', '揭阳市', '榕城区', '05', '0663');
INSERT INTO `tp_location` VALUES ('1847', '广东省', '揭阳市', '揭东县', '05', '0663');
INSERT INTO `tp_location` VALUES ('1848', '广东省', '揭阳市', '揭西县', '05', '0663');
INSERT INTO `tp_location` VALUES ('1849', '广东省', '揭阳市', '惠来县', '05', '0663');
INSERT INTO `tp_location` VALUES ('1850', '广东省', '揭阳市', '普宁市', '05', '0663');
INSERT INTO `tp_location` VALUES ('1851', '广东省', '云浮市', '云城区', '05', '0766');
INSERT INTO `tp_location` VALUES ('1852', '广东省', '云浮市', '新兴县', '05', '0766');
INSERT INTO `tp_location` VALUES ('1853', '广东省', '云浮市', '郁南县', '05', '0766');
INSERT INTO `tp_location` VALUES ('1854', '广东省', '云浮市', '云安县', '05', '0766');
INSERT INTO `tp_location` VALUES ('1855', '广东省', '云浮市', '罗定市', '05', '0766');
INSERT INTO `tp_location` VALUES ('1856', '广西', '南宁市', '兴宁区', '06', '0771');
INSERT INTO `tp_location` VALUES ('1857', '广西', '南宁市', '青秀区', '06', '0771');
INSERT INTO `tp_location` VALUES ('1858', '广西', '南宁市', '西乡塘区', '06', '0771');
INSERT INTO `tp_location` VALUES ('1859', '广西', '南宁市', '江南区', '06', '0771');
INSERT INTO `tp_location` VALUES ('1860', '广西', '南宁市', '良庆区', '06', '0771');
INSERT INTO `tp_location` VALUES ('1861', '广西', '南宁市', '邕宁区', '06', '0771');
INSERT INTO `tp_location` VALUES ('1862', '广西', '南宁市', '武鸣县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1863', '广西', '南宁市', '隆安县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1864', '广西', '南宁市', '马山县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1865', '广西', '南宁市', '上林县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1866', '广西', '南宁市', '宾阳县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1867', '广西', '南宁市', '横县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1868', '广西', '柳州市', '城中区', '06', '0772');
INSERT INTO `tp_location` VALUES ('1869', '广西', '柳州市', '鱼峰区', '06', '0772');
INSERT INTO `tp_location` VALUES ('1870', '广西', '柳州市', '柳南区', '06', '0772');
INSERT INTO `tp_location` VALUES ('1871', '广西', '柳州市', '柳北区', '06', '0772');
INSERT INTO `tp_location` VALUES ('1872', '广西', '柳州市', '柳江县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1873', '广西', '柳州市', '柳城县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1874', '广西', '柳州市', '鹿寨县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1875', '广西', '柳州市', '融安县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1876', '广西', '柳州市', '融水苗族自治县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1877', '广西', '柳州市', '三江侗族自治县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1878', '广西', '桂林市', '秀峰区', '06', '0773');
INSERT INTO `tp_location` VALUES ('1879', '广西', '桂林市', '叠彩区', '06', '0773');
INSERT INTO `tp_location` VALUES ('1880', '广西', '桂林市', '象山区', '06', '0773');
INSERT INTO `tp_location` VALUES ('1881', '广西', '桂林市', '七星区', '06', '0773');
INSERT INTO `tp_location` VALUES ('1882', '广西', '桂林市', '雁山区', '06', '0773');
INSERT INTO `tp_location` VALUES ('1883', '广西', '桂林市', '阳朔县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1884', '广西', '桂林市', '临桂县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1885', '广西', '桂林市', '灵川县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1886', '广西', '桂林市', '全州县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1887', '广西', '桂林市', '兴安县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1888', '广西', '桂林市', '永福县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1889', '广西', '桂林市', '灌阳县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1890', '广西', '桂林市', '龙胜各族自治县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1891', '广西', '桂林市', '资源县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1892', '广西', '桂林市', '平乐县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1893', '广西', '桂林市', '荔蒲县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1894', '广西', '桂林市', '恭城瑶族自治县', '06', '0773');
INSERT INTO `tp_location` VALUES ('1895', '广西', '梧州市', '万秀区', '06', '0774');
INSERT INTO `tp_location` VALUES ('1896', '广西', '梧州市', '蝶山区', '06', '0774');
INSERT INTO `tp_location` VALUES ('1897', '广西', '梧州市', '长洲区', '06', '0774');
INSERT INTO `tp_location` VALUES ('1898', '广西', '梧州市', '苍梧县', '06', '0774');
INSERT INTO `tp_location` VALUES ('1899', '广西', '梧州市', '藤县', '06', '0774');
INSERT INTO `tp_location` VALUES ('1900', '广西', '梧州市', '蒙山县', '06', '0774');
INSERT INTO `tp_location` VALUES ('1901', '广西', '梧州市', '岑溪市', '06', '0774');
INSERT INTO `tp_location` VALUES ('1902', '广西', '北海市', '海城区', '06', '0779');
INSERT INTO `tp_location` VALUES ('1903', '广西', '北海市', '银海区', '06', '0779');
INSERT INTO `tp_location` VALUES ('1904', '广西', '北海市', '铁山港区', '06', '0779');
INSERT INTO `tp_location` VALUES ('1905', '广西', '北海市', '合浦县', '06', '0779');
INSERT INTO `tp_location` VALUES ('1906', '广西', '防城港市', '港口区', '06', '0770');
INSERT INTO `tp_location` VALUES ('1907', '广西', '防城港市', '防城区', '06', '0770');
INSERT INTO `tp_location` VALUES ('1908', '广西', '防城港市', '上思县', '06', '0770');
INSERT INTO `tp_location` VALUES ('1909', '广西', '防城港市', '东兴市', '06', '0770');
INSERT INTO `tp_location` VALUES ('1910', '广西', '钦州市', '钦南区', '06', '0777');
INSERT INTO `tp_location` VALUES ('1911', '广西', '钦州市', '钦北区', '06', '0777');
INSERT INTO `tp_location` VALUES ('1912', '广西', '钦州市', '浦北县', '06', '0777');
INSERT INTO `tp_location` VALUES ('1913', '广西', '钦州市', '灵山县', '06', '0777');
INSERT INTO `tp_location` VALUES ('1914', '广西', '贵港市', '港北区', '06', '0775');
INSERT INTO `tp_location` VALUES ('1915', '广西', '贵港市', '港南区', '06', '0775');
INSERT INTO `tp_location` VALUES ('1916', '广西', '贵港市', '覃塘区', '06', '0775');
INSERT INTO `tp_location` VALUES ('1917', '广西', '贵港市', '平南县', '06', '0775');
INSERT INTO `tp_location` VALUES ('1918', '广西', '贵港市', '桂平市', '06', '0775');
INSERT INTO `tp_location` VALUES ('1919', '广西', '玉林市', '玉州区', '06', '0775');
INSERT INTO `tp_location` VALUES ('1920', '广西', '玉林市', '容县', '06', '0775');
INSERT INTO `tp_location` VALUES ('1921', '广西', '玉林市', '陆川县', '06', '0775');
INSERT INTO `tp_location` VALUES ('1922', '广西', '玉林市', '博白县', '06', '0775');
INSERT INTO `tp_location` VALUES ('1923', '广西', '玉林市', '兴业县', '06', '0775');
INSERT INTO `tp_location` VALUES ('1924', '广西', '玉林市', '北流市', '06', '0775');
INSERT INTO `tp_location` VALUES ('1925', '广西', '崇左市', '江州区', '06', '0771');
INSERT INTO `tp_location` VALUES ('1926', '广西', '崇左市', '凭祥市', '06', '0771');
INSERT INTO `tp_location` VALUES ('1927', '广西', '崇左市', '扶绥县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1928', '广西', '崇左市', '宁明县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1929', '广西', '崇左市', '龙州县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1930', '广西', '崇左市', '大新县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1931', '广西', '崇左市', '天等县', '06', '0771');
INSERT INTO `tp_location` VALUES ('1932', '广西', '来宾市', '兴宾区', '06', '0772');
INSERT INTO `tp_location` VALUES ('1933', '广西', '来宾市', '合山市', '06', '0772');
INSERT INTO `tp_location` VALUES ('1934', '广西', '来宾市', '忻城县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1935', '广西', '来宾市', '象州县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1936', '广西', '来宾市', '武宣县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1937', '广西', '来宾市', '金秀瑶族自治县', '06', '0772');
INSERT INTO `tp_location` VALUES ('1938', '广西', '贺州市', '八步区', '06', '0774');
INSERT INTO `tp_location` VALUES ('1939', '广西', '贺州市', '昭平县', '06', '0774');
INSERT INTO `tp_location` VALUES ('1940', '广西', '贺州市', '钟山县', '06', '0774');
INSERT INTO `tp_location` VALUES ('1941', '广西', '贺州市', '富川瑶族自治县', '06', '0774');
INSERT INTO `tp_location` VALUES ('1942', '广西', '百色市', '右江区', '06', '0776');
INSERT INTO `tp_location` VALUES ('1943', '广西', '百色市', '田阳县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1944', '广西', '百色市', '田东县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1945', '广西', '百色市', '平果县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1946', '广西', '百色市', '德保县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1947', '广西', '百色市', '靖西县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1948', '广西', '百色市', '那坡县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1949', '广西', '百色市', '凌云县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1950', '广西', '百色市', '乐业县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1951', '广西', '百色市', '田林县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1952', '广西', '百色市', '隆林各族自治县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1953', '广西', '百色市', '西林县', '06', '0776');
INSERT INTO `tp_location` VALUES ('1954', '广西', '河池市', '金城江区', '06', '0778');
INSERT INTO `tp_location` VALUES ('1955', '广西', '河池市', '宜州市', '06', '0778');
INSERT INTO `tp_location` VALUES ('1956', '广西', '河池市', '罗城仫佬族自治县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1957', '广西', '河池市', '环江毛南族自治县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1958', '广西', '河池市', '南丹县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1959', '广西', '河池市', '天峨县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1960', '广西', '河池市', '凤山县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1961', '广西', '河池市', '东兰县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1962', '广西', '河池市', '巴马瑶族自治县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1963', '广西', '河池市', '都安瑶族自治县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1964', '广西', '河池市', '大化瑶族自治县', '06', '0778');
INSERT INTO `tp_location` VALUES ('1965', '海南省', '海口市', '琼海市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1966', '海南省', '海口市', '儋州市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1967', '海南省', '海口市', '五指山市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1968', '海南省', '海口市', '文昌市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1969', '海南省', '海口市', '万宁市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1970', '海南省', '海口市', '东方市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1971', '海南省', '海口市', '定安县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1972', '海南省', '海口市', '屯昌县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1973', '海南省', '海口市', '澄迈县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1974', '海南省', '海口市', '临高县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1975', '海南省', '海口市', '白沙黎族自治县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1976', '海南省', '海口市', '昌江黎族自治县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1977', '海南省', '海口市', '乐东黎族自治县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1978', '海南省', '海口市', '陵水黎族自治县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1979', '海南省', '海口市', '保亭黎族苗族自治县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1980', '海南省', '海口市', '琼中黎族苗族自治县', '08', '0898');
INSERT INTO `tp_location` VALUES ('1981', '海南省', '海口市', '龙华区', '08', '0898');
INSERT INTO `tp_location` VALUES ('1982', '海南省', '海口市', '秀英区', '08', '0898');
INSERT INTO `tp_location` VALUES ('1983', '海南省', '海口市', '琼山区', '08', '0898');
INSERT INTO `tp_location` VALUES ('1984', '海南省', '海口市', '美兰区', '08', '0898');
INSERT INTO `tp_location` VALUES ('1985', '海南省', '三沙市', '三沙市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1986', '海南省', '三亚市', '三亚市', '08', '0898');
INSERT INTO `tp_location` VALUES ('1987', '重庆市', '重庆市', '万州区', '31', '023');
INSERT INTO `tp_location` VALUES ('1988', '重庆市', '重庆市', '涪陵区', '31', '023');
INSERT INTO `tp_location` VALUES ('1989', '重庆市', '重庆市', '渝中区', '31', '023');
INSERT INTO `tp_location` VALUES ('1990', '重庆市', '重庆市', '大渡口区', '31', '023');
INSERT INTO `tp_location` VALUES ('1991', '重庆市', '重庆市', '江北区', '31', '023');
INSERT INTO `tp_location` VALUES ('1992', '重庆市', '重庆市', '沙坪坝区', '31', '023');
INSERT INTO `tp_location` VALUES ('1993', '重庆市', '重庆市', '九龙坡区', '31', '023');
INSERT INTO `tp_location` VALUES ('1994', '重庆市', '重庆市', '南岸区', '31', '023');
INSERT INTO `tp_location` VALUES ('1995', '重庆市', '重庆市', '北碚区', '31', '023');
INSERT INTO `tp_location` VALUES ('1996', '重庆市', '重庆市', '万盛区', '31', '023');
INSERT INTO `tp_location` VALUES ('1997', '重庆市', '重庆市', '双桥区', '31', '023');
INSERT INTO `tp_location` VALUES ('1998', '重庆市', '重庆市', '渝北区', '31', '023');
INSERT INTO `tp_location` VALUES ('1999', '重庆市', '重庆市', '巴南区', '31', '023');
INSERT INTO `tp_location` VALUES ('2000', '重庆市', '重庆市', '长寿区', '31', '023');
INSERT INTO `tp_location` VALUES ('2001', '重庆市', '重庆市', '綦江县', '31', '023');
INSERT INTO `tp_location` VALUES ('2002', '重庆市', '重庆市', '潼南县', '31', '023');
INSERT INTO `tp_location` VALUES ('2003', '重庆市', '重庆市', '铜梁县', '31', '023');
INSERT INTO `tp_location` VALUES ('2004', '重庆市', '重庆市', '大足县', '31', '023');
INSERT INTO `tp_location` VALUES ('2005', '重庆市', '重庆市', '荣昌县', '31', '023');
INSERT INTO `tp_location` VALUES ('2006', '重庆市', '重庆市', '璧山县', '31', '023');
INSERT INTO `tp_location` VALUES ('2007', '重庆市', '重庆市', '梁平县', '31', '023');
INSERT INTO `tp_location` VALUES ('2008', '重庆市', '重庆市', '城口县', '31', '023');
INSERT INTO `tp_location` VALUES ('2009', '重庆市', '重庆市', '丰都县', '31', '023');
INSERT INTO `tp_location` VALUES ('2010', '重庆市', '重庆市', '垫江县', '31', '023');
INSERT INTO `tp_location` VALUES ('2011', '重庆市', '重庆市', '武隆县', '31', '023');
INSERT INTO `tp_location` VALUES ('2012', '重庆市', '重庆市', '忠县', '31', '023');
INSERT INTO `tp_location` VALUES ('2013', '重庆市', '重庆市', '开县', '31', '023');
INSERT INTO `tp_location` VALUES ('2014', '重庆市', '重庆市', '云阳县', '31', '023');
INSERT INTO `tp_location` VALUES ('2015', '重庆市', '重庆市', '奉节县', '31', '023');
INSERT INTO `tp_location` VALUES ('2016', '重庆市', '重庆市', '巫山县', '31', '023');
INSERT INTO `tp_location` VALUES ('2017', '重庆市', '重庆市', '巫溪县', '31', '023');
INSERT INTO `tp_location` VALUES ('2018', '重庆市', '重庆市', '黔江区', '31', '023');
INSERT INTO `tp_location` VALUES ('2019', '重庆市', '重庆市', '石柱土家族自治县', '31', '023');
INSERT INTO `tp_location` VALUES ('2020', '重庆市', '重庆市', '秀山土家族苗族自治县', '31', '023');
INSERT INTO `tp_location` VALUES ('2021', '重庆市', '重庆市', '酉阳土家族苗族自治县', '31', '023');
INSERT INTO `tp_location` VALUES ('2022', '重庆市', '重庆市', '彭水苗族土家族自治县', '31', '023');
INSERT INTO `tp_location` VALUES ('2023', '重庆市', '重庆市', '江津区', '31', '023');
INSERT INTO `tp_location` VALUES ('2024', '重庆市', '重庆市', '合川区', '31', '023');
INSERT INTO `tp_location` VALUES ('2025', '重庆市', '重庆市', '永川区', '31', '023');
INSERT INTO `tp_location` VALUES ('2026', '重庆市', '重庆市', '南川区', '31', '023');
INSERT INTO `tp_location` VALUES ('2027', '四川省', '成都市', '锦江区', '25', '028');
INSERT INTO `tp_location` VALUES ('2028', '四川省', '成都市', '青羊区', '25', '028');
INSERT INTO `tp_location` VALUES ('2029', '四川省', '成都市', '金牛区', '25', '028');
INSERT INTO `tp_location` VALUES ('2030', '四川省', '成都市', '武侯区', '25', '028');
INSERT INTO `tp_location` VALUES ('2031', '四川省', '成都市', '成华区', '25', '028');
INSERT INTO `tp_location` VALUES ('2032', '四川省', '成都市', '龙泉驿区', '25', '028');
INSERT INTO `tp_location` VALUES ('2033', '四川省', '成都市', '青白江区', '25', '028');
INSERT INTO `tp_location` VALUES ('2034', '四川省', '成都市', '金堂县', '25', '028');
INSERT INTO `tp_location` VALUES ('2035', '四川省', '成都市', '双流县', '25', '028');
INSERT INTO `tp_location` VALUES ('2036', '四川省', '成都市', '温江县', '25', '028');
INSERT INTO `tp_location` VALUES ('2037', '四川省', '成都市', '郫县', '25', '028');
INSERT INTO `tp_location` VALUES ('2038', '四川省', '成都市', '新都区', '25', '028');
INSERT INTO `tp_location` VALUES ('2039', '四川省', '成都市', '大邑县', '25', '028');
INSERT INTO `tp_location` VALUES ('2040', '四川省', '成都市', '蒲江县', '25', '028');
INSERT INTO `tp_location` VALUES ('2041', '四川省', '成都市', '新津县', '25', '028');
INSERT INTO `tp_location` VALUES ('2042', '四川省', '成都市', '都江堰市', '25', '028');
INSERT INTO `tp_location` VALUES ('2043', '四川省', '成都市', '彭州市', '25', '028');
INSERT INTO `tp_location` VALUES ('2044', '四川省', '成都市', '邛崃市', '25', '028');
INSERT INTO `tp_location` VALUES ('2045', '四川省', '成都市', '崇州市', '25', '028');
INSERT INTO `tp_location` VALUES ('2046', '四川省', '自贡市', '自流井区', '25', '0813');
INSERT INTO `tp_location` VALUES ('2047', '四川省', '自贡市', '贡井区', '25', '0813');
INSERT INTO `tp_location` VALUES ('2048', '四川省', '自贡市', '大安区', '25', '0813');
INSERT INTO `tp_location` VALUES ('2049', '四川省', '自贡市', '沿滩区', '25', '0813');
INSERT INTO `tp_location` VALUES ('2050', '四川省', '自贡市', '荣县', '25', '0813');
INSERT INTO `tp_location` VALUES ('2051', '四川省', '自贡市', '富顺县', '25', '0813');
INSERT INTO `tp_location` VALUES ('2052', '四川省', '攀枝花市', '东区', '25', '0812');
INSERT INTO `tp_location` VALUES ('2053', '四川省', '攀枝花市', '西区', '25', '0812');
INSERT INTO `tp_location` VALUES ('2054', '四川省', '攀枝花市', '仁和区', '25', '0812');
INSERT INTO `tp_location` VALUES ('2055', '四川省', '攀枝花市', '米易县', '25', '0812');
INSERT INTO `tp_location` VALUES ('2056', '四川省', '攀枝花市', '盐边县', '25', '0812');
INSERT INTO `tp_location` VALUES ('2057', '四川省', '泸州市', '江阳区', '25', '0830');
INSERT INTO `tp_location` VALUES ('2058', '四川省', '泸州市', '纳溪区', '25', '0830');
INSERT INTO `tp_location` VALUES ('2059', '四川省', '泸州市', '龙马潭区', '25', '0830');
INSERT INTO `tp_location` VALUES ('2060', '四川省', '泸州市', '泸县', '25', '0830');
INSERT INTO `tp_location` VALUES ('2061', '四川省', '泸州市', '合江县', '25', '0830');
INSERT INTO `tp_location` VALUES ('2062', '四川省', '泸州市', '叙永县', '25', '0830');
INSERT INTO `tp_location` VALUES ('2063', '四川省', '泸州市', '古蔺县', '25', '0830');
INSERT INTO `tp_location` VALUES ('2064', '四川省', '德阳市', '旌阳区', '25', '0838');
INSERT INTO `tp_location` VALUES ('2065', '四川省', '德阳市', '中江县', '25', '0838');
INSERT INTO `tp_location` VALUES ('2066', '四川省', '德阳市', '罗江县', '25', '0838');
INSERT INTO `tp_location` VALUES ('2067', '四川省', '德阳市', '广汉市', '25', '0838');
INSERT INTO `tp_location` VALUES ('2068', '四川省', '德阳市', '什邡市', '25', '0838');
INSERT INTO `tp_location` VALUES ('2069', '四川省', '德阳市', '绵竹市', '25', '0838');
INSERT INTO `tp_location` VALUES ('2070', '四川省', '绵阳市', '涪城区', '25', '0816');
INSERT INTO `tp_location` VALUES ('2071', '四川省', '绵阳市', '游仙区', '25', '0816');
INSERT INTO `tp_location` VALUES ('2072', '四川省', '绵阳市', '三台县', '25', '0816');
INSERT INTO `tp_location` VALUES ('2073', '四川省', '绵阳市', '盐亭县', '25', '0816');
INSERT INTO `tp_location` VALUES ('2074', '四川省', '绵阳市', '安县', '25', '0816');
INSERT INTO `tp_location` VALUES ('2075', '四川省', '绵阳市', '梓潼县', '25', '0816');
INSERT INTO `tp_location` VALUES ('2076', '四川省', '绵阳市', '北川县', '25', '0816');
INSERT INTO `tp_location` VALUES ('2077', '四川省', '绵阳市', '平武县', '25', '0816');
INSERT INTO `tp_location` VALUES ('2078', '四川省', '绵阳市', '江油市', '25', '0816');
INSERT INTO `tp_location` VALUES ('2079', '四川省', '广元市', '利州区', '25', '0839');
INSERT INTO `tp_location` VALUES ('2080', '四川省', '广元市', '元坝区', '25', '0839');
INSERT INTO `tp_location` VALUES ('2081', '四川省', '广元市', '朝天区', '25', '0839');
INSERT INTO `tp_location` VALUES ('2082', '四川省', '广元市', '旺苍县', '25', '0839');
INSERT INTO `tp_location` VALUES ('2083', '四川省', '广元市', '青川县', '25', '0839');
INSERT INTO `tp_location` VALUES ('2084', '四川省', '广元市', '剑阁县', '25', '0839');
INSERT INTO `tp_location` VALUES ('2085', '四川省', '广元市', '苍溪县', '25', '0839');
INSERT INTO `tp_location` VALUES ('2086', '四川省', '遂宁市', '船山区', '25', '0825');
INSERT INTO `tp_location` VALUES ('2087', '四川省', '遂宁市', '安居区', '25', '0825');
INSERT INTO `tp_location` VALUES ('2088', '四川省', '遂宁市', '蓬溪县', '25', '0825');
INSERT INTO `tp_location` VALUES ('2089', '四川省', '遂宁市', '射洪县', '25', '0825');
INSERT INTO `tp_location` VALUES ('2090', '四川省', '遂宁市', '大英县', '25', '0825');
INSERT INTO `tp_location` VALUES ('2091', '四川省', '内江市', '市中区', '25', '0832');
INSERT INTO `tp_location` VALUES ('2092', '四川省', '内江市', '东兴区', '25', '0832');
INSERT INTO `tp_location` VALUES ('2093', '四川省', '内江市', '威远县', '25', '0832');
INSERT INTO `tp_location` VALUES ('2094', '四川省', '内江市', '资中县', '25', '0832');
INSERT INTO `tp_location` VALUES ('2095', '四川省', '内江市', '隆昌县', '25', '0832');
INSERT INTO `tp_location` VALUES ('2096', '四川省', '乐山市', '市中区', '25', '0833');
INSERT INTO `tp_location` VALUES ('2097', '四川省', '乐山市', '沙湾区', '25', '0833');
INSERT INTO `tp_location` VALUES ('2098', '四川省', '乐山市', '五通桥区', '25', '0833');
INSERT INTO `tp_location` VALUES ('2099', '四川省', '乐山市', '金口河区', '25', '0833');
INSERT INTO `tp_location` VALUES ('2100', '四川省', '乐山市', '犍为县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2101', '四川省', '乐山市', '井研县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2102', '四川省', '乐山市', '夹江县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2103', '四川省', '乐山市', '沐川县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2104', '四川省', '乐山市', '峨边彝族自治县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2105', '四川省', '乐山市', '马边彝族自治县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2106', '四川省', '乐山市', '峨眉山市', '25', '0833');
INSERT INTO `tp_location` VALUES ('2107', '四川省', '南充市', '顺庆区', '25', '0817');
INSERT INTO `tp_location` VALUES ('2108', '四川省', '南充市', '高坪区', '25', '0817');
INSERT INTO `tp_location` VALUES ('2109', '四川省', '南充市', '嘉陵区', '25', '0817');
INSERT INTO `tp_location` VALUES ('2110', '四川省', '南充市', '南部县', '25', '0817');
INSERT INTO `tp_location` VALUES ('2111', '四川省', '南充市', '营山县', '25', '0817');
INSERT INTO `tp_location` VALUES ('2112', '四川省', '南充市', '蓬安县', '25', '0817');
INSERT INTO `tp_location` VALUES ('2113', '四川省', '南充市', '仪陇县', '25', '0817');
INSERT INTO `tp_location` VALUES ('2114', '四川省', '南充市', '西充县', '25', '0817');
INSERT INTO `tp_location` VALUES ('2115', '四川省', '南充市', '阆中市', '25', '0817');
INSERT INTO `tp_location` VALUES ('2116', '四川省', '宜宾市', '翠屏区', '25', '0831');
INSERT INTO `tp_location` VALUES ('2117', '四川省', '宜宾市', '宜宾县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2118', '四川省', '宜宾市', '南溪县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2119', '四川省', '宜宾市', '江安县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2120', '四川省', '宜宾市', '长宁县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2121', '四川省', '宜宾市', '高县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2122', '四川省', '宜宾市', '珙县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2123', '四川省', '宜宾市', '筠连县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2124', '四川省', '宜宾市', '兴文县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2125', '四川省', '宜宾市', '屏山县', '25', '0831');
INSERT INTO `tp_location` VALUES ('2126', '四川省', '广安市', '广安区', '25', '0826');
INSERT INTO `tp_location` VALUES ('2127', '四川省', '广安市', '岳池县', '25', '0826');
INSERT INTO `tp_location` VALUES ('2128', '四川省', '广安市', '武胜县', '25', '0826');
INSERT INTO `tp_location` VALUES ('2129', '四川省', '广安市', '邻水县', '25', '0826');
INSERT INTO `tp_location` VALUES ('2130', '四川省', '广安市', '华莹市', '25', '0826');
INSERT INTO `tp_location` VALUES ('2131', '四川省', '达州市', '达州市', '25', '0818');
INSERT INTO `tp_location` VALUES ('2132', '四川省', '达州市', '万源市', '25', '0818');
INSERT INTO `tp_location` VALUES ('2133', '四川省', '达州市', '达县', '25', '0818');
INSERT INTO `tp_location` VALUES ('2134', '四川省', '达州市', '宣汉县', '25', '0818');
INSERT INTO `tp_location` VALUES ('2135', '四川省', '达州市', '开江县', '25', '0818');
INSERT INTO `tp_location` VALUES ('2136', '四川省', '达州市', '大竹县', '25', '0818');
INSERT INTO `tp_location` VALUES ('2137', '四川省', '达州市', '渠县', '25', '0818');
INSERT INTO `tp_location` VALUES ('2138', '四川省', '雅安市', '雅安市', '25', '0835');
INSERT INTO `tp_location` VALUES ('2139', '四川省', '雅安市', '名山县', '25', '0835');
INSERT INTO `tp_location` VALUES ('2140', '四川省', '雅安市', '荥经县', '25', '0835');
INSERT INTO `tp_location` VALUES ('2141', '四川省', '雅安市', '汉源县', '25', '0835');
INSERT INTO `tp_location` VALUES ('2142', '四川省', '雅安市', '石棉县', '25', '0835');
INSERT INTO `tp_location` VALUES ('2143', '四川省', '雅安市', '天全县', '25', '0835');
INSERT INTO `tp_location` VALUES ('2144', '四川省', '雅安市', '芦山县', '25', '0835');
INSERT INTO `tp_location` VALUES ('2145', '四川省', '雅安市', '宝兴县', '25', '0835');
INSERT INTO `tp_location` VALUES ('2146', '四川省', '阿坝藏族羌族自治州', '汶川县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2147', '四川省', '阿坝藏族羌族自治州', '理县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2148', '四川省', '阿坝藏族羌族自治州', '茂县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2149', '四川省', '阿坝藏族羌族自治州', '松潘县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2150', '四川省', '阿坝藏族羌族自治州', '九寨沟县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2151', '四川省', '阿坝藏族羌族自治州', '金川县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2152', '四川省', '阿坝藏族羌族自治州', '小金县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2153', '四川省', '阿坝藏族羌族自治州', '黑水县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2154', '四川省', '阿坝藏族羌族自治州', '马尔康县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2155', '四川省', '阿坝藏族羌族自治州', '壤塘县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2156', '四川省', '阿坝藏族羌族自治州', '阿坝县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2157', '四川省', '阿坝藏族羌族自治州', '若尔盖县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2158', '四川省', '阿坝藏族羌族自治州', '红原县', '25', '0837');
INSERT INTO `tp_location` VALUES ('2159', '四川省', '甘孜藏族自治州', '康定县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2160', '四川省', '甘孜藏族自治州', '泸定县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2161', '四川省', '甘孜藏族自治州', '丹巴县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2162', '四川省', '甘孜藏族自治州', '九龙县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2163', '四川省', '甘孜藏族自治州', '雅江县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2164', '四川省', '甘孜藏族自治州', '道孚县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2165', '四川省', '甘孜藏族自治州', '炉霍县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2166', '四川省', '甘孜藏族自治州', '甘孜县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2167', '四川省', '甘孜藏族自治州', '新龙县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2168', '四川省', '甘孜藏族自治州', '德格县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2169', '四川省', '甘孜藏族自治州', '白玉县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2170', '四川省', '甘孜藏族自治州', '石渠县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2171', '四川省', '甘孜藏族自治州', '色达县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2172', '四川省', '甘孜藏族自治州', '理塘县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2173', '四川省', '甘孜藏族自治州', '巴塘县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2174', '四川省', '甘孜藏族自治州', '乡城县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2175', '四川省', '甘孜藏族自治州', '稻城县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2176', '四川省', '甘孜藏族自治州', '得荣县', '25', '0836');
INSERT INTO `tp_location` VALUES ('2177', '四川省', '凉山彝族自治州', '西昌市', '25', '0834');
INSERT INTO `tp_location` VALUES ('2178', '四川省', '凉山彝族自治州', '木里藏族自治县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2179', '四川省', '凉山彝族自治州', '盐源县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2180', '四川省', '凉山彝族自治州', '德昌县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2181', '四川省', '凉山彝族自治州', '会理县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2182', '四川省', '凉山彝族自治州', '会东县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2183', '四川省', '凉山彝族自治州', '宁南县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2184', '四川省', '凉山彝族自治州', '普格县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2185', '四川省', '凉山彝族自治州', '布拖县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2186', '四川省', '凉山彝族自治州', '金阳县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2187', '四川省', '凉山彝族自治州', '昭觉县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2188', '四川省', '凉山彝族自治州', '喜德县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2189', '四川省', '凉山彝族自治州', '冕宁县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2190', '四川省', '凉山彝族自治州', '越西县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2191', '四川省', '凉山彝族自治州', '甘洛县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2192', '四川省', '凉山彝族自治州', '美姑县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2193', '四川省', '凉山彝族自治州', '雷波县', '25', '0834');
INSERT INTO `tp_location` VALUES ('2194', '四川省', '巴中市', '巴中市', '25', '0827');
INSERT INTO `tp_location` VALUES ('2195', '四川省', '巴中市', '通江县', '25', '0827');
INSERT INTO `tp_location` VALUES ('2196', '四川省', '巴中市', '南江县', '25', '0827');
INSERT INTO `tp_location` VALUES ('2197', '四川省', '巴中市', '平昌县', '25', '0827');
INSERT INTO `tp_location` VALUES ('2198', '四川省', '眉山市', '东坡区', '25', '0833');
INSERT INTO `tp_location` VALUES ('2199', '四川省', '眉山市', '仁寿县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2200', '四川省', '眉山市', '彭山县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2201', '四川省', '眉山市', '洪雅县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2202', '四川省', '眉山市', '丹棱县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2203', '四川省', '眉山市', '青神县', '25', '0833');
INSERT INTO `tp_location` VALUES ('2204', '四川省', '资阳市', '资阳市', '25', '0832');
INSERT INTO `tp_location` VALUES ('2205', '四川省', '资阳市', '简阳市', '25', '0832');
INSERT INTO `tp_location` VALUES ('2206', '四川省', '资阳市', '安岳县', '25', '0832');
INSERT INTO `tp_location` VALUES ('2207', '四川省', '资阳市', '乐至县', '25', '0832');
INSERT INTO `tp_location` VALUES ('2208', '贵州省', '贵阳市', '南明区', '07', '0851');
INSERT INTO `tp_location` VALUES ('2209', '贵州省', '贵阳市', '云岩区', '07', '0851');
INSERT INTO `tp_location` VALUES ('2210', '贵州省', '贵阳市', '花溪区', '07', '0851');
INSERT INTO `tp_location` VALUES ('2211', '贵州省', '贵阳市', '乌当区', '07', '0851');
INSERT INTO `tp_location` VALUES ('2212', '贵州省', '贵阳市', '白云区', '07', '0851');
INSERT INTO `tp_location` VALUES ('2213', '贵州省', '贵阳市', '小河区', '07', '0851');
INSERT INTO `tp_location` VALUES ('2214', '贵州省', '贵阳市', '开阳县', '07', '0851');
INSERT INTO `tp_location` VALUES ('2215', '贵州省', '贵阳市', '息烽县', '07', '0851');
INSERT INTO `tp_location` VALUES ('2216', '贵州省', '贵阳市', '修文县', '07', '0851');
INSERT INTO `tp_location` VALUES ('2217', '贵州省', '贵阳市', '清镇市', '07', '0851');
INSERT INTO `tp_location` VALUES ('2218', '贵州省', '六盘水市', '钟山区', '07', '0858');
INSERT INTO `tp_location` VALUES ('2219', '贵州省', '六盘水市', '盘县', '07', '0858');
INSERT INTO `tp_location` VALUES ('2220', '贵州省', '六盘水市', '六枝特区', '07', '0858');
INSERT INTO `tp_location` VALUES ('2221', '贵州省', '六盘水市', '水城县', '07', '0858');
INSERT INTO `tp_location` VALUES ('2222', '贵州省', '遵义市', '红花岗区', '07', '0852');
INSERT INTO `tp_location` VALUES ('2223', '贵州省', '遵义市', '汇川区', '07', '0852');
INSERT INTO `tp_location` VALUES ('2224', '贵州省', '遵义市', '遵义县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2225', '贵州省', '遵义市', '桐梓县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2226', '贵州省', '遵义市', '绥阳县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2227', '贵州省', '遵义市', '正安县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2228', '贵州省', '遵义市', '道真仡佬族苗族自治县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2229', '贵州省', '遵义市', '务川仡佬族苗族自治县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2230', '贵州省', '遵义市', '凤冈县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2231', '贵州省', '遵义市', '湄潭县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2232', '贵州省', '遵义市', '余庆县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2233', '贵州省', '遵义市', '习水县', '07', '0852');
INSERT INTO `tp_location` VALUES ('2234', '贵州省', '遵义市', '赤水市', '07', '0852');
INSERT INTO `tp_location` VALUES ('2235', '贵州省', '遵义市', '仁怀市', '07', '0852');
INSERT INTO `tp_location` VALUES ('2236', '贵州省', '铜仁市', '铜仁市', '07', '0856');
INSERT INTO `tp_location` VALUES ('2237', '贵州省', '铜仁市', '江口县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2238', '贵州省', '铜仁市', '玉屏侗族自治县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2239', '贵州省', '铜仁市', '石阡县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2240', '贵州省', '铜仁市', '思南县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2241', '贵州省', '铜仁市', '印江土家族苗族自治县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2242', '贵州省', '铜仁市', '德江县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2243', '贵州省', '铜仁市', '沿河土家族自治县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2244', '贵州省', '铜仁市', '松桃苗族自治县', '07', '0856');
INSERT INTO `tp_location` VALUES ('2245', '贵州省', '铜仁市', '万山特区', '07', '0856');
INSERT INTO `tp_location` VALUES ('2246', '贵州省', '黔西南布依族苗族自治州', '兴义市', '07', '0859');
INSERT INTO `tp_location` VALUES ('2247', '贵州省', '黔西南布依族苗族自治州', '兴仁县', '07', '0859');
INSERT INTO `tp_location` VALUES ('2248', '贵州省', '黔西南布依族苗族自治州', '普安县', '07', '0859');
INSERT INTO `tp_location` VALUES ('2249', '贵州省', '黔西南布依族苗族自治州', '晴隆县', '07', '0859');
INSERT INTO `tp_location` VALUES ('2250', '贵州省', '黔西南布依族苗族自治州', '贞丰县', '07', '0859');
INSERT INTO `tp_location` VALUES ('2251', '贵州省', '黔西南布依族苗族自治州', '望谟县', '07', '0859');
INSERT INTO `tp_location` VALUES ('2252', '贵州省', '黔西南布依族苗族自治州', '册亨县', '07', '0859');
INSERT INTO `tp_location` VALUES ('2253', '贵州省', '黔西南布依族苗族自治州', '安龙县', '07', '0859');
INSERT INTO `tp_location` VALUES ('2254', '贵州省', '毕节市', '毕节市', '07', '0857');
INSERT INTO `tp_location` VALUES ('2255', '贵州省', '毕节市', '大方县', '07', '0857');
INSERT INTO `tp_location` VALUES ('2256', '贵州省', '毕节市', '黔西县', '07', '0857');
INSERT INTO `tp_location` VALUES ('2257', '贵州省', '毕节市', '金沙县', '07', '0857');
INSERT INTO `tp_location` VALUES ('2258', '贵州省', '毕节市', '织金县', '07', '0857');
INSERT INTO `tp_location` VALUES ('2259', '贵州省', '毕节市', '纳雍县', '07', '0857');
INSERT INTO `tp_location` VALUES ('2260', '贵州省', '毕节市', '威宁彝族回族苗族自治县', '07', '0857');
INSERT INTO `tp_location` VALUES ('2261', '贵州省', '毕节市', '赫章县', '07', '0857');
INSERT INTO `tp_location` VALUES ('2262', '贵州省', '安顺市', '安顺市', '07', '0853');
INSERT INTO `tp_location` VALUES ('2263', '贵州省', '安顺市', '平坝县', '07', '0853');
INSERT INTO `tp_location` VALUES ('2264', '贵州省', '安顺市', '普定县', '07', '0853');
INSERT INTO `tp_location` VALUES ('2265', '贵州省', '安顺市', '关岭布依族苗族自治县', '07', '0853');
INSERT INTO `tp_location` VALUES ('2266', '贵州省', '安顺市', '镇宁布依族苗族自治县', '07', '0853');
INSERT INTO `tp_location` VALUES ('2267', '贵州省', '安顺市', '紫云苗族布依族自治县', '07', '0853');
INSERT INTO `tp_location` VALUES ('2268', '贵州省', '黔东南苗族侗族自治州', '凯里市', '07', '0855');
INSERT INTO `tp_location` VALUES ('2269', '贵州省', '黔东南苗族侗族自治州', '黄平县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2270', '贵州省', '黔东南苗族侗族自治州', '施秉县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2271', '贵州省', '黔东南苗族侗族自治州', '三穗县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2272', '贵州省', '黔东南苗族侗族自治州', '镇远县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2273', '贵州省', '黔东南苗族侗族自治州', '岑巩县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2274', '贵州省', '黔东南苗族侗族自治州', '天柱县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2275', '贵州省', '黔东南苗族侗族自治州', '锦屏县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2276', '贵州省', '黔东南苗族侗族自治州', '剑河县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2277', '贵州省', '黔东南苗族侗族自治州', '台江县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2278', '贵州省', '黔东南苗族侗族自治州', '黎平县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2279', '贵州省', '黔东南苗族侗族自治州', '榕江县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2280', '贵州省', '黔东南苗族侗族自治州', '从江县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2281', '贵州省', '黔东南苗族侗族自治州', '雷山县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2282', '贵州省', '黔东南苗族侗族自治州', '麻江县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2283', '贵州省', '黔东南苗族侗族自治州', '丹寨县', '07', '0855');
INSERT INTO `tp_location` VALUES ('2284', '贵州省', '黔南布依族苗族自治州', '都匀市', '07', '0854');
INSERT INTO `tp_location` VALUES ('2285', '贵州省', '黔南布依族苗族自治州', '福泉市', '07', '0854');
INSERT INTO `tp_location` VALUES ('2286', '贵州省', '黔南布依族苗族自治州', '荔波县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2287', '贵州省', '黔南布依族苗族自治州', '贵定县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2288', '贵州省', '黔南布依族苗族自治州', '瓮安县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2289', '贵州省', '黔南布依族苗族自治州', '独山县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2290', '贵州省', '黔南布依族苗族自治州', '平塘县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2291', '贵州省', '黔南布依族苗族自治州', '罗甸县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2292', '贵州省', '黔南布依族苗族自治州', '长顺县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2293', '贵州省', '黔南布依族苗族自治州', '龙里县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2294', '贵州省', '黔南布依族苗族自治州', '惠水县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2295', '贵州省', '黔南布依族苗族自治州', '三都水族自治县', '07', '0854');
INSERT INTO `tp_location` VALUES ('2296', '云南省', '昆明市', '五华区', '29', '0871');
INSERT INTO `tp_location` VALUES ('2297', '云南省', '昆明市', '盘龙区', '29', '0871');
INSERT INTO `tp_location` VALUES ('2298', '云南省', '昆明市', '官渡区', '29', '0871');
INSERT INTO `tp_location` VALUES ('2299', '云南省', '昆明市', '西山区', '29', '0871');
INSERT INTO `tp_location` VALUES ('2300', '云南省', '昆明市', '东川区', '29', '0871');
INSERT INTO `tp_location` VALUES ('2301', '云南省', '昆明市', '呈贡县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2302', '云南省', '昆明市', '晋宁县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2303', '云南省', '昆明市', '富民县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2304', '云南省', '昆明市', '宜良县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2305', '云南省', '昆明市', '石林彝族自治县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2306', '云南省', '昆明市', '嵩明县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2307', '云南省', '昆明市', '禄劝彝族苗族自治县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2308', '云南省', '昆明市', '寻甸回族彝族自治县', '29', '0871');
INSERT INTO `tp_location` VALUES ('2309', '云南省', '昆明市', '安宁市', '29', '0871');
INSERT INTO `tp_location` VALUES ('2310', '云南省', '曲靖市', '麒麟区', '29', '0874');
INSERT INTO `tp_location` VALUES ('2311', '云南省', '曲靖市', '马龙县', '29', '0874');
INSERT INTO `tp_location` VALUES ('2312', '云南省', '曲靖市', '陆良县', '29', '0874');
INSERT INTO `tp_location` VALUES ('2313', '云南省', '曲靖市', '师宗县', '29', '0874');
INSERT INTO `tp_location` VALUES ('2314', '云南省', '曲靖市', '罗平县', '29', '0874');
INSERT INTO `tp_location` VALUES ('2315', '云南省', '曲靖市', '富源县', '29', '0874');
INSERT INTO `tp_location` VALUES ('2316', '云南省', '曲靖市', '会泽县', '29', '0874');
INSERT INTO `tp_location` VALUES ('2317', '云南省', '曲靖市', '沾益县', '29', '0874');
INSERT INTO `tp_location` VALUES ('2318', '云南省', '曲靖市', '宣威市', '29', '0874');
INSERT INTO `tp_location` VALUES ('2319', '云南省', '玉溪市', '红塔区', '29', '0877');
INSERT INTO `tp_location` VALUES ('2320', '云南省', '玉溪市', '江川县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2321', '云南省', '玉溪市', '澄江县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2322', '云南省', '玉溪市', '通海县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2323', '云南省', '玉溪市', '华宁县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2324', '云南省', '玉溪市', '易门县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2325', '云南省', '玉溪市', '峨山彝族自治县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2326', '云南省', '玉溪市', '新平彝族傣族自治县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2327', '云南省', '玉溪市', '元江哈尼族彝族傣族自治县', '29', '0877');
INSERT INTO `tp_location` VALUES ('2328', '云南省', '昭通市', '昭通市', '29', '0870');
INSERT INTO `tp_location` VALUES ('2329', '云南省', '昭通市', '鲁甸县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2330', '云南省', '昭通市', '巧家县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2331', '云南省', '昭通市', '盐津县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2332', '云南省', '昭通市', '大关县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2333', '云南省', '昭通市', '永善县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2334', '云南省', '昭通市', '绥江县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2335', '云南省', '昭通市', '镇雄县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2336', '云南省', '昭通市', '彝良县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2337', '云南省', '昭通市', '威信县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2338', '云南省', '昭通市', '水富县', '29', '0870');
INSERT INTO `tp_location` VALUES ('2339', '云南省', '楚雄彝族自治州', '楚雄市', '29', '0878');
INSERT INTO `tp_location` VALUES ('2340', '云南省', '楚雄彝族自治州', '双柏县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2341', '云南省', '楚雄彝族自治州', '牟定县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2342', '云南省', '楚雄彝族自治州', '南华县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2343', '云南省', '楚雄彝族自治州', '姚安县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2344', '云南省', '楚雄彝族自治州', '大姚县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2345', '云南省', '楚雄彝族自治州', '永仁县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2346', '云南省', '楚雄彝族自治州', '元谋县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2347', '云南省', '楚雄彝族自治州', '武定县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2348', '云南省', '楚雄彝族自治州', '禄丰县', '29', '0878');
INSERT INTO `tp_location` VALUES ('2349', '云南省', '红河哈尼族彝族自治州', '个旧市', '29', '0873');
INSERT INTO `tp_location` VALUES ('2350', '云南省', '红河哈尼族彝族自治州', '开远市', '29', '0873');
INSERT INTO `tp_location` VALUES ('2351', '云南省', '红河哈尼族彝族自治州', '蒙自县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2352', '云南省', '红河哈尼族彝族自治州', '屏边苗族自治县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2353', '云南省', '红河哈尼族彝族自治州', '建水县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2354', '云南省', '红河哈尼族彝族自治州', '石屏县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2355', '云南省', '红河哈尼族彝族自治州', '弥勒县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2356', '云南省', '红河哈尼族彝族自治州', '泸西县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2357', '云南省', '红河哈尼族彝族自治州', '元阳县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2358', '云南省', '红河哈尼族彝族自治州', '红河县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2359', '云南省', '红河哈尼族彝族自治州', '金平苗族瑶族傣族自治县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2360', '云南省', '红河哈尼族彝族自治州', '绿春县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2361', '云南省', '红河哈尼族彝族自治州', '河口瑶族自治县', '29', '0873');
INSERT INTO `tp_location` VALUES ('2362', '云南省', '文山壮族苗族自治州', '文山县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2363', '云南省', '文山壮族苗族自治州', '砚山县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2364', '云南省', '文山壮族苗族自治州', '西畴县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2365', '云南省', '文山壮族苗族自治州', '麻栗坡县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2366', '云南省', '文山壮族苗族自治州', '马关县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2367', '云南省', '文山壮族苗族自治州', '丘北县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2368', '云南省', '文山壮族苗族自治州', '广南县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2369', '云南省', '文山壮族苗族自治州', '富宁县', '29', '0876');
INSERT INTO `tp_location` VALUES ('2370', '云南省', '普洱市', '思茅区', '29', '0879');
INSERT INTO `tp_location` VALUES ('2371', '云南省', '普洱市', '普洱哈尼族彝族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2372', '云南省', '普洱市', '墨江哈尼族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2373', '云南省', '普洱市', '景东彝族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2374', '云南省', '普洱市', '景谷傣族彝族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2375', '云南省', '普洱市', '镇沅彝族哈尼族拉祜族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2376', '云南省', '普洱市', '江城哈尼族彝族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2377', '云南省', '普洱市', '孟连傣族拉祜族佤族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2378', '云南省', '普洱市', '澜沧拉祜族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2379', '云南省', '普洱市', '西盟佤族自治县', '29', '0879');
INSERT INTO `tp_location` VALUES ('2380', '云南省', '西双版纳傣族自治州', '景洪市', '29', '0691');
INSERT INTO `tp_location` VALUES ('2381', '云南省', '西双版纳傣族自治州', '勐海县', '29', '0691');
INSERT INTO `tp_location` VALUES ('2382', '云南省', '西双版纳傣族自治州', '勐腊县', '29', '0691');
INSERT INTO `tp_location` VALUES ('2383', '云南省', '大理白族自治州', '大理市', '29', '0872');
INSERT INTO `tp_location` VALUES ('2384', '云南省', '大理白族自治州', '漾濞彝族自治县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2385', '云南省', '大理白族自治州', '祥云县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2386', '云南省', '大理白族自治州', '宾川县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2387', '云南省', '大理白族自治州', '弥渡县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2388', '云南省', '大理白族自治州', '南涧彝族自治县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2389', '云南省', '大理白族自治州', '巍山彝族回族自治县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2390', '云南省', '大理白族自治州', '永平县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2391', '云南省', '大理白族自治州', '云龙县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2392', '云南省', '大理白族自治州', '洱源县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2393', '云南省', '大理白族自治州', '剑川县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2394', '云南省', '大理白族自治州', '鹤庆县', '29', '0872');
INSERT INTO `tp_location` VALUES ('2395', '云南省', '保山市', '保山市', '29', '0875');
INSERT INTO `tp_location` VALUES ('2396', '云南省', '保山市', '施甸县', '29', '0875');
INSERT INTO `tp_location` VALUES ('2397', '云南省', '保山市', '腾冲县', '29', '0875');
INSERT INTO `tp_location` VALUES ('2398', '云南省', '保山市', '龙陵县', '29', '0875');
INSERT INTO `tp_location` VALUES ('2399', '云南省', '保山市', '昌宁县', '29', '0875');
INSERT INTO `tp_location` VALUES ('2400', '云南省', '德宏傣族景颇族自治州', '芒市', '29', '0692');
INSERT INTO `tp_location` VALUES ('2401', '云南省', '德宏傣族景颇族自治州', '瑞丽市', '29', '0692');
INSERT INTO `tp_location` VALUES ('2402', '云南省', '德宏傣族景颇族自治州', '德宏州', '29', '0692');
INSERT INTO `tp_location` VALUES ('2403', '云南省', '德宏傣族景颇族自治州', '梁河县', '29', '0692');
INSERT INTO `tp_location` VALUES ('2404', '云南省', '德宏傣族景颇族自治州', '盈江县', '29', '0692');
INSERT INTO `tp_location` VALUES ('2405', '云南省', '德宏傣族景颇族自治州', '陇川县', '29', '0692');
INSERT INTO `tp_location` VALUES ('2406', '云南省', '丽江市', '古城区', '29', '0888');
INSERT INTO `tp_location` VALUES ('2407', '云南省', '丽江市', '玉龙纳西族自治县', '29', '0888');
INSERT INTO `tp_location` VALUES ('2408', '云南省', '丽江市', '永胜县', '29', '0888');
INSERT INTO `tp_location` VALUES ('2409', '云南省', '丽江市', '华坪县', '29', '0888');
INSERT INTO `tp_location` VALUES ('2410', '云南省', '丽江市', '宁蒗彝族自治县', '29', '0888');
INSERT INTO `tp_location` VALUES ('2411', '云南省', '怒江傈僳族自治州', '泸水县', '29', '0886');
INSERT INTO `tp_location` VALUES ('2412', '云南省', '怒江傈僳族自治州', '福贡县', '29', '0886');
INSERT INTO `tp_location` VALUES ('2413', '云南省', '怒江傈僳族自治州', '贡山独龙族怒族自治县', '29', '0886');
INSERT INTO `tp_location` VALUES ('2414', '云南省', '怒江傈僳族自治州', '兰坪白族普米族自治县', '29', '0886');
INSERT INTO `tp_location` VALUES ('2415', '云南省', '迪庆藏族自治州', '香格里拉县', '29', '0887');
INSERT INTO `tp_location` VALUES ('2416', '云南省', '迪庆藏族自治州', '维西傈僳族自治县', '29', '0887');
INSERT INTO `tp_location` VALUES ('2417', '云南省', '迪庆藏族自治州', '德钦县', '29', '0887');
INSERT INTO `tp_location` VALUES ('2418', '云南省', '临沧市', '临翔区', '29', '0883');
INSERT INTO `tp_location` VALUES ('2419', '云南省', '临沧市', '凤庆县', '29', '0883');
INSERT INTO `tp_location` VALUES ('2420', '云南省', '临沧市', '云县', '29', '0883');
INSERT INTO `tp_location` VALUES ('2421', '云南省', '临沧市', '永德县', '29', '0883');
INSERT INTO `tp_location` VALUES ('2422', '云南省', '临沧市', '镇康县', '29', '0883');
INSERT INTO `tp_location` VALUES ('2423', '云南省', '临沧市', '双江拉祜族佤族布朗族傣族自治县', '29', '0883');
INSERT INTO `tp_location` VALUES ('2424', '云南省', '临沧市', '耿马傣族佤族自治县', '29', '0883');
INSERT INTO `tp_location` VALUES ('2425', '云南省', '临沧市', '沧源佤族自治县', '29', '0883');
INSERT INTO `tp_location` VALUES ('2426', '西藏', '拉萨市', '城关区', '27', '0891');
INSERT INTO `tp_location` VALUES ('2427', '西藏', '拉萨市', '林周县', '27', '0891');
INSERT INTO `tp_location` VALUES ('2428', '西藏', '拉萨市', '当雄县', '27', '0891');
INSERT INTO `tp_location` VALUES ('2429', '西藏', '拉萨市', '尼木县', '27', '0891');
INSERT INTO `tp_location` VALUES ('2430', '西藏', '拉萨市', '曲水县', '27', '0891');
INSERT INTO `tp_location` VALUES ('2431', '西藏', '拉萨市', '堆龙德庆县', '27', '0891');
INSERT INTO `tp_location` VALUES ('2432', '西藏', '拉萨市', '达孜县', '27', '0891');
INSERT INTO `tp_location` VALUES ('2433', '西藏', '拉萨市', '墨竹工卡县', '27', '0891');
INSERT INTO `tp_location` VALUES ('2434', '西藏', '昌都地区', '昌都县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2435', '西藏', '昌都地区', '江达县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2436', '西藏', '昌都地区', '贡觉县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2437', '西藏', '昌都地区', '类乌齐县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2438', '西藏', '昌都地区', '丁青县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2439', '西藏', '昌都地区', '察雅县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2440', '西藏', '昌都地区', '八宿县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2441', '西藏', '昌都地区', '左贡县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2442', '西藏', '昌都地区', '芒康县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2443', '西藏', '昌都地区', '洛隆县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2444', '西藏', '昌都地区', '边坝县', '27', '0895');
INSERT INTO `tp_location` VALUES ('2445', '西藏', '山南地区', '乃东县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2446', '西藏', '山南地区', '扎囊县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2447', '西藏', '山南地区', '贡嘎县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2448', '西藏', '山南地区', '桑日县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2449', '西藏', '山南地区', '琼结县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2450', '西藏', '山南地区', '曲松县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2451', '西藏', '山南地区', '措美县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2452', '西藏', '山南地区', '洛扎县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2453', '西藏', '山南地区', '加查县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2454', '西藏', '山南地区', '隆子县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2455', '西藏', '山南地区', '错那县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2456', '西藏', '山南地区', '浪卡子县', '27', '0893');
INSERT INTO `tp_location` VALUES ('2457', '西藏', '日喀则地区', '日喀则市', '27', '0892');
INSERT INTO `tp_location` VALUES ('2458', '西藏', '日喀则地区', '南木林县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2459', '西藏', '日喀则地区', '江孜县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2460', '西藏', '日喀则地区', '定日县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2461', '西藏', '日喀则地区', '萨迦县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2462', '西藏', '日喀则地区', '拉孜县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2463', '西藏', '日喀则地区', '昂仁县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2464', '西藏', '日喀则地区', '谢通门县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2465', '西藏', '日喀则地区', '白朗县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2466', '西藏', '日喀则地区', '仁布县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2467', '西藏', '日喀则地区', '康马县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2468', '西藏', '日喀则地区', '定结县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2469', '西藏', '日喀则地区', '仲巴县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2470', '西藏', '日喀则地区', '亚东县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2471', '西藏', '日喀则地区', '吉隆县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2472', '西藏', '日喀则地区', '聂拉木县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2473', '西藏', '日喀则地区', '萨嘎县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2474', '西藏', '日喀则地区', '岗巴县', '27', '0892');
INSERT INTO `tp_location` VALUES ('2475', '西藏', '那曲地区', '那曲县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2476', '西藏', '那曲地区', '嘉黎县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2477', '西藏', '那曲地区', '比如县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2478', '西藏', '那曲地区', '聂荣县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2479', '西藏', '那曲地区', '安多县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2480', '西藏', '那曲地区', '申扎县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2481', '西藏', '那曲地区', '索县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2482', '西藏', '那曲地区', '班戈县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2483', '西藏', '那曲地区', '巴青县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2484', '西藏', '那曲地区', '尼玛县', '27', '0896');
INSERT INTO `tp_location` VALUES ('2485', '西藏', '阿里地区', '普兰县', '27', '0897');
INSERT INTO `tp_location` VALUES ('2486', '西藏', '阿里地区', '札达县', '27', '0897');
INSERT INTO `tp_location` VALUES ('2487', '西藏', '阿里地区', '噶尔县', '27', '0897');
INSERT INTO `tp_location` VALUES ('2488', '西藏', '阿里地区', '日土县', '27', '0897');
INSERT INTO `tp_location` VALUES ('2489', '西藏', '阿里地区', '革吉县', '27', '0897');
INSERT INTO `tp_location` VALUES ('2490', '西藏', '阿里地区', '改则县', '27', '0897');
INSERT INTO `tp_location` VALUES ('2491', '西藏', '阿里地区', '措勤县', '27', '0897');
INSERT INTO `tp_location` VALUES ('2492', '西藏', '林芝地区', '林芝县', '27', '0894');
INSERT INTO `tp_location` VALUES ('2493', '西藏', '林芝地区', '工布江达县', '27', '0894');
INSERT INTO `tp_location` VALUES ('2494', '西藏', '林芝地区', '米林县', '27', '0894');
INSERT INTO `tp_location` VALUES ('2495', '西藏', '林芝地区', '墨脱县', '27', '0894');
INSERT INTO `tp_location` VALUES ('2496', '西藏', '林芝地区', '波密县', '27', '0894');
INSERT INTO `tp_location` VALUES ('2497', '西藏', '林芝地区', '察隅县', '27', '0894');
INSERT INTO `tp_location` VALUES ('2498', '西藏', '林芝地区', '朗县', '27', '0894');
INSERT INTO `tp_location` VALUES ('2499', '陕西省', '西安市', '新城区', '23', '029');
INSERT INTO `tp_location` VALUES ('2500', '陕西省', '西安市', '碑林区', '23', '029');
INSERT INTO `tp_location` VALUES ('2501', '陕西省', '西安市', '莲湖区', '23', '029');
INSERT INTO `tp_location` VALUES ('2502', '陕西省', '西安市', '灞桥区', '23', '029');
INSERT INTO `tp_location` VALUES ('2503', '陕西省', '西安市', '未央区', '23', '029');
INSERT INTO `tp_location` VALUES ('2504', '陕西省', '西安市', '雁塔区', '23', '029');
INSERT INTO `tp_location` VALUES ('2505', '陕西省', '西安市', '阎良区', '23', '029');
INSERT INTO `tp_location` VALUES ('2506', '陕西省', '西安市', '临潼区', '23', '029');
INSERT INTO `tp_location` VALUES ('2507', '陕西省', '西安市', '长安区', '23', '029');
INSERT INTO `tp_location` VALUES ('2508', '陕西省', '西安市', '蓝田县', '23', '029');
INSERT INTO `tp_location` VALUES ('2509', '陕西省', '西安市', '周至县', '23', '029');
INSERT INTO `tp_location` VALUES ('2510', '陕西省', '西安市', '户县', '23', '029');
INSERT INTO `tp_location` VALUES ('2511', '陕西省', '西安市', '高陵县', '23', '029');
INSERT INTO `tp_location` VALUES ('2512', '陕西省', '铜川市', '王益区', '23', '0919');
INSERT INTO `tp_location` VALUES ('2513', '陕西省', '铜川市', '印台区', '23', '0919');
INSERT INTO `tp_location` VALUES ('2514', '陕西省', '铜川市', '耀州区', '23', '0919');
INSERT INTO `tp_location` VALUES ('2515', '陕西省', '铜川市', '宜君县', '23', '0919');
INSERT INTO `tp_location` VALUES ('2516', '陕西省', '宝鸡市', '渭滨区', '23', '0917');
INSERT INTO `tp_location` VALUES ('2517', '陕西省', '宝鸡市', '金台区', '23', '0917');
INSERT INTO `tp_location` VALUES ('2518', '陕西省', '宝鸡市', '陈仓区', '23', '0917');
INSERT INTO `tp_location` VALUES ('2519', '陕西省', '宝鸡市', '凤翔县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2520', '陕西省', '宝鸡市', '岐山县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2521', '陕西省', '宝鸡市', '扶风县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2522', '陕西省', '宝鸡市', '眉县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2523', '陕西省', '宝鸡市', '陇县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2524', '陕西省', '宝鸡市', '千阳县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2525', '陕西省', '宝鸡市', '麟游县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2526', '陕西省', '宝鸡市', '凤县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2527', '陕西省', '宝鸡市', '太白县', '23', '0917');
INSERT INTO `tp_location` VALUES ('2528', '陕西省', '咸阳市', '秦都区', '23', '0910');
INSERT INTO `tp_location` VALUES ('2529', '陕西省', '咸阳市', '杨陵区', '23', '0910');
INSERT INTO `tp_location` VALUES ('2530', '陕西省', '咸阳市', '渭城区', '23', '0910');
INSERT INTO `tp_location` VALUES ('2531', '陕西省', '咸阳市', '三原县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2532', '陕西省', '咸阳市', '泾阳县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2533', '陕西省', '咸阳市', '乾县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2534', '陕西省', '咸阳市', '礼泉县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2535', '陕西省', '咸阳市', '永寿县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2536', '陕西省', '咸阳市', '彬县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2537', '陕西省', '咸阳市', '长武县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2538', '陕西省', '咸阳市', '旬邑县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2539', '陕西省', '咸阳市', '淳化县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2540', '陕西省', '咸阳市', '武功县', '23', '0910');
INSERT INTO `tp_location` VALUES ('2541', '陕西省', '咸阳市', '兴平市', '23', '0910');
INSERT INTO `tp_location` VALUES ('2542', '陕西省', '渭南市', '临渭区', '23', '0913');
INSERT INTO `tp_location` VALUES ('2543', '陕西省', '渭南市', '华县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2544', '陕西省', '渭南市', '潼关县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2545', '陕西省', '渭南市', '大荔县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2546', '陕西省', '渭南市', '合阳县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2547', '陕西省', '渭南市', '澄城县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2548', '陕西省', '渭南市', '蒲城县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2549', '陕西省', '渭南市', '白水县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2550', '陕西省', '渭南市', '富平县', '23', '0913');
INSERT INTO `tp_location` VALUES ('2551', '陕西省', '渭南市', '韩城市', '23', '0913');
INSERT INTO `tp_location` VALUES ('2552', '陕西省', '渭南市', '华阴市', '23', '0913');
INSERT INTO `tp_location` VALUES ('2553', '陕西省', '延安市', '宝塔区', '23', '0911');
INSERT INTO `tp_location` VALUES ('2554', '陕西省', '延安市', '延长县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2555', '陕西省', '延安市', '延川县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2556', '陕西省', '延安市', '子长县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2557', '陕西省', '延安市', '安塞县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2558', '陕西省', '延安市', '志丹县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2559', '陕西省', '延安市', '吴旗县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2560', '陕西省', '延安市', '甘泉县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2561', '陕西省', '延安市', '富县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2562', '陕西省', '延安市', '洛川县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2563', '陕西省', '延安市', '宜川县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2564', '陕西省', '延安市', '黄龙县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2565', '陕西省', '延安市', '黄陵县', '23', '0911');
INSERT INTO `tp_location` VALUES ('2566', '陕西省', '汉中市', '汉台区', '23', '0916');
INSERT INTO `tp_location` VALUES ('2567', '陕西省', '汉中市', '南郑县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2568', '陕西省', '汉中市', '城固县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2569', '陕西省', '汉中市', '洋县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2570', '陕西省', '汉中市', '西乡县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2571', '陕西省', '汉中市', '勉县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2572', '陕西省', '汉中市', '宁强县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2573', '陕西省', '汉中市', '略阳县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2574', '陕西省', '汉中市', '镇巴县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2575', '陕西省', '汉中市', '留坝县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2576', '陕西省', '汉中市', '佛坪县', '23', '0916');
INSERT INTO `tp_location` VALUES ('2577', '陕西省', '安康市', '安康市', '23', '0915');
INSERT INTO `tp_location` VALUES ('2578', '陕西省', '安康市', '汉阴县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2579', '陕西省', '安康市', '石泉县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2580', '陕西省', '安康市', '宁陕县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2581', '陕西省', '安康市', '紫阳县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2582', '陕西省', '安康市', '岚皋县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2583', '陕西省', '安康市', '平利县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2584', '陕西省', '安康市', '镇坪县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2585', '陕西省', '安康市', '旬阳县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2586', '陕西省', '安康市', '白河县', '23', '0915');
INSERT INTO `tp_location` VALUES ('2587', '陕西省', '商洛市', '商州区', '23', '0914');
INSERT INTO `tp_location` VALUES ('2588', '陕西省', '商洛市', '洛南县', '23', '0914');
INSERT INTO `tp_location` VALUES ('2589', '陕西省', '商洛市', '丹凤县', '23', '0914');
INSERT INTO `tp_location` VALUES ('2590', '陕西省', '商洛市', '商南县', '23', '0914');
INSERT INTO `tp_location` VALUES ('2591', '陕西省', '商洛市', '山阳县', '23', '0914');
INSERT INTO `tp_location` VALUES ('2592', '陕西省', '商洛市', '镇安县', '23', '0914');
INSERT INTO `tp_location` VALUES ('2593', '陕西省', '商洛市', '柞水县', '23', '0914');
INSERT INTO `tp_location` VALUES ('2594', '陕西省', '榆林市', '榆林市', '23', '0912');
INSERT INTO `tp_location` VALUES ('2595', '陕西省', '榆林市', '神木县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2596', '陕西省', '榆林市', '府谷县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2597', '陕西省', '榆林市', '横山县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2598', '陕西省', '榆林市', '靖边县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2599', '陕西省', '榆林市', '定边县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2600', '陕西省', '榆林市', '绥德县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2601', '陕西省', '榆林市', '米脂县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2602', '陕西省', '榆林市', '佳县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2603', '陕西省', '榆林市', '吴堡县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2604', '陕西省', '榆林市', '清涧县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2605', '陕西省', '榆林市', '子洲县', '23', '0912');
INSERT INTO `tp_location` VALUES ('2606', '甘肃省', '兰州市', '城关区', '04', '0931');
INSERT INTO `tp_location` VALUES ('2607', '甘肃省', '兰州市', '七里河区', '04', '0931');
INSERT INTO `tp_location` VALUES ('2608', '甘肃省', '兰州市', '西固区', '04', '0931');
INSERT INTO `tp_location` VALUES ('2609', '甘肃省', '兰州市', '安宁区', '04', '0931');
INSERT INTO `tp_location` VALUES ('2610', '甘肃省', '兰州市', '红古区', '04', '0931');
INSERT INTO `tp_location` VALUES ('2611', '甘肃省', '兰州市', '永登县', '04', '0931');
INSERT INTO `tp_location` VALUES ('2612', '甘肃省', '兰州市', '皋兰县', '04', '0931');
INSERT INTO `tp_location` VALUES ('2613', '甘肃省', '兰州市', '榆中县', '04', '0931');
INSERT INTO `tp_location` VALUES ('2614', '甘肃省', '嘉峪关市', '嘉峪关市', '04', '0937');
INSERT INTO `tp_location` VALUES ('2615', '甘肃省', '金昌市', '金川区', '04', '0935');
INSERT INTO `tp_location` VALUES ('2616', '甘肃省', '金昌市', '永昌县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2617', '甘肃省', '白银市', '白银区', '04', '0943');
INSERT INTO `tp_location` VALUES ('2618', '甘肃省', '白银市', '平川区', '04', '0943');
INSERT INTO `tp_location` VALUES ('2619', '甘肃省', '白银市', '靖远县', '04', '0943');
INSERT INTO `tp_location` VALUES ('2620', '甘肃省', '白银市', '会宁县', '04', '0943');
INSERT INTO `tp_location` VALUES ('2621', '甘肃省', '白银市', '景泰县', '04', '0943');
INSERT INTO `tp_location` VALUES ('2622', '甘肃省', '天水市', '秦州区', '04', '0938');
INSERT INTO `tp_location` VALUES ('2623', '甘肃省', '天水市', '麦积区', '04', '0938');
INSERT INTO `tp_location` VALUES ('2624', '甘肃省', '天水市', '清水县', '04', '0938');
INSERT INTO `tp_location` VALUES ('2625', '甘肃省', '天水市', '秦安县', '04', '0938');
INSERT INTO `tp_location` VALUES ('2626', '甘肃省', '天水市', '甘谷县', '04', '0938');
INSERT INTO `tp_location` VALUES ('2627', '甘肃省', '天水市', '武山县', '04', '0938');
INSERT INTO `tp_location` VALUES ('2628', '甘肃省', '天水市', '张家川回族自治县', '04', '0938');
INSERT INTO `tp_location` VALUES ('2629', '甘肃省', '酒泉市', '玉门市', '04', '0937');
INSERT INTO `tp_location` VALUES ('2630', '甘肃省', '酒泉市', '酒泉市', '04', '0937');
INSERT INTO `tp_location` VALUES ('2631', '甘肃省', '酒泉市', '敦煌市', '04', '0937');
INSERT INTO `tp_location` VALUES ('2632', '甘肃省', '酒泉市', '金塔县', '04', '0937');
INSERT INTO `tp_location` VALUES ('2633', '甘肃省', '酒泉市', '肃北蒙古族自治县', '04', '0937');
INSERT INTO `tp_location` VALUES ('2634', '甘肃省', '酒泉市', '阿克塞哈萨克族自治县', '04', '0937');
INSERT INTO `tp_location` VALUES ('2635', '甘肃省', '酒泉市', '安西县', '04', '0937');
INSERT INTO `tp_location` VALUES ('2636', '甘肃省', '张掖市', '张掖市', '04', '0936');
INSERT INTO `tp_location` VALUES ('2637', '甘肃省', '张掖市', '肃南裕固族自治县', '04', '0936');
INSERT INTO `tp_location` VALUES ('2638', '甘肃省', '张掖市', '民乐县', '04', '0936');
INSERT INTO `tp_location` VALUES ('2639', '甘肃省', '张掖市', '临泽县', '04', '0936');
INSERT INTO `tp_location` VALUES ('2640', '甘肃省', '张掖市', '高台县', '04', '0936');
INSERT INTO `tp_location` VALUES ('2641', '甘肃省', '张掖市', '山丹县', '04', '0936');
INSERT INTO `tp_location` VALUES ('2642', '甘肃省', '武威市', '武威市', '04', '0935');
INSERT INTO `tp_location` VALUES ('2643', '甘肃省', '武威市', '民勤县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2644', '甘肃省', '武威市', '古浪县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2645', '甘肃省', '武威市', '天祝藏族自治县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2646', '甘肃省', '定西市', '安定区', '04', '0932');
INSERT INTO `tp_location` VALUES ('2647', '甘肃省', '定西市', '通渭县', '04', '0932');
INSERT INTO `tp_location` VALUES ('2648', '甘肃省', '定西市', '陇西县', '04', '0932');
INSERT INTO `tp_location` VALUES ('2649', '甘肃省', '定西市', '渭源县', '04', '0932');
INSERT INTO `tp_location` VALUES ('2650', '甘肃省', '定西市', '临洮县', '04', '0932');
INSERT INTO `tp_location` VALUES ('2651', '甘肃省', '定西市', '漳县', '04', '0932');
INSERT INTO `tp_location` VALUES ('2652', '甘肃省', '定西市', '岷县', '04', '0932');
INSERT INTO `tp_location` VALUES ('2653', '甘肃省', '陇南市', '武都区', '04', '0935');
INSERT INTO `tp_location` VALUES ('2654', '甘肃省', '陇南市', '宕昌县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2655', '甘肃省', '陇南市', '成县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2656', '甘肃省', '陇南市', '康县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2657', '甘肃省', '陇南市', '文县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2658', '甘肃省', '陇南市', '西和县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2659', '甘肃省', '陇南市', '礼县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2660', '甘肃省', '陇南市', '两当县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2661', '甘肃省', '陇南市', '徽县', '04', '0935');
INSERT INTO `tp_location` VALUES ('2662', '甘肃省', '平凉市', '平凉市', '04', '0933');
INSERT INTO `tp_location` VALUES ('2663', '甘肃省', '平凉市', '泾川县', '04', '0933');
INSERT INTO `tp_location` VALUES ('2664', '甘肃省', '平凉市', '灵台县', '04', '0933');
INSERT INTO `tp_location` VALUES ('2665', '甘肃省', '平凉市', '崇信县', '04', '0933');
INSERT INTO `tp_location` VALUES ('2666', '甘肃省', '平凉市', '华亭县', '04', '0933');
INSERT INTO `tp_location` VALUES ('2667', '甘肃省', '平凉市', '庄浪县', '04', '0933');
INSERT INTO `tp_location` VALUES ('2668', '甘肃省', '平凉市', '静宁县', '04', '0933');
INSERT INTO `tp_location` VALUES ('2669', '甘肃省', '庆阳市', '西峰区', '04', '0934');
INSERT INTO `tp_location` VALUES ('2670', '甘肃省', '庆阳市', '庆阳县', '04', '0934');
INSERT INTO `tp_location` VALUES ('2671', '甘肃省', '庆阳市', '环县', '04', '0934');
INSERT INTO `tp_location` VALUES ('2672', '甘肃省', '庆阳市', '华池县', '04', '0934');
INSERT INTO `tp_location` VALUES ('2673', '甘肃省', '庆阳市', '合水县', '04', '0934');
INSERT INTO `tp_location` VALUES ('2674', '甘肃省', '庆阳市', '正宁县', '04', '0934');
INSERT INTO `tp_location` VALUES ('2675', '甘肃省', '庆阳市', '宁县', '04', '0934');
INSERT INTO `tp_location` VALUES ('2676', '甘肃省', '庆阳市', '镇原县', '04', '0934');
INSERT INTO `tp_location` VALUES ('2677', '甘肃省', '临夏回族自治州', '临夏市', '04', '0930');
INSERT INTO `tp_location` VALUES ('2678', '甘肃省', '临夏回族自治州', '临夏县', '04', '0930');
INSERT INTO `tp_location` VALUES ('2679', '甘肃省', '临夏回族自治州', '康乐县', '04', '0930');
INSERT INTO `tp_location` VALUES ('2680', '甘肃省', '临夏回族自治州', '永靖县', '04', '0930');
INSERT INTO `tp_location` VALUES ('2681', '甘肃省', '临夏回族自治州', '广河县', '04', '0930');
INSERT INTO `tp_location` VALUES ('2682', '甘肃省', '临夏回族自治州', '和政县', '04', '0930');
INSERT INTO `tp_location` VALUES ('2683', '甘肃省', '临夏回族自治州', '东乡族自治县', '04', '0930');
INSERT INTO `tp_location` VALUES ('2684', '甘肃省', '临夏回族自治州', '积石山保安族东乡族撒拉族自治县', '04', '0930');
INSERT INTO `tp_location` VALUES ('2685', '甘肃省', '甘南藏族自治州', '合作市', '04', '0941');
INSERT INTO `tp_location` VALUES ('2686', '甘肃省', '甘南藏族自治州', '临潭县', '04', '0941');
INSERT INTO `tp_location` VALUES ('2687', '甘肃省', '甘南藏族自治州', '卓尼县', '04', '0941');
INSERT INTO `tp_location` VALUES ('2688', '甘肃省', '甘南藏族自治州', '舟曲县', '04', '0941');
INSERT INTO `tp_location` VALUES ('2689', '甘肃省', '甘南藏族自治州', '迭部县', '04', '0941');
INSERT INTO `tp_location` VALUES ('2690', '甘肃省', '甘南藏族自治州', '玛曲县', '04', '0941');
INSERT INTO `tp_location` VALUES ('2691', '甘肃省', '甘南藏族自治州', '碌曲县', '04', '0941');
INSERT INTO `tp_location` VALUES ('2692', '甘肃省', '甘南藏族自治州', '夏河县', '04', '0941');
INSERT INTO `tp_location` VALUES ('2693', '青海省', '西宁市', '城东区', '20', '0971');
INSERT INTO `tp_location` VALUES ('2694', '青海省', '西宁市', '城中区', '20', '0971');
INSERT INTO `tp_location` VALUES ('2695', '青海省', '西宁市', '城西区', '20', '0971');
INSERT INTO `tp_location` VALUES ('2696', '青海省', '西宁市', '城北区', '20', '0971');
INSERT INTO `tp_location` VALUES ('2697', '青海省', '西宁市', '大通回族土族自治县', '20', '0971');
INSERT INTO `tp_location` VALUES ('2698', '青海省', '海东地区', '平安县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2699', '青海省', '海东地区', '民和回族土族自治县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2700', '青海省', '海东地区', '乐都县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2701', '青海省', '海东地区', '湟中县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2702', '青海省', '海东地区', '湟源县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2703', '青海省', '海东地区', '互助土族自治县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2704', '青海省', '海东地区', '化隆回族自治县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2705', '青海省', '海东地区', '循化撒拉族自治县', '20', '0972');
INSERT INTO `tp_location` VALUES ('2706', '青海省', '海北藏族自治州', '门源回族自治县', '20', '0970');
INSERT INTO `tp_location` VALUES ('2707', '青海省', '海北藏族自治州', '祁连县', '20', '0970');
INSERT INTO `tp_location` VALUES ('2708', '青海省', '海北藏族自治州', '海晏县', '20', '0970');
INSERT INTO `tp_location` VALUES ('2709', '青海省', '海北藏族自治州', '刚察县', '20', '0970');
INSERT INTO `tp_location` VALUES ('2710', '青海省', '黄南藏族自治州', '同仁县', '20', '0973');
INSERT INTO `tp_location` VALUES ('2711', '青海省', '黄南藏族自治州', '尖扎县', '20', '0973');
INSERT INTO `tp_location` VALUES ('2712', '青海省', '黄南藏族自治州', '泽库县', '20', '0973');
INSERT INTO `tp_location` VALUES ('2713', '青海省', '黄南藏族自治州', '河南蒙古族自治县', '20', '0973');
INSERT INTO `tp_location` VALUES ('2714', '青海省', '海南藏族自治州', '共和县', '20', '0974');
INSERT INTO `tp_location` VALUES ('2715', '青海省', '海南藏族自治州', '同德县', '20', '0974');
INSERT INTO `tp_location` VALUES ('2716', '青海省', '海南藏族自治州', '贵德县', '20', '0974');
INSERT INTO `tp_location` VALUES ('2717', '青海省', '海南藏族自治州', '兴海县', '20', '0974');
INSERT INTO `tp_location` VALUES ('2718', '青海省', '海南藏族自治州', '贵南县', '20', '0974');
INSERT INTO `tp_location` VALUES ('2719', '青海省', '果洛藏族自治州', '玛沁县', '20', '0975');
INSERT INTO `tp_location` VALUES ('2720', '青海省', '果洛藏族自治州', '班玛县', '20', '0975');
INSERT INTO `tp_location` VALUES ('2721', '青海省', '果洛藏族自治州', '甘德县', '20', '0975');
INSERT INTO `tp_location` VALUES ('2722', '青海省', '果洛藏族自治州', '达日县', '20', '0975');
INSERT INTO `tp_location` VALUES ('2723', '青海省', '果洛藏族自治州', '久治县', '20', '0975');
INSERT INTO `tp_location` VALUES ('2724', '青海省', '果洛藏族自治州', '玛多县', '20', '0975');
INSERT INTO `tp_location` VALUES ('2725', '青海省', '玉树藏族自治州', '玉树县', '20', '0976');
INSERT INTO `tp_location` VALUES ('2726', '青海省', '玉树藏族自治州', '杂多县', '20', '0976');
INSERT INTO `tp_location` VALUES ('2727', '青海省', '玉树藏族自治州', '称多县', '20', '0976');
INSERT INTO `tp_location` VALUES ('2728', '青海省', '玉树藏族自治州', '治多县', '20', '0976');
INSERT INTO `tp_location` VALUES ('2729', '青海省', '玉树藏族自治州', '囊谦县', '20', '0976');
INSERT INTO `tp_location` VALUES ('2730', '青海省', '玉树藏族自治州', '曲麻莱县', '20', '0976');
INSERT INTO `tp_location` VALUES ('2731', '青海省', '海西蒙古族藏族自治州', '格尔木市', '20', '0977');
INSERT INTO `tp_location` VALUES ('2732', '青海省', '海西蒙古族藏族自治州', '德令哈市', '20', '0977');
INSERT INTO `tp_location` VALUES ('2733', '青海省', '海西蒙古族藏族自治州', '乌兰县', '20', '0977');
INSERT INTO `tp_location` VALUES ('2734', '青海省', '海西蒙古族藏族自治州', '都兰县', '20', '0977');
INSERT INTO `tp_location` VALUES ('2735', '青海省', '海西蒙古族藏族自治州', '天峻县', '20', '0977');
INSERT INTO `tp_location` VALUES ('2736', '宁夏', '银川市', '兴庆区', '19', '0951');
INSERT INTO `tp_location` VALUES ('2737', '宁夏', '银川市', '西夏区', '19', '0951');
INSERT INTO `tp_location` VALUES ('2738', '宁夏', '银川市', '金凤区', '19', '0951');
INSERT INTO `tp_location` VALUES ('2739', '宁夏', '银川市', '永宁县', '19', '0951');
INSERT INTO `tp_location` VALUES ('2740', '宁夏', '银川市', '贺兰县', '19', '0951');
INSERT INTO `tp_location` VALUES ('2741', '宁夏', '银川市', '灵武市', '19', '0951');
INSERT INTO `tp_location` VALUES ('2742', '宁夏', '石嘴山市', '大武口区', '19', '0952');
INSERT INTO `tp_location` VALUES ('2743', '宁夏', '石嘴山市', '惠农区', '19', '0952');
INSERT INTO `tp_location` VALUES ('2744', '宁夏', '石嘴山市', '平罗县', '19', '0952');
INSERT INTO `tp_location` VALUES ('2745', '宁夏', '吴忠市', '利通区', '19', '0953');
INSERT INTO `tp_location` VALUES ('2746', '宁夏', '吴忠市', '红寺堡开发区', '19', '0953');
INSERT INTO `tp_location` VALUES ('2747', '宁夏', '吴忠市', '盐池县', '19', '0953');
INSERT INTO `tp_location` VALUES ('2748', '宁夏', '吴忠市', '同心县', '19', '0953');
INSERT INTO `tp_location` VALUES ('2749', '宁夏', '吴忠市', '青铜峡市', '19', '0953');
INSERT INTO `tp_location` VALUES ('2750', '宁夏', '固原市', '原州区', '19', '0954');
INSERT INTO `tp_location` VALUES ('2751', '宁夏', '固原市', '西吉县', '19', '0954');
INSERT INTO `tp_location` VALUES ('2752', '宁夏', '固原市', '隆德县', '19', '0954');
INSERT INTO `tp_location` VALUES ('2753', '宁夏', '固原市', '泾源县', '19', '0954');
INSERT INTO `tp_location` VALUES ('2754', '宁夏', '固原市', '彭阳县', '19', '0954');
INSERT INTO `tp_location` VALUES ('2755', '宁夏', '中卫市', '沙坡头区', '19', '0953');
INSERT INTO `tp_location` VALUES ('2756', '宁夏', '中卫市', '中宁县', '19', '0953');
INSERT INTO `tp_location` VALUES ('2757', '宁夏', '中卫市', '海原县', '19', '0953');
INSERT INTO `tp_location` VALUES ('2758', '新疆', '乌鲁木齐市', '天山区', '28', '0991');
INSERT INTO `tp_location` VALUES ('2759', '新疆', '乌鲁木齐市', '沙依巴克区', '28', '0991');
INSERT INTO `tp_location` VALUES ('2760', '新疆', '乌鲁木齐市', '新市区', '28', '0991');
INSERT INTO `tp_location` VALUES ('2761', '新疆', '乌鲁木齐市', '水磨沟区', '28', '0991');
INSERT INTO `tp_location` VALUES ('2762', '新疆', '乌鲁木齐市', '头屯河区', '28', '0991');
INSERT INTO `tp_location` VALUES ('2763', '新疆', '乌鲁木齐市', '达坂城区', '28', '0991');
INSERT INTO `tp_location` VALUES ('2764', '新疆', '乌鲁木齐市', '米东区', '28', '0991');
INSERT INTO `tp_location` VALUES ('2765', '新疆', '乌鲁木齐市', '乌鲁木齐县', '28', '0991');
INSERT INTO `tp_location` VALUES ('2766', '新疆', '克拉玛依市', '独山子区', '28', '0990');
INSERT INTO `tp_location` VALUES ('2767', '新疆', '克拉玛依市', '克拉玛依区', '28', '0990');
INSERT INTO `tp_location` VALUES ('2768', '新疆', '克拉玛依市', '白碱滩区', '28', '0990');
INSERT INTO `tp_location` VALUES ('2769', '新疆', '克拉玛依市', '乌尔禾区', '28', '0990');
INSERT INTO `tp_location` VALUES ('2770', '新疆', '吐鲁番地区', '吐鲁番市', '28', '0995');
INSERT INTO `tp_location` VALUES ('2771', '新疆', '吐鲁番地区', '鄯善县', '28', '0995');
INSERT INTO `tp_location` VALUES ('2772', '新疆', '吐鲁番地区', '托克逊县', '28', '0995');
INSERT INTO `tp_location` VALUES ('2773', '新疆', '哈密地区', '哈密市', '28', '0902');
INSERT INTO `tp_location` VALUES ('2774', '新疆', '哈密地区', '巴里坤哈萨克自治县', '28', '0902');
INSERT INTO `tp_location` VALUES ('2775', '新疆', '哈密地区', '伊吾县', '28', '0902');
INSERT INTO `tp_location` VALUES ('2776', '新疆', '昌吉回族自治州', '昌吉市', '28', '0994');
INSERT INTO `tp_location` VALUES ('2777', '新疆', '昌吉回族自治州', '阜康市', '28', '0994');
INSERT INTO `tp_location` VALUES ('2778', '新疆', '昌吉回族自治州', '呼图壁县', '28', '0994');
INSERT INTO `tp_location` VALUES ('2779', '新疆', '昌吉回族自治州', '玛纳斯县', '28', '0994');
INSERT INTO `tp_location` VALUES ('2780', '新疆', '昌吉回族自治州', '奇台县', '28', '0994');
INSERT INTO `tp_location` VALUES ('2781', '新疆', '昌吉回族自治州', '吉木萨尔县', '28', '0994');
INSERT INTO `tp_location` VALUES ('2782', '新疆', '昌吉回族自治州', '木垒哈萨克自治县', '28', '0994');
INSERT INTO `tp_location` VALUES ('2783', '新疆', '博尔塔拉蒙古自治州', '博乐市', '28', '0909');
INSERT INTO `tp_location` VALUES ('2784', '新疆', '博尔塔拉蒙古自治州', '精河县', '28', '0909');
INSERT INTO `tp_location` VALUES ('2785', '新疆', '博尔塔拉蒙古自治州', '温泉县', '28', '0909');
INSERT INTO `tp_location` VALUES ('2786', '新疆', '巴音郭楞蒙古自治州', '库尔勒市', '28', '0996');
INSERT INTO `tp_location` VALUES ('2787', '新疆', '巴音郭楞蒙古自治州', '轮台县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2788', '新疆', '巴音郭楞蒙古自治州', '尉犁县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2789', '新疆', '巴音郭楞蒙古自治州', '若羌县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2790', '新疆', '巴音郭楞蒙古自治州', '且末县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2791', '新疆', '巴音郭楞蒙古自治州', '焉耆回族自治县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2792', '新疆', '巴音郭楞蒙古自治州', '和静县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2793', '新疆', '巴音郭楞蒙古自治州', '和硕县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2794', '新疆', '巴音郭楞蒙古自治州', '博湖县', '28', '0996');
INSERT INTO `tp_location` VALUES ('2795', '新疆', '阿克苏地区', '阿克苏市', '28', '0997');
INSERT INTO `tp_location` VALUES ('2796', '新疆', '阿克苏地区', '温宿县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2797', '新疆', '阿克苏地区', '库车县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2798', '新疆', '阿克苏地区', '沙雅县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2799', '新疆', '阿克苏地区', '新和县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2800', '新疆', '阿克苏地区', '拜城县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2801', '新疆', '阿克苏地区', '乌什县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2802', '新疆', '阿克苏地区', '阿瓦提县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2803', '新疆', '阿克苏地区', '柯坪县', '28', '0997');
INSERT INTO `tp_location` VALUES ('2804', '新疆', '克孜勒苏柯尔克孜自治州', '阿图什市', '28', '0908');
INSERT INTO `tp_location` VALUES ('2805', '新疆', '克孜勒苏柯尔克孜自治州', '阿克陶县', '28', '0908');
INSERT INTO `tp_location` VALUES ('2806', '新疆', '克孜勒苏柯尔克孜自治州', '阿合奇县', '28', '0908');
INSERT INTO `tp_location` VALUES ('2807', '新疆', '克孜勒苏柯尔克孜自治州', '乌恰县', '28', '0908');
INSERT INTO `tp_location` VALUES ('2808', '新疆', '喀什地区', '喀什市', '28', '0998');
INSERT INTO `tp_location` VALUES ('2809', '新疆', '喀什地区', '疏附县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2810', '新疆', '喀什地区', '疏勒县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2811', '新疆', '喀什地区', '英吉沙县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2812', '新疆', '喀什地区', '泽普县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2813', '新疆', '喀什地区', '莎车县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2814', '新疆', '喀什地区', '叶城县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2815', '新疆', '喀什地区', '麦盖提县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2816', '新疆', '喀什地区', '岳普湖县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2817', '新疆', '喀什地区', '伽师县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2818', '新疆', '喀什地区', '巴楚县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2819', '新疆', '喀什地区', '塔什库尔干塔吉克自治县', '28', '0998');
INSERT INTO `tp_location` VALUES ('2820', '新疆', '和田地区', '和田市', '28', '0903');
INSERT INTO `tp_location` VALUES ('2821', '新疆', '和田地区', '和田县', '28', '0903');
INSERT INTO `tp_location` VALUES ('2822', '新疆', '和田地区', '墨玉县', '28', '0903');
INSERT INTO `tp_location` VALUES ('2823', '新疆', '和田地区', '皮山县', '28', '0903');
INSERT INTO `tp_location` VALUES ('2824', '新疆', '和田地区', '洛浦县', '28', '0903');
INSERT INTO `tp_location` VALUES ('2825', '新疆', '和田地区', '策勒县', '28', '0903');
INSERT INTO `tp_location` VALUES ('2826', '新疆', '和田地区', '于田县', '28', '0903');
INSERT INTO `tp_location` VALUES ('2827', '新疆', '和田地区', '民丰县', '28', '0903');
INSERT INTO `tp_location` VALUES ('2828', '新疆', '伊犁哈萨克自治州', '奎屯市', '28', '0999');
INSERT INTO `tp_location` VALUES ('2829', '新疆', '伊犁哈萨克自治州', '伊宁市', '28', '0999');
INSERT INTO `tp_location` VALUES ('2830', '新疆', '伊犁哈萨克自治州', '伊宁县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2831', '新疆', '伊犁哈萨克自治州', '察布查尔锡伯自治县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2832', '新疆', '伊犁哈萨克自治州', '霍城县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2833', '新疆', '伊犁哈萨克自治州', '巩留县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2834', '新疆', '伊犁哈萨克自治州', '新源县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2835', '新疆', '伊犁哈萨克自治州', '昭苏县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2836', '新疆', '伊犁哈萨克自治州', '特克斯县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2837', '新疆', '伊犁哈萨克自治州', '尼勒克县', '28', '0999');
INSERT INTO `tp_location` VALUES ('2838', '新疆', '塔城地区', '塔城市', '28', '0901');
INSERT INTO `tp_location` VALUES ('2839', '新疆', '塔城地区', '乌苏市', '28', '0901');
INSERT INTO `tp_location` VALUES ('2840', '新疆', '塔城地区', '额敏县', '28', '0901');
INSERT INTO `tp_location` VALUES ('2841', '新疆', '塔城地区', '沙湾县', '28', '0901');
INSERT INTO `tp_location` VALUES ('2842', '新疆', '塔城地区', '托里县', '28', '0901');
INSERT INTO `tp_location` VALUES ('2843', '新疆', '塔城地区', '裕民县', '28', '0901');
INSERT INTO `tp_location` VALUES ('2844', '新疆', '塔城地区', '和布克赛尔蒙古自治县', '28', '0901');
INSERT INTO `tp_location` VALUES ('2845', '新疆', '阿勒泰地区', '阿勒泰市', '28', '0906');
INSERT INTO `tp_location` VALUES ('2846', '新疆', '阿勒泰地区', '布尔津县', '28', '0906');
INSERT INTO `tp_location` VALUES ('2847', '新疆', '阿勒泰地区', '富蕴县', '28', '0906');
INSERT INTO `tp_location` VALUES ('2848', '新疆', '阿勒泰地区', '福海县', '28', '0906');
INSERT INTO `tp_location` VALUES ('2849', '新疆', '阿勒泰地区', '哈巴河县', '28', '0906');
INSERT INTO `tp_location` VALUES ('2850', '新疆', '阿勒泰地区', '青河县', '28', '0906');
INSERT INTO `tp_location` VALUES ('2851', '新疆', '阿勒泰地区', '吉木乃县', '28', '0906');
INSERT INTO `tp_location` VALUES ('2852', '新疆', '石河子市', '石河子市', '28', '0993');
INSERT INTO `tp_location` VALUES ('2853', '新疆', '阿拉尔市', '阿拉尔市', '28', '0997');
INSERT INTO `tp_location` VALUES ('2854', '新疆', '图木舒克市', '图木舒克市', '28', '0998');
INSERT INTO `tp_location` VALUES ('2855', '新疆', '五家渠市', '五家渠市', '28', '0994');

-- ----------------------------
-- Table structure for `tp_qyagent`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyagent`;
CREATE TABLE `tp_qyagent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyagent
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyannual_meet_list`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyannual_meet_list`;
CREATE TABLE `tp_qyannual_meet_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '节目名称',
  `user_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT '节目类型',
  `actor` varchar(255) NOT NULL COMMENT '表演人员',
  `least_reward` double(10,2) NOT NULL COMMENT '打赏下限',
  `orders` tinyint(3) NOT NULL COMMENT '出场序号',
  `department` varchar(255) NOT NULL COMMENT '表演部门',
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyannual_meet_list
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyannual_meet_order`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyannual_meet_order`;
CREATE TABLE `tp_qyannual_meet_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `order_sn` varchar(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `wecha_id` varchar(255) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyannual_meet_order
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyapplist`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyapplist`;
CREATE TABLE `tp_qyapplist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `module` varchar(255) DEFAULT NULL,
  `vip` int(11) DEFAULT NULL,
  `install` tinyint(1) DEFAULT '0',
  `date` int(11) DEFAULT NULL,
  `suit_id` int(11) DEFAULT NULL,
  `suit_appid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyapplist
-- ----------------------------
INSERT INTO `tp_qyapplist` VALUES ('1', '微信考勤', '微信考勤，时下最流行的考勤形式，高效掌控员工出勤状况。', './Static/thumb/thumb_Attendance.png', '50', '1', 'Attendance', '0', '1', '1423221021', '3', '2');
INSERT INTO `tp_qyapplist` VALUES ('2', '站内信', '企业邮箱管理应用，帮您随时随地掌握邮箱动态，收发邮件畅通无阻，让您享受更轻快的移动办公体验', './Static/thumb/thumb_Email.png', '56', '1', 'Email', '3', '1', '1423220604', '3', '2');
INSERT INTO `tp_qyapplist` VALUES ('3', '投票', '快速发起投票，数据自动统计，实时结果显示，为您节省宝贵的时间。', './Static/thumb/thumb_Vote.png', '449', '1', 'Vote', '1', '1', '1423131919', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('4', '报销', '让传统繁琐，低效，粗略的报销管理工作，变得便捷，高效，精准！', './Static/thumb/thumb_Applyflow.png', '11', '1', 'Applyflow', '1', '1', '1423649690', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('5', '流程审批', '审批流程完全自定义、审批人员自由配置，满足您个性化的流程审批需求。', './Static/thumb/thumb_Workflow.png', '14', '1', 'Workflow', '1', '1', '1423649606', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('6', '任务协作', '任务管理应用，轻松安排您与团队每一天的工作分派，实时掌握工作进度，有效提高您和团队的工作效率。', './Static/thumb/thumb_Task.png', '8', '1', 'Task', '2', '1', '1423221080', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('8', '通讯录', '员工通讯录快速共享，常用、保密联系人自由设置。', './Static/thumb/thumb_Address.png', '15', '1', 'Address', '1', '1', '1423018935', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('9', '问卷调查', '调研应用，实时收集来自团队的宝贵意见，数据分析直观明了，有效提高您的调研质量。', './Static/thumb/thumb_Research.png', '12', '1', 'Research', '0', '1', '1423220546', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('11', '请假', '及时的消息提醒,简单的处理方式,精简的审批流程,方便您及时高效处理请假申请。', './Static/thumb/thumb_Leave.png', '33', '1', 'Leave', '0', '1', '1423649845', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('12', '微名片', '创建个性名片,收纳海量好友,是一款时尚又新潮,简单又好用的电子名片管理应用。', './Static/thumb/thumb_Card.png', '31', '1', 'Card', '0', '1', '1423220875', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('13', '会议室预定', '高效的会议室预定管理应用,解决您烦恼的会议室预定管理问题。', './Static/thumb/thumb_Meet.png', '231', '1', 'Meet', '0', '1', '1423649830', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('14', '工作汇报', '简洁直观，方便易用。', './Static/thumb/thumb_Day.png', '35', '1', 'Day', '0', '1', '1423481037', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('17', '借书', '借书', './Static/thumb/thumb_Borrow_books.png', '5', '1', 'Borrow_books', '0', '1', '1425451843', null, null);
INSERT INTO `tp_qyapplist` VALUES ('18', '离职', '离职', './Static/thumb/thumb_Quit.png', '10', '1', 'Quit', '0', '1', '1425450827', null, null);
INSERT INTO `tp_qyapplist` VALUES ('19', '企业知识库', '企业知识库', './Static/thumb/thumb_Knowledge.png', '12', '1', 'Knowledge', '0', '1', '1425452462', null, null);
INSERT INTO `tp_qyapplist` VALUES ('20', '外勤管理', '外勤管理', './Static/thumb/thumb_Legwork.png', '9', '1', 'Legwork', '0', '1', '1425450824', null, null);
INSERT INTO `tp_qyapplist` VALUES ('21', '在线考试', '提供企业或者学校在线考试等服务', './Static/thumb/thumb_Test.png', '8', '1', 'Test', '0', '1', '1426069978', null, null);
INSERT INTO `tp_qyapplist` VALUES ('22', '小秘书', '企业号的在线客服', './Static/thumb/xiaomishu.png', '9', '1', 'Secretary', '0', '1', '1434437461', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('23', '微课堂', '可报名上课，供线上交流', './Static/thumb/xiaoketang.png', '7', '1', 'Micro_class', '1', '1', '1434437461', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('24', '企业沙龙', '主要为线下活动，组织相关人员一起活动', './Static/thumb/qiyeshalong.png', '8', '1', 'Company_salon', '0', '1', '1434437461', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('26', '企业小助手', '企业小助手', './Static/thumb/xiaozhushou.png', '4', '1', 'Helper', '0', '1', '1423221021', null, null);
INSERT INTO `tp_qyapplist` VALUES ('27', '企业官网 ', '企业官网 ', './Static/thumb/thumb_Home.png', '8', '1', 'Offical_website', '0', '1', '1423221021', '3', '1');
INSERT INTO `tp_qyapplist` VALUES ('29', '通知公告', '可以发布通知或公告', './Static/thumb/thumb_Xinwen.png', '11', '1', 'Xinwen', '0', '1', '1423221021', null, null);
INSERT INTO `tp_qyapplist` VALUES ('36', '组织活动', '组织活动', './Static/thumb/thumb_Organization.png', null, '1', 'Organization', null, '1', null, null, null);
INSERT INTO `tp_qyapplist` VALUES ('38', '课表', '学生、家长、老师可以查看每天的课程安排', './Static/thumb/thumb_Class_table.png', null, '1', 'Class_table', null, '1', null, null, null);
INSERT INTO `tp_qyapplist` VALUES ('39', '电子作业', '老师可以发布电子作业', './Static/thumb/thumb_work.png', null, '1', 'Work', null, '1', null, null, null);
INSERT INTO `tp_qyapplist` VALUES ('40', '学生统计', '查看学生在校情况', './Static/thumb/thumb_Student_tongji.png', null, '1', 'Student_tongji', null, '1', null, null, null);
INSERT INTO `tp_qyapplist` VALUES ('41', '考试成绩', '查看学生考试成绩', './Static/thumb/thumb_Test_view.png', null, '1', 'Test_view', null, '1', null, null, null);
INSERT INTO `tp_qyapplist` VALUES ('42', '在校考勤', '记录学生上课出勤情况', './Static/thumb/thumb_School_attendance.png', null, '1', 'School_attendance', null, '1', null, null, null);
INSERT INTO `tp_qyapplist` VALUES ('43', '家庭作业', '老师可以发布课后作业', './Static/thumb/thumb_Homework_t.png', null, '1', 'Homework_t', null, '1', null, null, null);

-- ----------------------------
-- Table structure for `tp_qyapplyflow_type`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyapplyflow_type`;
CREATE TABLE `tp_qyapplyflow_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '报销类型名称',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `disorder` int(11) DEFAULT NULL COMMENT '显示顺序',
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='报销类型表';

-- ----------------------------
-- Records of tp_qyapplyflow_type
-- ----------------------------
INSERT INTO `tp_qyapplyflow_type` VALUES ('13', '差旅费', '1', '34', null);
INSERT INTO `tp_qyapplyflow_type` VALUES ('40', '住宿费', '1', '23', null);
INSERT INTO `tp_qyapplyflow_type` VALUES ('41', '话费', '1', '10', null);
INSERT INTO `tp_qyapplyflow_type` VALUES ('42', '办公费', '1', '1', null);
INSERT INTO `tp_qyapplyflow_type` VALUES ('43', '邮寄费', '1', '2', null);

-- ----------------------------
-- Table structure for `tp_qyapplyflow_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyapplyflow_user`;
CREATE TABLE `tp_qyapplyflow_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `detail` text COMMENT '自定义字段',
  `wecha_id` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `check_now` varchar(100) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `check_order` varchar(200) DEFAULT NULL,
  `total` varchar(16) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyapplyflow_user
-- ----------------------------
INSERT INTO `tp_qyapplyflow_user` VALUES ('1', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:0:\"\";s:5:\"money\";N;s:4:\"note\";N;}}', 'wym030508', '0', null, '1463134423', 'N;', '0.00', '这么：');
INSERT INTO `tp_qyapplyflow_user` VALUES ('2', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"差旅费\";s:5:\"money\";s:3:\"500\";s:4:\"note\";s:6:\"住宿\";}}', 'wym030508', '0', 'qiuliyun001', '1463206456', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '500', '差旅费报销');
INSERT INTO `tp_qyapplyflow_user` VALUES ('3', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"差旅费\";s:5:\"money\";s:4:\"1000\";s:4:\"note\";s:6:\"杭州\";}}', 'xiao_158678', '1', '0', '1464159948', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '1000', '出差');
INSERT INTO `tp_qyapplyflow_user` VALUES ('4', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"差旅费\";s:5:\"money\";s:4:\"1000\";s:4:\"note\";s:24:\"出差杭州参加会议\";}}', 'yang15824209289', '1', '0', '1464165001', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '1000', '差旅费');
INSERT INTO `tp_qyapplyflow_user` VALUES ('5', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"差旅费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:18:\"会议培训费用\";}}', 'qiuliyun001', '1', '0', '1464165111', 'a:1:{i:0;s:15:\"yang15824209289\";}', '100', '会议培训费用报销');
INSERT INTO `tp_qyapplyflow_user` VALUES ('6', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"差旅费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:3:\"100\";}}', 'xiao_158678', '0', 'qiuliyun001', '1464657266', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '100', '报销');
INSERT INTO `tp_qyapplyflow_user` VALUES ('7', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"差旅费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:3:\"100\";}}', 'xiao_158678', '1', '0', '1464657282', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '100', '报销');
INSERT INTO `tp_qyapplyflow_user` VALUES ('8', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"住宿费\";s:5:\"money\";s:3:\"101\";s:4:\"note\";s:0:\"\";}}', 'sfjie19871113', '1', '0', '1464681574', 'a:1:{i:0;s:7:\"c2217wz\";}', '101', '测试');
INSERT INTO `tp_qyapplyflow_user` VALUES ('9', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:6:\"话费\";s:5:\"money\";s:2:\"11\";s:4:\"note\";s:2:\"11\";}}', '15990093987', '1', '0', '1464743795', 'a:1:{i:0;s:11:\"15990093987\";}', '11', '111');
INSERT INTO `tp_qyapplyflow_user` VALUES ('10', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:6:\"话费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:0:\"\";}}', 'c2217wz', '2', 'c2217wz', '1464933279', 'a:1:{i:0;s:7:\"c2217wz\";}', '100', '报销测试');
INSERT INTO `tp_qyapplyflow_user` VALUES ('11', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"办公费\";s:5:\"money\";s:3:\"200\";s:4:\"note\";s:0:\"\";}}', 'c2217wz', '0', 'c2217wz', '1464933469', 'a:1:{i:0;s:7:\"c2217wz\";}', '200', '报销测试');
INSERT INTO `tp_qyapplyflow_user` VALUES ('12', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"办公费\";s:5:\"money\";s:3:\"200\";s:4:\"note\";s:0:\"\";}}', 'c2217wz', '0', 'c2217wz', '1464933471', 'a:1:{i:0;s:7:\"c2217wz\";}', '200', '报销测试');
INSERT INTO `tp_qyapplyflow_user` VALUES ('13', '236', 'a:2:{i:0;a:3:{s:4:\"type\";s:9:\"差旅费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:1:\"@\";}i:1;a:3:{s:4:\"type\";s:9:\"住宿费\";s:5:\"money\";s:3:\"200\";s:4:\"note\";s:2:\"¥\";}}', 'sfjie19871113', '1', '0', '1465707440', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '300', '报销');
INSERT INTO `tp_qyapplyflow_user` VALUES ('14', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"住宿费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:0:\"\";}}', 'sfjie19871113', '1', '0', '1465710493', 'a:1:{i:0;s:7:\"c2217wz\";}', '100', '测试');
INSERT INTO `tp_qyapplyflow_user` VALUES ('15', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"住宿费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:0:\"\";}}', 'c2217wz', '1', '0', '1465711899', 'a:1:{i:0;s:7:\"c2217wz\";}', '100', '6.12');
INSERT INTO `tp_qyapplyflow_user` VALUES ('16', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"住宿费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:6:\"备注\";}}', 'fxl_0907show', '1', '0', '1465713919', 'a:1:{i:0;s:7:\"c2217wz\";}', '100', '测试');
INSERT INTO `tp_qyapplyflow_user` VALUES ('17', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"住宿费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:0:\"\";}}', 'c2217wz', '1', '0', '1465718936', 'a:1:{i:0;s:7:\"c2217wz\";}', '100', '测试');
INSERT INTO `tp_qyapplyflow_user` VALUES ('18', '236', 'a:1:{i:0;a:3:{s:4:\"type\";s:9:\"住宿费\";s:5:\"money\";s:3:\"100\";s:4:\"note\";s:0:\"\";}}', 'sfjie19871113', '1', '0', '1465720065', 'a:1:{i:0;s:7:\"c2217wz\";}', '100', '16.25');

-- ----------------------------
-- Table structure for `tp_qyapplyflow_witer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyapplyflow_witer`;
CREATE TABLE `tp_qyapplyflow_witer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `form_wecha_id` varchar(100) DEFAULT NULL COMMENT '需要审核人的id',
  `module` varchar(32) DEFAULT NULL,
  `time` int(11) DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyapplyflow_witer
-- ----------------------------
INSERT INTO `tp_qyapplyflow_witer` VALUES ('1', '236', '2', 'wym030508', '0', 'qiuliyun001', 'Applyflow', '1463206456');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('2', '236', '3', 'xiao_158678', '1', 'qiuliyun001', 'Applyflow', '1464159998');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('3', '236', '4', 'yang15824209289', '1', 'qiuliyun001', 'Applyflow', '1464165031');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('4', '236', '5', 'qiuliyun001', '1', 'yang15824209289', 'Applyflow', '1464185187');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('5', '236', '6', 'xiao_158678', '0', 'qiuliyun001', 'Applyflow', '1464657266');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('6', '236', '7', 'xiao_158678', '1', 'qiuliyun001', 'Applyflow', '1464657329');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('7', '236', '8', 'sfjie19871113', '1', 'c2217wz', 'Applyflow', '1464681659');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('8', '236', '9', '15990093987', '1', '15990093987', 'Applyflow', '1464743832');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('9', '236', '10', 'c2217wz', '2', 'c2217wz', 'Applyflow', '1464933279');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('10', '236', '11', 'c2217wz', '0', 'c2217wz', 'Applyflow', '1464933469');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('11', '236', '12', 'c2217wz', '0', 'c2217wz', 'Applyflow', '1464933471');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('12', '236', '13', 'sfjie19871113', '1', 'qiuliyun001', 'Applyflow', '1465707459');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('13', '236', '14', 'sfjie19871113', '1', 'c2217wz', 'Applyflow', '1465710526');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('14', '236', '15', 'c2217wz', '1', 'c2217wz', 'Applyflow', '1465711931');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('15', '236', '16', 'fxl_0907show', '1', 'c2217wz', 'Applyflow', '1465714020');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('16', '236', '17', 'c2217wz', '1', 'c2217wz', 'Applyflow', '1465718977');
INSERT INTO `tp_qyapplyflow_witer` VALUES ('17', '236', '18', 'sfjie19871113', '1', 'c2217wz', 'Applyflow', '1465722848');

-- ----------------------------
-- Table structure for `tp_qyattendance`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyattendance`;
CREATE TABLE `tp_qyattendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `depart` varchar(100) DEFAULT NULL,
  `week` varchar(100) DEFAULT NULL,
  `out_day` varchar(300) DEFAULT NULL,
  `work_type` tinyint(1) DEFAULT NULL,
  `w_start` varchar(64) DEFAULT NULL,
  `w_stop_type` tinyint(1) DEFAULT NULL,
  `w_stop` varchar(64) DEFAULT NULL,
  `rest_o_minute` varchar(16) DEFAULT NULL,
  `rest_o_houer` varchar(16) DEFAULT NULL,
  `retime` varchar(64) DEFAULT NULL,
  `work_t_houer` varchar(16) DEFAULT NULL,
  `work_t_minute` varchar(16) DEFAULT NULL,
  `rest_t_houer` varchar(16) DEFAULT NULL,
  `rest_t_minute` varchar(16) DEFAULT NULL,
  `long_houer` varchar(16) DEFAULT NULL,
  `long_minute` varchar(16) DEFAULT NULL,
  `retime_t` varchar(16) DEFAULT NULL,
  `date` varchar(32) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyattendance
-- ----------------------------
INSERT INTO `tp_qyattendance` VALUES ('1', '工作时间', '|1|', '1|2|3|4|5|6|7', null, '1', '08:30', '0', '05:30', null, null, '0', '0', '5', null, null, null, null, '0', '0', '236');
INSERT INTO `tp_qyattendance` VALUES ('2', '工作日', '1', '1|2|3|4|5', null, '1', '08:30', '0', '17:30', null, null, '0', '0', '5', null, null, null, null, '0', '0', '246');

-- ----------------------------
-- Table structure for `tp_qyattendance_conf`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyattendance_conf`;
CREATE TABLE `tp_qyattendance_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `startdate` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `mor_o_on` tinyint(4) DEFAULT NULL COMMENT '签到提醒',
  `mor_o_time` int(11) DEFAULT NULL COMMENT '提醒时间',
  `mor_o_type` tinyint(1) DEFAULT NULL COMMENT '早或者晚',
  `aft_o_on` tinyint(4) DEFAULT NULL,
  `aft_o_time` int(11) DEFAULT NULL,
  `aft_o_type` tinyint(4) DEFAULT NULL,
  `aft_t_on` tinyint(1) DEFAULT NULL,
  `aft_t_time` int(11) DEFAULT NULL,
  `mor_o_content` varchar(255) DEFAULT NULL,
  `aft_o_content` varchar(255) DEFAULT NULL,
  `aft_t_content` varchar(255) DEFAULT NULL,
  `time1` varchar(8) DEFAULT NULL,
  `time2` varchar(8) DEFAULT NULL,
  `time3` varchar(8) DEFAULT NULL,
  `time4` varchar(8) DEFAULT NULL,
  `time5` varchar(8) DEFAULT NULL,
  `time6` varchar(8) DEFAULT NULL,
  `time7` varchar(8) DEFAULT NULL,
  `time8` varchar(8) DEFAULT NULL,
  `signtime1` varchar(255) DEFAULT NULL,
  `signtime2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyattendance_conf
-- ----------------------------
INSERT INTO `tp_qyattendance_conf` VALUES ('1', '236', '1462032000', '1464624000', '0', '30600', '0', '0', '0', '0', '0', null, '', '', '', '0', '30', '08', '30', '17', '30', '00', '00', null, null);

-- ----------------------------
-- Table structure for `tp_qyattendance_place`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyattendance_place`;
CREATE TABLE `tp_qyattendance_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `long` varchar(255) DEFAULT NULL,
  `province` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `area` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `depart` varchar(255) DEFAULT NULL,
  `departId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyattendance_place
-- ----------------------------
INSERT INTO `tp_qyattendance_place` VALUES ('2', '500', '浙江省', '宁波市', '海曙区', '121.525267', '29.894282', '236', '宁波市海曙区布政巷16号', null, null);

-- ----------------------------
-- Table structure for `tp_qyattendance_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyattendance_record`;
CREATE TABLE `tp_qyattendance_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(64) DEFAULT NULL,
  `outtime` varchar(16) DEFAULT NULL,
  `creat_re` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `out_re` varchar(100) DEFAULT NULL,
  `creatime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyattendance_record
-- ----------------------------
INSERT INTO `tp_qyattendance_record` VALUES ('1', 'qiuliyun001', null, '富邦大酒店   人才公租房政策解读培训会议', '1', '20160523', '236', null, '1463982980');
INSERT INTO `tp_qyattendance_record` VALUES ('2', 'qiuliyun001', null, '富邦大酒店   人才公租房政策解读培训会议', '1', '20160523', '236', null, '1463982981');
INSERT INTO `tp_qyattendance_record` VALUES ('3', 'qiuliyun001', null, '富邦大酒店   人才公租房政策解读培训会议', '1', '20160523', '236', null, '1463982982');
INSERT INTO `tp_qyattendance_record` VALUES ('5', 'yang15824209289', '1464164101', '测试', '2', '20160525', '236', '', '1464164084');
INSERT INTO `tp_qyattendance_record` VALUES ('6', 'qiuliyun001', null, '', '1', '20160526', '236', null, '1464221681');
INSERT INTO `tp_qyattendance_record` VALUES ('7', 'sfjie1987', '1464328868', '', '2', '20160527', '236', '', '1464328830');
INSERT INTO `tp_qyattendance_record` VALUES ('8', 'wym030508', null, '', '1', '20160527', '236', null, '1464328938');
INSERT INTO `tp_qyattendance_record` VALUES ('9', 'yang15824209289', null, '', '1', '20160527', '236', null, '1464329863');
INSERT INTO `tp_qyattendance_record` VALUES ('10', 'moyuhui13', '1464329913', '', '2', '20160527', '236', '', '1464329890');
INSERT INTO `tp_qyattendance_record` VALUES ('11', 'moyuhui13', '1464329913', '', '2', '20160527', '236', '', '1464329891');
INSERT INTO `tp_qyattendance_record` VALUES ('12', 'abd49a3a31dbb5b9d0e20ce3ab21708e', null, '签到', '1', '20160527', '236', null, '1464329920');
INSERT INTO `tp_qyattendance_record` VALUES ('14', 'c2217wz', null, '测试', '1', '20160527', '236', null, '1464329927');
INSERT INTO `tp_qyattendance_record` VALUES ('15', 'yang15824209289', null, '', '1', '20160603', '236', null, '1464950244');
INSERT INTO `tp_qyattendance_record` VALUES ('16', 'sfjie19871113', '1465793948', '考勤', '2', '20160613', '236', '', '1465793204');
INSERT INTO `tp_qyattendance_record` VALUES ('17', 'c2217wz', '1465794282', '呵呵呵呵呵', '2', '20160613', '236', '呵呵呵', '1465794131');
INSERT INTO `tp_qyattendance_record` VALUES ('18', 'qing482x', null, '测试', '1', '20160613', '236', null, '1465794581');

-- ----------------------------
-- Table structure for `tp_qybook_classify`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qybook_classify`;
CREATE TABLE `tp_qybook_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `sorts` int(5) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qybook_classify
-- ----------------------------
INSERT INTO `tp_qybook_classify` VALUES ('20', '教科书', '教材类', '1', '', '1', '0', '236', '');
INSERT INTO `tp_qybook_classify` VALUES ('21', '管理类', '企业管理', '0', '', '1', '0', '236', '');
INSERT INTO `tp_qybook_classify` VALUES ('22', '销售类', '销售技巧', '0', '', '1', '0', '236', '');
INSERT INTO `tp_qybook_classify` VALUES ('23', 'A', 'A', '0', '', '1', '21', '236', '');
INSERT INTO `tp_qybook_classify` VALUES ('24', 'a', 'a', '0', '', '1', '23', '236', '');
INSERT INTO `tp_qybook_classify` VALUES ('25', '报刊类', '报纸杂志', '1', '', '1', '0', '246', '');
INSERT INTO `tp_qybook_classify` VALUES ('26', '学术报告类', '调查研究综献', '2', '', '1', '0', '246', '');
INSERT INTO `tp_qybook_classify` VALUES ('27', '管理类', '企业管理知识', '3', '', '1', '0', '246', '');
INSERT INTO `tp_qybook_classify` VALUES ('28', '财务类', '会计报表、财务数据分析等', '3', '', '1', '0', '246', '');
INSERT INTO `tp_qybook_classify` VALUES ('29', '本地报刊', '宁波地区', '1', '', '1', '25', '246', '');

-- ----------------------------
-- Table structure for `tp_qybook_message`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qybook_message`;
CREATE TABLE `tp_qybook_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `subject` varchar(100) NOT NULL COMMENT '主题',
  `content` varchar(500) NOT NULL COMMENT '留言内容',
  `email` varchar(30) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `add_time` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qybook_message
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qybook_room`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qybook_room`;
CREATE TABLE `tp_qybook_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(5) NOT NULL COMMENT '分类ID',
  `book_name` varchar(100) NOT NULL COMMENT '书名',
  `user_id` int(5) NOT NULL,
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `add_time` int(20) NOT NULL,
  `book_No` varchar(50) NOT NULL COMMENT '书本编号',
  `book_press` varchar(100) NOT NULL COMMENT '出版社',
  `book_date` varchar(50) NOT NULL COMMENT '出版日期',
  `writer` varchar(50) NOT NULL COMMENT '作者',
  `number` int(20) NOT NULL COMMENT '数量',
  `img` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qybook_room
-- ----------------------------
INSERT INTO `tp_qybook_room` VALUES ('21', '20', '十万个为什么', '236', '十万个为什么', '1464161675', '00000000001', '中华人民出版社', '2016-01-25', '小米', '10', 'http://wq.weijiabao.com.cn//TempFile/admin/image/20160525153404920.png');
INSERT INTO `tp_qybook_room` VALUES ('22', '29', '《宁波日报》', '246', '《宁波日报》是中共宁波市委机关报，坚持正确舆论导向，体现时代特征，注重指导性、服务性、可读性，力求贴近群众和实际，立足宁波并反映国内外新近发生的重大新闻事实，为浙江省优秀报纸。', '1472697394', 'A1000000001', '宁波日报报业集团', '2016-09-01', '宁波日报', '100', '');

-- ----------------------------
-- Table structure for `tp_qybook_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qybook_userinfo`;
CREATE TABLE `tp_qybook_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `add_time` int(30) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qybook_userinfo
-- ----------------------------
INSERT INTO `tp_qybook_userinfo` VALUES ('12', 'shilaoshi', 'ThZhVf1463104885', '236', '13566666666', '1712012281@qq.com', '宁波海曙', '1', '1464660766', '', 'sfjie19871113');
INSERT INTO `tp_qybook_userinfo` VALUES ('13', '杨姐', 'ThZhVf1463104885', '236', '15824209289', '1239998075@qq.com', '宁波市丽北路755路9楼', '1', '1464950493', '', 'yang15824209289');

-- ----------------------------
-- Table structure for `tp_qybook_users`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qybook_users`;
CREATE TABLE `tp_qybook_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_id` int(5) NOT NULL,
  `book_id` int(5) DEFAULT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `return_time` varchar(30) DEFAULT NULL,
  `is_return` tinyint(1) DEFAULT '0' COMMENT '是否归还',
  `status` tinyint(1) DEFAULT '0',
  `add_time` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qybook_users
-- ----------------------------
INSERT INTO `tp_qybook_users` VALUES ('60', 'sfjie19871113', 'ThZhVf1463104885', 'shilaoshi', '236', '21', '十万个为什么', '2016-05-31', '2016-07-15', '0', '1', '1464660850');
INSERT INTO `tp_qybook_users` VALUES ('61', 'yang15824209289', 'ThZhVf1463104885', '杨姐', '236', '21', '十万个为什么', '2016-6-3', '2016-06-03', '0', '0', '1464950629');

-- ----------------------------
-- Table structure for `tp_qycarapply_car`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qycarapply_car`;
CREATE TABLE `tp_qycarapply_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departId` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `car_id` varchar(255) DEFAULT NULL,
  `examine` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qycarapply_car
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qycarapply_config`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qycarapply_config`;
CREATE TABLE `tp_qycarapply_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advance` varchar(100) NOT NULL DEFAULT '' COMMENT '可提前预定天数',
  `start_time` varchar(60) DEFAULT '' COMMENT '会议室预定开始时间',
  `last` int(2) NOT NULL DEFAULT '0' COMMENT '会议室预定持续时间',
  `wave` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启摇一摇：0不开启1开启',
  `ruleout` text COMMENT '不可预定配置',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会议室设置表';

-- ----------------------------
-- Records of tp_qycarapply_config
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qycarapply_records`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qycarapply_records`;
CREATE TABLE `tp_qycarapply_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` varchar(16) NOT NULL DEFAULT '',
  `c_id` varchar(255) NOT NULL DEFAULT '0',
  `timeid` varchar(225) NOT NULL DEFAULT '0',
  `wecha_id` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qycarapply_records
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qycard_conf`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qycard_conf`;
CREATE TABLE `tp_qycard_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NOT NULL,
  `geren` text,
  `shouji` text,
  `gongshi` text,
  `newqita` text,
  `muban` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qycard_conf
-- ----------------------------
INSERT INTO `tp_qycard_conf` VALUES ('25', '236', 'a:1:{s:7:\"default\";a:2:{s:9:\"chinaname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"中文姓名\";}s:11:\"englishname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"英文名\";}}}', 'a:2:{s:7:\"default\";a:4:{s:6:\"mobile\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"手机号码\";}s:9:\"telephone\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"工作电话\";}s:4:\"mail\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:8:\"QQ邮箱\";}s:6:\"weixin\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"微信号\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"通讯地址\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司地址\";}}}', 'a:2:{s:7:\"default\";a:2:{s:11:\"companyname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司名称\";}s:14:\"companyaddress\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司地址\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司简介\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业文化\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业法人\";}}}', 'a:1:{s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"经营范围\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"合作伙伴\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}}}', null);
INSERT INTO `tp_qycard_conf` VALUES ('26', '236', 'a:1:{s:7:\"default\";a:2:{s:9:\"chinaname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"中文姓名\";}s:11:\"englishname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"英文名\";}}}', 'a:2:{s:7:\"default\";a:4:{s:6:\"mobile\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"手机号码\";}s:9:\"telephone\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"工作电话\";}s:4:\"mail\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:8:\"QQ邮箱\";}s:6:\"weixin\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"微信号\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"通讯地址\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司地址\";}}}', 'a:2:{s:7:\"default\";a:2:{s:11:\"companyname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司名称\";}s:14:\"companyaddress\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司地址\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司简介\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业文化\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业法人\";}}}', 'a:1:{s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"经营范围\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"合作伙伴\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}}}', null);
INSERT INTO `tp_qycard_conf` VALUES ('27', '236', 'a:1:{s:7:\"default\";a:2:{s:9:\"chinaname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"中文姓名\";}s:11:\"englishname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"英文名\";}}}', 'a:2:{s:7:\"default\";a:4:{s:6:\"mobile\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"手机号码\";}s:9:\"telephone\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"工作电话\";}s:4:\"mail\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:8:\"QQ邮箱\";}s:6:\"weixin\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"微信号\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"通讯地址\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司地址\";}}}', 'a:2:{s:7:\"default\";a:2:{s:11:\"companyname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司名称\";}s:14:\"companyaddress\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司地址\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司简介\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业文化\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业法人\";}}}', 'a:1:{s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"经营范围\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"合作伙伴\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}}}', null);
INSERT INTO `tp_qycard_conf` VALUES ('28', '236', 'a:1:{s:7:\"default\";a:2:{s:9:\"chinaname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"中文姓名\";}s:11:\"englishname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"英文名\";}}}', 'a:2:{s:7:\"default\";a:4:{s:6:\"mobile\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"手机号码\";}s:9:\"telephone\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"工作电话\";}s:4:\"mail\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:8:\"QQ邮箱\";}s:6:\"weixin\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"微信号\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"通讯地址\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司地址\";}}}', 'a:2:{s:7:\"default\";a:2:{s:11:\"companyname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司名称\";}s:14:\"companyaddress\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司地址\";}}s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"公司简介\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业文化\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"企业法人\";}}}', 'a:1:{s:3:\"add\";a:3:{i:0;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"经营范围\";}i:1;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:12:\"合作伙伴\";}i:2;a:2:{s:6:\"status\";i:1;s:4:\"name\";s:6:\"备注\";}}}', null);
INSERT INTO `tp_qycard_conf` VALUES ('29', '246', 'a:1:{s:7:\"default\";a:2:{s:9:\"chinaname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"中文姓名\";}s:11:\"englishname\";a:1:{s:4:\"name\";s:9:\"英文名\";}}}', 'a:1:{s:7:\"default\";a:4:{s:6:\"mobile\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"手机号码\";}s:9:\"telephone\";a:1:{s:4:\"name\";s:12:\"工作电话\";}s:4:\"mail\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:8:\"QQ邮箱\";}s:6:\"weixin\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:9:\"微信号\";}}}', 'a:1:{s:7:\"default\";a:2:{s:11:\"companyname\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司名称\";}s:14:\"companyaddress\";a:2:{s:6:\"status\";s:2:\"on\";s:4:\"name\";s:12:\"公司地址\";}}}', 'a:0:{}', null);

-- ----------------------------
-- Table structure for `tp_qycard_file`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qycard_file`;
CREATE TABLE `tp_qycard_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `others` varchar(100) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `otherid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qycard_file
-- ----------------------------
INSERT INTO `tp_qycard_file` VALUES ('1', '236', 'c2217wz', 'qing482x', '1463108301', '11');
INSERT INTO `tp_qycard_file` VALUES ('2', '236', 'xiao_158678', 'c2217wz', '1464659849', '122');
INSERT INTO `tp_qycard_file` VALUES ('3', '236', 'xiao_158678', 'wym030508', '1464659883', '190');

-- ----------------------------
-- Table structure for `tp_qychat_group`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qychat_group`;
CREATE TABLE `tp_qychat_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `member` text,
  `time` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qychat_group
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qychat_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qychat_record`;
CREATE TABLE `tp_qychat_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(255) DEFAULT NULL,
  `content` text,
  `sender` varchar(255) DEFAULT NULL,
  `send_time` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qychat_record
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyclassify`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyclassify`;
CREATE TABLE `tp_qyclassify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` int(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `yanse` varchar(200) NOT NULL,
  `pid` varchar(200) NOT NULL,
  `tpl_list` varchar(20) NOT NULL,
  `tpl_content` varchar(20) NOT NULL,
  `tpltype` varchar(16) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyclassify
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyclass_my`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyclass_my`;
CREATE TABLE `tp_qyclass_my` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(64) DEFAULT NULL,
  `applytime` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `tel` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyclass_my
-- ----------------------------
INSERT INTO `tp_qyclass_my` VALUES ('1', '1', '236', 'yang15824209289', '1464162937', '0', '15824209289', '1277462310@qq.com ');
INSERT INTO `tp_qyclass_my` VALUES ('2', '1', '236', 'yang15824209289', '1464162950', '0', '15824209289', '1277462310@qq.com ');
INSERT INTO `tp_qyclass_my` VALUES ('3', '1', '236', 'sfjie19871113', '1464662546', '1', '13555555555', '1712012281@qq.com');
INSERT INTO `tp_qyclass_my` VALUES ('4', '1', '236', 'c2217wz', '1464937309', '0', '15757856554', '2217492801');
INSERT INTO `tp_qyclass_my` VALUES ('5', '2', '236', 'wym030508', '1465192739', '0', '13738827888', '178160106@qq.com');

-- ----------------------------
-- Table structure for `tp_qyclass_subject`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyclass_subject`;
CREATE TABLE `tp_qyclass_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) DEFAULT NULL,
  `speaker` varchar(255) DEFAULT NULL,
  `start_time` varchar(16) DEFAULT NULL,
  `end_time` varchar(16) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `introduce` longtext,
  `user_id` int(11) DEFAULT NULL,
  `depart` varchar(255) DEFAULT NULL,
  `dead_time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyclass_subject
-- ----------------------------
INSERT INTO `tp_qyclass_subject` VALUES ('1', '儿童心理学', '王教授', '1467279900', '1483199700', '宁波市海曙区丽园北路755号9楼', '王教授', '236', '|8|', '1466870100');
INSERT INTO `tp_qyclass_subject` VALUES ('2', '测试', '测试', '1465196400', '1465300500', '测试', '测试', '236', '|8|', '1465194600');

-- ----------------------------
-- Table structure for `tp_qycompany`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qycompany`;
CREATE TABLE `tp_qycompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `headpic` varchar(300) DEFAULT NULL,
  `banner` varchar(300) DEFAULT NULL,
  `territory` varchar(100) DEFAULT NULL COMMENT '领域',
  `size` varchar(64) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `desc` varchar(400) DEFAULT NULL,
  `area` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `district` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qycompany
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qycontent`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qycontent`;
CREATE TABLE `tp_qycontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` text NOT NULL COMMENT '图文详细内容',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `sorts` int(11) DEFAULT NULL,
  `ftype` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='图文表';

-- ----------------------------
-- Records of tp_qycontent
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyday_check`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyday_check`;
CREATE TABLE `tp_qyday_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `checker` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyday_check
-- ----------------------------
INSERT INTO `tp_qyday_check` VALUES ('1', '236', 'c2217wz', 'c2217wz', '1463108974', '0', '1');
INSERT INTO `tp_qyday_check` VALUES ('2', '236', 'c2217wz', 'c2217wz', '1463110539', '1', '2');
INSERT INTO `tp_qyday_check` VALUES ('3', '236', 'wym030508', 'qing482x', '1463206562', '0', '3');
INSERT INTO `tp_qyday_check` VALUES ('4', '236', 'wym030508', 'c2217wz', '1464178457', '0', '4');
INSERT INTO `tp_qyday_check` VALUES ('5', '236', 'wym030508', 'qiuliyun001', '1464178457', '0', '4');
INSERT INTO `tp_qyday_check` VALUES ('6', '236', 'wym030508', 'yang15824209289', '1464178457', '0', '4');
INSERT INTO `tp_qyday_check` VALUES ('7', '236', 'wym030508', 'c2217wz', '1464178670', '1', '5');
INSERT INTO `tp_qyday_check` VALUES ('8', '236', 'wym030508', 'qiuliyun001', '1464178459', '0', '5');
INSERT INTO `tp_qyday_check` VALUES ('9', '236', 'wym030508', 'yang15824209289', '1464178459', '0', '5');
INSERT INTO `tp_qyday_check` VALUES ('10', '236', 'wym030508', 'di1314', '1464491445', '0', '6');
INSERT INTO `tp_qyday_check` VALUES ('11', '236', 'wym030508', 'guang123', '1464491445', '0', '6');
INSERT INTO `tp_qyday_check` VALUES ('12', '236', 'sfjie19871113', 'qiuliyun001', '1464660551', '1', '7');
INSERT INTO `tp_qyday_check` VALUES ('13', '236', 'qiuliyun001', 'xiao_158678', '1464773560', '1', '8');
INSERT INTO `tp_qyday_check` VALUES ('14', '236', 'xiao_158678', 'qiuliyun001', '1464773726', '1', '9');
INSERT INTO `tp_qyday_check` VALUES ('15', '236', 'qing482x', 'qing482x', '1464830215', '1', '10');
INSERT INTO `tp_qyday_check` VALUES ('16', '236', 'sfjie19871113', 'c2217wz', '1464934689', '1', '11');
INSERT INTO `tp_qyday_check` VALUES ('17', '236', 'sfjie19871113', 'qiuliyun001', '1465709299', '1', '12');

-- ----------------------------
-- Table structure for `tp_qyday_date`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyday_date`;
CREATE TABLE `tp_qyday_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `wecha_id` varchar(50) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `status` varchar(255) DEFAULT '0',
  `theme` varchar(255) DEFAULT NULL,
  `check_order` varchar(255) DEFAULT NULL,
  `check_now` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyday_date
-- ----------------------------
INSERT INTO `tp_qyday_date` VALUES ('1', '236', '超级宝贝乖乖会不会好吧', 'c2217wz', '1', '0', '汇报', 'a:1:{i:0;s:7:\"c2217wz\";}', 'c2217wz', '1463108974');
INSERT INTO `tp_qyday_date` VALUES ('2', '236', '超级宝贝乖乖会不会好吧', 'c2217wz', '1', '1', '汇报', 'a:1:{i:0;s:7:\"c2217wz\";}', 'c2217wz', '1463108976');
INSERT INTO `tp_qyday_date` VALUES ('3', '236', '参加会议', 'wym030508', '1', '0', '开会', 'a:1:{i:0;s:8:\"qing482x\";}', 'qing482x', '1463206562');
INSERT INTO `tp_qyday_date` VALUES ('4', '236', '通讯录名单不能搜索', 'wym030508', '1', '0', '企业号很慢', 'a:3:{i:0;s:7:\"c2217wz\";i:1;s:11:\"qiuliyun001\";i:2;s:15:\"yang15824209289\";}', 'c2217wz', '1464178457');
INSERT INTO `tp_qyday_date` VALUES ('5', '236', '通讯录名单不能搜索', 'wym030508', '1', '0', '企业号很慢', 'a:3:{i:0;s:7:\"c2217wz\";i:1;s:11:\"qiuliyun001\";i:2;s:15:\"yang15824209289\";}', 'qiuliyun001', '1464178459');
INSERT INTO `tp_qyday_date` VALUES ('6', '236', '！在家', 'wym030508', '1', '0', '这样我', 'a:2:{i:0;s:6:\"di1314\";i:1;s:8:\"guang123\";}', 'di1314', '1464491445');
INSERT INTO `tp_qyday_date` VALUES ('7', '236', '计划总结', 'sfjie19871113', '1', '1', '周二', 'a:1:{i:0;s:11:\"qiuliyun001\";}', 'qiuliyun001', '1464660524');
INSERT INTO `tp_qyday_date` VALUES ('8', '236', '今日前往教育局参加关于招生政策专项培训会！', 'qiuliyun001', '1', '1', '周三工作汇报', 'a:1:{i:0;s:11:\"xiao_158678\";}', 'xiao_158678', '1464773531');
INSERT INTO `tp_qyday_date` VALUES ('9', '236', '周二前往教育局参加招生政策专项培训会议', 'xiao_158678', '1', '1', '周二工作汇报', 'a:1:{i:0;s:11:\"qiuliyun001\";}', 'qiuliyun001', '1464773701');
INSERT INTO `tp_qyday_date` VALUES ('10', '236', '测试', 'qing482x', '1', '1', '测试', 'a:1:{i:0;s:8:\"qing482x\";}', 'qing482x', '1464830175');
INSERT INTO `tp_qyday_date` VALUES ('11', '236', '小宝贝送给你呢vxxbbbd', 'sfjie19871113', '1', '1', '测试', 'a:1:{i:0;s:7:\"c2217wz\";}', 'c2217wz', '1464934660');
INSERT INTO `tp_qyday_date` VALUES ('12', '236', '今天开会', 'sfjie19871113', '1', '1', '6.12', 'a:1:{i:0;s:11:\"qiuliyun001\";}', 'qiuliyun001', '1465709283');

-- ----------------------------
-- Table structure for `tp_qyemail_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyemail_record`;
CREATE TABLE `tp_qyemail_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `touser` varchar(100) DEFAULT NULL,
  `to_id` varchar(32) DEFAULT NULL,
  `content` mediumtext,
  `send_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyemail_record
-- ----------------------------
INSERT INTO `tp_qyemail_record` VALUES ('1', '站内信', 'c2217wz', '236', '方小龙', 'abd49a3a31dbb5b9d0e20ce3ab21708e', '吃饭了', '1463108504');
INSERT INTO `tp_qyemail_record` VALUES ('2', '站内信', 'c2217wz', '236', '方小龙', 'abd49a3a31dbb5b9d0e20ce3ab21708e', '吃饭了', '1463108505');
INSERT INTO `tp_qyemail_record` VALUES ('3', '企业', 'c2217wz', '236', '方小龙', 'abd49a3a31dbb5b9d0e20ce3ab21708e', '只是一封信', '1463108673');
INSERT INTO `tp_qyemail_record` VALUES ('4', '测试', 'wym030508', '236', '陈毛晴', 'qing482x', '测试', '1463667024');
INSERT INTO `tp_qyemail_record` VALUES ('5', '问题', 'wym030508', '236', 'cwz', 'c2217wz', '请假设置里面内容无', '1463667263');
INSERT INTO `tp_qyemail_record` VALUES ('6', '关于明日培训会议', 'yang15824209289', '236', '邱丽云', 'qiuliyun001', '明日上午八点十五分集合，所需提供资料包括……', '1464164310');
INSERT INTO `tp_qyemail_record` VALUES ('7', '关于明日培训会议的回复', 'qiuliyun001', '236', '杨姐', 'yang15824209289', '明日培训会议相关物料已准备完毕，相关人员烦请予以通知，谢谢！', '1464164530');
INSERT INTO `tp_qyemail_record` VALUES ('8', '测试', 'qing482x', '236', '邱丽云', 'qiuliyun001', '想哭了✌', '1464337563');
INSERT INTO `tp_qyemail_record` VALUES ('9', '移动刘毅哪个名字', 'wym030508', '236', '李园园', 'moyuhui13', '', '1465189949');
INSERT INTO `tp_qyemail_record` VALUES ('10', '测试', 'yzd_123', '246', '俞则栋', 'yzd_123', '测试', '1472797500');

-- ----------------------------
-- Table structure for `tp_qyfield_check`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyfield_check`;
CREATE TABLE `tp_qyfield_check` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL,
  `checktime` int(11) DEFAULT NULL,
  `place` varchar(300) DEFAULT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `lng` varchar(128) DEFAULT NULL,
  `lat` varchar(128) DEFAULT NULL,
  `checktime1` int(11) DEFAULT NULL,
  `img1` varchar(200) DEFAULT NULL,
  `lat1` varchar(128) DEFAULT NULL,
  `lng1` varchar(128) DEFAULT NULL,
  `desc1` varchar(300) DEFAULT NULL,
  `wecha_id` varchar(45) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyfield_check
-- ----------------------------
INSERT INTO `tp_qyfield_check` VALUES ('104', '58', '1464227866', null, '', '236', './Uploads/Knowledge/57465819a83e8.jpg', '121.525422', '29.893871', '1464330127', './Uploads/Knowledge/5747e78ebf21e.jpg', '29.89464', '121.525132', '', 'c2217wz', '2');
INSERT INTO `tp_qyfield_check` VALUES ('105', '58', '1464227899', null, '', '236', './Uploads/Knowledge/57465839f0b93.jpg', '121.525422', '29.893871', '1464330127', './Uploads/Knowledge/5747e78ebf21e.jpg', '29.89464', '121.525132', '', 'c2217wz', '2');
INSERT INTO `tp_qyfield_check` VALUES ('106', '58', '1464228268', null, '', '236', './Uploads/Knowledge/574659ab31fd1.png', '121.525346', '29.893919', '1464337276', './Uploads/Knowledge/5748037b7a77c.png', '29.894649', '121.525229', '', 'sfjie1987', '2');

-- ----------------------------
-- Table structure for `tp_qyfield_report`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyfield_report`;
CREATE TABLE `tp_qyfield_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) NOT NULL,
  `wxid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `outaim` varchar(200) NOT NULL,
  `outstyle` varchar(200) NOT NULL,
  `outplace` varchar(200) NOT NULL,
  `btime` int(11) NOT NULL,
  `etime` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `checktime` int(11) NOT NULL,
  `signouttime` int(11) NOT NULL,
  `fuzeren` varchar(255) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL,
  `follow` varchar(255) DEFAULT NULL,
  `lat` varchar(128) DEFAULT NULL,
  `lng` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyfield_report
-- ----------------------------
INSERT INTO `tp_qyfield_report` VALUES ('56', 'yang15824209289', '23', '236', '国税局报表', '请假', '镇海国税', '1464135300', '1464146400', '0', '0', '0', '杨姐;', '杨姐;', '23|', '23|', '29.940849', '121.68051');
INSERT INTO `tp_qyfield_report` VALUES ('57', 'qiuliyun001', '5', '236', '望春街道工会培训会议', '', '望春街道', '1464221700', '1464242400', '0', '0', '0', '邱丽云;', '邱丽云;', '5|', '5|', '29.896751', '121.528185');
INSERT INTO `tp_qyfield_report` VALUES ('58', 'c2217wz', '14', '236', '测试', '', '电子产业园区', '1464228000', '1464329400', '0', '0', '0', 'cwz;', '史芳杰;', '14|', '4|', '29.894309', '121.525268');
INSERT INTO `tp_qyfield_report` VALUES ('59', 'abd49a3a31dbb5b9d0e20ce3ab21708e', '10', '236', '还好吧', '约见客户', '公关部', '1464758400', '1465374000', '0', '0', '0', '方小龙;', '方小龙;', '10|', '10|', '', '');
INSERT INTO `tp_qyfield_report` VALUES ('60', 'sfjie19871113', '177', '236', '开会', '', '金网公司', '1464674400', '1464687000', '0', '0', '0', '邱丽云;', 'cwz;', '172|', '172|122|', '', '');
INSERT INTO `tp_qyfield_report` VALUES ('61', 'sfjie19871113', '177', '236', '开会', '', '宁波海曙区丽园北路755号9楼', '1464676200', '1464687000', '0', '0', '0', 'cwz;', '邱丽云;', '122|', '172|', '29.894309', '121.525268');
INSERT INTO `tp_qyfield_report` VALUES ('62', 'sfjie19871113', '177', '236', '开会', '', '宁波', '1464674400', '1464687000', '0', '0', '0', 'cwz;', '邱丽云;', '122|', '172|', '29.880177', '121.556686');
INSERT INTO `tp_qyfield_report` VALUES ('63', 'sfjie19871113', '177', '236', '测试', '约见客户', '测试', '1464681000', '1464698400', '0', '0', '0', 'cwz;', '方小龙;', '122|', '139|', '', '');
INSERT INTO `tp_qyfield_report` VALUES ('64', 'sfjie19871113', '177', '236', '教育局会议', '', '宁波鄞州教育局', '1464854400', '1464859800', '0', '0', '0', 'cwz;', '邱丽云;', '124|', '172|', '29.823484', '121.553433');
INSERT INTO `tp_qyfield_report` VALUES ('65', 'sfjie19871113', '177', '236', '开会', '', '宁波', '1465711200', '1465720500', '0', '0', '0', 'cwz;', '邱丽云;', '122|', '172|', '29.880177', '121.556686');
INSERT INTO `tp_qyfield_report` VALUES ('66', 'sfjie19871113', '177', '236', '测试', '约见客户', '海曙', '1465714800', '1465794300', '0', '0', '0', 'cwz;', 'cwz;', '122|', '122|', '29.865889', '121.557243');
INSERT INTO `tp_qyfield_report` VALUES ('67', 'sfjie19871113', '177', '236', '测试', '请假', '海曙', '1465714500', '1465795200', '0', '0', '0', 'cwz;', '方小龙;', '122|', '139|', '29.865889', '121.557243');
INSERT INTO `tp_qyfield_report` VALUES ('68', 'c2217wz', '122', '236', '测试', '约见客户', '海曙', '1465740000', '1465815600', '0', '0', '0', 'cwz;', 'cwz;方小龙;', '122|', '122|139|', '29.865889', '121.557243');
INSERT INTO `tp_qyfield_report` VALUES ('69', 'fxl_0907show', '139', '236', '测试', '约见客户', '回归', '1465892400', '1466242800', '0', '0', '0', 'cwz;', 'cwz;方小龙;', '122|', '122|139|', '', '');

-- ----------------------------
-- Table structure for `tp_qyfield_type`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyfield_type`;
CREATE TABLE `tp_qyfield_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inphoto` tinyint(1) NOT NULL,
  `outphoto` tinyint(1) NOT NULL,
  `style` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `range` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyfield_type
-- ----------------------------
INSERT INTO `tp_qyfield_type` VALUES ('5', '1', '1', '出差,请假,约见客户,开会', '236', '1000');

-- ----------------------------
-- Table structure for `tp_qyfile`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyfile`;
CREATE TABLE `tp_qyfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `media_id` varchar(255) DEFAULT NULL,
  `created_time` varchar(16) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyfile
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyflash`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyflash`;
CREATE TABLE `tp_qyflash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` tinyint(1) NOT NULL COMMENT '1幻灯片2轮播图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3g网站头部flash';

-- ----------------------------
-- Records of tp_qyflash
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyhome`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyhome`;
CREATE TABLE `tp_qyhome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `plugmenucolor` varchar(10) NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `homeurl` varchar(300) NOT NULL,
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  `dianhua` varchar(20) NOT NULL,
  `musicurl` varchar(300) NOT NULL,
  `radiogroup` mediumint(3) NOT NULL,
  `tpltypeid` varchar(20) NOT NULL DEFAULT '1',
  `tpltypename` varchar(20) NOT NULL,
  `tpllistid` varchar(20) NOT NULL,
  `tpllistname` varchar(20) NOT NULL,
  `tplcontentid` varchar(20) NOT NULL,
  `tplcontentname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyhome
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyhomework`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyhomework`;
CREATE TABLE `tp_qyhomework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `content` longtext,
  `user_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '是否发布，0未发布，1已发布',
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyhomework
-- ----------------------------
INSERT INTO `tp_qyhomework` VALUES ('1', 'qing482x', '数学', '.2812.', '作业', '236', '1', '1464537600', '1464569788');
INSERT INTO `tp_qyhomework` VALUES ('2', 'sfjie19871113', '英语', '.2827.', '作业', '236', '0', '1464537600', '1464571698');
INSERT INTO `tp_qyhomework` VALUES ('4', 'sfjie19871113', '英语', '.2827.', '图几楼流口水LOL土压力可以这样', '236', '1', '1464537600', '1464572809');
INSERT INTO `tp_qyhomework` VALUES ('5', 'sfjie19871113', '', '.2827.', 'LOL考虑考虑V5酷兔兔来了', '236', '0', '1464537600', '1464572886');
INSERT INTO `tp_qyhomework` VALUES ('6', 'sfjie1987', '美术', '.2885.', '将教材第一课进行预习准备。', '236', '0', '1464796800', '1464832457');

-- ----------------------------
-- Table structure for `tp_qyhomework_check`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyhomework_check`;
CREATE TABLE `tp_qyhomework_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL COMMENT '是否检查，0未检查，1已检查',
  `backinfo` text COMMENT '反馈',
  `wecha_id` varchar(255) DEFAULT NULL,
  `work_id` varchar(255) DEFAULT NULL COMMENT '作业id',
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyhomework_check
-- ----------------------------
INSERT INTO `tp_qyhomework_check` VALUES ('1', '1', '', 'c2217wz', '4', '1464573395');

-- ----------------------------
-- Table structure for `tp_qyhome_setting`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyhome_setting`;
CREATE TABLE `tp_qyhome_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '网站标题',
  `pic` varchar(30) NOT NULL COMMENT '网站图片',
  `tpl` varchar(30) NOT NULL COMMENT '网站模板',
  `telphone` varchar(30) NOT NULL COMMENT '联系方式',
  `rights` varchar(30) NOT NULL COMMENT '底部版权',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `info` text COMMENT '3G网站介绍',
  `defaulttpl` int(10) NOT NULL DEFAULT '1',
  `tpl_index` varchar(60) DEFAULT NULL,
  `tpl_list` varchar(60) DEFAULT NULL,
  `tpl_show` varchar(60) DEFAULT NULL,
  `focus` varchar(255) DEFAULT NULL,
  `musicurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3G网站设置';

-- ----------------------------
-- Records of tp_qyhome_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyhome_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyhome_tpl`;
CREATE TABLE `tp_qyhome_tpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '3G模板名称',
  `type` tinyint(1) NOT NULL COMMENT '1首页模板2列表页模板3内容模板',
  `thumb` varchar(300) NOT NULL COMMENT '3G模板图片地址',
  `action` varchar(200) DEFAULT NULL COMMENT '3G网站模板',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='3G模板';

-- ----------------------------
-- Records of tp_qyhome_tpl
-- ----------------------------
INSERT INTO `tp_qyhome_tpl` VALUES ('11', '模板11', '3', 'http://dexingky.wxopen.cn/Static/thumb/thumb_content001.png', 'content001', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('12', '模板12', '3', 'http://dexingky.wxopen.cn/Static/thumb/thumb_content002.png', 'content002', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('13', '模板13', '3', 'http://dexingky.wxopen.cn/Static/thumb/thumb_content003.png', 'content003', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('14', '模板14', '3', 'http://dexingky.wxopen.cn/Static/thumb/thumb_content004.png', 'content004', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('15', '模板15', '3', 'http://dexingky.wxopen.cn/Static/thumb/thumb_content007.png', 'content007', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('17', '模板6', '2', 'http://dexingky.wxopen.cn/Static/thumb/thumb_list001.png', 'list001', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('18', '模板7', '2', 'http://dexingky.wxopen.cn/Static/thumb/thumb_list002.png', 'list002', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('19', '模板8', '2', 'http://dexingky.wxopen.cn/Static/thumb/thumb_list003.png', 'list003', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('20', '模板9', '2', 'http://dexingky.wxopen.cn/Static/thumb/thumb_list004.png', 'list004', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('21', '模板10', '2', 'http://dexingky.wxopen.cn/Static/thumb/thumb_list005.png', 'list005', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('22', '模板16', '1', 'http://dexingky.wxopen.cn/Static/thumb/thumb_tpl6.png', 'tpl6', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('23', '模板17', '1', 'http://dexingky.wxopen.cn/Static/thumb/thumb_tpl7.png', 'tpl7', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('24', '模板18', '1', 'http://dexingky.wxopen.cn/Static/thumb/thumb_tpl8.png', 'tpl8', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('25', '模板19', '1', 'http://dexingky.wxopen.cn/Static/thumb/thumb_tpl9.png', 'tpl9', '0');
INSERT INTO `tp_qyhome_tpl` VALUES ('26', '模板20', '1', 'http://dexingky.wxopen.cn/Static/thumb/thumb_tpl10.png', 'tpl10', '0');

-- ----------------------------
-- Table structure for `tp_qyimg`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyimg`;
CREATE TABLE `tp_qyimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `media_id` varchar(255) DEFAULT NULL,
  `created_time` varchar(16) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyimg
-- ----------------------------
INSERT INTO `tp_qyimg` VALUES ('1', '236', '1v4tfCImWM9FgigxKmtD7VLaGmjXCnX4AFzgWk0Yb1fs389MF9Ylf-OFEppztO5pGg6U2Iz6Vo7wSpG-YtrdwAg', '1464158471', 'http://wq.weijiabao.com.cn/TempFile/image/20160525144109828.jpg');

-- ----------------------------
-- Table structure for `tp_qyimgnews`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyimgnews`;
CREATE TABLE `tp_qyimgnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `content` text,
  `type` tinyint(1) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `time` varchar(16) DEFAULT NULL,
  `times` tinyint(4) DEFAULT '0' COMMENT '发送次数',
  `thumb_media_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyimgnews
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyknow_collect`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyknow_collect`;
CREATE TABLE `tp_qyknow_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyknow_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyknow_feed`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyknow_feed`;
CREATE TABLE `tp_qyknow_feed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyknow_feed
-- ----------------------------
INSERT INTO `tp_qyknow_feed` VALUES ('16', '不错', '0', '1', '236', 'sfjie19871113', '1464661593');

-- ----------------------------
-- Table structure for `tp_qyknow_files`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyknow_files`;
CREATE TABLE `tp_qyknow_files` (
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ctime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `furl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `folder_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `info` longtext CHARACTER SET utf8,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `display` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_qyknow_files
-- ----------------------------
INSERT INTO `tp_qyknow_files` VALUES ('方案1', '236', '1464831869', '1', './Uploads/Knowledge/客户方案/方案1.txt', '1', '<p>\r\n	12\r\n</p>\r\n<p>\r\n	122\r\n</p>\r\n<p>\r\n	1223.1\r\n</p>\r\n<p>\r\n	12221321\r\n</p>', null, null, ',2858,2859,2860,2861,2862,2863,2864,2865,2866,2867,2868,2875,2876,2880,2883,2884,2885,2886,2887,2890,', '1');

-- ----------------------------
-- Table structure for `tp_qyknow_folder`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyknow_folder`;
CREATE TABLE `tp_qyknow_folder` (
  `user_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ctime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `display` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_qyknow_folder
-- ----------------------------
INSERT INTO `tp_qyknow_folder` VALUES ('236', '1464831777', '1', '客户方案', null, ',2863,2883,2890,2887,2884,2886,2885,2880,2876,2875,2868,2861,2867,2866,2865,2864,2862,2860,2859,2858,', '1');
INSERT INTO `tp_qyknow_folder` VALUES ('236', '1464831664', '2', '教学视频', null, ',2859,2860,2861,2868,2875,2876,2880,2883,2884,2885,2886,2887,2890,2858,', '2');

-- ----------------------------
-- Table structure for `tp_qyknow_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyknow_record`;
CREATE TABLE `tp_qyknow_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `feed` int(11) NOT NULL,
  `praise` int(11) NOT NULL,
  `collect` int(11) NOT NULL,
  `relay` int(11) NOT NULL,
  `download` int(11) NOT NULL DEFAULT '0',
  `files_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyknow_record
-- ----------------------------
INSERT INTO `tp_qyknow_record` VALUES ('27', '0', '0', '0', '0', '0', '1', '236');

-- ----------------------------
-- Table structure for `tp_qyleave_check`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyleave_check`;
CREATE TABLE `tp_qyleave_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` varchar(100) DEFAULT NULL COMMENT '提交请假的人',
  `user_two` varchar(100) DEFAULT NULL COMMENT '审核人',
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0为未审核1为审核2为驳回',
  `pid` int(11) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '1为审核通过2为拒绝',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyleave_check
-- ----------------------------
INSERT INTO `tp_qyleave_check` VALUES ('1', 'c2217wz', 'wym030508', '236', '1', '1', '1463705564', '0');
INSERT INTO `tp_qyleave_check` VALUES ('2', 'wym030508', 'sase002', '236', '0', '2', '1464178355', '0');
INSERT INTO `tp_qyleave_check` VALUES ('3', 'wym030508', 'sase002', '236', '0', '3', '1464178357', '0');
INSERT INTO `tp_qyleave_check` VALUES ('4', 'sfjie1987', 'abd49a3a31dbb5b9d0e20ce3ab21708e', '236', '0', '4', '1464231433', '0');
INSERT INTO `tp_qyleave_check` VALUES ('5', 'sfjie1987', 'abd49a3a31dbb5b9d0e20ce3ab21708e', '236', '0', '5', '1464231485', '0');
INSERT INTO `tp_qyleave_check` VALUES ('6', 'xiao_158678', 'qiuliyun001', '236', '2', '6', '1464657071', '0');
INSERT INTO `tp_qyleave_check` VALUES ('7', 'xiao_158678', 'qiuliyun001', '236', '1', '7', '1464658497', '0');
INSERT INTO `tp_qyleave_check` VALUES ('8', 'sfjie19871113', 'c2217wz', '236', '1', '8', '1465720947', '0');
INSERT INTO `tp_qyleave_check` VALUES ('9', 'sfjie19871113', 'c2217wz', '236', '0', '9', '1465721146', '0');
INSERT INTO `tp_qyleave_check` VALUES ('10', 'yzd_123', 'yzd_123', '246', '1', '10', '1472797677', '0');

-- ----------------------------
-- Table structure for `tp_qyleave_config`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyleave_config`;
CREATE TABLE `tp_qyleave_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `audit` text COMMENT '审核人',
  `time` int(10) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `todepart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='请假审核配置表';

-- ----------------------------
-- Records of tp_qyleave_config
-- ----------------------------
INSERT INTO `tp_qyleave_config` VALUES ('3', '236', '1', 'a:2:{i:1;a:2:{s:11:\"auditselect\";s:1:\"3\";s:9:\"auditname\";s:3:\"cwz\";}i:2;a:1:{s:11:\"auditselect\";s:1:\"1\";}}', '1464231470', null, null);
INSERT INTO `tp_qyleave_config` VALUES ('5', '246', '1', 'a:1:{i:1;a:2:{s:11:\"auditselect\";s:1:\"3\";s:9:\"auditname\";s:9:\"邱丽云\";}}', '1472696940', null, null);

-- ----------------------------
-- Table structure for `tp_qyleave_help`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyleave_help`;
CREATE TABLE `tp_qyleave_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `time` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyleave_help
-- ----------------------------
INSERT INTO `tp_qyleave_help` VALUES ('1', '1', 'c2217wz', 'abd49a3a31dbb5b9d0e20ce3ab21708e', '1', '1463705564', '236');
INSERT INTO `tp_qyleave_help` VALUES ('2', '7', 'xiao_158678', 'qiuliyun001', '1', '1464658497', '236');
INSERT INTO `tp_qyleave_help` VALUES ('3', '8', 'sfjie19871113', 'c2217wz', '0', '1465720947', '236');
INSERT INTO `tp_qyleave_help` VALUES ('4', '10', 'yzd_123', 'yzd_123', '2', '1472797677', '246');

-- ----------------------------
-- Table structure for `tp_qyleave_index`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyleave_index`;
CREATE TABLE `tp_qyleave_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '姓名',
  `user_id` int(11) NOT NULL,
  `time` int(10) DEFAULT '0' COMMENT '请假日期',
  `nianjia` smallint(4) DEFAULT '0' COMMENT '年假',
  `tiaoxiu` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '调休',
  `shijia` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '事假',
  `bingjia` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '病假',
  `hunjia` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '婚假',
  `chanjia` smallint(4) NOT NULL DEFAULT '0' COMMENT '产假',
  `sangjia` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '丧假',
  `qita` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '其它',
  `note` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假记录表';

-- ----------------------------
-- Records of tp_qyleave_index
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyleave_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyleave_record`;
CREATE TABLE `tp_qyleave_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `leavetype` tinyint(1) DEFAULT NULL,
  `start_time` varchar(16) DEFAULT NULL COMMENT '如果选择了半天就表示请假的时间',
  `end_time` varchar(16) DEFAULT NULL,
  `check_now` varchar(32) DEFAULT NULL,
  `check_order` varchar(500) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未审核1审核',
  `hour` int(11) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyleave_record
-- ----------------------------
INSERT INTO `tp_qyleave_record` VALUES ('1', 'c2217wz', '236', '请假测试', '8', '2016-05-20 10:0', '2016-05-20 13:0', 'wym030508', 'a:1:{i:0;s:9:\"wym030508\";}', '1463705441', '1', '3', ',10');
INSERT INTO `tp_qyleave_record` VALUES ('2', 'wym030508', '236', '有事', '3', '2016-05-19 4:5', '2016-05-28 4:20', 'sase002', 'a:1:{i:0;s:7:\"sase002\";}', '1464178355', '0', '216', ',11');
INSERT INTO `tp_qyleave_record` VALUES ('3', 'wym030508', '236', '有事', '3', '2016-05-19 4:5', '2016-05-28 4:20', 'sase002', 'a:1:{i:0;s:7:\"sase002\";}', '1464178357', '0', '216', ',11');
INSERT INTO `tp_qyleave_record` VALUES ('4', 'sfjie1987', '236', '测试', '5', '2016-05-26 11:0', '2016-05-27 8:0', 'abd49a3a31dbb5b9d0e20ce3ab21708e', 'a:1:{i:0;s:32:\"abd49a3a31dbb5b9d0e20ce3ab21708e\";}', '1464231433', '0', '21', ',14');
INSERT INTO `tp_qyleave_record` VALUES ('5', 'sfjie1987', '236', '测试', '8', '2016-05-26 11:0', '2016-05-27 8:0', 'abd49a3a31dbb5b9d0e20ce3ab21708e', 'a:1:{i:0;s:32:\"abd49a3a31dbb5b9d0e20ce3ab21708e\";}', '1464231485', '0', '21', ',14');
INSERT INTO `tp_qyleave_record` VALUES ('6', 'xiao_158678', '236', '加班调休', '2', '2016-05-31 13:30', '2016-05-31 17:30', '0', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '1464657047', '2', '4', ',5');
INSERT INTO `tp_qyleave_record` VALUES ('7', 'xiao_158678', '236', '身体不适', '3', '2016-05-31 10:30', '2016-05-31 17:30', 'qiuliyun001', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '1464658483', '1', '7', ',5');
INSERT INTO `tp_qyleave_record` VALUES ('8', 'sfjie19871113', '236', 'cwz', '3', '2016-06-13 1:55', '2016-06-15 16:5', 'c2217wz', 'a:1:{i:0;s:7:\"c2217wz\";}', '1465720930', '1', '62', ',122');
INSERT INTO `tp_qyleave_record` VALUES ('9', 'sfjie19871113', '236', '测试', '4', '2016-06-13 0:40', '2016-06-14 0:10', 'c2217wz', 'a:1:{i:0;s:7:\"c2217wz\";}', '1465721146', '0', '24', ',122');
INSERT INTO `tp_qyleave_record` VALUES ('10', 'yzd_123', '246', '请假', '10', '2016-09-02 14:25', '2016-09-02 14:25', 'yzd_123', 'a:1:{i:0;s:7:\"yzd_123\";}', '1472797657', '1', '0', ',327');

-- ----------------------------
-- Table structure for `tp_qyleave_type`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyleave_type`;
CREATE TABLE `tp_qyleave_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '请假类型原名称',
  `cname` varchar(200) DEFAULT NULL COMMENT '请假类型自定义名称',
  `status` varchar(20) NOT NULL,
  `days` int(11) DEFAULT NULL COMMENT '设置天数',
  `mintime` int(11) DEFAULT NULL COMMENT '请假最小值',
  `disorder` int(11) DEFAULT NULL COMMENT '显示顺序',
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='请假类型表';

-- ----------------------------
-- Records of tp_qyleave_type
-- ----------------------------
INSERT INTO `tp_qyleave_type` VALUES ('1', '236', '年假', null, '0', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('2', '236', '调休', null, '1', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('3', '236', '事假', null, '1', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('4', '236', '病假', null, '1', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('5', '236', '婚假', null, '1', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('6', '236', '产假', null, '1', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('7', '236', '丧假', null, '1', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('8', '236', '其它', null, '1', '10', '2', null, '1464054331');
INSERT INTO `tp_qyleave_type` VALUES ('9', '246', '年假', null, '1', '10', '2', null, '1472696958');
INSERT INTO `tp_qyleave_type` VALUES ('10', '246', '调休', null, '1', '10', '2', null, '1472696958');
INSERT INTO `tp_qyleave_type` VALUES ('11', '246', '事假', null, '1', '10', '2', null, '1472696958');
INSERT INTO `tp_qyleave_type` VALUES ('12', '246', '病假', null, '1', '10', '2', null, '1472696958');
INSERT INTO `tp_qyleave_type` VALUES ('13', '246', '婚假', null, '1', '10', '2', null, '1472696958');
INSERT INTO `tp_qyleave_type` VALUES ('14', '246', '产假', null, '1', '10', '2', null, '1472696958');
INSERT INTO `tp_qyleave_type` VALUES ('15', '246', '丧假', null, '1', '10', '2', null, '1472696958');
INSERT INTO `tp_qyleave_type` VALUES ('16', '246', '其它', null, '1', '10', '2', null, '1472696958');

-- ----------------------------
-- Table structure for `tp_qymailconf`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymailconf`;
CREATE TABLE `tp_qymailconf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `getmail` varchar(64) DEFAULT NULL,
  `get_type` tinyint(1) DEFAULT NULL,
  `get_port` varchar(16) DEFAULT NULL,
  `postmail` varchar(64) DEFAULT NULL,
  `post_type` tinyint(1) DEFAULT NULL,
  `post_port` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qymailconf
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qymeet_check`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymeet_check`;
CREATE TABLE `tp_qymeet_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` varchar(100) DEFAULT NULL COMMENT '提交请假的人',
  `user_two` varchar(100) DEFAULT NULL COMMENT '审核人',
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0为未审核1为审核2为驳回',
  `pid` int(11) DEFAULT NULL,
  `note` text COMMENT '审核人反馈',
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qymeet_check
-- ----------------------------
INSERT INTO `tp_qymeet_check` VALUES ('1', 'qing482x', 'qiuliyun001', '236', '0', '2', null, '1464331242');
INSERT INTO `tp_qymeet_check` VALUES ('2', 'qing482x', 'c2217wz', '236', '0', '2', null, '1464331242');
INSERT INTO `tp_qymeet_check` VALUES ('3', 'xiao_158678', 'qiuliyun001', '236', '1', '3', '', '1464660229');
INSERT INTO `tp_qymeet_check` VALUES ('4', 'xiao_158678', 'qiuliyun001', '236', '1', '4', '', '1464660170');
INSERT INTO `tp_qymeet_check` VALUES ('5', 'sfjie19871113', 'qiuliyun001', '236', '1', '5', '同意', '1464828499');
INSERT INTO `tp_qymeet_check` VALUES ('6', 'qiuliyun001', 'sfjie19871113', '236', '1', '6', '同意', '1464828742');
INSERT INTO `tp_qymeet_check` VALUES ('7', 'yang15824209289', 'qiuliyun001', '236', '0', '7', null, '1464950092');

-- ----------------------------
-- Table structure for `tp_qymeet_config`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymeet_config`;
CREATE TABLE `tp_qymeet_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advance` varchar(100) NOT NULL DEFAULT '' COMMENT '可提前预定天数',
  `start_time` varchar(60) DEFAULT '' COMMENT '会议室预定开始时间',
  `last` int(2) NOT NULL DEFAULT '0' COMMENT '会议室预定持续时间',
  `wave` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启摇一摇：0不开启1开启',
  `ruleout` text COMMENT '不可预定配置',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会议室设置表';

-- ----------------------------
-- Records of tp_qymeet_config
-- ----------------------------
INSERT INTO `tp_qymeet_config` VALUES ('4', '', '08:30', '9', '0', 'a:0:{}', '236');

-- ----------------------------
-- Table structure for `tp_qymeet_or`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymeet_or`;
CREATE TABLE `tp_qymeet_or` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `audit` text COMMENT '审核人',
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假审核配置表';

-- ----------------------------
-- Records of tp_qymeet_or
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qymeet_order`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymeet_order`;
CREATE TABLE `tp_qymeet_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '会议室名称',
  `time` int(10) NOT NULL COMMENT '日期',
  `t_8_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_8_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_9_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_9_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_10_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_10_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_11_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_11_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_12_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_12_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_13_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_13_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_14_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_14_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_15_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_15_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_16_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_16_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_17_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_17_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_18_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `t_18_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `date` varchar(16) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会议室预定表';

-- ----------------------------
-- Records of tp_qymeet_order
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qymeet_person`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymeet_person`;
CREATE TABLE `tp_qymeet_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `audit` text,
  `time` int(10) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `todepart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qymeet_person
-- ----------------------------
INSERT INTO `tp_qymeet_person` VALUES ('6', '236', '1', 'a:1:{i:1;a:2:{s:11:\"auditselect\";s:1:\"3\";s:9:\"auditname\";s:9:\"邱丽云\";}}', '1464828768', null, null);
INSERT INTO `tp_qymeet_person` VALUES ('8', '246', '1', 'a:1:{i:1;a:2:{s:11:\"auditselect\";s:1:\"3\";s:9:\"auditname\";s:9:\"邱丽云\";}}', '1472697075', null, null);

-- ----------------------------
-- Table structure for `tp_qymeet_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymeet_record`;
CREATE TABLE `tp_qymeet_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `timeid` varchar(64) DEFAULT NULL,
  `roomid` int(11) NOT NULL DEFAULT '0' COMMENT '会议室号',
  `is_mail` tinyint(1) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `date` varchar(16) DEFAULT NULL COMMENT '选用会议室日期',
  `addtime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '0' COMMENT '0为未审核1通过2为驳回',
  `check_now` varchar(16) DEFAULT NULL COMMENT '目前审核人',
  `check_order` varchar(128) DEFAULT NULL COMMENT '全部审核人',
  `times` int(11) DEFAULT '0',
  `mail_user` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qymeet_record
-- ----------------------------
INSERT INTO `tp_qymeet_record` VALUES ('1', '1', '236', 'wym030508', '5', '1', null, null, '20160514', '1463206593', '', '0', null, 'N;', '0', null);
INSERT INTO `tp_qymeet_record` VALUES ('2', '1', '236', 'qing482x', '2', '1', null, null, '20160527', '1464331242', '', '0', 'qiuliyun001', 'a:2:{i:0;s:11:\"qiuliyun001\";i:1;s:7:\"c2217wz\";}', '0', null);
INSERT INTO `tp_qymeet_record` VALUES ('3', '3', '236', 'xiao_158678', '6', '3', null, null, '20160531', '1464660083', '培训', '1', 'qiuliyun001', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '0', null);
INSERT INTO `tp_qymeet_record` VALUES ('4', '3', '236', 'xiao_158678', '6', '3', null, null, '20160531', '1464660085', '培训', '1', 'qiuliyun001', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '0', null);
INSERT INTO `tp_qymeet_record` VALUES ('5', '3', '236', 'sfjie19871113', '6', '3', null, null, '20160602', '1464828464', '培训', '1', 'qiuliyun001', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '0', null);
INSERT INTO `tp_qymeet_record` VALUES ('6', '3', '236', 'qiuliyun001', '8', '3', null, null, '20160602', '1464828676', '', '1', 'sfjie19871113', 'a:1:{i:0;s:13:\"sfjie19871113\";}', '0', null);
INSERT INTO `tp_qymeet_record` VALUES ('7', '2', '236', 'yang15824209289', '2', '2', null, null, '20160603', '1464950092', '', '0', 'qiuliyun001', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '0', null);

-- ----------------------------
-- Table structure for `tp_qymeet_room`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymeet_room`;
CREATE TABLE `tp_qymeet_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '会议室名称',
  `place` varchar(100) NOT NULL DEFAULT '' COMMENT '会议室地点',
  `floors` varchar(40) NOT NULL DEFAULT '' COMMENT '楼层',
  `num` smallint(6) DEFAULT '0' COMMENT '可容纳人数',
  `area` varchar(100) DEFAULT '' COMMENT '区域',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否预定：0未预定1已预定',
  `start_time` int(10) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) DEFAULT '0' COMMENT '结束时间',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会议室表';

-- ----------------------------
-- Records of tp_qymeet_room
-- ----------------------------
INSERT INTO `tp_qymeet_room` VALUES ('1', '会议室1', '地址1', '2', '100', '海曙', '0', '0', '0', '236');
INSERT INTO `tp_qymeet_room` VALUES ('2', '会议室2', '地址2', '12', '122', '被困', '0', '0', '0', '236');
INSERT INTO `tp_qymeet_room` VALUES ('3', '大会议室', '宁波市海曙区丽园北路755号9楼', '9', '20', '9楼', '0', '0', '0', '236');
INSERT INTO `tp_qymeet_room` VALUES ('4', '综合会议室', '宁波市海曙区丽园北路755号', '9', '100', '北区', '0', '0', '0', '246');
INSERT INTO `tp_qymeet_room` VALUES ('5', '小会议室', '宁波市海曙区丽园北路755号', '9', '20', '南区', '0', '0', '0', '246');

-- ----------------------------
-- Table structure for `tp_qymemo_set`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymemo_set`;
CREATE TABLE `tp_qymemo_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `content` text,
  `creat_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qymemo_set
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qymenu`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymenu`;
CREATE TABLE `tp_qymenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `link` varchar(450) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `type` varchar(32) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qymenu
-- ----------------------------
INSERT INTO `tp_qymenu` VALUES ('5', '236', '3', '投票列表', '0', 'http://wq.weijiabao.com.cn/index.php?m=Vote&a=wap_vote_list&token=5vGs2z1463102922', null, '1');
INSERT INTO `tp_qymenu` VALUES ('6', '236', '3', '发起投票', '0', 'http://wq.weijiabao.com.cn/index.php?m=Vote&a=wap_vote_set&token=5vGs2z1463102922', null, '1');
INSERT INTO `tp_qymenu` VALUES ('15', '236', '6', '待审批', '0', 'http://wq.weijiabao.com.cn/index.php?m=Workflow&a=wap_act_list&token=wgl4aI1463103914', null, '1');
INSERT INTO `tp_qymenu` VALUES ('16', '236', '6', '我的审批', '0', 'http://wq.weijiabao.com.cn/index.php?m=Workflow&a=wap_act_my&token=wgl4aI1463103914', null, '1');
INSERT INTO `tp_qymenu` VALUES ('17', '236', '6', '发起审批', '0', 'http://wq.weijiabao.com.cn/index.php?m=Workflow&a=wap_index&token=wgl4aI1463103914', null, '1');
INSERT INTO `tp_qymenu` VALUES ('18', '236', '7', '添加任务', '0', 'http://wq.weijiabao.com.cn/index.php?m=Task&a=wap_add_task&token=tVjAE61463104012', null, '1');
INSERT INTO `tp_qymenu` VALUES ('19', '236', '7', '任务管理', '0', 'http://wq.weijiabao.com.cn/index.php?m=Task&a=wap_index_one&token=tVjAE61463104012', null, '1');
INSERT INTO `tp_qymenu` VALUES ('20', '236', '8', '通讯录', '0', 'http://wq.weijiabao.com.cn/index.php?m=Address&a=wap_list&id=0&token=6hl3Y71463104116', null, '1');
INSERT INTO `tp_qymenu` VALUES ('22', '236', '9', '在线调研', '0', 'http://wq.weijiabao.com.cn/index.php?m=Research&a=wap_index&token=P9S1z31463104286', null, '1');
INSERT INTO `tp_qymenu` VALUES ('49', '236', '11', '名片夹', '0', 'http://wq.weijiabao.com.cn/index.php?m=Card&a=wap_my_card&token=7BcmeD1463104577', null, '1');
INSERT INTO `tp_qymenu` VALUES ('50', '236', '11', '我的名片', '0', 'http://wq.weijiabao.com.cn/index.php?m=Card&a=wap_card_set&token=7BcmeD1463104577', null, '1');
INSERT INTO `tp_qymenu` VALUES ('51', '236', '11', '通讯录', '0', 'http://wq.weijiabao.com.cn/index.php?m=Card&a=wap_index&token=7BcmeD1463104577', null, '1');
INSERT INTO `tp_qymenu` VALUES ('52', '236', '12', '会议室预定', '0', 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('53', '236', '12', '我的预定', null, 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_my_order&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('54', '236', '12', '我要预定', null, 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('55', '236', '12', '我的审核', '0', 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('56', '236', '12', '待我审核', null, 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_wait_check&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('57', '236', '12', '我已审核', null, 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_checked&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('58', '236', '12', '我的预定', '52', 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_my_order&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('59', '236', '12', '我要预定', '52', 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('60', '236', '12', '待我审核', '55', 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_wait_check&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('61', '236', '12', '我已审核', '55', 'http://wq.weijiabao.com.cn/index.php?m=Meet&a=wap_checked&token=TdEXH31463104721', null, '1');
INSERT INTO `tp_qymenu` VALUES ('62', '236', '13', '我的汇报', '0', 'http://wq.weijiabao.com.cn/index.php?m=Day&a=wap_my_day&token=XsVV6t1463104804', null, '1');
INSERT INTO `tp_qymenu` VALUES ('63', '236', '13', '新增汇报', '0', 'http://wq.weijiabao.com.cn/index.php?m=Day&a=wap_add_day&token=XsVV6t1463104804', null, '1');
INSERT INTO `tp_qymenu` VALUES ('64', '236', '13', '待我审批', null, 'http://wq.weijiabao.com.cn/index.php?m=Day&a=wap_wait_check&token=XsVV6t1463104804', null, '1');
INSERT INTO `tp_qymenu` VALUES ('65', '236', '13', '我已审批', null, 'http://wq.weijiabao.com.cn/index.php?m=Day&a=wap_checked&token=XsVV6t1463104804', null, '1');
INSERT INTO `tp_qymenu` VALUES ('66', '236', '13', '审批记录', '0', 'http://wq.weijiabao.com.cn/index.php?m=Day&a=wap_index&token=XsVV6t1463104804', null, '1');
INSERT INTO `tp_qymenu` VALUES ('67', '236', '13', '待我审批', '66', 'http://wq.weijiabao.com.cn/index.php?m=Day&a=wap_wait_check&token=XsVV6t1463104804', null, '1');
INSERT INTO `tp_qymenu` VALUES ('68', '236', '13', '我已审批', '66', 'http://wq.weijiabao.com.cn/index.php?m=Day&a=wap_checked&token=XsVV6t1463104804', null, '1');
INSERT INTO `tp_qymenu` VALUES ('69', '236', '14', '借书', '0', 'http://wq.weijiabao.com.cn/index.php?m=Borrow_books&a=wap_index&token=ThZhVf1463104885', null, '1');
INSERT INTO `tp_qymenu` VALUES ('70', '236', '15', '待审核', '0', 'http://wq.weijiabao.com.cn/index.php?m=Quit&a=wap_wait_check&token=59Hepq1463104983', null, '1');
INSERT INTO `tp_qymenu` VALUES ('71', '236', '15', '我的离职', '0', 'http://wq.weijiabao.com.cn/index.php?m=Quit&a=wap_list&token=59Hepq1463104983', null, '1');
INSERT INTO `tp_qymenu` VALUES ('72', '236', '15', '申请离职', '0', 'http://wq.weijiabao.com.cn/index.php?m=Quit&a=wap_holiday&token=59Hepq1463104983', null, '1');
INSERT INTO `tp_qymenu` VALUES ('73', '236', '16', '知识库', '0', 'http://wq.weijiabao.com.cn/index.php?m=Knowledge&a=wap_index&token=okmxul1463105074', null, '1');
INSERT INTO `tp_qymenu` VALUES ('74', '236', '16', '我的收藏', '0', 'http://wq.weijiabao.com.cn/index.php?m=Knowledge&a=wap_my&token=okmxul1463105074', null, '1');
INSERT INTO `tp_qymenu` VALUES ('78', '236', '18', '在线考试', '0', 'http://wq.weijiabao.com.cn/index.php?m=Test&a=wap_index&token=w5mcVU1463105235', null, '1');
INSERT INTO `tp_qymenu` VALUES ('79', '236', '19', '意见建议', '0', 'http://wq.weijiabao.com.cn/index.php?m=Secretary&a=wap_index&token=amD96J1463105313', null, '1');
INSERT INTO `tp_qymenu` VALUES ('80', '236', '19', '联系我们', '0', 'http://wq.weijiabao.com.cn/index.php?m=Secretary&a=wap_tel&token=amD96J1463105313', null, '1');
INSERT INTO `tp_qymenu` VALUES ('81', '236', '19', '最新活动', '0', 'http://wq.weijiabao.com.cn/index.php?m=Company_salon&a=wap_activity&token=amD96J1463105313', null, '1');
INSERT INTO `tp_qymenu` VALUES ('82', '236', '19', '添加意见', null, 'http://wq.weijiabao.com.cn/index.php?m=Secretary&a=wap_add_advice&token=amD96J1463105313', null, '1');
INSERT INTO `tp_qymenu` VALUES ('83', '236', '19', '我的意见', null, 'http://wq.weijiabao.com.cn/index.php?m=Secretary&a=wap_my_advice&token=amD96J1463105313', null, '1');
INSERT INTO `tp_qymenu` VALUES ('84', '236', '19', '添加意见', '79', 'http://wq.weijiabao.com.cn/index.php?m=Secretary&a=wap_add_advice&token=amD96J1463105313', null, '1');
INSERT INTO `tp_qymenu` VALUES ('85', '236', '19', '我的意见', '79', 'http://wq.weijiabao.com.cn/index.php?m=Secretary&a=wap_my_advice&token=amD96J1463105313', null, '1');
INSERT INTO `tp_qymenu` VALUES ('86', '236', '20', '我的课程', '0', 'http://wq.weijiabao.com.cn/index.php?m=Micro_class&a=wap_my_lesson&token=bIpAGp1463105585', null, '1');
INSERT INTO `tp_qymenu` VALUES ('87', '236', '20', '最新课程', '0', 'http://wq.weijiabao.com.cn/index.php?m=Micro_class&a=wap_latest_lesson&token=bIpAGp1463105585', null, '1');
INSERT INTO `tp_qymenu` VALUES ('88', '236', '20', '往期回顾', '0', 'http://wq.weijiabao.com.cn/index.php?m=Micro_class&a=wap_history_lesson&token=bIpAGp1463105585', null, '1');
INSERT INTO `tp_qymenu` VALUES ('89', '236', '21', '我参与的', '0', 'http://wq.weijiabao.com.cn/index.php?m=Company_salon&a=wap_activity_attend&token=KgMZqv1463105662', null, '1');
INSERT INTO `tp_qymenu` VALUES ('90', '236', '21', '最新活动', '0', 'http://wq.weijiabao.com.cn/index.php?m=Company_salon&a=wap_latest_activity&token=KgMZqv1463105662', null, '1');
INSERT INTO `tp_qymenu` VALUES ('91', '236', '21', '往期回顾', '0', 'http://wq.weijiabao.com.cn/index.php?m=Company_salon&a=wap_activity_history&token=KgMZqv1463105662', null, '1');
INSERT INTO `tp_qymenu` VALUES ('92', '236', '23', '发布公告', '0', 'http://wq.weijiabao.com.cn/index.php?m=Xinwen&a=wap_add_task&token=lDRm3X1463105893', null, '1');
INSERT INTO `tp_qymenu` VALUES ('93', '236', '23', '我的公告', '0', 'http://wq.weijiabao.com.cn/index.php?m=Xinwen&a=wap_my_news&token=lDRm3X1463105893', null, '1');
INSERT INTO `tp_qymenu` VALUES ('94', '236', '24', '有关于我', '0', 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_index&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('95', '236', '24', '我的活动', null, 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_my_activity&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('96', '236', '24', '我的审核', null, 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_wait_check&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('97', '236', '24', '发起活动', '0', 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_add_activity&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('98', '236', '24', '活动列表', '0', 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_index&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('99', '236', '24', '最新活动', null, 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_latest_activity&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('100', '236', '24', '历史活动', null, 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_history_activity&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('101', '236', '24', '我的活动', '94', 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_my_activity&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('102', '236', '24', '我的审核', '94', 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_wait_check&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('103', '236', '24', '最新活动', '98', 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_latest_activity&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('104', '236', '24', '历史活动', '98', 'http://wq.weijiabao.com.cn/index.php?m=Organization&a=wap_history_activity&token=YhWsyr1463106096', null, '1');
INSERT INTO `tp_qymenu` VALUES ('118', '236', '22', '首页', '0', 'http://wq.weijiabao.com.cn/index.php?m=Offical_website&a=wap_index&token=HHEUTT1463105812', null, '1');
INSERT INTO `tp_qymenu` VALUES ('119', '236', '5', '审批记录', '0', 'http://wq.weijiabao.com.cn/index.php?m=Applyflow&a=wap_index&token=c1lEs31463103607', null, '1');
INSERT INTO `tp_qymenu` VALUES ('120', '236', '5', '我的报销', '0', 'http://wq.weijiabao.com.cn/index.php?m=Applyflow&a=wap_my_apply&token=c1lEs31463103607', null, '1');
INSERT INTO `tp_qymenu` VALUES ('121', '236', '5', '申请报销', '0', 'http://wq.weijiabao.com.cn/index.php?m=Applyflow&a=wap_post&token=c1lEs31463103607', null, '1');
INSERT INTO `tp_qymenu` VALUES ('122', '236', '5', '我已审批', null, 'http://wq.weijiabao.com.cn/index.php?m=Applyflow&a=wap_checked&token=c1lEs31463103607', null, '1');
INSERT INTO `tp_qymenu` VALUES ('123', '236', '5', '待我审批', null, 'http://wq.weijiabao.com.cn/index.php?m=Applyflow&a=wap_wait_check&token=c1lEs31463103607', null, '1');
INSERT INTO `tp_qymenu` VALUES ('124', '236', '5', '我已审批', '119', 'http://wq.weijiabao.com.cn/index.php?m=Applyflow&a=wap_checked&token=c1lEs31463103607', null, '1');
INSERT INTO `tp_qymenu` VALUES ('125', '236', '5', '待我审批', '119', 'http://wq.weijiabao.com.cn/index.php?m=Applyflow&a=wap_wait_check&token=c1lEs31463103607', null, '1');
INSERT INTO `tp_qymenu` VALUES ('139', '236', '10', '审批记录', '0', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_index&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('140', '236', '10', '我的假单', null, 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_record&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('141', '236', '10', '请假', '0', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_holiday&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('142', '236', '10', '假单', '0', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_index&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('143', '236', '10', '我已交接', null, 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_helped&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('144', '236', '10', '待我交接', null, 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_help&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('145', '236', '10', '我已审批', null, 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_checked&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('146', '236', '10', '待我审批', null, 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_check&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('147', '236', '10', '我的假单', '142', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_record&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('148', '236', '10', '我已交接', '142', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_helped&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('149', '236', '10', '待我交接', '142', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_help&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('150', '236', '10', '我已审批', '139', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_checked&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('151', '236', '10', '待我审批', '139', 'http://wq.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_check&token=ODDEaI1463104483', null, '1');
INSERT INTO `tp_qymenu` VALUES ('156', '236', '25', '我的课表', '0', 'http://wq.weijiabao.com.cn/index.php?m=Class_table&a=wap_my_table&token=QF1qSP1464156411', null, '1');
INSERT INTO `tp_qymenu` VALUES ('157', '236', '25', '课表管理', '0', 'http://wq.weijiabao.com.cn/index.php?m=Class_table&a=wap_table_manage&token=QF1qSP1464156411', null, '1');
INSERT INTO `tp_qymenu` VALUES ('158', '236', '26', '在线答题', '0', 'http://wq.weijiabao.com.cn/index.php?m=Work&a=wap_paper_list&token=zJET4Z1464156650', null, '1');
INSERT INTO `tp_qymenu` VALUES ('159', '236', '26', '我的发布', '0', 'http://wq.weijiabao.com.cn/index.php?m=Work&a=wap_index&token=zJET4Z1464156650', null, '1');
INSERT INTO `tp_qymenu` VALUES ('160', '236', '26', '发布作业', null, 'http://wq.weijiabao.com.cn/index.php?m=Work&a=wap_add_paper&token=zJET4Z1464156650', null, '1');
INSERT INTO `tp_qymenu` VALUES ('161', '236', '26', '统计列表', null, 'http://wq.weijiabao.com.cn/index.php?m=Work&a=wap_tongji_list&token=zJET4Z1464156650', null, '1');
INSERT INTO `tp_qymenu` VALUES ('162', '236', '26', '发布作业', '159', 'http://wq.weijiabao.com.cn/index.php?m=Work&a=wap_add_paper&token=zJET4Z1464156650', null, '1');
INSERT INTO `tp_qymenu` VALUES ('163', '236', '26', '统计列表', '159', 'http://wq.weijiabao.com.cn/index.php?m=Work&a=wap_tongji_list&token=zJET4Z1464156650', null, '1');
INSERT INTO `tp_qymenu` VALUES ('165', '236', '27', '在校情况', '0', 'http://wq.weijiabao.com.cn/index.php?m=Student_tongji&a=wap_class_attendance&token=zqMnd11464156664', null, '1');
INSERT INTO `tp_qymenu` VALUES ('166', '236', '27', '统考详情', '0', 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_stu_pic&token=zqMnd11464156664', null, '1');
INSERT INTO `tp_qymenu` VALUES ('167', '236', '28', '考试倒计时', '0', 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_test_list&token=ahpNZ71464156678', null, '1');
INSERT INTO `tp_qymenu` VALUES ('168', '236', '28', '成绩列表', '0', 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_score_list&token=ahpNZ71464156678', null, '1');
INSERT INTO `tp_qymenu` VALUES ('169', '236', '28', '图表分析', '0', 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_index&token=ahpNZ71464156678', null, '1');
INSERT INTO `tp_qymenu` VALUES ('170', '236', '28', '统考详情', null, 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_stu_pic&token=ahpNZ71464156678', null, '1');
INSERT INTO `tp_qymenu` VALUES ('171', '236', '28', '班级情况', null, 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_class_pic&token=ahpNZ71464156678', null, '1');
INSERT INTO `tp_qymenu` VALUES ('172', '236', '28', '统考详情', '169', 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_stu_pic&token=ahpNZ71464156678', null, '1');
INSERT INTO `tp_qymenu` VALUES ('173', '236', '28', '班级情况', '169', 'http://wq.weijiabao.com.cn/index.php?m=Test_view&a=wap_class_pic&token=ahpNZ71464156678', null, '1');
INSERT INTO `tp_qymenu` VALUES ('174', '236', '29', '在校考勤', '0', 'http://wq.weijiabao.com.cn/index.php?m=School_attendance&a=wap_attendance&token=m9HqoA1464156726', null, '1');
INSERT INTO `tp_qymenu` VALUES ('175', '236', '30', '作业列表', '0', 'http://wq.weijiabao.com.cn/index.php?m=Homework_t&a=wap_work_list&token=CXkMPm1464156765', null, '1');
INSERT INTO `tp_qymenu` VALUES ('182', '236', '2', '写邮件', '0', 'http://wq.weijiabao.com.cn/index.php?m=Email&a=wap_index&token=MMVNr21463102841', null, '1');
INSERT INTO `tp_qymenu` VALUES ('183', '236', '2', '收件箱', '0', 'http://wq.weijiabao.com.cn/index.php?m=Email&a=wap_inbox&token=MMVNr21463102841', null, '1');
INSERT INTO `tp_qymenu` VALUES ('184', '236', '2', ' 发件箱', '0', 'http://wq.weijiabao.com.cn/index.php?m=Email&a=wap_send&token=MMVNr21463102841', null, '1');
INSERT INTO `tp_qymenu` VALUES ('185', '236', '17', '我的外勤', '0', 'http://wq.weijiabao.com.cn/index.php?m=Legwork&a=wap_index&token=H2VCES1463105152', null, '1');
INSERT INTO `tp_qymenu` VALUES ('186', '236', '17', '签到记录', '0', 'http://wq.weijiabao.com.cn/index.php?m=Legwork&a=wap_record&token=H2VCES1463105152', null, '1');
INSERT INTO `tp_qymenu` VALUES ('187', '236', '17', '添加外勤', '0', 'http://wq.weijiabao.com.cn/index.php?m=Legwork&a=wap_add&token=H2VCES1463105152', null, '1');
INSERT INTO `tp_qymenu` VALUES ('188', '236', '1', '签退', '0', 'http://wq.weijiabao.com.cn/index.php?m=Attendance&a=wap_out&token=gW43gS1463102752', null, '1');
INSERT INTO `tp_qymenu` VALUES ('189', '236', '1', '签到', '0', 'http://wq.weijiabao.com.cn/index.php?m=Attendance&a=wap_index&token=gW43gS1463102752', null, '1');
INSERT INTO `tp_qymenu` VALUES ('190', '236', '1', '查询记录', '0', 'http://wq.weijiabao.com.cn/index.php?m=Attendance&a=wap_records&token=gW43gS1463102752', null, '1');
INSERT INTO `tp_qymenu` VALUES ('191', '246', '31', '签退', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Attendance&a=wap_out&token=87Ek501472690886', null, '1');
INSERT INTO `tp_qymenu` VALUES ('192', '246', '31', '签到', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Attendance&a=wap_index&token=87Ek501472690886', null, '1');
INSERT INTO `tp_qymenu` VALUES ('193', '246', '31', '查询记录', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Attendance&a=wap_records&token=87Ek501472690886', null, '1');
INSERT INTO `tp_qymenu` VALUES ('197', '246', '33', '审批记录', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Applyflow&a=wap_index&token=41W22n1472692909', null, '1');
INSERT INTO `tp_qymenu` VALUES ('198', '246', '33', '我的报销', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Applyflow&a=wap_my_apply&token=41W22n1472692909', null, '1');
INSERT INTO `tp_qymenu` VALUES ('199', '246', '33', '申请报销', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Applyflow&a=wap_post&token=41W22n1472692909', null, '1');
INSERT INTO `tp_qymenu` VALUES ('200', '246', '33', '我已审批', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Applyflow&a=wap_checked&token=41W22n1472692909', null, '1');
INSERT INTO `tp_qymenu` VALUES ('201', '246', '33', '待我审批', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Applyflow&a=wap_wait_check&token=41W22n1472692909', null, '1');
INSERT INTO `tp_qymenu` VALUES ('202', '246', '33', '我已审批', '197', 'http://ydqy.weijiabao.com.cn/index.php?m=Applyflow&a=wap_checked&token=41W22n1472692909', null, '1');
INSERT INTO `tp_qymenu` VALUES ('203', '246', '33', '待我审批', '197', 'http://ydqy.weijiabao.com.cn/index.php?m=Applyflow&a=wap_wait_check&token=41W22n1472692909', null, '1');
INSERT INTO `tp_qymenu` VALUES ('204', '246', '32', '写邮件', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Email&a=wap_index&token=YUESX91472691315', null, '1');
INSERT INTO `tp_qymenu` VALUES ('205', '246', '32', '收件箱', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Email&a=wap_inbox&token=YUESX91472691315', null, '1');
INSERT INTO `tp_qymenu` VALUES ('206', '246', '32', ' 发件箱', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Email&a=wap_send&token=YUESX91472691315', null, '1');
INSERT INTO `tp_qymenu` VALUES ('207', '246', '35', '添加任务', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Task&a=wap_add_task&token=0kQMYV1472693673', null, '1');
INSERT INTO `tp_qymenu` VALUES ('208', '246', '35', '任务管理', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Task&a=wap_index_one&token=0kQMYV1472693673', null, '1');
INSERT INTO `tp_qymenu` VALUES ('209', '246', '34', '待审批', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Workflow&a=wap_act_list&token=FTF59U1472693381', null, '1');
INSERT INTO `tp_qymenu` VALUES ('210', '246', '34', '我的审批', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Workflow&a=wap_act_my&token=FTF59U1472693381', null, '1');
INSERT INTO `tp_qymenu` VALUES ('211', '246', '34', '发起审批', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Workflow&a=wap_index&token=FTF59U1472693381', null, '1');
INSERT INTO `tp_qymenu` VALUES ('212', '246', '36', '通讯录', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Address&a=wap_list&id=0&token=AkJw8G1472693908', null, '1');
INSERT INTO `tp_qymenu` VALUES ('213', '246', '37', '在线调研', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Research&a=wap_index&token=w2xqp61472694057', null, '1');
INSERT INTO `tp_qymenu` VALUES ('214', '246', '38', '审批记录', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_index&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('215', '246', '38', '我的假单', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_record&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('216', '246', '38', '请假', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_holiday&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('217', '246', '38', '假单', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_index&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('218', '246', '38', '我已交接', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_helped&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('219', '246', '38', '待我交接', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_help&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('220', '246', '38', '我已审批', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_checked&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('221', '246', '38', '待我审批', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_check&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('222', '246', '38', '我的假单', '217', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_record&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('223', '246', '38', '我已交接', '217', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_helped&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('224', '246', '38', '待我交接', '217', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_help&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('225', '246', '38', '我已审批', '214', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_checked&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('226', '246', '38', '待我审批', '214', 'http://ydqy.weijiabao.com.cn/index.php?m=Leave&a=wap_wait_check&token=G1On0d1472694208', null, '1');
INSERT INTO `tp_qymenu` VALUES ('227', '246', '39', '名片夹', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Card&a=wap_my_card&token=YixKMW1472694384', null, '1');
INSERT INTO `tp_qymenu` VALUES ('228', '246', '39', '我的名片', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Card&a=wap_card_set&token=YixKMW1472694384', null, '1');
INSERT INTO `tp_qymenu` VALUES ('229', '246', '39', '通讯录', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Card&a=wap_index&token=YixKMW1472694384', null, '1');
INSERT INTO `tp_qymenu` VALUES ('230', '246', '40', '会议室预定', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('231', '246', '40', '我的预定', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_my_order&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('232', '246', '40', '我要预定', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('233', '246', '40', '我的审核', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('234', '246', '40', '待我审核', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_wait_check&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('235', '246', '40', '我已审核', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_checked&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('236', '246', '40', '我的预定', '230', 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_my_order&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('237', '246', '40', '我要预定', '230', 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_index&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('238', '246', '40', '待我审核', '233', 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_wait_check&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('239', '246', '40', '我已审核', '233', 'http://ydqy.weijiabao.com.cn/index.php?m=Meet&a=wap_checked&token=RWliAF1472694525', null, '1');
INSERT INTO `tp_qymenu` VALUES ('240', '246', '41', '我的汇报', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Day&a=wap_my_day&token=XIzmmU1472695619', null, '1');
INSERT INTO `tp_qymenu` VALUES ('241', '246', '41', '新增汇报', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Day&a=wap_add_day&token=XIzmmU1472695619', null, '1');
INSERT INTO `tp_qymenu` VALUES ('242', '246', '41', '待我审批', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Day&a=wap_wait_check&token=XIzmmU1472695619', null, '1');
INSERT INTO `tp_qymenu` VALUES ('243', '246', '41', '我已审批', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Day&a=wap_checked&token=XIzmmU1472695619', null, '1');
INSERT INTO `tp_qymenu` VALUES ('244', '246', '41', '审批记录', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Day&a=wap_index&token=XIzmmU1472695619', null, '1');
INSERT INTO `tp_qymenu` VALUES ('245', '246', '41', '待我审批', '244', 'http://ydqy.weijiabao.com.cn/index.php?m=Day&a=wap_wait_check&token=XIzmmU1472695619', null, '1');
INSERT INTO `tp_qymenu` VALUES ('246', '246', '41', '我已审批', '244', 'http://ydqy.weijiabao.com.cn/index.php?m=Day&a=wap_checked&token=XIzmmU1472695619', null, '1');
INSERT INTO `tp_qymenu` VALUES ('247', '246', '42', '借书', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Borrow_books&a=wap_index&token=t7pHxy1472695796', null, '1');
INSERT INTO `tp_qymenu` VALUES ('248', '246', '43', '待审核', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Quit&a=wap_wait_check&token=D3LwOw1472695946', null, '1');
INSERT INTO `tp_qymenu` VALUES ('249', '246', '43', '我的离职', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Quit&a=wap_list&token=D3LwOw1472695946', null, '1');
INSERT INTO `tp_qymenu` VALUES ('250', '246', '43', '申请离职', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Quit&a=wap_holiday&token=D3LwOw1472695946', null, '1');
INSERT INTO `tp_qymenu` VALUES ('251', '246', '44', '意见建议', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Secretary&a=wap_index&token=ixQwsK1472696084', null, '1');
INSERT INTO `tp_qymenu` VALUES ('252', '246', '44', '联系我们', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Secretary&a=wap_tel&token=ixQwsK1472696084', null, '1');
INSERT INTO `tp_qymenu` VALUES ('253', '246', '44', '最新活动', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Company_salon&a=wap_activity&token=ixQwsK1472696084', null, '1');
INSERT INTO `tp_qymenu` VALUES ('254', '246', '44', '添加意见', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Secretary&a=wap_add_advice&token=ixQwsK1472696084', null, '1');
INSERT INTO `tp_qymenu` VALUES ('255', '246', '44', '我的意见', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Secretary&a=wap_my_advice&token=ixQwsK1472696084', null, '1');
INSERT INTO `tp_qymenu` VALUES ('256', '246', '44', '添加意见', '251', 'http://ydqy.weijiabao.com.cn/index.php?m=Secretary&a=wap_add_advice&token=ixQwsK1472696084', null, '1');
INSERT INTO `tp_qymenu` VALUES ('257', '246', '44', '我的意见', '251', 'http://ydqy.weijiabao.com.cn/index.php?m=Secretary&a=wap_my_advice&token=ixQwsK1472696084', null, '1');
INSERT INTO `tp_qymenu` VALUES ('258', '246', '45', '发布公告', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Xinwen&a=wap_add_task&token=2vIuwH1472696224', null, '1');
INSERT INTO `tp_qymenu` VALUES ('259', '246', '45', '我的公告', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Xinwen&a=wap_my_news&token=2vIuwH1472696224', null, '1');
INSERT INTO `tp_qymenu` VALUES ('260', '246', '46', '有关于我', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_index&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('261', '246', '46', '我的活动', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_my_activity&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('262', '246', '46', '我的审核', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_wait_check&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('263', '246', '46', '发起活动', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_add_activity&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('264', '246', '46', '活动列表', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_index&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('265', '246', '46', '最新活动', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_latest_activity&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('266', '246', '46', '历史活动', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_history_activity&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('267', '246', '46', '我的活动', '260', 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_my_activity&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('268', '246', '46', '我的审核', '260', 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_wait_check&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('269', '246', '46', '最新活动', '264', 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_latest_activity&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('270', '246', '46', '历史活动', '264', 'http://ydqy.weijiabao.com.cn/index.php?m=Organization&a=wap_history_activity&token=wmBwI41472696344', null, '1');
INSERT INTO `tp_qymenu` VALUES ('271', '246', '47', '考试倒计时', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Test_view&a=wap_test_list&token=uOKAy91472696473', null, '1');
INSERT INTO `tp_qymenu` VALUES ('272', '246', '47', '成绩列表', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Test_view&a=wap_score_list&token=uOKAy91472696473', null, '1');
INSERT INTO `tp_qymenu` VALUES ('273', '246', '47', '图表分析', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Test_view&a=wap_index&token=uOKAy91472696473', null, '1');
INSERT INTO `tp_qymenu` VALUES ('274', '246', '47', '统考详情', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Test_view&a=wap_stu_pic&token=uOKAy91472696473', null, '1');
INSERT INTO `tp_qymenu` VALUES ('275', '246', '47', '班级情况', null, 'http://ydqy.weijiabao.com.cn/index.php?m=Test_view&a=wap_class_pic&token=uOKAy91472696473', null, '1');
INSERT INTO `tp_qymenu` VALUES ('276', '246', '47', '统考详情', '273', 'http://ydqy.weijiabao.com.cn/index.php?m=Test_view&a=wap_stu_pic&token=uOKAy91472696473', null, '1');
INSERT INTO `tp_qymenu` VALUES ('277', '246', '47', '班级情况', '273', 'http://ydqy.weijiabao.com.cn/index.php?m=Test_view&a=wap_class_pic&token=uOKAy91472696473', null, '1');
INSERT INTO `tp_qymenu` VALUES ('278', '246', '48', '我的课表', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Class_table&a=wap_my_table&token=8bhZhk1472696589', null, '1');
INSERT INTO `tp_qymenu` VALUES ('279', '246', '48', '课表管理', '0', 'http://ydqy.weijiabao.com.cn/index.php?m=Class_table&a=wap_table_manage&token=8bhZhk1472696589', null, '1');

-- ----------------------------
-- Table structure for `tp_qymyapp`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qymyapp`;
CREATE TABLE `tp_qymyapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `appid` int(11) DEFAULT NULL COMMENT '微信那边的id',
  `userid` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `outh_host` varchar(32) DEFAULT NULL,
  `encodingkey` varchar(255) DEFAULT NULL,
  `fun_id` int(11) DEFAULT NULL COMMENT '微易平台应用id',
  `module` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '安装完成',
  `reply_img` varchar(300) DEFAULT NULL,
  `suit_id` varchar(64) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '1为正常安装,2为s授权安装',
  `access_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qymyapp
-- ----------------------------
INSERT INTO `tp_qymyapp` VALUES ('1', 'gW43gS1463102752', '微信考勤', '45', '236', '微信考勤，时下最流行的考勤形式，高效掌控员工出勤状况。', './Static/thumb/thumb_Attendance.png', 'wq.weijiabao.com.cn', '826ppNTLJjdFs2blqXmuYwRlXIhCH0Hw3lINndqDvAq', '1', 'Attendance', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('2', 'MMVNr21463102841', '站内信', '46', '236', '企业邮箱管理应用，帮您随时随地掌握邮箱动态，收发邮件畅通无阻，让您享受更轻快的移动办公体验', './Static/thumb/thumb_Email.png', 'wq.weijiabao.com.cn', 'c9jDSzEpVFaHOv3mwG3JvkoEJZLtGNp1jj1F6FQe0qA', '2', 'Email', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('3', '5vGs2z1463102922', '投票', '79', '236', '快速发起投票，数据自动统计，实时结果显示，为您节省宝贵的时间。', './Static/thumb/thumb_Vote.png', 'wq.weijiabao.com.cn', '2csFB1aLWCxjafojRB4c8UrYySP5eK5vMdyHfv4EgmY', '3', 'Vote', '1', null, null, '1', '');
INSERT INTO `tp_qymyapp` VALUES ('4', 'DG5QKX1463103080', '企业小助手', '81', '236', '企业小助手', './Static/thumb/xiaozhushou.png', 'wq.weijiabao.com.cn', '2kwpwE2fnNVbVdfr2TBL2g5kNliTCzkEnUMkpQJ9ylM', '26', 'Helper', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('5', 'c1lEs31463103607', '报销', '80', '236', '让传统繁琐，低效，粗略的报销管理工作，变得便捷，高效，精准！', './Static/thumb/thumb_Applyflow.png', 'wq.weijiabao.com.cn', 'Ze6traRAbyWg9Y3PRwr8eNOwMToQqpSrGpv9uw0jlPy', '4', 'Applyflow', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('6', 'wgl4aI1463103914', '流程审批', '49', '236', '审批流程完全自定义、审批人员自由配置，满足您个性化的流程审批需求。', './Static/thumb/thumb_Workflow.png', 'wq.weijiabao.com.cn', 'jQbh0SCbea67mbIjeS3ubJdS4HMbegRCuo2VdxoifHy', '5', 'Workflow', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('7', 'tVjAE61463104012', '任务协作', '50', '236', '任务管理应用，轻松安排您与团队每一天的工作分派，实时掌握工作进度，有效提高您和团队的工作效率。', './Static/thumb/thumb_Task.png', 'wq.weijiabao.com.cn', 'n6z6kbrMaqYtkUp2OgrO5yiE6nHSkPSkJwwnOwSRuqE', '6', 'Task', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('8', '6hl3Y71463104116', '通讯录', '51', '236', '员工通讯录快速共享，常用、保密联系人自由设置。', './Static/thumb/thumb_Address.png', 'wq.weijiabao.com.cn', 'RPNu4apmzObcsXWYjl29ebjHOc669AgiQ58MYVyw9NS', '8', 'Address', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('9', 'P9S1z31463104286', '问卷调查', '52', '236', '调研应用，实时收集来自团队的宝贵意见，数据分析直观明了，有效提高您的调研质量。', './Static/thumb/thumb_Research.png', 'wq.weijiabao.com.cn', 'p37BpXGEPlYwaid5np7EVMV6M0lKqazsOSlypcTTcLV', '9', 'Research', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('10', 'ODDEaI1463104483', '请假', '53', '236', '及时的消息提醒,简单的处理方式,精简的审批流程,方便您及时高效处理请假申请。', './Static/thumb/thumb_Leave.png', 'wq.weijiabao.com.cn', 'qNhRdA15BJIPHrd54sRiPZvryKtZlXCVOlhG17kgAZ4', '11', 'Leave', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('11', '7BcmeD1463104577', '微名片', '54', '236', '创建个性名片,收纳海量好友,是一款时尚又新潮,简单又好用的电子名片管理应用。', './Static/thumb/thumb_Card.png', 'wq.weijiabao.com.cn', 'ry3OXuyIsvdr9r0zLFncwZjW8MhSOSfAiCGbNQyg1Uj', '12', 'Card', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('12', 'TdEXH31463104721', '会议室预定', '55', '236', '高效的会议室预定管理应用,解决您烦恼的会议室预定管理问题。', './Static/thumb/thumb_Meet.png', 'wq.weijiabao.com.cn', 'qWLN3fF9SkwjM9U23bVwApbtHiK9eNdeyoHXt3M2mey', '13', 'Meet', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('13', 'XsVV6t1463104804', '工作汇报', '43', '236', '简洁直观，方便易用。', './Static/thumb/thumb_Day.png', 'wq.weijiabao.com.cn', '34njn9NzCuNlZWmceRWfx4x6EWAOMi51DuuMrlKIUem', '14', 'Day', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('14', 'ThZhVf1463104885', '借书', '44', '236', '借书', './Static/thumb/thumb_Borrow_books.png', 'wq.weijiabao.com.cn', 'XZU2Yrqon6zu2XW5gsCnVAd5mOPqp528qTVqec7ZcuG', '17', 'Borrow_books', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('15', '59Hepq1463104983', '离职', '74', '236', '离职', './Static/thumb/thumb_Quit.png', 'wq.weijiabao.com.cn', 'jQbTi68S78sdLvUhGkFSRctoJbyDjTCX2qSdSn3KkOm', '18', 'Quit', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('16', 'okmxul1463105074', '企业知识库', '58', '236', '企业知识库', './Static/thumb/thumb_Knowledge.png', 'wq.weijiabao.com.cn', '6NTnDQXS3TuNWGSDoqVl0Q0oS9WKB35TgNiMs4TSi7J', '19', 'Knowledge', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('17', 'H2VCES1463105152', '外勤管理', '59', '236', '外勤管理', './Static/thumb/thumb_Legwork.png', 'wq.weijiabao.com.cn', 'z36H9tOR9XXcv6h3I0ZgJfNc1XWGzG84PyzbL80oSxE', '20', 'Legwork', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('18', 'w5mcVU1463105235', '在线考试', '60', '236', '提供企业或者学校在线考试等服务', './Static/thumb/thumb_Test.png', 'wq.weijiabao.com.cn', 'GTrh6rqGJ4H58uDXqV3gb5itvceyZZbYKFZIlX1eS46', '21', 'Test', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('19', 'amD96J1463105313', '小秘书', '61', '236', '企业号的在线客服', './Static/thumb/xiaomishu.png', 'wq.weijiabao.com.cn', 'R0G1wDkjNR3cr4iNF33FbdLUclp9tOsrbsTp3D97kae', '22', 'Secretary', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('20', 'bIpAGp1463105585', '微课堂', '62', '236', '可报名上课，供线上交流', './Static/thumb/xiaoketang.png', 'wq.weijiabao.com.cn', 'cceaTwUakwjaQGxmiYau0QiJQhxQ8KY2Jdb1X9h1HwR', '23', 'Micro_class', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('21', 'KgMZqv1463105662', '企业沙龙', '63', '236', '主要为线下活动，组织相关人员一起活动', './Static/thumb/qiyeshalong.png', 'wq.weijiabao.com.cn', 'ViMLqR1TdgReNCxC7vKpE1JqnLc2LPm5LOWTRNaj1nK', '24', 'Company_salon', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('22', 'HHEUTT1463105812', '企业官网 ', '64', '236', '企业官网 ', './Static/thumb/thumb_Home.png', 'wq.weijiabao.com.cn', 'cmd29kx74wcC3b2tHZob6c7HQwxu2awxhQpiDN2JJJJ', '27', 'Offical_website', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('23', 'lDRm3X1463105893', '通知公告', '77', '236', '可以发布通知或公告', './Static/thumb/thumb_Xinwen.png', 'wq.weijiabao.com.cn', 'UgnM6ifH9L9Phy3JcYqv8TeLOEWBq4wAIwrQTQGWFmH', '29', 'Xinwen', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('24', 'YhWsyr1463106096', '组织活动', '67', '236', '组织活动', './Static/thumb/thumb_Organization.png', 'wq.weijiabao.com.cn', 'UqLm8BbLVpWR9RBn9ogxLZx3k6v9IJKyejnsKQYAALE', '36', 'Organization', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('25', 'QF1qSP1464156411', '课表', '82', '236', '学生、家长、老师可以查看每天的课程安排', './Static/thumb/thumb_Class_table.png', 'wq.weijiabao.com.cn', 'bByrdMIuJHIsNzph266sxwFWTzrdbqgd0PursZXR8E0', '38', 'Class_table', '1', null, null, '1', '');
INSERT INTO `tp_qymyapp` VALUES ('26', 'zJET4Z1464156650', '电子作业', '83', '236', '老师可以发布电子作业', './Static/thumb/thumb_work.png', 'wq.weijiabao.com.cn', 'wQ8mggeU4ZjfGlStjcRaFTLrYgxRWEEyOT45hmgzzSd', '39', 'Work', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('27', 'zqMnd11464156664', '学生统计', '84', '236', '查看学生在校情况', './Static/thumb/thumb_Student_tongji.png', 'wq.weijiabao.com.cn', 'WJ57FJhUQmn7M5uXkSbaPbAX9Zh1BLlC3tnrPAuIN4g', '40', 'Student_tongji', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('28', 'ahpNZ71464156678', '考试成绩', '85', '236', '查看学生考试成绩', './Static/thumb/thumb_Test_view.png', 'wq.weijiabao.com.cn', 'yFVGYZcMDlvN1Q5x53Dmj5p7Fw59BtTi6wzTDLkO9NR', '41', 'Test_view', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('29', 'm9HqoA1464156726', '在校考勤', '86', '236', '记录学生上课出勤情况', './Static/thumb/thumb_School_attendance.png', 'wq.weijiabao.com.cn', '5IhU2XP7aSpFxGQxK5uaVkcyC6iaXEDWvFyonoUsay2', '42', 'School_attendance', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('30', 'CXkMPm1464156765', '家庭作业', '87', '236', '老师可以发布课后作业', './Static/thumb/thumb_Homework_t.png', 'wq.weijiabao.com.cn', 'ttArcYPOdC2zJfbivdK6ImFy52rMR40lKOSlW7YocjN', '43', 'Homework_t', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('31', '87Ek501472690886', '微信考勤', '1', '246', '微信考勤，时下最流行的考勤形式，高效掌控员工出勤状况。', './Static/thumb/thumb_Attendance.png', 'ydqy.weijiabao.com.cn', 'OANgmFSEB1nloDV65XB7wX0627ditpQqchZF1IdMjbE', '1', 'Attendance', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('32', 'YUESX91472691315', '站内信', '2', '246', '企业邮箱管理应用，帮您随时随地掌握邮箱动态，收发邮件畅通无阻，让您享受更轻快的移动办公体验', './Static/thumb/thumb_Email.png', 'ydqy.weijiabao.com.cn', 'AYXSXxGreGmGnZIXRxX4EXNpejtOycHA5IFCOs8ecwi', '2', 'Email', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('33', '41W22n1472692909', '报销', '3', '246', '让传统繁琐，低效，粗略的报销管理工作，变得便捷，高效，精准！', './Static/thumb/thumb_Applyflow.png', 'ydqy.weijiabao.com.cn', '2Q4kuBDYwaHURRIeHzGwLB2SiOMUZxmG4DKOgrqnMNl', '4', 'Applyflow', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('34', 'FTF59U1472693381', '流程审批', '4', '246', '审批流程完全自定义、审批人员自由配置，满足您个性化的流程审批需求。', './Static/thumb/thumb_Workflow.png', 'ydqy.weijiabao.com.cn', 'PRrHC6BvUMe32nrxQPNHFCqKmJTpgCjTdggVz7QJ99E', '5', 'Workflow', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('35', '0kQMYV1472693673', '任务协作', '5', '246', '任务管理应用，轻松安排您与团队每一天的工作分派，实时掌握工作进度，有效提高您和团队的工作效率。', './Static/thumb/thumb_Task.png', 'ydqy.weijiabao.com.cn', 'aOnizRph2vOe2PMZxs2SZsOLorPZcuinncVioFWAdt4', '6', 'Task', '1', null, null, '1', '');
INSERT INTO `tp_qymyapp` VALUES ('36', 'AkJw8G1472693908', '通讯录', '6', '246', '员工通讯录快速共享，常用、保密联系人自由设置。', './Static/thumb/thumb_Address.png', 'ydqy.weijiabao.com.cn', '21zKsMKvBw1qztdsXlG5QlggPdiu09EHYSDnPD7v96q', '8', 'Address', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('37', 'w2xqp61472694057', '问卷调查', '7', '246', '调研应用，实时收集来自团队的宝贵意见，数据分析直观明了，有效提高您的调研质量。', './Static/thumb/thumb_Research.png', 'ydqy.weijiabao.com.cn', 'DrEpDjcydowFExBiC4TzlRm4yduSt0fBOy6kMJ0F7Sr', '9', 'Research', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('38', 'G1On0d1472694208', '请假', '8', '246', '及时的消息提醒,简单的处理方式,精简的审批流程,方便您及时高效处理请假申请。', './Static/thumb/thumb_Leave.png', 'ydqy.weijiabao.com.cn', 'TgHWX6mTnl5hXXuR4pEOxG9SIe5gs14H5wbpsJ15U4G', '11', 'Leave', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('39', 'YixKMW1472694384', '微名片', '9', '246', '创建个性名片,收纳海量好友,是一款时尚又新潮,简单又好用的电子名片管理应用。', './Static/thumb/thumb_Card.png', 'ydqy.weijiabao.com.cn', 'BkIIe0wWTRotxw4EF3Kjd4aOFExZ0ozcGnvgFe2xq1o', '12', 'Card', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('40', 'RWliAF1472694525', '会议室预定', '10', '246', '高效的会议室预定管理应用,解决您烦恼的会议室预定管理问题。', './Static/thumb/thumb_Meet.png', 'ydqy.weijiabao.com.cn', 'iYyAu769ZY4lofPCO9bYPqvQxgDdxpUyV3aPhWLvHhx', '13', 'Meet', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('41', 'XIzmmU1472695619', '工作汇报', '11', '246', '简洁直观，方便易用。', './Static/thumb/thumb_Day.png', 'ydqy.weijiabao.com.cn', 'MWH4eQrj8VydcxvREvhRdbjj7qCN3yCpfqjKqnaUOg8', '14', 'Day', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('42', 't7pHxy1472695796', '借书', '12', '246', '借书', './Static/thumb/thumb_Borrow_books.png', 'ydqy.weijiabao.com.cn', 'GPIRpZ5er8fp7KhAhOMvhLRnXB6UFMBlegWn0weePx4', '17', 'Borrow_books', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('43', 'D3LwOw1472695946', '离职', '13', '246', '离职', './Static/thumb/thumb_Quit.png', 'ydqy.weijiabao.com.cn', 'acszfcO2W7AiI2Z9yyLYWL6BOgKnD8U8pZieAV7v9v8', '18', 'Quit', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('44', 'ixQwsK1472696084', '小秘书', '14', '246', '企业号的在线客服', './Static/thumb/xiaomishu.png', 'ydqy.weijiabao.com.cn', 'x2kdFRKXPJ4o8S7xaZgO0jkegyFe1V8NTa2oWugYMA8', '22', 'Secretary', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('45', '2vIuwH1472696224', '通知公告', '15', '246', '可以发布通知或公告', './Static/thumb/thumb_Xinwen.png', 'ydqy.weijiabao.com.cn', 'zFVtnxboQqNAdbICb8qAZ9S6kzxfqdoC1sTjj71U1yf', '29', 'Xinwen', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('46', 'wmBwI41472696344', '组织活动', '16', '246', '组织活动', './Static/thumb/thumb_Organization.png', 'ydqy.weijiabao.com.cn', 'CkCmqEOVnVn1k8UlCKw74JN43zPopccQs71B4iSpzbR', '36', 'Organization', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('47', 'uOKAy91472696473', '考试成绩', '17', '246', '查看学生考试成绩', './Static/thumb/thumb_Test_view.png', 'ydqy.weijiabao.com.cn', 't7Opj3ZWLviAL3tGMNJ5OkM8jJPGeCC344n7MHMbPz5', '41', 'Test_view', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('48', '8bhZhk1472696589', '课表', '18', '246', '学生、家长、老师可以查看每天的课程安排', './Static/thumb/thumb_Class_table.png', 'ydqy.weijiabao.com.cn', 'WJtd905jZ3VB2zlypOc7HsOMZJ3uTnfJtBful7ocB9x', '38', 'Class_table', '1', null, null, '1', null);
INSERT INTO `tp_qymyapp` VALUES ('49', 'AwrWfE1472712931', '投票', '0', '246', '快速发起投票，数据自动统计，实时结果显示，为您节省宝贵的时间。', './Static/thumb/thumb_Vote.png', 'ydqy.weijiabao.com.cn', '2EGSDZJ9QHJXKYygVyvxvEsL2YKnEKcmVGbbW1wPksA', '3', 'Vote', '2', null, null, '1', null);

-- ----------------------------
-- Table structure for `tp_qynav`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qynav`;
CREATE TABLE `tp_qynav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qynav
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qynews`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qynews`;
CREATE TABLE `tp_qynews` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `pic` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qynews
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyorganization_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyorganization_activity`;
CREATE TABLE `tp_qyorganization_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `range` varchar(255) DEFAULT NULL,
  `type` text,
  `start_time` varchar(16) DEFAULT NULL,
  `end_time` varchar(16) DEFAULT NULL,
  `introduce` text,
  `sponsor` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `dead_time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyorganization_activity
-- ----------------------------
INSERT INTO `tp_qyorganization_activity` VALUES ('1', '236', '宁波海曙区丽园北路755号9楼', '29.888133', '121.545284', '1000', '培训会议', '1467266400', '1467279000', '测试功能', '小邱', '培训', 'sfjie19871113', '1467215700');
INSERT INTO `tp_qyorganization_activity` VALUES ('2', '236', '测试', '', '', '1000', '培训会议', '1464680100', '1464771000', '活动介绍', '测试', '测试', 'sfjie19871113', '1464688500');
INSERT INTO `tp_qyorganization_activity` VALUES ('3', '236', '丽园北路755', '', '', '1000', '文体活动', '1464954000', '1465027500', '活动介绍', 'vbb', '活动测试', 'sfjie19871113', '1464951600');
INSERT INTO `tp_qyorganization_activity` VALUES ('4', '236', '6788', '', '', '133', '培训会议', '1464660300', '1465978800', '1333', '134', '234', '15990093987', '1465362300');
INSERT INTO `tp_qyorganization_activity` VALUES ('5', '236', '4560', '', '', '46780', '培训会议', '1465373100', '1466167200', '346u还好吧v', '345', '245', '15990093987', '1464770100');
INSERT INTO `tp_qyorganization_activity` VALUES ('6', '236', '电子产业园区', '', '', '1000', '文体活动', '1465192800', '1465279200', '测试啊哈哈哈哈哈', '哈哈哈', '测试活动', 'sfjie19871113', '1465196400');
INSERT INTO `tp_qyorganization_activity` VALUES ('7', '236', '电子产业园区', '', '', '1000', '文体活动', '1465192800', '1465279200', '测试啊哈哈哈哈哈', '哈哈哈', '测试活动', 'sfjie19871113', '1465196400');
INSERT INTO `tp_qyorganization_activity` VALUES ('8', '236', '原之泰', '', '', '1000', '文体活动', '1465280400', '1465311600', '测的', '测试', '活动测试', 'fxl_0907show', '1465273800');

-- ----------------------------
-- Table structure for `tp_qyorganization_my`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyorganization_my`;
CREATE TABLE `tp_qyorganization_my` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `start_time` varchar(16) DEFAULT NULL,
  `end_time` varchar(16) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '用户状态',
  `check` varchar(255) DEFAULT NULL COMMENT '审核人',
  `theme` varchar(255) DEFAULT NULL,
  `apply_time` varchar(16) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dead_time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyorganization_my
-- ----------------------------
INSERT INTO `tp_qyorganization_my` VALUES ('1', '1', '宁波海曙区丽园北路755号9楼', '1464674400', '1464687000', '236', 'qiuliyun001', '1', 'sfjie19871113', '培训', '1464663956', '18858085299', '1712012281@qq.com', '1464674100');
INSERT INTO `tp_qyorganization_my` VALUES ('2', '1', '宁波海曙区丽园北路755号9楼', '1467266400', '1467279000', '236', 'xiao_158678', '0', null, '培训', '1464836136', '15988690976', '2669984307@qq.com', '1467215700');
INSERT INTO `tp_qyorganization_my` VALUES ('3', '7', '电子产业园区', '1465192800', '1465279200', '236', 'c2217wz', '0', null, '测试活动', '1465193204', '15757856554', '2217492801@qq.com', '1465196400');
INSERT INTO `tp_qyorganization_my` VALUES ('4', '1', '宁波海曙区丽园北路755号9楼', '1467266400', '1467279000', '236', '15990093987', '2', 'sfjie19871113', '培训', '1465261154', '15990093987', '1334@qq.com', '1467215700');
INSERT INTO `tp_qyorganization_my` VALUES ('5', '8', '原之泰', '1465280400', '1465311600', '236', 'c2217wz', '1', 'fxl_0907show', '活动测试', '1465269817', '15757856554', '2217492801@qq.com', '1465273800');
INSERT INTO `tp_qyorganization_my` VALUES ('6', '8', '原之泰', '1465280400', '1465311600', '236', 'yang15824209289', '0', null, '活动测试', '1465269841', '15824209289', '1277462310@qq.com', '1465273800');
INSERT INTO `tp_qyorganization_my` VALUES ('7', '8', '原之泰', '1465280400', '1465311600', '236', 'yang15824209289', '0', null, '活动测试', '1465269842', '15824209289', '1277462310@qq.com', '1465273800');

-- ----------------------------
-- Table structure for `tp_qyorganization_sign_in`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyorganization_sign_in`;
CREATE TABLE `tp_qyorganization_sign_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(255) DEFAULT NULL,
  `activity_id` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `creatime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyorganization_sign_in
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyorganization_type`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyorganization_type`;
CREATE TABLE `tp_qyorganization_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyorganization_type
-- ----------------------------
INSERT INTO `tp_qyorganization_type` VALUES ('2', '236', '文体活动');
INSERT INTO `tp_qyorganization_type` VALUES ('3', '236', '培训会议');
INSERT INTO `tp_qyorganization_type` VALUES ('5', '246', '娱乐活动');
INSERT INTO `tp_qyorganization_type` VALUES ('6', '246', '培训活动');
INSERT INTO `tp_qyorganization_type` VALUES ('7', '246', '体育活动');

-- ----------------------------
-- Table structure for `tp_qyow_app`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyow_app`;
CREATE TABLE `tp_qyow_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `todepart` varchar(255) DEFAULT NULL,
  `is_all` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyow_app
-- ----------------------------
INSERT INTO `tp_qyow_app` VALUES ('1', '名称', '1463107469', 'https://qy.weixin.qq.com/cgi-bin/home#app/select', './Uploads/Knowledge/57353f8d355a3.png', '236', '', '', '1');

-- ----------------------------
-- Table structure for `tp_qyow_classify`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyow_classify`;
CREATE TABLE `tp_qyow_classify` (
  `user_id` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyow_classify
-- ----------------------------
INSERT INTO `tp_qyow_classify` VALUES ('236', '1', '公司动态', '1', '1464162975');
INSERT INTO `tp_qyow_classify` VALUES ('236', '2', '政策公告', '2', '1464162998');

-- ----------------------------
-- Table structure for `tp_qyow_news`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyow_news`;
CREATE TABLE `tp_qyow_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `time` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `classify_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyow_news
-- ----------------------------
INSERT INTO `tp_qyow_news` VALUES ('1', './Uploads/Knowledge/57455aded6060.jpg', '公司动态', '公司动态', '1464163038', '236', '公司动态', '小米', '1');

-- ----------------------------
-- Table structure for `tp_qyow_topic`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyow_topic`;
CREATE TABLE `tp_qyow_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyow_topic
-- ----------------------------
INSERT INTO `tp_qyow_topic` VALUES ('1', './Uploads/Knowledge/57455a391eeb0.jpg', '236', '1', 'https://www.weijiabao.com.cn', '1464663041');

-- ----------------------------
-- Table structure for `tp_qyphoto_co_ablum`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyphoto_co_ablum`;
CREATE TABLE `tp_qyphoto_co_ablum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `is_open` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL COMMENT '相册描述',
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyphoto_co_ablum
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyphoto_co_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyphoto_co_comment`;
CREATE TABLE `tp_qyphoto_co_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_id` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) NOT NULL DEFAULT '0',
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyphoto_co_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyphoto_co_pic`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyphoto_co_pic`;
CREATE TABLE `tp_qyphoto_co_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ablum_id` varchar(255) NOT NULL DEFAULT '',
  `img` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyphoto_co_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyphoto_co_zan`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyphoto_co_zan`;
CREATE TABLE `tp_qyphoto_co_zan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_id` varchar(255) NOT NULL DEFAULT '',
  `wecha_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyphoto_co_zan
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyqiangdan_chong`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyqiangdan_chong`;
CREATE TABLE `tp_qyqiangdan_chong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyqiangdan_chong
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyqiangdan_store`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyqiangdan_store`;
CREATE TABLE `tp_qyqiangdan_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyqiangdan_store
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyqiangdan_task`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyqiangdan_task`;
CREATE TABLE `tp_qyqiangdan_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_address` varchar(255) DEFAULT NULL,
  `to_address` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `note` text,
  `user_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1未抢单 2进行中 3已完成 4被驳回',
  `order_id` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL COMMENT '信息来源',
  `time` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `to_tel` varchar(255) DEFAULT NULL,
  `store_tel` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `jd_time` varchar(255) DEFAULT NULL,
  `finish_time` varchar(255) DEFAULT NULL,
  `jiedanren` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyqiangdan_task
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyqiangdan_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyqiangdan_user`;
CREATE TABLE `tp_qyqiangdan_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyqiangdan_user
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyquit_check`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyquit_check`;
CREATE TABLE `tp_qyquit_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` varchar(100) DEFAULT NULL,
  `user_two` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0为未审核1为审核2为驳回',
  `pid` int(11) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyquit_check
-- ----------------------------
INSERT INTO `tp_qyquit_check` VALUES ('254', 'fxl_0907show', 'c2217wz', '236', '1', '91', '1465269430');
INSERT INTO `tp_qyquit_check` VALUES ('255', 'sfjie19871113', 'qiuliyun001', '236', '2', '92', '1465709711');
INSERT INTO `tp_qyquit_check` VALUES ('256', 'c2217wz', 'c2217wz', '236', '2', '93', '1465719317');

-- ----------------------------
-- Table structure for `tp_qyquit_config`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyquit_config`;
CREATE TABLE `tp_qyquit_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `audit` text,
  `time` int(10) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `todepart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyquit_config
-- ----------------------------
INSERT INTO `tp_qyquit_config` VALUES ('1', '236', '1', 'a:1:{i:1;a:3:{s:11:\"auditselect\";s:1:\"3\";s:8:\"username\";s:10:\"邱丽云;\";s:9:\"auditname\";s:4:\"172;\";}}', '1464661067', null, null);
INSERT INTO `tp_qyquit_config` VALUES ('2', '246', '1', 'a:1:{i:1;a:3:{s:11:\"auditselect\";s:1:\"3\";s:8:\"username\";s:10:\"邱丽云;\";s:9:\"auditname\";s:4:\"325;\";}}', '1472697460', null, null);

-- ----------------------------
-- Table structure for `tp_qyquit_handle`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyquit_handle`;
CREATE TABLE `tp_qyquit_handle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyquit_handle
-- ----------------------------
INSERT INTO `tp_qyquit_handle` VALUES ('1', '91', 'fxl_0907show', 'task', 'c2217wz', '236', '1465269430', '1');
INSERT INTO `tp_qyquit_handle` VALUES ('2', '91', 'fxl_0907show', 'task', 'chun1243', '236', '1465269430', '0');
INSERT INTO `tp_qyquit_handle` VALUES ('3', '91', 'fxl_0907show', 'offic', 'c2217wz', '236', '1465269430', '2');
INSERT INTO `tp_qyquit_handle` VALUES ('4', '91', 'fxl_0907show', 'doc', 'fxl_0907show', '236', '1465269430', '0');
INSERT INTO `tp_qyquit_handle` VALUES ('5', '93', 'c2217wz', 'task', 'c2217wz', '236', '1465719269', '0');
INSERT INTO `tp_qyquit_handle` VALUES ('6', '93', 'c2217wz', 'offic', 'c2217wz', '236', '1465719269', '0');
INSERT INTO `tp_qyquit_handle` VALUES ('7', '93', 'c2217wz', 'doc', 'c2217wz', '236', '1465719269', '0');

-- ----------------------------
-- Table structure for `tp_qyquit_index`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyquit_index`;
CREATE TABLE `tp_qyquit_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `quit_time` varchar(30) DEFAULT NULL,
  `check_now` varchar(32) DEFAULT NULL,
  `check_order` varchar(500) DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL COMMENT '离职原因',
  `status` tinyint(1) DEFAULT '0',
  `time` varchar(16) DEFAULT NULL,
  `tasker` varchar(255) DEFAULT NULL,
  `docer` varchar(255) DEFAULT NULL,
  `officer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyquit_index
-- ----------------------------
INSERT INTO `tp_qyquit_index` VALUES ('91', '236', 'fxl_0907show', '2016-06-07 19:0', 'c2217wz', 'a:1:{i:0;s:7:\"c2217wz\";}', '测试', '1', '1465269398', ',122,127', ',139', ',122');
INSERT INTO `tp_qyquit_index` VALUES ('92', '236', 'sfjie19871113', '2016-06-13 8:30', '0', 'a:1:{i:0;s:11:\"qiuliyun001\";}', '个人原因', '2', '1465709680', ',122', ',172', ',172');
INSERT INTO `tp_qyquit_index` VALUES ('93', '236', 'c2217wz', '2016-06-14 16:20', '0', 'a:1:{i:0;s:7:\"c2217wz\";}', '测试', '2', '1465719234', ',,,122', ',122', ',122');

-- ----------------------------
-- Table structure for `tp_qyresearch`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyresearch`;
CREATE TABLE `tp_qyresearch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `type` varchar(100) NOT NULL COMMENT '调研类型',
  `end_time` varchar(16) DEFAULT NULL,
  `departid` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `restrictions` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1未发布2已发布3已暂停4已结束',
  `num` int(11) DEFAULT '0',
  `alldepart` text,
  PRIMARY KEY (`id`),
  KEY `tpye` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyresearch
-- ----------------------------
INSERT INTO `tp_qyresearch` VALUES ('69', '微佳宝', '品牌营销', '1483199700', '|', '236', '1', '2', '0', '8|');
INSERT INTO `tp_qyresearch` VALUES ('70', '测试', '产品测试', '1464398400', '1', '236', '1', '4', '0', '17|16|15|14|13|12|11|10|9|8|7|6|5|4|2|3|1|');

-- ----------------------------
-- Table structure for `tp_qyresearch_an`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyresearch_an`;
CREATE TABLE `tp_qyresearch_an` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `answer` text,
  `user_id` int(11) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyresearch_an
-- ----------------------------
INSERT INTO `tp_qyresearch_an` VALUES ('4', '69', '15990093987', 'a:2:{i:1;a:1:{i:0;s:3:\"111\";}i:2;a:1:{i:0;s:1:\"0\";}}', '236', '1464168267');
INSERT INTO `tp_qyresearch_an` VALUES ('5', '69', 'c2217wz', 'a:2:{i:1;a:1:{i:0;s:1:\"c\";}i:2;a:1:{i:0;s:1:\"0\";}}', '236', '1464225470');
INSERT INTO `tp_qyresearch_an` VALUES ('6', '70', 'c2217wz', 'a:1:{i:3;a:1:{i:0;s:1:\"0\";}}', '236', '1464225770');
INSERT INTO `tp_qyresearch_an` VALUES ('7', '70', '15990093987', 'a:1:{i:3;a:1:{i:0;s:1:\"0\";}}', '236', '1464225773');
INSERT INTO `tp_qyresearch_an` VALUES ('8', '70', 'yang15824209289', 'N;', '236', '1464226006');
INSERT INTO `tp_qyresearch_an` VALUES ('9', '70', 'Amour_Alen', 'a:1:{i:3;a:1:{i:0;s:1:\"0\";}}', '236', '1464226205');
INSERT INTO `tp_qyresearch_an` VALUES ('10', '70', 'Amour_Alen', 'a:1:{i:3;a:1:{i:0;s:1:\"0\";}}', '236', '1464226206');
INSERT INTO `tp_qyresearch_an` VALUES ('11', '70', 'qing482x', 'a:1:{i:3;a:1:{i:0;s:1:\"0\";}}', '236', '1464228951');
INSERT INTO `tp_qyresearch_an` VALUES ('12', '69', 'qing482x', 'a:2:{i:1;a:1:{i:0;s:6:\"啦啦\";}i:2;a:1:{i:0;s:1:\"0\";}}', '236', '1464336624');
INSERT INTO `tp_qyresearch_an` VALUES ('13', '69', 'xiao_158678', 'a:2:{i:1;a:1:{i:0;s:30:\"微佳宝，智慧成就梦想\";}i:2;a:1:{i:0;s:1:\"0\";}}', '236', '1464658183');
INSERT INTO `tp_qyresearch_an` VALUES ('14', '70', '7c981696f472a7b7e29b15185bb25cda', 'a:1:{i:3;a:1:{i:0;s:1:\"0\";}}', '236', '1465205373');
INSERT INTO `tp_qyresearch_an` VALUES ('15', '69', 'sfjie19871113', 'a:2:{i:1;a:1:{i:0;s:30:\"微佳宝，智慧成就梦想\";}i:2;a:1:{i:0;s:1:\"0\";}}', '236', '1467869068');
INSERT INTO `tp_qyresearch_an` VALUES ('16', null, null, 'N;', null, '1467869068');
INSERT INTO `tp_qyresearch_an` VALUES ('17', null, null, 'N;', null, '1467869078');

-- ----------------------------
-- Table structure for `tp_qyresearch_ques`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyresearch_ques`;
CREATE TABLE `tp_qyresearch_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `number` varchar(32) NOT NULL COMMENT '编号',
  `p_description` varchar(200) DEFAULT NULL,
  `options` text,
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '调研总人数',
  `disorder` int(11) NOT NULL COMMENT '填入编号',
  `an_count` longtext,
  `jdt` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyresearch_ques
-- ----------------------------
INSERT INTO `tp_qyresearch_ques` VALUES ('1', '236', '69', '3', '1', '微佳宝的口号是？', 'a:1:{i:1;s:0:\"\";}', '0', '0', null, '#112#112#111#c#啦啦#微佳宝，智慧成就梦想#微佳宝，智慧成就梦想');
INSERT INTO `tp_qyresearch_ques` VALUES ('2', '236', '69', '1', '2', '公司的成立时间是？', 'a:4:{i:0;s:8:\"2013.3.6\";i:1;s:8:\"2013.5.6\";i:2;s:8:\"2014.3.5\";i:3;s:8:\"2014.5.6\";}', '0', '0', 'a:4:{i:0;i:5;i:1;i:2;i:2;i:0;i:3;i:0;}', null);
INSERT INTO `tp_qyresearch_ques` VALUES ('3', '236', '70', '1', '1', '问题1', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', '0', '0', 'a:2:{i:0;i:6;i:1;i:0;}', null);

-- ----------------------------
-- Table structure for `tp_qysalon_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qysalon_activity`;
CREATE TABLE `tp_qysalon_activity` (
  `user_id` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(255) DEFAULT NULL,
  `start_time` varchar(16) DEFAULT NULL,
  `end_time` varchar(16) DEFAULT NULL,
  `introduce` text,
  `sponsor` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `dead_time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qysalon_activity
-- ----------------------------
INSERT INTO `tp_qysalon_activity` VALUES ('236', '1', '活动地点活动地点活动地点', '1479441000', '1482566100', '活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍', '东裕小学教研组', '活动2', null, '1477403400');
INSERT INTO `tp_qysalon_activity` VALUES ('236', '2', '活动地点活动地点活', '1479981600', '1483174800', '活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍活动介绍', '东裕小学', '活动1', null, '1477906200');

-- ----------------------------
-- Table structure for `tp_qysalon_my`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qysalon_my`;
CREATE TABLE `tp_qysalon_my` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `start_time` varchar(16) DEFAULT NULL,
  `end_time` varchar(16) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '用户状态',
  `theme` varchar(255) DEFAULT NULL,
  `apply_time` varchar(16) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dead_time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qysalon_my
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qysecretary_advice`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qysecretary_advice`;
CREATE TABLE `tp_qysecretary_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `suggest` longtext,
  `theme` varchar(255) DEFAULT '',
  `subtime` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '用户状态',
  `problem` longtext,
  `nm` tinyint(1) DEFAULT '0',
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qysecretary_advice
-- ----------------------------
INSERT INTO `tp_qysecretary_advice` VALUES ('1', '236', 'sfjie19871113', null, '小学', '1464662407', '2', '赞一个', null, null);

-- ----------------------------
-- Table structure for `tp_qysecretary_back`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qysecretary_back`;
CREATE TABLE `tp_qysecretary_back` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `advice_id` int(11) DEFAULT NULL,
  `content` mediumtext,
  `subtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qysecretary_back
-- ----------------------------
INSERT INTO `tp_qysecretary_back` VALUES ('1', '1', '谢谢您的支持！', '1464662453');

-- ----------------------------
-- Table structure for `tp_qysecretary_tel`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qysecretary_tel`;
CREATE TABLE `tp_qysecretary_tel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(20) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `subtime` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT 'qq',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qysecretary_tel
-- ----------------------------
INSERT INTO `tp_qysecretary_tel` VALUES ('1', '测试1', '0574-55331891', '1464162513', '236', '1712012281');
INSERT INTO `tp_qysecretary_tel` VALUES ('2', '宁波市海曙区丽园北路755号9楼', '0574-55331892', '1472697483', '246', '1712012281');

-- ----------------------------
-- Table structure for `tp_qytable_attendance`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytable_attendance`;
CREATE TABLE `tp_qytable_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `jie` varchar(255) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0' COMMENT '出勤状态，1迟到，2请假，3旷课，4早退，0正常',
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytable_attendance
-- ----------------------------
INSERT INTO `tp_qytable_attendance` VALUES ('1', '20160602', '139', '4', '2885', '1', '236');

-- ----------------------------
-- Table structure for `tp_qytable_conf`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytable_conf`;
CREATE TABLE `tp_qytable_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytable_conf
-- ----------------------------
INSERT INTO `tp_qytable_conf` VALUES ('1', '2016-05-25', '2016-07-31', '236');
INSERT INTO `tp_qytable_conf` VALUES ('2', '2016-09-01', '2017-01-31', '246');

-- ----------------------------
-- Table structure for `tp_qytable_course`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytable_course`;
CREATE TABLE `tp_qytable_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytable_course
-- ----------------------------
INSERT INTO `tp_qytable_course` VALUES ('2', '语文', '236');
INSERT INTO `tp_qytable_course` VALUES ('3', '数学', '236');
INSERT INTO `tp_qytable_course` VALUES ('4', '英语', '236');
INSERT INTO `tp_qytable_course` VALUES ('5', '音乐', '236');
INSERT INTO `tp_qytable_course` VALUES ('6', '美术', '236');
INSERT INTO `tp_qytable_course` VALUES ('7', '语文', '246');
INSERT INTO `tp_qytable_course` VALUES ('8', '数学', '246');
INSERT INTO `tp_qytable_course` VALUES ('9', '英语', '246');

-- ----------------------------
-- Table structure for `tp_qytable_cteacher`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytable_cteacher`;
CREATE TABLE `tp_qytable_cteacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacherid` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `classid` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytable_cteacher
-- ----------------------------
INSERT INTO `tp_qytable_cteacher` VALUES ('66', '23', '杨姐', '2811,2812,2813,2817', '201203小蜜蜂队;201107紫葡萄队;201102向日葵中队;测试组', '236', '语文');
INSERT INTO `tp_qytable_cteacher` VALUES ('67', '16', '唐', '2817', '电大;测试组', '236', '语文');
INSERT INTO `tp_qytable_cteacher` VALUES ('68', '11', '陈毛晴', '2811,2827', '201203小蜜蜂队;学校测试', '236', '数学');
INSERT INTO `tp_qytable_cteacher` VALUES ('69', '110', 'shilaoshi', '2885', '一年级一班', '236', '英语');
INSERT INTO `tp_qytable_cteacher` VALUES ('70', '176', '史芳杰', '2919', '一年级一班', '236', '美术');
INSERT INTO `tp_qytable_cteacher` VALUES ('71', '112', '唐', '', '', '236', '音乐');
INSERT INTO `tp_qytable_cteacher` VALUES ('73', '331', '蔡文知', '2927', '易跨购', '246', '语文');

-- ----------------------------
-- Table structure for `tp_qytable_table`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytable_table`;
CREATE TABLE `tp_qytable_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(255) DEFAULT NULL COMMENT '班级id',
  `jie` varchar(255) DEFAULT NULL COMMENT '第几节课',
  `week` varchar(255) DEFAULT NULL COMMENT '星期几',
  `cname` varchar(255) DEFAULT NULL COMMENT '课程id',
  `user_id` varchar(255) DEFAULT NULL,
  `zhou` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytable_table
-- ----------------------------
INSERT INTO `tp_qytable_table` VALUES ('13', '', '3', '1', '英语', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('14', '', '2', '3', '音乐', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('15', '', '3', '5', '语文', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('16', '', '5', '5', '音乐', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('17', '', '3', '7', '数学', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('18', '2859', '1', '1', '音乐', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('19', '2859', '1', '2', '数学', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('20', '2859', '7', '5', '数学', '236', '2');
INSERT INTO `tp_qytable_table` VALUES ('24', '2885', '7', '4', '英语', '236', '2');

-- ----------------------------
-- Table structure for `tp_qytable_time`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytable_time`;
CREATE TABLE `tp_qytable_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jie` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytable_time
-- ----------------------------
INSERT INTO `tp_qytable_time` VALUES ('16', '1', '08:00', '08:45');
INSERT INTO `tp_qytable_time` VALUES ('17', '2', '09:00', '09:45');
INSERT INTO `tp_qytable_time` VALUES ('18', '3', '10:00', '10:45');
INSERT INTO `tp_qytable_time` VALUES ('19', '4', '11:00', '11:45');
INSERT INTO `tp_qytable_time` VALUES ('20', '5', '14:00', '14:45');
INSERT INTO `tp_qytable_time` VALUES ('21', '6', '15:45', '15:45');
INSERT INTO `tp_qytable_time` VALUES ('22', '7', '16:00', '16:45');
INSERT INTO `tp_qytable_time` VALUES ('23', '8', '17:00', '17:45');

-- ----------------------------
-- Table structure for `tp_qytagusers`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytagusers`;
CREATE TABLE `tp_qytagusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(255) DEFAULT NULL,
  `tagid` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytagusers
-- ----------------------------
INSERT INTO `tp_qytagusers` VALUES ('203', '学生', '0', '236', 'qiuliyun001', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('204', '学生', '0', '236', 'fxl_0907show', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('205', '家长', '1', '236', 'c2217wz', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('206', '老师', '2', '236', 'sfjie1987', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('207', '老师', '2', '236', 'qing482x', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('208', '班主任', '3', '236', 'sfjie1987', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('209', '班主任', '3', '236', '15990093987', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('210', '班主任', '3', '236', 'qing482x', '1467790408');
INSERT INTO `tp_qytagusers` VALUES ('214', 'teacher', '0', '246', 'cwz_123', '1472698613');
INSERT INTO `tp_qytagusers` VALUES ('215', 'parent', '1', '246', 'qiu_liyun1', '1472698613');
INSERT INTO `tp_qytagusers` VALUES ('216', 'student', '2', '246', 'shilaoshi', '1472698613');

-- ----------------------------
-- Table structure for `tp_qytask`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytask`;
CREATE TABLE `tp_qytask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order` varchar(100) DEFAULT NULL,
  `helper` varchar(100) DEFAULT NULL,
  `end_time` varchar(16) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `mktime` varchar(16) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `fuzeren` varchar(200) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '内容',
  `head` varchar(100) DEFAULT NULL,
  `follow` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytask
-- ----------------------------
INSERT INTO `tp_qytask` VALUES ('1', '236', '2', '史芳杰;', '1463068800', 'c2217wz', '1463107595', null, 'cwz;', '任务', '14|', '4|');
INSERT INTO `tp_qytask` VALUES ('2', '236', '3', '方小龙;', '1463155200', 'c2217wz', '1463107778', null, 'cwz;', '任务2', '14|', '10|');
INSERT INTO `tp_qytask` VALUES ('3', '236', '3', 'cwz;李园园;尹益静;邱丽云;', '1464624000', 'wym030508', '1463667167', null, 'cwz;', '测试企业号', '14|', '14|17|7|5|');
INSERT INTO `tp_qytask` VALUES ('4', '236', '3', '邱丽云;杨姐;', '1464192000', 'yang15824209289', '1464165578', null, '邱丽云;杨姐;', '明日培训会议', '5|23|', '53|');
INSERT INTO `tp_qytask` VALUES ('5', '236', '3', 'cwz;', '1467216000', 'xiao_158678', '1464657862', null, '邱丽云;', '123', '5|', '5|');
INSERT INTO `tp_qytask` VALUES ('6', '236', '1', '唐;', '1464710400', '15990093987', '1464758952', null, '唐;', '1', '112|', '112|');
INSERT INTO `tp_qytask` VALUES ('7', '236', '3', '方小龙;', '1464969600', 'sfjie19871113', '1464934334', null, 'cwz;', '测试', '122|', '139|');
INSERT INTO `tp_qytask` VALUES ('8', '236', '3', '方小龙;', '1464969600', 'sfjie19871113', '1464934449', null, 'cwz;', '测试', '122|', '139|');
INSERT INTO `tp_qytask` VALUES ('9', '236', '3', '唐;', '1465142400', '15990093987', '1465179177', null, '唐;', '23455', '112|', '112|');
INSERT INTO `tp_qytask` VALUES ('10', '236', '3', '唐;', '1465142400', '15990093987', '1465180023', null, '唐;', '3455', '112|', '112|');
INSERT INTO `tp_qytask` VALUES ('11', '236', '3', '唐;', '1465142400', '15990093987', '1465181627', null, '唐;', '2233', '112|', '112|');
INSERT INTO `tp_qytask` VALUES ('12', '236', '', '方小龙;', '1465142400', 'c2217wz', '1465191497', null, 'cwz;', '任务', '122|', '122|139|');
INSERT INTO `tp_qytask` VALUES ('13', '236', '', '邱丽云;', '1483113600', 'sfjie19871113', '1465707760', null, 'cwz;', '企业号的测试工作', '122|', '172|');

-- ----------------------------
-- Table structure for `tp_qytask_discuss`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytask_discuss`;
CREATE TABLE `tp_qytask_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL COMMENT '任务id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `content` varchar(255) DEFAULT NULL COMMENT '讨论内容',
  `posttime` int(10) DEFAULT NULL COMMENT '发表时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='任务讨论表';

-- ----------------------------
-- Records of tp_qytask_discuss
-- ----------------------------
INSERT INTO `tp_qytask_discuss` VALUES ('1', '236', 'qiuliyun001', '4', '1', '收到，晚一点碰面细谈！', '1464165661');
INSERT INTO `tp_qytask_discuss` VALUES ('2', '236', 'yang15824209289', '4', '1', '可以的。', '1464165828');
INSERT INTO `tp_qytask_discuss` VALUES ('3', '236', 'xiao_158678', '5', '1', '好的。一定要完成任务', '1464657994');
INSERT INTO `tp_qytask_discuss` VALUES ('4', '236', 'c2217wz', '5', '1', '好色彩超级好吃 v 不能', '1464658118');
INSERT INTO `tp_qytask_discuss` VALUES ('5', '236', 'c2217wz', '5', '1', '当初规划官方公布 vvv 官方飞机工程师东莞 v 从 vv 红红火火斑斑驳驳把 v饭否个反反复复的等待疯疯癫癫的点点滴滴代购 v 爸爸把笔记本 vvv法国韩国官方发放共和国腹地腹背不好', '1464683138');
INSERT INTO `tp_qytask_discuss` VALUES ('6', '236', 'c2217wz', '7', '1', 'v 那个德国男女结合 v 不过哥哥干干净净那部分大概会被 vv', '1464934425');
INSERT INTO `tp_qytask_discuss` VALUES ('7', '236', '15990093987', '9', '1', '我24他刚刚回家哦', '1465179194');
INSERT INTO `tp_qytask_discuss` VALUES ('8', '236', '15990093987', '9', '1', '的方法v不帮你解决么么么么扭扭捏捏不vvvv', '1465179206');
INSERT INTO `tp_qytask_discuss` VALUES ('9', '236', '15990093987', '10', '1', '2233', '1465180045');
INSERT INTO `tp_qytask_discuss` VALUES ('10', '236', '', '12', '1', '啊呵呵呵呵呵呵呵呵爸爸不会红红火火斑斑驳驳不会吧', '1465191565');
INSERT INTO `tp_qytask_discuss` VALUES ('11', '236', '', '12', '1', '', '1465191574');
INSERT INTO `tp_qytask_discuss` VALUES ('12', '236', '', '13', '1', '讨论区的字体到底能写多少个呢？', '1465707792');
INSERT INTO `tp_qytask_discuss` VALUES ('13', '236', '', '13', '1', '这个粗吧 v 非常不能尽快看看 v 风愁肠百结酒吧 v 重新统一和 vv 你看看从 v 尽可能把 v 小蛋糕 vv 从此 v 包包被你们vv 斑斑驳驳比较纠结女 v 从此风风光光不背后将计就计江南女包包包包v 包包包包韩版包包吧vvvv 斑斑驳驳变本加厉蛮不错的若宝贝', '1465709042');
INSERT INTO `tp_qytask_discuss` VALUES ('14', '236', '', '13', '1', '不限吧', '1465709062');

-- ----------------------------
-- Table structure for `tp_qytask_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytask_record`;
CREATE TABLE `tp_qytask_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `wecha_id` varchar(64) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '该任务的流程类型1创建2完成3讨论4转发',
  `status` tinyint(1) DEFAULT NULL COMMENT '1完成0未完成',
  `outtime` tinyint(1) DEFAULT NULL COMMENT '1为结束0未结束',
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytask_record
-- ----------------------------
INSERT INTO `tp_qytask_record` VALUES ('1', '1', 'c2217wz', '236', '2', null, null, '1463107628');
INSERT INTO `tp_qytask_record` VALUES ('2', '4', 'qiuliyun001', '236', '3', null, null, '1464165661');
INSERT INTO `tp_qytask_record` VALUES ('3', '4', 'yang15824209289', '236', '3', null, null, '1464165828');
INSERT INTO `tp_qytask_record` VALUES ('4', '5', 'xiao_158678', '236', '3', null, null, '1464657994');
INSERT INTO `tp_qytask_record` VALUES ('5', '5', 'c2217wz', '236', '3', null, null, '1464658118');
INSERT INTO `tp_qytask_record` VALUES ('6', '5', 'c2217wz', '236', '3', null, null, '1464683138');
INSERT INTO `tp_qytask_record` VALUES ('7', '7', 'c2217wz', '236', '3', null, null, '1464934425');
INSERT INTO `tp_qytask_record` VALUES ('8', '9', '15990093987', '236', '3', null, null, '1465179194');
INSERT INTO `tp_qytask_record` VALUES ('9', '9', '15990093987', '236', '3', null, null, '1465179206');
INSERT INTO `tp_qytask_record` VALUES ('10', '10', '15990093987', '236', '3', null, null, '1465180045');
INSERT INTO `tp_qytask_record` VALUES ('11', '12', null, '236', '3', null, null, '1465191565');
INSERT INTO `tp_qytask_record` VALUES ('12', '12', null, '236', '3', null, null, '1465191574');
INSERT INTO `tp_qytask_record` VALUES ('13', '13', null, '236', '3', null, null, '1465707792');
INSERT INTO `tp_qytask_record` VALUES ('14', '13', null, '236', '2', null, null, '1465708522');
INSERT INTO `tp_qytask_record` VALUES ('15', '13', null, '236', '3', null, null, '1465709042');
INSERT INTO `tp_qytask_record` VALUES ('16', '13', null, '236', '3', null, null, '1465709062');

-- ----------------------------
-- Table structure for `tp_qytemplet`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytemplet`;
CREATE TABLE `tp_qytemplet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `version` varchar(45) NOT NULL,
  `utime` int(11) NOT NULL,
  `tem_logo` varchar(128) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytemplet
-- ----------------------------
INSERT INTO `tp_qytemplet` VALUES ('1', 'fwm_gd', '', '0', '', '');
INSERT INTO `tp_qytemplet` VALUES ('2', 'jbq', '', '0', '', '');
INSERT INTO `tp_qytemplet` VALUES ('3', 'jd', '', '0', '', '');
INSERT INTO `tp_qytemplet` VALUES ('4', 'lanrain', '', '0', '', '');
INSERT INTO `tp_qytemplet` VALUES ('5', 'lsfg', '', '0', '', '');
INSERT INTO `tp_qytemplet` VALUES ('6', 'new', '', '0', '', '');
INSERT INTO `tp_qytemplet` VALUES ('7', 'shis', '', '0', '', '');
INSERT INTO `tp_qytemplet` VALUES ('8', 'wkl', '', '0', '', '');

-- ----------------------------
-- Table structure for `tp_qytestall_set`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytestall_set`;
CREATE TABLE `tp_qytestall_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '统考名称',
  `grade` varchar(255) DEFAULT NULL COMMENT '年级',
  `courses` varchar(255) DEFAULT NULL COMMENT '科目',
  `score` varchar(255) DEFAULT NULL COMMENT '满分',
  `time` varchar(255) DEFAULT NULL COMMENT '统考时间',
  `creat_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytestall_set
-- ----------------------------
INSERT INTO `tp_qytestall_set` VALUES ('1', '236', 'computer', '2016年第一学期期中考试', '测试组', '语文', '100', '1464249600', '1464163566');

-- ----------------------------
-- Table structure for `tp_qytestview_score`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytestview_score`;
CREATE TABLE `tp_qytestview_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) DEFAULT NULL COMMENT '建立考试id',
  `course` varchar(255) DEFAULT NULL COMMENT '科目',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `depart` varchar(255) DEFAULT NULL COMMENT '班级',
  `scores` text,
  `ave` varchar(255) DEFAULT NULL COMMENT '平均分',
  `sum` varchar(255) DEFAULT NULL COMMENT '参与人数',
  `user_id` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL COMMENT '微信名',
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytestview_score
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qytestview_set`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytestview_set`;
CREATE TABLE `tp_qytestview_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) DEFAULT '0' COMMENT '统考id',
  `userid` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '考试名称',
  `course` varchar(255) DEFAULT NULL COMMENT '科目',
  `score` varchar(255) DEFAULT NULL COMMENT '满分',
  `place` varchar(255) DEFAULT '本班级' COMMENT '本班级',
  `time` varchar(255) DEFAULT NULL COMMENT '考试时间',
  `depart` varchar(255) DEFAULT NULL COMMENT '班级',
  `wxid` varchar(255) DEFAULT NULL,
  `creat_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytestview_set
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qytest_answer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytest_answer`;
CREATE TABLE `tp_qytest_answer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `wecha_id` varchar(20) NOT NULL DEFAULT '',
  `answer` varchar(1000) DEFAULT NULL,
  `score` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytest_answer
-- ----------------------------
INSERT INTO `tp_qytest_answer` VALUES ('209', '637', '66', 'sfjie19871113', 'a:1:{i:0;i:1;}', '0');
INSERT INTO `tp_qytest_answer` VALUES ('210', '638', '66', 'sfjie19871113', 'a:1:{i:0;i:1;}', '0');
INSERT INTO `tp_qytest_answer` VALUES ('211', '641', '66', 'c2217wz', 'a:1:{i:0;i:1;}', '0');
INSERT INTO `tp_qytest_answer` VALUES ('212', '642', '65', 'fxl_0907show', 'a:1:{i:0;i:1;}', '0');
INSERT INTO `tp_qytest_answer` VALUES ('213', '643', '65', 'fxl_0907show', 'a:1:{i:0;i:2;}', '0');
INSERT INTO `tp_qytest_answer` VALUES ('214', '643', '65', 'fxl_0907show', 'a:1:{i:0;i:2;}', '0');
INSERT INTO `tp_qytest_answer` VALUES ('215', '645', '71', '15990093987', 'a:1:{i:0;i:1;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('216', '645', '67', '15990093987', 'a:1:{i:0;i:2;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('217', '646', '71', 'fxl_0907show', 'a:1:{i:0;i:2;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('218', '646', '67', 'fxl_0907show', 'a:1:{i:0;i:1;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('219', '650', '71', 'c2217wz', 'a:1:{i:0;i:1;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('220', '650', '67', 'c2217wz', 'a:1:{i:0;i:1;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('221', '646', '71', 'fxl_0907show', 'a:1:{i:0;i:2;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('222', '646', '67', 'fxl_0907show', 'a:1:{i:0;i:1;}', '20');
INSERT INTO `tp_qytest_answer` VALUES ('223', '653', '72', 'sfjie19871113', 'a:1:{i:0;i:1;}', '10');

-- ----------------------------
-- Table structure for `tp_qytest_paper`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytest_paper`;
CREATE TABLE `tp_qytest_paper` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `testtime` int(3) NOT NULL DEFAULT '0',
  `sum` int(10) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `depart` varchar(200) DEFAULT NULL,
  `node` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytest_paper
-- ----------------------------
INSERT INTO `tp_qytest_paper` VALUES ('34', '236', '测试', '测试测试', '30', '11', '1465194200', '1465189200', '1465534800', '2', '8|39', '|8|39|');
INSERT INTO `tp_qytest_paper` VALUES ('35', '236', '一年级语文', '一年级', '10', '0', '1465710395', '1464105600', '1483113600', '2', '8|20', '|8|20|');
INSERT INTO `tp_qytest_paper` VALUES ('36', '236', '三年级上学期语文测试题', '三年级上学期语文测试题', '60', '10', '1465716126', '1465887000', '1465973400', '2', '8|39', '|8|39|');

-- ----------------------------
-- Table structure for `tp_qytest_question`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytest_question`;
CREATE TABLE `tp_qytest_question` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `tid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `time` int(10) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `score` int(3) NOT NULL DEFAULT '0',
  `sort` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytest_question
-- ----------------------------
INSERT INTO `tp_qytest_question` VALUES ('71', '236', '34', '1', '第一题', 'a:2:{i:1;s:2:\"aa\";i:2;s:3:\"232\";}', '1465260964', 'a:1:{i:1;s:1:\"1\";}', null, '20', '1');
INSERT INTO `tp_qytest_question` VALUES ('72', '236', '35', '1', '语文老师', 'a:2:{i:1;s:3:\"王\";i:2;s:3:\"刘\";}', '1465714389', 'a:1:{i:1;s:1:\"1\";}', null, '10', '0');
INSERT INTO `tp_qytest_question` VALUES ('67', '236', '34', '2', '第二题', 'a:2:{i:1;s:6:\"订单\";i:2;s:6:\"都是\";}', '1465260488', 'a:1:{i:2;s:1:\"2\";}', null, '20', '2');

-- ----------------------------
-- Table structure for `tp_qytest_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytest_user`;
CREATE TABLE `tp_qytest_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL COMMENT '名称',
  `user_id` varchar(255) NOT NULL,
  `wecha_id` varchar(20) NOT NULL DEFAULT '',
  `sum` smallint(4) NOT NULL COMMENT '做题总数',
  `score` smallint(6) NOT NULL COMMENT '分数',
  `status` tinyint(1) NOT NULL COMMENT '用户状态',
  `starttime` int(10) NOT NULL COMMENT '答题开始时间',
  `endtime` int(10) NOT NULL COMMENT '答题结束时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=654 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytest_user
-- ----------------------------
INSERT INTO `tp_qytest_user` VALUES ('644', '34', '唐', '236', '15990093987', '0', '0', '0', '1465260907', '0');
INSERT INTO `tp_qytest_user` VALUES ('637', '35', 'shilaoshi', '236', 'sfjie19871113', '0', '0', '0', '1464662257', '1464662262');
INSERT INTO `tp_qytest_user` VALUES ('638', '35', 'shilaoshi', '236', 'sfjie19871113', '0', '0', '0', '1464662305', '1464662310');
INSERT INTO `tp_qytest_user` VALUES ('639', '35', 'shilaoshi', '236', 'sfjie19871113', '0', '0', '0', '1464666247', '0');
INSERT INTO `tp_qytest_user` VALUES ('640', '35', '尹益静', '236', 'xiao_158678', '0', '0', '0', '1464835763', '0');
INSERT INTO `tp_qytest_user` VALUES ('641', '35', 'cwz', '236', 'c2217wz', '0', '0', '0', '1464935345', '1464935395');
INSERT INTO `tp_qytest_user` VALUES ('642', '34', '方小龙', '236', 'fxl_0907show', '0', '0', '0', '1465194233', '1465194238');
INSERT INTO `tp_qytest_user` VALUES ('643', '34', '方小龙', '236', 'fxl_0907show', '0', '0', '0', '1465194260', '1465194278');
INSERT INTO `tp_qytest_user` VALUES ('645', '34', '唐', '236', '15990093987', '2', '40', '0', '1465260972', '1465260985');
INSERT INTO `tp_qytest_user` VALUES ('646', '34', '方小龙', '236', 'fxl_0907show', '2', '40', '0', '1465269093', '1465269177');
INSERT INTO `tp_qytest_user` VALUES ('647', '34', '方小龙', '236', 'fxl_0907show', '0', '0', '0', '1465269095', '0');
INSERT INTO `tp_qytest_user` VALUES ('648', '34', '方小龙', '236', 'fxl_0907show', '0', '0', '0', '1465269095', '0');
INSERT INTO `tp_qytest_user` VALUES ('649', '35', 'cwz', '236', 'c2217wz', '0', '0', '0', '1465269134', '0');
INSERT INTO `tp_qytest_user` VALUES ('650', '34', 'cwz', '236', 'c2217wz', '2', '40', '0', '1465269143', '1465269148');
INSERT INTO `tp_qytest_user` VALUES ('651', '35', 'cwz', '236', 'c2217wz', '0', '0', '0', '1465269154', '0');
INSERT INTO `tp_qytest_user` VALUES ('652', '35', 'shilaoshi', '236', 'sfjie19871113', '0', '0', '0', '1465714153', '0');
INSERT INTO `tp_qytest_user` VALUES ('653', '35', 'shilaoshi', '236', 'sfjie19871113', '1', '10', '0', '1465714453', '1465714457');

-- ----------------------------
-- Table structure for `tp_qytoken`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytoken`;
CREATE TABLE `tp_qytoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL DEFAULT '' COMMENT '企业token',
  `username` varchar(100) NOT NULL COMMENT '用户账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `qyname` varchar(100) NOT NULL DEFAULT '' COMMENT '企业名称',
  `host` varchar(100) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '' COMMENT '企业简称',
  `mp` varchar(11) NOT NULL DEFAULT '' COMMENT '手机',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '企业所在地',
  `industry` varchar(200) NOT NULL DEFAULT '' COMMENT '所属行业',
  `type` varchar(50) NOT NULL DEFAULT '1' COMMENT '用户等级版本 默认1为试用版本',
  `contact` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人',
  `corpid` varchar(100) NOT NULL DEFAULT '',
  `corpsecret` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `addtime` int(15) NOT NULL,
  `endtime` varchar(11) NOT NULL DEFAULT '0' COMMENT '用户到期时间',
  `zt` int(11) NOT NULL,
  `lastlogin` varchar(40) NOT NULL,
  `lastloginip` varchar(40) NOT NULL,
  `headimg` varchar(300) DEFAULT NULL,
  `money` int(8) DEFAULT NULL,
  `permanent_code` varchar(200) DEFAULT NULL COMMENT '第三方永久授权码',
  `th_corpid` varchar(100) DEFAULT NULL COMMENT '第三方授权方企业号id',
  `gid` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytoken
-- ----------------------------
INSERT INTO `tp_qytoken` VALUES ('236', '', '东裕小学', 'e10adc3949ba59abbe56e057f20f883e', '鄞州东裕小学', '', '', '13111111111', '', '宁波', '', '1', '毛晴', 'wxe23e52decb1e900d', 'Swt5UaKDMRqXW1SvLSaykmEZ-ykEFZu1gJdK85Ul0mPD6M2B1yHiaOLFDUFxc_py', '0', '0', '', '', '0', '1583380200', '0', '', '', null, null, null, null, '0', '0');
INSERT INTO `tp_qytoken` VALUES ('246', '', '移动演示号', 'e10adc3949ba59abbe56e057f20f883e', '小学', '', '', '13999999999', '', '宁波', '', '1', '俞则栋', 'wx308fa722f203ebb0', '9Hfvo7SYsM0YyRGssmHpIKiodiR-f4fPa-lRi8miOO02HC2IHy-Mw6p2eyNB3dvk', '0', '0', '', '', '0', '1609430100', '0', '', '', null, null, null, null, '0', '0');

-- ----------------------------
-- Table structure for `tp_qytoken_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qytoken_copy`;
CREATE TABLE `tp_qytoken_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL DEFAULT '' COMMENT '企业token',
  `username` varchar(100) NOT NULL COMMENT '用户账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `qyname` varchar(100) NOT NULL DEFAULT '' COMMENT '企业名称',
  `host` varchar(100) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '' COMMENT '企业简称',
  `mp` varchar(11) NOT NULL DEFAULT '' COMMENT '手机',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '企业所在地',
  `industry` varchar(200) NOT NULL DEFAULT '' COMMENT '所属行业',
  `type` varchar(50) NOT NULL DEFAULT '1' COMMENT '用户等级版本 默认1为试用版本',
  `contact` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人',
  `corpid` varchar(100) NOT NULL DEFAULT '',
  `corpsecret` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `addtime` int(15) NOT NULL,
  `endtime` varchar(11) NOT NULL DEFAULT '0' COMMENT '用户到期时间',
  `zt` int(11) NOT NULL,
  `lastlogin` varchar(40) NOT NULL,
  `lastloginip` varchar(40) NOT NULL,
  `headimg` varchar(300) DEFAULT NULL,
  `money` int(8) DEFAULT NULL,
  `permanent_code` varchar(200) DEFAULT NULL COMMENT '第三方永久授权码',
  `th_corpid` varchar(100) DEFAULT NULL COMMENT '第三方授权方企业号id',
  `gid` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qytoken_copy
-- ----------------------------
INSERT INTO `tp_qytoken_copy` VALUES ('236', '', '东裕小学', 'e10adc3949ba59abbe56e057f20f883e', '鄞州东裕小学', '', '', '13111111111', '', '宁波', '', '1', '毛晴', 'wxe23e52decb1e900d', 'Swt5UaKDMRqXW1SvLSaykmEZ-ykEFZu1gJdK85Ul0mPD6M2B1yHiaOLFDUFxc_py', '0', '0', '', '', '0', '1583380200', '0', '', '', null, null, null, null, '0', '0');
INSERT INTO `tp_qytoken_copy` VALUES ('246', '', '移动演示号', 'e10adc3949ba59abbe56e057f20f883e', '小学', '', '', '13999999999', '', '宁波', '', '1', '俞则栋', 'wx308fa722f203ebb0', '9Hfvo7SYsM0YyRGssmHpIKiodiR-f4fPa-lRi8miOO02HC2IHy-Mw6p2eyNB3dvk', '0', '0', '', '', '0', '1609430100', '0', '', '', null, null, null, null, '0', '0');

-- ----------------------------
-- Table structure for `tp_qyuser`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyuser`;
CREATE TABLE `tp_qyuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `psd` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyuser
-- ----------------------------
INSERT INTO `tp_qyuser` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for `tp_qyusercard`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyusercard`;
CREATE TABLE `tp_qyusercard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `qq` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `user_id` varchar(11) DEFAULT '0',
  `userid` varchar(100) DEFAULT NULL,
  `userinfo` text,
  `connectinfo` text,
  `companyinfo` text,
  `otherinfo` text,
  `tpl` varchar(4) DEFAULT '8',
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyusercard
-- ----------------------------
INSERT INTO `tp_qyusercard` VALUES ('1', 'cwz', 'c w z', '', '2217492801@qq.com', '15757856554', '', '', 'ui', '', '', '', '236', 'c2217wz', null, null, null, null, '8', '1465191645');
INSERT INTO `tp_qyusercard` VALUES ('2', '王幼美', '', '', '178160106@qq.com', '13738827888', '', '', '总经理', '', '', '', '236', 'wym030508', null, null, null, null, '8', '1463666981');
INSERT INTO `tp_qyusercard` VALUES ('3', '尹益静', 'lily', '1712012281', '2669984307@qq.com', '15988690976', '057455331892', '057455331891', '运营', '宁波', 'www.weijiabao.com.cn', '宁波原之泰', '236', 'xiao_158678', null, null, null, null, '8', '1464833752');
INSERT INTO `tp_qyusercard` VALUES ('4', '唐', '11', '', '', '15990093987', '', '', '22', '', '', '112', '236', '15990093987', null, null, null, null, '8', '1465181739');
INSERT INTO `tp_qyusercard` VALUES ('5', 'shilaoshi', 'rain', '2217492801', '2217492801@qq.com', '15757856554', '157578565554', '', '英语老师', '丽园北路755', '', '原之泰', '236', 'sfjie19871113', null, null, null, null, '8', '1465709123');

-- ----------------------------
-- Table structure for `tp_qyusernode`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyusernode`;
CREATE TABLE `tp_qyusernode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `nums` int(10) DEFAULT NULL,
  `price` int(5) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyusernode
-- ----------------------------
INSERT INTO `tp_qyusernode` VALUES ('1', '试用版本', '1000', '0', '1', '1');
INSERT INTO `tp_qyusernode` VALUES ('2', 'vip1', '30', '100', '1', '1');
INSERT INTO `tp_qyusernode` VALUES ('3', 'vip2', '100', '200', '1', '1');

-- ----------------------------
-- Table structure for `tp_qyusers`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyusers`;
CREATE TABLE `tp_qyusers` (
  `tag` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(64) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `department` varchar(64) DEFAULT NULL,
  `position` varchar(64) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `weixinid` varchar(128) DEFAULT NULL,
  `extattr` text,
  `user_id` int(11) DEFAULT NULL,
  `email_psd` varchar(100) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '关注状态',
  `enable` tinyint(1) DEFAULT '1' COMMENT '禁用状态',
  `member` varchar(255) DEFAULT NULL,
  `introduce` text,
  `role` varchar(255) DEFAULT NULL,
  `head_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyusers
-- ----------------------------
INSERT INTO `tp_qyusers` VALUES (null, '18', ';8;', '李园园', 'moyuhui13', null, '', '', null, '--', '', 'moyuhui13', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES (null, '20', ';8;', '陈辰', 'Amour_Alen', null, '', '', null, '--', '', 'Amour_Alen', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES (null, '108', ';18;', '方小龙', 'fxl_0907show', null, '', '', null, '--', '', 'fxl_0907show', null, null, null, null, null, '1', 'fangjiazhang', '', 'student', null);
INSERT INTO `tp_qyusers` VALUES (null, '210', ';8;', '刘毅', 'l254096973', null, '', '', null, '--', '', 'l254096973', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES (null, '213', ';12;', '小朱', 'xiaozhu', null, '', '', null, '--', '82690034@qq.com', 'Judge_X', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES (null, '216', ';12;', '小朱', 'xiaozhu', null, '', '', null, '--', '82690034@qq.com', 'Judge_X', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES (null, '218', ';12;11;', '小金', 'xiaojin', null, '', '', null, '--', '', 'davey2880', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES ('', '221', ';12;', '张小帅老师', 'zxs1250', null, null, null, '0', null, null, 'zxs1250', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('家长', '222', ';20;', '蔡老师', 'c2217wz', null, 'cxy', '15757856554', '2', null, '2217492801@qq.com', 'c2217wz', 'a:2:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:12:\"fxl_0907show\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:6:\"parent\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/RfBvd8cb1467790409.jpg', '1', '1', 'fxl_0907show', null, 'parent', null);
INSERT INTO `tp_qyusers` VALUES ('老师;班主任', '223', ';20;', '陈毛晴老师', 'qing482x', null, '程序员', '18788837186', '1', null, '3012743705@qq.com', 'qing482x', 'a:2:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}i:1;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:18:\"201107紫葡萄队\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/DtYeIYg81467790409.jpg', '1', '1', null, null, 'teacher', '201107紫葡萄队');
INSERT INTO `tp_qyusers` VALUES ('', '224', ';26;', '校车室长', 'alwayslike-you', null, null, null, '0', null, null, 'alwayslike-you', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/ySVPKSiO1467790409.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '225', ';34;', '晓晓', 'sxiao123', null, null, null, '0', null, null, 'sxiao123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '226', ';12;', '黄晓风老师', 'huangxiaofen', null, null, null, '0', null, null, 'huangxiaofen', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '227', ';24;', '陈国民老师', 'clannadaddicts', null, null, null, '0', null, null, 'clannadaddicts', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '228', ';20;', '周老师', 'Zch40012400', null, null, '13819834829', '1', null, '40012400@qq.com', 'zch40012400', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/KhBT600Y1467790409.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '229', ';31;', '级部长', 'axiaoz', null, null, null, '0', null, null, 'axiaoz', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/FPJ40r6C1467790409.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '230', ';30;', '膳食组长', 'sbq100214', null, null, null, '0', null, null, 'sbq100214', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/e3XCVpDv1467790410.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '231', ';29;', '董萌老师', 'men10120', null, null, null, '0', null, null, 'men10120', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '232', ';12;', '小朱老师', 'xiaozhu', null, null, null, '1', null, '82690034@qq.com', 'judge_x', 'a:3:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:0:\"\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/iyEOP1611467790411.jpg', '1', '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES ('学生', '233', ';39;', '方老师', 'fxl_0907show', null, null, null, '1', null, null, 'fxl_0907show', 'a:2:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:7:\"c2217wz\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/jkCYkax81467790413.jpg', '1', '1', 'c2217wz', null, 'student', null);
INSERT INTO `tp_qyusers` VALUES ('', '234', ';40;', '萨曼莎', 'sms1852205', null, null, null, '0', null, null, 'sms1852205', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('学生', '235', ';39;', '邱丽云', 'qiuliyun001', null, null, '18858085299', '2', null, '1712012281@qq.com', 'qiuliyun001', 'a:2:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}i:1;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:9:\"shilaoshi\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/1EA78RwQ1467790413.jpg', '1', '1', null, null, 'student', 'shilaoshi');
INSERT INTO `tp_qyusers` VALUES ('', '236', ';35;', '阿迪老师', 'di1314', null, null, null, '0', null, null, 'di1314', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '237', ';23;', '王杰老师', 'wangjie_7758258', null, null, null, '0', null, null, 'wangjie_775825', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '238', ';12;', '赵梓老师', 'zhao12', null, null, null, '0', null, null, 'zhao12', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/5mNe8bAl1467790413.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '239', ';35;', '张代真老师', 's_1904s', null, null, null, '0', null, null, 's_1904s', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '240', ';43;', '刘胡子', 'hu1545210', null, null, null, '0', null, null, 'hu1545210', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '241', ';31;', 'Tim老师', 'inn011', null, null, null, '0', null, null, 'inn011', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '242', ';28;', '总务室长', 'wang1501', null, null, null, '0', null, null, 'wang1501', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/APiQNo741467790413.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '243', ';27;', '财务室长', 'li1994', null, null, null, '0', null, null, 'li1994', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/P9SphPUl1467790415.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '244', ';35;', '贾真老师', 'jiaxiao12', null, null, null, '0', null, null, 'jiaxiao12', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '245', ';11;12;', '小金老师', 'xiaojin', null, null, null, '1', null, null, 'davey2880', 'a:3:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:0:\"\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/w4yUyC6U1467790417.jpg', '1', '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES ('', '246', ';20;', '金老师', 'sfjie19871113', null, null, null, '0', null, null, 'sfjie19871113', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/sb9kQt1F1467790418.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '247', ';42;', '陶伟珰', 'tao123', null, null, null, '0', null, null, 'tao123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '248', ';33;', '安全应急组长', 'xiao123', null, null, null, '0', null, null, 'xiao123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/hqBhvQfV1467790419.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '249', ';9;', '校长', 'ccj13584715155', null, null, null, '0', null, null, 'ccj13584715155', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/F4XjnQ3U1467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '250', ';32;', '心理室长', 'qian890', null, null, null, '0', null, null, 'qian890', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/HooHgqj81467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '251', ';35;', '千青老师', 'qinga1249', null, null, null, '0', null, null, 'qinga1249', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '252', ';19;', '科组长', 'lixiang652191', null, null, null, '0', null, null, 'lixiang652191', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/I5wA6edk1467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '253', ';20;', '尹老师', 'xiao_158678', null, null, '15988690976', '1', null, '2669984307@qq.com', 'xiao_158678', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/cWIAzXmN1467790420.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '254', ';40;', '欧文', 'ouwen1325450', null, null, null, '0', null, null, 'ouwen1325450', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/ku0W3fYu1467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '255', ';20;', '黄老师', '07fd6c485c1ce95d4dd784c4fab47492', null, null, null, '1', null, '48121@qq.com', 'lanwise', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/Qs7qjQMb1467790422.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '256', ';12;', '史小杰老师', 'shixiaojie0', null, null, null, '0', null, null, 'shixiaojie0', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '257', ';22;', '教材组长', 'jxly070520', null, null, null, '0', null, null, 'jxly070520', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/6HRJ8W3y1467790422.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '258', ';29;', '金少平老师', 'jin012054', null, null, null, '0', null, null, 'jin012054', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '259', ';20;', '阚老师', 'nbdodge', null, null, null, '1', null, null, 'nbdodge', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/WEWv4gaS1467790422.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '260', ';25;', '阿标老师', 'biao12213', null, null, null, '0', null, null, 'biao12213', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '261', ';39;', '薛轩', 'xue14201', null, null, null, '0', null, null, 'xue14201', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '262', ';20;', '教研组长', 'fenfangtao', null, null, null, '0', null, null, 'fenfangtao', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/Gil3LwpO1467790422.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '263', ';35;', '团委', 'maohuan00', null, null, null, '0', null, null, 'maohuan00', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/oI9scyVr1467790422.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '264', ';34;', '团支部长', 'yi520ni', null, null, null, '0', null, null, 'yi520ni', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/giyKaEnP1467790423.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '265', ';20;', '徐老师', 'c01850936d393b0b375976fec8eb4560', null, null, '18858222619', '1', null, null, 'mimi978627', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/1OhEpxyG1467790423.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '266', ';33;', '郑良柱老师', 'zlz1994', null, null, null, '0', null, null, 'zlz1994', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '267', ';22;', '张晓老师', 'me520ni', null, null, null, '0', null, null, 'me520ni', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '268', ';42;', '翁美玲', 'wen968680', null, null, null, '0', null, null, 'wen968680', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '269', ';27;', '总务处', 'lim1543', null, null, null, '0', null, null, 'lim1543', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/3cxq79n41467790424.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '270', ';20;', '王老师', '7c981696f472a7b7e29b15185bb25cda', null, null, '15888198686', '1', null, null, 'jbw927', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/yBcEYjmE1467790425.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '271', ';29;', '医务室长', 'cai201', null, null, null, '0', null, null, 'cai201', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/ssH0BMyd1467790425.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '272', ';32;', '阿伟老师', 'wei2000', null, null, null, '0', null, null, 'wei2000', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '273', ';12;', '人事办公室', 'fangxiao12', null, null, null, '0', null, null, 'fangxiao12', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/srb4bDzk1467790426.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '274', ';24;', '就业中心负责人', 'chuting167349', null, null, null, '0', null, null, 'chuting167349', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/34GgDvTn1467790426.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '275', ';26;', '金帮凯老师', 'jinxiaosheng92', null, null, null, '0', null, null, 'jinxiaosheng92', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '276', ';34;', '叶玉梓', 'ye12450', null, null, null, '0', null, null, 'ye12450', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '277', ';30;', '张小小老师', 'xiao01123', null, null, null, '0', null, null, 'xiao01123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '278', ';31;', '含卉老师', 'h1524han', null, null, null, '0', null, null, 'h1524han', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '279', ';26;', '曹与非老师', 'cyf123', null, null, null, '0', null, null, 'cyf123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '280', ';41;', '春儿', 'chun1243', null, null, null, '0', null, null, 'chun1243', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '281', ';20;', '陈辰老师', 'Amour_Alen', null, null, null, '1', null, null, 'amour_alen', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '282', ';32;', '李青峰老师', 'liqingfen09', null, null, null, '0', null, null, 'liqingfen09', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '283', ';12;', '李远生老师', 'liyuansheng520', null, null, null, '0', null, null, 'liyuansheng520', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '284', ';40;', '小栗旬', 'lixun1234', null, null, null, '0', null, null, 'lixun1234', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/GPqwrQu81467790426.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '285', ';28;', '晓雯老师', 'xiaowen120082', null, null, null, '0', null, null, 'xiaowen120082', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '286', ';41;', '陈明东', 'cmd54121658', null, null, null, '0', null, null, 'cmd54121658', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '287', ';35;', '杨上尉老师', 'raininn', null, null, null, '0', null, null, 'raininn', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '288', ';23;', '陈萌老师', 'chenlvfa', null, null, null, '0', null, null, 'chenlvfa', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '289', ';34;', '学生会长', 'xll1235412', null, null, null, '0', null, null, 'xll1235412', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/Obvpej461467790428.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '290', ';35;', '阿光老师', 'guang123', null, null, null, '0', null, null, 'guang123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '291', ';19;', '毛正前老师', 'mcw1166', null, null, null, '0', null, null, 'mcw1166', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '292', ';20;', '李浩老师', 'eb47b095d3f48568ab512ae78cbe9a57', null, null, '13396670151', '1', null, null, null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/FLoKMfyA1467790428.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '293', ';20;', '程老师', '94e6c0f28da80706d449aaf4f9fa6840', null, null, '13396671048', '1', null, null, null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('班主任', '294', ';20;', '唐老师', '15990093987', null, null, '15990093987', '0', null, null, null, 'a:3:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}i:1;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:3:\"111\";}i:2;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:9:\"测试组\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/9xKtBEb71467790429.jpg', '1', '1', null, '111', 'teacher', '测试组');
INSERT INTO `tp_qyusers` VALUES ('', '295', ';20;', '孙老师', 'ccc', null, null, '15057451310', '1', null, null, null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CHiDNqrv1467790429.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '296', ';20;', '朱老师', '8a57e9f30eea8e644c20070a35a806d8', null, null, '17757056626', '1', null, 'zpf@jinwang.com.cn', null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '297', ';25;', '郭静纯老师', 'guox123', null, null, null, '0', null, null, 'guox123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '298', ';43;', '常老师', 'cwz4111', null, null, null, '0', null, null, 'cwz4111', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '299', ';20;', '俞老师', 'yuzd1989', null, null, null, '1', null, null, 'yuzd1989', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/sDStiBzW1467790430.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '300', ';34;', '徐孜孜', 'zizi156200565', null, null, null, '0', null, null, 'zizi156200565', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '301', ';22;', '林老师', 'l1662575166', null, null, null, '0', null, null, 'l1662575166', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '302', ';33;', '亦瑶老师', 'yiyao520', null, null, null, '0', null, null, 'yiyao520', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '303', ';42;', '云云', 'yy15402', null, null, null, '0', null, null, 'yy15402', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '304', ';34;', '张家明', 'zjm1952', null, null, null, '0', null, null, 'zjm1952', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '305', ';25;', '印刷室长', 'aaa23302', null, null, null, '0', null, null, 'aaa23302', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/aVPKgZAS1467790430.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '306', ';43;', '李欣', 'li0534001', null, null, null, '0', null, null, 'li0534001', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '307', ';40;', '林韦', 'linlin', null, null, null, '0', null, null, 'linlin', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '308', ';20;', '高老师', 'gxj0305', null, null, null, '0', null, null, 'gxj0305', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '309', ';20;', '鲍科设老师', 'sase002', null, null, null, '1', null, null, 'sase002', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/W3RgIm901467790432.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '310', ';21;', '实训组长', 'huangjixiao211789', null, null, null, '0', null, null, 'huangjixiao211789', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/nFWcwHzh1467790432.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '311', ';24;', '张梦晓老师', 'daxiami20092', null, null, null, '0', null, null, 'daxiami20092', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '312', ';20;', '任老师', 'Ericren999', null, null, null, '1', null, null, 'ericren999', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/cUo8b4Nw1467790433.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '313', ';12;', '孙紫老师', 'sunzi1992', null, null, null, '0', null, null, 'sunzi1992', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '314', ';20;', '杨老师', 'yang15824209289', null, null, null, '2', null, null, 'yang15824209289', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CSbyVERK1467790433.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '315', ';23;', '图书馆长', 'To-be-a-Man', null, null, null, '0', null, null, 'to-be-a-man', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/y8Xz52Pt1467790433.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '316', ';20;', '刘毅老师', 'l254096973', null, null, null, '1', null, null, 'l254096973', 'a:3:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:0:\"\";}}', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES ('', '317', ';31;', '德育处', 'chenhua123', null, null, null, '0', null, null, 'chenhua123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CV1WKHpT1467790433.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('老师;班主任', '318', ';20;', '史老师', 'sfjie1987', null, null, '13336877109', '1', null, '2391986091@qq.com', 'sfjie1987', 'a:2:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}i:1;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:15:\"一年级一班\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/fYNNIuw61467790433.jpg', '1', '1', null, null, 'teacher', '一年级一班');
INSERT INTO `tp_qyusers` VALUES ('', '319', ';20;', '朱兴华老师', 'd7befb161f8bc56a7cce890299a67322', null, null, '13967889233', '1', null, null, 'wxid_bu4irppc63mp21', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/grpMtzPi1467790435.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '320', ';12;', '黄铭老师', 'huang123', null, null, null, '0', null, null, 'huang123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '321', ';20;', '李园园老师', 'moyuhui13', null, null, null, '1', null, null, 'moyuhui13', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/wG95jG6E1467790435.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '322', ';20;', '王幼美老师', 'wym030508', null, '总经理', '13738827888', '1', null, '178160106@qq.com', 'wym030508', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CBlxddK61465820660.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '323', ';19;', '教务处', 'wangliaweiq22', null, null, null, '0', null, null, 'wangliaweiq22', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/jFT4MVo81465820660.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '324', ';44;', '张爱文', 'zaw120', null, null, null, '0', null, null, 'zaw120', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('parent', '325', ';6;', '邱丽云', 'qiu_liyun1', null, null, '18858085299', '2', null, '1712012281@qq.com', 'qiuliyun001', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:6:\"parent\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/SKQSCtbr1472698616.jpg', '1', '1', '', null, 'parent', null);
INSERT INTO `tp_qyusers` VALUES ('', '326', ';5;', '杨海飞', 'yang_haifei1', null, null, '15824209289', '2', null, null, null, 'N;', '246', null, 'http://ydqy.weijiabao.com.cn/icon/OzoGKSBL1472698616.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES ('', '327', ';5;', '俞则栋', 'yzd_123', null, '', '13757420337', '1', '--', '', 'yuzd1989', 'N;', '246', null, 'http://ydqy.weijiabao.com.cn/icon/EzjQuegf1472698616.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers` VALUES (null, '328', ';1;', '俞则栋', 'yzd_123', null, '', '', null, '--', '', 'yuzd1989', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES ('student', '329', ';3;', 'shilaoshi', 'shilaoshi', null, null, null, '1', null, null, 'sfjie19871113', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/td9CnxuK1472698616.jpg', '1', '1', '', null, 'student', null);
INSERT INTO `tp_qyusers` VALUES (null, '330', ';1;', 'shilaoshi', 'shilaoshi', null, '', '', null, '--', '', 'sfjie19871113', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES ('teacher', '331', ';4;', '蔡文知', 'cwz_123', null, null, null, '2', null, null, 'c2217wz', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/Tx1pYbZX1472698615.jpg', '1', '1', null, null, 'teacher', null);
INSERT INTO `tp_qyusers` VALUES (null, '332', ';1;', '蔡文知', 'cwz_123', null, '', '', null, '--', '', 'c2217wz', null, null, null, null, null, '1', '', '', 'teacher', null);
INSERT INTO `tp_qyusers` VALUES ('', '333', ';3;', '方小龙', 'fxl_123', null, '', '', '1', '--', '', 'fxl_0907show', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/grIJKWW51472698615.jpg', '1', '1', null, null, 'student', null);
INSERT INTO `tp_qyusers` VALUES (null, '334', ';3;', '方小龙', 'fxl_123', null, '', '', null, '--', '', 'fxl_0907show', null, null, null, null, null, '1', 'qiu_liyun1', '', 'student', null);
INSERT INTO `tp_qyusers` VALUES (null, '335', ';5;', '王幼美', 'wym_123', null, null, null, '1', null, null, 'wym030508', null, '246', null, 'http://ydqy.weijiabao.com.cn/', '4', '1', null, null, null, null);
INSERT INTO `tp_qyusers` VALUES (null, '336', ';5;', '王幼美', 'wym_123', null, '', '', null, '--', '', 'wym030508', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers` VALUES (null, '337', ';5;', '鲍科设', 'bks_123', null, null, null, '1', null, null, 'sase002', null, '246', null, 'http://ydqy.weijiabao.com.cn/', '4', '1', null, null, null, null);
INSERT INTO `tp_qyusers` VALUES (null, '338', ';5;', '鲍科设', 'bks_123', null, '', '', null, '--', '', 'sase002', null, null, null, null, null, '1', '', '', '', null);

-- ----------------------------
-- Table structure for `tp_qyusers_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyusers_copy`;
CREATE TABLE `tp_qyusers_copy` (
  `tag` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(64) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `department` varchar(64) DEFAULT NULL,
  `position` varchar(64) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `weixinid` varchar(128) DEFAULT NULL,
  `extattr` text,
  `user_id` int(11) DEFAULT NULL,
  `email_psd` varchar(100) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '关注状态',
  `enable` tinyint(1) DEFAULT '1' COMMENT '禁用状态',
  `member` varchar(255) DEFAULT NULL,
  `introduce` text,
  `role` varchar(255) DEFAULT NULL,
  `head_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyusers_copy
-- ----------------------------
INSERT INTO `tp_qyusers_copy` VALUES (null, '18', ';8;', '李园园', 'moyuhui13', null, '', '', null, '--', '', 'moyuhui13', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '20', ';8;', '陈辰', 'Amour_Alen', null, '', '', null, '--', '', 'Amour_Alen', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '108', ';18;', '方小龙', 'fxl_0907show', null, '', '', null, '--', '', 'fxl_0907show', null, null, null, null, null, '1', 'fangjiazhang', '', 'student', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '210', ';8;', '刘毅', 'l254096973', null, '', '', null, '--', '', 'l254096973', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '213', ';12;', '小朱', 'xiaozhu', null, '', '', null, '--', '82690034@qq.com', 'Judge_X', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '216', ';12;', '小朱', 'xiaozhu', null, '', '', null, '--', '82690034@qq.com', 'Judge_X', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '218', ';12;11;', '小金', 'xiaojin', null, '', '', null, '--', '', 'davey2880', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '221', ';12;', '张小帅老师', 'zxs1250', null, null, null, '0', null, null, 'zxs1250', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('家长', '222', ';20;', '蔡老师', 'c2217wz', null, 'cxy', '15757856554', '2', null, '2217492801@qq.com', 'c2217wz', 'a:2:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:12:\"fxl_0907show\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:6:\"parent\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/RfBvd8cb1467790409.jpg', '1', '1', 'fxl_0907show', null, 'parent', null);
INSERT INTO `tp_qyusers_copy` VALUES ('老师;班主任', '223', ';20;', '陈毛晴老师', 'qing482x', null, '程序员', '18788837186', '1', null, '3012743705@qq.com', 'qing482x', 'a:2:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}i:1;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:18:\"201107紫葡萄队\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/DtYeIYg81467790409.jpg', '1', '1', null, null, 'teacher', '201107紫葡萄队');
INSERT INTO `tp_qyusers_copy` VALUES ('', '224', ';26;', '校车室长', 'alwayslike-you', null, null, null, '0', null, null, 'alwayslike-you', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/ySVPKSiO1467790409.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '225', ';34;', '晓晓', 'sxiao123', null, null, null, '0', null, null, 'sxiao123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '226', ';12;', '黄晓风老师', 'huangxiaofen', null, null, null, '0', null, null, 'huangxiaofen', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '227', ';24;', '陈国民老师', 'clannadaddicts', null, null, null, '0', null, null, 'clannadaddicts', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '228', ';20;', '周老师', 'Zch40012400', null, null, '13819834829', '1', null, '40012400@qq.com', 'zch40012400', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/KhBT600Y1467790409.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '229', ';31;', '级部长', 'axiaoz', null, null, null, '0', null, null, 'axiaoz', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/FPJ40r6C1467790409.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '230', ';30;', '膳食组长', 'sbq100214', null, null, null, '0', null, null, 'sbq100214', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/e3XCVpDv1467790410.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '231', ';29;', '董萌老师', 'men10120', null, null, null, '0', null, null, 'men10120', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '232', ';12;', '小朱老师', 'xiaozhu', null, null, null, '1', null, '82690034@qq.com', 'judge_x', 'a:3:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:0:\"\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/iyEOP1611467790411.jpg', '1', '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('学生', '233', ';39;', '方老师', 'fxl_0907show', null, null, null, '1', null, null, 'fxl_0907show', 'a:2:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:7:\"c2217wz\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/jkCYkax81467790413.jpg', '1', '1', 'c2217wz', null, 'student', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '234', ';40;', '萨曼莎', 'sms1852205', null, null, null, '0', null, null, 'sms1852205', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('学生', '235', ';39;', '邱丽云', 'qiuliyun001', null, null, '18858085299', '2', null, '1712012281@qq.com', 'qiuliyun001', 'a:2:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}i:1;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:9:\"shilaoshi\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/1EA78RwQ1467790413.jpg', '1', '1', null, null, 'student', 'shilaoshi');
INSERT INTO `tp_qyusers_copy` VALUES ('', '236', ';35;', '阿迪老师', 'di1314', null, null, null, '0', null, null, 'di1314', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '237', ';23;', '王杰老师', 'wangjie_7758258', null, null, null, '0', null, null, 'wangjie_775825', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '238', ';12;', '赵梓老师', 'zhao12', null, null, null, '0', null, null, 'zhao12', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/5mNe8bAl1467790413.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '239', ';35;', '张代真老师', 's_1904s', null, null, null, '0', null, null, 's_1904s', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '240', ';43;', '刘胡子', 'hu1545210', null, null, null, '0', null, null, 'hu1545210', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '241', ';31;', 'Tim老师', 'inn011', null, null, null, '0', null, null, 'inn011', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '242', ';28;', '总务室长', 'wang1501', null, null, null, '0', null, null, 'wang1501', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/APiQNo741467790413.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '243', ';27;', '财务室长', 'li1994', null, null, null, '0', null, null, 'li1994', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/P9SphPUl1467790415.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '244', ';35;', '贾真老师', 'jiaxiao12', null, null, null, '0', null, null, 'jiaxiao12', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '245', ';11;12;', '小金老师', 'xiaojin', null, null, null, '1', null, null, 'davey2880', 'a:3:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:0:\"\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/w4yUyC6U1467790417.jpg', '1', '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '246', ';20;', '金老师', 'sfjie19871113', null, null, null, '0', null, null, 'sfjie19871113', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/sb9kQt1F1467790418.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '247', ';42;', '陶伟珰', 'tao123', null, null, null, '0', null, null, 'tao123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '248', ';33;', '安全应急组长', 'xiao123', null, null, null, '0', null, null, 'xiao123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/hqBhvQfV1467790419.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '249', ';9;', '校长', 'ccj13584715155', null, null, null, '0', null, null, 'ccj13584715155', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/F4XjnQ3U1467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '250', ';32;', '心理室长', 'qian890', null, null, null, '0', null, null, 'qian890', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/HooHgqj81467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '251', ';35;', '千青老师', 'qinga1249', null, null, null, '0', null, null, 'qinga1249', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '252', ';19;', '科组长', 'lixiang652191', null, null, null, '0', null, null, 'lixiang652191', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/I5wA6edk1467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '253', ';20;', '尹老师', 'xiao_158678', null, null, '15988690976', '1', null, '2669984307@qq.com', 'xiao_158678', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/cWIAzXmN1467790420.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '254', ';40;', '欧文', 'ouwen1325450', null, null, null, '0', null, null, 'ouwen1325450', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/ku0W3fYu1467790420.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '255', ';20;', '黄老师', '07fd6c485c1ce95d4dd784c4fab47492', null, null, null, '1', null, '48121@qq.com', 'lanwise', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/Qs7qjQMb1467790422.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '256', ';12;', '史小杰老师', 'shixiaojie0', null, null, null, '0', null, null, 'shixiaojie0', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '257', ';22;', '教材组长', 'jxly070520', null, null, null, '0', null, null, 'jxly070520', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/6HRJ8W3y1467790422.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '258', ';29;', '金少平老师', 'jin012054', null, null, null, '0', null, null, 'jin012054', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '259', ';20;', '阚老师', 'nbdodge', null, null, null, '1', null, null, 'nbdodge', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/WEWv4gaS1467790422.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '260', ';25;', '阿标老师', 'biao12213', null, null, null, '0', null, null, 'biao12213', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '261', ';39;', '薛轩', 'xue14201', null, null, null, '0', null, null, 'xue14201', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '262', ';20;', '教研组长', 'fenfangtao', null, null, null, '0', null, null, 'fenfangtao', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/Gil3LwpO1467790422.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '263', ';35;', '团委', 'maohuan00', null, null, null, '0', null, null, 'maohuan00', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/oI9scyVr1467790422.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '264', ';34;', '团支部长', 'yi520ni', null, null, null, '0', null, null, 'yi520ni', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/giyKaEnP1467790423.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '265', ';20;', '徐老师', 'c01850936d393b0b375976fec8eb4560', null, null, '18858222619', '1', null, null, 'mimi978627', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/1OhEpxyG1467790423.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '266', ';33;', '郑良柱老师', 'zlz1994', null, null, null, '0', null, null, 'zlz1994', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '267', ';22;', '张晓老师', 'me520ni', null, null, null, '0', null, null, 'me520ni', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '268', ';42;', '翁美玲', 'wen968680', null, null, null, '0', null, null, 'wen968680', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '269', ';27;', '总务处', 'lim1543', null, null, null, '0', null, null, 'lim1543', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/3cxq79n41467790424.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '270', ';20;', '王老师', '7c981696f472a7b7e29b15185bb25cda', null, null, '15888198686', '1', null, null, 'jbw927', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/yBcEYjmE1467790425.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '271', ';29;', '医务室长', 'cai201', null, null, null, '0', null, null, 'cai201', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/ssH0BMyd1467790425.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '272', ';32;', '阿伟老师', 'wei2000', null, null, null, '0', null, null, 'wei2000', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '273', ';12;', '人事办公室', 'fangxiao12', null, null, null, '0', null, null, 'fangxiao12', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/srb4bDzk1467790426.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '274', ';24;', '就业中心负责人', 'chuting167349', null, null, null, '0', null, null, 'chuting167349', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/34GgDvTn1467790426.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '275', ';26;', '金帮凯老师', 'jinxiaosheng92', null, null, null, '0', null, null, 'jinxiaosheng92', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '276', ';34;', '叶玉梓', 'ye12450', null, null, null, '0', null, null, 'ye12450', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '277', ';30;', '张小小老师', 'xiao01123', null, null, null, '0', null, null, 'xiao01123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '278', ';31;', '含卉老师', 'h1524han', null, null, null, '0', null, null, 'h1524han', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '279', ';26;', '曹与非老师', 'cyf123', null, null, null, '0', null, null, 'cyf123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '280', ';41;', '春儿', 'chun1243', null, null, null, '0', null, null, 'chun1243', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '281', ';20;', '陈辰老师', 'Amour_Alen', null, null, null, '1', null, null, 'amour_alen', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '282', ';32;', '李青峰老师', 'liqingfen09', null, null, null, '0', null, null, 'liqingfen09', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '283', ';12;', '李远生老师', 'liyuansheng520', null, null, null, '0', null, null, 'liyuansheng520', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '284', ';40;', '小栗旬', 'lixun1234', null, null, null, '0', null, null, 'lixun1234', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/GPqwrQu81467790426.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '285', ';28;', '晓雯老师', 'xiaowen120082', null, null, null, '0', null, null, 'xiaowen120082', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '286', ';41;', '陈明东', 'cmd54121658', null, null, null, '0', null, null, 'cmd54121658', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '287', ';35;', '杨上尉老师', 'raininn', null, null, null, '0', null, null, 'raininn', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '288', ';23;', '陈萌老师', 'chenlvfa', null, null, null, '0', null, null, 'chenlvfa', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '289', ';34;', '学生会长', 'xll1235412', null, null, null, '0', null, null, 'xll1235412', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/Obvpej461467790428.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '290', ';35;', '阿光老师', 'guang123', null, null, null, '0', null, null, 'guang123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '291', ';19;', '毛正前老师', 'mcw1166', null, null, null, '0', null, null, 'mcw1166', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '292', ';20;', '李浩老师', 'eb47b095d3f48568ab512ae78cbe9a57', null, null, '13396670151', '1', null, null, null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/FLoKMfyA1467790428.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '293', ';20;', '程老师', '94e6c0f28da80706d449aaf4f9fa6840', null, null, '13396671048', '1', null, null, null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('班主任', '294', ';20;', '唐老师', '15990093987', null, null, '15990093987', '0', null, null, null, 'a:3:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}i:1;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:3:\"111\";}i:2;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:9:\"测试组\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/9xKtBEb71467790429.jpg', '1', '1', null, '111', 'teacher', '测试组');
INSERT INTO `tp_qyusers_copy` VALUES ('', '295', ';20;', '孙老师', 'ccc', null, null, '15057451310', '1', null, null, null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CHiDNqrv1467790429.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '296', ';20;', '朱老师', '8a57e9f30eea8e644c20070a35a806d8', null, null, '17757056626', '1', null, 'zpf@jinwang.com.cn', null, 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '297', ';25;', '郭静纯老师', 'guox123', null, null, null, '0', null, null, 'guox123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '298', ';43;', '常老师', 'cwz4111', null, null, null, '0', null, null, 'cwz4111', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '299', ';20;', '俞老师', 'yuzd1989', null, null, null, '1', null, null, 'yuzd1989', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/sDStiBzW1467790430.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '300', ';34;', '徐孜孜', 'zizi156200565', null, null, null, '0', null, null, 'zizi156200565', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '301', ';22;', '林老师', 'l1662575166', null, null, null, '0', null, null, 'l1662575166', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '302', ';33;', '亦瑶老师', 'yiyao520', null, null, null, '0', null, null, 'yiyao520', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '303', ';42;', '云云', 'yy15402', null, null, null, '0', null, null, 'yy15402', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '304', ';34;', '张家明', 'zjm1952', null, null, null, '0', null, null, 'zjm1952', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '305', ';25;', '印刷室长', 'aaa23302', null, null, null, '0', null, null, 'aaa23302', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/aVPKgZAS1467790430.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '306', ';43;', '李欣', 'li0534001', null, null, null, '0', null, null, 'li0534001', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '307', ';40;', '林韦', 'linlin', null, null, null, '0', null, null, 'linlin', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '308', ';20;', '高老师', 'gxj0305', null, null, null, '0', null, null, 'gxj0305', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '309', ';20;', '鲍科设老师', 'sase002', null, null, null, '1', null, null, 'sase002', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/W3RgIm901467790432.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '310', ';21;', '实训组长', 'huangjixiao211789', null, null, null, '0', null, null, 'huangjixiao211789', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/nFWcwHzh1467790432.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '311', ';24;', '张梦晓老师', 'daxiami20092', null, null, null, '0', null, null, 'daxiami20092', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '312', ';20;', '任老师', 'Ericren999', null, null, null, '1', null, null, 'ericren999', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/cUo8b4Nw1467790433.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '313', ';12;', '孙紫老师', 'sunzi1992', null, null, null, '0', null, null, 'sunzi1992', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '314', ';20;', '杨老师', 'yang15824209289', null, null, null, '2', null, null, 'yang15824209289', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CSbyVERK1467790433.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '315', ';23;', '图书馆长', 'To-be-a-Man', null, null, null, '0', null, null, 'to-be-a-man', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/y8Xz52Pt1467790433.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '316', ';20;', '刘毅老师', 'l254096973', null, null, null, '1', null, null, 'l254096973', 'a:3:{i:0;a:2:{s:4:\"name\";s:12:\"关联成员\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:6:\"介绍\";s:5:\"value\";s:0:\"\";}}', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '317', ';31;', '德育处', 'chenhua123', null, null, null, '0', null, null, 'chenhua123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CV1WKHpT1467790433.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('老师;班主任', '318', ';20;', '史老师', 'sfjie1987', null, null, '13336877109', '1', null, '2391986091@qq.com', 'sfjie1987', 'a:2:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}i:1;a:2:{s:4:\"name\";s:15:\"班主任绑定\";s:5:\"value\";s:15:\"一年级一班\";}}', '236', null, 'http://wq.weijiabao.com.cn/icon/fYNNIuw61467790433.jpg', '1', '1', null, null, 'teacher', '一年级一班');
INSERT INTO `tp_qyusers_copy` VALUES ('', '319', ';20;', '朱兴华老师', 'd7befb161f8bc56a7cce890299a67322', null, null, '13967889233', '1', null, null, 'wxid_bu4irppc63mp21', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/grpMtzPi1467790435.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '320', ';12;', '黄铭老师', 'huang123', null, null, null, '0', null, null, 'huang123', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '321', ';20;', '李园园老师', 'moyuhui13', null, null, null, '1', null, null, 'moyuhui13', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/wG95jG6E1467790435.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '322', ';20;', '王幼美老师', 'wym030508', null, '总经理', '13738827888', '1', null, '178160106@qq.com', 'wym030508', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/CBlxddK61465820660.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '323', ';19;', '教务处', 'wangliaweiq22', null, null, null, '0', null, null, 'wangliaweiq22', 'N;', '236', null, 'http://wq.weijiabao.com.cn/icon/jFT4MVo81465820660.jpg', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '324', ';44;', '张爱文', 'zaw120', null, null, null, '0', null, null, 'zaw120', 'N;', '236', null, 'http://wq.weijiabao.com.cn/', '4', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('parent', '325', ';6;', '邱丽云', 'qiu_liyun1', null, null, '18858085299', '2', null, '1712012281@qq.com', 'qiuliyun001', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:6:\"parent\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/SKQSCtbr1472698616.jpg', '1', '1', '', null, 'parent', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '326', ';5;', '杨海飞', 'yang_haifei1', null, null, '15824209289', '2', null, null, null, 'N;', '246', null, 'http://ydqy.weijiabao.com.cn/icon/OzoGKSBL1472698616.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '327', ';5;', '俞则栋', 'yzd_123', null, '', '13757420337', '1', '--', '', 'yuzd1989', 'N;', '246', null, 'http://ydqy.weijiabao.com.cn/icon/EzjQuegf1472698616.jpg', '1', '1', '', null, '', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '328', ';1;', '俞则栋', 'yzd_123', null, '', '', null, '--', '', 'yuzd1989', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('student', '329', ';3;', 'shilaoshi', 'shilaoshi', null, null, null, '1', null, null, 'sfjie19871113', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/td9CnxuK1472698616.jpg', '1', '1', '', null, 'student', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '330', ';1;', 'shilaoshi', 'shilaoshi', null, '', '', null, '--', '', 'sfjie19871113', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES ('teacher', '331', ';4;', '蔡文知', 'cwz_123', null, null, null, '2', null, null, 'c2217wz', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"teacher\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/Tx1pYbZX1472698615.jpg', '1', '1', null, null, 'teacher', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '332', ';1;', '蔡文知', 'cwz_123', null, '', '', null, '--', '', 'c2217wz', null, null, null, null, null, '1', '', '', 'teacher', null);
INSERT INTO `tp_qyusers_copy` VALUES ('', '333', ';3;', '方小龙', 'fxl_123', null, '', '', '1', '--', '', 'fxl_0907show', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"角色\";s:5:\"value\";s:7:\"student\";}}', '246', null, 'http://ydqy.weijiabao.com.cn/icon/grIJKWW51472698615.jpg', '1', '1', null, null, 'student', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '334', ';3;', '方小龙', 'fxl_123', null, '', '', null, '--', '', 'fxl_0907show', null, null, null, null, null, '1', 'qiu_liyun1', '', 'student', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '335', ';5;', '王幼美', 'wym_123', null, null, null, '1', null, null, 'wym030508', null, '246', null, 'http://ydqy.weijiabao.com.cn/', '4', '1', null, null, null, null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '336', ';5;', '王幼美', 'wym_123', null, '', '', null, '--', '', 'wym030508', null, null, null, null, null, '1', '', '', '', null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '337', ';5;', '鲍科设', 'bks_123', null, null, null, '1', null, null, 'sase002', null, '246', null, 'http://ydqy.weijiabao.com.cn/', '4', '1', null, null, null, null);
INSERT INTO `tp_qyusers_copy` VALUES (null, '338', ';5;', '鲍科设', 'bks_123', null, '', '', null, '--', '', 'sase002', null, null, null, null, null, '1', '', '', '', null);

-- ----------------------------
-- Table structure for `tp_qyvote_number`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyvote_number`;
CREATE TABLE `tp_qyvote_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL COMMENT '投票人id',
  `tid` int(11) DEFAULT NULL COMMENT '投票主题',
  `choise_id` varchar(255) DEFAULT NULL COMMENT '投票选项',
  `creat_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyvote_number
-- ----------------------------
INSERT INTO `tp_qyvote_number` VALUES ('1', 'c2217wz', '1', 'a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}', '1463107088');
INSERT INTO `tp_qyvote_number` VALUES ('2', 'wym030508', '1', 'a:1:{i:0;s:1:\"0\";}', '1463107112');
INSERT INTO `tp_qyvote_number` VALUES ('3', 'qiuliyun001', '1', 'a:2:{i:0;s:1:\"0\";i:1;s:1:\"2\";}', '1463109524');
INSERT INTO `tp_qyvote_number` VALUES ('4', 'qiuliyun001', '1', 'a:2:{i:0;s:1:\"0\";i:1;s:1:\"2\";}', '1463109527');
INSERT INTO `tp_qyvote_number` VALUES ('5', 'c2217wz', '2', 'a:1:{i:0;s:1:\"1\";}', '1464164887');
INSERT INTO `tp_qyvote_number` VALUES ('6', '15990093987', '2', 'a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}', '1464168451');
INSERT INTO `tp_qyvote_number` VALUES ('7', 'wym030508', '2', 'a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}', '1464178180');
INSERT INTO `tp_qyvote_number` VALUES ('8', 'qing482x', '2', 'a:1:{i:0;s:1:\"0\";}', '1464336521');
INSERT INTO `tp_qyvote_number` VALUES ('9', '7c981696f472a7b7e29b15185bb25cda', '2', 'a:1:{i:0;s:1:\"0\";}', '1465205400');

-- ----------------------------
-- Table structure for `tp_qyvote_set`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyvote_set`;
CREATE TABLE `tp_qyvote_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `choise` varchar(255) DEFAULT NULL,
  `datetimepicker` int(11) DEFAULT NULL,
  `type` int(3) DEFAULT '0' COMMENT '0单选1多选',
  `touser` varchar(255) DEFAULT NULL,
  `depart` varchar(255) DEFAULT NULL COMMENT '部门id',
  `real_name` int(3) DEFAULT '0' COMMENT '0实名1匿名',
  `read_result` int(3) DEFAULT '0' COMMENT '0不可查看1可查看',
  `creat_time` int(11) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyvote_set
-- ----------------------------
INSERT INTO `tp_qyvote_set` VALUES ('1', 'c2217wz', '236', '测试1', 'a:3:{i:0;s:7:\"选择1\";i:1;s:7:\"选择2\";i:2;s:7:\"新增3\";}', '1463131800', '1', '镇海易博', '1', '1', '0', '1463107070', 'a:3:{i:0;i:4;i:1;i:1;i:2;i:2;}');
INSERT INTO `tp_qyvote_set` VALUES ('2', 'yang15824209289', '236', '你心目中最认可的人', 'a:2:{i:0;s:27:\"中规中矩，有条不紊\";i:1;s:27:\"喜爱自在，创新创造\";}', '1483199700', '1', '201203小蜜蜂队;201107紫葡萄队;测试组', '3|2|8', '1', '0', '1464164813', 'a:2:{i:0;i:4;i:1;i:3;}');

-- ----------------------------
-- Table structure for `tp_qywebsite`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qywebsite`;
CREATE TABLE `tp_qywebsite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(3) DEFAULT '0',
  `site_logo` varchar(80) DEFAULT '',
  `site_name` varchar(50) DEFAULT NULL,
  `site_title` varchar(80) DEFAULT NULL,
  `site_url` varchar(80) DEFAULT NULL,
  `site_my` varchar(50) DEFAULT NULL,
  `ischeckuser` int(1) DEFAULT NULL,
  `ipc` varchar(50) DEFAULT NULL,
  `site_qq` varchar(15) DEFAULT NULL,
  `baidu_map_api` varchar(50) DEFAULT NULL,
  `site_email` varchar(50) DEFAULT NULL,
  `keyword` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `copyright` varchar(200) DEFAULT NULL,
  `site_gg` varchar(200) DEFAULT NULL,
  `day` varchar(16) DEFAULT '0' COMMENT '免费试用天数',
  `site_tel` varchar(16) DEFAULT NULL,
  `site_ipc` varchar(200) DEFAULT NULL,
  `site_ewm` varchar(300) NOT NULL DEFAULT '1',
  `address` varchar(300) DEFAULT NULL,
  `tpl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qywebsite
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qywebsite_link`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qywebsite_link`;
CREATE TABLE `tp_qywebsite_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `key` varchar(64) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qywebsite_link
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyworkflow`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyworkflow`;
CREATE TABLE `tp_qyworkflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `qq` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `department` varchar(200) DEFAULT NULL COMMENT '流程范围',
  `name_defined` text COMMENT '自定义字段',
  `examine` text COMMENT '审核人',
  `time` varchar(16) DEFAULT NULL,
  `examine_conf` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyworkflow
-- ----------------------------
INSERT INTO `tp_qyworkflow` VALUES ('1', '236', '测试', '', '1', '测试组', 'a:2:{i:0;a:4:{s:4:\"name\";s:2:\"11\";s:4:\"type\";s:1:\"3\";s:6:\"status\";i:0;s:4:\"info\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:2:\"22\";s:4:\"type\";s:1:\"4\";s:6:\"status\";i:0;s:4:\"info\";s:0:\"\";}}', 'a:1:{i:1;a:3:{s:11:\"auditselect\";s:1:\"3\";s:8:\"username\";s:4:\"唐;\";s:9:\"auditname\";s:3:\"16;\";}}', '1463121842', null);
INSERT INTO `tp_qyworkflow` VALUES ('2', '236', '合同签订审核流程', '', '1', '测试组', 'a:1:{i:0;a:4:{s:4:\"name\";s:9:\"签单人\";s:4:\"type\";s:1:\"1\";s:6:\"status\";i:1;s:4:\"info\";s:0:\"\";}}', 'a:2:{i:1;a:3:{s:11:\"auditselect\";s:1:\"3\";s:8:\"username\";s:10:\"邱丽云;\";s:9:\"auditname\";s:2:\"5;\";}i:2;a:3:{s:11:\"auditselect\";s:1:\"3\";s:8:\"username\";s:7:\"杨姐;\";s:9:\"auditname\";s:3:\"23;\";}}', '1464160298', null);
INSERT INTO `tp_qyworkflow` VALUES ('3', '246', '合同盖章流程', '', '1', '易跨购', 'a:2:{i:0;a:4:{s:4:\"name\";s:12:\"销售人员\";s:4:\"type\";s:1:\"1\";s:6:\"status\";i:1;s:4:\"info\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:12:\"联系电话\";s:4:\"type\";s:1:\"2\";s:6:\"status\";i:0;s:4:\"info\";s:0:\"\";}}', 'a:1:{i:1;a:3:{s:11:\"auditselect\";s:1:\"3\";s:8:\"username\";s:11:\";邱丽云;\";s:9:\"auditname\";s:5:\";325;\";}}', '1472696878', null);

-- ----------------------------
-- Table structure for `tp_qyworkflow_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyworkflow_user`;
CREATE TABLE `tp_qyworkflow_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `name_defined` text COMMENT '自定义字段',
  `exam_status` tinyint(4) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `next_wecha_id` varchar(100) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `next_num` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyworkflow_user
-- ----------------------------
INSERT INTO `tp_qyworkflow_user` VALUES ('1', '236', '测试', 'a:2:{i:0;a:2:{s:3:\"val\";s:10:\"2016-05-14\";s:4:\"name\";s:2:\"11\";}i:1;a:2:{s:3:\"val\";s:16:\"2016-05-27 20:40\";s:4:\"name\";s:2:\"22\";}}', null, '1', '15990093987', '1', '0', '1463122026', 'a:1:{i:0;s:11:\"15990093987\";}');
INSERT INTO `tp_qyworkflow_user` VALUES ('2', '236', '合同签订审核流程', 'a:1:{i:0;a:2:{s:3:\"val\";s:6:\"小米\";s:4:\"name\";s:9:\"签单人\";}}', null, '2', 'xiao_158678', '1', '0', '1464160370', 'a:2:{i:0;s:9:\"moyuhui13\";i:1;s:15:\"yang15824209289\";}');
INSERT INTO `tp_qyworkflow_user` VALUES ('3', '236', '合同签订审核流程', 'a:1:{i:0;a:2:{s:3:\"val\";s:6:\"小米\";s:4:\"name\";s:9:\"签单人\";}}', null, '2', 'yang15824209289', '1', '0', '1464165271', 'a:2:{i:0;s:11:\"qiuliyun001\";i:1;s:15:\"yang15824209289\";}');
INSERT INTO `tp_qyworkflow_user` VALUES ('4', '236', '合同签订审核流程', 'a:1:{i:0;a:2:{s:3:\"val\";s:6:\"毛晴\";s:4:\"name\";s:9:\"签单人\";}}', null, '2', 'qing482x', '0', 'qiuliyun001', '1464331587', 'a:2:{i:0;s:11:\"qiuliyun001\";i:1;s:15:\"yang15824209289\";}');
INSERT INTO `tp_qyworkflow_user` VALUES ('5', '236', '测试', 'a:2:{i:0;a:2:{s:3:\"val\";s:0:\"\";s:4:\"name\";s:2:\"11\";}i:1;a:2:{s:3:\"val\";s:0:\"\";s:4:\"name\";s:2:\"22\";}}', null, '1', 'wym030508', '1', '0', '1464492312', 'a:1:{i:0;s:11:\"15990093987\";}');

-- ----------------------------
-- Table structure for `tp_qyworkflow_witer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyworkflow_witer`;
CREATE TABLE `tp_qyworkflow_witer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `form_wecha_id` varchar(100) DEFAULT NULL COMMENT '需要审核人的id',
  `module` varchar(32) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyworkflow_witer
-- ----------------------------
INSERT INTO `tp_qyworkflow_witer` VALUES ('1', '236', '1', '15990093987', '1', '15990093987', null, '1463122026');
INSERT INTO `tp_qyworkflow_witer` VALUES ('2', '236', '2', 'xiao_158678', '1', 'moyuhui13', null, '1464160370');
INSERT INTO `tp_qyworkflow_witer` VALUES ('3', '236', '2', 'xiao_158678', '1', 'yang15824209289', null, '1464160370');
INSERT INTO `tp_qyworkflow_witer` VALUES ('4', '236', '3', 'yang15824209289', '1', 'qiuliyun001', null, '1464165271');
INSERT INTO `tp_qyworkflow_witer` VALUES ('5', '236', '3', 'yang15824209289', '1', 'yang15824209289', null, '1464165271');
INSERT INTO `tp_qyworkflow_witer` VALUES ('6', '236', '4', 'qing482x', '0', 'qiuliyun001', null, '1464331587');
INSERT INTO `tp_qyworkflow_witer` VALUES ('7', '236', '4', 'qing482x', '0', 'yang15824209289', null, '1464331587');
INSERT INTO `tp_qyworkflow_witer` VALUES ('8', '236', '5', 'wym030508', '1', '15990093987', null, '1464492312');

-- ----------------------------
-- Table structure for `tp_qywork_answer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qywork_answer`;
CREATE TABLE `tp_qywork_answer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `wecha_id` varchar(20) NOT NULL DEFAULT '',
  `answer` varchar(1000) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `is_right` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qywork_answer
-- ----------------------------
INSERT INTO `tp_qywork_answer` VALUES ('248', '208', 'sfjie19871113', '0.,0.', '20', '1,1');
INSERT INTO `tp_qywork_answer` VALUES ('249', '207', 'Ericren999', '2.', '0', '0');

-- ----------------------------
-- Table structure for `tp_qywork_paper`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qywork_paper`;
CREATE TABLE `tp_qywork_paper` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `time` int(10) DEFAULT NULL,
  `starttime` int(10) DEFAULT NULL,
  `endtime` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `depart` varchar(200) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `each_score` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qywork_paper
-- ----------------------------
INSERT INTO `tp_qywork_paper` VALUES ('207', '236', '作业', '1464664886', null, null, '1', null, 'sfjie19871113', '10');
INSERT INTO `tp_qywork_paper` VALUES ('208', '236', '数学', '1464665087', null, null, '1', null, 'sfjie19871113', '10');
INSERT INTO `tp_qywork_paper` VALUES ('209', '236', '厕测试', '1464750856', null, null, '0', null, '15990093987', '100');
INSERT INTO `tp_qywork_paper` VALUES ('210', '236', '语文', '1464828122', null, null, '0', null, 'sfjie19871113', '10');
INSERT INTO `tp_qywork_paper` VALUES ('211', '236', '作业', '1464936062', null, null, '0', null, 'sfjie19871113', '10');
INSERT INTO `tp_qywork_paper` VALUES ('212', '236', '112', '1464937872', null, null, '0', null, '15990093987', '12');
INSERT INTO `tp_qywork_paper` VALUES ('213', '236', '111', '1465183032', null, null, '0', null, 'qing482x', '23');
INSERT INTO `tp_qywork_paper` VALUES ('214', '236', 'shu x', '1465193858', null, null, '1', null, 'sfjie19871113', '10');

-- ----------------------------
-- Table structure for `tp_qywork_question`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qywork_question`;
CREATE TABLE `tp_qywork_question` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `tid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `time` int(10) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `right_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qywork_question
-- ----------------------------
INSERT INTO `tp_qywork_question` VALUES ('257', '236', '0', '1', '5-1', 'a:3:{i:0;s:1:\"4\";i:1;s:1:\"8\";i:2;s:1:\"5\";}', '1464664566', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('258', '236', '0', '1', '3*4', 'a:3:{i:0;s:2:\"12\";i:1;s:1:\"8\";i:2;s:1:\"5\";}', '1464664500', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('259', '236', '0', '1', '5/5', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"8\";i:2;s:1:\"5\";}', '1464664596', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('260', '236', '0', '1', '5 5', 'a:3:{i:0;s:2:\"10\";i:1;s:1:\"8\";i:2;s:1:\"5\";}', '1464664611', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('261', '236', '0', '1', '1 1', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}', '1464664709', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('262', '236', '0', '1', '顾家家居', 'a:3:{i:0;s:9:\"葡萄酒\";i:1;s:9:\"去他家\";i:2;s:6:\"妥妥\";}', '1464664816', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('263', '236', '207', '1', '问题1', 'a:3:{i:0;s:7:\"答案1\";i:1;s:8:\"答案 2\";i:2;s:7:\"答案3\";}', '1464664951', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('264', '236', '208', '1', '5 5', 'a:3:{i:0;s:2:\"10\";i:1;s:1:\"8\";i:2;s:1:\"9\";}', '1464665115', '0,', '1');
INSERT INTO `tp_qywork_question` VALUES ('265', '236', '208', '1', '4 6', 'a:3:{i:0;s:2:\"10\";i:1;s:1:\"9\";i:2;s:1:\"8\";}', '1464665167', '0,', '1');
INSERT INTO `tp_qywork_question` VALUES ('266', '236', '209', '1', '5 5', 'a:3:{i:0;s:2:\"10\";i:1;s:1:\"5\";i:2;s:2:\"55\";}', '1464750899', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('267', '236', '211', '1', '5 5=', 'a:3:{i:0;s:2:\"10\";i:1;s:1:\"6\";i:2;s:1:\"9\";}', '1464936102', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('268', '236', '212', '1', '5 7', 'a:1:{i:0;s:3:\"122\";}', '1464937893', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('269', '236', '212', '1', '2 6', 'a:1:{i:0;s:3:\"1ww\";}', '1464937921', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('270', '236', '213', '1', '3+9=', 'a:3:{i:0;s:2:\"11\";i:1;s:1:\"1\";i:2;s:2:\"23\";}', '1465183043', '0,', null);
INSERT INTO `tp_qywork_question` VALUES ('271', '236', '214', '1', '5+5', 'a:3:{i:0;s:2:\"10\";i:1;s:1:\"8\";i:2;s:1:\"6\";}', '1465193883', '0,', null);

-- ----------------------------
-- Table structure for `tp_qywork_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qywork_user`;
CREATE TABLE `tp_qywork_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `member` varchar(255) DEFAULT NULL COMMENT '1为管理员 2为老师 3为家长',
  `departid` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `wxid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qywork_user
-- ----------------------------
INSERT INTO `tp_qywork_user` VALUES ('1', '236', '23;17;5;11;12;7;122;139;176;177;', '杨姐;李园园;邱丽云;陈毛晴;王幼美;尹益静;cwz;方小龙;史芳杰;shilaoshi;', '2859', '测试组', '8');

-- ----------------------------
-- Table structure for `tp_qywxpay`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qywxpay`;
CREATE TABLE `tp_qywxpay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `appid` varchar(20) NOT NULL,
  `mch_id` char(10) NOT NULL,
  `sign` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qywxpay
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_qyzhu_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qyzhu_menu`;
CREATE TABLE `tp_qyzhu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `orders` int(5) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `picurl` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `display` int(1) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qyzhu_menu
-- ----------------------------
INSERT INTO `tp_qyzhu_menu` VALUES ('1', '25', null, 'aaa', null, null, null, '0');

-- ----------------------------
-- Table structure for `tp_qy_node`
-- ----------------------------
DROP TABLE IF EXISTS `tp_qy_node`;
CREATE TABLE `tp_qy_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `node_user` varchar(32) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `node_name` varchar(32) DEFAULT NULL,
  `node_pic` varchar(255) DEFAULT NULL,
  `position` varchar(32) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qy_node
-- ----------------------------
INSERT INTO `tp_qy_node` VALUES ('1', '236', 'ccj13584715155', '0', '校长', 'http://wq.weijiabao.com.cn/icon/87fCjvvu1464660289.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('6', '236', 'wangliaweiq22', '1', '教务处', 'http://wq.weijiabao.com.cn/icon/EvhRdbjj1464660297.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('9', '236', 'lim1543', '1', '总务处', 'http://wq.weijiabao.com.cn/icon/CMVIGw4W1464660293.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('10', '236', 'chenhua123', '1', '德育处', 'http://wq.weijiabao.com.cn/icon/LCs4cPyt1464660289.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('11', '236', 'fangxiao12', '1', '人事办公室', 'http://wq.weijiabao.com.cn/icon/qkyk3GZu1464660291.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('12', '236', 'maohuan00', '1', '团委', 'http://wq.weijiabao.com.cn/icon/oOqw38ID1464660293.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('13', '236', 'huangjixiao211789', '6', '实训组长', 'http://wq.weijiabao.com.cn/icon/W01TUjBR1464661486.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('14', '236', 'lixiang652191', '6', '科组长', 'http://wq.weijiabao.com.cn/icon/I8lXUgLu1464661486.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('15', '236', 'fenfangtao', '6', '教研组长', 'http://wq.weijiabao.com.cn/icon/kWqxXMUh1464661485.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('16', '236', 'To-be-a-Man', '6', '图书馆长', 'http://wq.weijiabao.com.cn/icon/BlegWn0w1464661490.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('17', '236', 'jxly070520', '6', '教材组长', 'http://wq.weijiabao.com.cn/icon/DBkkCLJI1464661486.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('18', '236', 'chuting167349', '6', '就业中心负责人', 'http://wq.weijiabao.com.cn/icon/V2ESRNMC1464661482.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('19', '236', 'aaa23302', '9', '印刷室长', 'http://wq.weijiabao.com.cn/icon/C4SY3CRn1464661480.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('20', '236', 'cai201', '9', '医务室长', 'http://wq.weijiabao.com.cn/icon/MPKzWQfB1464661481.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('21', '236', 'wang1501', '9', '总务室长', 'http://wq.weijiabao.com.cn/icon/eePx4D3L1464661490.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('22', '236', 'alwayslike-you', '9', '校车室长', 'http://wq.weijiabao.com.cn/icon/Ff8M4F4E1464661480.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('23', '236', 'sbq100214', '9', '膳食组长', 'http://wq.weijiabao.com.cn/icon/j8Vydcxv1464661489.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('24', '236', 'li1994', '9', '财务室长', 'http://wq.weijiabao.com.cn/icon/ZPTKxILF1464661486.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('25', '236', 'qian890', '10', '心理室长', 'http://wq.weijiabao.com.cn/icon/Suvc1XxZ1464661487.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('26', '236', 'axiaoz', '10', '级部长', 'http://wq.weijiabao.com.cn/icon/roFfWbCF1464661480.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('27', '236', 'xiao123', '10', '安全应急组长', 'http://wq.weijiabao.com.cn/icon/QwsKx2kd1464661492.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('28', '236', 'yi520ni', '12', '团支部长', 'http://wq.weijiabao.com.cn/icon/tnxboQqN1464661494.jpg', null, null);
INSERT INTO `tp_qy_node` VALUES ('29', '236', 'xll1235412', '12', '学生会长', 'http://wq.weijiabao.com.cn/icon/0jkegyFe1464661492.jpg', null, null);

-- ----------------------------
-- Table structure for `tp_suiteid`
-- ----------------------------
DROP TABLE IF EXISTS `tp_suiteid`;
CREATE TABLE `tp_suiteid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `apkey` varchar(100) DEFAULT NULL,
  `suiteid` varchar(100) DEFAULT NULL,
  `su_secret` varchar(100) DEFAULT NULL,
  `suiteticket` varchar(300) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_suiteid
-- ----------------------------
INSERT INTO `tp_suiteid` VALUES ('3', 'XwgfjF1421291410', 'W8bh2feET4prmjFJEqAlBiheZ2tSb7X5S9a3R4MMpVN', 'tje8614baee148097c', 'YuLYCkd-GJfvdMCUojXeOtKnw3f-iI6h-2jMKvwcVY53HH3Ip6nWO-OZ9SZ_wzkg', '9Q9deOf8ckc37llYI7UENorgugqqivdDouWbQWhbvbTXObLwi-JQP6dN9RJt6r3e', '基础类', 'http://qy.ilovety.cn/TempFile/admin/image/20150115110955407.png', '1');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `templet` varchar(10) DEFAULT 'lanrain',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'admin', 'admin', '1', '1', '', '1417167020', '111.174.9.122', '', 'fwm_gd');
INSERT INTO `tp_user` VALUES ('2', 'admin123', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '4刚刚梵蒂冈', '1412395196', '27.19.178.94', '', 'lanrain');

-- ----------------------------
-- Table structure for `tp_xinwen_news`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xinwen_news`;
CREATE TABLE `tp_xinwen_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `touser` varchar(300) DEFAULT NULL,
  `theme` varchar(64) DEFAULT NULL,
  `content` longtext,
  `type` varchar(255) DEFAULT NULL COMMENT '1家长2老师3家长和老师',
  `time` varchar(16) DEFAULT NULL,
  `wxid` varchar(255) DEFAULT NULL,
  `wecha_id` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xinwen_news
-- ----------------------------
INSERT INTO `tp_xinwen_news` VALUES ('2', '236', '测试组', '测试测试', '测试一下功能，请忽略，谢谢', null, '1464663500', '8', 'sfjie19871113', '', '3');
INSERT INTO `tp_xinwen_news` VALUES ('7', '236', '测试组', '222', '2467', null, '1464861154', '8', '15990093987', '', '37');

-- ----------------------------
-- Table structure for `tp_xinwen_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xinwen_user`;
CREATE TABLE `tp_xinwen_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `member` varchar(255) DEFAULT NULL,
  `wxid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `departid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xinwen_user
-- ----------------------------
INSERT INTO `tp_xinwen_user` VALUES ('1', '236', '测试组', 'cwz;方小龙;李园园;陈毛晴;邱丽云;史芳杰;shilaoshi;王幼美;尹益静;杨姐;周春红;', ';8;', '122;139;166;170;172;176;177;190;194;197;203;', '2859');
INSERT INTO `tp_xinwen_user` VALUES ('2', '246', '易跨购', '邱丽云;杨海飞;俞则栋;', ';1;', '325;326;327;', '2927');
