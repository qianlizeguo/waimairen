<?php
 
header("Content-Type:text/html;charset=utf-8"); 
define('hopedir', dirname(__FILE__).DIRECTORY_SEPARATOR);  
$config = hopedir."config/hopeconfig.php";   
$cfg = include($config); 
 
$lnk = mysql_connect($cfg['dbhost'], $cfg['dbuser'], $cfg['dbpw']) or die ('Not connected : ' . mysql_error()); 
$version = mysql_get_server_info(); 
if($version > '4.1' && $cfg['dbcharset']) {
				mysql_query("SET NAMES '".$cfg['dbcharset']."'");
} 
if($version > '5.0') {
				mysql_query("SET sql_mode=''");
}
												
if(!@mysql_select_db($cfg['dbname'])){ 
				if(@mysql_error()) {
					echo '数据库连接失败';exit;
				} else {
					mysql_select_db($cfg['dbname']);
				}
} 
mysql_query("ALTER TABLE  `xiaozu_drawbacklog` ADD  `type` INT( 11 ) ;"); 

mysql_query("ALTER TABLE  `xiaozu_goods` ADD  `good_order` INT( 11 ) ;"); 
mysql_query("ALTER TABLE  `xiaozu_goods` ADD  `parentid` INT( 11 ) ;"); 

mysql_query("ALTER TABLE  `xiaozu_onlinelog` ADD  `source` INT( 1 ) ;"); 

mysql_query("ALTER TABLE  `xiaozu_member` ADD  `sex` INT( 11 ) ;"); 
  mysql_query("ALTER TABLE  `xiaozu_order` ADD  `postdate` TEXT  NULL  ");  
  mysql_query("ALTER TABLE  `xiaozu_shopfast` ADD  `postdate` TEXT  NULL  ");  
  mysql_query("ALTER TABLE  `xiaozu_shopmarket` ADD  `postdate` TEXT  NULL  ");
 mysql_query("CREATE TABLE IF NOT EXISTS `xiaozu_imglist` (
  `imagename` varchar(255) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `addtime` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;");


 mysql_query("ALTER TABLE  `xiaozu_goods` ADD  `is_waisong` int(11) NOT NULL DEFAULT '1'   "); 
 mysql_query("ALTER TABLE  `xiaozu_goods` ADD  `is_dingtai` int(11) NOT NULL DEFAULT '1'   "); 
 mysql_query("ALTER TABLE  `xiaozu_goods` ADD  `weeks` varchar(100) NOT NULL DEFAULT '1,2,3,4,5,6,0'   "); 
 mysql_query("ALTER TABLE  `xiaozu_goods` ADD  `goodattr` varchar(25) NOT NULL   "); 
  
 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `sellcount` INT(10)   "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `goodattrdefault` varchar(25) NOT NULL   "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `ruzhutype` int(11) DEFAULT '0'    "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `qiyeimg` varchar(150) NOT NULL   "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `zmimg` varchar(150) NOT NULL   "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `fmimg` varchar(150) NOT NULL   "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `foodtongimg` varchar(150)   "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `jkzimg` varchar(150)    "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `sqimg` varchar(150) "); 
 mysql_query("ALTER TABLE  `xiaozu_shop` ADD  `qtshuoming` varchar(150) "); 


/* -- 
-- 表的结构 `xiaozu_appadv`
--  */
  mysql_query("
CREATE TABLE `xiaozu_appadv` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `img` varchar(255) default NULL,
  `type` int(1) default NULL,
  `activity` varchar(255) default NULL,
  `param` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;
 "); 

  
/*  -- 
-- 表的结构 `xiaozu_appmudel`
--  */
 mysql_query("
CREATE TABLE `xiaozu_appmudel` (
  `name` varchar(100) NOT NULL COMMENT '模块名称--固定写',
  `imgurl` varchar(255) NOT NULL COMMENT '模块图标 ',
  `is_display` int(1) NOT NULL COMMENT ' 0不在首页展示   1在首页展示',
  `cnname` varchar(100) NOT NULL COMMENT '中文名称（统一录入 无ID 仅name关键字）',
  `ctlname` varchar(100) NOT NULL COMMENT 'ctlname',
  `is_install` int(1) default '0' COMMENT '0.APP完全不显示，1APP上显示',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 ");  
/* -- 
-- 导出表中的数据 `xiaozu_appmudel`
-- 
 */
 
mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('waimai', '/upload/goods/20150721095629579.png', 1, '外卖', '', 1); "); 
mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('diancai', '/upload/goods/19950710120110494.png', 1, '点菜', '', 1); "); 
mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('dingtai', '/upload/goods/20150722151518870.png', 1, '订台', '', 1); "); 
mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('market', '/upload/goods/20150721095645974.png', 1, '超市', '', 0); "); 
mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('paotui', '/upload/goods/20150722155433262.png', 1, '跑腿', '', 0); "); 

mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('gift', '/upload/goods/20150721112610994.png', 1, '礼品', '', 1); "); 
mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('collect', '/upload/goods/20150721112615301.png', 1, '收藏', '', 1); "); 
mysql_query("INSERT INTO `xiaozu_appmudel` VALUES ('newuser', '/upload/goods/20150721112621733.png', 1, '我是新手', '', 1); "); 
 
 

 

/* -- 
-- 表的结构 `xiaozu_wxcomment`
--  */
mysql_query("
CREATE TABLE `xiaozu_wxcomment` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '微信用户uid',
  `usercontent` varchar(500) NOT NULL COMMENT '发表主题',
  `userimg` varchar(500) NOT NULL COMMENT '图片集',
  `addtime` varchar(20) NOT NULL COMMENT '添加时间',
  `cityname` varchar(25) NOT NULL,
  `areaname` varchar(25) NOT NULL,
  `streetname` varchar(25) NOT NULL,
  `is_top` int(11) NOT NULL default '0',
  `is_show` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信一起说主表' AUTO_INCREMENT=5 ;

  "); 
/*   -- 
-- 表的结构 `xiaozu_wxpjzan`
-- 
 */
mysql_query("
CREATE TABLE `xiaozu_wxpjzan` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;
  ");
/* --  
-- 表的结构 `xiaozu_wxreplycomment`
--  */
mysql_query("
CREATE TABLE `xiaozu_wxreplycomment` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '微信用户uid',
  `parentid` int(11) NOT NULL COMMENT '评论who id',
  `content` varchar(500) NOT NULL COMMENT '发表主题',
  `kejian` int(11) NOT NULL default '0' COMMENT '0所有人可见1仅对方可见',
  `addtime` varchar(20) NOT NULL COMMENT '添加时间',
  `cityname` varchar(25) NOT NULL,
  `areaname` varchar(25) NOT NULL,
  `streetname` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
  "); 

/* -- 
-- 表的结构 `xiaozu_wxuserjubao`
-- 
 */
 mysql_query("
CREATE TABLE `xiaozu_wxuserjubao` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;  
    "); 

  
   mysql_query("

  
CREATE TABLE `xiaozu_goodslibrary` (
  `id` int(20) NOT NULL auto_increment,
  `typeid` int(10) NOT NULL COMMENT '商品类型',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `cost` decimal(8,2) NOT NULL COMMENT '商品价格',
  `img` varchar(150) NOT NULL COMMENT '图片地址',
  `instro` text COMMENT '简单说明',
  `good_order` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;



  ");  
  
  mysql_query("  
  CREATE TABLE `xiaozu_goodslibrarycate` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `orderid` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


  
   ");  
echo mysql_error();
mysql_close($lnk);		 
echo 'ok';
exit;		
?>