/*
Navicat MySQL Data Transfer

Source Server         : ee
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : doudou

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-25 16:19:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `token` varchar(255) NOT NULL COMMENT '直播口令',
  `courseId` varchar(255) NOT NULL COMMENT '课程直播ID',
  `courseName` varchar(255) NOT NULL COMMENT '课程名称',
  `teacherName` varchar(20) NOT NULL COMMENT '讲师',
  `tel` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `price` float(100,2) NOT NULL COMMENT '课程价额单位元',
  `introduce` varchar(200) DEFAULT NULL COMMENT '课程简介',
  `url` varchar(255) NOT NULL COMMENT '播放地址',
  `onLineTime` datetime NOT NULL COMMENT '直播时间',
  `courseLogo` varchar(255) NOT NULL COMMENT '课程logo',
  `icon1` varchar(255) DEFAULT NULL COMMENT '宣传图片1',
  `icon2` varchar(255) DEFAULT NULL COMMENT '宣传图片2',
  `icon3` varchar(255) DEFAULT NULL COMMENT '宣传图片3',
  `tm` text COMMENT '主讲教材',
  `detail` text COMMENT '接口介绍',
  `courseType` int(5) NOT NULL DEFAULT '1' COMMENT '课程分类（1大讲堂、2小班课程）',
  `couresTime` varchar(255) NOT NULL COMMENT '每课时时长',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '123456', '14058720', '1', '外教', 'xxxxxxx', '160.00', 'xxxxxx', 'xxxxxx', '2016-03-22 18:55:23', 'http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1305/30/c0/21447200_1369886146048.jpg', '', '', '', null, 'xxxxxx', '3', '45分钟', '2016-03-19 18:54:43', '2016-03-19 18:54:43');
INSERT INTO `course` VALUES ('2', '123456', '14058720', '2', '外教', 'xxxxxxx', '120.00', 'xxxxxx', 'xxxxxx', '2016-03-19 18:57:17', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', '', '', '', null, 'xxxxxx', '2', '45分钟', '2016-03-19 18:59:31', '2016-03-19 18:59:31');
INSERT INTO `course` VALUES ('3', '123456', '14058720', '3', '外教', 'xxxxxxx', '80.00', 'xxxxxx', 'xxxxxx', '2016-03-20 14:45:27', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', '', '', '', null, 'xxxxxx', '2', '45分钟', '2016-03-20 14:45:27', '2016-03-20 14:45:27');
INSERT INTO `course` VALUES ('4', '123456', '14058720', '4', '外教', 'xxxxxxx', '60.00', 'xxxxxx', 'xxxxxx', '2016-04-12 21:18:01', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', '', '', '', null, 'xxxxxx', '2', '45分钟', '2016-04-12 21:18:01', '2016-04-12 21:18:01');
INSERT INTO `course` VALUES ('5', '618360', '04711100', '5', '外教', 'xxxxxxx', '10.00', 'xxxxxx', 'xxxxxx', '2016-04-09 13:04:36', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', '', '', '', null, 'xxxxxx', '1', '45分钟', '2016-04-09 13:04:36', '2016-04-09 13:04:36');
INSERT INTO `course` VALUES ('6', '101797', '37182046 ', '6', '外教', 'xxxxxxx', '10.00', 'xxxxxx', 'xxxxxx', '2016-04-16 21:38:24', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', null, null, null, null, 'xxxxxx', '1', '45分钟', '2016-04-16 21:38:52', '2016-04-16 21:38:56');
INSERT INTO `course` VALUES ('7', '881150', '06425854 ', '7', '外教', 'xxxxxxx', '10.00', 'xxxxxx', 'xxxxxx', '2016-04-16 21:43:33', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', null, null, null, null, 'xxxxxx', '1', '45分钟', '2016-04-16 21:44:03', '2016-04-16 21:44:06');
INSERT INTO `course` VALUES ('8', '294433', '28215922', '8', '外教', 'xxxxxxx', '10.00', 'xxxxxx', 'xxxxxx', '2016-04-16 21:46:57', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', null, null, null, null, 'xxxxxx', '1', '45分钟', '2016-04-16 21:43:22', '2016-04-16 21:43:22');
INSERT INTO `course` VALUES ('9', '242122', '15849219 ', '9', '外教', 'xxxxxxx', '10.00', 'xxxxxx', 'xxxxxx', '2016-04-24 12:28:09', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', null, null, null, null, 'xxxxxx', '1', '45分钟', '2016-04-24 12:28:27', '2016-04-24 12:28:30');
INSERT INTO `course` VALUES ('10', '870552', '25061817', '10', '外教', 'xxxxxxx', '10.00', 'xxxxxx', 'xxxxxx', '2016-04-24 12:30:54', 'http://img2.imgtn.bdimg.com/it/u=1270641303,1899256283&fm=21&gp=0.jpg', null, null, null, 'xxxxxx', 'xxxxxx', '1', '45分钟', '2016-04-24 12:31:13', '2016-04-24 12:31:17');

-- ----------------------------
-- Table structure for idea
-- ----------------------------
DROP TABLE IF EXISTS `idea`;
CREATE TABLE `idea` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(255) NOT NULL COMMENT '联系号码',
  `contact` varchar(255) NOT NULL COMMENT '联系方式',
  `context` text NOT NULL COMMENT '意见反馈内容',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea
-- ----------------------------
INSERT INTO `idea` VALUES ('1', '572839485', 'QQ', '感谢你的意见、如果感觉不错记得在码云上点个start', '2016-05-19 14:59:18');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `out_trade_no` varchar(128) DEFAULT NULL COMMENT '订单编号',
  `appid` varchar(32) NOT NULL,
  `openId` varchar(128) NOT NULL COMMENT '用户标识',
  `ordertime` datetime NOT NULL COMMENT '服务预约时间',
  `totolhour` varchar(32) DEFAULT NULL COMMENT '服务时长',
  `addressId` varchar(255) NOT NULL COMMENT '预约地址',
  `ordertype` varchar(10) DEFAULT NULL COMMENT '订单类型\r\n1:日常保洁\r\n2:擦玻璃\r\n3:开荒保洁\r\n4:空调清洗\r\n5:油烟机清洗\r\n6:洗衣机\r\n7:冰箱\r\n',
  `orderstate` varchar(10) DEFAULT NULL COMMENT '订单状态',
  `staff_no` varchar(255) DEFAULT NULL COMMENT '完成本订单师傅编号',
  `transaction_id` varchar(40) DEFAULT NULL COMMENT '微信支付订单号',
  `total_fee` int(100) NOT NULL COMMENT '总金额',
  `time_end` varchar(100) NOT NULL COMMENT '支付完成时间',
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  `selNum1` int(10) DEFAULT '0' COMMENT '类型1',
  `selNum2` int(10) DEFAULT '0' COMMENT '类型2',
  PRIMARY KEY (`id`,`openId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('101', '18051415010001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 10:30:00', '0', '46', '3', '1', '', '', '76', '', '2018-05-14 15:01:14', '12', '2');
INSERT INTO `orders` VALUES ('102', '18051415030001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 10:30:00', '0', '46', '5', '2', '', '', '360', '', '2018-05-14 15:03:36', '2', '0');
INSERT INTO `orders` VALUES ('103', '18051418010001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 12:30:00', '0', '46', '1', '2', '', '', '140', '', '2018-05-14 18:01:35', '4', '0');
INSERT INTO `orders` VALUES ('104', '18051418040001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 13:00:00', '0', '46', '1', '2', '', '', '140', '', '2018-05-14 18:04:12', '4', '0');
INSERT INTO `orders` VALUES ('105', '18051418040002', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 13:00:00', '0', '46', '6', '4', '', '', '220', '', '2018-05-14 18:04:22', '1', '1');
INSERT INTO `orders` VALUES ('106', '18051418390001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 12:30:00', '0', '46', '5', '4', '', '', '360', '', '2018-05-14 18:39:10', '2', '0');
INSERT INTO `orders` VALUES ('107', '18051418430001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 12:30:00', '0', '46', '1', '4', '', '', '140', '', '2018-05-14 18:43:51', '4', '0');
INSERT INTO `orders` VALUES ('108', '18051418460001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 12:30:00', '0', '46', '1', '1', '', '', '140', '', '2018-05-14 18:46:21', '4', '0');
INSERT INTO `orders` VALUES ('109', '18051418460002', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 12:30:00', '0', '46', '1', '3', '', '', '140', '', '2018-05-14 18:46:57', '4', '0');
INSERT INTO `orders` VALUES ('110', '18051419370001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 12:30:00', '0', '46', '2', '1', '', '', '200', '', '2018-05-14 19:37:19', '4', '0');
INSERT INTO `orders` VALUES ('111', '18051419380001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 10:30:00', '0', '46', '6', '3', '', '', '360', '', '2018-05-14 19:38:35', '2', '1');
INSERT INTO `orders` VALUES ('112', '18051421200001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 13:00:00', '0', '46', '2', '4', '', '', '200', '', '2018-05-14 21:20:28', '4', '0');
INSERT INTO `orders` VALUES ('113', '18051421210001', '', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '2018-05-14 12:30:00', '0', '46', '4', '2', '', '', '390', '', '2018-05-14 21:21:07', '2', '1');

-- ----------------------------
-- Table structure for order_sum
-- ----------------------------
DROP TABLE IF EXISTS `order_sum`;
CREATE TABLE `order_sum` (
  `ID` int(32) NOT NULL,
  `orderID` varchar(32) NOT NULL COMMENT '订单ID',
  `customerID` varchar(32) NOT NULL,
  `staffID` varchar(255) NOT NULL COMMENT '员工ID',
  `state` int(11) DEFAULT NULL COMMENT '订单状态（和订单表相同）',
  `total_fee` varchar(32) DEFAULT NULL COMMENT '订单产生总金额',
  `type` int(32) DEFAULT NULL COMMENT '订单类型（与订单表相同）',
  `orderTime` datetime(6) DEFAULT NULL COMMENT '订单时间（此时间指订单服务时间）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单汇总表，做为对订单表的补充，主要用来汇总统计一段时间来产生的订单。当订单完成时更新维护此表。\r\n此表主要有以下作用：\r\n1.可快速查询某一员工一段时间来接的订单。\r\n2.可快速查询某一客户下的单。\r\n';

-- ----------------------------
-- Records of order_sum
-- ----------------------------

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `courseId` int(100) NOT NULL COMMENT '课程ID',
  `stockCount` int(100) NOT NULL COMMENT '总数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('1', '5', '80');
INSERT INTO `stock` VALUES ('2', '6', '80');
INSERT INTO `stock` VALUES ('3', '7', '1');
INSERT INTO `stock` VALUES ('4', '8', '0');
INSERT INTO `stock` VALUES ('5', '9', '0');
INSERT INTO `stock` VALUES ('6', '10', '0');

-- ----------------------------
-- Table structure for tuser
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(255) NOT NULL COMMENT '昵称',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `password` varchar(255) NOT NULL COMMENT 'MD5密码',
  `password2` varchar(255) NOT NULL COMMENT '明文密码',
  `openId` varchar(255) DEFAULT NULL COMMENT '微信用户的唯一识别',
  `remember` char(1) NOT NULL DEFAULT '0' COMMENT '是否记住密码',
  `registerDate` datetime NOT NULL COMMENT '注册时间',
  `lastLoginDate` datetime DEFAULT NULL COMMENT '最后登录时间',
  `level` int(10) DEFAULT NULL COMMENT '等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------
INSERT INTO `tuser` VALUES ('1', 'Javen', '572839485@qq.com', null, null, '04cac0540031555d7096726f9b3c0779', 'qwqwqwqw', 'ofkJSuGtXgB8n23e-y0kqDjJLXxk', '0', '2016-05-14 11:50:28', '2016-05-19 14:52:55', '101');
INSERT INTO `tuser` VALUES ('2', 'Javen205', '342796937@qq.com', null, null, '7a12a47984333222320df4510947fbdd', 'qwqwqw', 'ofkJSuGtXgB8n23e-y0kqDjJLXxk', '1', '2016-05-19 15:07:25', '2016-05-19 15:08:32', '1');

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNum` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `openId` varchar(255) DEFAULT NULL,
  `defaultVal` varchar(10) DEFAULT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('娄底外国语学校娄底外国语学校娄底外国语学校', '周先生', '17503036570', '2018-05-01 20:50:33', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '1', '46');
INSERT INTO `t_address` VALUES ('短时大风蓝色的疯狂的防', '的', '124333333', '2018-05-04 09:05:26', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', '0', '47');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `ID` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `phoneNum` varchar(32) NOT NULL COMMENT '手机号（必填）',
  `address` varchar(255) NOT NULL COMMENT '常用地址',
  `registeTime` datetime(6) NOT NULL COMMENT '用户注册时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Records of t_customer
-- ----------------------------

-- ----------------------------
-- Table structure for t_staff
-- ----------------------------
DROP TABLE IF EXISTS `t_staff`;
CREATE TABLE `t_staff` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `phoneNum` varchar(22) NOT NULL COMMENT '手机号（必填）',
  `address` varchar(255) NOT NULL COMMENT '联系地址',
  `type` varchar(32) NOT NULL COMMENT '技师服务类型（如：1：家政 2：空调；3：下水道），有多个时用逗号分隔',
  `description` varchar(255) DEFAULT NULL COMMENT '技师的描述介绍',
  `imgUrl` varchar(255) NOT NULL COMMENT '技师个人图片',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技师服务表';

-- ----------------------------
-- Records of t_staff
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(255) DEFAULT NULL COMMENT '用户标示',
  `subscribeTime` datetime DEFAULT NULL,
  `unsubscribeTime` datetime DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL COMMENT '昵称',
  `unionid` varchar(255) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `privilege` varchar(255) DEFAULT NULL COMMENT '用户特权信息，json 数组，如微信沃卡用户为（chinaunicom）',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '图像',
  `country` varchar(10) DEFAULT NULL COMMENT '国家',
  `city` varchar(10) DEFAULT NULL COMMENT '城市',
  `province` varchar(10) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('32', 'ofkJSuGtXgB8n23e-y0kqDjJLXxk', null, null, '*ೄ˚༄Javen༡', null, null, 'http://wx.qlogo.cn/mmopen/XwCV8SHaDJI7F27oniaYZURnahC0wPC1UNBX6yLeXIEdXiaAektGrdQsscZzyWqFcwp2LsPhUnOiacRKszApz136iaQcKnovG129/0', '中国', '武汉', '湖北', '1', '2016-05-19 15:08:37', null);
INSERT INTO `users` VALUES ('33', 'okpT50fzxb4DgPhaNQFs-iE-tPlY', null, null, '远东情报站', null, null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI2ypuOuCibDFTff0VZ2JKWsibMxKvAJc4F9RsIdu87VGEXIiblJwWtvHI1bXMrPVEZyMWqWfTXicemNg/132', '中国', '深圳', '广东', '1', '2018-05-01 19:15:25', null);
