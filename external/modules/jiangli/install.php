<?php

$db=&db();

$db->query("CREATE TABLE `".DB_PREFIX."_epay_jiangli_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '' COMMENT '会员ID',
  `user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '会员名称',
  `money` float NOT NULL DEFAULT '0' COMMENT '当次奖励额度',
  `money_passby` float NOT NULL DEFAULT '0' COMMENT '过去奖励的总额度',
  `jiangli_consumption_ratio` float NOT NULL DEFAULT '0' COMMENT '本地奖励时_会员消费流水最大奖励比例',
  `jiangli_pingtai_profit_ratio` float NOT NULL DEFAULT '0' COMMENT '本次奖励时_平台收入的百分比用于当天奖金分配',
  `admin_username` varchar(255) NOT NULL DEFAULT '' COMMENT '本次奖励的管理员',
  `add_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '本次奖励时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='奖励日志';
");

?>