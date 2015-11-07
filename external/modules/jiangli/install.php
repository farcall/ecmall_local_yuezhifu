<?php

$db=&db();

//金币发放日志表(ecm_epay_jinbi_log)
$db->query("CREATE TABLE `".DB_PREFIX."epay_jinbi_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '会员名称',
  `jinbi` float(10,2) NOT NULL DEFAULT '0' COMMENT '当次奖励金币数量',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '本次奖励时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1:完成 0:未完成',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='金币发放日志';
");

//每日运营情况表(ecm_epay_operate)
$db->query("CREATE TABLE `".DB_PREFIX."epay_operate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `liushui` float(10,2) NOT NULL DEFAULT '0' COMMENT '今日平台订单总额度',
  `choucheng` float(10,2) NOT NULL DEFAULT '0' COMMENT '今日平台抽取的提成总额度',
  `kezhipei` float(10,2) NOT NULL DEFAULT '0' COMMENT '今日用于分配的可支配资金',
  `shijizhipei` float(10,2) NOT NULL DEFAULT '0' COMMENT '今日平台实际用于支配的资金',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '今日参与分配的人数',
  `admin_name` varchar(255) NOT NULL DEFAULT '' COMMENT '今日负责分配的管理员名称',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '今日分配计划时间',
  `fenpei_time` int(10) NOT NULL DEFAULT '0' COMMENT '今日分配实际时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1:完成0:未完成',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='每日运营情况表';
");

//金币转换为虚拟货币表(ecm_epay_jinbi2money_log)
$db->query("CREATE TABLE `".DB_PREFIX."epay_jinbi2money_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '会员名称',
  `jinbi` float(10,2) NOT NULL DEFAULT '0' COMMENT '用于转换的金币数量',
  `money` float(10,2) NOT NULL DEFAULT '0' COMMENT '时间转换得到的虚拟金钱数量',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '兑换时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1:完成0:未完成',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='金币转换虚拟货币日志表(默认金币1:1虚拟货币)';
");
?>