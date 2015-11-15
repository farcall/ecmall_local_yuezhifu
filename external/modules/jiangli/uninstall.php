<?php

$db=&db();
$db->query("DROP TABLE ".DB_PREFIX."epay_operate");
$db->query("DROP TABLE ".DB_PREFIX."epay_jinbi_log");
$db->query("DROP TABLE ".DB_PREFIX."epay_jinbi2money_log");
$db->query("DROP TABLE ".DB_PREFIX."order_xianxia");
?>