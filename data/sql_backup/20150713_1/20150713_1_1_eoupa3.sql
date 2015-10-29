-- TOTAL : 1
-- ECMall 2.0 SQL Dump Program
-- Microsoft-IIS/7.5
-- 
-- DATE : 2015-07-13 14:58:10
-- MYSQL SERVER VERSION : 5.1.71-community
-- PHP VERSION : 5.2.17
-- ECMall VERSION : 2.3.0
-- Vol : 1
DROP TABLE IF EXISTS ecm_acategory;
CREATE TABLE ecm_acategory (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  cate_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (cate_id)
) ENGINE=MyISAM;
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('1','商城帮助','0','0','help');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('2','商城公告','0','0','notice');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('3','内置文章','0','0','system');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('4','最新资讯','0','255',null);
DROP TABLE IF EXISTS ecm_ad;
CREATE TABLE ecm_ad (
  ad_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  ad_logo varchar(255) DEFAULT NULL,
  ad_name varchar(60) NOT NULL DEFAULT '',
  ad_description varchar(255) NOT NULL DEFAULT '' COMMENT '广告描述',
  ad_link varchar(255) NOT NULL DEFAULT '',
  ad_type tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '广告图类型',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  sort_order smallint(5) unsigned NOT NULL DEFAULT '0',
  user_id int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属用户ID',
  PRIMARY KEY (ad_id)
) ENGINE=MyISAM;
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('1','data/files/mall/ad/1.jpg','手机首页轮播图1','','index.php','1','1','1','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('2','data/files/mall/ad/2.jpg','手机首页轮播图2','','index.php','1','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('3','data/files/mall/ad/3.jpg','手机首页轮播图3','','index.php','1','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('4','data/files/mall/ad/4.jpg','手机首页轮播图4','','index.php','1','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('5','data/files/mall/ad/5.png','我的关注','','index.php?app=my_favorite','2','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('6','data/files/mall/ad/6.png','促销','','index.php?app=protion','2','1','1','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('7','data/files/mall/ad/7.png','电影票','','index.php?app=search&cate_id=2','2','1','2','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('8','data/files/mall/ad/8.png','充值','','index.php?app=epay&act=czlist','2','1','3','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('9','data/files/mall/ad/9.png','我的商城','','index.php?app=member','2','1','4','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('10','data/files/mall/ad/10.png','购物车','','index.php?app=cart','2','1','5','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('11','data/files/mall/ad/11.png','物流查询','','index.php?app=mapstore&act=address','2','1','6','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('12','data/files/mall/ad/12.png','商品分类','','index.php?app=category','2','1','7','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('13','data/files/mall/ad/13.jpg','手机精彩活动1','','index.php','3','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('14','data/files/mall/ad/14.jpg','手机精彩活动2','','index.php','3','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('15','data/files/mall/ad/15.jpg','手机精彩活动3','','index.php','3','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('16','data/files/mall/ad/16.jpg','手机商城推荐1','','index.php','4','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('17','data/files/mall/ad/17.jpg','手机商城推荐2','','index.php','4','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('18','data/files/mall/ad/18.jpg','手机商城推荐3','','index.php','4','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('26','data/files/mall/ad/26.jpg','放假','','index.php','6','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('20','data/files/mall/ad/20.jpg','时鲜水果、网上菜场','汇聚果蔬生鲜','index.php','5','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('21','data/files/mall/ad/21.jpg','粮油乳品、南北干货','精选优质粮油','index.php','5','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('22','data/files/mall/ad/22.jpg','数码耗材、无线路由','回家过年必备','index.php','5','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('27','data/files/mall/ad/27.jpg','出游季','','index.php','6','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('28','data/files/mall/ad/28.jpg','劲爆秒杀','','index.php','6','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('29','data/files/mall/ad/29.jpg','生活','','index.php','7','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('30','data/files/mall/ad/30.jpg','风尚','','index.php','7','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('31','data/files/mall/ad/31.jpg','水果','','index.php','7','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('32','data/files/mall/ad/32.jpg','品牌特卖','','index.php','8','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('33','data/files/mall/ad/33.jpg','品牌秀','','index.php','8','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('34','data/files/mall/ad/34.jpg','最招牌','','index.php','8','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('35','data/files/mall/ad/35.jpg','理财','','index.php','9','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('36','data/files/mall/ad/36.jpg','换新','','index.php','9','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('37','data/files/mall/ad/37.jpg','马上领','','index.php','9','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('38','data/files/mall/ad/38.jpg','美食','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('39','data/files/mall/ad/39.jpg','鞋包','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('40','data/files/mall/ad/40.jpg','母婴','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('41','data/files/mall/ad/41.jpg','美妆','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('42','data/files/mall/ad/42.jpg','电脑','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('43','data/files/mall/ad/43.jpg','手机','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('44','data/files/mall/ad/44.jpg','家装','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('45','data/files/mall/ad/45.jpg','电器','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('46','data/files/mall/ad/46.jpg','图书','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('47','data/files/mall/ad/47.jpg','酒水','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('48','data/files/mall/ad/48.jpg','保健','','index.php','10','1','0','0');
INSERT INTO ecm_ad ( `ad_id`, `ad_logo`, `ad_name`, `ad_description`, `ad_link`, `ad_type`, `if_show`, `sort_order`, `user_id` ) VALUES  ('49','data/files/mall/ad/49.jpg','户外','','index.php','10','1','0','0');
DROP TABLE IF EXISTS ecm_address;
CREATE TABLE ecm_address (
  addr_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  consignee varchar(60) NOT NULL DEFAULT '',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(255) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  zipcode varchar(20) DEFAULT NULL,
  phone_tel varchar(60) DEFAULT NULL,
  phone_mob varchar(60) DEFAULT NULL,
  PRIMARY KEY (addr_id),
  KEY user_id (user_id)
) ENGINE=MyISAM;
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('1','3','超级买家','1','中国','请如实填写收货人详细地址','','','8888888');
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('2','8','王大锤','282','中国	河南省	濮阳市','清华园','461000','','1593975654');
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('3','9','边荣耀','282','中国	河南省	濮阳市','长庆路昆濮大厦1320室','','13513911168','13513911168');
DROP TABLE IF EXISTS ecm_article;
CREATE TABLE ecm_article (
  article_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  title varchar(100) NOT NULL DEFAULT '',
  cate_id int(10) NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  link varchar(255) DEFAULT NULL,
  content text,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  add_time int(10) unsigned DEFAULT NULL,
  article_logo varchar(255) DEFAULT NULL,
  PRIMARY KEY (article_id),
  KEY `code` (`code`),
  KEY cate_id (cate_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('1','eula','用户服务协议','3','0','','<p>特别提醒用户认真阅读本《用户服务协议》(下称《协议》) 中各条款。除非您接受本《协议》条款，否则您无权使用本网站提供的相关服务。您的使用行为将视为对本《协议》的接受，并同意接受本《协议》各项条款的约束。 <br /> <br /> <strong>一、定义</strong><br /></p>\r\n<ol>\r\n<li>\"用户\"指符合本协议所规定的条件，同意遵守本网站各种规则、条款（包括但不限于本协议），并使用本网站的个人或机构。</li>\r\n<li>\"卖家\"是指在本网站上出售物品的用户。\"买家\"是指在本网站购买物品的用户。</li>\r\n<li>\"成交\"指买家根据卖家所刊登的交易要求，在特定时间内提出最优的交易条件，因而取得依其提出的条件购买该交易物品的权利。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>二、用户资格</strong><br /> <br /> 只有符合下列条件之一的人员或实体才能申请成为本网站用户，可以使用本网站的服务。</p>\r\n<ol>\r\n<li>年满十八岁，并具有民事权利能力和民事行为能力的自然人；</li>\r\n<li>未满十八岁，但监护人（包括但不仅限于父母）予以书面同意的自然人；</li>\r\n<li>根据中国法律或设立地法律、法规和/或规章成立并合法存在的公司、企事业单位、社团组织和其他组织。</li>\r\n</ol>\r\n<p><br /> 无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不当注册为本网站用户或超过其民事权利或行为能力范围从事交易的，其与本网站之间的协议自始无效，本网站一经发现，有权立即注销该用户，并追究其使用本网站\"服务\"的一切法律责任。<br /> <br /> <strong>三.用户的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>用户有权根据本协议的规定及本网站发布的相关规则，利用本网站网上交易平台登录物品、发布交易信息、查询物品信息、购买物品、与其他用户订立物品买卖合同、在本网站社区发帖、参加本网站的有关活动及有权享受本网站提供的其他的有关资讯及信息服务。</li>\r\n<li>用户有权根据需要更改密码和交易密码。用户应对以该用户名进行的所有活动和事件负全部责任。</li>\r\n<li>用户有义务确保向本网站提供的任何资料、注册信息真实准确，包括但不限于真实姓名、身份证号、联系电话、地址、邮政编码等。保证本网站及其他用户可以通过上述联系方式与自己进行联系。同时，用户也有义务在相关资料实际变更时及时更新有关注册资料。</li>\r\n<li>用户不得以任何形式擅自转让或授权他人使用自己在本网站的用户帐号。</li>\r\n<li>用户有义务确保在本网站网上交易平台上登录物品、发布的交易信息真实、准确，无误导性。</li>\r\n<li>用户不得在本网站网上交易平台买卖国家禁止销售的或限制销售的物品、不得买卖侵犯他人知识产权或其他合法权益的物品，也不得买卖违背社会公共利益或公共道德的物品。</li>\r\n<li>用户不得在本网站发布各类违法或违规信息。包括但不限于物品信息、交易信息、社区帖子、物品留言，店铺留言，评价内容等。</li>\r\n<li>用户在本网站交易中应当遵守诚实信用原则，不得以干预或操纵物品价格等不正当竞争方式扰乱网上交易秩序，不得从事与网上交易无关的不当行为，不得在交易平台上发布任何违法信息。</li>\r\n<li>用户不应采取不正当手段（包括但不限于虚假交易、互换好评等方式）提高自身或他人信用度，或采用不正当手段恶意评价其他用户，降低其他用户信用度。</li>\r\n<li>用户承诺自己在使用本网站网上交易平台实施的所有行为遵守国家法律、法规和本网站的相关规定以及各种社会公共利益或公共道德。对于任何法律后果的发生，用户将以自己的名义独立承担所有相应的法律责任。</li>\r\n<li>用户在本网站网上交易过程中如与其他用户因交易产生纠纷，可以请求本网站从中予以协调。用户如发现其他用户有违法或违反本协议的行为，可以向本网站举报。如用户因网上交易与其他用户产生诉讼的，用户有权通过司法部门要求本网站提供相关资料。</li>\r\n<li>用户应自行承担因交易产生的相关费用，并依法纳税。</li>\r\n<li>未经本网站书面允许，用户不得将本网站资料以及在交易平台上所展示的任何信息以复制、修改、翻译等形式制作衍生作品、分发或公开展示。</li>\r\n<li>用户同意接收来自本网站的信息，包括但不限于活动信息、交易信息、促销信息等。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>四、 本网站的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>本网站不是传统意义上的\"拍卖商\"，仅为用户提供一个信息交流、进行物品买卖的平台，充当买卖双方之间的交流媒介，而非买主或卖主的代理商、合伙  人、雇员或雇主等经营关系人。公布在本网站上的交易物品是用户自行上传进行交易的物品，并非本网站所有。对于用户刊登物品、提供的信息或参与竞标的过程，  本网站均不加以监视或控制，亦不介入物品的交易过程，包括运送、付款、退款、瑕疵担保及其它交易事项，且不承担因交易物品存在品质、权利上的瑕疵以及交易  方履行交易协议的能力而产生的任何责任，对于出现在拍卖上的物品品质、安全性或合法性，本网站均不予保证。</li>\r\n<li>本网站有义务在现有技术水平的基础上努力确保整个网上交易平台的正常运行，尽力避免服务中断或将中断时间限制在最短时间内，保证用户网上交易活动的顺利进行。</li>\r\n<li>本网站有义务对用户在注册使用本网站网上交易平台中所遇到的问题及反映的情况及时作出回复。 </li>\r\n<li>本网站有权对用户的注册资料进行查阅，对存在任何问题或怀疑的注册资料，本网站有权发出通知询问用户并要求用户做出解释、改正，或直接做出处罚、删除等处理。</li>\r\n<li>用  户因在本网站网上交易与其他用户产生纠纷的，用户通过司法部门或行政部门依照法定程序要求本网站提供相关资料，本网站将积极配合并提供有关资料；用户将纠  纷告知本网站，或本网站知悉纠纷情况的，经审核后，本网站有权通过电子邮件及电话联系向纠纷双方了解纠纷情况，并将所了解的情况通过电子邮件互相通知对  方。 </li>\r\n<li>因网上交易平台的特殊性，本网站没有义务对所有用户的注册资料、所有的交易行为以及与交易有关的其他事项进行事先审查，但如发生以下情形，本网站有权限制用户的活动、向用户核实有关资料、发出警告通知、暂时中止、无限期地中止及拒绝向该用户提供服务：         \r\n<ul>\r\n<li>用户违反本协议或因被提及而纳入本协议的文件；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据，而本网站无法联系到该用户核证或验证该用户向本网站提供的任何资料；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据。本网站以普通非专业交易者的知识水平标准对相关内容进行判别，可以明显认为这些内容或行为可能对本网站用户或本网站造成财务损失或法律责任。 </li>\r\n</ul>\r\n</li>\r\n<li>在反网络欺诈行动中，本着保护广大用户利益的原则，当用户举报自己交易可能存在欺诈而产生交易争议时，本网站有权通过表面判断暂时冻结相关用户账号，并有权核对当事人身份资料及要求提供交易相关证明材料。</li>\r\n<li>根据国家法律法规、本协议的内容和本网站所掌握的事实依据，可以认定用户存在违法或违反本协议行为以及在本网站交易平台上的其他不当行为，本网站有权在本网站交易平台及所在网站上以网络发布形式公布用户的违法行为，并有权随时作出删除相关信息，而无须征得用户的同意。</li>\r\n<li>本  网站有权在不通知用户的前提下删除或采取其他限制性措施处理下列信息：包括但不限于以规避费用为目的；以炒作信用为目的；存在欺诈等恶意或虚假内容；与网  上交易无关或不是以交易为目的；存在恶意竞价或其他试图扰乱正常交易秩序因素；该信息违反公共利益或可能严重损害本网站和其他用户合法利益的。</li>\r\n<li>用  户授予本网站独家的、全球通用的、永久的、免费的信息许可使用权利，本网站有权对该权利进行再授权，依此授权本网站有权(全部或部份地)  使用、复制、修订、改写、发布、翻译、分发、执行和展示用户公示于网站的各类信息或制作其派生作品，以现在已知或日后开发的任何形式、媒体或技术，将上述  信息纳入其他作品内。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>五、服务的中断和终止</strong><br /></p>\r\n<ol>\r\n<li>在  本网站未向用户收取相关服务费用的情况下，本网站可自行全权决定以任何理由  (包括但不限于本网站认为用户已违反本协议的字面意义和精神，或用户在超过180天内未登录本网站等)  终止对用户的服务，并不再保存用户在本网站的全部资料（包括但不限于用户信息、商品信息、交易信息等）。同时本网站可自行全权决定，在发出通知或不发出通  知的情况下，随时停止提供全部或部分服务。服务终止后，本网站没有义务为用户保留原用户资料或与之相关的任何信息，或转发任何未曾阅读或发送的信息给用户  或第三方。此外，本网站不就终止对用户的服务而对用户或任何第三方承担任何责任。 </li>\r\n<li>如用户向本网站提出注销本网站注册用户身份，需经本网站审核同意，由本网站注销该注册用户，用户即解除与本网站的协议关系，但本网站仍保留下列权利：         \r\n<ul>\r\n<li>用户注销后，本网站有权保留该用户的资料,包括但不限于以前的用户资料、店铺资料、商品资料和交易记录等。 </li>\r\n<li>用户注销后，如用户在注销前在本网站交易平台上存在违法行为或违反本协议的行为，本网站仍可行使本协议所规定的权利。 </li>\r\n</ul>\r\n</li>\r\n<li>如存在下列情况，本网站可以通过注销用户的方式终止服务：         \r\n<ul>\r\n<li>在用户违反本协议相关规定时，本网站有权终止向该用户提供服务。本网站将在中断服务时通知用户。但如该用户在被本网站终止提供服务后，再一次直接或间接或以他人名义注册为本网站用户的，本网站有权再次单方面终止为该用户提供服务；</li>\r\n<li>一旦本网站发现用户注册资料中主要内容是虚假的，本网站有权随时终止为该用户提供服务； </li>\r\n<li>本协议终止或更新时，用户未确认新的协议的。 </li>\r\n<li>其它本网站认为需终止服务的情况。 </li>\r\n</ul>\r\n</li>\r\n<li>因用户违反相关法律法规或者违反本协议规定等原因而致使本网站中断、终止对用户服务的，对于服务中断、终止之前用户交易行为依下列原则处理：         \r\n<ul>\r\n<li>本网站有权决定是否在中断、终止对用户服务前将用户被中断或终止服务的情况和原因通知用户交易关系方，包括但不限于对该交易有意向但尚未达成交易的用户,参与该交易竞价的用户，已达成交易要约用户。</li>\r\n<li>服务中断、终止之前，用户已经上传至本网站的物品尚未交易或交易尚未完成的，本网站有权在中断、终止服务的同时删除此项物品的相关信息。 </li>\r\n<li>服务中断、终止之前，用户已经就其他用户出售的具体物品作出要约，但交易尚未结束，本网站有权在中断或终止服务的同时删除该用户的相关要约和信息。</li>\r\n</ul>\r\n</li>\r\n<li>本网站若因用户的行为（包括但不限于刊登的商品、在本网站社区发帖等）侵害了第三方的权利或违反了相关规定，而受到第三方的追偿或受到主管机关的处分时，用户应赔偿本网站因此所产生的一切损失及费用。</li>\r\n<li>对违反相关法律法规或者违反本协议规定，且情节严重的用户，本网站有权终止该用户的其它服务。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>六、协议的修订</strong><br /> <br /> 本协议可由本网站随时修订，并将修订后的协议公告于本网站之上，修订后的条款内容自公告时起生效，并成为本协议的一部分。用户若在本协议修改之后，仍继续使用本网站，则视为用户接受和自愿遵守修订后的协议。本网站行使修改或中断服务时，不需对任何第三方负责。<br /> <br /> <strong>七、 本网站的责任范围 </strong><br /> <br /> 当用户接受该协议时，用户应明确了解并同意∶</p>\r\n<ol>\r\n<li>是否经由本网站下载或取得任何资料，由用户自行考虑、衡量并且自负风险，因下载任何资料而导致用户电脑系统的任何损坏或资料流失，用户应负完全责任。</li>\r\n<li>用户经由本网站取得的建议和资讯，无论其形式或表现，绝不构成本协议未明示规定的任何保证。</li>\r\n<li>基于以下原因而造成的利润、商誉、使用、资料损失或其它无形损失，本网站不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿（即使本网站已被告知前款赔偿的可能性）：         \r\n<ul>\r\n<li>本网站的使用或无法使用。</li>\r\n<li>经由或通过本网站购买或取得的任何物品，或接收之信息，或进行交易所随之产生的替代物品及服务的购买成本。</li>\r\n<li>用户的传输或资料遭到未获授权的存取或变更。</li>\r\n<li>本网站中任何第三方之声明或行为。</li>\r\n<li>本网站其它相关事宜。</li>\r\n</ul>\r\n</li>\r\n<li>本网站只是为用户提供一个交易的平台，对于用户所刊登的交易物品的合法性、真实性及其品质，以及用户履行交易的能力等，本网站一律不负任何担保责任。用户如果因使用本网站，或因购买刊登于本网站的任何物品，而受有损害时，本网站不负任何补偿或赔偿责任。</li>\r\n<li>本  网站提供与其它互联网上的网站或资源的链接，用户可能会因此连结至其它运营商经营的网站，但不表示本网站与这些运营商有任何关系。其它运营商经营的网站均  由各经营者自行负责，不属于本网站控制及负责范围之内。对于存在或来源于此类网站或资源的任何内容、广告、产品或其它资料，本网站亦不予保证或负责。因使  用或依赖任何此类网站或资源发布的或经由此类网站或资源获得的任何内容、物品或服务所产生的任何损害或损失，本网站不负任何直接或间接的责任。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>八.、不可抗力</strong><br /> <br /> 因不可抗力或者其他意外事件，使得本协议的履行不可能、不必要或者无意义的，双方均不承担责任。本合同所称之不可抗力意指不能预见、不能避免并不能克服的  客观情况，包括但不限于战争、台风、水灾、火灾、雷击或地震、罢工、暴动、法定疾病、黑客攻击、网络病毒、电信部门技术管制、政府行为或任何其它自然或人  为造成的灾难等客观情况。<br /> <br /> <strong>九、争议解决方式</strong><br /></p>\r\n<ol>\r\n<li>本协议及其修订本的有效性、履行和与本协议及其修订本效力有关的所有事宜，将受中华人民共和国法律管辖，任何争议仅适用中华人民共和国法律。</li>\r\n<li>因  使用本网站服务所引起与本网站的任何争议，均应提交深圳仲裁委员会按照该会届时有效的仲裁规则进行仲裁。相关争议应单独仲裁，不得与任何其它方的争议在任  何仲裁中合并处理，该仲裁裁决是终局，对各方均有约束力。如果所涉及的争议不适于仲裁解决，用户同意一切争议由人民法院管辖。</li>\r\n</ol>','255','1','1240122848',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('2','cert_autonym','什么是实名认证','3','0','','<p><strong>什么是实名认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>','255','1','1240122848',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('3','cert_material','什么是实体店铺认证','3','0','','<p><strong>什么是实体店铺认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>','255','1','1240122848',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('4','setup_store','开店协议','3','0','','<p>使用本公司服务所须遵守的条款和条件。<br /><br />1.用户资格<br />本公司的服务仅向适用法律下能够签订具有法律约束力的合同的个人提供并仅由其使用。在不限制前述规定的前提下，本公司的服务不向18周岁以下或被临时或无限期中止的用户提供。如您不合资格，请勿使用本公司的服务。此外，您的帐户（包括信用评价）和用户名不得向其他方转让或出售。另外，本公司保留根据其意愿中止或终止您的帐户的权利。<br /><br />2.您的资料（包括但不限于所添加的任何商品）不得：<br />*具有欺诈性、虚假、不准确或具误导性；<br />*侵犯任何第三方著作权、专利权、商标权、商业秘密或其他专有权利或发表权或隐私权；<br />*违反任何适用的法律或法规（包括但不限于有关出口管制、消费者保护、不正当竞争、刑法、反歧视或贸易惯例/公平贸易法律的法律或法规）；<br />*有侮辱或者诽谤他人，侵害他人合法权益的内容；<br />*有淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的内容；<br />*包含可能破坏、改变、删除、不利影响、秘密截取、未经授权而接触或征用任何系统、数据或个人资料的任何病毒、特洛依木马、蠕虫、定时炸弹、删除蝇、复活节彩蛋、间谍软件或其他电脑程序；<br /><br />3.违约<br />如发生以下情形，本公司可能限制您的活动、立即删除您的商品、向本公司社区发出有关您的行为的警告、发出警告通知、暂时中止、无限期地中止或终止您的用户资格及拒绝向您提供服务：<br />(a)您违反本协议或纳入本协议的文件；<br />(b)本公司无法核证或验证您向本公司提供的任何资料；<br />(c)本公司相信您的行为可能对您、本公司用户或本公司造成损失或法律责任。<br /><br />4.责任限制<br />本公司、本公司的关联公司和相关实体或本公司的供应商在任何情况下均不就因本公司的网站、本公司的服务或本协议而产生或与之有关的利润损失或任何特别、间接或后果性的损害（无论以何种方式产生，包括疏忽）承担任何责任。您同意您就您自身行为之合法性单独承担责任。您同意，本公司和本公司的所有关联公司和相关实体对本公司用户的行为的合法性及产生的任何结果不承担责任。<br /><br />5.无代理关系<br />用户和本公司是独立的合同方，本协议无意建立也没有创立任何代理、合伙、合营、雇员与雇主或特许经营关系。本公司也不对任何用户及其网上交易行为做出明示或默许的推荐、承诺或担保。<br /><br />6.一般规定<br />本协议在所有方面均受中华人民共和国法律管辖。本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。</p>','255','1','1240122848',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('5','msn_privacy','MSN在线通隐私策略','3','0','','<p>Msn在线通隐私策略旨在说明您在本网站使用Msn在线通功能时我们如何保护您的Msn帐号信息。<br /> 我们认为隐私权非常重要。我们希望此隐私保护中心有助于您在本网站更好使用Msn在线通<br /> <strong>我们收集的信息</strong></p><blockquote>* 您在本网站激活Msn在线通时,程序将会记录您的Msn在线通帐号</blockquote><p><br /> <strong>您的选择</strong></p><blockquote>* 您可以在本网站随时注销您的Msn在线通帐号</blockquote><p><br /> <strong>其他隐私声明</strong></p><blockquote>* 如果我们需要改变本网站Msn在线通的隐私策略, 我们会把相关的改动在此页面发布.</blockquote>','255','1','1240122848',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('6','','三星A5粉 购机送拍立得','4','0','','','255','1','1423559047',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('7','','京东2015春节运营公告','4','0','','','255','1','1423559090',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('8','','欢欢喜喜发羊财','4','0','','','255','1','1423559110',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('9','','关于假冒客服诈骗的声明','4','0','','','255','1','1423559121',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('10','','十万瓶小酒免费赠','4','0','','','255','1','1423559132',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('11','','松鼠年货2折不打烊！','4','0','','','255','1','1423559145',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('12','','情人节赢千元约会金','4','0','','','255','1','1423559157',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('13','','海尔空调9日-11日疯狂放价！','4','0','','','255','1','1423559179',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('14','','周杰伦甜蜜分享','4','0','','','255','1','1423559195',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('15','','2.14 爱一世银饰专场','4','0','','','255','1','1423559311',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('16','','有了TA，升职加薪很简单','4','0','','','255','1','1423559322',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('17','','五宝闹京东年货5折封顶','4','0','','','255','1','1423559334',null);
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time`, `article_logo` ) VALUES  ('18','','帅康疯狂底价专场！限时抢购','4','0','','<div class=\"mc\">\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #666666;\">一、</span><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #00b0f0;\">帅康全不锈钢烟灶套装直降1000，等你来秒！</span></strong></p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #666666;\">帅康大吸力TE6726+35K全不锈钢烟灶套装，7月清凉节等</span><span style=\"color: #666666;\">你来秒</span><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #666666;\">！！</span></strong></p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: red;\">仅需2199！晒单再返50元话费，</span><span style=\"color: red;\">秒杀链接：</span><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: red;\"><a href=\"http://item.jd.com/1475329.html\"><span style=\"font-size: 12.0pt; color: red;\">http://item.jd.com/1475329.html</span></a></span></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #666666;\">二、</span><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #00b0f0;\">帅康全新翻盖式侧吸直降1000，限量秒！</span></strong></p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #666666;\">帅康静音JE5508+35C全新侧吸升级套装，7月清凉节等你来秒！！</span></strong></p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: red;\">仅需2199！晒单再返50元话费，秒杀链接：<a href=\"http://item.jd.com/1475311.html\"><span style=\"color: red;\">http://item.jd.com/1475311.html</span></a></span></strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #666666;\">三、</span><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: red;\">帅康单品799元秒杀专场，秒一台少一台！</span></strong></p>\r\n<p><strong><span style=\"font-size: 10.5pt; font-family: \'微软雅黑\',\'sans-serif\'; color: #666666;\">活动链接：<a href=\"http://mall.jd.com/view_page-18912599.html\"><span style=\"color: #666666;\">http://mall.jd.com/view_page-18912599.html</span></a></span></strong></p>\r\n<p>&nbsp;</p>\r\n</div>','255','1','1423559346',null);
DROP TABLE IF EXISTS ecm_attribute;
CREATE TABLE ecm_attribute (
  attr_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  attr_name varchar(60) NOT NULL DEFAULT '',
  input_mode varchar(10) NOT NULL DEFAULT 'text',
  def_value varchar(255) DEFAULT NULL,
  PRIMARY KEY (attr_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_brand;
CREATE TABLE ecm_brand (
  brand_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  brand_name varchar(100) NOT NULL DEFAULT '',
  brand_logo varchar(255) DEFAULT NULL,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  recommended tinyint(3) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  if_show tinyint(2) unsigned NOT NULL DEFAULT '1',
  tag varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (brand_id),
  KEY tag (tag)
) ENGINE=MyISAM;
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('1','1','data/files/mall/brand/1.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('2','2','data/files/mall/brand/2.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('3','3','data/files/mall/brand/3.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('4','4','data/files/mall/brand/4.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('5','5','data/files/mall/brand/5.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('6','6','data/files/mall/brand/6.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('7','7','data/files/mall/brand/7.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('8','8','data/files/mall/brand/8.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('9','9','data/files/mall/brand/9.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('10','10','data/files/mall/brand/10.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('11','11','data/files/mall/brand/11.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('12','12','data/files/mall/brand/12.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('13','13','data/files/mall/brand/13.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('14','14','data/files/mall/brand/14.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('15','15','data/files/mall/brand/15.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('16','16','data/files/mall/brand/16.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('17','17','data/files/mall/brand/17.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('18','18','data/files/mall/brand/18.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('19','19','data/files/mall/brand/19.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('20','20','data/files/mall/brand/20.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('21','21','data/files/mall/brand/21.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('22','22','data/files/mall/brand/22.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('23','23','data/files/mall/brand/23.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('24','24','data/files/mall/brand/24.jpg','255','0','0','1','大牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('25','a1','data/files/mall/brand/25.jpg','255','0','0','1','潮牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('26','a2','data/files/mall/brand/26.jpg','255','0','0','1','潮牌街');
INSERT INTO ecm_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('27','b1','data/files/mall/brand/27.jpg','255','0','0','1','原创街');
DROP TABLE IF EXISTS ecm_cart;
CREATE TABLE ecm_cart (
  rec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  session_id varchar(32) NOT NULL DEFAULT '',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_name varchar(255) NOT NULL DEFAULT '',
  spec_id int(10) unsigned NOT NULL DEFAULT '0',
  specification varchar(255) DEFAULT NULL,
  price decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  quantity int(10) unsigned NOT NULL DEFAULT '1',
  goods_image varchar(255) DEFAULT NULL,
  group_id int(10) unsigned DEFAULT NULL,
  old_price decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (rec_id),
  KEY session_id (session_id),
  KEY user_id (user_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_cate_pvs;
CREATE TABLE ecm_cate_pvs (
  cate_id int(11) NOT NULL,
  pvs text NOT NULL
) ENGINE=MyISAM;
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('19','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('20','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('97','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
DROP TABLE IF EXISTS ecm_category_goods;
CREATE TABLE ecm_category_goods (
  cate_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (cate_id,goods_id),
  KEY goods_id (goods_id)
) ENGINE=MyISAM;
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','1');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','2');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','3');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','4');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','5');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','6');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','7');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','8');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','9');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','10');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','12');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','13');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','14');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','15');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','16');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','19');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','20');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','21');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','22');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','23');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','24');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','25');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','30');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','31');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','34');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','35');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','36');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','37');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','28');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','29');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','40');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','42');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','43');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','44');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','45');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','46');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','47');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','48');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','49');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','50');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','51');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','52');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','53');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','54');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','55');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','56');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','57');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','59');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','58');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','60');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','61');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','62');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','63');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','64');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','65');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','66');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','67');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','68');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','69');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','81');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','82');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','83');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','85');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','86');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','87');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','88');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','89');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','90');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','93');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','70');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','71');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','72');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','73');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','75');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','76');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','77');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','80');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','91');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','92');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','94');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','95');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','96');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','97');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','98');
DROP TABLE IF EXISTS ecm_category_store;
CREATE TABLE ecm_category_store (
  cate_id int(10) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (cate_id,store_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_category_store ( `cate_id`, `store_id` ) VALUES  ('3','7');
INSERT INTO ecm_category_store ( `cate_id`, `store_id` ) VALUES  ('4','8');
INSERT INTO ecm_category_store ( `cate_id`, `store_id` ) VALUES  ('10','6');
DROP TABLE IF EXISTS ecm_city;
CREATE TABLE ecm_city (
  city_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  city_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  state tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (city_id),
  KEY parent_id (parent_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_collect;
CREATE TABLE ecm_collect (
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'goods',
  item_id int(10) unsigned NOT NULL DEFAULT '0',
  keyword varchar(60) DEFAULT NULL,
  add_time int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (user_id,`type`,item_id)
) ENGINE=MyISAM;
INSERT INTO ecm_collect ( `user_id`, `type`, `item_id`, `keyword`, `add_time` ) VALUES  ('2','store','2','','1436665214');
INSERT INTO ecm_collect ( `user_id`, `type`, `item_id`, `keyword`, `add_time` ) VALUES  ('2','goods','1','','1406784755');
INSERT INTO ecm_collect ( `user_id`, `type`, `item_id`, `keyword`, `add_time` ) VALUES  ('3','goods','98','','1406786033');
INSERT INTO ecm_collect ( `user_id`, `type`, `item_id`, `keyword`, `add_time` ) VALUES  ('3','store','2','','1406789403');
DROP TABLE IF EXISTS ecm_coupon;
CREATE TABLE ecm_coupon (
  coupon_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属于店铺',
  coupon_name varchar(100) NOT NULL DEFAULT '' COMMENT '优惠卷名称',
  coupon_value decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠卷抵扣金额',
  use_times int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可使用次数',
  start_time int(10) unsigned NOT NULL DEFAULT '0',
  end_time int(10) unsigned NOT NULL DEFAULT '0',
  min_amount decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '满足金额可以抵扣',
  if_issue tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否发布',
  coupon_bg varchar(255) NOT NULL COMMENT '优惠卷背景',
  content text COMMENT '相关内容描述',
  mall_recommended tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商城是否推荐',
  PRIMARY KEY (coupon_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_coupon ( `coupon_id`, `store_id`, `coupon_name`, `coupon_value`, `use_times`, `start_time`, `end_time`, `min_amount`, `if_issue`, `coupon_bg`, `content`, `mall_recommended` ) VALUES  ('1','2','火宫殿','10.00','1','1431216000','1456790399','20.00','1','data/files/mall/coupon/1.jpg','<p><img src=\"http://192.168.1.101/all_ecmall/test/etmall/data/files/store_2/coupon/201505100739525354.jpg\" alt=\"qrcode.jpg\" /></p>','0');
INSERT INTO ecm_coupon ( `coupon_id`, `store_id`, `coupon_name`, `coupon_value`, `use_times`, `start_time`, `end_time`, `min_amount`, `if_issue`, `coupon_bg`, `content`, `mall_recommended` ) VALUES  ('2','2','好伦哥','100.00','1','1431216000','1475193599','200.00','1','data/files/mall/coupon/2.jpg','<p><img src=\"http://192.168.1.101/all_ecmall/test/etmall/data/files/store_2/coupon/201505100742156131.jpg\" alt=\"qrcode.jpg\" /><img src=\"http://192.168.1.101/all_ecmall/test/etmall/data/files/store_2/coupon/201505100742275218.jpg\" alt=\"qrcode.jpg\" /></p>','0');
INSERT INTO ecm_coupon ( `coupon_id`, `store_id`, `coupon_name`, `coupon_value`, `use_times`, `start_time`, `end_time`, `min_amount`, `if_issue`, `coupon_bg`, `content`, `mall_recommended` ) VALUES  ('3','2','D2元素饰品·咖啡','200.00','1','1431216000','1477958399','500.00','1','data/files/mall/coupon/3.jpg','<p><img src=\"http://192.168.1.101/all_ecmall/test/etmall/data/files/store_2/coupon/201505100748514699.jpg\" alt=\"qrcode.jpg\" /></p>','0');
INSERT INTO ecm_coupon ( `coupon_id`, `store_id`, `coupon_name`, `coupon_value`, `use_times`, `start_time`, `end_time`, `min_amount`, `if_issue`, `coupon_bg`, `content`, `mall_recommended` ) VALUES  ('4','2','通程国际大酒店','10.00','1','1431216000','1483228799','0.00','1','data/files/mall/coupon/4.jpg','','0');
INSERT INTO ecm_coupon ( `coupon_id`, `store_id`, `coupon_name`, `coupon_value`, `use_times`, `start_time`, `end_time`, `min_amount`, `if_issue`, `coupon_bg`, `content`, `mall_recommended` ) VALUES  ('5','2','俏江南','10.00','1','1431216000','1448927999','0.00','1','data/files/mall/coupon/5.jpg','','0');
DROP TABLE IF EXISTS ecm_coupon_sn;
CREATE TABLE ecm_coupon_sn (
  coupon_sn varchar(20) NOT NULL,
  coupon_id int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属于优惠卷ID',
  remain_times int(10) NOT NULL DEFAULT '-1' COMMENT '可使用次数',
  user_id int(10) NOT NULL DEFAULT '0' COMMENT '领取的用户',
  PRIMARY KEY (coupon_sn),
  KEY coupon_id (coupon_id)
) ENGINE=MyISAM;
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416166211','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416118219','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416152538','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416120974','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416182856','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416183766','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416181410','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416118202','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416174249','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416189026','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416150562','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416180678','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416167480','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416198382','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416171220','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416181942','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416198759','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416193555','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416112883','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416153552','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416168458','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416184696','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416190152','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416177304','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416158299','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416125563','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416177840','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416163353','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416156708','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416121044','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416155301','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416169325','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416122311','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416146146','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416171648','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416185155','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416116730','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416117516','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416162642','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416115645','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416175183','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416144512','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416152470','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416199651','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416150145','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416175324','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416126419','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416172401','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416145183','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416149262','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416185115','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416163081','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416191937','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416135433','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416151225','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416182949','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416113098','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416163164','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416132787','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416157241','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416142759','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416129457','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416167383','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416187161','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416145352','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416111481','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416152132','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416120828','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416134784','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416181008','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416162503','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416191367','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416158529','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416122042','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416169972','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416149200','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416190267','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416163105','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416166084','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416155597','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416167015','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416144144','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416144654','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416147356','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416179644','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416176940','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416139951','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416149620','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416127713','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416198222','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416141351','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416120332','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416118949','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416136787','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416147072','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416133536','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416190058','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416124879','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416184843','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124416125579','1','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437552700','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437545107','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437529314','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437596551','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437520619','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437526175','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437588609','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437588184','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437540066','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437571976','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437585543','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437514278','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437541043','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437593284','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437577886','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437549985','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437578836','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437529991','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437519247','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437514701','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437587458','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437581692','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437599090','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437515746','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437518636','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437569571','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437531958','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437568645','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437515166','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437585888','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437549669','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437541282','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437586154','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437570634','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437580850','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437539525','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437519779','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437532656','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437582161','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437549801','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437545293','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437518011','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437535769','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437599177','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437592354','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437527739','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437555907','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437553895','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437565233','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437550148','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437545916','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437536487','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437563832','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437551835','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437531878','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437594830','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437592528','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437552943','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437559129','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437543965','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437527983','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437556261','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437564877','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437550731','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437550554','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437544549','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437593098','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437533489','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437545823','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437533271','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437519040','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437586441','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437594093','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437552760','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437538516','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437525599','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437513527','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437551369','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437573517','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437576632','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437553692','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437547124','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437539272','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437528683','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437527608','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437589512','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437571920','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437581065','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437595638','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437534825','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437536644','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437516434','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437556503','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437567561','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437556128','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437576001','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437540254','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437523681','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437529575','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437526278','2','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437853081','3','1','9');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437885554','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437881819','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437894420','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437846759','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437870662','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437856667','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437880941','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437867745','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437845016','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437821377','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437847307','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437864720','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437873090','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437847472','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437837474','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437847740','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437899492','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437869924','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437817743','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437856955','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437833529','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437854727','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437888593','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437871348','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437845651','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437814506','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437884219','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437893498','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437877340','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437849628','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437834097','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437886972','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437842136','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437865116','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437864534','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437842374','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437826132','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437860176','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437861845','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437855718','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437868092','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437879924','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437859672','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437819440','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437839624','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437864280','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437840174','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437848070','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437821302','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437875611','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437814213','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437895573','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437870460','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437873177','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437821343','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437881718','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437896691','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437810368','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437861254','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437855964','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437888405','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437854246','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437842919','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437834012','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437833379','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437847581','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437843288','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437844592','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437876557','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437830871','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437832208','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437818590','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437831006','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437839212','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437818494','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437896235','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437857065','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437852489','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437818564','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437869947','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437860745','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437882722','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437850276','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437882543','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437811394','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437834549','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437855630','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437865243','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437873493','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437852882','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437874936','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437859949','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437835912','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437852528','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437848221','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437827180','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437888973','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437869623','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124437881362','3','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438149301','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438160621','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438170512','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438179261','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438199062','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438161909','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438132958','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438165588','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438163059','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438140914','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438166393','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438145131','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438179438','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438188828','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438125601','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438158282','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438178028','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438128878','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438150047','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438149082','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438163079','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438124128','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438157178','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438193514','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438172154','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438131804','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438161144','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438185177','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438110401','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438128242','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438172828','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438199289','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438113866','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438136974','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438166253','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438179686','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438182690','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438143310','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438112664','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438151359','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438167545','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438198674','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438189416','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438197355','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438189787','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438112517','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438197441','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438118907','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438126706','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438111814','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438150312','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438199820','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438179100','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438182395','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438124278','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438118564','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438134730','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438159432','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438196226','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438150515','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438114165','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438136657','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438170995','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438191986','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438184967','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438115243','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438180755','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438193328','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438146558','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438150510','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438150122','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438180505','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438186219','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438115540','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438141767','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438136020','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438179409','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438126445','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438114078','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438135810','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438183795','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438197296','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438193419','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438171157','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438131418','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438117525','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438143307','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438150391','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438146864','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438137240','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438122388','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438146556','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438128611','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438162734','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438136109','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438179672','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438146975','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438113762','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438177416','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438150996','4','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438327871','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438312432','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438316875','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438355319','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438355096','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438381833','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438392684','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438370716','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438348914','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438317418','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438356863','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438372987','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438337715','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438337814','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438324943','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438387051','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438388140','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438346596','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438329461','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438371154','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438392571','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438384990','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438360630','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438343717','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438310384','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438333743','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438344940','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438310184','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438313832','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438333842','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438390643','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438387537','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438333002','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438328427','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438337858','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438378784','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438357137','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438364269','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438392079','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438311800','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438315651','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438346420','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438398912','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438352103','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438313767','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438371520','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438385015','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438315326','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438386184','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438314718','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438331307','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438384485','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438386014','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438324584','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438330989','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438368885','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438317187','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438374070','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438359663','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438381811','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438367219','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438378641','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438395269','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438398383','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438347896','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438385947','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438313177','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438365423','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438311258','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438379195','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438351441','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438368127','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438384522','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438353298','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438338959','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438350470','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438343951','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438326896','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438317788','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438350148','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438377413','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438394015','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438332879','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438375230','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438324551','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438390576','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438324544','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438332523','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438327965','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438353264','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438354110','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438372417','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438342722','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438383448','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438383853','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438321029','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438365392','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438312075','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438378595','5','1','0');
INSERT INTO ecm_coupon_sn ( `coupon_sn`, `coupon_id`, `remain_times`, `user_id` ) VALUES  ('143124438363759','5','1','0');
DROP TABLE IF EXISTS ecm_customer_message;
CREATE TABLE ecm_customer_message (
  customer_message_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  message varchar(255) NOT NULL,
  realname varchar(60) NOT NULL,
  mobile varchar(20) NOT NULL,
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0未处理 1已处理',
  PRIMARY KEY (customer_message_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_egg;
CREATE TABLE ecm_egg (
  id int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  noun int(10) DEFAULT NULL COMMENT '所需积分',
  rate int(10) DEFAULT NULL COMMENT '中奖比例 为千分比',
  PRIMARY KEY (id)
) ENGINE=MyISAM;
INSERT INTO ecm_egg ( `id`, `name`, `noun`, `rate` ) VALUES  ('1','金蛋','1','1');
INSERT INTO ecm_egg ( `id`, `name`, `noun`, `rate` ) VALUES  ('2','银蛋','1','1');
INSERT INTO ecm_egg ( `id`, `name`, `noun`, `rate` ) VALUES  ('3','铜蛋','1','1');
DROP TABLE IF EXISTS ecm_eggpresent;
CREATE TABLE ecm_eggpresent (
  id int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  eggpresent_logo varchar(255) DEFAULT NULL COMMENT '缩略图',
  byeggid int(10) DEFAULT NULL COMMENT '所属的蛋的id',
  PRIMARY KEY (id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_eggpresentrec;
CREATE TABLE ecm_eggpresentrec (
  id int(10) NOT NULL AUTO_INCREMENT,
  username varchar(50) DEFAULT NULL COMMENT '用户名称',
  presentname varchar(50) DEFAULT NULL COMMENT '礼品名称',
  eggname varchar(50) DEFAULT NULL COMMENT '砸的蛋的名称  如金蛋',
  add_time int(10) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_epay;
CREATE TABLE ecm_epay (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(100) DEFAULT NULL,
  zf_pass varchar(32) DEFAULT NULL,
  money_dj decimal(10,2) NOT NULL DEFAULT '0.00',
  money decimal(10,2) NOT NULL DEFAULT '0.00',
  add_time int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM;
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('1','1','admin',null,'0.00','0.00','1416296815');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('2','2','seller',null,'0.00','-267.57','1416296825');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('3','3','buyer',null,'0.00','0.00','1416296835');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('4','4','test_1',null,'0.00','0.00','1428027575');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('5','5','test_2',null,'0.00','0.00','1428027648');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('6','6','mynine',null,'0.00','0.00','1436493848');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('7','7','18739376057',null,'0.00','0.00','1436494633');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('8','8','lcat123',null,'0.00','0.00','1436499450');
INSERT INTO ecm_epay ( `id`, `user_id`, `user_name`, `zf_pass`, `money_dj`, `money`, `add_time` ) VALUES  ('9','9','bry369',null,'0.00','0.00','1436503635');
DROP TABLE IF EXISTS ecm_epay_bank;
CREATE TABLE ecm_epay_bank (
  bank_id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  bank_name varchar(100) NOT NULL COMMENT '银行名称',
  short_name varchar(20) NOT NULL COMMENT '银行缩写',
  account_name varchar(20) NOT NULL COMMENT '户名',
  open_bank varchar(100) NOT NULL COMMENT '开户行地址',
  bank_type varchar(10) NOT NULL COMMENT '卡类型',
  bank_num varchar(50) NOT NULL COMMENT '卡号',
  PRIMARY KEY (bank_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_epaylog;
CREATE TABLE ecm_epaylog (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) NOT NULL DEFAULT '0',
  user_name varchar(50) DEFAULT '0',
  order_id int(10) unsigned DEFAULT NULL,
  order_sn varchar(50) DEFAULT '0',
  to_id int(10) unsigned DEFAULT NULL,
  to_name varchar(100) DEFAULT NULL,
  `type` int(3) unsigned NOT NULL DEFAULT '0',
  states int(3) unsigned NOT NULL DEFAULT '0',
  money decimal(10,2) NOT NULL DEFAULT '0.00',
  money_flow varchar(10) NOT NULL COMMENT '检测资金流入流出',
  complete int(3) unsigned NOT NULL DEFAULT '0',
  log_text varchar(255) DEFAULT NULL,
  add_time int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM;
INSERT INTO ecm_epaylog ( `id`, `user_id`, `user_name`, `order_id`, `order_sn`, `to_id`, `to_name`, `type`, `states`, `money`, `money_flow`, `complete`, `log_text`, `add_time` ) VALUES  ('1','2','seller',null,'120201507091502437202',null,null,'120','120','267.57','outlay','1','扣除交易佣金-你有一笔订单交易成功,扣除佣金267.57,订单号为:1518927660商品金额为：2675.70,佣金比例为0.1','1436425363');
INSERT INTO ecm_epaylog ( `id`, `user_id`, `user_name`, `order_id`, `order_sn`, `to_id`, `to_name`, `type`, `states`, `money`, `money_flow`, `complete`, `log_text`, `add_time` ) VALUES  ('2','6','mynine',null,'60201507101128569229',null,'财付通','60','60','0.01','income','0','mynine充值0.01元','1436470136');
INSERT INTO ecm_epaylog ( `id`, `user_id`, `user_name`, `order_id`, `order_sn`, `to_id`, `to_name`, `type`, `states`, `money`, `money_flow`, `complete`, `log_text`, `add_time` ) VALUES  ('3','6','mynine',null,'60201507101129036970',null,'支付宝','60','60','0.01','income','0','mynine充值0.01元','1436470143');
INSERT INTO ecm_epaylog ( `id`, `user_id`, `user_name`, `order_id`, `order_sn`, `to_id`, `to_name`, `type`, `states`, `money`, `money_flow`, `complete`, `log_text`, `add_time` ) VALUES  ('4','6','mynine',null,'1519062540',null,'支付宝','60','60','8.10','income','0','mynine充值8.10元','1436471639');
INSERT INTO ecm_epaylog ( `id`, `user_id`, `user_name`, `order_id`, `order_sn`, `to_id`, `to_name`, `type`, `states`, `money`, `money_flow`, `complete`, `log_text`, `add_time` ) VALUES  ('5','9','bry369',null,'1519139179',null,'支付宝','60','60','3.70','income','0','bry369充值3.70元','1436555704');
DROP TABLE IF EXISTS ecm_friend;
CREATE TABLE ecm_friend (
  owner_id int(10) unsigned NOT NULL DEFAULT '0',
  friend_id int(10) unsigned NOT NULL DEFAULT '0',
  add_time varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (owner_id,friend_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_function;
CREATE TABLE ecm_function (
  func_code varchar(20) NOT NULL DEFAULT '',
  func_name varchar(60) NOT NULL DEFAULT '',
  `privileges` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (func_code)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_gcategory;
CREATE TABLE ecm_gcategory (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  cate_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  cate_logo varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (cate_id),
  KEY store_id (store_id,parent_id)
) ENGINE=MyISAM;
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('1','0','网上菜场','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('2','0','休闲食品','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('3','0','进口食品、进口乳品','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('4','0','粮油干货、厨房调料','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('5','0','美容化妆、个人护理','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('6','0','母婴用品、 玩具','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('7','0','厨房、清洁、卫浴用品','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('8','0','家居生活、汽车用品','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('9','0','大家电、生活电器','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('10','0','服饰箱包鞋靴、 运动','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('11','0','钟表、 礼品、 图书报刊','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('12','0','电脑办公、 手机数码','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('13','0','微店铺','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('14','0','水果','462','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('15','0','蔬菜','462','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('16','0','肉类','1','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('17','0','面豆制品','1','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('18','0','南北干货','1','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('19','0','苹果','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('20','0','葡萄','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('21','0','红提','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('22','0','柚子','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('23','0','西瓜','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('24','0','甜瓜','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('25','0','芒果','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('26','0','橙梨','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('27','0','柠檬','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('28','0','桃子','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('29','0','石榴','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('30','0','蓝莓','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('31','0','木瓜','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('32','0','哈密瓜','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('33','0','火龙果','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('34','0','车厘子','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('35','0','黑布林','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('36','0','猕猴桃','14','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('37','0','美食净菜','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('38','0','葱姜蒜','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('39','0','菌菇类','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('40','0','有机类','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('41','0','瓜果类','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('42','0','叶菜','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('43','0','根类','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('44','0','豆类','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('45','0','茎类','15','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('46','0','牛肉','16','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('47','0','猪肉','16','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('48','0','鸡肉','16','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('49','0','鸭肉','16','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('50','0','生鲜豆品','17','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('51','0','熟食豆品','17','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('52','0','淀粉制品','17','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('53','0','香菇','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('54','0','枸杞','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('55','0','桂圆','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('56','0','莲子','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('57','0','木耳','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('58','0','银耳','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('59','0','黄花菜','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('60','0','百合干','18','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('61','0','休闲零食','2','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('62','0','饼干糕点','2','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('63','0','牛奶乳品','2','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('64','0','酒类商城','2','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('65','0','糖/巧克力','2','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('66','0','饮料饮品','463','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('67','0','冲调饮品','2','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('68','0','坚果','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('69','0','鱼干/海味即食','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('70','0','薯片','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('71','0','枣类','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('72','0','炒货','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('73','0','禽类','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('74','0','葡萄干','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('75','0','蜜饯','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('76','0','小食','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('77','0','肉干肉脯/豆干/熟食','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('78','0','新疆红枣','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('79','0','膨化','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('80','0','果冻/布丁','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('81','0','海苔','61','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('82','0','饼干','62','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('83','0','蛋糕','62','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('84','0','传统糕点','62','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('85','0','月饼','62','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('86','0','西式糕点','62','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('87','0','其它小点心','62','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('88','0','风味奶','63','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('89','0','纯牛奶','63','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('90','0','酸奶','63','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('91','0','儿童奶','63','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('92','0','啤酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('93','0','进口啤酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('94','0','进口葡萄酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('95','0','白酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('96','0','黄酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('97','0','葡萄酒/红酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('98','0','滋补酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('99','0','果酒','64','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('100','0','巧克力','65','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('101','0','糖果','65','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('102','0','口香糖','65','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('103','0','功能饮料','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('104','0','碳酸饮料','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('105','0','果汁/蔬菜汁','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('106','0','茶饮料','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('107','0','水','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('108','0','果味饮料','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('109','0','咖啡饮料','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('110','0','乳品','66','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('111','0','茶叶','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('112','0','咖啡','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('113','0','奶茶','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('114','0','奶粉','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('115','0','藕粉','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('116','0','冲饮麦片','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('117','0','芝麻糊','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('118','0','冲饮果汁','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('119','0','豆奶','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('120','0','姜汤','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('121','0','蜂蜜','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('122','0','咖啡伴侣','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('123','0','其它冲饮品','67','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('124','0','进口零食','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('125','0','饼干糕点','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('126','0','糖巧克力','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('127','0','牛奶乳品','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('128','0','水及饮料','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('129','0','进口冲饮','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('130','0','进口米面','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('131','0','果干坚果','3','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('132','0','进口膨化/薯片','124','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('133','0','进口海产品','124','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('134','0','进口果冻/布丁','124','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('135','0','进口话梅','124','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('136','0','进口肉制品','124','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('137','0','进口山楂类','124','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('138','0','进口凉果/蜜饯','124','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('139','0','进口饼干','125','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('140','0','进口曲奇','125','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('141','0','进口威化','125','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('142','0','进口糕点','125','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('143','0','进口糖果','126','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('144','0','进口巧克力','126','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('145','0','粮油米面','4','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('146','0','调味果酱','4','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('147','0','水果蔬菜生鲜','4','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('148','0','方便速食','4','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('149','0','冷冻食品','4','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('150','0','杂粮','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('151','0','国产大米','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('152','0','面粉/食用粉','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('153','0','豆类','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('154','0','玉米','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('155','0','黑米','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('156','0','糯米','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('157','0','糙米','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('158','0','食用油','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('159','0','粉丝','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('160','0','面条/挂面','145','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('161','0','面部护理','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('162','0','男士护理','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('163','0','魅力香氛','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('164','0','女性护理','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('165','0','成人用品','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('166','0','彩妆个护','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('167','0','口腔护理','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('168','0','洗发护发','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('169','0','身体护理','5','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('170','0','乳液','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('171','0','面霜','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('172','0','精华','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('173','0','防晒','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('174','0','眼膜','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('175','0','眼霜/眼部精华','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('176','0','唇部护理','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('177','0','面膜','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('178','0','护肤套装','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('179','0','卸妆','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('180','0','洁面','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('181','0','去角质','161','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('182','0','哺育用品','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('183','0','妈妈专区','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('184','0','奶粉','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('185','0','纸尿裤/湿巾','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('186','0','婴儿辅食','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('187','0','孕婴营养品','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('188','0','玩具','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('189','0','洗护用品','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('190','0','童车童床','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('191','0','服饰寝具','6','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('192','0','奶瓶','182','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('193','0','奶嘴','182','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('194','0','吸奶器','182','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('195','0','暖奶/消毒餐具','182','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('196','0','水具','182','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('197','0','牙胶/安抚辅助用品','182','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('198','0','家纺日用','8','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('199','0','居家日用','8','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('200','0','宠物用品','8','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('201','0','家具灯具','8','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('202','0','汽车用品','8','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('203','0','家装建材','8','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('204','0','园艺用品','8','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('205','0','床品件套','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('206','0','枕芯枕套','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('207','0','被子','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('208','0','床单被罩','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('209','0','毛毯/被','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('210','0','抱枕坐垫','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('211','0','蚊帐/凉席','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('212','0','毛巾家纺','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('213','0','床垫/床褥','198','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('214','0','大家电','9','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('215','0','厨房电器','9','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('216','0','生活电器','9','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('217','0','影音电器','9','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('218','0','个护健康','9','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('219','0','冰箱','214','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('220','0','空调','214','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('221','0','洗衣机','214','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('222','0','电视机','214','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('223','0','女装精品','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('224','0','男装精品','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('225','0','内衣服饰','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('226','0','户外鞋服','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('227','0','户外装备','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('228','0','体育娱乐','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('229','0','健身运动','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('230','0','饰品配件','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('231','0','童装','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('232','0','鞋子','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('233','0','箱包','10','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('234','0','皮草/皮衣','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('235','0','羽绒服','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('236','0','羊毛/羊绒','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('237','0','棉衣/棉服','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('238','0','呢大衣','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('239','0','连衣裙','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('240','0','T恤','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('241','0','衬衫','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('242','0','裤子','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('243','0','半身裙','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('244','0','马夹','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('245','0','蕾丝衫/雪纺衫','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('246','0','针织衫/毛衣','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('247','0','外套','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('248','0','西装','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('249','0','卫衣/绒衫','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('250','0','风衣','223','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('251','0','皮衣/皮草','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('252','0','羽绒服','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('253','0','棉衣','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('254','0','毛衫/羊绒','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('255','0','夹克','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('256','0','T恤','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('257','0','卫衣','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('258','0','衬衫','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('259','0','长裤','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('260','0','短裤/中裤','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('261','0','风衣','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('262','0','西服','224','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('263','0','图书','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('264','0','杂志','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('265','0','钟表','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('266','0','翡翠玉石','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('267','0','时尚饰品','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('268','0','保健滋补','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('269','0','特色礼品','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('270','0','珍珠/水晶','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('271','0','金/银/钻饰','11','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('272','0','金镶玉','266','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('273','0','和田玉','266','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('274','0','翡翠','266','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('275','0','彩色宝石','266','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('276','0','琥珀','266','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('277','0','其他玉石','266','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('278','0','手机通讯','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('279','0','手机配件','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('280','0','数码影音','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('281','0','数码配件','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('282','0','电脑配件','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('283','0','电脑整机','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('284','0','办公设备','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('285','0','学习用品','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('286','0','网络产品','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('287','0','办公用品','12','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('288','0','手机','278','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('289','0','对讲机','278','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('290','0','舌尖上的美食','461','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('291','0','我的个性我做主','461','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('292','0','今天我要嫁给你','13','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('293','0','小情调，乐生活','13','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('294','0','休闲零食','290','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('295','0','特产美食','290','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('296','0','其他','290','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('297','0','蛋糕','290','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('298','0','甜品小食','290','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('299','0','饮品','290','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('300','0','手工饼干','290','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('301','0','婚礼用品','292','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('302','0','首饰','292','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('303','0','化妆工具','291','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('304','0','特色服务','291','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('305','0','手工DIY','291','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('306','0','应季配饰','291','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('307','0','流行小饰品','291','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('308','0','鲜花绿植','293','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('309','0','特色服装','293','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('310','0','家居饰品','293','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('311','0','风味奶','127','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('312','0','纯牛奶','127','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('313','0','酸奶','127','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('314','0','儿童奶','127','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('315','0','进口果汁饮料','128','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('316','0','进口咖啡','129','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('317','0','进口茶叶','129','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('318','0','进口蜂蜜','129','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('319','0','进口奶茶/柚子茶','129','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('320','0','进口麦片','129','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('321','0','进口速食','130','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('322','0','进口调味品','130','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('323','0','进口油','130','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('324','0','进口果干','131','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('325','0','进口坚果','131','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('326','0','酱油','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('327','0','食糖','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('328','0','鸡精/味精','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('329','0','盐','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('330','0','醋制品','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('331','0','腌制酱菜','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('332','0','调味料','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('333','0','腐乳','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('334','0','调味酱','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('335','0','料酒','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('336','0','调味油','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('337','0','果酱','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('338','0','其它调味品','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('339','0','烘焙原料/辅料','146','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('340','0','香水','163','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('341','0','精油芳疗','163','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('342','0','香体走珠','163','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('343','0','避孕套','165','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('344','0','润滑剂','165','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('345','0','成人卫生垫','165','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('346','0','牙膏','167','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('347','0','牙刷','167','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('348','0','漱口水','167','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('349','0','洗浴用品','169','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('350','0','手足护理','169','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('351','0','身体乳','169','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('352','0','美体塑身','169','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('353','0','1段奶粉','184','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('354','0','2段奶粉','184','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('355','0','3段奶粉','184','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('356','0','4段奶粉','184','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('357','0','5段奶粉','184','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('358','0','米粉/米糊/汤粥','186','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('359','0','面食类','186','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('360','0','饼干/磨牙棒','186','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('361','0','肉松/鱼松','186','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('362','0','婴幼儿降火食品','186','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('363','0','宝宝护肤','189','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('364','0','护理用品','189','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('365','0','洗浴用品','189','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('366','0','清洁用品','189','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('367','0','礼盒套装','189','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('368','0','婴儿服','191','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('369','0','婴儿家纺','191','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('370','0','婴儿鞋袜','191','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('371','0','安全用品','191','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('372','0','床','201','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('373','0','沙发','201','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('374','0','柜类','201','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('375','0','架类','201','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('376','0','桌/椅/凳','201','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('377','0','灯具','201','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('378','0','鲜花','204','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('379','0','盆栽','204','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('380','0','园艺工具','204','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('381','0','音响/音箱','217','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('382','0','影碟机/DVD','217','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('383','0','耳机/耳麦','217','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('384','0','收音机','217','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('385','0','其它影音产品','217','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('386','0','靴子','232','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('387','0','单鞋','232','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('388','0','休闲鞋','232','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('389','0','凉鞋','232','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('390','0','皮鞋','232','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('391','0','太阳眼镜','230','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('392','0','腰带/皮带','230','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('393','0','手套','230','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('394','0','围巾/围脖','230','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('395','0','网球','228','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('396','0','足球','228','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('397','0','排球','228','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('398','0','乒乓球','228','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('399','0','篮球','228','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('400','0','户外服装','226','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('401','0','户外鞋袜','226','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('402','0','户外配饰','226','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('403','0','时尚生活杂志','264','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('404','0','娱乐休闲杂志','264','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('405','0','教育科技杂志','264','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('406','0','商业时政杂志','264','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('407','0','文化艺术杂志','264','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('408','0','美食礼品','269','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('409','0','美酒礼品','269','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('410','0','茗茶礼品','269','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('411','0','摄像机','280','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('412','0','MP3/MP4/iPod','280','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('413','0','录音笔','280','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('414','0','耳机/耳麦','280','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('415','0','音箱','280','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('416','0','光驱/刻录/DVD','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('417','0','机箱','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('418','0','电脑包','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('419','0','散热器','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('420','0','笔记本电脑桌','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('421','0','内存','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('422','0','硬盘','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('423','0','主板','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('424','0','显卡','282','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('425','0','电话机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('426','0','传真机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('427','0','打印机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('428','0','一体机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('429','0','复合机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('430','0','碎纸机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('431','0','扫描仪','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('432','0','保险柜','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('433','0','投影机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('434','0','点钞机','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('435','0','墨盒','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('436','0','硒鼓/粉盒','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('437','0','墨粉/碳粉','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('438','0','色带/碳带','284','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('439','0','网络存储','286','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('440','0','网卡','286','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('441','0','路由器','286','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('442','0','交换机','286','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('443','0','其他','286','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('444','0','方便面','148','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('445','0','速食品','148','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('446','0','罐头','148','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('447','0','冷藏即食','148','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('448','2','果蔬','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('449','2','酒水','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('450','2','食品','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('451','2','粮油干货','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('452','2','美容护肤','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('453','2','玩具用品','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('454','2','生活百货','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('455','2','家用汽车','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('456','2','电器','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('457','2','服装鞋','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('458','2','图书钟表','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('459','2','电脑手机','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('460','2','土特产','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('461','0','乐生活','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('462','0','果蔬生鲜','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('463','0','酒水饮料','0','255','1','');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `cate_logo` ) VALUES  ('464','2','果蔬1','448','255','1','');
DROP TABLE IF EXISTS ecm_goods;
CREATE TABLE ecm_goods (
  goods_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  goods_name varchar(255) NOT NULL DEFAULT '',
  goods_subname varchar(255) NOT NULL DEFAULT '' COMMENT '商品副标题',
  description text,
  cate_id int(10) unsigned NOT NULL DEFAULT '0',
  cate_name varchar(255) NOT NULL DEFAULT '',
  brand varchar(100) NOT NULL,
  spec_qty tinyint(4) unsigned NOT NULL DEFAULT '0',
  spec_name_1 varchar(60) NOT NULL DEFAULT '',
  spec_name_2 varchar(60) NOT NULL DEFAULT '',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  closed tinyint(3) unsigned NOT NULL DEFAULT '0',
  if_open tinyint(3) NOT NULL DEFAULT '0',
  close_reason varchar(255) DEFAULT NULL,
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  last_update int(10) unsigned NOT NULL DEFAULT '0',
  default_spec int(11) unsigned NOT NULL DEFAULT '0',
  default_image varchar(255) NOT NULL DEFAULT '',
  recommended tinyint(4) unsigned NOT NULL DEFAULT '0',
  cate_id_1 int(10) unsigned NOT NULL DEFAULT '0',
  cate_id_2 int(10) unsigned NOT NULL DEFAULT '0',
  cate_id_3 int(10) unsigned NOT NULL DEFAULT '0',
  cate_id_4 int(10) unsigned NOT NULL DEFAULT '0',
  price decimal(10,2) NOT NULL DEFAULT '0.00',
  market_price decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  tags varchar(102) NOT NULL,
  integral_max_exchange int(10) unsigned NOT NULL DEFAULT '0',
  mall_recommended tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商城推荐',
  mall_sort_order tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '商城推荐排序',
  PRIMARY KEY (goods_id),
  KEY store_id (store_id),
  KEY cate_id (cate_id),
  KEY cate_id_1 (cate_id_1),
  KEY cate_id_2 (cate_id_2),
  KEY cate_id_3 (cate_id_3),
  KEY cate_id_4 (cate_id_4),
  KEY brand (brand(10)),
  KEY tags (tags)
) ENGINE=MyISAM;
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('1','2','material','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','酸酸甜甜味道好合家欢 ','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0','0',null,'1388033366','1435822679','1','data/files/store_2/goods_110/small_201312262048304586.jpg','1','462','14','19','0','8.00','9.60','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('2','2','material','袋装水果','','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0','0',null,'1388033524','1388033524','2','data/files/store_2/goods_198/small_201312262049586818.jpg','1','462','14','19','0','100.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('3','2','material','海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~','','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0','0',null,'1388033588','1388033588','3','data/files/store_2/goods_148/small_201312262052284448.jpg','1','462','14','19','0','68.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('4','2','material','杰记 新鲜脆甜 高山红苹果','','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0','0',null,'1388033671','1388033671','4','data/files/store_2/goods_57/small_201312262054174988.jpg','1','462','14','19','0','69.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('5','2','material','杰记 新鲜脆甜 高山红苹果','','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0','0',null,'1388033715','1388033715','5','data/files/store_2/goods_99/small_201312262054594117.jpg','1','462','14','19','0','10.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('6','2','material','杰记 进口 新鲜 新西兰 爵士 苹果','','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0','0',null,'1388033757','1388033757','6','data/files/store_2/goods_136/small_201312262055366831.jpg','1','462','14','19','0','32.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('7','2','material','杰记 进口 新鲜 果大味甜 红蛇果','','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0','0',null,'1388033798','1388033798','7','data/files/store_2/goods_180/small_201312262056209107.jpg','1','462','14','19','0','65.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('8','2','material','杰记美国无籽黑提（清香蜜甜，爽脆无渣）','','','20','网上菜场、果蔬生鲜	水果	葡萄','','0','','','1','0','0',null,'1388033867','1388033867','8','data/files/store_2/goods_63/small_201312262057435880.jpg','1','462','14','20','0','38.80','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('9','2','material','海泉 进口红提 新鲜配送','','','21','网上菜场、果蔬生鲜	水果	红提','','0','','','1','0','0',null,'1388033923','1388033923','9','data/files/store_2/goods_120/small_201312262058402887.jpg','1','462','14','21','0','50.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('10','2','material','杰记 国产 新鲜 香甜 库尔勒香梨礼盒','','','26','网上菜场、果蔬生鲜	水果	橙梨','','0','','','1','0','0',null,'1388034036','1388034036','10','data/files/store_2/goods_31/small_201312262100319871.jpg','1','462','14','26','0','108.80','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('11','2','material','海泉 贡梨','','','26','网上菜场、果蔬生鲜	水果	橙梨','','0','','','1','0','0',null,'1388034078','1388034078','11','data/files/store_2/goods_75/small_201312262101158858.jpg','1','462','14','26','0','25.50','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('12','2','material','杰记 国产 红肉 新鲜 红心蜜柚','','','22','网上菜场、果蔬生鲜	水果	柚子','','0','','','1','0','0',null,'1388034154','1388034154','12','data/files/store_2/goods_144/small_201312262102246687.jpg','1','462','14','22','0','28.50','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('13','2','material','海泉 进口车厘子 圣诞款','','','34','网上菜场、果蔬生鲜	水果	车厘子','','0','','','1','0','0',null,'1388034228','1388034228','13','data/files/store_2/goods_2/small_201312262103227833.jpg','1','462','14','34','0','108.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('14','2','material','海泉 进口 红心火龙果 新鲜配送','','','33','网上菜场、果蔬生鲜	水果	火龙果','','0','','','1','0','0',null,'1388034294','1388034294','14','data/files/store_2/goods_77/small_201312262104371080.jpg','1','462','14','33','0','21.80','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('15','2','material','海泉 进口柠檬 尤力克 新鲜配送','','','27','网上菜场、果蔬生鲜	水果	柠檬','','0','','','1','0','0',null,'1388034356','1388034356','15','data/files/store_2/goods_153/small_201312262105539118.jpg','1','462','14','27','0','30.60','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('16','2','material','椰岛鹿龟酒二星礼盒（500ml*2）','','','98','休闲食品、酒水饮料	酒类商城	滋补酒','','0','','','1','0','0',null,'1388034478','1388034478','16','data/files/store_2/goods_69/small_201312262107499378.jpg','1','2','64','98','0','92.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('17','2','material','椰岛鹿龟酒三星（露酒）礼盒2瓶装（500ml*2） 养生保健补酒','','','98','休闲食品、酒水饮料	酒类商城	滋补酒','','0','','','1','0','0',null,'1388034535','1388034535','17','data/files/store_2/goods_129/small_201312262108507192.jpg','1','2','64','98','0','110.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('18','2','material','沙洲优黄花开富贵480ml/瓶','','','96','休闲食品、酒水饮料	酒类商城	黄酒','','0','','','1','0','0',null,'1388034582','1388034582','18','data/files/store_2/goods_166/small_201312262109269656.jpg','1','2','64','96','0','32.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('19','2','material','50°红心如意郎酒500ml','','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0','0',null,'1388034641','1388034641','19','data/files/store_2/goods_28/small_201312262110282113.jpg','1','2','64','97','0','52.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('20','2','material','口子窖白酒（五年）46度 400ml','','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0','0',null,'1388034702','1388034702','20','data/files/store_2/goods_51/small_201312262110515808.jpg','1','2','64','97','0','95.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('21','2','material','【量贩购】张裕窖藏二年干红葡萄酒750ml×2瓶（每个ID限购5组）','','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0','0',null,'1388034760','1388034760','21','data/files/store_2/goods_124/small_201312262112041198.jpg','1','2','64','97','0','72.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('22','2','material','华佗十全补酒700ml','','','95','休闲食品、酒水饮料	酒类商城	白酒','','0','','','1','0','0',null,'1388034838','1388034838','22','data/files/store_2/goods_6/small_201312262113269791.jpg','1','2','64','95','0','36.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('23','2','material','双沟珍宝坊 君坊 41.8度 480ml+68度 20ml','','','94','休闲食品、酒水饮料	酒类商城	进口葡萄酒','','0','','','1','0','0',null,'1388034891','1388034891','23','data/files/store_2/goods_71/small_201312262114315846.jpg','1','2','64','94','0','128.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('24','2','material','42°洋河大曲青瓷500ml','','','99','休闲食品、酒水饮料	酒类商城	果酒','','0','','','1','0','0',null,'1388034944','1388034944','24','data/files/store_2/goods_141/small_201312262115417011.jpg','1','2','64','99','0','62.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('25','2','material','沙洲优黄(干黄) 480ml/瓶','','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0','0',null,'1388035006','1388035006','25','data/files/store_2/goods_3/small_201312262116433996.jpg','1','2','64','97','0','350.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('26','2','material','乌毡帽十年陈 350ml','','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0','0',null,'1388035091','1388035091','26','data/files/store_2/goods_86/small_201312262118061068.jpg','1','2','64','97','0','100.00','0.00',',330,','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('27','2','material','上海老酒六年陈500ml','','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0','0',null,'1388035163','1388035163','27','data/files/store_2/goods_160/small_201312262119204138.jpg','1','2','64','97','0','666.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('28','2','material','【量贩购】多力橄榄葵花油2.5L×2瓶 礼盒装 过节送礼更合适（每个I...','','','158','粮油干货、厨房调料	粮油米面	食用油','','0','','','1','0','0',null,'1388036097','1388036097','28','data/files/store_2/goods_92/small_201312262134527551.jpg','1','4','145','158','0','108.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('29','2','material','银鹭好粥道 黑米杂粮八宝粥280g','','','150','粮油干货、厨房调料	粮油米面	杂粮','','0','','','1','0','0',null,'1388036198','1388036198','29','data/files/store_2/goods_192/small_201312262136326387.jpg','1','4','145','150','0','3.60','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('30','2','material','纽天然三叶草蜂蜜250g（新西兰）','','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0','0',null,'1388036332','1388036332','30','data/files/store_2/goods_111/small_201312262138315559.jpg','1','3','124','132','0','59.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('31','2','material','台湾进口零食品 张君雅系列 拉面条饼和风鸡汁味 嘴馋了','','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0','0',null,'1388036394','1424851994','31','data/files/store_2/goods_189/small_201312262139497936.jpg','1','3','124','132','0','6.90','0.00','','100','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('32','2','material','正宗99能量棒 台湾北田棒蛋黄夹心 180克 特价 嘴馋了','','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0','0',null,'1388036467','1424851984','32','data/files/store_2/goods_62/small_201312262141025440.jpg','1','3','124','132','0','10.00','0.00','','5','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('33','2','material','印度尼西亚进口啪啪通虾片85克','','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0','0',null,'1388036528','1388036528','33','data/files/store_2/goods_125/small_201312262142056946.jpg','1','3','124','132','0','16.80','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('34','2','material','正品马来西亚 可康牌多口味果冻（含椰果）480g 嘴馋了','','','134','进口食品、进口乳品	进口零食	进口果冻/布丁','','0','','','1','0','0',null,'1388036590','1388036590','34','data/files/store_2/goods_185/small_201312262143054186.jpg','1','3','124','134','0','12.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('35','2','material','可康果冻布丁 480g(80gX6杯) 邻客小食','','','134','进口食品、进口乳品	进口零食	进口果冻/布丁','','0','','','1','0','0',null,'1388036650','1388036650','35','data/files/store_2/goods_42/small_201312262144021189.jpg','1','3','124','134','0','12.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('36','2','material','泰国进口天然零食品 特级泰国植生桂圆肉干 龙眼肉 果干蜜饯 140g...','','','138','进口食品、进口乳品	进口零食	进口凉果/蜜饯','','0','','','1','0','0',null,'1388036717','1388036717','36','data/files/store_2/goods_113/small_201312262145134866.jpg','1','3','124','138','0','22.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('37','2','material','优之良品贵妃梅200克','','','138','进口食品、进口乳品	进口零食	进口凉果/蜜饯','','0','','','1','0','0',null,'1388036809','1388036809','37','data/files/store_2/goods_7/small_201312262146474624.jpg','1','3','124','138','0','20.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('38','2','material','澳门香记特产 XO酱金钱猪肉脯/肉干 250g 特价 嘴馋了','','','136','进口食品、进口乳品	进口零食	进口肉制品','','0','','','1','0','0',null,'1388036884','1435822537','38','data/files/store_2/goods_80/small_201312262148001815.jpg','1','3','124','136','0','21.00','25.20','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('39','2','material','韩国进口小零食 托马斯小火车鳕鱼肠400g','','','136','进口食品、进口乳品	进口零食	进口肉制品','','0','','','1','0','0',null,'1388036943','1388036943','39','data/files/store_2/goods_139/small_201312262148598688.jpg','1','3','124','136','0','80.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('40','2','material','味好美脆皮香酥炸鸡配料45g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037104','1388037104','40','data/files/store_2/goods_95/small_201312262151359791.jpg','1','4','146','332','0','2.20','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('41','2','material','味好美鱼香肉丝调料35g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037142','1388037142','41','data/files/store_2/goods_130/small_201312262152104798.jpg','1','4','146','332','0','2.50','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('42','2','material','王守义十三香40g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037251','1388037251','42','data/files/store_2/goods_47/small_201312262154079508.jpg','1','4','146','332','0','2.30','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('43','2','material','味好美咖喱粉30g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037302','1388037302','43','data/files/store_2/goods_93/small_201312262154537504.jpg','1','4','146','332','0','7.30','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('44','2','material','川南火锅底料150g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037356','1388037356','44','data/files/store_2/goods_144/small_201312262155447040.jpg','1','4','146','332','0','4.10','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('45','2','material','郫县红油豆瓣 1.05kg','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037389','1388037389','45','data/files/store_2/goods_178/small_201312262156186146.jpg','1','4','146','332','0','14.80','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('46','2','material','川郫红油郫县豆瓣500g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037427','1388037427','46','data/files/store_2/goods_11/small_201312262156516537.jpg','1','4','146','332','0','5.80','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('47','2','material','川南干爹风味豆豉210g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037481','1388037481','47','data/files/store_2/goods_76/small_201312262157569987.jpg','1','4','146','332','0','5.50','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('48','2','material','川崎火锅调料海鲜100g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037529','1424851974','48','data/files/store_2/goods_111/small_201312262158319438.jpg','1','4','146','332','0','2.60','0.00','','1000','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('49','2','material','川崎火锅调料海麻辣100g','','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0','0',null,'1388037569','1388037569','49','data/files/store_2/goods_162/small_201312262159227323.jpg','1','4','146','332','0','2.60','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('50','2','material','新安怡 婴儿保湿润肤乳液200ML','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388037930','1388037930','50','data/files/store_2/goods_127/small_201312262205276887.jpg','1','6','189','364','0','74.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('51','2','material','飞利浦新安怡标准口径奶嘴','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388037976','1388037976','51','data/files/store_2/goods_173/small_201312262206139520.jpg','1','6','189','364','0','14.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('52','2','material','飞利浦新安怡幼儿食物储存盒','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038076','1388038076','52','data/files/store_2/goods_72/small_201312262207528762.jpg','1','6','189','364','0','144.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('53','2','material','Pigeon贝亲 婴儿沐浴露','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038125','1388038125','53','data/files/store_2/goods_102/small_201312262208227300.jpg','1','6','189','364','0','17.50','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('54','2','material','飞利浦新安怡微波炉蒸汽消毒锅套餐','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038164','1388038164','54','data/files/store_2/goods_135/small_201312262208557042.jpg','1','6','189','364','0','354.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('55','2','material','飞利浦新安怡4合1电子蒸汽消毒锅','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038205','1388038205','55','data/files/store_2/goods_176/small_201312262209361435.jpg','1','6','189','364','0','679.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('56','2','material','飞利浦新安怡手动吸乳器外出旅行组合套装','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038246','1388038246','56','data/files/store_2/goods_16/small_201312262210162177.jpg','1','6','189','364','0','606.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('57','2','material','飞利浦新安怡对装乳头矫正器','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038292','1388038292','57','data/files/store_2/goods_57/small_201312262210575290.jpg','1','6','189','364','0','374.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('58','2','material','飞利浦新安怡智能蒸汽消毒锅','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038343','1388038343','58','data/files/store_2/goods_106/small_201312262211467126.jpg','1','6','189','364','0','774.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('59','2','material','飞利浦新安怡标准口径奶嘴','','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0','0',null,'1388038380','1388038380','59','data/files/store_2/goods_152/small_201312262212327144.jpg','1','6','189','364','0','12.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('60','2','material','希乐上品真空保温泡茶杯 XS-400-3','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388038694','1388038694','60','data/files/store_2/goods_90/small_201312262218109004.jpg','1','7','0','0','0','35.80','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('61','2','material','妙洁圆形耐热玻璃保鲜盒800ml MCOGBC80','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388038738','1388038738','61','data/files/store_2/goods_114/small_201312262218342575.jpg','1','7','0','0','0','24.90','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('62','2','material','(原装进口)韩国爱敬aekyung全彩护色洗衣液1L','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388038787','1388038787','62','data/files/store_2/goods_153/small_201312262219138421.jpg','1','7','0','0','0','46.60','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('63','2','material','品诚尚品惠 Supor/苏泊尔 T0908Q厨具套装典雅系列不锈钢锅铲汤勺...','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388038827','1388038827','63','data/files/store_2/goods_6/small_201312262220067431.jpg','1','7','0','0','0','215.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('64','2','material','乐扣保鲜盒6件多规格套装微波炉烤箱耐热玻璃LLG224S902 44763当...','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388038876','1388038876','64','data/files/store_2/goods_41/small_201312262220415407.jpg','1','7','0','0','0','202.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('65','2','material','妙洁手压旋拖1*4','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388038973','1388038973','65','data/files/store_2/goods_143/small_201312262222237668.jpg','1','7','0','0','0','158.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('66','2','material','2支装妙洁C型点断式垃圾袋(中)','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388039008','1388039008','66','data/files/store_2/goods_186/small_201312262223061143.jpg','1','7','0','0','0','2.90','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('67','2','material','妙洁C型魔吸胶棉拖把','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388039047','1388039047','67','data/files/store_2/goods_26/small_201312262223464846.jpg','1','7','0','0','0','23.80','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('68','2','material','汰渍全效炫白加衣领净精华洗衣粉560克','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388039114','1388039114','68','data/files/store_2/goods_91/small_201312262224518849.jpg','1','7','0','0','0','5.10','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('69','2','material','【量贩购】奥妙 全自动含金纺馨香精华深层洁净洗衣液 3kg（怡神薰...','','','7','厨房、清洁、卫浴用品','','0','','','1','0','0',null,'1388039145','1388039145','69','data/files/store_2/goods_131/small_201312262225311490.jpg','1','7','0','0','0','45.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('70','2','material','韩版夏季新款连衣裙 纯色露肩 雪纺假两件套 连衣短裙5776','','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0','0',null,'1388039629','1388039629','70','data/files/store_2/goods_195/small_201312262233156335.jpg','1','10','223','239','0','850.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('71','2','material','春装新款 韩版 气质修身 蕾丝拼接 圆领长袖 性感 连衣短裙L4666','','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0','0',null,'1388039672','1388039672','71','data/files/store_2/goods_44/small_201312262234045839.jpg','1','10','223','239','0','750.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('72','2','material','时尚休闲 气质雪纺条纹两件套 长袖不规则连衣裙7938','','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0','0',null,'1388039729','1388039729','72','data/files/store_2/goods_113/small_201312262235137180.jpg','1','10','223','239','0','690.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('73','2','material','新品女装 荷叶边外衫 碎花裙 裙子夏季两件套 麻棉长袖连衣裙F512...','','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0','0',null,'1388039774','1388039774','73','data/files/store_2/goods_142/small_201312262235429182.jpg','1','10','223','239','0','850.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('74','2','material','皇后大街2013春装新款圆领收腰中袖蕾丝连衣裙修身显瘦打底裙L234...','','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0','0',null,'1388039823','1388039823','74','data/files/store_2/goods_189/small_201312262236298305.jpg','1','10','223','239','0','2090.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('75','2','material','棉先生原创 2012新品 韩版黑色西服两粒扣休闲小西装外套 S5455','','','262','服饰箱包鞋靴、 运动	男装精品	西服','','0','','','1','0','0',null,'1388039883','1388039883','75','data/files/store_2/goods_38/small_201312262237189780.jpg','1','10','224','262','0','173.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('76','2','material','Miiow猫人 2013新款夏季女士性感豹纹印花舒适中腰提臀三角裤1397...','','','249','服饰箱包鞋靴、 运动	女装精品	卫衣/绒衫','','0','','','1','0','0',null,'1388039951','1388039951','76','data/files/store_2/goods_98/small_201312262238182827.jpg','1','10','223','249','0','390.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('77','2','material','韩国品牌 SATSUN 专柜正品 超弹修身小腿裤 明线装饰 特价促销','','','245','服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫','','0','','','1','0','0',null,'1388040028','1388040028','77','data/files/store_2/goods_179/small_201312262239393163.jpg','1','10','223','245','0','169.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('78','2','material','（冰爽特价）韩国品牌 SATSUN 专柜正品 拉链装饰牛仔短裤','','','245','服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫','','0','','','1','0','0',null,'1388040081','1388040081','78','data/files/store_2/goods_54/small_201312262240547284.jpg','1','10','223','245','0','129.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('79','2','material','全棉弹力抓绒小腿裤 保暖舒适 雪花修身小腿裤 春...','','','235','服饰箱包鞋靴、 运动	女装精品	羽绒服','','0','','','1','0','0',null,'1388040133','1388040133','79','data/files/store_2/goods_97/small_201312262241379970.jpg','1','10','223','235','0','69.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('80','2','material','【量贩购】顶瓜瓜专柜 顶呱呱男女保暖内衣 加厚加绒套装DNBMD-T2...','','','236','服饰箱包鞋靴、 运动	女装精品	羊毛/羊绒','','0','','','1','0','0',null,'1388040198','1388040198','80','data/files/store_2/goods_156/small_201312262242365477.jpg','1','10','223','236','0','89.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('81','2','material','艾美特PTC陶瓷暖风机HP2028UR 取暖器 电暖器 遥控加湿','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388040743','1388040743','81','data/files/store_2/goods_111/small_201312262251512164.jpg','1','9','216','0','0','699.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('82','2','material','飞利浦 充电剃须刀HQ6076 弹出式修发器刀头水洗','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388040835','1388040835','82','data/files/store_2/goods_9/small_201312262253293800.jpg','1','9','216','0','0','499.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('83','2','material','Joyoung/九阳 JYC-21GS08 电磁炉 健康双环火 触摸 节能 正品特价...','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388040935','1388040935','83','data/files/store_2/goods_80/small_201312262254404774.jpg','1','9','216','0','0','269.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('84','2','material','Joyoung/九阳JYK-17F05A特价不锈钢多功能电热开水煲壶联保正品 ...','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388040980','1388040980','84','data/files/store_2/goods_155/small_201312262255558436.jpg','1','9','216','0','0','170.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('85','2','material','先锋 电暖气CY11BB-11 DS1102 油汀11片 赠晾衣架加湿盒','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041028','1388041028','85','data/files/store_2/goods_6/small_201312262256466045.jpg','1','9','216','0','0','399.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('86','2','material','Joyoung/九阳 C21-SC007 九阳电磁炉 超薄 二级能效 整板触摸屏','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041065','1388041065','86','data/files/store_2/goods_49/small_201312262257294186.jpg','1','9','216','0','0','259.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('87','2','material','道尔顿PF前置折叠棉滤芯','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041106','1388041106','87','data/files/store_2/goods_86/small_201312262258066317.jpg','1','9','216','0','0','88.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('88','2','material','美妙足浴盆MM-13H全盖泡脚加热足浴器足浴盆泡脚盆','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041146','1388041146','88','data/files/store_2/goods_124/small_201312262258442397.jpg','1','9','216','0','0','249.00','0.00','','0','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('89','2','material','美妙足浴盆MM-12E/02E足浴器按摩正品 洗脚盆加热泡脚盆','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041200','1424851940','89','data/files/store_2/goods_180/small_201312262259401924.jpg','1','9','216','0','0','239.00','0.00','','500','0','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('90','2','material','品诚尚品惠 Midea/美的 DE12G13 全不锈钢豆浆机多功能无网 3.4KG','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041280','1388041280','90','data/files/store_2/goods_60/small_201312262301006712.jpg','1','9','216','0','0','270.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('91','2','material','HTC T528t 双卡双待双通TD-SCDMA/GSM','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041380','1388041380','91','data/files/store_2/goods_155/small_201312262302356953.jpg','1','9','216','0','0','1298.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('92','2','material','中兴（ZTE）U960s3 3G手机 TD-SCDMA/GSM','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041427','1388041427','92','data/files/store_2/goods_3/small_201312262303231812.jpg','1','9','216','0','0','495.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('93','2','material','三星(samsung)s5698 3G手机 TD-SCDMA/GSM','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041471','1388041471','93','data/files/store_2/goods_48/small_201312262304085587.jpg','1','9','216','0','0','199.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('94','2','material','华为（Huawei）T8951（G510）3G手机 TD-SCDMA/GSM','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041510','1388041510','94','data/files/store_2/goods_93/small_201312262304537590.jpg','1','9','216','0','0','599.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('95','2','material','HTC 8S（A620t）3G手机TD-SCDMA/GSM','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041548','1388041548','95','data/files/store_2/goods_134/small_201312262305341913.jpg','1','9','216','0','0','688.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('96','2','material','诺基亚（NOKIA） Lumia 720T 3G手机 TD-SCDMA/GSM','','','216','大家电、生活电器	生活电器','','0','','','1','0','0',null,'1388041597','1388041597','96','data/files/store_2/goods_170/small_201312262306104597.jpg','1','9','216','0','0','1749.00','0.00','','0','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('97','2','material','三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','','','216','大家电、生活电器	生活电器','','0','','','1','0','1',null,'1388041645','1424851914','97','data/files/store_2/goods_27/small_201312262307078496.jpg','1','9','216','0','0','1549.00','0.00','','20','1','255');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('98','2','material','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','','','216','大家电、生活电器	生活电器','','0','','','1','0','1',null,'1388041757','1424851930','98','data/files/store_2/goods_107/small_201312262308271759.jpg','1','9','216','0','0','1588.00','0.00','','100','1','1');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `goods_subname`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `if_open`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `market_price`, `tags`, `integral_max_exchange`, `mall_recommended`, `mall_sort_order` ) VALUES  ('99','4','material','测试商品','','','83','休闲食品	饼干糕点	蛋糕','','0','','','1','0','0',null,'1435818979','1435818989','99','','1','2','62','83','0','1.00','1.20','','0','1','255');
DROP TABLE IF EXISTS ecm_goods_attr;
CREATE TABLE ecm_goods_attr (
  gattr_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  attr_name varchar(60) NOT NULL DEFAULT '',
  attr_value varchar(255) NOT NULL DEFAULT '',
  attr_id int(10) unsigned DEFAULT NULL,
  sort_order tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (gattr_id),
  KEY goods_id (goods_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_goods_image;
CREATE TABLE ecm_goods_image (
  image_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  image_url varchar(255) NOT NULL DEFAULT '',
  thumbnail varchar(255) NOT NULL DEFAULT '',
  sort_order tinyint(4) unsigned NOT NULL DEFAULT '0',
  file_id int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (image_id),
  KEY goods_id (goods_id)
) ENGINE=MyISAM;
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('1','1','data/files/store_2/goods_110/201312262048304586.jpg','data/files/store_2/goods_110/small_201312262048304586.jpg','1','1');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('2','2','data/files/store_2/goods_198/201312262049586818.jpg','data/files/store_2/goods_198/small_201312262049586818.jpg','1','2');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('3','3','data/files/store_2/goods_148/201312262052284448.jpg','data/files/store_2/goods_148/small_201312262052284448.jpg','1','3');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('4','4','data/files/store_2/goods_57/201312262054174988.jpg','data/files/store_2/goods_57/small_201312262054174988.jpg','1','4');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('5','5','data/files/store_2/goods_99/201312262054594117.jpg','data/files/store_2/goods_99/small_201312262054594117.jpg','1','5');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('6','6','data/files/store_2/goods_136/201312262055366831.jpg','data/files/store_2/goods_136/small_201312262055366831.jpg','1','6');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('7','7','data/files/store_2/goods_180/201312262056209107.jpg','data/files/store_2/goods_180/small_201312262056209107.jpg','1','7');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('8','8','data/files/store_2/goods_63/201312262057435880.jpg','data/files/store_2/goods_63/small_201312262057435880.jpg','1','8');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('9','9','data/files/store_2/goods_120/201312262058402887.jpg','data/files/store_2/goods_120/small_201312262058402887.jpg','1','9');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('10','10','data/files/store_2/goods_31/201312262100319871.jpg','data/files/store_2/goods_31/small_201312262100319871.jpg','1','10');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('11','11','data/files/store_2/goods_75/201312262101158858.jpg','data/files/store_2/goods_75/small_201312262101158858.jpg','1','11');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('12','12','data/files/store_2/goods_144/201312262102246687.jpg','data/files/store_2/goods_144/small_201312262102246687.jpg','1','12');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('13','13','data/files/store_2/goods_2/201312262103227833.jpg','data/files/store_2/goods_2/small_201312262103227833.jpg','1','13');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('14','14','data/files/store_2/goods_77/201312262104371080.jpg','data/files/store_2/goods_77/small_201312262104371080.jpg','1','14');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('15','15','data/files/store_2/goods_153/201312262105539118.jpg','data/files/store_2/goods_153/small_201312262105539118.jpg','1','15');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('16','16','data/files/store_2/goods_69/201312262107499378.jpg','data/files/store_2/goods_69/small_201312262107499378.jpg','1','16');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('17','17','data/files/store_2/goods_129/201312262108507192.jpg','data/files/store_2/goods_129/small_201312262108507192.jpg','1','17');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('18','17','data/files/store_2/goods_130/201312262108508363.jpg','data/files/store_2/goods_130/small_201312262108508363.jpg','255','18');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('19','18','data/files/store_2/goods_166/201312262109269656.jpg','data/files/store_2/goods_166/small_201312262109269656.jpg','1','19');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('20','19','data/files/store_2/goods_28/201312262110282113.jpg','data/files/store_2/goods_28/small_201312262110282113.jpg','1','20');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('21','20','data/files/store_2/goods_51/201312262110515808.jpg','data/files/store_2/goods_51/small_201312262110515808.jpg','1','21');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('22','21','data/files/store_2/goods_124/201312262112041198.jpg','data/files/store_2/goods_124/small_201312262112041198.jpg','1','22');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('23','22','data/files/store_2/goods_6/201312262113269791.jpg','data/files/store_2/goods_6/small_201312262113269791.jpg','1','23');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('24','23','data/files/store_2/goods_71/201312262114315846.jpg','data/files/store_2/goods_71/small_201312262114315846.jpg','1','24');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('25','24','data/files/store_2/goods_141/201312262115417011.jpg','data/files/store_2/goods_141/small_201312262115417011.jpg','1','25');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('26','25','data/files/store_2/goods_3/201312262116433996.jpg','data/files/store_2/goods_3/small_201312262116433996.jpg','1','26');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('27','26','data/files/store_2/goods_86/201312262118061068.jpg','data/files/store_2/goods_86/small_201312262118061068.jpg','1','27');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('28','27','data/files/store_2/goods_160/201312262119204138.jpg','data/files/store_2/goods_160/small_201312262119204138.jpg','1','28');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('29','28','data/files/store_2/goods_92/201312262134527551.jpg','data/files/store_2/goods_92/small_201312262134527551.jpg','1','29');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('30','29','data/files/store_2/goods_192/201312262136326387.jpg','data/files/store_2/goods_192/small_201312262136326387.jpg','1','30');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('31','30','data/files/store_2/goods_111/201312262138315559.jpg','data/files/store_2/goods_111/small_201312262138315559.jpg','1','31');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('32','31','data/files/store_2/goods_189/201312262139497936.jpg','data/files/store_2/goods_189/small_201312262139497936.jpg','1','32');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('33','32','data/files/store_2/goods_62/201312262141025440.jpg','data/files/store_2/goods_62/small_201312262141025440.jpg','1','33');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('34','33','data/files/store_2/goods_125/201312262142056946.jpg','data/files/store_2/goods_125/small_201312262142056946.jpg','1','34');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('35','34','data/files/store_2/goods_185/201312262143054186.jpg','data/files/store_2/goods_185/small_201312262143054186.jpg','1','35');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('36','35','data/files/store_2/goods_42/201312262144021189.jpg','data/files/store_2/goods_42/small_201312262144021189.jpg','1','36');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('37','36','data/files/store_2/goods_113/201312262145134866.jpg','data/files/store_2/goods_113/small_201312262145134866.jpg','1','37');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('38','37','data/files/store_2/goods_7/201312262146474624.jpg','data/files/store_2/goods_7/small_201312262146474624.jpg','1','38');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('39','38','data/files/store_2/goods_80/201312262148001815.jpg','data/files/store_2/goods_80/small_201312262148001815.jpg','1','39');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('40','39','data/files/store_2/goods_139/201312262148598688.jpg','data/files/store_2/goods_139/small_201312262148598688.jpg','1','40');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('41','40','data/files/store_2/goods_95/201312262151359791.jpg','data/files/store_2/goods_95/small_201312262151359791.jpg','1','41');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('42','41','data/files/store_2/goods_130/201312262152104798.jpg','data/files/store_2/goods_130/small_201312262152104798.jpg','1','42');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('43','42','data/files/store_2/goods_47/201312262154079508.jpg','data/files/store_2/goods_47/small_201312262154079508.jpg','1','43');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('44','43','data/files/store_2/goods_93/201312262154537504.jpg','data/files/store_2/goods_93/small_201312262154537504.jpg','1','44');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('45','44','data/files/store_2/goods_144/201312262155447040.jpg','data/files/store_2/goods_144/small_201312262155447040.jpg','1','45');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('46','45','data/files/store_2/goods_178/201312262156186146.jpg','data/files/store_2/goods_178/small_201312262156186146.jpg','1','46');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('47','46','data/files/store_2/goods_11/201312262156516537.jpg','data/files/store_2/goods_11/small_201312262156516537.jpg','1','47');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('48','47','data/files/store_2/goods_76/201312262157569987.jpg','data/files/store_2/goods_76/small_201312262157569987.jpg','1','48');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('49','48','data/files/store_2/goods_111/201312262158319438.jpg','data/files/store_2/goods_111/small_201312262158319438.jpg','1','49');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('50','49','data/files/store_2/goods_162/201312262159227323.jpg','data/files/store_2/goods_162/small_201312262159227323.jpg','1','50');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('51','50','data/files/store_2/goods_127/201312262205276887.jpg','data/files/store_2/goods_127/small_201312262205276887.jpg','1','51');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('52','51','data/files/store_2/goods_173/201312262206139520.jpg','data/files/store_2/goods_173/small_201312262206139520.jpg','1','52');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('53','52','data/files/store_2/goods_72/201312262207528762.jpg','data/files/store_2/goods_72/small_201312262207528762.jpg','1','53');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('54','53','data/files/store_2/goods_102/201312262208227300.jpg','data/files/store_2/goods_102/small_201312262208227300.jpg','1','54');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('55','54','data/files/store_2/goods_135/201312262208557042.jpg','data/files/store_2/goods_135/small_201312262208557042.jpg','1','55');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('56','55','data/files/store_2/goods_176/201312262209361435.jpg','data/files/store_2/goods_176/small_201312262209361435.jpg','1','56');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('57','56','data/files/store_2/goods_16/201312262210162177.jpg','data/files/store_2/goods_16/small_201312262210162177.jpg','1','57');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('58','57','data/files/store_2/goods_57/201312262210575290.jpg','data/files/store_2/goods_57/small_201312262210575290.jpg','1','58');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('59','58','data/files/store_2/goods_106/201312262211467126.jpg','data/files/store_2/goods_106/small_201312262211467126.jpg','1','59');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('60','59','data/files/store_2/goods_152/201312262212327144.jpg','data/files/store_2/goods_152/small_201312262212327144.jpg','1','60');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('61','60','data/files/store_2/goods_90/201312262218109004.jpg','data/files/store_2/goods_90/small_201312262218109004.jpg','1','61');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('62','61','data/files/store_2/goods_114/201312262218342575.jpg','data/files/store_2/goods_114/small_201312262218342575.jpg','1','62');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('63','62','data/files/store_2/goods_153/201312262219138421.jpg','data/files/store_2/goods_153/small_201312262219138421.jpg','1','63');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('64','63','data/files/store_2/goods_6/201312262220067431.jpg','data/files/store_2/goods_6/small_201312262220067431.jpg','1','64');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('65','64','data/files/store_2/goods_41/201312262220415407.jpg','data/files/store_2/goods_41/small_201312262220415407.jpg','1','65');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('66','65','data/files/store_2/goods_143/201312262222237668.jpg','data/files/store_2/goods_143/small_201312262222237668.jpg','1','66');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('67','66','data/files/store_2/goods_186/201312262223061143.jpg','data/files/store_2/goods_186/small_201312262223061143.jpg','1','67');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('68','67','data/files/store_2/goods_26/201312262223464846.jpg','data/files/store_2/goods_26/small_201312262223464846.jpg','1','68');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('70','68','data/files/store_2/goods_91/201312262224518849.jpg','data/files/store_2/goods_91/small_201312262224518849.jpg','1','70');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('71','69','data/files/store_2/goods_131/201312262225311490.jpg','data/files/store_2/goods_131/small_201312262225311490.jpg','1','71');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('72','70','data/files/store_2/goods_195/201312262233156335.jpg','data/files/store_2/goods_195/small_201312262233156335.jpg','1','72');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('73','71','data/files/store_2/goods_44/201312262234045839.jpg','data/files/store_2/goods_44/small_201312262234045839.jpg','1','73');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('74','72','data/files/store_2/goods_113/201312262235137180.jpg','data/files/store_2/goods_113/small_201312262235137180.jpg','1','74');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('75','73','data/files/store_2/goods_142/201312262235429182.jpg','data/files/store_2/goods_142/small_201312262235429182.jpg','1','75');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('76','74','data/files/store_2/goods_189/201312262236298305.jpg','data/files/store_2/goods_189/small_201312262236298305.jpg','1','76');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('77','75','data/files/store_2/goods_38/201312262237189780.jpg','data/files/store_2/goods_38/small_201312262237189780.jpg','1','77');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('78','76','data/files/store_2/goods_98/201312262238182827.jpg','data/files/store_2/goods_98/small_201312262238182827.jpg','1','78');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('79','77','data/files/store_2/goods_179/201312262239393163.jpg','data/files/store_2/goods_179/small_201312262239393163.jpg','1','79');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('80','78','data/files/store_2/goods_54/201312262240547284.jpg','data/files/store_2/goods_54/small_201312262240547284.jpg','1','80');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('81','79','data/files/store_2/goods_97/201312262241379970.jpg','data/files/store_2/goods_97/small_201312262241379970.jpg','1','81');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('82','80','data/files/store_2/goods_156/201312262242365477.jpg','data/files/store_2/goods_156/small_201312262242365477.jpg','1','82');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('83','81','data/files/store_2/goods_111/201312262251512164.jpg','data/files/store_2/goods_111/small_201312262251512164.jpg','1','83');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('84','82','data/files/store_2/goods_9/201312262253293800.jpg','data/files/store_2/goods_9/small_201312262253293800.jpg','1','84');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('85','83','data/files/store_2/goods_80/201312262254404774.jpg','data/files/store_2/goods_80/small_201312262254404774.jpg','1','85');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('86','84','data/files/store_2/goods_155/201312262255558436.jpg','data/files/store_2/goods_155/small_201312262255558436.jpg','1','86');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('87','85','data/files/store_2/goods_6/201312262256466045.jpg','data/files/store_2/goods_6/small_201312262256466045.jpg','1','87');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('88','86','data/files/store_2/goods_49/201312262257294186.jpg','data/files/store_2/goods_49/small_201312262257294186.jpg','1','88');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('89','87','data/files/store_2/goods_86/201312262258066317.jpg','data/files/store_2/goods_86/small_201312262258066317.jpg','1','89');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('90','88','data/files/store_2/goods_124/201312262258442397.jpg','data/files/store_2/goods_124/small_201312262258442397.jpg','1','90');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('91','89','data/files/store_2/goods_180/201312262259401924.jpg','data/files/store_2/goods_180/small_201312262259401924.jpg','1','91');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('92','90','data/files/store_2/goods_60/201312262301006712.jpg','data/files/store_2/goods_60/small_201312262301006712.jpg','1','92');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('93','91','data/files/store_2/goods_155/201312262302356953.jpg','data/files/store_2/goods_155/small_201312262302356953.jpg','1','93');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('94','92','data/files/store_2/goods_3/201312262303231812.jpg','data/files/store_2/goods_3/small_201312262303231812.jpg','1','94');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('95','93','data/files/store_2/goods_48/201312262304085587.jpg','data/files/store_2/goods_48/small_201312262304085587.jpg','1','95');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('96','94','data/files/store_2/goods_93/201312262304537590.jpg','data/files/store_2/goods_93/small_201312262304537590.jpg','1','96');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('97','95','data/files/store_2/goods_134/201312262305341913.jpg','data/files/store_2/goods_134/small_201312262305341913.jpg','1','97');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('98','96','data/files/store_2/goods_170/201312262306104597.jpg','data/files/store_2/goods_170/small_201312262306104597.jpg','1','98');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('99','97','data/files/store_2/goods_27/201312262307078496.jpg','data/files/store_2/goods_27/small_201312262307078496.jpg','1','99');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('101','98','data/files/store_2/goods_107/201312262308271759.jpg','data/files/store_2/goods_107/small_201312262308271759.jpg','1','101');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('102','98','data/files/store_2/goods_113/201312262308337745.jpg','data/files/store_2/goods_113/small_201312262308337745.jpg','255','102');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('103','98','data/files/store_2/goods_154/201312262309145699.jpg','data/files/store_2/goods_154/small_201312262309145699.jpg','255','103');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('104','1','data/files/store_2/goods_179/201507020446197746.jpg','data/files/store_2/goods_179/small_201507020446197746.jpg','255','108');
DROP TABLE IF EXISTS ecm_goods_prop;
CREATE TABLE ecm_goods_prop (
  pid int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  sort_order int(11) NOT NULL,
  PRIMARY KEY (pid)
) ENGINE=MyISAM;
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('1','品牌','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('2','类别','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('3','规格','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('4','产地','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('5','价格区间','1','255');
DROP TABLE IF EXISTS ecm_goods_prop_value;
CREATE TABLE ecm_goods_prop_value (
  vid int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) NOT NULL,
  prop_value varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  sort_order int(11) NOT NULL,
  PRIMARY KEY (vid)
) ENGINE=MyISAM;
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('1','1','红富士','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('2','2','苹果','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('3','3','礼盒装','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('4','4','国产','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('5','5','0-50','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('6','1','杰记水果','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('7','2','梨子','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('8','2','葡萄','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('9','2','红提','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('10','3','礼袋装','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('11','4','进口','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('12','5','50-100','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('13','5','100-200','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('14','5','200-500','1','255');
DROP TABLE IF EXISTS ecm_goods_pvs;
CREATE TABLE ecm_goods_pvs (
  goods_id int(11) NOT NULL,
  pvs text NOT NULL,
  PRIMARY KEY (goods_id)
) ENGINE=MyISAM;
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('1','1:6;2:2;3:3;4:11;5:12');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('2','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('3','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('4','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('5','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('6','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('7','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('8','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('19','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('20','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('21','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('25','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('26','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('27','');
DROP TABLE IF EXISTS ecm_goods_qa;
CREATE TABLE ecm_goods_qa (
  ques_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  question_content varchar(255) NOT NULL,
  user_id int(10) unsigned NOT NULL,
  store_id int(10) unsigned NOT NULL,
  email varchar(60) NOT NULL,
  item_id int(10) unsigned NOT NULL DEFAULT '0',
  item_name varchar(255) NOT NULL DEFAULT '',
  reply_content varchar(255) NOT NULL,
  time_post int(10) unsigned NOT NULL,
  time_reply int(10) unsigned NOT NULL,
  if_new tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'goods',
  PRIMARY KEY (ques_id),
  KEY user_id (user_id),
  KEY goods_id (item_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_goods_spec;
CREATE TABLE ecm_goods_spec (
  spec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  spec_1 varchar(60) NOT NULL DEFAULT '',
  spec_2 varchar(60) NOT NULL DEFAULT '',
  color_rgb varchar(7) NOT NULL DEFAULT '',
  price decimal(10,2) NOT NULL DEFAULT '0.00',
  stock int(11) NOT NULL DEFAULT '0',
  sku varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (spec_id),
  KEY goods_id (goods_id),
  KEY price (price)
) ENGINE=MyISAM;
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('1','1','','','','8.00','95','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('2','2','','','','100.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('3','3','','','','68.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('4','4','','','','69.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('5','5','','','','10.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('6','6','','','','32.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('7','7','','','','65.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('8','8','','','','38.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('9','9','','','','50.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('10','10','','','','108.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('11','11','','','','25.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('12','12','','','','28.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('13','13','','','','108.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('14','14','','','','21.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('15','15','','','','30.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('16','16','','','','92.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('17','17','','','','110.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('18','18','','','','32.00','92','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('19','19','','','','52.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('20','20','','','','95.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('21','21','','','','72.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('22','22','','','','36.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('23','23','','','','128.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('24','24','','','','62.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('25','25','','','','350.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('26','26','','','','100.00','0','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('27','27','','','','666.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('28','28','','','','108.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('29','29','','','','3.60','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('30','30','','','','59.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('31','31','','','','6.90','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('32','32','','','','10.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('33','33','','','','16.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('34','34','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('35','35','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('36','36','','','','22.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('37','37','','','','20.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('38','38','','','','21.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('39','39','','','','80.00','93','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('40','40','','','','2.20','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('41','41','','','','2.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('42','42','','','','2.30','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('43','43','','','','7.30','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('44','44','','','','4.10','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('45','45','','','','14.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('46','46','','','','5.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('47','47','','','','5.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('48','48','','','','2.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('49','49','','','','2.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('50','50','','','','74.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('51','51','','','','14.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('52','52','','','','144.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('53','53','','','','17.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('54','54','','','','354.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('55','55','','','','679.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('56','56','','','','606.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('57','57','','','','374.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('58','58','','','','774.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('59','59','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('60','60','','','','35.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('61','61','','','','24.90','0','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('62','62','','','','46.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('63','63','','','','215.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('64','64','','','','202.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('65','65','','','','158.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('66','66','','','','2.90','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('67','67','','','','23.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('68','68','','','','5.10','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('69','69','','','','45.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('70','70','','','','850.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('71','71','','','','750.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('72','72','','','','690.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('73','73','','','','850.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('74','74','','','','2090.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('75','75','','','','173.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('76','76','','','','390.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('77','77','','','','169.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('78','78','','','','129.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('79','79','','','','69.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('80','80','','','','89.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('81','81','','','','699.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('82','82','','','','499.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('83','83','','','','269.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('84','84','','','','170.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('85','85','','','','399.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('86','86','','','','259.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('87','87','','','','88.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('88','88','','','','249.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('89','89','','','','239.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('90','90','','','','270.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('91','91','','','','1298.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('92','92','','','','495.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('93','93','','','','199.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('94','94','','','','599.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('95','95','','','','688.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('96','96','','','','1749.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('97','97','','','','1549.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('98','98','','','','1588.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('99','99','','','','1.00','1000','');
DROP TABLE IF EXISTS ecm_goods_statistics;
CREATE TABLE ecm_goods_statistics (
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  views int(10) unsigned NOT NULL DEFAULT '0',
  collects int(10) unsigned NOT NULL DEFAULT '0',
  carts int(10) unsigned NOT NULL DEFAULT '0',
  orders int(10) unsigned NOT NULL DEFAULT '0',
  sales int(10) unsigned NOT NULL DEFAULT '0',
  comments int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (goods_id)
) ENGINE=MyISAM;
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('1','269','1','8','5','1','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('2','6','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('3','2','0','1','1','1','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('4','3','0','1','1','1','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('5','18','0','1','1','1','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('6','2','0','1','1','1','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('7','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('8','6','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('9','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('10','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('11','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('12','12','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('13','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('14','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('15','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('16','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('17','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('18','8','0','2','2','8','2');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('19','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('20','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('21','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('22','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('23','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('24','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('25','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('26','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('27','14','0','1','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('28','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('29','7','0','1','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('30','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('31','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('32','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('33','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('34','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('35','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('36','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('37','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('38','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('39','6','0','1','1','7','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('40','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('41','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('42','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('43','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('44','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('45','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('46','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('47','4','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('48','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('49','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('50','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('51','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('52','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('53','4','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('54','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('55','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('56','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('57','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('58','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('59','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('60','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('61','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('62','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('63','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('64','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('65','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('66','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('67','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('68','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('69','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('70','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('71','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('72','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('73','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('74','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('75','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('76','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('77','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('78','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('79','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('80','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('81','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('82','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('83','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('84','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('85','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('86','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('87','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('88','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('89','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('90','4','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('91','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('92','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('93','12','0','2','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('94','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('95','2','0','2','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('96','6','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('97','4','0','1','1','1','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('98','209','1','5','1','1','1');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('99','10','0','2','0','0','0');
DROP TABLE IF EXISTS ecm_grade_goods;
CREATE TABLE ecm_grade_goods (
  goods_id int(255) NOT NULL,
  grade_id int(20) NOT NULL,
  grade int(20) NOT NULL,
  grade_discount decimal(4,2) NOT NULL DEFAULT '1.00'
) ENGINE=MyISAM;
INSERT INTO ecm_grade_goods ( `goods_id`, `grade_id`, `grade`, `grade_discount` ) VALUES  ('97','1','1','0.90');
INSERT INTO ecm_grade_goods ( `goods_id`, `grade_id`, `grade`, `grade_discount` ) VALUES  ('97','2','2','0.80');
INSERT INTO ecm_grade_goods ( `goods_id`, `grade_id`, `grade`, `grade_discount` ) VALUES  ('97','3','3','0.70');
INSERT INTO ecm_grade_goods ( `goods_id`, `grade_id`, `grade`, `grade_discount` ) VALUES  ('98','1','1','0.90');
INSERT INTO ecm_grade_goods ( `goods_id`, `grade_id`, `grade`, `grade_discount` ) VALUES  ('98','2','2','0.80');
INSERT INTO ecm_grade_goods ( `goods_id`, `grade_id`, `grade`, `grade_discount` ) VALUES  ('98','3','3','0.70');
DROP TABLE IF EXISTS ecm_groupbuy;
CREATE TABLE ecm_groupbuy (
  group_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  group_name varchar(255) NOT NULL DEFAULT '',
  group_image varchar(255) NOT NULL,
  group_desc varchar(255) NOT NULL DEFAULT '',
  start_time int(10) unsigned NOT NULL DEFAULT '0',
  end_time int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  spec_price text NOT NULL,
  min_quantity smallint(5) unsigned NOT NULL DEFAULT '0',
  max_per_user smallint(5) unsigned NOT NULL DEFAULT '0',
  state tinyint(3) unsigned NOT NULL DEFAULT '0',
  recommended tinyint(3) unsigned NOT NULL DEFAULT '0',
  views int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (group_id),
  KEY goods_id (goods_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_groupbuy_log;
CREATE TABLE ecm_groupbuy_log (
  group_id int(10) unsigned NOT NULL DEFAULT '0',
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(60) NOT NULL DEFAULT '',
  quantity smallint(5) unsigned NOT NULL DEFAULT '0',
  spec_quantity text NOT NULL,
  linkman varchar(60) NOT NULL DEFAULT '',
  tel varchar(60) NOT NULL DEFAULT '',
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (group_id,user_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_integral_goods;
CREATE TABLE ecm_integral_goods (
  goods_id int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '积分产品ID',
  goods_name varchar(255) NOT NULL DEFAULT '' COMMENT '积分产品名称',
  goods_logo varchar(255) NOT NULL DEFAULT '' COMMENT '积分产品图片',
  goods_stock int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分产品可兑换数量',
  goods_stock_exchange int(10) NOT NULL DEFAULT '0' COMMENT '积分产品已兑换数量',
  goods_price decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '积分产品价格',
  goods_point int(10) NOT NULL DEFAULT '0' COMMENT '抵扣积分',
  add_time int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  goods_state tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '积分产品状态',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '积分产品排序',
  PRIMARY KEY (goods_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_integral_goods_log;
CREATE TABLE ecm_integral_goods_log (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  goods_id int(10) NOT NULL DEFAULT '0' COMMENT '积分产品ID号',
  goods_name varchar(255) NOT NULL DEFAULT '' COMMENT '积分产品的名称',
  user_id int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  user_name varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  my_name varchar(60) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  my_address varchar(255) NOT NULL DEFAULT '' COMMENT '收货人地址',
  my_mobile varchar(60) NOT NULL DEFAULT '' COMMENT '收货人电话',
  my_remark varchar(255) NOT NULL DEFAULT '' COMMENT '收货人备注',
  my_num int(10) NOT NULL DEFAULT '0' COMMENT '兑换数量',
  wuliu_name varchar(60) NOT NULL DEFAULT '' COMMENT '物流名称',
  wuliu_danhao varchar(60) NOT NULL DEFAULT '' COMMENT '物流单号',
  state tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_integral_log;
CREATE TABLE ecm_integral_log (
  integral_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  user_name varchar(255) DEFAULT '' COMMENT '用户名',
  `point` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '涉及积分',
  add_time int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  integral_type tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '积分类型 购买',
  PRIMARY KEY (integral_id)
) ENGINE=MyISAM;
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('1','2','seller','5','1424851835','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('2','2','seller','5','1427964679','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('3','4','test_1','10','1428027575','注册赠送积分10','1');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('4','5','test_2','10','1428027648','注册赠送积分10','1');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('5','3','buyer','5','1428224120','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('6','2','seller','5','1432016257','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('7','2','seller','5','1434282481','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('8','2','seller','5','1435651219','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('9','2','seller','5','1435807599','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('10','3','buyer','5','1435817823','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('11','4','test_1','5','1435818939','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('12','2','seller','5','1436153234','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('13','3','buyer','5','1436334479','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('14','2','seller','5','1436337007','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('15','3','buyer','5','1436425281','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('16','2','seller','5','1436425335','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('17','3','buyer','26','1436425363','购买赠送积分26','4');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('18','6','mynine','10','1436465048','注册赠送积分10','1');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('19','6','mynine','5','1436465150','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('20','7','18739376057','10','1436465833','注册赠送积分10','1');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('21','2','seller','5','1436469363','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('22','8','lcat123','10','1436470650','注册赠送积分10','1');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('23','9','bry369','10','1436474835','注册赠送积分10','1');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('24','3','buyer','5','1436493372','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('25','9','bry369','5','1436493964','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('26','9','bry369','5','1436555313','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('27','6','mynine','5','1436649210','登录赠送积分5','2');
INSERT INTO ecm_integral_log ( `integral_id`, `user_id`, `user_name`, `point`, `add_time`, `remark`, `integral_type` ) VALUES  ('28','2','seller','5','1436649246','登录赠送积分5','2');
DROP TABLE IF EXISTS ecm_job;
CREATE TABLE ecm_job (
  job_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  position varchar(100) NOT NULL DEFAULT '' COMMENT '职位',
  count int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所需人数',
  place varchar(60) NOT NULL DEFAULT '' COMMENT '工作地点',
  deal varchar(100) NOT NULL DEFAULT '' COMMENT '待遇',
  add_time int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布日期',
  update_time int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新日期',
  content text COMMENT '详细内容',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (job_id)
) ENGINE=MyISAM;
INSERT INTO ecm_job ( `job_id`, `position`, `count`, `place`, `deal`, `add_time`, `update_time`, `content`, `sort_order` ) VALUES  ('1','平面设计','10','北京','8000','1427280467','1427280467','<div style=\"font-family: simsun; margin: 0px; padding: 0px; color: #333333; line-height: 25px; min-height: 16px;\">\r\n<div style=\"margin: 0px; padding: 0px; min-height: 16px;\"><span style=\"font-family: 宋体;\">1、负责产品图片设计制作，用于京东、淘宝等电商平台销售；</span></div>\r\n<div style=\"margin: 0px; padding: 0px; min-height: 16px;\"><span style=\"font-family: 宋体;\">2、负责产品包装、丝印、说明书、彩页、展架设计；</span></div>\r\n<div style=\"margin: 0px; padding: 0px; min-height: 16px;\"><span style=\"font-family: 宋体;\">3、熟练操作PHOTOSHOP、CorelDRAW、动画制作软件等；</span></div>\r\n<div style=\"margin: 0px; padding: 0px; min-height: 16px;\"><span style=\"font-family: 宋体;\">4、美术专业毕业，从事设计工作3年以上；</span></div>\r\n<div style=\"margin: 0px; padding: 0px; min-height: 16px;\"><span style=\"font-family: 宋体;\">5、有良好的职业道德，工作积极主动；</span></div>\r\n<div style=\"margin: 0px; padding: 0px; min-height: 16px;\"><span style=\"font-family: 宋体;\">6、面试请带上5个以上以前完成的设计作品。</span></div>\r\n</div>\r\n<div style=\"font-family: simsun; margin: 0px; padding: 0px; color: #333333; line-height: 25px; min-height: 16px;\"><span style=\"font-family: 宋体;\"><br /></span></div>\r\n<div style=\"font-family: simsun; margin: 0px; padding: 0px; color: #333333; line-height: 25px; min-height: 16px;\"><span style=\"font-family: 宋体;\">视工作能力，待遇6000-10000元，社保齐全，工作餐补贴。</span></div>','255');
INSERT INTO ecm_job ( `job_id`, `position`, `count`, `place`, `deal`, `add_time`, `update_time`, `content`, `sort_order` ) VALUES  ('2','创意策划','10','北京','8000','1427280490','1427280490','<p><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">工作职责：</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">1、深入分析客户需求，准确把握客户品牌的特性、优势，提炼出适合于活动的与众不同的创意概念</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">2、线下活动的创意构思和方案撰写以及提案</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">&nbsp;</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">岗位要求：</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">1、2年以上的营销策划、公关活动策划经验&nbsp;</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">2、具有广泛的知识、敏锐的洞察力，清晰的思路和独具匠心的创意&nbsp;</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">3、有饱满的工作热情，创意思维活跃及优秀的文字驾驭能力&nbsp;</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">4、良好的语言表达能力</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">5、具备很强的整合传播理念，逻辑思维和PPT表现力，能够完美呈现完整策划案</span><br style=\"color: #333333; font-family: simsun; line-height: 25px;\" /><span style=\"color: #333333; font-family: simsun; line-height: 25px;\">6、良好的沟通能力和积极向上的团队精神，工作沟通配合能力强，有敬业精神，工作积极主动，有奉献精神，心理承受能力强，能适应较大的工作压力。</span></p>','255');
INSERT INTO ecm_job ( `job_id`, `position`, `count`, `place`, `deal`, `add_time`, `update_time`, `content`, `sort_order` ) VALUES  ('3','电子白板销售经理','5','北京','5000','1427280509','1427280509','<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">主要负责普罗米休斯电子白板的销售工作</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">35岁以内，男女不限，<br />统招大专以上学历，<br />熟悉现代教学理念，有丰富的教育行业客户基础。<br />从事电子白板一线销售工作三年以上，能够经常出差.</p>','255');
INSERT INTO ecm_job ( `job_id`, `position`, `count`, `place`, `deal`, `add_time`, `update_time`, `content`, `sort_order` ) VALUES  ('4','市场督导','2','北京','3000','1427280534','1427280534','<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">岗位职责</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">1、根据公司的安排，对相关区域市场进行现场巡查工作；</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">2、对业务的客情关系，配送能力，服务态度等进行调查和反馈；</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">3、发现市场问题并分析市场状况及时沟通汇报要求整改；</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">4、了解市场发展规划，公司下达的政策及营销方针的执行传达；</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">5、按时完成各类报表及上报资料，及领导分配的其他工作。</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">&nbsp;</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">岗位要求</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">1、大专及以上学历，1年以上相关工作经验优先；</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">2、有较强的沟通、协调能力，能承受较大的工作压力和挑战；</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">3、Office软件运用熟练，能适应经常出差；</p>\r\n<p style=\"font-size: 14px; font-family: simsun; margin: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: #333333;\">4、具有良好的口才和沟通能力，较强应变能力。</p>','255');
DROP TABLE IF EXISTS ecm_job_apply;
CREATE TABLE ecm_job_apply (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  job_id int(10) unsigned NOT NULL DEFAULT '0' COMMENT '对应职位',
  `name` varchar(60) NOT NULL DEFAULT '',
  sex tinyint(3) unsigned NOT NULL DEFAULT '0',
  birthday varchar(60) NOT NULL DEFAULT '',
  native_place varchar(60) NOT NULL DEFAULT '' COMMENT '籍贯',
  telephone varchar(60) NOT NULL DEFAULT '',
  zip_code varchar(60) NOT NULL DEFAULT '' COMMENT '邮编',
  email varchar(60) NOT NULL DEFAULT '',
  education varchar(60) NOT NULL DEFAULT '' COMMENT '学历',
  professional varchar(60) NOT NULL DEFAULT '' COMMENT '专业',
  school varchar(60) NOT NULL DEFAULT '',
  address varchar(255) NOT NULL DEFAULT '',
  awards varchar(255) NOT NULL DEFAULT '' COMMENT '所获奖项',
  experience varchar(255) NOT NULL DEFAULT '' COMMENT '工作经历',
  hobbies varchar(255) NOT NULL COMMENT '业余爱好',
  state tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  add_time int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请时间',
  PRIMARY KEY (id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_ju;
CREATE TABLE ecm_ju (
  group_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  template_id int(10) unsigned DEFAULT NULL,
  cate_id int(10) unsigned DEFAULT NULL,
  group_name varchar(255) NOT NULL,
  group_desc text,
  goods_id int(10) unsigned NOT NULL,
  store_id int(10) unsigned NOT NULL,
  spec_price text NOT NULL,
  max_per_user smallint(5) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  status_desc varchar(50) NOT NULL,
  recommend tinyint(3) unsigned NOT NULL,
  views int(10) unsigned NOT NULL,
  image varchar(255) DEFAULT NULL,
  channel tinyint(3) unsigned NOT NULL DEFAULT '1',
  brand_id int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (group_id),
  KEY goods_id (goods_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_ju_brand;
CREATE TABLE ecm_ju_brand (
  brand_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  brand_name varchar(100) NOT NULL DEFAULT '',
  brand_logo varchar(255) DEFAULT NULL,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  recommended tinyint(3) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  if_show tinyint(2) unsigned NOT NULL DEFAULT '1',
  tag varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (brand_id),
  KEY tag (tag)
) ENGINE=MyISAM;
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('1','森马','data/files/mall/ju_brand/1.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('2','OSA','data/files/mall/ju_brand/5.jpg','255','0','0','1','数码家电');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('3','名鞋库','data/files/mall/ju_brand/3.jpg','255','0','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('4','童年时光','data/files/mall/ju_brand/34.jpg','255','0','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('5','周黑鸭','data/files/mall/ju_brand/33.jpg','255','1','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('6','ONLY','data/files/mall/ju_brand/6.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('7','浪莎','data/files/mall/ju_brand/7.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('8','太平鸟','data/files/mall/ju_brand/8.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('9','OSA欧莎','data/files/mall/ju_brand/9.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('10','乐町','data/files/mall/ju_brand/10.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('11','九牧王','data/files/mall/ju_brand/11.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('12','骆驼男装','data/files/mall/ju_brand/12.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('13','秋水伊人','data/files/mall/ju_brand/13.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('14','马克华菲','data/files/mall/ju_brand/14.jpg','255','1','0','1','服装服饰');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('15','如熙','data/files/mall/ju_brand/15.jpg','255','1','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('16','茵曼','data/files/mall/ju_brand/16.jpg','255','1','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('17','李宁','data/files/mall/ju_brand/17.jpg','255','1','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('18','佳钓尼','data/files/mall/ju_brand/18.jpg','255','1','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('19','卓诗尼','data/files/mall/ju_brand/19.jpg','255','1','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('20','奥康','data/files/mall/ju_brand/20.jpg','255','1','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('21','意尔康','data/files/mall/ju_brand/21.jpg','255','0','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('22','丹尼熊','data/files/mall/ju_brand/22.jpg','255','1','0','1','运动鞋包');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('23','SKG','data/files/mall/ju_brand/23.jpg','255','1','0','1','数码家电');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('24','爱斯基摩人','data/files/mall/ju_brand/24.jpg','255','1','0','1','数码家电');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('25','美的','data/files/mall/ju_brand/25.jpg','255','1','0','1','数码家电');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('26','亨氏','data/files/mall/ju_brand/26.jpg','255','0','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('27','贝因美','data/files/mall/ju_brand/27.jpg','255','1','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('28','帮宝适','data/files/mall/ju_brand/28.jpg','255','0','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('29','安耐驰','data/files/mall/ju_brand/29.jpg','255','1','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('30','宝宝金水','data/files/mall/ju_brand/30.jpg','255','1','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('31','山野农夫','data/files/mall/ju_brand/31.jpg','255','0','0','1','母婴百货');
INSERT INTO ecm_ju_brand ( `brand_id`, `brand_name`, `brand_logo`, `sort_order`, `recommended`, `store_id`, `if_show`, `tag` ) VALUES  ('32','苏菲','data/files/mall/ju_brand/32.jpg','255','1','0','1','母婴百货');
DROP TABLE IF EXISTS ecm_ju_cate;
CREATE TABLE ecm_ju_cate (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  cate_name varchar(20) NOT NULL,
  parent_id int(10) unsigned NOT NULL,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  channel tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (cate_id)
) ENGINE=MyISAM;
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('1','商品团','0','1','1','1');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('2','生活汇','0','11','1','5');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('3','休闲','2','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('4','服饰','1','44','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('5','配饰','1','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('6','美食','2','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('7','电影','2','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('8','超市','2','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('9','摄影','2','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('10','门票','2','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('12','鞋包','1','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('13','运动','1','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('16','服饰鞋包','15','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('17','美容百货','15','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('18','母婴孕产','15','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('19','家装家纺','15','255','1',null);
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('20','聚名品','0','255','1','3');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('21','童装专场','20','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('22','饰品专场','20','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('23','家电专场','20','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('24','拉歌蒂尼','20','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('25','聚家装','0','255','1','4');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('26','建材','25','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('27','家具','25','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('28','家纺','25','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('29','家电','25','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('30','旅游团','0','255','1','6');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('31','境内游','30','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('32','境外游','30','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('33','周边游','30','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('34','美妆','1','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('35','食品','1','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('36','母婴','1','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('37','家居','1','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('38','家电','1','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('39','百货','1','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('40','车品','1','255','1','0');
INSERT INTO ecm_ju_cate ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `if_show`, `channel` ) VALUES  ('41','内衣','1','255','1','0');
DROP TABLE IF EXISTS ecm_ju_template;
CREATE TABLE ecm_ju_template (
  template_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  template_name varchar(50) NOT NULL,
  start_time int(10) unsigned NOT NULL,
  join_end_time int(10) unsigned NOT NULL,
  end_time int(10) unsigned NOT NULL,
  state tinyint(1) unsigned NOT NULL,
  channel tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (template_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_kmenus;
CREATE TABLE ecm_kmenus (
  kmenus_id int(10) unsigned NOT NULL,
  stypeinfo tinyint(3) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  stype tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (kmenus_id)
) ENGINE=MyISAM;
INSERT INTO ecm_kmenus ( `kmenus_id`, `stypeinfo`, `status`, `stype` ) VALUES  ('2','1','0','1');
INSERT INTO ecm_kmenus ( `kmenus_id`, `stypeinfo`, `status`, `stype` ) VALUES  ('6','1','0','1');
DROP TABLE IF EXISTS ecm_kmenusinfo;
CREATE TABLE ecm_kmenusinfo (
  kmenusinfo_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  kmenus_id int(10) unsigned NOT NULL DEFAULT '0',
  title varchar(60) NOT NULL DEFAULT '',
  color varchar(20) NOT NULL DEFAULT '',
  loadurl varchar(255) NOT NULL DEFAULT '',
  imgurl varchar(255) NOT NULL DEFAULT '',
  nums tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (kmenusinfo_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_mail_queue;
CREATE TABLE ecm_mail_queue (
  queue_id int(11) unsigned NOT NULL AUTO_INCREMENT,
  mail_to varchar(150) NOT NULL DEFAULT '',
  mail_encoding varchar(50) NOT NULL DEFAULT '',
  mail_subject varchar(255) NOT NULL DEFAULT '',
  mail_body text NOT NULL,
  priority tinyint(1) unsigned NOT NULL DEFAULT '2',
  err_num tinyint(1) unsigned NOT NULL DEFAULT '0',
  add_time int(11) NOT NULL DEFAULT '0',
  lock_expiry int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (queue_id)
) ENGINE=MyISAM;
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('24','bianrongyao@163.com','utf-8','德富测试提醒:您的订单已生成','<p>尊敬的bry369:</p>\r\n<p style=\"padding-left: 30px;\">您在德富测试上下的订单已生成，订单号1519194824。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=9\">http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-11 11:17</p>','1','2','1436555837','1436555921');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('22','bianrongyao@163.com','utf-8','德富测试提醒:您的订单已生成','<p>尊敬的bry369:</p>\r\n<p style=\"padding-left: 30px;\">您在德富测试上下的订单已生成，订单号1519139179。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=8\">http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=8</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-11 11:14</p>','1','3','1436555681','1436555921');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('8','123456@qq.com','utf-8','德富应用提醒:店铺超级店铺已确认收到了您线下支付的货款','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经确认了收到了您的订单1518927660的付款，请耐心等待卖家发货。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://192.168.1.101/all_ecmall/150616/index.php?app=buyer_order&amp;act=view&amp;order_id=2\">http://192.168.1.101/all_ecmall/150616/index.php?app=buyer_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"text-align: right;\">德富应用</p>\r\n<p style=\"text-align: right;\">2015-07-09 15:02</p>','1','2','1436425346','1436469834');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('9','123456@qq.com','utf-8','德富应用提醒:您的订单1518927660已发货','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经给您的订单1518927660发货了，请注意查收。</p>\r\n<p style=\"padding-left: 30px;\">发货单号：1</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://192.168.1.101/all_ecmall/150616/index.php?app=buyer_order&amp;act=view&amp;order_id=2\">http://192.168.1.101/all_ecmall/150616/index.php?app=buyer_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"text-align: right;\">德富应用</p>\r\n<p style=\"text-align: right;\">2015-07-09 15:02</p>','1','3','1436425351','1436471664');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('6','123456@qq.com','utf-8','德富应用提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在德富应用上下的订单已生成，订单号1518927660。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://192.168.1.101/all_ecmall/150616/index.php?app=buyer_order&amp;act=view&amp;order_id=2\">http://192.168.1.101/all_ecmall/150616/index.php?app=buyer_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"text-align: right;\">德富应用</p>\r\n<p style=\"text-align: right;\">2015-07-09 15:02</p>','1','2','1436425325','1436425394');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('7','123456@qq.com','utf-8','德富应用提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1518927660，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://192.168.1.101/all_ecmall/150616/index.php?app=seller_order&amp;act=view&amp;order_id=2\">http://192.168.1.101/all_ecmall/150616/index.php?app=seller_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://192.168.1.101/all_ecmall/150616/index.php?app=seller_order\">http://192.168.1.101/all_ecmall/150616/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富应用</p>\r\n<p style=\"text-align: right;\">2015-07-09 15:02</p>','1','2','1436425325','1436425394');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('21','123456@qq.com','utf-8','德富测试提醒:买家mynine已通过线下支付支付了订单的费用','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">买家mynine已通过线下支付支付了与您交易的订单1519046110。请注意查收。</p>\r\n<p style=\"padding-left: 30px;\">支付信息：fas</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=7\">http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order\">http://ecmall.150616.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-10 12:03</p>','1','3','1436472212','1436555868');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('25','123456@qq.com','utf-8','德富测试提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1519194824，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=9\">http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order\">http://ecmall.150616.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-11 11:17</p>','1','2','1436555837','1436555921');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('26','123456@qq.com','utf-8','德富测试提醒:买家bry369已通过线下支付支付了订单的费用','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">买家bry369已通过线下支付支付了与您交易的订单1519194824。请注意查收。</p>\r\n<p style=\"padding-left: 30px;\">支付信息：货到付款</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=9\">http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order\">http://ecmall.150616.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-11 11:18</p>','1','1','1436555891','1436555921');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('16','123456@qq.com','utf-8','德富测试提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1519044697，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=5\">http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=5</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order\">http://ecmall.150616.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-10 11:40</p>','1','3','1436470821','1436472246');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('17','742088434@qq.com','utf-8','德富测试提醒:您的订单已生成','<p>尊敬的mynine:</p>\r\n<p style=\"padding-left: 30px;\">您在德富测试上下的订单已生成，订单号1519062540。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=6\">http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=6</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-10 11:53</p>','1','3','1436471630','1436472244');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('18','123456@qq.com','utf-8','德富测试提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1519062540，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=6\">http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=6</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order\">http://ecmall.150616.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-10 11:53</p>','1','3','1436471630','1436472244');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('19','742088434@qq.com','utf-8','德富测试提醒:您的订单已生成','<p>尊敬的mynine:</p>\r\n<p style=\"padding-left: 30px;\">您在德富测试上下的订单已生成，订单号1519046110。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=7\">http://ecmall.150616.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-10 12:02</p>','1','3','1436472169','1436555712');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('20','123456@qq.com','utf-8','德富测试提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1519046110，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=7\">http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order\">http://ecmall.150616.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-10 12:02</p>','1','3','1436472169','1436555712');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('23','123456@qq.com','utf-8','德富测试提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1519139179，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=8\">http://ecmall.150616.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=8</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.150616.60data.com/index.php?app=seller_order\">http://ecmall.150616.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">德富测试</p>\r\n<p style=\"text-align: right;\">2015-07-11 11:14</p>','1','3','1436555681','1436555921');
DROP TABLE IF EXISTS ecm_member;
CREATE TABLE ecm_member (
  user_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_name varchar(60) NOT NULL DEFAULT '',
  email varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  real_name varchar(60) DEFAULT NULL,
  buyer_credit_value int(10) NOT NULL DEFAULT '0',
  buyer_praise_rate decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  gender tinyint(3) unsigned NOT NULL DEFAULT '0',
  birthday date DEFAULT NULL,
  phone_tel varchar(60) DEFAULT NULL,
  phone_mob varchar(60) DEFAULT NULL,
  im_qq varchar(60) DEFAULT NULL,
  im_msn varchar(60) DEFAULT NULL,
  im_skype varchar(60) DEFAULT NULL,
  im_yahoo varchar(60) DEFAULT NULL,
  im_aliww varchar(60) DEFAULT NULL,
  reg_time int(10) unsigned DEFAULT '0',
  last_login int(10) unsigned DEFAULT NULL,
  last_ip varchar(15) DEFAULT NULL,
  logins int(10) unsigned NOT NULL DEFAULT '0',
  ugrade tinyint(3) unsigned NOT NULL DEFAULT '1',
  portrait varchar(255) DEFAULT NULL,
  outer_id int(10) unsigned NOT NULL DEFAULT '0',
  activation varchar(60) DEFAULT NULL,
  feed_config text NOT NULL,
  growth int(20) NOT NULL DEFAULT '0',
  lng decimal(12,8) NOT NULL,
  lat decimal(12,8) NOT NULL,
  zoom int(3) NOT NULL,
  integral int(10) NOT NULL DEFAULT '0' COMMENT '可用积分',
  total_integral int(10) NOT NULL DEFAULT '0' COMMENT '总积分',
  referid int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (user_id),
  KEY user_name (user_name),
  KEY email (email),
  KEY outer_id (outer_id)
) ENGINE=MyISAM;
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('1','admin','admin@qq.com','7fef6171469e80d32c0559f88b377245','','0','0.00','0',null,null,null,'','',null,null,null,'1388016632','1436740822','113.246.223.230','87','1','','0',null,'','0','0.00000000','0.00000000','0','0','0','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('2','seller','123456@qq.com','e10adc3949ba59abbe56e057f20f883e','','0','0.00','0','0000-00-00',null,null,'','',null,null,null,'1388031020','1436668455','123.12.104.201','43','2','data/files/mall/portrait/1/2.jpg','0',null,'','50','0.00000000','0.00000000','0','55','55','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('3','buyer','123456@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0','0.00','0',null,null,null,null,null,null,null,null,'1388031042','1436493372','61.163.1.2','67','1',null,'0',null,'','0','0.00000000','0.00000000','0','51','51','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('4','test_1','123456@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0','0.00','0',null,null,null,null,null,null,null,null,'1428027575','1435818939','192.168.1.101','2','1',null,'0',null,'','5','0.00000000','0.00000000','0','15','15','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('5','test_2','123456@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0','0.00','0',null,null,null,null,null,null,null,null,'1428027648','1428027648','192.168.1.101','1','1',null,'0',null,'','5','0.00000000','0.00000000','0','10','10','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('6','mynine','742088434@qq.com','ce0ab1611d510b60f6c03bc971e015ea','','0','0.00','0','0000-00-00',null,'15738008987','','',null,null,null,'1436465048','1436670661','123.12.104.201','16','1','data/files/mall/portrait/1/6.png','0',null,'','5','0.00000000','0.00000000','0','20','20','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('7','18739376057','764557117@qq.com','135734018d6c922c04051d76da93a2ca',null,'0','0.00','0',null,null,'18739376057',null,null,null,null,null,'1436465833','1436465833','123.12.109.100','1','1',null,'0',null,'','5','0.00000000','0.00000000','0','10','10','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('8','lcat123','864824498@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0','0.00','0',null,null,'18236838093',null,null,null,null,null,'1436470650','1436470650','123.12.109.100','1','1',null,'0',null,'','5','0.00000000','0.00000000','0','10','10','0');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `buyer_credit_value`, `buyer_praise_rate`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config`, `growth`, `lng`, `lat`, `zoom`, `integral`, `total_integral`, `referid` ) VALUES  ('9','bry369','bianrongyao@163.com','0b2952b0d93576dd24b49dcb66a9c7d8',null,'0','0.00','0',null,null,'13513911168',null,null,null,null,null,'1436474835','1436555313','1.194.27.141','3','1',null,'0',null,'','5','0.00000000','0.00000000','0','20','20','0');
DROP TABLE IF EXISTS ecm_message;
CREATE TABLE ecm_message (
  msg_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  from_id int(10) unsigned NOT NULL DEFAULT '0',
  to_id int(10) unsigned NOT NULL DEFAULT '0',
  title varchar(100) NOT NULL DEFAULT '',
  content text NOT NULL,
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  last_update int(10) unsigned NOT NULL DEFAULT '0',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (msg_id),
  KEY from_id (from_id),
  KEY to_id (to_id),
  KEY parent_id (parent_id)
) ENGINE=MyISAM;
INSERT INTO ecm_message ( `msg_id`, `from_id`, `to_id`, `title`, `content`, `add_time`, `last_update`, `new`, `parent_id`, `status` ) VALUES  ('1','0','2','','恭喜，您的店铺已开通，赶快来用户中心发布商品吧。','1388031275','1388031275','0','0','3');
DROP TABLE IF EXISTS ecm_mix;
CREATE TABLE ecm_mix (
  mix_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  mix_name varchar(255) NOT NULL DEFAULT '',
  mix_desc varchar(255) NOT NULL DEFAULT '',
  nav_goods_id int(10) unsigned NOT NULL DEFAULT '0',
  nav_goods_name varchar(255) NOT NULL DEFAULT '',
  nav_goods_image varchar(255) NOT NULL DEFAULT '',
  nav_goods_price decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  recommended tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (mix_id),
  KEY goods_id (nav_goods_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_mix ( `mix_id`, `mix_name`, `mix_desc`, `nav_goods_id`, `nav_goods_name`, `nav_goods_image`, `nav_goods_price`, `store_id`, `recommended` ) VALUES  ('2','自由搭配','1221','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','data/files/store_2/goods_110/small_201312262048304586.jpg','8.00','2','0');
DROP TABLE IF EXISTS ecm_mix_goods;
CREATE TABLE ecm_mix_goods (
  mix_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (mix_id,goods_id)
) ENGINE=MyISAM;
INSERT INTO ecm_mix_goods ( `mix_id`, `goods_id`, `sort_order` ) VALUES  ('2','7','255');
INSERT INTO ecm_mix_goods ( `mix_id`, `goods_id`, `sort_order` ) VALUES  ('2','6','255');
INSERT INTO ecm_mix_goods ( `mix_id`, `goods_id`, `sort_order` ) VALUES  ('2','95','255');
INSERT INTO ecm_mix_goods ( `mix_id`, `goods_id`, `sort_order` ) VALUES  ('2','94','255');
INSERT INTO ecm_mix_goods ( `mix_id`, `goods_id`, `sort_order` ) VALUES  ('2','92','255');
INSERT INTO ecm_mix_goods ( `mix_id`, `goods_id`, `sort_order` ) VALUES  ('2','91','255');
INSERT INTO ecm_mix_goods ( `mix_id`, `goods_id`, `sort_order` ) VALUES  ('2','9','255');
DROP TABLE IF EXISTS ecm_module;
CREATE TABLE ecm_module (
  module_id varchar(30) NOT NULL DEFAULT '',
  module_name varchar(100) NOT NULL DEFAULT '',
  module_version varchar(5) NOT NULL DEFAULT '',
  module_desc text NOT NULL,
  module_config text NOT NULL,
  enabled tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (module_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_msg;
CREATE TABLE ecm_msg (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(100) DEFAULT NULL,
  mobile varchar(100) DEFAULT NULL,
  num int(10) unsigned NOT NULL DEFAULT '0',
  functions varchar(255) DEFAULT NULL,
  state tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=MyISAM;
INSERT INTO ecm_msg ( `id`, `user_id`, `user_name`, `mobile`, `num`, `functions`, `state` ) VALUES  ('1','2','seller','13080533286','0','buy,send,check','1');
DROP TABLE IF EXISTS ecm_msglog;
CREATE TABLE ecm_msglog (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(100) DEFAULT NULL,
  to_mobile varchar(100) DEFAULT NULL,
  content text,
  state varchar(100) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT '0',
  `time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM;
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('1','0','admin','15738008987','您的注册验证码是:047149.请不要把验证码泄露给其他人.','1','0','1436464999');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('2','0','admin','18739376057','您的注册验证码是:373859.请不要把验证码泄露给其他人.','1','0','1436465791');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('3','0','admin','18739376057','您的注册验证码是:410672.请不要把验证码泄露给其他人.','1','0','1436466602');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('4','0','admin','18236838093','您的注册验证码是:018798.请不要把验证码泄露给其他人.','1','0','1436470333');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('5','0','admin','18236838093','您的注册验证码是:053535.请不要把验证码泄露给其他人.','1','0','1436470406');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('6','0','admin','18236838093','您的注册验证码是:298908.请不要把验证码泄露给其他人.','1','0','1436470473');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('7','0','admin','18236838093','您的注册验证码是:153482.请不要把验证码泄露给其他人.','1','0','1436470615');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('8','0','admin','18236838093','您的注册验证码是:873316.请不要把验证码泄露给其他人.','1','0','1436471143');
INSERT INTO ecm_msglog ( `id`, `user_id`, `user_name`, `to_mobile`, `content`, `state`, `type`, `time` ) VALUES  ('9','0','admin','13513911168','您的注册验证码是:504507.请不要把验证码泄露给其他人.','1','0','1436474795');
DROP TABLE IF EXISTS ecm_navigation;
CREATE TABLE ecm_navigation (
  nav_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  title varchar(60) NOT NULL DEFAULT '',
  link varchar(255) NOT NULL DEFAULT '',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  open_new tinyint(3) unsigned NOT NULL DEFAULT '0',
  hot tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (nav_id)
) ENGINE=MyISAM;
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('1','middle','手机','index.php?app=channel_phone','2','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('10','middle','店铺街','index.php?app=channel_shop','3','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('3','middle','周边店铺','index.php?app=mapstore&act=address','6','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('4','middle','电器','index.php?app=channel_appliances','1','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('5','middle','服装','index.php?app=channel_clothing','4','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('6','middle','招聘','index.php?app=job','255','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('7','middle','积分','index.php?app=integral','7','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('8','middle','聚划算','index.php?app=ju','5','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('9','middle','优惠卷','index.php?app=coupon','255','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('11','middle','促销','index.php?app=promotion','255','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('12','middle','砸金蛋','index.php?app=egg','255','0','0');
DROP TABLE IF EXISTS ecm_order;
CREATE TABLE ecm_order (
  order_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  order_sn varchar(20) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  extension varchar(10) NOT NULL DEFAULT '',
  seller_id int(10) unsigned NOT NULL DEFAULT '0',
  seller_name varchar(100) DEFAULT NULL,
  buyer_id int(10) unsigned NOT NULL DEFAULT '0',
  buyer_name varchar(100) DEFAULT NULL,
  buyer_email varchar(60) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  payment_id int(10) unsigned DEFAULT NULL,
  payment_name varchar(100) DEFAULT NULL,
  payment_code varchar(20) NOT NULL DEFAULT '',
  out_trade_sn varchar(20) NOT NULL DEFAULT '',
  pay_time int(10) unsigned DEFAULT NULL,
  pay_message varchar(255) NOT NULL DEFAULT '',
  ship_time int(10) unsigned DEFAULT NULL,
  invoice_no varchar(255) DEFAULT NULL,
  finished_time int(10) unsigned NOT NULL DEFAULT '0',
  auto_finished_time int(10) unsigned NOT NULL DEFAULT '0',
  goods_amount decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  discount decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  order_amount decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  evaluation_status tinyint(1) unsigned NOT NULL DEFAULT '0',
  evaluation_time int(10) unsigned NOT NULL DEFAULT '0',
  seller_evaluation_status tinyint(1) unsigned NOT NULL DEFAULT '0',
  seller_evaluation_time int(10) unsigned NOT NULL DEFAULT '0',
  anonymous tinyint(3) unsigned NOT NULL DEFAULT '0',
  postscript varchar(255) NOT NULL DEFAULT '',
  pay_alter tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (order_id),
  KEY order_sn (order_sn,seller_id),
  KEY seller_name (seller_name),
  KEY buyer_name (buyer_name),
  KEY add_time (add_time)
) ENGINE=MyISAM;
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('1','1335948628','material','normal','2','超级店铺','3','buyer','123456@qq.com','40','1388043112','1','支付宝','alipay','1335948628','1406787893','','1406787896','1','1406787910','0','32.00','0.00','32.10','1','1406787918','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('2','1518927660','material','normal','2','超级店铺','3','buyer','123456@qq.com','40','1436425325',null,null,'','','1436425346','','1436425351','1','1436425363','1437721351','2675.70','0.00','2675.80','1','1436425441','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('3','1519057849','material','normal','2','超级店铺','6','mynine','742088434@qq.com','11','1436469800','2','银行汇款','bank','',null,'',null,null,'0','0','688.00','0.00','688.10','0','0','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('4','1519018622','material','normal','2','超级店铺','6','mynine','742088434@qq.com','11','1436470095',null,null,'','',null,'',null,null,'0','0','8.00','0.00','8.10','0','0','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('5','1519044697','material','normal','2','超级店铺','8','lcat123','864824498@qq.com','11','1436470821','2','银行汇款','bank','',null,'',null,null,'0','0','199.00','0.00','199.10','0','0','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('6','1519062540','material','normal','2','超级店铺','6','mynine','742088434@qq.com','11','1436471630','7','资金管理支付宝支付','epayalipay','',null,'',null,null,'0','0','8.00','0.00','8.10','0','0','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('7','1519046110','material','normal','2','超级店铺','6','mynine','742088434@qq.com','11','1436472169','2','银行汇款','bank','',null,'fas',null,null,'0','0','8.00','0.00','8.10','0','0','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('8','1519139179','material','normal','2','超级店铺','9','bry369','bianrongyao@163.com','11','1436555681','8','资金管理微信公众号支付','epaywxjs','',null,'',null,null,'0','0','3.60','0.00','3.70','0','0','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `auto_finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `seller_evaluation_status`, `seller_evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('9','1519194824','material','normal','2','超级店铺','9','bry369','bianrongyao@163.com','11','1436555837','2','银行汇款','bank','',null,'货到付款',null,null,'0','0','3.00','0.00','3.10','0','0','0','0','0','','0');
DROP TABLE IF EXISTS ecm_order_extm;
CREATE TABLE ecm_order_extm (
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  consignee varchar(60) NOT NULL DEFAULT '',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(255) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  zipcode varchar(20) DEFAULT NULL,
  phone_tel varchar(60) DEFAULT NULL,
  phone_mob varchar(60) DEFAULT NULL,
  shipping_id int(10) unsigned DEFAULT NULL,
  shipping_name varchar(100) DEFAULT NULL,
  shipping_fee decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (order_id),
  KEY consignee (consignee)
) ENGINE=MyISAM;
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('1','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('2','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('3','小马','4','中国	北京市	东城','小马','小马','','15738008987','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('4','小马','4','中国	北京市	东城','小马','','','15738008987','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('5','王大锤','282','中国	河南省	濮阳市','清华园','461000','','1593975654','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('6','xiaoma','4','中国	北京市	东城','werqwr','we','','15738008987','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('7','xiaoma','3','中国	北京市','fsadf','fssfa','','15738008987','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('8','边荣耀','282','中国	河南省	濮阳市','长庆路昆濮大厦1320室','','13513911168','13513911168','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('9','边荣耀','282','中国	河南省	濮阳市','长庆路昆濮大厦1320室','','13513911168','13513911168','1','快递','0.10');
DROP TABLE IF EXISTS ecm_order_goods;
CREATE TABLE ecm_order_goods (
  rec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_name varchar(255) NOT NULL DEFAULT '',
  spec_id int(10) unsigned NOT NULL DEFAULT '0',
  specification varchar(255) DEFAULT NULL,
  price decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  quantity int(10) unsigned NOT NULL DEFAULT '1',
  goods_image varchar(255) DEFAULT NULL,
  evaluation tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  credit_value tinyint(1) NOT NULL DEFAULT '0',
  seller_evaluation tinyint(1) unsigned NOT NULL DEFAULT '0',
  seller_comment varchar(255) NOT NULL DEFAULT '',
  seller_credit_value tinyint(1) NOT NULL DEFAULT '0',
  evaluation_desc tinyint(4) NOT NULL DEFAULT '5',
  evaluation_service tinyint(4) NOT NULL DEFAULT '5',
  evaluation_speed tinyint(4) NOT NULL DEFAULT '5',
  is_valid tinyint(1) unsigned NOT NULL DEFAULT '1',
  group_id int(10) unsigned NOT NULL,
  PRIMARY KEY (rec_id),
  KEY order_id (order_id,goods_id)
) ENGINE=MyISAM;
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('1','1','18','沙洲优黄花开富贵480ml/瓶','18','','32.00','1','data/files/store_2/goods_166/small_201312262109269656.jpg','3','1111111111111111111111111111111111111','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('2','2','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','8.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg','3','东西很不错，下次还会来购买。','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('3','2','18','沙洲优黄花开富贵480ml/瓶','18','','32.00','7','data/files/store_2/goods_166/small_201312262109269656.jpg','3','评价沙洲优黄花开富贵480ml/瓶','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('4','2','39','韩国进口小零食 托马斯小火车鳕鱼肠400g','39','','80.00','7','data/files/store_2/goods_139/small_201312262148598688.jpg','3','评价韩国进口小零食 托马斯小火车鳕鱼肠400g','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('5','2','98','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','98','','317.60','1','data/files/store_2/goods_107/small_201312262308271759.jpg','3','评价酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('6','2','5','杰记 新鲜脆甜 高山红苹果','5','','3.00','1','data/files/store_2/goods_99/small_201312262054594117.jpg','3','评价杰记 新鲜脆甜 高山红苹果','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('7','2','6','杰记 进口 新鲜 新西兰 爵士 苹果','6','','32.00','1','data/files/store_2/goods_136/small_201312262055366831.jpg','3','评价杰记 进口 新鲜 新西兰 爵士 苹果','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('8','2','3','海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~','3','','68.00','1','data/files/store_2/goods_148/small_201312262052284448.jpg','3','东西很不错，下次还会来购买。','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('9','2','4','杰记 新鲜脆甜 高山红苹果','4','','69.00','1','data/files/store_2/goods_57/small_201312262054174988.jpg','3','评价杰记 新鲜脆甜 高山红苹果','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('10','2','97','三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','97','','1394.10','1','data/files/store_2/goods_27/small_201312262307078496.jpg','3','评价三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','1','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('11','3','95','HTC 8S（A620t）3G手机TD-SCDMA/GSM','95','','688.00','1','data/files/store_2/goods_134/small_201312262305341913.jpg','0','','0','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('12','4','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','8.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg','0','','0','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('13','5','93','三星(samsung)s5698 3G手机 TD-SCDMA/GSM','93','','199.00','1','data/files/store_2/goods_48/small_201312262304085587.jpg','0','','0','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('14','6','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','8.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg','0','','0','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('15','7','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','8.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg','0','','0','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('16','8','29','银鹭好粥道 黑米杂粮八宝粥280g','29','','3.60','1','data/files/store_2/goods_192/small_201312262136326387.jpg','0','','0','0','','0','5','5','5','1','0');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `seller_evaluation`, `seller_comment`, `seller_credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `is_valid`, `group_id` ) VALUES  ('17','9','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','3.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg','0','','0','0','','0','5','5','5','1','0');
DROP TABLE IF EXISTS ecm_order_log;
CREATE TABLE ecm_order_log (
  log_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  operator varchar(60) NOT NULL DEFAULT '',
  order_status varchar(60) NOT NULL DEFAULT '',
  changed_status varchar(60) NOT NULL DEFAULT '',
  remark varchar(255) DEFAULT NULL,
  log_time int(10) unsigned NOT NULL DEFAULT '0',
  order_log_status tinyint(1) unsigned NOT NULL DEFAULT '0',
  operator_type varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (log_id),
  KEY order_id (order_id)
) ENGINE=MyISAM;
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('1','1','seller','等待买家付款','买家已付款','','1406787893','0','');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('2','1','seller','买家已付款','卖家已发货','1','1406787896','0','');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('3','1','buyer','卖家已发货','交易完成','买家确认收货','1406787910','0','');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('4','2','buyer','','下订单','买家下单','1436425325','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('5','2','seller','等待买家付款','买家已付款','','1436425346','1','seller');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('6','2','seller','买家已付款','卖家已发货','','1436425351','1','seller');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('7','2','buyer','卖家已发货','交易完成','买家确认收货','1436425363','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('8','3','mynine','','下订单','买家下单','1436469801','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('9','4','mynine','','下订单','买家下单','1436470095','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('10','5','lcat123','','下订单','买家下单','1436470821','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('11','6','mynine','','下订单','买家下单','1436471630','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('12','7','mynine','','下订单','买家下单','1436472169','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('13','8','bry369','','下订单','买家下单','1436555681','1','buyer');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time`, `order_log_status`, `operator_type` ) VALUES  ('14','9','bry369','','下订单','买家下单','1436555837','1','buyer');
DROP TABLE IF EXISTS ecm_pageview;
CREATE TABLE ecm_pageview (
  rec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  view_date date NOT NULL DEFAULT '0000-00-00',
  view_times int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (rec_id),
  UNIQUE KEY storedate (store_id,view_date)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_partner;
CREATE TABLE ecm_partner (
  partner_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  title varchar(100) NOT NULL DEFAULT '',
  link varchar(255) NOT NULL DEFAULT '',
  logo varchar(255) DEFAULT NULL,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (partner_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_payment;
CREATE TABLE ecm_payment (
  payment_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  payment_code varchar(20) NOT NULL DEFAULT '',
  payment_name varchar(100) NOT NULL DEFAULT '',
  payment_desc varchar(255) DEFAULT NULL,
  config text,
  is_online tinyint(3) unsigned NOT NULL DEFAULT '1',
  enabled tinyint(3) unsigned NOT NULL DEFAULT '1',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (payment_id),
  KEY store_id (store_id),
  KEY payment_code (payment_code)
) ENGINE=MyISAM;
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('2','2','bank','银行汇款','','','0','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('3','0','epay','站内余额支付','余额支付',null,'0','1','1');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('4','6','cod','货到付款','','','0','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('5','6','epayalipay','资金管理支付宝支付','','a:1:{s:5:\"pcode\";s:0:\"\";}','1','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('6','2','cod','货到付款','','','0','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('7','2','epayalipay','资金管理支付宝支付','','a:1:{s:5:\"pcode\";s:0:\"\";}','1','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('8','2','epaywxjs','资金管理微信公众号支付','','a:1:{s:5:\"pcode\";s:0:\"\";}','1','1','0');
DROP TABLE IF EXISTS ecm_privilege;
CREATE TABLE ecm_privilege (
  priv_code varchar(20) NOT NULL DEFAULT '',
  priv_name varchar(60) NOT NULL DEFAULT '',
  parent_code varchar(20) DEFAULT NULL,
  `owner` varchar(10) NOT NULL DEFAULT 'mall',
  PRIMARY KEY (priv_code)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_promotion;
CREATE TABLE ecm_promotion (
  pro_id int(11) NOT NULL AUTO_INCREMENT,
  goods_id int(11) NOT NULL,
  pro_name varchar(50) NOT NULL,
  pro_desc varchar(255) NOT NULL,
  start_time int(11) NOT NULL,
  end_time int(11) NOT NULL,
  store_id int(11) NOT NULL,
  spec_price text NOT NULL,
  PRIMARY KEY (pro_id)
) ENGINE=MyISAM;
INSERT INTO ecm_promotion ( `pro_id`, `goods_id`, `pro_name`, `pro_desc`, `start_time`, `end_time`, `store_id`, `spec_price` ) VALUES  ('1','98','新年大促销','迎接新年','1424851867','1542758399','2','a:1:{i:98;a:3:{s:5:\"price\";s:1:\"2\";s:8:\"pro_type\";s:8:\"discount\";s:6:\"is_pro\";i:1;}}');
INSERT INTO ecm_promotion ( `pro_id`, `goods_id`, `pro_name`, `pro_desc`, `start_time`, `end_time`, `store_id`, `spec_price` ) VALUES  ('2','5','元旦促销','元旦促销','1436493739','1436601599','2','a:1:{i:5;a:3:{s:5:\"price\";s:1:\"3\";s:8:\"pro_type\";s:8:\"discount\";s:6:\"is_pro\";i:1;}}');
INSERT INTO ecm_promotion ( `pro_id`, `goods_id`, `pro_name`, `pro_desc`, `start_time`, `end_time`, `store_id`, `spec_price` ) VALUES  ('3','1','miaosha','fasdf ','1436493818','1436601599','2','a:1:{i:1;a:3:{s:5:\"price\";s:1:\"5\";s:8:\"pro_type\";s:5:\"price\";s:6:\"is_pro\";i:1;}}');
DROP TABLE IF EXISTS ecm_recommend;
CREATE TABLE ecm_recommend (
  recom_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  recom_name varchar(100) NOT NULL DEFAULT '',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (recom_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_recommend ( `recom_id`, `recom_name`, `store_id` ) VALUES  ('1','果蔬','0');
INSERT INTO ecm_recommend ( `recom_id`, `recom_name`, `store_id` ) VALUES  ('2','酒水','0');
DROP TABLE IF EXISTS ecm_recommended_goods;
CREATE TABLE ecm_recommended_goods (
  recom_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (recom_id,goods_id)
) ENGINE=MyISAM;
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','27','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','26','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','25','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','24','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','23','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','22','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','21','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','20','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','19','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','18','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','17','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','16','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','15','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','14','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','13','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','12','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','11','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','10','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','9','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','8','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','7','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','6','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','5','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','4','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','3','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','2','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','1','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','99','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','98','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','97','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','96','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','95','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','94','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','93','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','92','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','91','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','90','255');
DROP TABLE IF EXISTS ecm_refund;
CREATE TABLE ecm_refund (
  refund_id int(11) NOT NULL AUTO_INCREMENT,
  refund_sn varchar(50) NOT NULL,
  order_id int(10) NOT NULL,
  goods_id int(10) NOT NULL,
  spec_id int(10) NOT NULL,
  refund_reason varchar(50) NOT NULL,
  refund_desc varchar(255) NOT NULL,
  total_fee decimal(10,2) NOT NULL,
  goods_fee decimal(10,2) NOT NULL,
  shipping_fee decimal(10,2) NOT NULL,
  refund_goods_fee decimal(10,2) NOT NULL,
  refund_shipping_fee decimal(10,2) NOT NULL,
  buyer_id int(10) NOT NULL,
  seller_id int(10) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '',
  shipped int(11) NOT NULL,
  ask_customer int(1) NOT NULL DEFAULT '0',
  created int(11) NOT NULL,
  end_time int(11) NOT NULL,
  PRIMARY KEY (refund_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_refund_message;
CREATE TABLE ecm_refund_message (
  rm_id int(11) NOT NULL AUTO_INCREMENT,
  owner_id int(11) NOT NULL,
  owner_role varchar(10) NOT NULL,
  refund_id int(11) NOT NULL,
  content varchar(255) DEFAULT NULL,
  pic_url varchar(255) DEFAULT NULL,
  created int(11) NOT NULL,
  PRIMARY KEY (rm_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_region;
CREATE TABLE ecm_region (
  region_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  region_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (region_id),
  KEY parent_id (parent_id)
) ENGINE=MyISAM;
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2','中国','0','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3','北京市','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('4','东城','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('5','西城','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('6','崇文','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('7','宣武','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('8','朝阳','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('9','海淀','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('10','丰台','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('11','石景山','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('12','门头沟','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('13','房山','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('14','通州','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('15','顺义','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('16','大兴','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('17','昌平','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('18','平谷','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('19','怀柔','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('20','延庆','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('21','密云','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('22','天津市','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('23','和平区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('24','河东区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('25','河西区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('26','南开区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('27','河北区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('28','红桥区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('29','塘沽区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('30','汉沽区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('31','大港区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('32','西青区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('33','东丽区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('34','津南区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('35','北辰区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('36','武清区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('37','宝坻区','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('38','静海县','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('39','宁河县','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('40','蓟县','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('41','上海市','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('42','浦东新区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('43','徐汇区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('44','长宁区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('45','普陀区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('46','闸北区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('47','虹口区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('48','杨浦区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('49','黄浦区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('50','卢湾区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('51','静安区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('52','宝山区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('53','闵行区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('54','嘉定区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('55','金山区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('56','松江区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('57','青浦区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('58','崇明县','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('59','奉贤区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('60','南汇区','41','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('61','重庆市','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('62','渝中','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('63','大渡口','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('64','江北','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('65','沙坪坝','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('66','九龙坡','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('67','南岸','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('68','北碚','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('69','渝北','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('70','巴南','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('71','北部新区','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('72','经开区','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('73','万盛','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('74','双桥','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('75','綦江','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('76','潼南','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('77','铜梁','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('78','大足','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('79','荣昌','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('80','璧山','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('81','江津','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('82','合川','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('83','永川','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('84','南川','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('85','万州','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('86','涪陵','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('87','黔江','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('88','长寿','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('89','梁平','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('90','城口','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('91','丰都','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('92','垫江','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('93','武隆','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('94','忠县','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('95','开县','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('96','云阳','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('97','奉节','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('98','巫山','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('99','巫溪','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('100','石柱','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('101','秀山','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('102','酉阳','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('103','彭水','61','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('104','河北省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('105','石家庄','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('106','衡水','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('107','唐山','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('108','秦皇岛','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('109','张家口','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('110','承德','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('111','邯郸','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('112','沧州','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('113','邢台','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('114','保定','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('115','廊坊','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('116','山西省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('117','太原市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('118','大同市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('119','朔州市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('120','忻州市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('121','长治市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('122','阳泉市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('123','晋中市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('124','吕梁市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('125','晋城市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('126','临汾市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('127','运城市','116','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('128','辽宁省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('129','沈阳','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('130','大连','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('131','鞍山','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('132','抚顺','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('133','本溪','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('134','丹东','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('135','锦州','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('136','营口','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('137','阜新','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('138','辽阳','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('139','铁岭','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('140','朝阳','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('141','盘锦','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('142','葫芦岛','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('143','吉林省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('144','长春市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('145','吉林市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('146','四平市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('147','辽源市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('148','通化市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('149','白山市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('150','松原市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('151','白城市','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('152','延边州','143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('153','黑龙江省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('154','哈尔滨','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('155','齐齐哈尔','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('156','牡丹江','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('157','佳木斯','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('158','大庆','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('159','鸡西','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('160','伊春','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('161','双鸭山','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('162','七台河','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('163','鹤岗','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('164','黑河','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('165','绥化','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('166','大兴安岭','153','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('167','内蒙古自治区','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('168','呼和浩特市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('169','包头市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('170','乌海市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('171','赤峰市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('172','通辽市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('173','鄂尔多斯市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('174','呼伦贝尔市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('175','巴彦淖尔市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('176','乌兰察布市','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('177','锡林郭勒盟','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('178','兴安盟','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('179','阿拉善盟','167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('180','江苏省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('181','南京','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('182','苏州','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('183','无锡','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('184','常州','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('185','扬州','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('186','南通','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('187','镇江','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('188','泰州','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('189','淮安','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('190','徐州','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('191','盐城','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('192','宿迁','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('193','连云港','180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('194','浙江省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('195','杭州','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('196','宁波','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('197','温州','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('198','嘉兴','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('199','湖州','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('200','绍兴','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('201','金华','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('202','衢州','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('203','舟山','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('204','台州','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('205','丽水','194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('206','安徽省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('207','淮北市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('208','合肥市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('209','六安市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('210','亳州市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('211','宿州市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('212','阜阳市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('213','蚌埠市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('214','淮南市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('215','滁州市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('216','巢湖市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('217','芜湖市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('218','马鞍山','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('219','安庆市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('220','池州市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('221','铜陵市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('222','宣城市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('223','黄山市','206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('224','福建省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('225','福州市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('226','厦门市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('227','莆田市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('228','三明市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('229','泉州市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('230','漳州市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('231','南平市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('232','龙岩市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('233','宁德市','224','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('234','江西省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('235','南昌市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('236','景德镇市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('237','萍乡市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('238','九江市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('239','新余市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('240','鹰潭市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('241','赣州市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('242','吉安市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('243','宜春市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('244','抚州市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('245','上饶市','234','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('246','山东省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('247','济南','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('248','青岛','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('249','淄博','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('250','泰安','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('251','济宁','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('252','德州','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('253','日照','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('254','潍坊','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('255','枣庄','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('256','临沂','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('257','莱芜','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('258','滨州','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('259','聊城','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('260','菏泽','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('261','烟台','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('262','威海','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('263','东营','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('264','河南省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('265','郑州市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('266','洛阳市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('267','开封市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('268','平顶山市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('269','南阳市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('270','焦作市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('271','信阳市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('272','济源市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('273','周口市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('274','安阳市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('275','驻马店市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('276','新乡市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('277','鹤壁市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('278','商丘市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('279','漯河市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('280','许昌市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('281','三门峡市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('282','濮阳市','264','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('283','湖北省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('284','武汉','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('285','宜昌','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('286','荆州','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('287','十堰','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('288','襄樊','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('289','黄石','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('290','黄冈','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('291','恩施','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('292','荆门','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('293','咸宁','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('294','孝感','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('295','鄂州','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('296','天门','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('297','仙桃','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('298','随州','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('299','潜江','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('300','神农架','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('301','湖南省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('302','长沙市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('303','株洲市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('304','湘潭市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('305','邵阳市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('306','吉首市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('307','岳阳市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('308','娄底市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('309','怀化市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('310','永州市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('311','郴州市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('312','常德市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('313','衡阳市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('314','益阳市','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('315','张家界','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('316','湘西州','301','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('317','广东省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('318','广州','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('319','深圳','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('320','珠海','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('321','汕头','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('322','佛山','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('323','东莞','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('324','中山','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('325','江门','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('326','惠州','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('327','肇庆','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('328','阳江','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('329','韶关','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('330','河源','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('331','梅州','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('332','清远','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('333','云浮','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('334','茂名','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('335','汕尾','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('336','揭阳','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('337','潮州','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('338','湛江','317','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('339','海南省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('340','海口市','339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('341','三亚市','339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('342','广西壮族自治区','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('343','南宁','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('344','柳州','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('345','桂林','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('346','梧州','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('347','北海','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('348','防城港','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('349','钦州','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('350','贵港','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('351','玉林','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('352','百色','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('353','贺州','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('354','河池','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('355','来宾','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('356','崇左','342','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('357','四川省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('358','成都','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('359','自贡','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('360','攀枝花','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('361','泸州','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('362','德阳','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('363','绵阳','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('364','广元','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('365','遂宁','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('366','内江','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('367','资阳','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('368','乐山','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('369','眉山','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('370','南充','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('371','宜宾','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('372','广安','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('373','达州','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('374','巴中','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('375','雅安','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('376','阿坝','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('377','甘孜','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('378','凉山','357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('379','贵州省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('380','贵阳市','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('381','遵义市','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('382','安顺市','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('383','六盘水市','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('384','毕节地区','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('385','铜仁地区','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('386','黔东南州','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('387','黔南州','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('388','黔西南州','379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('389','云南省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('390','昆明市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('391','曲靖市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('392','红河哈尼族彝族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('393','昭通市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('394','玉溪市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('395','德宏傣族景颇族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('396','丽江市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('397','迪庆藏族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('398','文山壮族苗族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('399','思茅市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('400','大理白族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('401','怒江傈僳族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('402','保山市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('403','楚雄彝族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('404','西双版纳傣族自治州','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('405','临沧市','389','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('406','西藏自治区','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('407','拉萨','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('408','日喀则','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('409','林芝','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('410','山南','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('411','那曲','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('412','昌都','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('413','阿里','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('414','陕西省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('415','西安市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('416','铜川市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('417','宝鸡市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('418','咸阳市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('419','渭南市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('420','延安市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('421','汉中市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('422','榆林市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('423','安康市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('424','商洛市','414','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('425','甘肃省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('426','兰州市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('427','嘉峪关','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('428','金昌市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('429','白银市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('430','天水市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('431','酒泉市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('432','张掖市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('433','武威市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('434','定西市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('435','陇南市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('436','平凉市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('437','庆阳市','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('438','临夏州','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('439','甘南州','425','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('440','青海省','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('441','西宁市','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('442','海东行署','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('443','海北藏族自治州','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('444','海南藏族自治州','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('445','海西州','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('446','黄南藏族自治州','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('447','玉树藏族自治州','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('448','果洛藏族自治州','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('449','宁夏回族自治区','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('450','银川市','449','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('451','石嘴山市','449','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('452','吴忠市','449','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('453','固原市','449','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('454','中卫市','449','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('455','新疆维吾尔自治区','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('456','伊犁哈萨克自治州','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('457','乌鲁木齐市','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('458','昌吉回族自治州','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('459','石河子市','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('460','克拉玛依市','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('461','阿勒泰地区','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('462','博尔塔拉蒙古自治州','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('463','塔城地区','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('464','和田地区','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('465','克孜勒苏克尔克孜自治州','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('466','喀什地区','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('467','阿克苏地区','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('468','巴音郭楞蒙古自治州','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('469','吐鲁番地区','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('470','哈密地区','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('471','五家渠市','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('472','阿拉尔市','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('473','图木舒克市','455','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('474','香港特别行政区','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('475','澳门特别行政区','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('476','台湾省','2','255');
DROP TABLE IF EXISTS ecm_scategory;
CREATE TABLE ecm_scategory (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  cate_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (cate_id),
  KEY parent_id (parent_id)
) ENGINE=MyISAM;
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('1','进口商品','0','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('2','进口牛奶','1','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('3','进口母婴用品','1','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('4','进口零食','1','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('5','进口冲调保健','1','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('6','进口个人护理','1','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('7','食品饮料','0','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('8','牛奶乳品','7','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('9','坚果炒货','7','255');
INSERT INTO ecm_scategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order` ) VALUES  ('10','酒类','7','255');
DROP TABLE IF EXISTS ecm_sdcategory;
CREATE TABLE ecm_sdcategory (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  cate_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (cate_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_sdinfo;
CREATE TABLE ecm_sdinfo (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL,
  cate_id int(10) NOT NULL,
  cate_name varchar(100) NOT NULL,
  title varchar(100) NOT NULL,
  content text NOT NULL,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  verify tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  phone varchar(20) NOT NULL,
  price decimal(10,2) DEFAULT NULL,
  add_time int(10) unsigned NOT NULL,
  price_from decimal(10,2) NOT NULL,
  price_to decimal(10,2) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  images varchar(255) DEFAULT NULL,
  verify_desc varchar(100) NOT NULL,
  region_id int(10) unsigned NOT NULL,
  region_name varchar(100) NOT NULL,
  views int(10) unsigned NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_sessions;
CREATE TABLE ecm_sessions (
  sesskey char(32) NOT NULL DEFAULT '',
  expiry int(11) NOT NULL DEFAULT '0',
  userid int(11) NOT NULL DEFAULT '0',
  adminid int(11) NOT NULL DEFAULT '0',
  ip char(15) NOT NULL DEFAULT '',
  `data` char(255) NOT NULL DEFAULT '',
  is_overflow tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (sesskey),
  KEY expiry (expiry)
) ENGINE=MyISAM;
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b42af832090c0ba36c4e6a1353c9c8d2','1436675836','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('817ace8bd65684656cbdc2f75c166427','1436675969','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('072edd8397bda5339a40147cef0bd687','1436675964','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('abfef15ffb5d855acdbb4f36d0621549','1436675871','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('45c5e8a623eb5d93d387961fc7db2891','1436675980','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('64521a6607f077ca8f15446535284393','1436675826','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8d7d672203270bd02c1d9afe8af81969','1436675942','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bc432ee7659d20b4c6464c0553c131fa','1436675947','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9e145d2b929f47f7f5d839d57c3960f2','1436675841','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fa74064f022996817c68cf386288b610','1436675809','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a892b80489604c02c50426ec61ca8d46','1436675804','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7e20febdc475ddc5d2bfc9e92205c903','1436675937','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('788c27773a39991cf83ac4e18e0861ff','1436675922','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fcd4ad08631a1902cea20c20d64653b2','1436675917','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('292608a16b4b42cad85409091fcdb713','1436675814','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('309e397c8f09bf9f9d546c9c317befa7','1436675932','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fef218df7ed84d594f691a7ab255a15f','1436675896','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6d04af5987d62caec8f48e310c1b80e1','1436675912','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0dc3606f85460ac284ab4f0104a2023f','1436675907','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('29b2db2d625e7536a2abdca29dd4c0d0','1436675876','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a845bcd1d36f442d4513d2b0fc016aa6','1436675866','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d946e0fd9148622b586ba99c4b78007b','1436675862','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fc49c6c3d4c263fa7aa4dc292cecdeae','1436675856','0','0','180.153.206.21','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('781696312ff77a531c3c501b7b81d700','1436675881','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('570dbf0cce85d2eb371e98c0442619bd','1436675851','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3fe3be4b95ccb14d4b552c9a14da9cc8','1436675783','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e7fdb6e2fb13a70687e77170dd6069ab','1436675798','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d95ffe84b6d9c118efed3b9ab7d4dfb6','1436675788','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bd459cf93342c813ac958bf3565af4e0','1436675762','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f08a636c58abb799786f65d9ab9dd3e5','1436675778','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4722114d7ae097c30642c59cb03f163b','1436675731','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('50a04a18ea9a0a20c662ed40aa800068','1436675731','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c7a76500b0a879d414ffabc703962c3f','1436675751','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('49654dce99e663f7280f8ea2e3615e22','1436675726','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('dc3410a3d569eb76a861814f0c2e9502','1436675746','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('762695f1616df92d0b95e95e322d79b4','1436675721','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c5d5098029e3e8e1dbba83c2da7e487e','1436675741','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e426d6397009cbe8d8ea08f3cd5ae4e9','1436676948','0','0','101.226.66.192','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e12d236fc6d69ae5fbce3e4c94abb500','1436675711','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('894f05f094f0f02e9b2978d4b844c768','1436675706','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f61df0c07a1f2008a024e63e42efaa2a','1436675706','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('284df6f9b2357e187a482ef577e97e08','1436675701','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('42f470724c05f496f85a47888f2cd6ed','1436675701','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3922e180896916e933e6f8d6624eaf82','1436675696','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a5369e392ef79d57dc427520b9e594a8','1436675696','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e607d323d29194bb6f3e593cb1cd8da1','1436675716','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b1cc5a47d220d7929a195fd4b9739409','1436675691','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('72ba8c9ce2b12b76023754dd455a956b','1436675686','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1d0bd6bbcdfe7a09c66d965eda13a3ab','1436675686','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0da38ad0a104b5ddbb27b3459b937ded','1436668831','0','0','123.12.104.201','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a4c1e0ddeb679b19a80e0fd8a389d460','1436675681','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('992a3f4eae73edbc3fac884d081f316b','1436668808','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5d2826a3fb876fbb3f0a521fef7f9426','1436675681','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fc9cdb9609560fa942ac743c41b82dec','1436675676','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('db18764ab157209cf848b41722e347a2','1436675676','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('de9b187e5e90c0d8b22d43b49bdcc21c','1436675671','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1d36d1b2bd821a228c68113c2ad3fe44','1436676167','0','0','123.12.104.201','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1efe6aff889a2015aa41c3098896ee09','1436675474','0','0','180.153.206.13','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bcb1cbeb546fd97bc57606922727709f','1436675367','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('501ea82ea32df9a34f0dfc3f56f4f1c7','1436675354','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('99b7735017f7250e6d0f0917a7e3b1c7','1436675351','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f170839050f098d4f2d5501c74e3c67d','1436675330','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7d64e64ebb8261aa96b61a09e0d16d8c','1436675327','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('04ba814c70612913a778845c20dd1b61','1436675326','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a54a3d2f976545959606adcf6318f69e','1436675216','0','0','112.64.235.247','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('81ae544b62077e526a23be01941cab89','1436675146','0','0','101.226.33.226','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4fe0f36b0d5418440cb4c0f28c32f323','1436726808','0','0','180.153.211.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6f293d2be7030bd16df503fa10561f9b','1436731998','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5b7c759a43512e7c3d0bb7f18c011b22','1436674878','0','0','101.226.66.187','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('32c990a68782e1028428e0a3d9a78318','1436743328','0','0','113.246.223.230','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1436740732\";s:7:\"last_ip\";s:13:\"171.14.158.54\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('34189debf1ada0ce601d176e45a1cd2a','1436735376','0','0','171.14.158.54','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f1be12e54f8a2f95e0210b8b3ec7c1c9','1436731903','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7b77f30f2a48e2e8750f4d743e5f1d18','1436733114','0','0','113.246.223.230','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('56f89ff314983eaa88e4fb0f51307c69','1436726026','0','0','113.246.223.230','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('73e88d3d48b3600da82ac932456e778f','1436725450','0','0','183.60.70.29','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('40e2ed8b66f40303f8cc44e33a392940','1436674749','0','0','180.153.214.192','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b949ca47eb68a64560f35385d2453aac','1436725190','0','0','183.60.70.29','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d8307edd648dd2263da61979cc702ef2','1436674370','0','0','101.226.66.172','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b11dd3726a94d0f43fc360db2dfa95b1','1436674325','0','0','101.226.66.180','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d9c7126edd46932b1192b090175e97be','1436674078','0','0','180.153.214.198','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3cc2c9f421032dde45c809d18c1236e7','1436674028','0','0','180.153.206.17','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('060529d0aa8cba7d160b24afc39254bf','1436673870','0','0','101.226.66.180','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3ff2fa89476de646f25b93b1ab11ea3c','1436673859','0','0','180.153.163.191','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('39a8f9dcdea191880a9ff3d1531ea291','1436673838','0','0','101.226.89.115','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5be35ef0a53be2d0e1e9a6edd1d69ae1','1436669668','0','0','180.153.214.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1959594963e519cface84061e56f64c3','1436732292','0','0','113.246.223.230','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('eda076c30e5c6b02bfe1b06bbbe84f9b','1436723143','0','0','180.153.211.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a2a04c5acb3622d84767c7969886c916','1436722981','0','0','101.226.33.237','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('03db9f7d6cbd6c29e31af669d2ed86af','1436743188','0','0','123.4.22.248','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1fa9340ccbb3b614c4f292750c657bac','1436686775','0','0','123.52.208.205','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('868a80c6412b1c2bef5a70592128c27d','1436679732','0','0','123.52.208.205','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2649a4a777c1f0e1619ff8054e4b9856','1436679204','0','0','101.199.108.55','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4494ce32c29fd53b0cd308bfaf9bce7b','1436679156','0','0','220.181.132.219','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e3726898422673a8310dcb577cf0565f','1436675770','0','0','113.246.223.230','lat|s:11:\"28.21347823\";lng|s:12:\"112.97935279\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5f12679922ce7206b65f37c346cdede2','1436669253','0','0','180.153.214.191','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1c290eb6fd9106ce1fce3cd28c898acf','1436669206','0','0','112.64.235.247','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('87c255f9e34021eaa30dc270a50a503a','1436669179','0','0','180.153.214.180','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6e16342b1c3a34c6468831cd0f66f5f7','1436675314','0','0','123.12.104.201','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";state|s:32:\"874cfa22a5b36dca255a1af4a7a2e914\";member_role|s:12:\"seller_admin\";super_user_id|i:0;','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b99e709302181f7d41fbf61034e1c40e','1436668634','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c98705f093460a885429a8da400e480b','1436668629','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ecf30058fdb5bb65a177acc520bd5343','1436668618','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7e0cb5e5527d12c4619aeccb0a4c4d3a','1436668613','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ad990955182c372508860210d8f739ff','1436668609','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b096740a14b883b0058f0e78f33ad96f','1436668606','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0765a2ccf70124e859eb5d470069bac0','1436668606','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2ac7004751b576e4dc13aee1cf43da51','1436668606','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fb15a1887b3a2a9802cda69cd1b21db8','1436668588','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('dc8bef4e566a5346603e9208885b60ee','1436668584','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('55ce7aa609269f1f6369fceebccee4fe','1436668582','0','0','101.226.65.102','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a5f1ecbc32ac165f6ba81859d26cc401','1436668578','0','0','123.4.21.145','user_info|a:6:{s:7:\"user_id\";s:1:\"6\";s:9:\"user_name\";s:6:\"mynine\";s:8:\"reg_time\";s:10:\"1436465048\";s:10:\"last_login\";s:10:\"1436649210\";s:7:\"last_ip\";s:14:\"123.12.104.201\";s:8:\"store_id\";s:1:\"6\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a46fda19ddfa59852d95a49849d0946d','1436668528','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f9afd27433296872b1e132ac39c8c0d8','1436668527','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('cef19a09cff7e073de4493b9ea436afd','1436668485','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5ee22fd30396c7e8fb4d4dabcfbf3783','1436668484','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6ac6c533eee0ac5d553b777074da811e','1436668464','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6754263b38c07de9def6887e47d6dfc8','1436668442','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e5e594e445b68bb145e0961131488fd7','1436668439','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c416467f7d314c783b794f7269c59922','1436668798','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d3606c5181dace72e75000213d50a07a','1436668394','0','0','101.226.65.108','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c0e6f518b6b90c9d0f275e97dad605e3','1436668793','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('18f48af7bd011afdbfe27b90f8d1068c','1436668788','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('66262092f7513b32544da2ad6c2cc2f3','1436668783','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4dba421f6b9281e4d7c7c938397857e8','1436668778','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bbeed61df47d04c9f3da81fb5fe53ebd','1436668773','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7d1e0f0e936ca5061cfff95b01f40e9d','1436668768','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d51258b221eec886ee32d828bd421a9e','1436668758','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e29216885deb2670549e2d7acd38e695','1436668748','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3730bc0d4f78d22b20385643bf6fcf84','1436668744','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8461a8f513fbccf4540cb7957e76bbc8','1436668739','0','0','115.53.10.132','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f5e3e932a579b3ff54e50acec0fa7edb','1436668733','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e0b5a8854e5ee0f4de9bdcd1e0d2983c','1436668723','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d7606a589f19be8a2b4dde05585684b5','1436668718','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0337f733a1c387eaee49ffa1ee7e85ff','1436668697','0','0','180.153.206.32','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('784deb9f43354862d6a07c78234cbd39','1436668703','0','0','61.163.1.2','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ee8f32043e338389a8a0dfffb42c58e5','1436668688','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9c29afe87f1fc45f5a9038cbd414101f','1436668678','0','0','115.53.10.143','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a0e3c20abc7e8b97c76182e7354a5b7e','1436668668','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2fbe49274afdbfaa510e16757fe0ae90','1436668653','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9f3397f91ee408d8318e85953b4dbdcf','1436668649','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9bba984a66540dbed42546422543b9f4','1436668392','0','0','101.226.33.202','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a14c68592410748c5dabfa9f0d887dcb','1436668391','0','0','180.153.206.26','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fddee15123fa5429d8a5bc94a1002557','1436675975','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d7ce24940867bea9ef1faa5c4633351d','1436675953','0','0','123.4.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2ab4f62cd39070195a4075e073eee744','1436676287','0','0','180.153.201.216','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('02173ab55b59cce3d56001efb1bc36cd','1436677731','0','0','180.153.201.216','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c85f50582838701bf822fe0e1beab379','1436677731','0','0','180.153.201.216','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('95d823b3ac0e20fb10eea5e666842042','1436668374','0','0','112.64.235.90','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('880318875742a392b1f8778dc335200c','1436669996','0','0','113.108.80.206','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a66312cd691c2f09d75af18bd1576dad','1436669984','0','0','203.171.224.85','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a669f66f1b53d95eac6930cb19466fab','1436669999','0','0','14.17.34.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('067d4e67bcde507f7a940d7fbafe7a25','1436669999','0','0','14.17.34.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('036c6230b3486983014b91dab61337f1','1436669999','0','0','14.17.34.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ae45b3d68887df311646c7a0e1bed050','1436670029','0','0','180.153.163.191','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4800af3856ef760c3df52dfb401e2ed1','1436670141','0','0','119.147.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c2cbebeed3dd82a9f7b8369937581884','1436670141','0','0','183.60.15.20','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('29458746a123be3512acb6c55d628d23','1436668399','0','0','123.12.104.201','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f73f2731b32e491c92630e4be5eca349','1436670141','0','0','119.147.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('beb24700f2966006240e3ed0fa11d5c4','1436670141','0','0','119.147.21.145','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9d4172ebff07d0ebb3161ce9e7eca7a1','1436675654','0','0','123.12.104.201','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('36f4bee521cd6b43387d3a8f8b574b30','1436672068','0','0','101.226.65.107','state|s:32:\"84d9c6748891dca19abb101babd039ca\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7999fa1197d663fda3b8460586a2e947','1436671369','0','0','180.153.214.199','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('71663c373611562b2c316bde4fb234d5','1436671353','0','0','101.226.89.120','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5a6e9f4f5ef0e3a828bef6eba90068ae','1436671214','0','0','180.153.206.31','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f002f82f3feffbc929b7aa69cd070b87','1436670926','0','0','180.153.214.191','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bd85f2bb6e8585a58f37c46a7980c356','1436675476','0','0','123.12.104.201','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c0373379432528f4c1638f031aa8734a','1436670304','0','0','180.153.214.180','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('16749390cde93cf2924c1febee3b643e','1436670189','0','0','123.12.104.201','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2a99efac146ebfb44873e8b875178922','1436672223','0','0','112.64.235.86','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f5fa429805bbcfe76a31ca5b8a5430f5','1436675831','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('389720dcea6eb77f7f14afafff41d883','1436672216','0','0','180.153.206.37','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3b92e3bc72d778d2b474129aa071d54c','1436672213','0','0','101.226.89.119','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a38d2b97b6b68a60f9932e746847c14e','1436672143','0','0','112.65.193.15','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f2f21f76d6211c05fc85b60c5d4f5f4d','1436672248','0','0','180.153.206.17','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('dd3d359db16b1e0770a890558f6988cc','1436673057','0','0','101.226.33.226','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4f094694b3ab6442ae56f80d11b1f0e6','1436673054','0','0','101.226.66.187','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('819a614ad5c79fb10965503bb2810206','1436672989','0','0','180.153.214.198','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a752dab99644926ad91b23afe73c9af9','1436673070','0','0','101.226.66.179','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b5d032e6f7d1587cd603f3e5fed49ade','1436673072','0','0','180.153.206.21','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('74b1195b2778096bd387794e4353daea','1436673193','0','0','101.226.66.172','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('adb551b916146d75061180f8e78145f1','1436673390','0','0','112.64.235.247','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ba2ab125ed10b3e2aa3832af1b7a73ab','1436673405','0','0','180.153.206.38','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7a6b2d7c47e2d6090e8399be4b33cae2','1436673157','0','0','180.153.214.192','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('71f0811f38e424ccc3b546eaa762168f','1436733589','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e7a5bedaf30fad61514aa01ea17b2205','1436734234','0','0','180.153.163.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0570f1790b239fdb153650ebd6640578','1436734755','0','0','180.153.214.176','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f0d657ae5cedfc13bc68207744f5a8b2','1436735168','0','0','101.226.65.102','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7e9d9f2503a7efc166a553570f5b73b6','1436736342','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a0ff625d44b16f20108498674d373d0b','1436736398','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('87cc040d4b17bc3ecbfd562e576547da','1436737338','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d78987f7e3b919137ad1b4dfdd92c100','1436737534','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('22e8fb3892b80f0a70ee5d0469cdc2ca','1436740445','0','0','171.14.158.54','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('87ed054b8bd78b3b4895506caf0cf3e1','1436738086','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('125c1fe6a547f36162e7c6f6544ea4b5','1436738099','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('efc34246649ff5cf7623d389f2f6dd08','1436738142','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e41694f368c1b5942e18edd683a167ef','1436738209','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('30fff73961197e969cdc00fb500dbe83','1436738211','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5cf363174228e02a12f5bf0258d9dc84','1436738213','0','0','123.4.20.186','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('84686f06a36738bc7e4d0f0e5305f6de','1436738246','0','0','115.53.10.144','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('dc587693bd9518092bd89b41e3c4435b','1436738247','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('43dab3282eb4234df4c9e3331a57ffeb','1436738352','0','0','123.4.20.5','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d970d46fd593d4ae80f42dd350e9130f','1436738603','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9e2d3487c0388b50a2669a821cb4fca0','1436738488','0','0','113.105.95.122','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('02fbe0f3074ccfc410570037dd608bc3','1436738527','0','0','14.17.34.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5c57d7a220e95932de2c2a3324070301','1436738529','0','0','14.17.34.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d3ba5c872f41100391466e13c5c6965e','1436738561','0','0','163.177.69.37','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('06b36371d2cf313891212f333be21d09','1436738563','0','0','163.177.69.37','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('301fa8dc5e79df74eb2a99ea75c152c9','1436738565','0','0','112.65.193.14','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('cd75f3a36cd4ae2211ba0b6a99e2e07c','1436738567','0','0','115.53.10.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0d7628587f6c359441314da2b3e3c9a5','1436738573','0','0','183.60.35.94','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fabc7edce4047af33be14628159be82a','1436738573','0','0','183.60.35.94','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('17d6aa76d852f9ebc68b928c9c37aae9','1436738590','0','0','183.60.35.94','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a04f6f5effa8feba98cebc2b7337925a','1436738591','0','0','183.60.35.94','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a0ee7e70afa64f6e7d12e3f1717ac5d7','1436738597','0','0','14.17.34.189','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('069e2faa278968c20d2025c8d3ac90d6','1436738597','0','0','14.17.34.189','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f2c4c69e612fe7621316615895c66232','1436738715','0','0','123.4.22.248','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f7c6ae061f2c5fe70f80a90e989fdeb7','1436738716','0','0','183.195.233.181','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('08b74da699147968ec7f226e781f78cb','1436738716','0','0','183.195.232.24','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b09fa779b04276ff9d2da511c9eac407','1436738716','0','0','183.195.232.17','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b584fa7aa53698857dbc0a505867c281','1436738716','0','0','183.195.233.90','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b50728af271a8206b1edcb51cbb66e8f','1436738716','0','0','120.204.200.42','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('71f1db2aeec1a24fe54da254794c20b7','1436738718','0','0','140.207.185.17','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('03c1706040b3ac034883e6659fb101b5','1436738719','0','0','140.207.185.122','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c6c2f1525c5893b308f0978ad2d84527','1436738719','0','0','140.207.185.15','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5346c0795fdc0124dd8eb7de082faeee','1436738719','0','0','140.207.185.15','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7e311fb369019c7b9524a6969d587ff5','1436738719','0','0','140.207.185.17','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9b74d2abfaa16435a2989e5ade90bd1f','1436738721','0','0','140.207.118.16','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d30da61d47dac4eeea2dcb86fc80218d','1436738722','0','0','117.135.149.14','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5309a7cc817407aaed9565932de05eca','1436738722','0','0','140.207.55.79','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('861f5fd065f375860b32ccdd662a7dec','1436738723','0','0','183.195.232.37','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4f30f9defb1d83b8860cf55ba9ee55e2','1436738898','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ef55ec0db5c4521dd1b4af096841eed0','1436739056','0','0','123.4.22.248','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ce6e9737dc4ad4b777e178c2bafde891','1436740921','0','0','171.14.158.54','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1436732486\";s:7:\"last_ip\";s:13:\"171.14.158.54\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('02d650f69cdb9f22d65f2a12d5291622','1436741126','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('28e99ecf2cf8bf209cecc44af5a1c35f','1436741198','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9fa509354ce2cf683efea368e706f6b5','1436741650','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4b2036bc104efd719efe1545efc4fca0','1436741670','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('122d89b87d43dd2ad1f2e07ea8bdf292','1436741685','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8975b1ed2ab3531c4aa6e1c6609c15c6','1436741727','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('139599b6b2614783dee2dcfc60403d0c','1436742129','0','0','171.14.158.54','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3adb9298c495d0f2f0876048dd6b7b7d','1436742187','0','0','171.14.158.54','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1436739301\";s:7:\"last_ip\";s:13:\"171.14.158.54\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('00cc2e5efa93419787fcc5316ac28ab1','1436743190','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f2880742c6a7b86f43867ddafc7be33e','1436743198','0','0','171.14.158.54','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('dc5d25ee25ef48996a7a8090b178870b','1436743278','0','0','171.14.158.54','','0');
DROP TABLE IF EXISTS ecm_sessions_data;
CREATE TABLE ecm_sessions_data (
  sesskey varchar(32) NOT NULL DEFAULT '',
  expiry int(11) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (sesskey),
  KEY expiry (expiry)
) ENGINE=MyISAM;
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('9d4172ebff07d0ebb3161ce9e7eca7a1','1436675654','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1436665346\";s:7:\"last_ip\";s:14:\"123.12.104.201\";}user_info|a:6:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:6:\"seller\";s:8:\"reg_time\";s:10:\"1388031020\";s:10:\"last_login\";s:10:\"1436649246\";s:7:\"last_ip\";s:14:\"123.12.104.201\";s:8:\"store_id\";s:1:\"2\";}member_role|s:12:\"seller_admin\";');
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('6e16342b1c3a34c6468831cd0f66f5f7','1436674965','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";state|s:32:\"874cfa22a5b36dca255a1af4a7a2e914\";user_info|a:6:{s:7:\"user_id\";s:1:\"6\";s:9:\"user_name\";s:6:\"mynine\";s:8:\"reg_time\";s:10:\"1436465048\";s:10:\"last_login\";s:10:\"1436667120\";s:7:\"last_ip\";s:12:\"123.4.21.145\";s:8:\"store_id\";s:1:\"6\";}member_role|s:12:\"seller_admin\";');
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('03db9f7d6cbd6c29e31af669d2ed86af','1436743188','lat|s:11:\"35.75329789\";lng|s:12:\"115.02662744\";admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1436673386\";s:7:\"last_ip\";s:15:\"113.246.223.230\";}state|s:32:\"29a86ca7f8ebd085bc6f3b8481dd4d20\";');
DROP TABLE IF EXISTS ecm_sgrade;
CREATE TABLE ecm_sgrade (
  grade_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  grade_name varchar(60) NOT NULL DEFAULT '',
  goods_limit int(10) unsigned NOT NULL DEFAULT '0',
  space_limit int(10) unsigned NOT NULL DEFAULT '0',
  skin_limit int(10) unsigned NOT NULL DEFAULT '0',
  charge varchar(100) NOT NULL DEFAULT '',
  need_confirm tinyint(3) unsigned NOT NULL DEFAULT '0',
  description varchar(255) NOT NULL DEFAULT '',
  functions varchar(255) DEFAULT NULL,
  skins text NOT NULL,
  sort_order tinyint(4) unsigned NOT NULL DEFAULT '0',
  wapskin_limit int(10) unsigned NOT NULL DEFAULT '0',
  wapskins text NOT NULL,
  PRIMARY KEY (grade_id)
) ENGINE=MyISAM;
INSERT INTO ecm_sgrade ( `grade_id`, `grade_name`, `goods_limit`, `space_limit`, `skin_limit`, `charge`, `need_confirm`, `description`, `functions`, `skins`, `sort_order`, `wapskin_limit`, `wapskins` ) VALUES  ('1','系统默认','5','2','12','100元/年','0','测试用户请选择“默认等级”，可以立即开通。','editor_multimedia,coupon,groupbuy,enable_radar,enable_free_fee,template','default|default,default|style1,default|style2,default|style3,default|style4,default|style5,default|style6,default|style7,default|style8,jd2015|default,mmall|default,moolau|default','255','1','default|default');
INSERT INTO ecm_sgrade ( `grade_id`, `grade_name`, `goods_limit`, `space_limit`, `skin_limit`, `charge`, `need_confirm`, `description`, `functions`, `skins`, `sort_order`, `wapskin_limit`, `wapskins` ) VALUES  ('2','旗舰店','0','0','12','','1','','editor_multimedia,coupon,groupbuy,enable_radar,enable_free_fee,template','default|default,default|style1,default|style2,default|style3,default|style4,default|style5,default|style6,default|style7,default|style8,jd2015|default,mmall|default,moolau|default','255','1','default|default');
DROP TABLE IF EXISTS ecm_shipping;
CREATE TABLE ecm_shipping (
  shipping_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  shipping_name varchar(100) NOT NULL DEFAULT '',
  shipping_desc varchar(255) DEFAULT NULL,
  first_price decimal(10,2) NOT NULL DEFAULT '0.00',
  step_price decimal(10,2) NOT NULL DEFAULT '0.00',
  cod_regions text,
  enabled tinyint(3) unsigned NOT NULL DEFAULT '1',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (shipping_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_shipping ( `shipping_id`, `store_id`, `shipping_name`, `shipping_desc`, `first_price`, `step_price`, `cod_regions`, `enabled`, `sort_order` ) VALUES  ('1','2','快递','','0.10','0.00',null,'1','255');
INSERT INTO ecm_shipping ( `shipping_id`, `store_id`, `shipping_name`, `shipping_desc`, `first_price`, `step_price`, `cod_regions`, `enabled`, `sort_order` ) VALUES  ('2','4','运通快递','','0.00','0.00',null,'1','255');
DROP TABLE IF EXISTS ecm_statistics;
CREATE TABLE ecm_statistics (
  statistics_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  visit_url varchar(255) NOT NULL DEFAULT '',
  reffrer_url varchar(255) NOT NULL DEFAULT '',
  user_browser varchar(255) NOT NULL DEFAULT '',
  user_os varchar(255) NOT NULL DEFAULT '',
  start_time int(10) unsigned NOT NULL DEFAULT '0',
  end_time int(10) unsigned NOT NULL DEFAULT '0',
  visit_times int(10) unsigned NOT NULL DEFAULT '0',
  ip char(15) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  PRIMARY KEY (statistics_id),
  KEY store_id (store_id),
  KEY user_id (user_id)
) ENGINE=MyISAM;
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('1','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=98','','Chrome','其它','1416368625','1416381843','41','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('2','2','0','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&id=2','','Chrome','其它','1416371658','1416379776','6','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('3','2','0','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&act=credit&id=2','','Chrome','其它','1416372366','1416379485','3','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('4','2','0','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=98','','Chrome','其它','1416377263','1416379456','17','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('5','2','0','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=1','','Chrome','其它','1416379779','1416379781','2','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('6','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&id=2','','Chrome','其它','1416379789','1416381039','2','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('7','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=8','','Chrome','其它','1416381042','1416381688','2','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('8','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=1','','Chrome','其它','1416381174','1416381175','1','192.168.1.101','2014-11-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('9','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=48','','Chrome','其它','1424852023','1424852024','1','192.168.1.101','2015-02-25');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('10','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=1','','Chrome','其它','1427280945','1427280946','1','192.168.1.101','2015-03-25');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('11','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&id=2','','Chrome','其它','1427280949','1427280950','1','192.168.1.101','2015-03-25');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('12','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store_meals&id=2','','Chrome','其它','1427280971','1427281505','14','192.168.1.101','2015-03-25');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('13','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=26','','Chrome','其它','1428221283','1428221284','1','192.168.1.101','2015-04-05');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('14','2','0','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=1','','Chrome','其它','1432005967','1432005968','1','192.168.1.101','2015-05-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('15','2','0','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&act=coupon&id=2','','Chrome','其它','1432005969','1432006325','15','192.168.1.101','2015-05-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('16','2','0','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=89','','Chrome','其它','1432015953','1432015954','1','192.168.1.101','2015-05-19');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('17','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=98','','Chrome','其它','1433489502','1433490409','17','192.168.1.101','2015-06-05');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('18','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&id=2','','Chrome','其它','1433491222','1433491365','6','192.168.1.101','2015-06-05');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('19','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&act=credit&id=2','','Chrome','其它','1433491361','1433491362','1','192.168.1.101','2015-06-05');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('20','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=store&id=2','','Chrome','其它','1434282670','1434282671','1','192.168.1.101','2015-06-14');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('21','2','2','http://192.168.1.101/all_ecmall/test/etmall/index.php?app=goods&id=1','','Chrome','其它','1434282671','1434283427','4','192.168.1.101','2015-06-14');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('22','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=27','','Chrome','其它','1435805961','1435805962','1','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('23','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=14','','Chrome','其它','1435806240','1435806241','1','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('24','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=credit&id=2','','Chrome','其它','1435806244','1435806246','2','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('25','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1435806245','1435806345','5','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('26','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=13','','Chrome','其它','1435806489','1435806490','1','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('27','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=1','','Chrome','其它','1435807655','1435815698','59','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('28','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1435807784','1435815824','24','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('29','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=credit&id=2','','Chrome','其它','1435808055','1435815745','7','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('30','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=coupon&id=2','','Chrome','其它','1435808056','1435815752','4','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('31','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=credit&id=2&eval=3','','Chrome','其它','1435810218','1435815748','2','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('32','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=credit&id=2&eval=2','','Chrome','其它','1435810220','1435815750','2','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('33','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=96','','Chrome','其它','1435812358','1435812639','3','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('34','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&act=comments&id=1','','Chrome','其它','1435815118','1435815696','13','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('35','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&act=saleslog&id=1','','Chrome','其它','1435815368','1435815693','15','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('36','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&act=qa&id=1','','Chrome','其它','1435815371','1435815651','10','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('37','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=13','','Chrome','其它','1435817815','1435817816','1','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('38','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=13','','Chrome','其它','1435817824','1435817825','1','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('39','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=18','','Chrome','其它','1435817832','1435817833','1','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('40','4','4','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=99','','Chrome','其它','1435818992','1435818993','1','192.168.1.101','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('41','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=98','','Firefox','Mac','1435824017','1435824018','1','192.168.1.89','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('42','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=45','','Firefox','Mac','1435833530','1435833531','1','192.168.1.88','2015-07-02');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('43','4','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=99','','Firefox','Mac','1436079817','1436079818','1','192.168.1.101','2015-07-05');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('44','4','0','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=4','','Firefox','Mac','1436079946','1436079947','1','192.168.1.101','2015-07-05');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('45','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1436153186','1436153187','1','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('46','4','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=99','','Chrome','其它','1436153901','1436161521','2','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('47','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=27','','Chrome','其它','1436161696','1436161697','1','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('48','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1436161979','1436178714','51','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('49','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2&act=search&cate_id=460','','Chrome','其它','1436162683','1436162838','6','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('50','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&keyword=&cate_id=&order=sales%20desc','','Chrome','其它','1436162876','1436176806','13','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('51','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=98','','Chrome','其它','1436162878','1436163311','9','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('52','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&keyword=&cate_id=&order=add_time%20desc','','Chrome','其它','1436162971','1436176963','10','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('53','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&keyword=&cate_id=&order=price%20desc','','Chrome','其它','1436162972','1436176800','5','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('54','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2','','Chrome','其它','1436163343','1436176790','5','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('55','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&page=2','','Chrome','其它','1436163379','1436163380','1','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('56','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=1','','Chrome','其它','1436169490','1436178692','48','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('57','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=credit&id=2','','Chrome','其它','1436169516','1436174661','3','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('58','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=coupon&id=2','','Chrome','其它','1436169517','1436169518','1','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('59','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2&act=search&cate_id=450','','Chrome','其它','1436174500','1436174501','1','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('60','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=credit&id=2&eval=3','','Chrome','其它','1436174773','1436174774','1','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('61','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=29','','Chrome','其它','1436176050','1436176111','3','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('62','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&keyword=&cate_id=&order=sales%20desc&page=2','','Chrome','其它','1436176827','1436176828','1','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('63','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=template&act=edit&page=index','','Chrome','其它','1436177024','1436178310','10','192.168.1.101','2015-07-06');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('64','4','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=99','','Chrome','其它','1436276537','1436276538','1','192.168.1.101','2015-07-07');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('65','4','0','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=4','','Chrome','其它','1436276539','1436276540','1','192.168.1.101','2015-07-07');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('66','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=98','','Chrome','其它','1436276545','1436276546','1','192.168.1.101','2015-07-07');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('67','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1436276547','1436276602','5','192.168.1.101','2015-07-07');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('68','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=27','','Chrome','其它','1436331586','1436331991','11','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('69','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1436332038','1436339889','2','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('70','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=1','','Chrome','其它','1436332068','1436332093','2','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('71','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=39','','Chrome','其它','1436334319','1436334320','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('72','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2&act=search','','Chrome','其它','1436334813','1436334814','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('73','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&keyword=&cate_id=&order=add_time%20desc','','Chrome','其它','1436334814','1436334815','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('74','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&keyword=&cate_id=&order=price%20desc','','Chrome','其它','1436334816','1436334817','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('75','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=store&act=search&id=2&keyword=&cate_id=&order=sales%20desc','','Chrome','其它','1436334816','1436334817','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('76','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=98','','Chrome','其它','1436334881','1436334882','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('77','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=27','','Chrome','其它','1436336772','1436336773','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('78','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1436336797','1436336832','2','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('79','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=1','','Chrome','其它','1436336806','1436336807','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('80','2','2','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1436337278','1436337279','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('81','2','0','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=15','','Chrome','其它','1436339874','1436339875','1','192.168.1.101','2015-07-08');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('82','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=18','','Chrome','其它','1436425290','1436427333','2','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('83','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=store&id=2','','Chrome','其它','1436425293','1436425460','2','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('84','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=3','','Chrome','其它','1436425296','1436425297','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('85','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=4','','Chrome','其它','1436425298','1436425299','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('86','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=5','','Chrome','其它','1436425300','1436425301','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('87','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=6','','Chrome','其它','1436425301','1436425302','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('88','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=97','','Chrome','其它','1436425311','1436425312','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('89','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=1','','Chrome','其它','1436425444','1436425445','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('90','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&id=39','','Chrome','其它','1436426253','1436426254','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('91','2','3','http://192.168.1.101/all_ecmall/150616/index.php?app=goods&act=comments&id=18','','Chrome','其它','1436427336','1436427337','1','192.168.1.101','2015-07-09');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('92','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=39','','Chrome','其它','1436493982','1436493983','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('93','2','6','http://ecmall.150616.60data.com/index.php?app=store&id=2','','Chrome','其它','1436493990','1436511402','6','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('94','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=5','','Chrome','其它','1436494107','1436494108','1','116.255.147.148','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('95','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=5/','','Firefox','Mac','1436494168','1436521979','7','116.255.147.148','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('96','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=39','','Firefox','Windows 95','1436494794','1436505528','4','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('97','6','6','http://ecmall.150616.60data.com/index.php?app=store&id=6','','Chrome','其它','1436494937','1436511274','13','116.255.147.137','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('98','6','0','http://ecmall.150616.60data.com/index.php?app=store&id=6','','Firefox','Windows 95','1436494937','1436494938','1','101.226.89.123','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('99','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=97','','Chrome','其它','1436495029','1436495030','1','116.255.147.137','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('100','2','6','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=97','','Chrome','其它','1436495046','1436495047','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('101','2','6','http://ecmall.150616.60data.com/index.php?app=goods&act=saleslog&id=97','','Chrome','其它','1436495049','1436495050','1','116.255.147.137','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('102','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=5','','Chrome','其它','1436495419','1436505517','2','123.4.2.144','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('103','5','6','http://ecmall.150616.60data.com/index.php?app=store&id=5','','Chrome','其它','1436495981','1436495982','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('104','5','0','http://ecmall.150616.60data.com/index.php?app=store&id=5','','Firefox','Windows 95','1436495981','1436511446','2','101.226.51.229','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('105','7','6','http://ecmall.150616.60data.com/index.php?app=store&id=7','','Chrome','其它','1436496006','1436496007','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('106','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=98','','Chrome','其它','1436496334','1436496335','1','218.76.60.106','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('107','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=93','','Chrome','其它','1436496378','1436522642','4','123.12.109.100','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('108','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=qa&id=93','','Chrome','其它','1436496386','1436496387','1','123.12.109.100','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('109','2','0','http://ecmall.150616.60data.com/index.php?app=store&id=2','','Chrome','其它','1436496415','1436522956','8','116.255.147.150','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('110','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Chrome','其它','1436496648','1436522400','5','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('111','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=1','','Chrome','其它','1436496675','1436496676','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('112','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=12','','Chrome','其它','1436497024','1436497072','2','218.76.60.106','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('113','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=12/','','Firefox','Linux','1436497084','1436497266','2','116.255.147.150','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('114','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=2','','Chrome','其它','1436497333','1436497675','2','116.255.147.150','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('115','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=2/','','Firefox','Linux','1436497337','1436497408','3','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('116','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=saleslog&id=2','','Chrome','其它','1436497672','1436497750','2','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('117','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=2','','Chrome','其它','1436497744','1436497745','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('118','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=41','','Firefox','Linux','1436497800','1436497801','1','123.12.106.164','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('119','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=43','','Firefox','Linux','1436497830','1436497831','1','123.12.109.109','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('120','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=53','','Firefox','Linux','1436497860','1436499260','2','61.163.1.2','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('121','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=47','','Chrome','其它','1436498008','1436498009','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('122','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=47','','Chrome','其它','1436498014','1436498015','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('123','2','2','http://ecmall.150616.60data.com/index.php?app=goods&id=26','','Firefox','Linux','1436498378','1436498379','1','106.17.53.243','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('124','4','6','http://ecmall.150616.60data.com/index.php?app=goods&id=99','','Chrome','其它','1436498518','1436498519','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('125','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=95','','Chrome','其它','1436498526','1436498527','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('126','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Chrome','其它','1436498873','1436500940','4','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('127','2','8','http://ecmall.150616.60data.com/index.php?app=goods&id=93','','Chrome','其它','1436499476','1436499477','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('128','2','8','http://ecmall.150616.60data.com/index.php?app=goods&id=97','','Chrome','其它','1436499707','1436499708','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('129','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=9','','Chrome','Windows XP (SP2)','1436500117','1436500118','1','1.194.27.141','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('130','2','2','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Chrome','其它','1436500172','1436522636','5','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('131','7','2','http://ecmall.150616.60data.com/index.php?app=store&id=7','','Chrome','其它','1436501111','1436501128','2','116.255.147.148','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('132','7','0','http://ecmall.150616.60data.com/index.php?app=store&id=7','','Firefox','Windows 95','1436501112','1436501113','1','101.226.89.123','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('133','7','2','http://ecmall.150616.60data.com/index.php?app=store&act=credit&id=7','','Chrome','其它','1436501124','1436501125','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('134','7','2','http://ecmall.150616.60data.com/index.php?app=store&act=coupon&id=7','','Chrome','其它','1436501126','1436501127','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('135','2','2','http://ecmall.150616.60data.com/index.php?app=template&act=edit&page=index','','Chrome','其它','1436501158','1436501159','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('136','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=23','','Chrome','Windows XP (SP2)','1436503124','1436503125','1','1.194.27.141','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('137','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=23','','Chrome','Windows XP (SP2)','1436503141','1436503142','1','1.194.27.141','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('138','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=66','','Chrome','Windows XP (SP2)','1436504860','1436504861','1','116.255.147.150','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('139','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=48','','Chrome','其它','1436505400','1436505401','1','116.255.147.137','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('140','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=48','','Chrome','其它','1436505410','1436505411','1','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('141','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=39','','Chrome','其它','1436505486','1436505487','1','175.0.245.188','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('142','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=saleslog&id=39','','Chrome','其它','1436505491','1436505492','1','175.0.245.188','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('143','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=4','','Chrome','其它','1436505510','1436505511','1','175.0.245.188','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('144','2','0','http://ecmall.150616.60data.com/index.php?app=goods&act=comments&id=5','','Chrome','其它','1436505521','1436505522','1','175.0.245.188','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('145','2','0','http://ecmall.150616.60data.com/index.php?app=store&act=credit&id=2','','Chrome','其它','1436505986','1436505987','1','175.0.245.188','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('146','2','0','http://ecmall.150616.60data.com/index.php?app=store&act=coupon&id=2','','Chrome','其它','1436505993','1436505994','1','175.0.245.188','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('147','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=8','','Chrome','其它','1436508713','1436508714','1','116.255.233.173','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('148','6','6','http://ecmall.150616.60data.com/index.php?app=store&act=coupon&id=6','','Chrome','其它','1436510213','1436510214','1','116.255.147.150','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('149','6','6','http://ecmall.150616.60data.com/index.php?app=template&act=edit&page=index','','Chrome','其它','1436510360','1436510361','1','116.255.147.150','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('150','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=89','','Chrome','其它','1436511223','1436511224','1','116.255.147.148','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('151','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=98','','Chrome','其它','1436511287','1436511288','1','116.255.147.148','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('152','4','6','http://ecmall.150616.60data.com/index.php?app=store&id=4','','Chrome','其它','1436511420','1436511421','1','116.255.147.148','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('153','4','0','http://ecmall.150616.60data.com/index.php?app=goods&id=99','','Firefox','Mac','1436511456','1436511503','2','116.255.137.134','2015-07-10');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('154','2','2','http://ecmall.150616.60data.com/index.php?app=goods&id=5','','Chrome','其它','1436521797','1436522550','5','123.12.109.100','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('155','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=45','','Firefox','Linux','1436523100','1436523101','1','116.255.137.134','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('156','2','9','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Chrome','其它','1436523726','1436523727','1','116.255.137.134','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('157','2','9','http://ecmall.150616.60data.com/index.php?app=store&id=2','','Chrome','其它','1436523729','1436523730','1','116.255.137.134','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('158','2','0','http://ecmall.150616.60data.com/index.php?app=store&act=search&id=2','','Firefox','Mac','1436523831','1436523832','1','116.255.147.148','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('159','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Chrome','其它','1436580178','1436607333','15','175.0.244.208','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('160','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=98','','Firefox','Mac','1436583939','1436583940','1','1.194.27.141','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('161','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=29','','Firefox','Mac','1436584009','1436584010','1','1.194.27.141','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('162','2','9','http://ecmall.150616.60data.com/index.php?app=goods&id=29','','Firefox','Mac','1436584363','1436584364','1','1.194.27.141','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('163','2','9','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Firefox','Mac','1436584602','1436584603','1','1.194.27.141','2015-07-11');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('164','7','0','http://ecmall.150616.60data.com/index.php?app=store&id=7','','Chrome','其它','1436602671','1436602672','1','116.255.147.148','2015-07-12');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('165','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=42','','Firefox','Mac','1436670028','1436670029','1','116.255.147.150','2015-07-12');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('166','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Chrome','其它','1436677972','1436702342','8','116.255.147.150','2015-07-12');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('167','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=12','','Chrome','其它','1436677992','1436698087','3','116.255.147.150','2015-07-12');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('168','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=8','','Chrome','其它','1436677997','1436677998','1','116.255.147.150','2015-07-12');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('169','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=8','','Chrome','其它','1436678012','1436678013','1','116.255.147.150','2015-07-12');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('170','2','2','http://ecmall.150616.60data.com/index.php?app=goods&id=98','','Chrome','其它','1436678115','1436702860','15','116.255.137.134','2015-07-12');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('171','2','2','http://ecmall.150616.60data.com/index.php?app=goods&id=1','','Chrome','其它','1436692796','1436692797','1','116.255.147.137','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('172','2','2','http://ecmall.150616.60data.com/index.php?app=goods&id=6','','Chrome','其它','1436692802','1436692803','1','116.255.147.137','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('173','2','2','http://ecmall.150616.60data.com/index.php?app=goods&id=93','','Chrome','其它','1436692818','1436702734','2','116.255.147.137','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('174','2','2','http://ecmall.150616.60data.com/index.php?app=store&id=2','','Chrome','其它','1436693950','1436699891','3','116.255.233.173','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('175','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=98','','MSIE 9.0','其它','1436697324','1436702511','28','116.255.233.173','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('176','2','0','http://ecmall.150616.60data.com/index.php?app=store&id=2','','MSIE 9.0','其它','1436697478','1436698548','2','116.255.233.173','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('177','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=93','','MSIE 9.0','其它','1436698351','1436709361','3','116.255.147.150','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('178','2','0','http://ecmall.150616.60data.com/index.php?app=store&act=credit&id=2','','Chrome','其它','1436698550','1436698551','1','113.246.223.230','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('179','2','6','http://ecmall.150616.60data.com/index.php?app=goods&id=12','','MSIE 9.0','其它','1436702287','1436702288','1','116.255.233.173','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('180','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=98/','','Firefox','Mac','1436702758','1436702836','2','116.255.147.150','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('181','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=29','','Firefox','Mac','1436707024','1436707033','2','123.52.208.205','2015-07-13');
INSERT INTO ecm_statistics ( `statistics_id`, `store_id`, `user_id`, `visit_url`, `reffrer_url`, `user_browser`, `user_os`, `start_time`, `end_time`, `visit_times`, `ip`, `date` ) VALUES  ('182','2','0','http://ecmall.150616.60data.com/index.php?app=goods&id=98','','Firefox','Linux','1436765831','1436766223','4','171.14.158.54','2015-07-13');
DROP TABLE IF EXISTS ecm_store;
CREATE TABLE ecm_store (
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  store_name varchar(100) NOT NULL DEFAULT '',
  owner_name varchar(60) NOT NULL DEFAULT '',
  owner_card varchar(60) NOT NULL DEFAULT '',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(100) DEFAULT NULL,
  address varchar(255) NOT NULL DEFAULT '',
  zipcode varchar(20) NOT NULL DEFAULT '',
  tel varchar(60) NOT NULL DEFAULT '',
  sgrade tinyint(3) unsigned NOT NULL DEFAULT '0',
  apply_remark varchar(255) NOT NULL DEFAULT '',
  credit_value int(10) NOT NULL DEFAULT '0',
  evaluation_desc decimal(3,1) NOT NULL DEFAULT '5.0',
  evaluation_service decimal(3,1) NOT NULL DEFAULT '5.0',
  evaluation_speed decimal(3,1) NOT NULL DEFAULT '5.0',
  praise_rate decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  domain varchar(60) DEFAULT NULL,
  state tinyint(3) unsigned NOT NULL DEFAULT '0',
  close_reason varchar(255) NOT NULL DEFAULT '',
  add_time int(10) unsigned DEFAULT NULL,
  end_time int(10) unsigned NOT NULL DEFAULT '0',
  certification varchar(255) DEFAULT NULL,
  sort_order smallint(5) unsigned NOT NULL DEFAULT '0',
  recommended tinyint(4) NOT NULL DEFAULT '0',
  theme varchar(60) NOT NULL DEFAULT '',
  store_banner varchar(255) DEFAULT NULL,
  store_logo varchar(255) DEFAULT NULL,
  description text,
  image_1 varchar(255) NOT NULL DEFAULT '',
  image_2 varchar(255) NOT NULL DEFAULT '',
  image_3 varchar(255) NOT NULL DEFAULT '',
  im_qq varchar(60) NOT NULL DEFAULT '',
  im_ww varchar(60) NOT NULL DEFAULT '',
  im_msn varchar(60) NOT NULL DEFAULT '',
  hot_search varchar(255) NOT NULL,
  business_scope varchar(50) NOT NULL,
  online_service varchar(255) NOT NULL,
  hotline varchar(255) NOT NULL,
  pic_slides text NOT NULL,
  enable_groupbuy tinyint(1) unsigned NOT NULL DEFAULT '0',
  enable_radar tinyint(1) unsigned NOT NULL DEFAULT '1',
  waptheme varchar(60) NOT NULL DEFAULT '',
  pic_slides_wap text NOT NULL,
  lng decimal(12,8) NOT NULL,
  lat decimal(12,8) NOT NULL,
  zoom int(3) NOT NULL,
  service_begin tinyint(1) DEFAULT NULL COMMENT '营业开始时间',
  service_end tinyint(1) DEFAULT NULL COMMENT '营业结束时间',
  service_arrive int(2) NOT NULL DEFAULT '0' COMMENT '到达时间',
  service_consumption decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '人均消费',
  amount_for_free_fee decimal(10,2) NOT NULL,
  acount_for_free_fee int(10) NOT NULL,
  pre_connects varchar(255) NOT NULL DEFAULT '',
  after_connects varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (store_id),
  KEY store_name (store_name),
  KEY owner_name (owner_name),
  KEY region_id (region_id),
  KEY domain (domain)
) ENGINE=MyISAM;
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `enable_groupbuy`, `enable_radar`, `waptheme`, `pic_slides_wap`, `lng`, `lat`, `zoom`, `service_begin`, `service_end`, `service_arrive`, `service_consumption`, `amount_for_free_fee`, `acount_for_free_fee`, `pre_connects`, `after_connects` ) VALUES  ('2','超级店铺','超级店家','','5','中国	北京市	西城','111','','11111111111','2','','10','5.0','5.0','5.0','100.00','','1','','1388031275','0','','65535','1','jd2015|default',null,'data/files/store_2/other/store_logo.png','','','','','','','','','','','','','0','0','default|default','','0.00000000','0.00000000','0','0','0','0','0.00','0.00','0','{\"1\":{\"name\":\"%E5%94%AE%E5%89%8D1\",\"type\":\"1\",\"num\":\"181814630\"},\"k263\":{\"name\":\"%E5%94%AE%E5%89%8D2\",\"type\":\"1\",\"num\":\"894816139\"}}','{\"1\":{\"name\":\"%E5%94%AE%E5%90%8E1\",\"type\":\"1\",\"num\":\"181814630\"},\"k256\":{\"name\":\"%E5%94%AE%E5%90%8E2\",\"type\":\"1\",\"num\":\"894816139\"}}');
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `enable_groupbuy`, `enable_radar`, `waptheme`, `pic_slides_wap`, `lng`, `lat`, `zoom`, `service_begin`, `service_end`, `service_arrive`, `service_consumption`, `amount_for_free_fee`, `acount_for_free_fee`, `pre_connects`, `after_connects` ) VALUES  ('4','歆歆数码专营店','歆歆数码专营店','','0','','','','11111111111','1','','0','5.0','5.0','5.0','0.00',null,'1','','1428027623','0',null,'0','0','',null,null,null,'','','','','','','','','','','','0','1','','','0.00000000','0.00000000','0',null,null,'0','0.00','0.00','0','','');
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `enable_groupbuy`, `enable_radar`, `waptheme`, `pic_slides_wap`, `lng`, `lat`, `zoom`, `service_begin`, `service_end`, `service_arrive`, `service_consumption`, `amount_for_free_fee`, `acount_for_free_fee`, `pre_connects`, `after_connects` ) VALUES  ('5','米牙手工皂','米牙手工皂','','5','中国	北京市	西城','','','11111111111','1','','0','5.0','5.0','5.0','0.00','','1','','1428027670','0',null,'0','0','',null,null,'','','','','','','','','','','','','0','0','','','0.00000000','0.00000000','0','0','0','0','0.00','0.00','0','','');
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `enable_groupbuy`, `enable_radar`, `waptheme`, `pic_slides_wap`, `lng`, `lat`, `zoom`, `service_begin`, `service_end`, `service_arrive`, `service_consumption`, `amount_for_free_fee`, `acount_for_free_fee`, `pre_connects`, `after_connects` ) VALUES  ('6','1111111111','测试','111111111111111','4','中国	北京市	东城','1212','12','3123123123123','1','','0','5.0','5.0','5.0','0.00','','1','','1436465548','0',null,'0','0','mmall|default',null,'data/files/store_6/other/store_logo.png','','','','','','','','','','','','','0','1','','','0.00000000','0.00000000','0','0','0','0','0.00','0.00','0','{\"1\":{\"name\":\"%E5%94%AE%E5%89%8D1\",\"type\":\"1\",\"num\":\"742088434\"}}','[]');
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `enable_groupbuy`, `enable_radar`, `waptheme`, `pic_slides_wap`, `lng`, `lat`, `zoom`, `service_begin`, `service_end`, `service_arrive`, `service_consumption`, `amount_for_free_fee`, `acount_for_free_fee`, `pre_connects`, `after_connects` ) VALUES  ('7','晴天一柱','liqiang','410901199006014538','282','中国	河南省	濮阳市','昆璞大厦','457000','18739376057','1','','0','5.0','5.0','5.0','0.00','','1','','1436466057','0','','0','0','',null,null,null,'','','','','','','','','','','','0','1','','','0.00000000','0.00000000','0',null,null,'0','0.00','0.00','0','','');
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `evaluation_desc`, `evaluation_service`, `evaluation_speed`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `enable_groupbuy`, `enable_radar`, `waptheme`, `pic_slides_wap`, `lng`, `lat`, `zoom`, `service_begin`, `service_end`, `service_arrive`, `service_consumption`, `amount_for_free_fee`, `acount_for_free_fee`, `pre_connects`, `after_connects` ) VALUES  ('8','淘淘乐','王小二','410929199307111215','2','中国','濮阳市','461000','18236838965','2','','0','5.0','5.0','5.0','0.00',null,'0','','1436471002','0',null,'0','0','',null,null,null,'','','','','','','','','','','','0','1','','','0.00000000','0.00000000','0',null,null,'0','0.00','0.00','0','','');
DROP TABLE IF EXISTS ecm_third_login;
CREATE TABLE ecm_third_login (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  third_name char(50) DEFAULT NULL COMMENT '第三方平台名称',
  openid char(100) DEFAULT NULL COMMENT 'openid,QQ平台使用',
  user_id int(11) DEFAULT '0' COMMENT '关联本地用户系统的会员ID',
  add_time int(11) DEFAULT NULL COMMENT '添加时间',
  update_time int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_ugrade;
CREATE TABLE ecm_ugrade (
  grade_id int(255) NOT NULL AUTO_INCREMENT,
  grade_name varchar(255) NOT NULL,
  grade tinyint(3) NOT NULL,
  grade_icon varchar(255) DEFAULT NULL,
  growth_needed int(20) NOT NULL,
  top_growth int(20) DEFAULT NULL,
  floor_growth int(20) NOT NULL,
  add_time int(20) DEFAULT NULL,
  PRIMARY KEY (grade_id)
) ENGINE=MyISAM;
INSERT INTO ecm_ugrade ( `grade_id`, `grade_name`, `grade`, `grade_icon`, `growth_needed`, `top_growth`, `floor_growth`, `add_time` ) VALUES  ('1','普通会员','1',null,'0','50','0','1423314360');
INSERT INTO ecm_ugrade ( `grade_id`, `grade_name`, `grade`, `grade_icon`, `growth_needed`, `top_growth`, `floor_growth`, `add_time` ) VALUES  ('2','黄金会员','2',null,'50','250','50','1424851722');
INSERT INTO ecm_ugrade ( `grade_id`, `grade_name`, `grade`, `grade_icon`, `growth_needed`, `top_growth`, `floor_growth`, `add_time` ) VALUES  ('3','白金会员','3',null,'200',null,'250','1424851733');
DROP TABLE IF EXISTS ecm_ultimate_store;
CREATE TABLE ecm_ultimate_store (
  ultimate_id int(255) NOT NULL AUTO_INCREMENT,
  brand_id int(50) NOT NULL,
  keyword varchar(20) NOT NULL,
  cate_id int(50) NOT NULL,
  store_id int(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  description varchar(255) DEFAULT NULL,
  PRIMARY KEY (ultimate_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_uploaded_file;
CREATE TABLE ecm_uploaded_file (
  file_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  file_type varchar(60) NOT NULL DEFAULT '',
  file_size int(10) unsigned NOT NULL DEFAULT '0',
  file_name varchar(255) NOT NULL DEFAULT '',
  file_path varchar(255) NOT NULL DEFAULT '',
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  belong tinyint(3) unsigned NOT NULL DEFAULT '0',
  item_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (file_id),
  KEY store_id (store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('1','2','image/jpeg','24997','11.jpg','data/files/store_2/goods_110/201312262048304586.jpg','1388033310','2','1');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('2','2','image/jpeg','20215','1.jpg','data/files/store_2/goods_198/201312262049586818.jpg','1388033398','2','2');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('3','2','image/jpeg','10477','2.jpg','data/files/store_2/goods_148/201312262052284448.jpg','1388033548','2','3');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('4','2','image/jpeg','30595','17.jpg','data/files/store_2/goods_57/201312262054174988.jpg','1388033657','2','4');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('5','2','image/jpeg','26733','4.jpg','data/files/store_2/goods_99/201312262054594117.jpg','1388033699','2','5');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('6','2','image/jpeg','23051','5.jpg','data/files/store_2/goods_136/201312262055366831.jpg','1388033736','2','6');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('7','2','image/jpeg','19535','6.jpg','data/files/store_2/goods_180/201312262056209107.jpg','1388033780','2','7');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('8','2','image/jpeg','23943','18.jpg','data/files/store_2/goods_63/201312262057435880.jpg','1388033863','2','8');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('9','2','image/jpeg','28884','19.jpg','data/files/store_2/goods_120/201312262058402887.jpg','1388033920','2','9');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('10','2','image/jpeg','27780','20.jpg','data/files/store_2/goods_31/201312262100319871.jpg','1388034031','2','10');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('11','2','image/jpeg','23463','21.jpg','data/files/store_2/goods_75/201312262101158858.jpg','1388034075','2','11');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('12','2','image/jpeg','34652','22.jpg','data/files/store_2/goods_144/201312262102246687.jpg','1388034144','2','12');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('13','2','image/jpeg','36655','23.jpg','data/files/store_2/goods_2/201312262103227833.jpg','1388034202','2','13');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('14','2','image/jpeg','45682','24.jpg','data/files/store_2/goods_77/201312262104371080.jpg','1388034277','2','14');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('15','2','image/jpeg','22513','25.jpg','data/files/store_2/goods_153/201312262105539118.jpg','1388034353','2','15');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('16','2','image/jpeg','7528','11.jpg','data/files/store_2/goods_69/201312262107499378.jpg','1388034469','2','16');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('17','2','image/jpeg','8244','7.jpg','data/files/store_2/goods_129/201312262108507192.jpg','1388034530','2','17');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('18','2','image/jpeg','8244','12.jpg','data/files/store_2/goods_130/201312262108508363.jpg','1388034530','2','17');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('19','2','image/jpeg','3882','1.jpg','data/files/store_2/goods_166/201312262109269656.jpg','1388034566','2','18');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('20','2','image/jpeg','5181','13.jpg','data/files/store_2/goods_28/201312262110282113.jpg','1388034628','2','19');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('21','2','image/jpeg','5409','10.jpg','data/files/store_2/goods_51/201312262110515808.jpg','1388034651','2','20');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('22','2','image/jpeg','12915','4.jpg','data/files/store_2/goods_124/201312262112041198.jpg','1388034724','2','21');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('23','2','image/jpeg','3722','14.jpg','data/files/store_2/goods_6/201312262113269791.jpg','1388034806','2','22');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('24','2','image/jpeg','4298','15.jpg','data/files/store_2/goods_71/201312262114315846.jpg','1388034871','2','23');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('25','2','image/jpeg','4214','16.jpg','data/files/store_2/goods_141/201312262115417011.jpg','1388034941','2','24');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('26','2','image/jpeg','3175','17.jpg','data/files/store_2/goods_3/201312262116433996.jpg','1388035003','2','25');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('27','2','image/jpeg','3183','18.jpg','data/files/store_2/goods_86/201312262118061068.jpg','1388035086','2','26');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('28','2','image/jpeg','3738','20.jpg','data/files/store_2/goods_160/201312262119204138.jpg','1388035160','2','27');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('29','2','image/jpeg','22614','1.jpg','data/files/store_2/goods_92/201312262134527551.jpg','1388036092','2','28');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('30','2','image/jpeg','4651','2.jpg','data/files/store_2/goods_192/201312262136326387.jpg','1388036192','2','29');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('31','2','image/jpeg','5193','3.jpg','data/files/store_2/goods_111/201312262138315559.jpg','1388036311','2','30');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('32','2','image/jpeg','7813','4.jpg','data/files/store_2/goods_189/201312262139497936.jpg','1388036389','2','31');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('33','2','image/jpeg','7482','5.jpg','data/files/store_2/goods_62/201312262141025440.jpg','1388036462','2','32');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('34','2','image/jpeg','8243','6.jpg','data/files/store_2/goods_125/201312262142056946.jpg','1388036525','2','33');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('35','2','image/jpeg','3963','7.jpg','data/files/store_2/goods_185/201312262143054186.jpg','1388036585','2','34');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('36','2','image/jpeg','5256','8.jpg','data/files/store_2/goods_42/201312262144021189.jpg','1388036642','2','35');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('37','2','image/jpeg','6068','9.jpg','data/files/store_2/goods_113/201312262145134866.jpg','1388036713','2','36');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('38','2','image/jpeg','8551','10.jpg','data/files/store_2/goods_7/201312262146474624.jpg','1388036807','2','37');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('39','2','image/jpeg','7321','11.jpg','data/files/store_2/goods_80/201312262148001815.jpg','1388036880','2','38');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('40','2','image/jpeg','7458','12.jpg','data/files/store_2/goods_139/201312262148598688.jpg','1388036939','2','39');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('41','2','image/jpeg','6194','1.jpg','data/files/store_2/goods_95/201312262151359791.jpg','1388037095','2','40');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('42','2','image/jpeg','6490','2.jpg','data/files/store_2/goods_130/201312262152104798.jpg','1388037130','2','41');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('43','2','image/jpeg','5413','10.jpg','data/files/store_2/goods_47/201312262154079508.jpg','1388037247','2','42');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('44','2','image/jpeg','3838','9.jpg','data/files/store_2/goods_93/201312262154537504.jpg','1388037293','2','43');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('45','2','image/jpeg','6404','8.jpg','data/files/store_2/goods_144/201312262155447040.jpg','1388037344','2','44');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('46','2','image/jpeg','4834','7.jpg','data/files/store_2/goods_178/201312262156186146.jpg','1388037378','2','45');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('47','2','image/jpeg','3554','6.jpg','data/files/store_2/goods_11/201312262156516537.jpg','1388037411','2','46');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('48','2','image/jpeg','4718','5.jpg','data/files/store_2/goods_76/201312262157569987.jpg','1388037476','2','47');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('49','2','image/jpeg','7169','4.jpg','data/files/store_2/goods_111/201312262158319438.jpg','1388037511','2','48');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('50','2','image/jpeg','7562','3.jpg','data/files/store_2/goods_162/201312262159227323.jpg','1388037562','2','49');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('51','2','image/jpeg','3459','1.jpg','data/files/store_2/goods_127/201312262205276887.jpg','1388037927','2','50');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('52','2','image/jpeg','4313','2.jpg','data/files/store_2/goods_173/201312262206139520.jpg','1388037973','2','51');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('53','2','image/jpeg','5663','10.jpg','data/files/store_2/goods_72/201312262207528762.jpg','1388038072','2','52');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('54','2','image/jpeg','3133','8.jpg','data/files/store_2/goods_102/201312262208227300.jpg','1388038102','2','53');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('55','2','image/jpeg','4162','7.jpg','data/files/store_2/goods_135/201312262208557042.jpg','1388038135','2','54');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('56','2','image/jpeg','4026','6.jpg','data/files/store_2/goods_176/201312262209361435.jpg','1388038176','2','55');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('57','2','image/jpeg','3616','5.jpg','data/files/store_2/goods_16/201312262210162177.jpg','1388038216','2','56');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('58','2','image/jpeg','3215','4.jpg','data/files/store_2/goods_57/201312262210575290.jpg','1388038257','2','57');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('59','2','image/jpeg','4460','3.jpg','data/files/store_2/goods_106/201312262211467126.jpg','1388038306','2','58');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('60','2','image/jpeg','4313','2.jpg','data/files/store_2/goods_152/201312262212327144.jpg','1388038352','2','59');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('61','2','image/jpeg','2805','13.jpg','data/files/store_2/goods_90/201312262218109004.jpg','1388038690','2','60');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('62','2','image/jpeg','3275','12.jpg','data/files/store_2/goods_114/201312262218342575.jpg','1388038714','2','61');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('63','2','image/jpeg','3669','11.jpg','data/files/store_2/goods_153/201312262219138421.jpg','1388038753','2','62');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('64','2','image/jpeg','4071','10.jpg','data/files/store_2/goods_6/201312262220067431.jpg','1388038806','2','63');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('65','2','image/jpeg','5055','9.jpg','data/files/store_2/goods_41/201312262220415407.jpg','1388038841','2','64');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('66','2','image/jpeg','5600','8.jpg','data/files/store_2/goods_143/201312262222237668.jpg','1388038943','2','65');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('67','2','image/jpeg','6940','7.jpg','data/files/store_2/goods_186/201312262223061143.jpg','1388038986','2','66');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('68','2','image/jpeg','2975','4.jpg','data/files/store_2/goods_26/201312262223464846.jpg','1388039026','2','67');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('70','2','image/jpeg','7663','2.jpg','data/files/store_2/goods_91/201312262224518849.jpg','1388039091','2','68');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('71','2','image/jpeg','20600','1.jpg','data/files/store_2/goods_131/201312262225311490.jpg','1388039131','2','69');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('72','2','image/jpeg','5494','14.jpg','data/files/store_2/goods_195/201312262233156335.jpg','1388039595','2','70');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('73','2','image/jpeg','4568','13.jpg','data/files/store_2/goods_44/201312262234045839.jpg','1388039644','2','71');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('74','2','image/jpeg','4815','15.jpg','data/files/store_2/goods_113/201312262235137180.jpg','1388039713','2','72');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('75','2','image/jpeg','7724','12.jpg','data/files/store_2/goods_142/201312262235429182.jpg','1388039742','2','73');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('76','2','image/jpeg','5780','11.jpg','data/files/store_2/goods_189/201312262236298305.jpg','1388039789','2','74');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('77','2','image/jpeg','4531','10.jpg','data/files/store_2/goods_38/201312262237189780.jpg','1388039838','2','75');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('78','2','image/jpeg','5618','9.jpg','data/files/store_2/goods_98/201312262238182827.jpg','1388039898','2','76');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('79','2','image/jpeg','5837','8.jpg','data/files/store_2/goods_179/201312262239393163.jpg','1388039979','2','77');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('80','2','image/jpeg','6297','7.jpg','data/files/store_2/goods_54/201312262240547284.jpg','1388040054','2','78');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('81','2','image/jpeg','8033','5.jpg','data/files/store_2/goods_97/201312262241379970.jpg','1388040097','2','79');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('82','2','image/jpeg','18566','3.jpg','data/files/store_2/goods_156/201312262242365477.jpg','1388040156','2','80');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('83','2','image/jpeg','4161','1.jpg','data/files/store_2/goods_111/201312262251512164.jpg','1388040711','2','81');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('84','2','image/jpeg','3634','2.jpg','data/files/store_2/goods_9/201312262253293800.jpg','1388040809','2','82');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('85','2','image/jpeg','4660','3.jpg','data/files/store_2/goods_80/201312262254404774.jpg','1388040880','2','83');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('86','2','image/jpeg','3408','4.jpg','data/files/store_2/goods_155/201312262255558436.jpg','1388040955','2','84');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('87','2','image/jpeg','3648','6.jpg','data/files/store_2/goods_6/201312262256466045.jpg','1388041006','2','85');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('88','2','image/jpeg','5751','5.jpg','data/files/store_2/goods_49/201312262257294186.jpg','1388041049','2','86');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('89','2','image/jpeg','5358','7.jpg','data/files/store_2/goods_86/201312262258066317.jpg','1388041086','2','87');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('90','2','image/jpeg','3272','8.jpg','data/files/store_2/goods_124/201312262258442397.jpg','1388041124','2','88');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('91','2','image/jpeg','4355','9.jpg','data/files/store_2/goods_180/201312262259401924.jpg','1388041180','2','89');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('92','2','image/jpeg','5002','19.jpg','data/files/store_2/goods_60/201312262301006712.jpg','1388041260','2','90');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('93','2','image/jpeg','4741','11.jpg','data/files/store_2/goods_155/201312262302356953.jpg','1388041355','2','91');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('94','2','image/jpeg','3574','12.jpg','data/files/store_2/goods_3/201312262303231812.jpg','1388041403','2','92');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('95','2','image/jpeg','4538','13.jpg','data/files/store_2/goods_48/201312262304085587.jpg','1388041448','2','93');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('96','2','image/jpeg','4219','14.jpg','data/files/store_2/goods_93/201312262304537590.jpg','1388041493','2','94');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('97','2','image/jpeg','5472','15.jpg','data/files/store_2/goods_134/201312262305341913.jpg','1388041534','2','95');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('98','2','image/jpeg','4271','16.jpg','data/files/store_2/goods_170/201312262306104597.jpg','1388041570','2','96');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('99','2','image/jpeg','4039','17.jpg','data/files/store_2/goods_27/201312262307078496.jpg','1388041627','2','97');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('101','2','image/jpeg','4000','20.jpg','data/files/store_2/goods_107/201312262308271759.jpg','1388041707','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('102','2','image/jpeg','3351','18.jpg','data/files/store_2/goods_113/201312262308337745.jpg','1388041713','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('103','2','image/jpeg','4201','21.jpg','data/files/store_2/goods_154/201312262309145699.jpg','1388041754','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('104','2','image/jpeg','92142','qrcode.jpg','data/files/store_2/coupon/201505100739525354.jpg','1431243592','4','1');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('105','2','image/jpeg','179178','qrcode.jpg','data/files/store_2/coupon/201505100742156131.jpg','1431243735','4','2');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('106','2','image/jpeg','174109','qrcode.jpg','data/files/store_2/coupon/201505100742275218.jpg','1431243747','4','2');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('107','2','image/jpeg','180324','qrcode.jpg','data/files/store_2/coupon/201505100748514699.jpg','1431244131','4','3');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('108','2','image/jpeg','87496','1.jpg','data/files/store_2/goods_179/201507020446197746.jpg','1435812380','2','1');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('109','2','image/png','1665','3.png','data/files/store_2/other/201507060650183612.png','1436165418','3','2');
DROP TABLE IF EXISTS ecm_user_coupon;
CREATE TABLE ecm_user_coupon (
  user_id int(10) unsigned NOT NULL,
  coupon_sn varchar(20) NOT NULL,
  PRIMARY KEY (user_id,coupon_sn)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_user_priv;
CREATE TABLE ecm_user_priv (
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  privs text NOT NULL,
  PRIMARY KEY (user_id,store_id)
) ENGINE=MyISAM;
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('1','0','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('2','2','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('4','4','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('5','5','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('6','6','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('7','7','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('8','8','all');
DROP TABLE IF EXISTS ecm_wxconfig;
CREATE TABLE ecm_wxconfig (
  w_id int(11) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  url varchar(255) NOT NULL,
  token varchar(255) NOT NULL,
  appid varchar(255) DEFAULT NULL,
  appsecret varchar(255) DEFAULT NULL,
  PRIMARY KEY (w_id)
) ENGINE=MyISAM;
INSERT INTO ecm_wxconfig ( `w_id`, `user_id`, `url`, `token`, `appid`, `appsecret` ) VALUES  ('1','0','http://192.168.1.101/all_ecmall/150616/index.php?app=weixin&id=0','K77wgYlP',null,null);
DROP TABLE IF EXISTS ecm_wxfile;
CREATE TABLE ecm_wxfile (
  file_id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  file_type varchar(60) NOT NULL,
  file_size int(10) NOT NULL DEFAULT '0',
  file_name varchar(255) NOT NULL,
  file_path varchar(255) NOT NULL,
  PRIMARY KEY (file_id)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_wxkeyword;
CREATE TABLE ecm_wxkeyword (
  kid int(11) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  kename varchar(300) DEFAULT NULL,
  kecontent varchar(500) DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1:文本 2：图文',
  kyword varchar(255) DEFAULT NULL,
  titles varchar(1000) DEFAULT NULL,
  imageinfo varchar(1000) DEFAULT NULL,
  linkinfo varchar(1000) DEFAULT NULL,
  ismess tinyint(1) DEFAULT NULL,
  isfollow tinyint(1) DEFAULT NULL,
  iskey tinyint(1) DEFAULT NULL,
  PRIMARY KEY (kid)
) ENGINE=MyISAM;
DROP TABLE IF EXISTS ecm_wxmenu;
CREATE TABLE ecm_wxmenu (
  id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  tags varchar(50) DEFAULT NULL,
  pid smallint(4) unsigned NOT NULL DEFAULT '0',
  spid varchar(50) DEFAULT NULL,
  add_time int(10) NOT NULL DEFAULT '0',
  items int(10) unsigned NOT NULL DEFAULT '0',
  likes varchar(100) DEFAULT NULL,
  weixin_type tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:click 1:viwe',
  ordid tinyint(3) unsigned NOT NULL DEFAULT '255',
  weixin_status tinyint(1) NOT NULL DEFAULT '0',
  weixin_keyword varchar(255) DEFAULT NULL COMMENT '关键词',
  weixin_key varchar(255) DEFAULT NULL COMMENT 'key值',
  PRIMARY KEY (id)
) ENGINE=MyISAM;
-- END ECMall 2.0 SQL Dump Program 