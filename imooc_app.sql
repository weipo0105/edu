/*
Navicat MySQL Data Transfer

Source Server         : aliyun_ECS
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : imooc_app

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-06-30 09:42:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ent_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `ent_admin_user`;
CREATE TABLE `ent_admin_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_ip` varchar(30) NOT NULL DEFAULT '',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_2` (`username`),
  KEY `username` (`username`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ent_admin_user
-- ----------------------------
INSERT INTO `ent_admin_user` VALUES ('1', 'admin', '193be7baf69ee80e183ec0bfb69f0cb1', '222.128.183.142', '1530252178', '0', '1', '1528333454', '1530252178');



/*
Navicat MySQL Data Transfer

Source Server         : aliyun_ECS
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : imooc_app

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-06-30 09:42:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ent_news
-- ----------------------------
DROP TABLE IF EXISTS `ent_news`;
CREATE TABLE `ent_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `small_title` varchar(20) NOT NULL DEFAULT '',
  `catid` int(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `description` varchar(200) NOT NULL,
  `is_position` tinyint(1) NOT NULL DEFAULT '0',
  `is_head_figure` tinyint(1) NOT NULL DEFAULT '0',
  `is_allowcomments` tinyint(1) NOT NULL DEFAULT '0',
  `listorder` int(8) NOT NULL,
  `source _type` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ent_news
-- ----------------------------
INSERT INTO `ent_news` VALUES ('1', '多图', '34rw', '0', '/public/upload/20180604/94340d90867d7a37a1fc5e3cf31db17b.png', '<p>adsgfdsgdfghdfqweaw</p>', 'sdafsdfg', '1', '1', '1', '0', '0', '1528115351', '1528115351', '0');
INSERT INTO `ent_news` VALUES ('2', '多图5', 'asdfdasfsda', '0', '/public/upload/20180604/b0bf99b551b74f30a829f22ee0622fd4.png', '<p>adsfg</p>', 'asdfdsafg', '1', '1', '1', '0', '0', '1528116853', '1528116853', '0');
INSERT INTO `ent_news` VALUES ('3', '测试5', 'awerawe', '0', '/public/upload/20180604/2ad122b3bf5817bfabed54b71fa055d2.png', '<p>asefd</p>', 'awertfew', '1', '1', '1', '0', '0', '1528116889', '1528116889', '0');
INSERT INTO `ent_news` VALUES ('4', '测试6', 'asdfasf', '0', '/public/upload/20180604/59d8717eef460ff335ae25828a66505c.png', '<p>sdafdsfgdsgdsg</p>', 'awerfsdf', '1', '1', '1', '0', '0', '1528116957', '1528116957', '0');
INSERT INTO `ent_news` VALUES ('5', '测试7', 'dfsgdfgsd', '0', '/public/upload/20180604/dcb91364c372d8356d9efb42d65e0aba.png', '<p>dfgdfs</p>', 'dsfdsgsd', '1', '1', '1', '0', '0', '1528117005', '1528117005', '0');
