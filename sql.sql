create database edu;

use edu;

DROP TABLE IF EXISTS `edu_user`;

CREATE TABLE `edu_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `role` tinyint(2) unsigned DEFAULT '1' COMMENT '角色',
  `status` int(2) unsigned DEFAULT '1' COMMENT '状态:1启用0禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `login_time` int(11) unsigned DEFAULT NULL COMMENT '登录时间',
  `login_count` int(11) unsigned DEFAULT '0' COMMENT '登录次数',
  `is_delete` int(2) unsigned DEFAULT '0' COMMENT '是否删除1是0否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `edu_user` (`id`, `name`, `password`, `email`, `role`, `status`, `create_time`, `update_time`, `delete_time`, `login_time`, `login_count`, `is_delete`)
VALUES
	(1,'admin','e10adc3949ba59abbe56e057f20f883e','admin123@php.cn',0,1,1501493848,1502340075,NULL,1502339370,20,1),
	(3,'peter','e10adc3949ba59abbe56e057f20f883e','peter888@php.cn',1,1,1501582576,1502260457,NULL,1502168741,15,1),
	(6,'jack','e10adc3949ba59abbe56e057f20f883e','jack123@php.cn',0,1,1502064844,1502260457,NULL,1502082773,1,1),
	(7,'zhu','e10adc3949ba59abbe56e057f20f883e','zhu@php.cn',0,1,NULL,1502260457,NULL,NULL,0,1),
	(8,'php','e10adc3949ba59abbe56e057f20f883e','php@php.cn',0,1,1502091384,1502260457,NULL,NULL,0,1),
	(9,'html','e10adc3949ba59abbe56e057f20f883e','html@php.cn',0,1,1502091961,1502260457,NULL,NULL,0,1),
	(10,'css','e10adc3949ba59abbe56e057f20f883e','css@php.cn',0,1,1502092407,1502260457,NULL,NULL,0,1),
	(11,'yangtao','e10adc3949ba59abbe56e057f20f883e','yangtao@php.cn',0,1,1502171809,1502260457,NULL,NULL,0,1);