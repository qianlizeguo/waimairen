-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1:3306
-- 生成日期: 2016 年 01 月 18 日 11:02
-- 服务器版本: 5.0.45
-- PHP 版本: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `m8wmr`
--

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_address`
--

CREATE TABLE IF NOT EXISTS `xiaozu_address` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL COMMENT '完整地址：选择地址与详细地址',
  `phone` varchar(15) NOT NULL,
  `otherphone` varchar(15) default NULL,
  `contactname` varchar(50) default NULL,
  `default` int(1) NOT NULL default '1',
  `areaid1` int(20) NOT NULL default '0' COMMENT '区域1ID',
  `areaid2` int(20) NOT NULL default '0' COMMENT '区域2ID',
  `areaid3` int(20) NOT NULL default '0' COMMENT '区域3ID',
  `sex` smallint(1) NOT NULL default '0' COMMENT '1时是男性，值为2时是女性，值为0时是未知',
  `bigadr` varchar(255) NOT NULL COMMENT '选择的地址',
  `detailadr` varchar(255) NOT NULL COMMENT '详细地址',
  `lat` decimal(9,6) NOT NULL COMMENT '地址坐标',
  `lng` decimal(9,6) NOT NULL COMMENT '地址坐标',
  `addtime` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `xiaozu_address`
--

INSERT INTO `xiaozu_address` (`id`, `userid`, `username`, `address`, `phone`, `otherphone`, `contactname`, `default`, `areaid1`, `areaid2`, `areaid3`, `sex`, `bigadr`, `detailadr`, `lat`, `lng`, `addtime`) VALUES
(1, 2937, 'wmr2', '凯旋门1212', '15738832712', '', '我不做大哥', 1, 0, 0, 0, 2, '', '', 0.000000, 0.000000, 1452597390),
(3, 2936, 'wmr', '凯旋门', '15738832712', '', '测试', 1, 0, 0, 0, 0, '', '', 0.000000, 0.000000, 1452849582);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_admin`
--

CREATE TABLE IF NOT EXISTS `xiaozu_admin` (
  `uid` int(5) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  `logintime` int(11) NOT NULL,
  `loginip` varchar(30) default NULL,
  `limit` text,
  `groupid` int(20) NOT NULL default '1',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- 导出表中的数据 `xiaozu_admin`
--

INSERT INTO `xiaozu_admin` (`uid`, `username`, `password`, `time`, `logintime`, `loginip`, `limit`, `groupid`) VALUES
(1, 'admin', 'f6d884998357f07ea71f903bc3f79073', 0, 1453101715, '127.0.0.1', 'siteset,seo_setsave,limitset,savelimitset,footlink,savefootlink,toplink,savetoplink,jflimitset,manegelist,manegeadd,editmanege,manegesave,delmanege,memberlist,addmember,editmember,membersave,delmember,oauthlist,deloauth,shoplist,shoplistw,shoptype,addshoptype,editshoptype,saveshoptype,delshoptype,arealist,addarea,eidtarea,savearea,cxsign,addcxsign,editcxsign,orderlist,ordertotal,markettj,marketorder,orderyjin,commentlist,delcommlist,asklist,delask,askshoplist,singlelist,addsingle,savesingle,delsingle,adv,addadv,advtype,giftlist,addgift,gifttype,addgifttype,giftlog,emailset,smsset,sendtasklist,sendtask,cardlist,addcard,juanlist,addjuan,excomm,pmes,loginlist,paylist,othertpl,ordertodayw,ordertoday,ordersend,basedata,rebkdata,market,addmarket,editmarket,delmarket,addmarkettype,delmarkettype,listmarkettype,friendlink,shoptopatt,wxset,wxback,wxmenu,printlog', 1);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_adv`
--

CREATE TABLE IF NOT EXISTS `xiaozu_adv` (
  `id` int(20) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL COMMENT '广告标题',
  `advtype` varchar(10) NOT NULL COMMENT '广告类型code',
  `img` varchar(255) default NULL COMMENT '图片地址',
  `linkurl` varchar(255) default NULL COMMENT '超链接',
  `module` varchar(50) default 'newgreen',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `xiaozu_adv`
--

INSERT INTO `xiaozu_adv` (`id`, `title`, `advtype`, `img`, `linkurl`, `module`) VALUES
(1, '7.0升级中', 'lunbo', '/upload/goods/20160110153053459.jpg', '#', 'm7'),
(2, '7.0更新中', 'marketlb', '/upload/goods/20160110154126310.jpg', '#', 'm7'),
(3, '微信', 'weixinlb', '/upload/goods/20160109181719939.png', '#', 'm7'),
(6, '111', 'weixinlb', '/upload/goods/20160109181732839.png', '#', 'm7'),
(5, '跑腿PC端上线了', 'paotuiimg', '/upload/goods/20150829102419498.png', '#', 'm7'),
(7, ' 微信端积分总换页面一张图片', 'wxgift', '/upload/goods/20160110154138176.png', '#', 'm7');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_appadv`
--

CREATE TABLE IF NOT EXISTS `xiaozu_appadv` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `img` varchar(255) default NULL,
  `type` int(1) default NULL,
  `activity` varchar(255) default NULL,
  `param` varchar(255) default NULL,
  `orderid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 导出表中的数据 `xiaozu_appadv`
--

INSERT INTO `xiaozu_appadv` (`id`, `name`, `img`, `type`, `activity`, `param`, `orderid`) VALUES
(17, '鲜花蛋糕', '/upload/goods/20160109182033288.png', 2, 'waimai', '110', 3),
(18, '土豪馆', '/upload/goods/20160109182659492.png', 2, 'market', '116', 5),
(9, '美食外卖', '/upload/goods/20160109181632354.png', 2, 'waimai', '75', 1),
(10, '便利店', '/upload/goods/20160109181649576.png', 2, 'market', '116', 2),
(20, '送药上门', '/upload/goods/20160109182908925.png', 2, 'waimai', '73', 8),
(19, '鲜果蔬菜', '/upload/goods/20160109182841973.png', 2, 'waimai', '111', 6),
(14, 'app轮播图1', '/upload/goods/20160110135733651.png', 1, '', '0', 0),
(15, 'p1', '/upload/goods/20160110135831573.png', 3, '', '0', 0),
(21, '网站专送', '/upload/goods/20160109183041970.png', 2, 'waimai', '72', 7),
(22, 'app轮播图2', '/upload/goods/20160110135747797.png', 1, '', '0', 0),
(23, 'p2', '/upload/goods/20160110135843356.png', 3, '', '0', 0),
(24, 'p3', '/upload/goods/20160110135856155.png', 3, '', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_appbuyerlogin`
--

CREATE TABLE IF NOT EXISTS `xiaozu_appbuyerlogin` (
  `uid` int(20) NOT NULL,
  `channelid` varchar(100) NOT NULL,
  `addtime` int(12) NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_appbuyerlogin`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_applogin`
--

CREATE TABLE IF NOT EXISTS `xiaozu_applogin` (
  `uid` int(20) NOT NULL,
  `channelid` varchar(100) NOT NULL,
  `addtime` int(12) NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_applogin`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_apploginps`
--

CREATE TABLE IF NOT EXISTS `xiaozu_apploginps` (
  `uid` int(20) NOT NULL,
  `channelid` varchar(100) NOT NULL,
  `addtime` int(12) NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_apploginps`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_appmudel`
--

CREATE TABLE IF NOT EXISTS `xiaozu_appmudel` (
  `name` varchar(100) NOT NULL COMMENT '模块名称--固定写',
  `imgurl` varchar(255) NOT NULL COMMENT '模块图标 ',
  `is_display` int(1) NOT NULL COMMENT ' 0不在首页展示   1在首页展示',
  `cnname` varchar(100) NOT NULL COMMENT '中文名称（统一录入 无ID 仅name关键字）',
  `ctlname` varchar(100) NOT NULL COMMENT 'ctlname',
  `is_install` int(1) default '0' COMMENT '0.APP完全不显示，1APP上显示',
  `orderid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_appmudel`
--

INSERT INTO `xiaozu_appmudel` (`name`, `imgurl`, `is_display`, `cnname`, `ctlname`, `is_install`, `orderid`) VALUES
('waimai', '/upload/goods/20151209172321460.png', 1, '外卖', '', 1, 1),
('market', '/upload/goods/20151209172327928.png', 1, '超市', '', 0, 2),
('diancai', '/upload/goods/20151209172334880.png', 1, '点菜', '', 1, 3),
('dingtai', '/upload/goods/20151209172339618.png', 1, '订台', '', 1, 4),
('paotui', '/upload/goods/20151209174536887.png', 1, '跑腿', '', 0, 5),
('gift', '/upload/goods/20160110135537453.png', 1, '礼品', '', 1, 2),
('collect', '/upload/goods/20160110135528286.png', 1, '收藏', '', 1, 1),
('newuser', '/upload/goods/20160110135543449.png', 1, '我是新手', '', 1, 3);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_area`
--

CREATE TABLE IF NOT EXISTS `xiaozu_area` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '区域名称',
  `pin` varchar(5) default NULL COMMENT '首字母拼音',
  `parent_id` int(20) NOT NULL default '0' COMMENT '上级区域ID',
  `orderid` int(20) default NULL COMMENT '排序ID',
  `imgurl` varchar(255) default NULL COMMENT '一级地址图片地址',
  `lng` decimal(9,6) NOT NULL default '0.000000',
  `lat` decimal(9,6) NOT NULL default '0.000000',
  `show` int(1) default '0',
  `is_com` int(1) default '0',
  `admin_id` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

--
-- 导出表中的数据 `xiaozu_area`
--

INSERT INTO `xiaozu_area` (`id`, `name`, `pin`, `parent_id`, `orderid`, `imgurl`, `lng`, `lat`, `show`, `is_com`, `admin_id`) VALUES
(51, '温江', 'm', 51, 1, '', 104.071216, 30.576279, 0, 1, 34),
(70, '郑州', 'zz', 0, 0, '', 113.583063, 34.768873, 0, 0, 67),
(71, '二七区', 'eqq', 70, 0, '', 113.733764, 34.762467, 0, 0, 67),
(25, '大阪府', 'sz', 25, 1, '', 114.066112, 22.548515, 0, 1, 51),
(26, '南山区', 'ns', 25, 2, '', 113.936950, 22.539017, 0, 1, 51),
(27, '大新小学', 'dx', 26, 3, '', 113.922392, 22.542220, 0, 1, 51),
(28, '宝安区', 'ba', 25, 2, '', 113.889506, 22.559626, 0, 1, 51),
(29, '宝安中学初中部', 'bazx', 28, 3, '', 113.919872, 22.566068, 0, 1, 51),
(30, '宝安中学高中部', 'bagz', 28, 3, '', 113.926329, 22.576314, 0, 1, 51),
(31, '南山实验小学', 'nssy', 32, 3, '', 113.933733, 22.540184, 0, 1, 51),
(32, '阳光小学', 'ygxx', 26, 3, '', 113.919121, 22.529352, 0, 1, 51),
(49, '龙岗', 'LG', 48, 0, '', 113.987383, 22.779579, 0, 0, 29),
(50, '坂田', 'BT', 49, 0, '', 113.987383, 22.779579, 0, 0, 29),
(37, '洪浪北', 'HLB', 37, 22, '', 0.000000, 0.000000, 0, 1, 37),
(38, '深圳', 'gz', 38, 0, '', 113.619794, 34.754266, 0, 0, 0),
(39, '沧州', 'cangz', 39, 1, '', 0.000000, 0.000000, 0, 0, 0),
(40, '沧州', 'cangz', 40, 2, '', 0.000000, 0.000000, 0, 0, 0),
(41, '沧州', 'cangz', 41, 1, '', 0.000000, 0.000000, 0, 0, 0),
(48, '广安门', 'gam', 54, 1, '', 116.403565, 39.914168, 0, 0, 29),
(43, '邯郸', 'handa', 43, 1, '', 0.000000, 0.000000, 0, 0, 45),
(44, '大阪市', 'dbf', 44, 1, '', 0.000000, 0.000000, 0, 1, 29),
(45, '打算', 'ds', 47, 1, '', 0.000000, 0.000000, 0, 1, 29),
(46, '大阪市', 'dbs', 45, 111, '', 0.000000, 0.000000, 0, 1, 29),
(47, '浪速区', 'nsq', 46, 211, '', 0.000000, 0.000000, 0, 1, 29),
(53, '广安门', 'ganme', 53, 0, '', 0.000000, 0.000000, 0, 0, 29),
(54, '西城', 'xc', 48, 0, '', 0.000000, 0.000000, 0, 0, 29),
(55, '深圳', 'SZ', 51, 0, '', 0.000000, 0.000000, 0, 1, 34),
(73, '金中环', 'jzh', 72, 0, '', 113.611163, 34.763358, 0, 0, 67),
(111, '天津', 'tj', 111, 0, '', 117.205914, 39.090908, 0, 1, 0),
(108, '五缘湾运动馆', 'ydg', 107, 0, '', 118.193455, 24.532825, 0, 0, 88),
(68, '五道口', 'B', 69, 1, '', 116.413554, 39.911013, 0, 1, 0),
(72, '中原区', 'zyq', 70, 0, '', 113.659959, 34.745385, 0, 0, 67),
(69, '海淀区', 'h', 68, 2, '', 0.000000, 0.000000, 0, 1, 0),
(115, '乌鲁木齐市', 'wlmq', 0, 0, '', 113.612169, 34.762409, 0, 1, 82),
(93, '天津', 'tj', 93, 1, '', 117.205914, 39.090908, 0, 1, 67),
(118, 'xxx大街', 'xxx', 117, 0, '', 109.219784, 34.371991, 0, 0, 67),
(116, '二七万达', 'eqwd', 71, 0, '', 0.000000, 0.000000, 0, 0, 67),
(117, '临潼', 'lt', 0, 0, '', 109.192834, 34.370860, 0, 0, 67),
(109, '宝拓大厦', 'xxx', 108, 0, '', 118.193653, 24.534074, 0, 0, 88),
(107, '厦门市', '0592', 0, 0, '', 118.095915, 24.485821, 0, 1, 88),
(114, '郑州道', 'kfq', 111, 0, '', 0.000000, 0.000000, 0, 0, 0),
(112, '济南', 'jn', 111, 0, '', 0.000000, 0.000000, 0, 0, 0),
(119, 'xxx大厦', 'xxxx', 118, 0, '', 0.000000, 0.000000, 0, 0, 67),
(120, '广东省', 'gds', 0, 1, '', 113.272698, 23.137962, 0, 1, 0),
(121, '惠州市', 'hzs', 120, 0, '', 114.423348, 23.116409, 0, 1, 0),
(122, '惠东县', 'hds', 121, 0, '', 114.726077, 22.991444, 0, 1, 0),
(123, '重庆', 'CQ', 0, 0, '', 106.585024, 29.565458, 0, 1, 0),
(124, '南京', 'nj', 0, 1, '', 118.802891, 32.064735, 0, 1, 82),
(131, '西安', 'xi''an', 0, 1, '', 108.953485, 34.269017, 0, 1, 88),
(130, '长安区', 'xi''an', 130, 1, '', 0.000000, 0.000000, 0, 1, 0),
(132, '长安区', 'chang', 131, 2, '', 108.883920, 34.169496, 0, 1, 88);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_areashop`
--

CREATE TABLE IF NOT EXISTS `xiaozu_areashop` (
  `areaid` int(20) default NULL,
  `shopid` int(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_areashop`
--

INSERT INTO `xiaozu_areashop` (`areaid`, `shopid`) VALUES
(25, 71),
(26, 71),
(25, 72),
(26, 72),
(27, 72),
(31, 72),
(32, 72),
(37, 74),
(25, 56),
(26, 56),
(27, 56),
(25, 54),
(26, 54),
(27, 54),
(25, 53),
(26, 53),
(116, 171),
(27, 53),
(25, 3),
(25, 52),
(72, 168),
(26, 52),
(27, 52),
(28, 3),
(29, 3),
(70, 169),
(30, 3),
(27, 71),
(71, 169),
(73, 168),
(31, 71),
(117, 156),
(32, 71),
(45, 45),
(117, 157),
(70, 4),
(107, 4),
(71, 4),
(51, 90),
(116, 168),
(46, 45),
(47, 45),
(45, 87),
(46, 87),
(70, 154),
(93, 136),
(47, 87),
(93, 78),
(111, 150),
(70, 155),
(70, 118),
(71, 118),
(70, 103),
(72, 118),
(73, 118),
(71, 154),
(73, 76),
(70, 104),
(72, 4),
(72, 169),
(116, 154),
(70, 167),
(71, 171),
(70, 171),
(71, 155),
(73, 169),
(71, 167),
(116, 155),
(111, 153),
(107, 149),
(107, 151),
(116, 76),
(114, 153),
(72, 171),
(93, 142),
(108, 151),
(108, 149),
(73, 142),
(72, 142),
(71, 142),
(70, 142),
(70, 142),
(73, 171),
(93, 140),
(70, 105),
(118, 157),
(71, 105),
(72, 105),
(73, 105),
(71, 104),
(114, 150),
(72, 104),
(73, 104),
(71, 103),
(116, 169),
(72, 167),
(120, 158),
(111, 152),
(109, 149),
(108, 4),
(119, 157),
(121, 158),
(73, 167),
(70, 168),
(109, 151),
(73, 4),
(118, 156),
(72, 103),
(109, 4),
(73, 103),
(116, 103),
(116, 104),
(119, 156),
(116, 105),
(122, 158),
(116, 167),
(71, 168),
(116, 4),
(116, 173),
(73, 173),
(72, 173),
(71, 173),
(70, 173),
(116, 174),
(73, 174),
(72, 174),
(71, 174),
(70, 174),
(116, 175),
(73, 175),
(72, 175),
(71, 175),
(70, 175),
(116, 176),
(73, 176),
(72, 176),
(71, 176),
(70, 176),
(116, 177),
(73, 177),
(72, 177),
(71, 177),
(70, 177),
(116, 172),
(73, 172),
(72, 172),
(71, 172),
(70, 172),
(116, 77),
(73, 77),
(72, 77),
(71, 77),
(70, 77),
(72, 76),
(71, 76),
(70, 76);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_ask`
--

CREATE TABLE IF NOT EXISTS `xiaozu_ask` (
  `id` int(20) NOT NULL auto_increment,
  `uid` int(20) NOT NULL,
  `shopid` int(20) NOT NULL default '0' COMMENT '当为网站留言时此值为0',
  `content` varchar(250) NOT NULL,
  `addtime` int(11) NOT NULL,
  `typeid` int(2) NOT NULL,
  `replycontent` varchar(250) default NULL,
  `replytime` int(11) NOT NULL default '0',
  `replyname` varchar(255) default NULL COMMENT '回复者',
  `is_show` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `xiaozu_ask`
--

INSERT INTO `xiaozu_ask` (`id`, `uid`, `shopid`, `content`, `addtime`, `typeid`, `replycontent`, `replytime`, `replyname`, `is_show`) VALUES
(1, 6, 0, '外卖人网上订餐系统8.0更新上线了', 1451004008, 5, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_card`
--

CREATE TABLE IF NOT EXISTS `xiaozu_card` (
  `id` int(20) NOT NULL auto_increment,
  `card` varchar(50) NOT NULL,
  `card_password` varchar(255) NOT NULL,
  `uid` int(20) NOT NULL default '0',
  `username` varchar(100) default NULL,
  `cost` int(4) NOT NULL default '0',
  `status` int(1) NOT NULL default '0',
  `creattime` int(12) NOT NULL default '0',
  `usetime` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `xiaozu_card`
--

INSERT INTO `xiaozu_card` (`id`, `card`, `card_password`, `uid`, `username`, `cost`, `status`, `creattime`, `usetime`) VALUES
(1, 'wmr145049752908085', 'fb6d1ebfb42', 6, 'wmr', 10, 1, 1450497529, 0),
(2, 'wmr145049752916602', 'ff45de2d588', 0, NULL, 10, 0, 1450497529, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_codemobile`
--

CREATE TABLE IF NOT EXISTS `xiaozu_codemobile` (
  `id` int(30) NOT NULL auto_increment,
  `phone` varchar(50) NOT NULL,
  `addtime` int(12) NOT NULL,
  `code` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_codemobile`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_collect`
--

CREATE TABLE IF NOT EXISTS `xiaozu_collect` (
  `id` int(20) NOT NULL auto_increment,
  `uid` int(20) NOT NULL,
  `collectid` int(20) NOT NULL COMMENT '对应商品/店铺ID',
  `collecttype` int(1) NOT NULL COMMENT '0店铺  1商品',
  `shopuid` int(20) NOT NULL COMMENT '店铺所有者ID',
  `orderid` int(11) NOT NULL default '100',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_collect`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_comment`
--

CREATE TABLE IF NOT EXISTS `xiaozu_comment` (
  `id` int(20) NOT NULL auto_increment,
  `orderid` int(20) NOT NULL,
  `orderdetid` int(20) NOT NULL,
  `shopid` int(20) NOT NULL,
  `goodsid` int(20) NOT NULL,
  `uid` int(20) NOT NULL default '0',
  `content` varchar(250) default NULL,
  `addtime` int(12) NOT NULL default '0',
  `replycontent` varchar(250) default NULL,
  `replytime` int(11) NOT NULL default '0',
  `point` int(1) NOT NULL COMMENT '评分',
  `is_show` int(1) NOT NULL default '0' COMMENT '0展示，1不展示',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_drawbacklog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_drawbacklog` (
  `id` int(20) NOT NULL auto_increment,
  `uid` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `orderid` int(20) NOT NULL,
  `shopid` int(11) NOT NULL,
  `content` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `contactname` varchar(100) NOT NULL,
  `status` int(1) default '0' COMMENT '退款状态 0未待处理 1为已退 2为拒绝退款',
  `addtime` int(12) default NULL,
  `cost` decimal(6,2) default '0.00',
  `bkcontent` varchar(255) default NULL COMMENT '回复说明',
  `admin_id` int(20) NOT NULL default '0',
  `type` int(11) NOT NULL default '0' COMMENT '0为待商家确认 1为商家同意退款 2为商家拒绝退款',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_drawbacklog`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_excomment`
--

CREATE TABLE IF NOT EXISTS `xiaozu_excomment` (
  `id` int(20) NOT NULL auto_increment,
  `userid` int(20) NOT NULL COMMENT '用户ID',
  `username` varchar(255) NOT NULL,
  `userlog` varchar(255) NOT NULL,
  `addtime` int(12) NOT NULL COMMENT '评价时间',
  `score` int(1) NOT NULL default '0' COMMENT '评分',
  `comtype` int(1) NOT NULL COMMENT '1网站 2订单   ',
  `scoreto` varchar(255) default '0' COMMENT '评价对象',
  `shopid` int(20) NOT NULL default '0' COMMENT '店铺ID',
  `content` text COMMENT '内容',
  `comacout` int(5) NOT NULL default '0' COMMENT '被回复次数',
  `orderid` int(20) default '0' COMMENT '订单ID',
  `imgurl` varchar(255) default NULL,
  `orderctime` int(12) default '0' COMMENT '订单消费时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 导出表中的数据 `xiaozu_excomment`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_extendcate`
--

CREATE TABLE IF NOT EXISTS `xiaozu_extendcate` (
  `goodsid` int(20) NOT NULL,
  `catid` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_extendcate`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_extendco`
--

CREATE TABLE IF NOT EXISTS `xiaozu_extendco` (
  `id` int(20) NOT NULL auto_increment,
  `userid` int(20) default NULL,
  `username` varchar(200) NOT NULL,
  `userlog` varchar(255) NOT NULL,
  `comid` int(20) NOT NULL,
  `addtime` int(12) NOT NULL,
  `content` text,
  `parent_id` int(20) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_extendco`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_friendlink`
--

CREATE TABLE IF NOT EXISTS `xiaozu_friendlink` (
  `id` int(20) NOT NULL auto_increment,
  `type` smallint(1) NOT NULL default '1',
  `typevalue` varchar(255) default NULL,
  `linkurl` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `orderid` int(10) default '99',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `xiaozu_friendlink`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_gift`
--

CREATE TABLE IF NOT EXISTS `xiaozu_gift` (
  `id` int(20) NOT NULL auto_increment,
  `market_cost` decimal(10,2) NOT NULL,
  `score` int(7) NOT NULL default '0',
  `title` varchar(100) default NULL,
  `content` text,
  `typeid` int(10) NOT NULL default '0',
  `sell_count` int(5) NOT NULL default '0' COMMENT '销售数量',
  `stock` int(6) NOT NULL default '0' COMMENT '库存',
  `img` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `xiaozu_gift`
--

INSERT INTO `xiaozu_gift` (`id`, `market_cost`, `score`, `title`, `content`, `typeid`, `sell_count`, `stock`, `img`) VALUES
(1, 100.00, 300, '外卖人公仔', '外卖人公仔兑换', 1, 14, 996, '/upload/goods/20160110153409445.jpg'),
(2, 80.00, 100, '熊猫公仔', '聚宝盒：专注收集各种大小钱币、灵气、运气、财运等等', 1, 11, 99, '/upload/goods/20160110153733471.jpg'),
(3, 168.00, 500, '大白', '<span style="color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;text-indent:28px;">大白（Baymax），迪士尼动画《</span><a target="_blank" href="http://baike.baidu.com/view/12135859.htm" style="color:#136ec2;text-decoration:none;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;text-indent:28px;">超能陆战队</a><span style="color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;text-indent:28px;">》中的健康机器人，是一个体型胖胖的充气机器人，因呆萌的外表和善良的本质获得大家的喜爱，被称为“萌神”。</span>', 1, 20, 81, '/upload/goods/20160110153942795.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_giftlog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_giftlog` (
  `id` int(10) NOT NULL auto_increment,
  `giftid` int(20) NOT NULL,
  `uid` int(20) NOT NULL,
  `score` int(6) NOT NULL,
  `addtime` int(11) NOT NULL,
  `status` int(1) NOT NULL default '1',
  `address` varchar(150) default NULL,
  `telphone` varchar(15) default NULL,
  `contactman` varchar(150) default NULL,
  `count` int(2) NOT NULL default '0',
  `content` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 导出表中的数据 `xiaozu_giftlog`
--

INSERT INTO `xiaozu_giftlog` (`id`, `giftid`, `uid`, `score`, `addtime`, `status`, `address`, `telphone`, `contactman`, `count`, `content`) VALUES
(1, 3, 6, 50, 1450079319, 0, '金中环', '15738832712', '大个子', 1, '备注'),
(2, 1, 2630, 3000, 1452326225, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(3, 3, 2630, 50, 1452326264, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(4, 3, 2630, 50, 1452326266, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(5, 3, 2630, 50, 1452326268, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(6, 3, 2630, 50, 1452326272, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(7, 3, 2630, 50, 1452326274, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(8, 3, 2630, 50, 1452326513, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(9, 3, 2630, 50, 1452326516, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(10, 3, 2630, 50, 1452326518, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(11, 3, 2630, 50, 1452326521, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(12, 3, 2630, 50, 1452326524, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(13, 3, 2630, 50, 1452326529, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(14, 3, 2630, 50, 1452326534, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(15, 3, 2630, 50, 1452326537, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(16, 3, 2630, 50, 1452326540, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(17, 3, 2630, 50, 1452326542, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(18, 3, 2630, 50, 1452326545, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(19, 3, 2630, 50, 1452326547, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(20, 3, 2630, 50, 1452326870, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(21, 1, 2630, 3000, 1452335259, 0, '咯摸摸摸', '18739982036', '盛曹冲', 1, ''),
(22, 1, 2630, 300, 1452481261, 0, '吗', '18739982036', '盛曹冲', 1, ''),
(23, 1, 2630, 300, 1452481392, 0, '陇海路与桐柏路口', '18739982036', '盛曹冲', 1, ''),
(24, 2, 2931, 100, 1452485449, 0, '', '13444444444', '周生', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_gifttype`
--

CREATE TABLE IF NOT EXISTS `xiaozu_gifttype` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `orderid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `xiaozu_gifttype`
--

INSERT INTO `xiaozu_gifttype` (`id`, `name`, `orderid`) VALUES
(1, '所有', 1);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_goods`
--

CREATE TABLE IF NOT EXISTS `xiaozu_goods` (
  `id` int(20) NOT NULL auto_increment,
  `typeid` int(10) NOT NULL COMMENT '商品类型',
  `parentid` int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `count` int(5) NOT NULL COMMENT '商品数量',
  `cost` decimal(8,2) NOT NULL COMMENT '商品价格',
  `img` varchar(150) NOT NULL COMMENT '图片地址',
  `point` int(5) NOT NULL COMMENT '评分',
  `sellcount` int(5) NOT NULL COMMENT '销售数量',
  `shopid` int(1) NOT NULL COMMENT '店铺ID',
  `uid` int(20) NOT NULL,
  `signid` varchar(100) NOT NULL COMMENT '促销标签ID集',
  `pointcount` int(5) NOT NULL default '0' COMMENT '评价次数',
  `instro` text COMMENT '简单说明',
  `descgoods` varchar(255) default NULL COMMENT '商品简述',
  `daycount` int(5) NOT NULL default '0' COMMENT '每日销售数量',
  `marketcost` decimal(8,2) NOT NULL COMMENT '超市价格',
  `is_com` varchar(1) NOT NULL default '0' COMMENT '商城使用字段 1首页推荐',
  `show_com` int(1) NOT NULL default '0' COMMENT '是否在店铺展示中显示',
  `is_hot` tinyint(1) NOT NULL default '0' COMMENT '热卖',
  `is_new` tinyint(1) NOT NULL default '0' COMMENT '新品',
  `bagcost` decimal(3,2) NOT NULL default '0.00' COMMENT '打包费',
  `shoptype` int(1) NOT NULL COMMENT '0外卖1超市',
  `good_order` int(11) default '0',
  `is_waisong` int(11) NOT NULL default '1',
  `is_dingtai` int(11) NOT NULL default '1',
  `weeks` varchar(100) NOT NULL default '1,2,3,4,5,6,0',
  `goodattr` varchar(25) NOT NULL,
  `have_det` int(1) NOT NULL default '0' COMMENT '1表示是多个规格商品 否则0 ',
  `product_attr` text NOT NULL COMMENT '表示规格数组  使用的规格值',
  `is_cx` int(1) NOT NULL default '0' COMMENT '是否开启商品促销，默认0未开启，1开启',
  PRIMARY KEY  (`id`),
  KEY `shopid` (`shopid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1701 ;

--
-- 导出表中的数据 `xiaozu_goods`
--

INSERT INTO `xiaozu_goods` (`id`, `typeid`, `parentid`, `name`, `count`, `cost`, `img`, `point`, `sellcount`, `shopid`, `uid`, `signid`, `pointcount`, `instro`, `descgoods`, `daycount`, `marketcost`, `is_com`, `show_com`, `is_hot`, `is_new`, `bagcost`, `shoptype`, `good_order`, `is_waisong`, `is_dingtai`, `weeks`, `goodattr`, `have_det`, `product_attr`, `is_cx`) VALUES
(1632, 235, 5930, '巧克力圣代', 100, 30.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1631, 235, 102, '奇异果西米露', 100, 22.00, '/upload/user/20150915184518281.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1630, 234, 95, '法式烤布蕾', 100, 22.00, '/upload/user/20150915184325181.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1629, 234, 97, '红石榴雪葩', 100, 22.00, '/upload/user/20150915184356657.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1628, 234, 101, '木瓜雪耳糖水', 100, 22.00, '/upload/user/20150915184505892.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1627, 233, 6137, '红牛', 100, 5.00, '/upload/pliang/20160109200442385.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1626, 233, 6138, '冰红茶', 100, 5.00, '/upload/pliang/20160109200443891.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1624, 232, 6135, '恒大冰泉', 99, 4.00, '/upload/pliang/20160109200439857.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1625, 232, 6136, '芬达', 100, 5.00, '/upload/pliang/20160109200437214.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1623, 232, 6134, '农夫山泉', 99, 5.00, '/upload/pliang/20160109200438641.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1622, 232, 6133, '鲜榨豆浆', 100, 5.00, '/upload/pliang/20160109200441572.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1621, 199, 6132, '雪碧', 98, 5.00, '/upload/pliang/20160109200442877.jpg', 0, 2, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1615, 144, 6156, '多口味素牛肉', 98, 8.00, '/upload/pliang/20160109213059929.jpg', 0, 2, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1616, 144, 6157, '香辣鸭脖32g/袋', 98, 5.00, '/upload/pliang/20160109213058781.jpg', 0, 2, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1617, 144, 6158, '零食豪杰缘粗粮', 100, 5.00, '/upload/pliang/20160109213052197.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1609, 194, 6159, '金珍香酥小黄鱼', 100, 5.00, '/upload/pliang/20160109213053298.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1610, 194, 6160, '清真锅巴香脆', 100, 5.00, '/upload/pliang/20160109213059929.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1611, 194, 6161, '香菇牛板筋', 100, 5.00, '/upload/pliang/20160109213058781.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1635, 201, 6168, '凯撒伯格啤酒320ml', 100, 5.00, '/upload/pliang/20160109214108986.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1634, 201, 6166, '哈尔滨冰爽330ml', 100, 5.00, '/upload/pliang/20160109214110141.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1633, 201, 6165, '金星原浆啤酒', 100, 5.00, '/upload/pliang/20160109214107623.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1642, 202, 6179, '洋河大曲', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1643, 202, 6180, '海之蓝', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1641, 202, 6178, '杏花村醇柔', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1640, 202, 6177, '洋河大曲蓝瓷', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1639, 202, 6176, '53°汾酒裸瓶装475ml', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1651, 204, 6175, '拉菲传奇波尔多红葡萄', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1644, 203, 6183, '六度朗姆', 100, 10.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1645, 203, 6181, '威尼斯之花', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1646, 203, 6182, '真炫鸡尾酒', 100, 10.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1031, 284, 5834, '麻辣豆腐盖饭', 222, 8.00, '/upload/user/20160109191132249.jpg', 5, 33, 4, 0, '', 3, '纯正野山菌搭配野山猪肉给你味蕾的享受。', '纯正野山菌搭配野山猪肉。', 111, 0.00, '1', 0, 0, 1, 1.00, 0, 1, 1, 1, '1,2,3,4,5,6,0', '份', 1, 'a:1:{i:1;a:6:{s:2:"id";s:1:"1";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"份量";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"0";s:3:"det";a:2:{i:0;a:5:{s:2:"id";s:1:"2";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"大份";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"1";}i:1;a:5:{s:2:"id";s:1:"3";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"小份";s:7:"orderid";s:1:"2";s:9:"parent_id";s:1:"1";}}}}', 1),
(871, 183, 5848, '虾仁面', 219, 30.00, '/upload/user/20160109162745207.jpg', 5, 437, 4, 0, '', 2, '来自好客山东魅力青岛的海捕大虾，搭配松嫩平原的的精品小麦糅合而成这一碗的精华', '来自好客山东魅力青岛的海捕大虾，搭配松嫩平原的的精品小麦', 0, 0.00, '1', 0, 0, 0, 0.00, 0, 1, 1, 1, '1,2,3,4,5,6,0', '份', 0, '', 0),
(1638, 201, 6170, '冰纯嘉士伯听装500ml', 100, 5.00, '/upload/pliang/20160109214107623.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1637, 201, 6169, '喜力听装500ml', 100, 5.00, '/upload/pliang/20160109214112585.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1636, 201, 6167, '凯撒伯格啤酒500ml', 100, 5.00, '/upload/pliang/20160109214108854.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(868, 183, 5845, '清汤面', 1220, 10.00, '/upload/pliang/20150711090336207.jpg', 5, 56, 4, 0, '', 1, '秘制牦牛骨高汤，佐以冬虫夏草人参当归。清醇汤底，温补滋养。', '秘制牦牛骨高汤，佐以冬虫夏草人参当归。清醇汤底，温补滋养。', 0, 0.00, '0', 0, 0, 0, 0.00, 0, 2, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(867, 183, 5844, '牛肉盖浇饭', 222, 31.00, '/upload/pliang/20150711085306122.jpg', 0, 31, 4, 0, '', 0, '南阳黄牛肉，瓦罐焖煮，原汁原味，搭配粒粒晶莹剔透的龙乡大米。给你超值的想象。', '南阳黄牛肉，瓦罐焖煮，原汁原味，搭配粒粒晶莹剔透的龙乡大米。', 0, 0.00, '0', 0, 0, 0, 0.00, 0, 3, 1, 1, '1,2,3,4,5,6,0', '', 1, 'a:1:{i:1;a:6:{s:2:"id";s:1:"1";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"份量";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"0";s:3:"det";a:2:{i:0;a:5:{s:2:"id";s:1:"2";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"大份";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"1";}i:1;a:5:{s:2:"id";s:1:"3";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"小份";s:7:"orderid";s:1:"2";s:9:"parent_id";s:1:"1";}}}}', 0),
(869, 183, 5846, '蒜汁拌面', 222, 20.00, '/upload/pliang/20150711090331680.jpg', 0, 8, 4, 0, '', 0, '一碗能让你忆起曾经的面。', '一碗能让你忆起曾经的面。', 92, 0.00, '1', 0, 0, 0, 0.00, 0, 4, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1647, 204, 6171, '百年张裕干红葡萄酒', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(872, 183, 5849, '香菇热干面', 222, 15.00, '/upload/pliang/20150711090311884.jpg', 0, 6, 4, 0, '', 0, '九头鸟热干面搭配野生香菇，这一碗最武汉。', '九头鸟热干面搭配野生香菇，这一碗最武汉。', 0, 0.00, '0', 0, 0, 0, 0.00, 0, 5, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(873, 183, 5850, '鸡蛋捞面', 222, 15.00, '/upload/user/20160109191302634.jpg', 0, 1, 4, 0, '', 0, '北京三黄鸡，东北渍胡萝卜，精品黄豆。搭配出一道地道京味，宫保鸡丁', '北京三黄鸡，东北渍胡萝卜，精品黄豆。搭配出一道地道京味，宫保鸡丁', 0, 0.00, '0', 0, 0, 0, 0.00, 0, 6, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(874, 183, 5851, '鱼香肉丝盖浇饭', 222, 15.00, '/upload/pliang/20150711085318285.jpg', 0, 1, 4, 0, '', 0, '一道汉族传统名菜，鱼香调味，菜色红润，肉嫩质鲜。', '一道汉族传统名菜，鱼香调味，菜色红润，肉嫩质鲜。', 0, 0.00, '0', 0, 0, 0, 0.00, 0, 7, 1, 1, '1,2,3,4,5,6,0', '', 1, 'a:1:{i:1;a:6:{s:2:"id";s:1:"1";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"份量";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"0";s:3:"det";a:2:{i:0;a:5:{s:2:"id";s:1:"2";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"大份";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"1";}i:1;a:5:{s:2:"id";s:1:"3";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"小份";s:7:"orderid";s:1:"2";s:9:"parent_id";s:1:"1";}}}}', 0),
(875, 284, 5852, '炸酱面', 222, 15.00, '/upload/user/20160109192943133.jpg', 0, 3, 4, 0, '', 0, '老北京地道风味，猪肉丁炸酱配合黄瓜，香椿，豆芽，青豆，黄豆。吃出北京人的生活。', '老北京地道风味，猪肉丁炸酱配合黄瓜，香椿，豆芽，青豆，黄豆。', 0, 0.00, '1', 0, 0, 0, 0.00, 0, 8, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1516, 183, 5835, '朝鲜冷面', 222, 10.00, '/upload/pliang/20150711090300503.jpg', 0, 1, 4, 0, '', 0, '朝鲜族风味，牛肉汤打底，佐以辣白菜、肉片、鸡蛋、黄瓜丝、梨条等。<span style="color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;text-indent:28px;">面条细质韧，汤汁凉爽，酸辣适口。</span>', '朝鲜族风味，牛肉汤打底，佐以辣白菜、肉片、鸡蛋、黄瓜丝、梨条等。', 0, 0.00, '0', 0, 0, 0, 0.00, 0, 9, 1, 1, '1,2,3,4,5,6,0', '', 1, 'a:1:{i:1;a:6:{s:2:"id";s:1:"1";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"份量";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"0";s:3:"det";a:2:{i:0;a:5:{s:2:"id";s:1:"2";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"大份";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"1";}i:1;a:5:{s:2:"id";s:1:"3";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"小份";s:7:"orderid";s:1:"2";s:9:"parent_id";s:1:"1";}}}}', 0),
(1648, 204, 6172, '皮纳尔诺尔干红葡萄酒', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1649, 204, 6173, '红马西拉子干红葡萄酒', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1650, 204, 6174, '拉菲传说波尔多红葡萄', 100, 50.00, '', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1086, 196, 5854, '爱的心满满', 100, 30.00, '/upload/user/20151117142459147.jpg', 0, 0, 103, 0, '', 0, '简介内容1', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1087, 196, 5855, '爱在巴黎', 100, 30.00, '/upload/user/20151117142506640.jpg', 0, 0, 103, 0, '', 0, '简介内容2', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1088, 196, 5856, '翻糖的祝福', 100, 30.00, '/upload/user/20151117142522843.jpg', 0, 0, 103, 0, '', 0, '简介内容3', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1089, 196, 5857, '火焰山', 100, 30.00, '/upload/user/20151117142529148.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1090, 196, 5858, '快乐的音符', 100, 30.00, '/upload/user/20151117142536616.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1091, 196, 5859, '倾慕柔情', 100, 30.00, '/upload/user/20151117142542744.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1092, 196, 5860, '水果皇后', 100, 30.00, '/upload/user/20151117142548231.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1093, 196, 5861, '素裹红妆', 100, 30.00, '/upload/user/20151117142554735.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1094, 196, 5862, '心的环绕', 100, 30.00, '/upload/user/20151117142600263.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1095, 196, 5863, '我想要的幸福', 100, 30.00, '/upload/user/20151117142617774.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1098, 197, 98, '姜撞奶', 99, 22.00, '/upload/user/20150915184410268.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1099, 197, 99, '绿豆黑米甜品', 99, 22.00, '/upload/user/20150915184431195.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1100, 197, 100, '芒果班戟', 99, 22.00, '/upload/user/20150915184443375.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1101, 194, 103, '乳酪甜品小蛋糕', 99, 22.00, '/upload/user/20150915184545619.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1102, 194, 104, '糖不甩', 99, 22.00, '/upload/user/20150915184601435.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1614, 144, 6162, '跳跳糖可乐味', 100, 5.00, '/upload/pliang/20160109213053298.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1613, 144, 6163, '康师傅大食袋', 99, 5.00, '/upload/pliang/20160109213054853.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1612, 144, 6164, '上好佳鲜虾条', 99, 5.00, '/upload/pliang/20160109213056552.jpg', 0, 1, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1620, 199, 6131, '怡宝', 100, 5.00, '/upload/pliang/20160109200438137.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1619, 199, 6130, '加多宝', 100, 5.00, '/upload/pliang/20160109200441680.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1618, 199, 6129, '可口可乐', 100, 5.00, '/upload/pliang/20160109200440413.jpg', 0, 0, 103, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 1, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1536, 287, 6135, '恒大冰泉', 100, 4.00, '/upload/pliang/20160109200439857.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1537, 287, 6136, '芬达', 99, 5.00, '/upload/pliang/20160109200437214.jpg', 0, 1, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1538, 287, 6138, '冰红茶', 100, 5.00, '/upload/pliang/20160109200443891.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1522, 284, 0, '红烧肉刀削面', 985, 10.00, '/upload/user/20160109192924417.jpg', 5, 15, 4, 0, '', 1, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 3, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 1),
(1523, 284, 0, '烧青菜这是个长名字超出的话要隐藏哦', 995, 10.00, '/upload/user/20160109193137618.jpg', 5, 5, 4, 0, '', 1, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 4, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1533, 287, 6132, '雪碧', 100, 5.00, '/upload/pliang/20160109200442877.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1534, 287, 6133, '鲜榨豆浆', 100, 5.00, '/upload/pliang/20160109200441572.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1535, 287, 6134, '农夫山泉', 100, 5.00, '/upload/pliang/20160109200438641.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1525, 284, 0, '红烧肉盖饭', 999, 10.00, '/upload/user/20160109193244657.jpg', 0, 1, 4, 0, '', 0, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 5, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1526, 284, 0, '香菇茄汁面', 1000, 10.00, '/upload/user/20160109193344648.jpg', 0, 0, 4, 0, '', 0, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 6, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1527, 287, 0, '花花牛原味酸奶', 1000, 5.00, '/upload/user/20160109193654823.jpg', 0, 0, 4, 0, '', 0, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1528, 287, 0, '花花牛畅极多', 1000, 5.00, '/upload/user/20160109193721391.jpg', 0, 0, 4, 0, '', 0, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1529, 287, 0, '香飘飘奶茶', 1000, 5.00, '/upload/user/20160109193747272.jpg', 0, 0, 4, 0, '', 0, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1530, 287, 6129, '可口可乐', 100, 5.00, '/upload/pliang/20160109200440413.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1531, 287, 6130, '加多宝', 100, 5.00, '/upload/pliang/20160109200441680.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1532, 287, 6131, '怡宝', 100, 5.00, '/upload/pliang/20160109200438137.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1520, 284, 0, '黄焖鸡', 1503, 10.00, '/upload/user/20160109192406365.jpg', 5, 12, 4, 0, '', 1, '<p>点击规格选择大小份和口味，好吃不上火点击规格选择大小份和口味，好吃不上火点击规格选择大小份和口味，好吃不上火点击规格选择大小份和口味，好吃不上火点击规格选择大小份和口味，好吃不上火</p>\r\n<p><img src="/upload/goods/20160109192518114.jpg" alt="" /></p>', '点击规格选择大小份和口味，好吃不上火', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 1, 'a:2:{i:1;a:6:{s:2:"id";s:1:"1";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"份量";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"0";s:3:"det";a:2:{i:0;a:5:{s:2:"id";s:1:"2";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"大份";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"1";}i:1;a:5:{s:2:"id";s:1:"3";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"小份";s:7:"orderid";s:1:"2";s:9:"parent_id";s:1:"1";}}}i:10;a:6:{s:2:"id";s:2:"10";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"口味";s:7:"orderid";s:1:"1";s:9:"parent_id";s:1:"0";s:3:"det";a:3:{i:0;a:5:{s:2:"id";s:2:"12";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"微辣";s:7:"orderid";s:1:"0";s:9:"parent_id";s:2:"10";}i:1;a:5:{s:2:"id";s:2:"13";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"中辣";s:7:"orderid";s:1:"0";s:9:"parent_id";s:2:"10";}i:2;a:5:{s:2:"id";s:2:"15";s:8:"shoptype";s:1:"0";s:4:"name";s:6:"特辣";s:7:"orderid";s:1:"0";s:9:"parent_id";s:2:"10";}}}}', 0),
(1521, 284, 0, '鸡丁刀削面', 999, 10.00, '/upload/user/20160109192901291.jpg', 0, 1, 4, 0, '', 0, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 7, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1524, 284, 0, '烧腐竹', 997, 10.00, '/upload/user/20160109193201279.jpg', 0, 3, 4, 0, '', 0, '', '', 100, 0.00, '0', 0, 0, 0, 0.00, 0, 8, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1539, 287, 6137, '红牛', 100, 5.00, '/upload/pliang/20160109200442385.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1540, 285, 6139, '腊八豆角脆骨', 99, 25.00, '/upload/pliang/20160109201717396.jpg', 0, 1, 4, 0, '', 0, '', '', 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '斤', 0, '', 0),
(1541, 285, 6140, '萝卜干炒腊肉', 99, 25.00, '/upload/pliang/20160109201841996.jpg', 0, 1, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1542, 285, 6141, '浓汤鸡汁脆笋', 99, 30.00, '/upload/pliang/20160109201952833.jpg', 0, 1, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1543, 285, 6142, '农家小炒肉', 100, 30.00, '/upload/pliang/20160109202112532.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1544, 285, 6143, '松仁玉米', 100, 30.00, '/upload/pliang/20160109202102129.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1545, 285, 6144, '干锅啤酒鸭', 100, 25.00, '/upload/pliang/20160109202334694.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1546, 285, 6145, '山城毛血旺', 100, 30.00, '/upload/pliang/20160109202326999.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1547, 285, 6146, '毛氏红烧肉', 100, 20.00, '/upload/pliang/20160109202501959.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1548, 286, 6147, '姜汁莲菜', 99, 12.00, '/upload/pliang/20160109204923250.jpg', 0, 1, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1549, 286, 6148, '凉拌木耳', 97, 12.00, '/upload/pliang/20160109204901641.jpg', 0, 3, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1550, 286, 6149, '酱泡萝卜皮', 100, 12.00, '/upload/pliang/20160109201952833.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1551, 286, 6150, '木瓜沙拉', 100, 12.00, '/upload/pliang/20160109204851764.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1552, 286, 6152, '大盘牛腱', 100, 12.00, '/upload/pliang/20160109204901670.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1553, 286, 6151, '开封桶子鸡', 100, 12.00, '/upload/pliang/20160109204902179.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1554, 286, 6153, '卤水拼盘', 100, 12.00, '/upload/pliang/20160109204901433.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1555, 286, 6154, '大盘猪手', 100, 12.00, '/upload/pliang/20160109204902239.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0),
(1556, 286, 6155, '水晶牛肉', 100, 12.00, '/upload/pliang/20160109204901670.jpg', 0, 0, 4, 0, '', 0, '', NULL, 0, 0.00, '0', 0, 0, 0, 0.00, 0, 0, 1, 1, '1,2,3,4,5,6,0', '', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_goodscx`
--

CREATE TABLE IF NOT EXISTS `xiaozu_goodscx` (
  `goodsid` int(20) NOT NULL,
  `cxzhe` int(3) NOT NULL default '0',
  `cxstarttime` int(12) NOT NULL default '0',
  `ecxendttime` int(12) NOT NULL default '0',
  `cxstime1` int(8) NOT NULL default '0',
  `cxetime1` int(8) NOT NULL default '0',
  `cxstime2` int(8) NOT NULL default '0',
  `cxetime2` int(8) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_goodscx`
--

INSERT INTO `xiaozu_goodscx` (`goodsid`, `cxzhe`, `cxstarttime`, `ecxendttime`, `cxstime1`, `cxetime1`, `cxstime2`, `cxetime2`) VALUES
(308, 80, 1450540800, 1451663999, 28800, 82800, 0, 0),
(3101, 90, 1448899200, 1480607999, 28800, 82800, 0, 0),
(3102, 50, 1448899200, 1451663999, 28800, 82800, 0, 0),
(1031, 85, 1451577600, 1454169599, 36000, 43200, 46800, 68400),
(1439, 80, 1452268800, 1515513599, -1452268800, 86340, 0, 0),
(1522, 80, 1452268800, 1547049599, 18000, 86340, 0, 0),
(1680, 88, 1452441600, 1454255999, -1452441600, 54000, 0, 0),
(1695, 88, 1452441600, 1484150399, 28800, 82800, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_goodsgg`
--

CREATE TABLE IF NOT EXISTS `xiaozu_goodsgg` (
  `id` int(20) NOT NULL auto_increment COMMENT '规格id',
  `shoptype` int(1) NOT NULL default '0' COMMENT '店铺类型  0餐厅  1超市',
  `name` varchar(100) NOT NULL COMMENT '规格名称/规格值得',
  `orderid` int(5) NOT NULL default '999' COMMENT '排序ID',
  `parent_id` int(20) NOT NULL default '0' COMMENT '0表示规格名称    1表示规格值',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `xiaozu_goodsgg`
--

INSERT INTO `xiaozu_goodsgg` (`id`, `shoptype`, `name`, `orderid`, `parent_id`) VALUES
(1, 0, '份量', 1, 0),
(2, 0, '大份', 1, 1),
(3, 0, '小份', 2, 1),
(4, 0, '尺寸', 2, 0),
(5, 0, '10寸', 1, 4),
(6, 0, '12寸', 2, 4),
(7, 1, '份量', 1, 0),
(8, 1, '大包', 1, 7),
(9, 1, '小包', 2, 7),
(10, 0, '口味', 1, 0),
(11, 0, '不辣', 0, 10),
(12, 0, '微辣', 0, 10),
(13, 0, '中辣', 0, 10),
(14, 0, '麻辣', 0, 10),
(15, 0, '特辣', 0, 10),
(16, 0, '甜辣', 0, 10);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_goodslibrary`
--

CREATE TABLE IF NOT EXISTS `xiaozu_goodslibrary` (
  `id` int(20) NOT NULL auto_increment,
  `typeid` int(10) NOT NULL COMMENT '商品类型',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `cost` decimal(8,2) NOT NULL COMMENT '商品价格',
  `img` varchar(150) NOT NULL COMMENT '图片地址',
  `instro` text COMMENT '简单说明',
  `good_order` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6213 ;

--
-- 导出表中的数据 `xiaozu_goodslibrary`
--

INSERT INTO `xiaozu_goodslibrary` (`id`, `typeid`, `name`, `cost`, `img`, `instro`, `good_order`) VALUES
(5834, 34, '茶树菇烧肉', 30.00, '/upload/pliang/20150711091120638.jpg', '简介内容1', 2),
(5835, 34, '朝鲜冷面', 20.00, '/upload/pliang/20150711090300503.jpg', '简介内容2', 0),
(5836, 34, '葱油汤面', 30.00, '/upload/pliang/20150711090256381.jpg', '简介内容3', 0),
(5837, 34, '地三鲜盖浇饭', 30.00, '/upload/pliang/20150711085315758.jpg', '', 0),
(5838, 34, '海鲜炒米线', 30.00, '/upload/pliang/20150711090306856.jpg', '', 0),
(5839, 34, '黄焖鸡米饭', 30.00, '/upload/pliang/20150711085244650.jpg', '', 0),
(5840, 34, '回锅肉盖浇饭', 30.00, '/upload/pliang/20150711085247163.jpg', '', 0),
(5841, 34, '鸡蛋西红柿面', 30.00, '/upload/pliang/20150711085253666.jpg', '', 0),
(5842, 34, '酱油炒饭', 30.00, '/upload/user/20151117141318481.jpg', '', 0),
(5843, 34, '卤肉饭', 30.00, '/upload/pliang/20150711085255661.jpg', '', 0),
(5844, 34, '牛肉盖浇饭', 30.00, '/upload/pliang/20150711085306122.jpg', '', 0),
(5845, 34, '清汤面', 30.00, '/upload/pliang/20150711090336207.jpg', '', 0),
(5846, 34, '蒜汁拌面', 30.00, '/upload/pliang/20150711090331680.jpg', '', 0),
(5847, 34, '土豆盖浇饭', 30.00, '/upload/pliang/20150711085315758.jpg', '', 0),
(5848, 34, '虾仁面', 30.00, '/upload/pliang/20150711090316274.jpg', '', 0),
(5849, 34, '香菇热干面', 30.00, '/upload/pliang/20150711090311884.jpg', '', 0),
(5850, 34, '香辣鸡丁', 30.00, '/upload/pliang/20150711085315758.jpg', '', 0),
(5851, 34, '鱼香肉丝盖浇饭', 30.00, '/upload/pliang/20150711085318285.jpg', '', 0),
(5852, 34, '炸酱面', 30.00, '/upload/pliang/20150711090325137.jpg', '', 0),
(5853, 34, '猪排面', 30.00, '/upload/pliang/20150711090321282.jpg', '', 0),
(5854, 35, '爱的心满满', 30.00, '/upload/user/20151117142459147.jpg', '简介内容1', 0),
(5855, 35, '爱在巴黎', 30.00, '/upload/user/20151117142506640.jpg', '简介内容2', 0),
(5856, 35, '翻糖的祝福', 30.00, '/upload/user/20151117142522843.jpg', '简介内容3', 0),
(5857, 35, '火焰山', 30.00, '/upload/user/20151117142529148.jpg', '', 0),
(5858, 35, '快乐的音符', 30.00, '/upload/user/20151117142536616.jpg', '', 0),
(5859, 35, '倾慕柔情', 30.00, '/upload/user/20151117142542744.jpg', '', 0),
(5860, 35, '水果皇后', 30.00, '/upload/user/20151117142548231.jpg', '', 0),
(5861, 35, '素裹红妆', 30.00, '/upload/user/20151117142554735.jpg', '', 0),
(5862, 35, '心的环绕', 30.00, '/upload/user/20151117142600263.jpg', '', 0),
(5863, 35, '我想要的幸福', 30.00, '/upload/user/20151117142617774.jpg', '', 0),
(5864, 35, '雪的孩子', 30.00, '/upload/user/20151117142623753.jpg', '', 0),
(5865, 35, '真情相伴', 30.00, '/upload/user/20151117142631788.jpg', '', 0),
(5866, 35, '仲夏夜之梦', 30.00, '/upload/user/20151117142637861.jpg', '', 0),
(5867, 8, '商品1', 10.00, '', '简介内容1', 0),
(5868, 8, '商品2', 20.00, '', '简介内容2', 0),
(5869, 8, '商品3', 30.00, '', '简介内容3', 0),
(5870, 34, '黄焖排骨饭', 21.00, '', '', 0),
(53, 8, '红玫瑰', 111.00, '/upload/user/20150915182721695.jpg', '', 1),
(54, 8, '黄玫瑰', 111.00, '/upload/user/20150915182736325.jpg', '', 1),
(55, 8, '红黄玫瑰', 111.00, '/upload/user/20150915182752447.jpg', '', 1),
(56, 8, '太阳花', 111.00, '/upload/user/20150915182806408.jpg', '', 1),
(57, 8, '蓝白', 111.00, '/upload/user/20150915182827588.jpg', '', 1),
(58, 8, '康乃馨', 111.00, '/upload/user/20150915182846608.jpg', '', 1),
(59, 8, '小熊', 111.00, '/upload/user/20150915182904826.jpg', '', 1),
(60, 8, '满天星', 111.00, '/upload/user/20150915182924836.jpg', '', 1),
(61, 8, '画画', 111.00, '/upload/user/20150915182950857.jpg', '', 1),
(62, 8, '粉玫瑰', 111.00, '/upload/user/20150915183010165.jpg', '', 1),
(63, 8, '白玫瑰', 111.00, '/upload/user/20150915183022489.jpg', '', 1),
(64, 10, '澳洲牛排', 111.00, '/upload/user/20150915183106824.jpg', '', 1),
(65, 10, '草莓穆熙奶茶', 111.00, '/upload/user/20150915183129346.jpg', '', 1),
(66, 10, '俄式熏肉披萨', 111.00, '/upload/user/20150915183151926.jpg', '', 1),
(67, 10, '法式白兰地牛排', 111.00, '/upload/user/20150915183206969.jpg', '', 1),
(68, 10, '法式鹅排', 111.00, '/upload/user/20150915183221522.jpg', '', 1),
(69, 10, '法式鹅腿', 111.00, '/upload/user/20150915183235286.jpg', '', 1),
(70, 10, '海鲜汤', 111.00, '/upload/user/20150915183317954.jpg', '', 0),
(71, 10, '面包片', 111.00, '/upload/user/20150915183334232.jpg', '', 0),
(72, 10, '柠檬红茶', 111.00, '/upload/user/20150915183352261.jpg', '', 0),
(73, 10, '沙朗牛排', 111.00, '/upload/user/20150915183408583.jpg', '', 0),
(74, 10, '台塑牛排', 111.00, '/upload/user/20150915183426735.jpg', '', 0),
(75, 10, '虾仁意面', 111.00, '/upload/user/20150915183449294.jpg', '', 0),
(76, 10, '洋葱圈', 111.00, '/upload/user/20150915183503506.jpg', '', 0),
(77, 10, '意大利肉酱面', 111.00, '/upload/user/20150915183523734.jpg', '', 0),
(78, 10, '炸鸡条', 111.00, '/upload/user/20150915183537876.jpg', '', 0),
(79, 9, '火龙果', 11.00, '/upload/pliang/20151116094455364.jpg', '', 0),
(80, 9, '芒果', 11.00, '/upload/user/20150915183616888.png', '', 0),
(81, 9, '小西红柿', 11.00, '/upload/user/20150915183630692.png', '', 0),
(82, 9, '桂圆', 11.00, '/upload/user/20150915183645663.png', '', 0),
(83, 9, '木瓜', 11.00, '/upload/user/20150915183656843.png', '', 0),
(84, 9, '榴莲', 11.00, '/upload/user/20150915183713380.png', '', 0),
(85, 9, '白兰瓜', 11.00, '/upload/user/20150915183728503.png', '', 0),
(86, 9, '油桃', 11.00, '/upload/pliang/20150711091026256.jpg', '', 0),
(87, 9, '杨梅', 11.00, '/upload/user/20150915183810173.jpg', '', 0),
(88, 9, '柠檬', 11.00, '/upload/user/20150915183823621.jpg', '', 0),
(89, 9, '苹果', 11.00, '/upload/user/20150915183837777.jpg', '', 0),
(90, 9, '哈密瓜', 11.00, '/upload/user/20150915183856472.jpg', '', 0),
(91, 9, '香梨', 11.00, '/upload/user/20150915183922329.jpg', '', 0),
(92, 9, '荔枝', 11.00, '/upload/user/20150915183944985.jpg', '', 0),
(95, 11, '法式烤布蕾', 22.00, '/upload/user/20150915184325181.jpg', '', 0),
(96, 11, '红宝石C', 22.00, '/upload/user/20150915184339728.jpg', '', 0),
(97, 11, '红石榴雪葩', 22.00, '/upload/user/20150915184356657.jpg', '', 0),
(98, 11, '姜撞奶', 22.00, '/upload/user/20150915184410268.jpg', '', 0),
(99, 11, '绿豆黑米甜品', 22.00, '/upload/user/20150915184431195.jpg', '', 0),
(100, 11, '芒果班戟', 22.00, '/upload/user/20150915184443375.jpg', '', 0),
(101, 11, '木瓜雪耳糖水', 22.00, '/upload/user/20150915184505892.jpg', '', 0),
(102, 11, '奇异果西米露', 22.00, '/upload/user/20150915184518281.jpg', '', 0),
(103, 11, '乳酪甜品小蛋糕', 22.00, '/upload/user/20150915184545619.jpg', '', 0),
(104, 11, '糖不甩', 22.00, '/upload/user/20150915184601435.jpg', '', 0),
(105, 11, '芋圆甜品', 22.00, '/upload/user/20150915184618150.jpg', '', 0),
(6127, 47, '韭菜鸡蛋陷大', 15.00, '', '', 0),
(6126, 47, '韭菜鸡蛋陷小', 15.00, '', '', 0),
(6125, 47, '猪肉芹菜陷大', 15.00, '', '', 0),
(6124, 47, '猪肉芹菜馅小', 15.00, '', '', 0),
(6123, 47, '猪肉香菇陷大', 15.00, '', '', 0),
(6122, 47, '猪肉香菇陷小', 15.00, '', '', 0),
(6121, 47, '羊肉芹菜陷大', 15.00, '', '', 0),
(6120, 47, '羊肉芹菜陷小', 15.00, '', '', 0),
(6119, 47, '羊肉香菇陷大', 15.00, '', '', 0),
(6118, 47, '羊肉香菇陷小', 15.00, '', '', 0),
(6117, 47, '猪肉馅大', 15.00, '', '', 0),
(6116, 47, '猪肉馅小', 15.00, '', '', 0),
(6115, 47, '羊肉馅大', 15.00, '', '', 0),
(6114, 47, '羊肉馅小', 15.00, '', '', 0),
(6110, 46, '三菌炖羊肉', 25.00, '', '', 0),
(6109, 46, '莲藕炖排骨', 25.00, '', '', 0),
(6108, 46, '三菌炖鸡汤', 25.00, '', '', 0),
(6107, 46, '青菜炒豆筋', 25.00, '', '', 0),
(6106, 46, '豆角茄子', 25.00, '', '', 0),
(6105, 46, '地三鲜', 25.00, '', '', 0),
(6104, 46, '手撕包菜', 25.00, '', '', 0),
(6103, 46, '口味炒凉粉', 25.00, '', '', 0),
(6102, 46, '口味娃娃菜', 25.00, '', '', 0),
(6101, 46, '特色皮冻', 25.00, '', '', 0),
(6100, 46, '特色卤水猪蹄', 25.00, '', '', 0),
(6098, 46, '自制酱牛肉', 25.00, '', '', 0),
(6099, 46, '蒜香扒皮鱼', 25.00, '', '', 0),
(6097, 46, '茶树菇炒牛肚', 25.00, '', '', 0),
(6096, 46, '香辣酱板鸭', 25.00, '', '', 0),
(6095, 46, '煎烧大白条', 25.00, '', '', 0),
(6093, 46, '韭菜炒莲藕', 25.00, '', '', 0),
(6094, 46, '白灼大虾', 25.00, '', '', 0),
(6092, 46, '土匪烂香鸭', 30.00, '', '', 0),
(6091, 46, '口味土匪猪肝', 30.00, '', '', 0),
(6090, 46, '葱爆野山菌', 30.00, '', '', 0),
(6089, 46, '湘西土猪肉', 30.00, '', '', 0),
(6088, 46, '湘西外婆菜', 30.00, '', '', 0),
(6086, 46, '斗地主', 30.00, '', '', 0),
(6087, 46, '湘西土家炒腊肉', 30.00, '', '', 0),
(6085, 46, '湘西土匪鸡', 30.00, '', '', 0),
(6084, 45, '冰糖芦荟', 12.00, '', '', 0),
(6083, 45, '带皮驴肉', 12.00, '', '', 0),
(6082, 45, '凉拌金针菇', 12.00, '', '', 0),
(6081, 45, '凉拌黄瓜', 12.00, '', '', 0),
(6079, 45, '姜汁变蛋', 12.00, '', '', 0),
(6080, 45, '香菜木耳', 12.00, '', '', 0),
(6078, 45, '青瓜肉丝汤', 15.00, '', '', 0),
(6076, 45, '西湖牛肉羹', 15.00, '', '', 0),
(6077, 45, '香菜豆腐羹', 15.00, '', '', 0),
(6075, 45, '紫菜蛋花汤', 15.00, '', '', 0),
(6074, 45, '酸辣粉皮肉丝汤', 15.00, '', '', 0),
(6073, 45, '玉米羹', 15.00, '', '', 0),
(6072, 45, '酸辣肚丝汤', 15.00, '', '', 0),
(6071, 45, '干锅面筋', 25.00, '', '', 0),
(6069, 45, '干锅鹅', 25.00, '', '', 0),
(6070, 45, '干锅大肠', 25.00, '', '', 0),
(6068, 45, '干锅鸡', 25.00, '', '', 0),
(6067, 45, '干锅鱼', 25.00, '', '', 0),
(6066, 45, '干锅鸭', 25.00, '', '', 0),
(6065, 45, '糖醋粉扎', 15.00, '', '', 0),
(6064, 45, '醋溜粉扎', 15.00, '', '', 0),
(6062, 45, '烧娃娃菜', 15.00, '', '', 0),
(6063, 45, '烧油菜', 15.00, '', '', 0),
(6060, 45, '烧茄子', 15.00, '', '', 0),
(6061, 45, '烧白菜', 15.00, '', '', 0),
(6059, 45, '烧腐竹', 15.00, '', '', 0),
(6057, 45, '麻婆豆腐', 15.00, '', '', 0),
(6058, 45, '家常豆腐', 15.00, '', '', 0),
(6056, 45, '鲁山揽锅菜', 15.00, '', '', 0),
(6055, 44, '米酒蛋花汤', 2.00, '', '', 0),
(6054, 44, '紫菜蛋花汤', 2.00, '', '', 0),
(6053, 44, '黑椒牛柳饭', 12.00, '', '', 0),
(6052, 44, '金牌土豆饭', 12.00, '', '', 0),
(6051, 44, '魏家卤肉饭', 12.00, '', '', 0),
(6050, 44, '鱼香茄子饭', 12.00, '', '', 0),
(6049, 44, '香菇滑鸡饭', 12.00, '', '', 0),
(6048, 44, '梅菜扣肉饭', 12.00, '', '', 0),
(6047, 44, '鱼香肉丝饭', 12.00, '', '', 0),
(6046, 44, '宫保鸡丁饭', 12.00, '', '', 0),
(6045, 44, '酱爆牛肉饭', 12.00, '', '', 0),
(6043, 44, '酸辣粉', 7.00, '', '', 0),
(6044, 44, '三鲜粉', 7.00, '', '', 0),
(6041, 44, '三鲜米线', 7.00, '', '', 0),
(6042, 44, '酸辣米线', 7.00, '', '', 0),
(6040, 44, '麻辣米线', 7.00, '', '', 0),
(6039, 44, '麻辣粉', 7.00, '', '', 0),
(6038, 44, '麻酱凉皮', 6.00, '', '', 0),
(6037, 44, '秘制凉皮', 6.00, '', '', 0),
(6036, 44, '麻酱米皮', 6.00, '', '', 0),
(6035, 44, '秘制米皮', 6.00, '', '', 0),
(6034, 44, '凉皮', 6.00, '', '', 0),
(6033, 44, '米皮', 6.00, '', '', 0),
(6032, 44, '面皮', 6.00, '', '', 0),
(6025, 43, '鱼豆腐', 10.00, '/upload/user/20160111120204742.jpg', '', 0),
(6024, 43, '花生', 10.00, '/upload/user/20160111120210959.jpg', '', 0),
(6023, 43, '毛豆', 10.00, '/upload/user/20160111120215819.jpg', '', 0),
(6022, 43, '海带', 10.00, '/upload/user/20160111120224465.jpg', '', 0),
(6021, 43, '千张', 10.00, '/upload/user/20160111120231392.jpg', '', 0),
(6020, 43, '鸭肠', 10.00, '/upload/user/20160111120240413.jpg', '', 0),
(6018, 43, '鸭腿', 10.00, '/upload/user/20160111120247285.jpg', '', 0),
(6019, 43, '鸭翅', 10.00, '/upload/user/20160111120340607.jpg', '', 0),
(6017, 43, '鸭掌', 10.00, '/upload/user/20160111120259101.jpg', '', 0),
(6016, 43, '鸭头', 10.00, '/upload/user/20160111120305116.jpg', '', 0),
(6015, 43, '鸭舌', 10.00, '/upload/user/20160111120315814.jpg', '', 0),
(6014, 43, '鸭架', 10.00, '/upload/user/20160111120325992.jpg', '', 0),
(6013, 43, '鸭脖', 10.00, '/upload/user/20160111120331689.jpg', '', 0),
(6012, 42, '矿泉水', 1.00, '', '', 0),
(6011, 42, '尖叫', 5.00, '', '', 0),
(6010, 42, '脉动', 5.00, '', '', 0),
(6009, 42, '果粒奶优', 5.00, '', '', 0),
(6008, 42, '果粒橙', 5.00, '', '', 0),
(6007, 42, '雪碧', 5.00, '', '', 0),
(6006, 42, '可乐', 5.00, '', '', 0),
(6005, 42, '甜辣味', 0.00, '', '', 0),
(6004, 42, '甘梅味', 0.00, '', '', 0),
(6003, 42, '椒盐味', 0.00, '', '', 0),
(6002, 42, '黑胡椒味', 0.00, '', '', 0),
(6001, 42, '原味', 0.00, '', '', 0),
(6000, 42, '番茄味', 0.00, '', '', 0),
(5999, 42, '香辣味', 0.00, '', '', 0),
(5998, 42, '麻辣味', 0.00, '', '', 0),
(5997, 42, '孜然味', 0.00, '', '', 0),
(5996, 42, '大脸鸡排', 11.00, '', '', 0),
(5995, 41, '木耳', 2.00, '/upload/user/20160111100523862.jpg', '', 0),
(5994, 41, '土豆', 2.00, '/upload/user/20160111100530856.jpg', '', 0),
(5993, 41, '金针菇', 2.00, '/upload/user/20160111100539725.jpg', '', 0),
(5992, 41, '香菇', 2.00, '/upload/user/20160111100546737.jpg', '', 0),
(5986, 41, '黄焖酥肉', 15.00, '/upload/user/20160111100553327.jpg', '', 0),
(5984, 41, '黄焖豆腐', 15.00, '/upload/user/20160111100600946.jpg', '', 0),
(5983, 41, '黄焖排骨', 20.00, '/upload/user/20160111100612748.jpg', '', 0),
(5980, 41, '黄焖鸡米饭', 15.00, '/upload/user/20160111100618456.jpg', '', 0),
(5975, 40, '原味咖啡', 30.00, '', '', 0),
(5974, 40, '卡布奇诺', 30.00, '', '', 0),
(5972, 40, '摩卡咖啡', 30.00, '', '', 0),
(5973, 40, '美式咖啡', 30.00, '', '', 0),
(5970, 40, '冰咖啡', 30.00, '', '', 0),
(5971, 40, '拿铁咖啡', 30.00, '', '', 0),
(5969, 40, '抹茶雪域蛋糕', 30.00, '', '', 0),
(5968, 40, '臻选巧克力蛋糕', 30.00, '', '', 0),
(5967, 40, '经典提拉米苏', 30.00, '', '', 0),
(5966, 40, '浓情香鸡翅', 30.00, '', '', 0),
(5965, 40, '韩式浓情风味鸡', 30.00, '', '', 0),
(5964, 40, '超值缤纷小吃拼盘', 30.00, '', '', 0),
(5963, 40, '地中海风情鱿鱼', 30.00, '', '', 0),
(5962, 40, '浓情烤翅', 30.00, '', '', 0),
(5961, 40, '酥炸鱿鱼', 30.00, '', '', 0),
(5960, 40, '韩式旋风虾串', 30.00, '', '', 0),
(5959, 40, '培根鸡肉卷', 30.00, '', '', 0),
(5958, 40, '鱼子酱虾球', 30.00, '', '', 0),
(5957, 40, '香草凤尾虾', 30.00, '', '', 0),
(5956, 40, '嫩牛香脆卷', 30.00, '', '', 0),
(5955, 40, '法式红酒焗蜗牛', 30.00, '', '', 0),
(5954, 40, '田园烤番茄', 30.00, '', '', 0),
(5953, 40, '法式薄面包配珍鲑', 30.00, '', '', 0),
(5952, 40, '奶香芝士培根面', 30.00, '', '', 0),
(5951, 40, '阳光意式热辣面', 30.00, '', '', 0),
(5950, 40, '经典意式肉酱面', 30.00, '', '', 0),
(5949, 40, '西西里风情酱面', 30.00, '', '', 0),
(5948, 40, '意式菌菇培根面', 30.00, '', '', 0),
(5947, 40, '芝士培根珍鲑贝柱', 30.00, '', '', 0),
(5946, 40, '欧式培根炒饭', 30.00, '', '', 0),
(5945, 40, '希腊风情海鲜烩饭', 30.00, '', '', 0),
(5944, 40, '意式飘香肉丸芝士', 30.00, '', '', 0),
(5943, 40, '匈牙利风情牛肉焗饭', 30.00, '', '', 0),
(5942, 40, '意式鱼籽蟹肉披萨', 30.00, '', '', 0),
(5941, 40, '法式红烩牛肉', 30.00, '', '', 0),
(5940, 40, '普罗旺斯风情烤鸡', 30.00, '', '', 0),
(5939, 40, '意大利风情烤鸭', 30.00, '', '', 0),
(5938, 40, '超级至尊', 30.00, '', '', 0),
(5937, 40, '加州风情香烤牛肉', 30.00, '', '', 0),
(5936, 40, '意式培根卷大虾', 30.00, '', '', 0),
(5935, 40, '夏威夷风情披萨', 30.00, '', '', 0),
(5934, 40, '海鲜至尊披萨', 30.00, '', '简介内容3', 0),
(5933, 40, '田园风光披萨', 30.00, '', '简介内容2', 0),
(5932, 40, '新奥尔良风情烤肉', 30.00, '', '简介内容1', 0),
(5931, 39, '全家桶', 30.00, '/upload/user/20160109210509295.jpg', '', 0),
(5930, 39, '巧克力圣代', 30.00, '', '', 0),
(5928, 39, '九珍', 30.00, '/upload/pliang/20160109210431995.jpg', '', 0),
(5929, 39, '草莓圣代', 30.00, '/upload/pliang/20160109210430629.jpg', '', 0),
(5927, 39, '红豆奶茶', 30.00, '', '', 0),
(5926, 39, '热橙汁', 30.00, '', '', 0),
(5925, 39, '雪顶咖啡', 30.00, '', '', 0),
(5923, 39, '红豆派', 30.00, '', '', 0),
(5924, 39, '香醇奶茶', 30.00, '', '', 0),
(5922, 39, '葡式蛋挞', 30.00, '', '', 0),
(5921, 39, '劲爆鸡米花', 30.00, '', '', 0),
(5920, 39, '吮指原味鸡', 30.00, '', '', 0),
(5919, 39, '黄金鸡块', 30.00, '', '', 0),
(5917, 39, '老北京鸡肉卷', 30.00, '', '', 0),
(5918, 39, '香辣鸡块', 30.00, '', '', 0),
(5909, 39, 'BBQ手撕猪肉堡', 30.00, '', '简介内容1', 0),
(5910, 39, '薯条', 30.00, '', '简介内容2', 0),
(5911, 39, '可乐', 30.00, '', '简介内容3', 0),
(5912, 39, '雪碧', 30.00, '', '', 0),
(5913, 39, '拌鸡拌虾堡', 30.00, '', '', 0),
(5914, 39, '香辣鸡腿堡', 30.00, '', '', 0),
(5915, 39, '劲爆鸡腿堡', 30.00, '', '', 0),
(5916, 39, '新奥尔良烤鸡腿堡', 30.00, '', '', 0),
(6198, 53, '牛肉砂锅', 30.00, '/upload/user/20160111094030631.jpg', '', 0),
(6197, 53, '鸡肉丸子汤', 25.00, '/upload/user/20160111094040460.jpg', '', 0),
(6196, 53, '海鲜豆腐汤', 25.00, '/upload/user/20160111094046648.jpg', '', 0),
(6195, 53, '大酱汤', 25.00, '/upload/user/20160111094052260.jpg', '', 0),
(6194, 53, '酸奶鲜果粒', 10.00, '/upload/user/20160111094100808.jpg', '', 0),
(6193, 53, '香炸沙丁鱼', 20.00, '/upload/user/20160111094109772.jpg', '', 0),
(6192, 53, '棒虾仔', 20.00, '/upload/user/20160111094115998.jpg', '', 0),
(6191, 53, '玉米蔬菜沙拉', 15.00, '/upload/user/20160111094125663.jpg', '', 0),
(6190, 53, '清拌蔬菜', 15.00, '/upload/user/20160111094226711.jpg', '', 0),
(6189, 53, '浓香薯粒', 15.00, '/upload/user/20160111094232788.jpg', '', 0),
(6188, 53, '金枪鱼沙拉', 15.00, '/upload/user/20160111094239989.jpg', '', 0),
(6187, 53, '爱果士水果沙拉', 15.00, '/upload/user/20160111094245647.jpg', '', 0),
(6185, 53, '泰式风情咖喱鸡', 25.00, '/upload/user/20160111094252214.jpg', '', 0),
(6186, 53, '香甜玉米芝士', 20.00, '/upload/user/20160111094258826.jpg', '', 0),
(6205, 53, '什锦海鲜拌饭', 35.00, '/upload/user/20160111094310352.jpg', '', 0),
(6204, 53, '辣五花肉拌饭', 30.00, '/upload/user/20160111094316147.jpg', '', 0),
(6203, 53, '辣白菜拌饭', 20.00, '/upload/user/20160111094322588.jpg', '', 0),
(6202, 53, '烤牛肉拌饭', 35.00, '/upload/user/20160111094328336.jpg', '', 0),
(6201, 53, '经典石锅拌饭', 20.00, '/upload/user/20160111094334203.jpg', '', 0),
(6200, 53, '番茄牛肉焗饭', 35.00, '/upload/user/20160111094340914.jpg', '', 0),
(6199, 53, '泡菜汤', 20.00, '/upload/user/20160111094350848.jpg', '', 0),
(6184, 53, '辣炒年糕', 20.00, '/upload/user/20160111094359927.jpg', '', 0),
(5692, 0, '商品3', 30.00, '', '简介内容3', 0),
(5691, 0, '商品2', 20.00, '', '简介内容2', 0),
(5690, 0, '商品1', 10.00, '', '简介内容1', 0),
(5689, 0, '商品3', 30.00, '', '简介内容3', 0),
(5688, 0, '商品2', 20.00, '', '简介内容2', 0),
(5687, 0, '商品1', 10.00, '', '简介内容1', 0),
(5686, 0, '商品3', 30.00, '', '简介内容3', 0),
(5685, 0, '商品2', 20.00, '', '简介内容2', 0),
(5683, 0, '商品3', 30.00, '', '简介内容3', 0),
(5684, 0, '商品1', 10.00, '', '简介内容1', 0),
(5682, 0, '商品2', 20.00, '', '简介内容2', 0),
(5681, 0, '商品1', 10.00, '', '简介内容1', 0),
(5680, 0, '商品3', 30.00, '', '简介内容3', 0),
(5678, 0, '商品1', 10.00, '', '简介内容1', 0),
(5679, 0, '商品2', 20.00, '', '简介内容2', 0),
(6128, 34, '香辣猪蹄（猪手）', 20.00, '/upload/user/20160109172539511.jpg', '', 5),
(6129, 48, '可口可乐', 5.00, '/upload/pliang/20160109200440413.jpg', '', 0),
(6130, 48, '加多宝', 5.00, '/upload/pliang/20160109200441680.jpg', '', 0),
(6131, 48, '怡宝', 5.00, '/upload/pliang/20160109200438137.jpg', '', 0),
(6132, 48, '雪碧', 5.00, '/upload/pliang/20160109200442877.jpg', '', 0),
(6133, 48, '鲜榨豆浆', 5.00, '/upload/pliang/20160109200441572.jpg', '', 0),
(6134, 48, '农夫山泉', 5.00, '/upload/pliang/20160109200438641.jpg', '', 0),
(6135, 48, '恒大冰泉', 4.00, '/upload/pliang/20160109200439857.jpg', '', 0),
(6136, 48, '芬达', 5.00, '/upload/pliang/20160109200437214.jpg', '', 0),
(6137, 48, '红牛', 5.00, '/upload/pliang/20160109200442385.jpg', '', 0),
(6138, 48, '冰红茶', 5.00, '/upload/pliang/20160109200443891.jpg', '', 0),
(6139, 49, '腊八豆角脆骨', 25.00, '/upload/pliang/20160109201717396.jpg', '', 0),
(6140, 49, '萝卜干炒腊肉', 25.00, '/upload/pliang/20160109201841996.jpg', '', 0),
(6141, 49, '浓汤鸡汁脆笋', 30.00, '/upload/pliang/20160109201952833.jpg', '', 0),
(6142, 49, '农家小炒肉', 30.00, '/upload/pliang/20160109202112532.jpg', '', 0),
(6143, 49, '松仁玉米', 30.00, '/upload/pliang/20160109202102129.jpg', '', 0),
(6144, 49, '干锅啤酒鸭', 25.00, '/upload/pliang/20160109202334694.jpg', '', 0),
(6145, 49, '山城毛血旺', 30.00, '/upload/pliang/20160109202326999.jpg', '', 0),
(6146, 49, '毛氏红烧肉', 20.00, '/upload/pliang/20160109202501959.jpg', '', 0),
(6147, 50, '姜汁莲菜', 12.00, '/upload/pliang/20160109204923250.jpg', '', 0),
(6148, 50, '凉拌木耳', 12.00, '/upload/pliang/20160109204901641.jpg', '', 0),
(6149, 50, '酱泡萝卜皮', 12.00, '/upload/pliang/20160109201952833.jpg', '', 0),
(6150, 50, '木瓜沙拉', 12.00, '/upload/pliang/20160109204851764.jpg', '', 0),
(6151, 50, '开封桶子鸡', 12.00, '/upload/pliang/20160109204902179.jpg', '', 0),
(6152, 50, '大盘牛腱', 12.00, '/upload/pliang/20160109204901670.jpg', '', 0),
(6153, 50, '卤水拼盘', 12.00, '/upload/pliang/20160109204901433.jpg', '', 0),
(6154, 50, '大盘猪手', 12.00, '/upload/pliang/20160109204902239.jpg', '', 0),
(6155, 50, '水晶牛肉', 12.00, '/upload/pliang/20160109204901670.jpg', '', 0),
(6156, 51, '多口味素牛肉', 8.00, '/upload/pliang/20160109213059929.jpg', '', 0),
(6157, 51, '香辣鸭脖32g/袋', 5.00, '/upload/pliang/20160109213058781.jpg', '', 0),
(6158, 51, '零食豪杰缘粗粮', 5.00, '/upload/pliang/20160109213052197.jpg', '', 0),
(6159, 51, '金珍香酥小黄鱼', 5.00, '/upload/pliang/20160109213053298.jpg', '', 0),
(6160, 51, '清真锅巴香脆', 5.00, '/upload/pliang/20160109213059929.jpg', '', 0),
(6161, 51, '香菇牛板筋', 5.00, '/upload/pliang/20160109213058781.jpg', '', 0),
(6162, 51, '跳跳糖可乐味', 5.00, '/upload/pliang/20160109213053298.jpg', '', 0),
(6163, 51, '康师傅大食袋', 5.00, '/upload/pliang/20160109213054853.jpg', '', 0),
(6164, 51, '上好佳鲜虾条', 5.00, '/upload/pliang/20160109213056552.jpg', '', 0),
(6165, 52, '金星原浆啤酒', 5.00, '/upload/pliang/20160109214107623.jpg', '', 0),
(6166, 52, '哈尔滨冰爽330ml', 5.00, '/upload/pliang/20160109214110141.jpg', '', 0),
(6167, 52, '凯撒伯格啤酒500ml', 5.00, '/upload/pliang/20160109214108854.jpg', '', 0),
(6168, 52, '凯撒伯格啤酒320ml', 5.00, '/upload/pliang/20160109214108986.jpg', '', 5),
(6169, 52, '喜力听装500ml', 5.00, '/upload/pliang/20160109214112585.jpg', '', 5),
(6170, 52, '冰纯嘉士伯听装500ml', 5.00, '/upload/pliang/20160109214107623.jpg', '', 5),
(6171, 52, '百年张裕干红葡萄酒', 50.00, '', '', 0),
(6172, 52, '皮纳尔诺尔干红葡萄酒', 50.00, '', '', 0),
(6173, 52, '红马西拉子干红葡萄酒', 50.00, '', '', 0),
(6174, 52, '拉菲传说波尔多红葡萄', 50.00, '', '', 0),
(6175, 52, '拉菲传奇波尔多红葡萄', 50.00, '', '', 0),
(6176, 52, '53°汾酒裸瓶装475ml', 50.00, '', '', 0),
(6177, 52, '洋河大曲蓝瓷', 50.00, '', '', 0),
(6178, 52, '杏花村醇柔', 50.00, '', '', 0),
(6179, 52, '洋河大曲', 50.00, '', '', 0),
(6180, 52, '海之蓝', 50.00, '', '', 0),
(6181, 52, '威尼斯之花', 50.00, '', '', 0),
(6182, 52, '真炫鸡尾酒', 10.00, '', '', 0),
(6183, 52, '六度朗姆', 10.00, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_goodslibrarycate`
--

CREATE TABLE IF NOT EXISTS `xiaozu_goodslibrarycate` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `orderid` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- 导出表中的数据 `xiaozu_goodslibrarycate`
--

INSERT INTO `xiaozu_goodslibrarycate` (`id`, `name`, `orderid`) VALUES
(43, '绝味鸭脖', 13),
(11, '下午茶', 7),
(10, '西餐', 6),
(41, '黄焖鸡', 11),
(9, '水果', 5),
(42, '大脸鸡排', 12),
(8, '鲜花', 7),
(34, '中餐', 4),
(35, '蛋糕', 5),
(53, '土大力', 20),
(39, '肯德基', 9),
(40, '必胜客', 10),
(44, '凉皮', 14),
(45, '揽锅菜', 15),
(46, '土匪菜', 16),
(47, '饺子', 17),
(48, '饮料', 18),
(49, '精品推荐', 19),
(50, '凉菜系列', 20),
(51, '食品零食', 21),
(52, '酒品类', 22);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_goodssign`
--

CREATE TABLE IF NOT EXISTS `xiaozu_goodssign` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `imgurl` varchar(255) default NULL,
  `type` varchar(50) default NULL COMMENT 'goods商品,shop店铺,cx促销3类型',
  `instro` varchar(100) default NULL COMMENT '说明',
  `typevalue` int(1) NOT NULL default '0' COMMENT '0无,1新品，2热门，3推荐',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 导出表中的数据 `xiaozu_goodssign`
--

INSERT INTO `xiaozu_goodssign` (`id`, `name`, `imgurl`, `type`, `instro`, `typevalue`) VALUES
(7, '新品推荐', '/upload/goods/20160111104451851.png', 'cx', '新品推荐', 0),
(3, '在线支付', '/upload/goods/20160110164634919.png', 'cx', '在线支付', 0),
(4, '减', '/upload/goods/20160111104541554.png', 'cx', '减', 0),
(5, '券', '/upload/goods/20160111104558907.png', 'cx', '券', 0),
(9, '超时赔付', '/upload/goods/20160111104624365.png', 'cx', '超时赔付', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_goodstype`
--

CREATE TABLE IF NOT EXISTS `xiaozu_goodstype` (
  `id` int(10) NOT NULL auto_increment,
  `shopid` int(20) NOT NULL COMMENT '店铺ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `orderid` int(3) NOT NULL default '0',
  `cattype` int(1) NOT NULL default '1' COMMENT '1外卖 2订台',
  PRIMARY KEY  (`id`),
  KEY `shopid` (`shopid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=301 ;

--
-- 导出表中的数据 `xiaozu_goodstype`
--

INSERT INTO `xiaozu_goodstype` (`id`, `shopid`, `name`, `orderid`, `cattype`) VALUES
(183, 4, '精品推荐', 3, 0),
(284, 4, '风味小吃', 0, 0),
(285, 4, '特色小炒', 2, 0),
(286, 4, '凉菜系列', 3, 0),
(287, 4, '饮料系列', 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_group`
--

CREATE TABLE IF NOT EXISTS `xiaozu_group` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL COMMENT '用户组名称',
  `type` varchar(100) NOT NULL COMMENT '前台或者后台',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 导出表中的数据 `xiaozu_group`
--

INSERT INTO `xiaozu_group` (`id`, `name`, `type`) VALUES
(1, '超级管理员', 'admin'),
(2, '配送员', 'font'),
(3, '商家会员', 'font'),
(4, '区域管理员', 'admin'),
(5, '普通会员', 'font');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_imglist`
--

CREATE TABLE IF NOT EXISTS `xiaozu_imglist` (
  `imagename` varchar(255) default NULL,
  `imageurl` varchar(255) default NULL,
  `addtime` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_imglist`
--

INSERT INTO `xiaozu_imglist` (`imagename`, `imageurl`, `addtime`) VALUES
('20160109202112532.jpg', '/upload/pliang/20160109202112532.jpg', 1452342072),
('20160109202326999.jpg', '/upload/pliang/20160109202326999.jpg', 1452342206),
('20160109202102129.jpg', '/upload/pliang/20160109202102129.jpg', 1452342062),
('20160109201841996.jpg', '/upload/pliang/20160109201841996.jpg', 1452341921),
('20160109201952833.jpg', '/upload/pliang/20160109201952833.jpg', 1452341992),
('20160109201717396.jpg', '/upload/pliang/20160109201717396.jpg', 1452341837),
('20160109200442877.jpg', '/upload/pliang/20160109200442877.jpg', 1452341082),
('20160109200443891.jpg', '/upload/pliang/20160109200443891.jpg', 1452341083),
('20160109200439996.jpg', '/upload/pliang/20160109200439996.jpg', 1452341079),
('20160109200440141.jpg', '/upload/pliang/20160109200440141.jpg', 1452341080),
('20160109200440413.jpg', '/upload/pliang/20160109200440413.jpg', 1452341080),
('20160109200441680.jpg', '/upload/pliang/20160109200441680.jpg', 1452341081),
('20160109200441572.jpg', '/upload/pliang/20160109200441572.jpg', 1452341081),
('20160109200442385.jpg', '/upload/pliang/20160109200442385.jpg', 1452341082),
('20160109200438137.jpg', '/upload/pliang/20160109200438137.jpg', 1452341078),
('20160109200439857.jpg', '/upload/pliang/20160109200439857.jpg', 1452341079),
('20160109200438641.jpg', '/upload/pliang/20160109200438641.jpg', 1452341078),
('20160109200437214.jpg', '/upload/pliang/20160109200437214.jpg', 1452341077),
('20160109202334694.jpg', '/upload/pliang/20160109202334694.jpg', 1452342214),
('20160109202501959.jpg', '/upload/pliang/20160109202501959.jpg', 1452342301),
('20160109204851764.jpg', '/upload/pliang/20160109204851764.jpg', 1452343731),
('20160109204901670.jpg', '/upload/pliang/20160109204901670.jpg', 1452343741),
('20160109204901641.jpg', '/upload/pliang/20160109204901641.jpg', 1452343741),
('20160109204901433.jpg', '/upload/pliang/20160109204901433.jpg', 1452343741),
('20160109204902179.jpg', '/upload/pliang/20160109204902179.jpg', 1452343742),
('20160109204902569.jpg', '/upload/pliang/20160109204902569.jpg', 1452343742),
('20160109204902239.jpg', '/upload/pliang/20160109204902239.jpg', 1452343742),
('20160109204903395.jpg', '/upload/pliang/20160109204903395.jpg', 1452343743),
('20160109204923250.jpg', '/upload/pliang/20160109204923250.jpg', 1452343763),
('20160109210427864.jpg', '/upload/pliang/20160109210427864.jpg', 1452344667),
('20160109210428820.jpg', '/upload/pliang/20160109210428820.jpg', 1452344668),
('20160109210428745.jpg', '/upload/pliang/20160109210428745.jpg', 1452344668),
('20160109210429247.jpg', '/upload/pliang/20160109210429247.jpg', 1452344669),
('20160109210429577.jpg', '/upload/pliang/20160109210429577.jpg', 1452344669),
('20160109210430629.jpg', '/upload/pliang/20160109210430629.jpg', 1452344670),
('20160109210430607.jpg', '/upload/pliang/20160109210430607.jpg', 1452344670),
('20160109210431995.jpg', '/upload/pliang/20160109210431995.jpg', 1452344671),
('20160109210431929.jpg', '/upload/pliang/20160109210431929.jpg', 1452344671),
('20160109210809649.jpg', '/upload/pliang/20160109210809649.jpg', 1452344889),
('20160109210812258.jpg', '/upload/pliang/20160109210812258.jpg', 1452344892),
('20160109210816632.jpg', '/upload/pliang/20160109210816632.jpg', 1452344896),
('20160109210819560.jpg', '/upload/pliang/20160109210819560.jpg', 1452344899),
('20160109211523273.jpg', '/upload/pliang/20160109211523273.jpg', 1452345323),
('20160109211532242.jpg', '/upload/pliang/20160109211532242.jpg', 1452345332),
('20160109211532679.jpg', '/upload/pliang/20160109211532679.jpg', 1452345332),
('20160109211533887.jpg', '/upload/pliang/20160109211533887.jpg', 1452345333),
('20160109211533973.jpg', '/upload/pliang/20160109211533973.jpg', 1452345333),
('20160109211533483.jpg', '/upload/pliang/20160109211533483.jpg', 1452345333),
('20160109211534129.jpg', '/upload/pliang/20160109211534129.jpg', 1452345334),
('20160109211534940.jpg', '/upload/pliang/20160109211534940.jpg', 1452345334),
('20160109211535192.jpg', '/upload/pliang/20160109211535192.jpg', 1452345335),
('20160109211535590.jpg', '/upload/pliang/20160109211535590.jpg', 1452345335),
('20160109211536101.jpg', '/upload/pliang/20160109211536101.jpg', 1452345336),
('20160109211537870.jpg', '/upload/pliang/20160109211537870.jpg', 1452345337),
('20160109213052197.jpg', '/upload/pliang/20160109213052197.jpg', 1452346252),
('20160109213053230.jpg', '/upload/pliang/20160109213053230.jpg', 1452346253),
('20160109213053298.jpg', '/upload/pliang/20160109213053298.jpg', 1452346253),
('20160109213054853.jpg', '/upload/pliang/20160109213054853.jpg', 1452346254),
('20160109213054741.jpg', '/upload/pliang/20160109213054741.jpg', 1452346254),
('20160109213055951.jpg', '/upload/pliang/20160109213055951.jpg', 1452346255),
('20160109213056552.jpg', '/upload/pliang/20160109213056552.jpg', 1452346256),
('20160109213057892.jpg', '/upload/pliang/20160109213057892.jpg', 1452346257),
('20160109213058781.jpg', '/upload/pliang/20160109213058781.jpg', 1452346258),
('20160109213059929.jpg', '/upload/pliang/20160109213059929.jpg', 1452346259),
('20160109214101423.jpg', '/upload/pliang/20160109214101423.jpg', 1452346861),
('20160109214102693.jpg', '/upload/pliang/20160109214102693.jpg', 1452346862),
('20160109214102787.jpg', '/upload/pliang/20160109214102787.jpg', 1452346862),
('20160109214103478.jpg', '/upload/pliang/20160109214103478.jpg', 1452346863),
('20160109214103643.jpg', '/upload/pliang/20160109214103643.jpg', 1452346863),
('20160109214104183.jpg', '/upload/pliang/20160109214104183.jpg', 1452346864),
('20160109214104993.jpg', '/upload/pliang/20160109214104993.jpg', 1452346864),
('20160109214105777.jpg', '/upload/pliang/20160109214105777.jpg', 1452346865),
('20160109214105504.jpg', '/upload/pliang/20160109214105504.jpg', 1452346865),
('20160109214106424.jpg', '/upload/pliang/20160109214106424.jpg', 1452346866),
('20160109214106694.jpg', '/upload/pliang/20160109214106694.jpg', 1452346866),
('20160109214107138.jpg', '/upload/pliang/20160109214107138.jpg', 1452346867),
('20160109214107623.jpg', '/upload/pliang/20160109214107623.jpg', 1452346867),
('20160109214108986.jpg', '/upload/pliang/20160109214108986.jpg', 1452346868),
('20160109214108854.jpg', '/upload/pliang/20160109214108854.jpg', 1452346868),
('20160109214109602.jpg', '/upload/pliang/20160109214109602.jpg', 1452346869),
('20160109214109910.jpg', '/upload/pliang/20160109214109910.jpg', 1452346869),
('20160109214110141.jpg', '/upload/pliang/20160109214110141.jpg', 1452346870),
('20160109214110850.jpg', '/upload/pliang/20160109214110850.jpg', 1452346870),
('20160109214111611.jpg', '/upload/pliang/20160109214111611.jpg', 1452346871),
('20160109214111707.jpg', '/upload/pliang/20160109214111707.jpg', 1452346871),
('20160109214111774.jpg', '/upload/pliang/20160109214111774.jpg', 1452346871),
('20160109214112585.jpg', '/upload/pliang/20160109214112585.jpg', 1452346872),
('20160109225353933.jpg', '/upload/pliang/20160109225353933.jpg', 1452351233),
('20160109225358580.jpg', '/upload/pliang/20160109225358580.jpg', 1452351238),
('20160109225408410.jpg', '/upload/pliang/20160109225408410.jpg', 1452351248),
('20160109225415516.jpg', '/upload/pliang/20160109225415516.jpg', 1452351255);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_juan`
--

CREATE TABLE IF NOT EXISTS `xiaozu_juan` (
  `id` int(20) NOT NULL auto_increment,
  `card` varchar(20) NOT NULL COMMENT '优惠劵卡号',
  `card_password` varchar(10) NOT NULL COMMENT '优惠劵密码',
  `status` int(1) NOT NULL default '0' COMMENT '状态，0未使用，1已绑定，2已使用，3无效',
  `creattime` int(11) NOT NULL COMMENT '制造时间',
  `cost` int(5) NOT NULL COMMENT '优惠金额',
  `limitcost` int(5) NOT NULL COMMENT '购物车限制金额下限',
  `endtime` int(11) NOT NULL default '0' COMMENT '失效时间',
  `uid` int(20) NOT NULL default '0' COMMENT '用户ID',
  `username` varchar(100) NOT NULL default '0' COMMENT '用户名',
  `usetime` int(11) NOT NULL default '0' COMMENT '使用时间',
  `name` varchar(50) NOT NULL default '优惠劵',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 导出表中的数据 `xiaozu_juan`
--

INSERT INTO `xiaozu_juan` (`id`, `card`, `card_password`, `status`, `creattime`, `cost`, `limitcost`, `endtime`, `uid`, `username`, `usetime`, `name`) VALUES
(1, '1452586431234', '3c335', 1, 1452586431, 1, 1, 1452586431, 2937, 'wmr2', 0, '注册账号赠送优惠券'),
(10, '1453111795754', '9aece', 1, 1453111795, 1, 1, 1453111795, 2946, 'dsdas', 0, '注册账号赠送优惠券');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_locationpsy`
--

CREATE TABLE IF NOT EXISTS `xiaozu_locationpsy` (
  `uid` int(20) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lng` varchar(20) NOT NULL,
  `addtime` int(12) NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_locationpsy`
--

INSERT INTO `xiaozu_locationpsy` (`uid`, `lat`, `lng`, `addtime`) VALUES
(2869, '0', '0', 1452420199),
(355, '0', '0', 1452438076),
(2541, '0', '0', 1452438156);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_marketcate`
--

CREATE TABLE IF NOT EXISTS `xiaozu_marketcate` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '目录名称',
  `keywd` varchar(50) default NULL COMMENT '关键字',
  `desc` varchar(255) default NULL COMMENT '描述',
  `parent_id` int(20) NOT NULL default '0' COMMENT '上级ID  0为1级目录',
  `shopid` int(20) default NULL,
  `orderid` int(5) NOT NULL default '999',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=249 ;

--
-- 导出表中的数据 `xiaozu_marketcate`
--

INSERT INTO `xiaozu_marketcate` (`id`, `name`, `keywd`, `desc`, `parent_id`, `shopid`, `orderid`) VALUES
(143, '酒品类', NULL, NULL, 0, 103, 2),
(142, '食品零食', NULL, NULL, 0, 103, 1),
(141, '饮料类', NULL, NULL, 0, 103, 1),
(144, '饼干糕点', NULL, NULL, 142, 103, 1),
(193, '熟食', NULL, NULL, 142, 103, 5),
(194, '方便速食', NULL, NULL, 142, 103, 6),
(195, '糖果巧克', NULL, NULL, 142, 103, 9),
(196, '糕点', NULL, NULL, 142, 103, 4),
(197, '薯片膨化', NULL, NULL, 142, 103, 5),
(198, '休闲食品', NULL, NULL, 142, 103, 8),
(199, '纯净水', NULL, NULL, 141, 103, 1),
(201, '啤酒', NULL, NULL, 143, 103, 0),
(202, '白酒', NULL, NULL, 143, 103, 1),
(203, '鸡尾酒', NULL, NULL, 143, 103, 2),
(204, '红酒', NULL, NULL, 143, 103, 4),
(229, '粮油干货', NULL, NULL, 0, 103, 3),
(230, '家居清洁', NULL, NULL, 0, 103, 4),
(231, '纸巾洗护', NULL, NULL, 0, 103, 5),
(232, '茶饮料', NULL, NULL, 141, 103, 2),
(233, '功能性饮料', NULL, NULL, 141, 103, 3),
(234, '果汁饮料', NULL, NULL, 141, 103, 5),
(235, '碳酸饮料', NULL, NULL, 141, 103, 5),
(236, '粮油干货', NULL, NULL, 229, 103, 1),
(237, '调味品', NULL, NULL, 229, 103, 2),
(238, '米面类', NULL, NULL, 229, 103, 3),
(239, '干货', NULL, NULL, 229, 103, 5),
(240, '食用油', NULL, NULL, 229, 103, 6),
(241, '厨卫清洁', NULL, NULL, 230, 103, 1),
(242, '居家日用', NULL, NULL, 230, 103, 1),
(243, '清洁工具', NULL, NULL, 230, 103, 5),
(244, '家用电器', NULL, NULL, 230, 103, 6),
(245, '口腔护理', NULL, NULL, 231, 103, 32),
(246, '面部护理', NULL, NULL, 231, 103, 1),
(247, '沐浴用品', NULL, NULL, 231, 103, 3),
(248, '女性护理', NULL, NULL, 231, 103, 5);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_member`
--

CREATE TABLE IF NOT EXISTS `xiaozu_member` (
  `uid` int(11) NOT NULL auto_increment,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(250) NOT NULL,
  `creattime` int(11) NOT NULL,
  `logintime` int(11) NOT NULL,
  `usertype` int(1) NOT NULL COMMENT '0.普通会员，1开店商家',
  `score` int(5) NOT NULL default '0' COMMENT '积分',
  `cost` decimal(10,2) NOT NULL default '0.00' COMMENT '账号余额',
  `loginip` varchar(30) default NULL,
  `logo` varchar(255) default NULL,
  `status` int(1) NOT NULL default '0' COMMENT '账号是否可用',
  `safepwd` varchar(100) default NULL COMMENT '支付密码',
  `group` int(2) default '5',
  `is_bang` int(1) NOT NULL default '0',
  `parent_id` int(20) default '0',
  `total` int(6) default '0',
  `admin_id` int(20) NOT NULL default '0',
  `sex` int(11) NOT NULL,
  `wxopenid` text NOT NULL,
  `shopid` int(11) NOT NULL default '0' COMMENT '检查用户是否开店',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2947 ;

--
-- 导出表中的数据 `xiaozu_member`
--

INSERT INTO `xiaozu_member` (`uid`, `password`, `email`, `username`, `phone`, `address`, `creattime`, `logintime`, `usertype`, `score`, `cost`, `loginip`, `logo`, `status`, `safepwd`, `group`, `is_bang`, `parent_id`, `total`, `admin_id`, `sex`, `wxopenid`, `shopid`) VALUES
(4, 'e10adc3949ba59abbe56e057f20f883e', '4545454@qq.com', 'waimairen', '13782405992', '', 1433149257, 1452058884, 0, 8048, 0.00, '58.218.21.6', '/upload/user/20151025012740285.jpg', 0, '', 3, 0, 0, 228, 67, 0, '', 0),
(1112, 'e10adc3949ba59abbe56e057f20f883e', '56465@qq.com', 'market', '15555554444', '', 1442311583, 1450256434, 0, 1010, 0.00, '123.160.137.206', '', 0, NULL, 3, 0, 0, 0, 67, 0, '', 0),
(1647, 'e10adc3949ba59abbe56e057f20f883e', 'wqe@qq.com', 'psy', '15738832712', '', 1445219820, 1452426293, 0, 3010, 0.00, '123.52.117.205', '', 0, NULL, 2, 0, 0, 0, 0, 0, '', 0),
(2936, 'c1c4044002cb54231f3d54a577599831', 'fdsafdsa@163.com', 'wmr', '13540907240', '', 1452326719, 1453109327, 0, 4000, 56.00, '127.0.0.1', '', 0, NULL, 5, 0, 0, 0, 0, 0, '', 186),
(2937, 'e10adc3949ba59abbe56e057f20f883e', 'emil@qq.com', 'wmr2', '15666666666', '', 1452586431, 1452586501, 0, 1000, 0.00, '127.0.0.1', '', 0, NULL, 5, 0, 0, 0, 0, 0, '', 0),
(2946, 'e10adc3949ba59abbe56e057f20f883e', '', 'dsdas', '18336090797', '', 1453111795, 1453111795, 0, 1000, 0.00, '127.0.0.1', '', 0, NULL, 3, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_memberlog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_memberlog` (
  `id` int(20) NOT NULL auto_increment,
  `userid` int(20) NOT NULL,
  `type` int(1) NOT NULL default '0' COMMENT '1积分/2资金',
  `addtype` int(1) NOT NULL default '0' COMMENT '1增加2减少',
  `result` decimal(8,2) NOT NULL default '0.00' COMMENT '变动积分/金额数量',
  `addtime` int(12) NOT NULL default '0',
  `content` varchar(255) default NULL COMMENT '描述',
  `title` varchar(255) default NULL,
  `acount` decimal(6,2) NOT NULL default '0.00' COMMENT '账户总金额',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 导出表中的数据 `xiaozu_memberlog`
--

INSERT INTO `xiaozu_memberlog` (`id`, `userid`, `type`, `addtype`, `result`, `addtime`, `content`, `title`, `acount`) VALUES
(1, 2937, 1, 1, 1000.00, 1452586431, '注册送积分1000', '注册送积分', 1000.00),
(6, 2936, 1, 1, 1000.00, 1452849519, '用户登陆赠送积分1000总积分3000', '每天登陆', 3000.00),
(10, 2936, 1, 1, 1000.00, 1453109327, '用户登陆赠送积分1000总积分4000', '每天登陆', 4000.00),
(12, 2946, 1, 1, 1000.00, 1453111795, '注册送积分1000', '注册送积分', 1000.00);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_memcostlog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_memcostlog` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '用户uid',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `cost` decimal(10,2) NOT NULL COMMENT '剩余金额',
  `bdtype` int(1) NOT NULL COMMENT '变动类型 1为增加 2为减少',
  `bdcost` decimal(10,2) NOT NULL COMMENT '本次充值/扣除金额',
  `curcost` decimal(10,2) NOT NULL COMMENT '当前金额',
  `bdliyou` varchar(255) NOT NULL COMMENT '变动原因',
  `czuid` int(11) NOT NULL COMMENT '操作用户uid',
  `czusername` varchar(30) NOT NULL COMMENT '操作用户名称',
  `addtime` int(11) NOT NULL COMMENT '操作日期',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_memcostlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_menu`
--

CREATE TABLE IF NOT EXISTS `xiaozu_menu` (
  `name` varchar(100) NOT NULL COMMENT '操作名称',
  `cnname` varchar(200) NOT NULL,
  `moduleid` int(20) NOT NULL,
  `group` int(20) NOT NULL,
  `id` int(5) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_menu`
--

INSERT INTO `xiaozu_menu` (`name`, `cnname`, `moduleid`, `group`, `id`) VALUES
('psyposition', '实时监控配送员', 32, 4, 2),
('shop', '店铺销量分析', 18, 6, 0),
('orderyjin', '商家结算', 5, 6, 0),
('newslist', '新闻列表', 7, 6, 0),
('newslist', '新闻列表', 7, 7, 0),
('newstype', '新闻分类', 7, 7, 1),
('ordertoday', '当天订单处理', 5, 12, 0),
('shopmsglist', '商家入驻留言列表', 11, 1, 0),
('adminpsset', '网站配送设置', 10, 1, 3),
('memberlistps', '配送员管理', 32, 4, 0),
('addarealist', '后台添加购区域', 10, 4, 1),
('adminarealist', '后台区域列表', 10, 4, 0),
('adminfastfoods', '后台快速下单', 5, 4, 5),
('orderyjin', '商家结算', 5, 4, 4),
('ordertotal', '订单统计', 5, 4, 3),
('drawbacklog', '退款申请处理', 5, 4, 2),
('ordertoday', '当天订单处理', 5, 4, 1),
('orderlist', '所有订单', 5, 4, 0),
('addshop', '后台添加店铺', 3, 4, 2),
('adminshopwati', '后台待审核商家', 3, 4, 1),
('adminshoplist', '后台商家列表', 3, 4, 0),
('addmember', '添加会员', 2, 4, 1),
('memberlistshop', '商家会员列表', 2, 4, 0),
('index', '网站信息', 1, 4, 0),
('searchkey', '区域搜索关键字', 10, 1, 2),
('addarealist', '后台添加购区域', 10, 1, 1),
('psytj', '配送员订单统计', 32, 4, 1),
('adminarealist', '后台区域列表', 10, 1, 0),
('errlog', '错误日志', 17, 1, 9),
('cleartpl', '清理缓存', 17, 1, 8),
('rebkdata', '还原数据', 17, 1, 7),
('basedata', '备份数据', 17, 1, 6),
('smsset', '短信设置', 17, 1, 5),
('emailset', '邮箱设置', 17, 1, 4),
('othertpl', '短信/邮件模板设置', 17, 1, 3),
('specialpage', '专题页管理', 17, 1, 2),
('loginlist', '第三方登陆', 17, 1, 1),
('paylist', '支付接口列表', 17, 1, 0),
('giftlog', '礼品兑换记录', 8, 1, 2),
('gifttype', '礼品类型', 8, 1, 1),
('giftlist', '礼品列表', 8, 1, 0),
('newstype', '新闻分类', 7, 1, 1),
('newslist', '新闻列表', 7, 1, 0),
('adminfastfoods', '后台快速下单', 5, 1, 12),
('ordercomment', '订单评价列表', 5, 1, 11),
('beizhulist', '订单备注', 5, 1, 10),
('orderyjin', '商家结算', 5, 1, 9),
('areadtoji', '区域管理统计', 5, 1, 8),
('tjshophui', '闪惠订单统计', 5, 1, 7),
('shophuiorder', '闪惠订单', 5, 1, 6),
('ordertotal', '订单统计', 5, 1, 5),
('setpaotui', '跑腿信息设置', 5, 1, 4),
('drawsmlist', '退款原因说明', 5, 1, 3),
('drawbacklog', '退款申请处理', 5, 1, 2),
('ordertoday', '当天订单处理', 5, 1, 1),
('orderlist', '所有订单', 5, 1, 0),
('user', '会员购买数据', 18, 1, 3),
('goods', '菜品销量分析', 18, 1, 2),
('shop', '店铺销量分析', 18, 1, 1),
('area', '地区销量分析', 18, 1, 0),
('searchattr', '搜索关键词', 3, 1, 7),
('goodsgg', '商品规格', 3, 1, 6),
('goodsattr', '商品属性', 3, 1, 5),
('goodssign', '促销商品标签', 3, 1, 4),
('shoptype', '后台模型', 3, 1, 3),
('addshop', '后台添加店铺', 3, 1, 2),
('adminshopwati', '后台待审核商家', 3, 1, 1),
('adminshoplist', '后台商家列表', 3, 1, 0),
('membergrade', '会员成长等级', 2, 1, 8),
('grouplist', '会员分组', 2, 1, 7),
('addgroup', '添加会员分组', 2, 1, 6),
('addmember', '添加会员', 2, 1, 5),
('memcostloglist', '会员余额操作日志', 2, 1, 4),
('memberlistshop', '商家会员列表', 2, 1, 3),
('memberlist', '普通会员列表', 2, 1, 2),
('addadmin', '添加管理员', 2, 1, 1),
('adminlist', '管理员列表', 2, 1, 0),
('limitset', '后台菜单管理', 1, 1, 8),
('modullist', '模块管理', 1, 1, 7),
('footinfo', '网站底部', 1, 1, 6),
('toplink', '网站导航', 1, 1, 5),
('sitebk', '网站水印', 1, 1, 4),
('tempset', '模板设置', 1, 1, 3),
('otherset', '网站限制', 1, 1, 2),
('siteset', '网站设置', 1, 1, 1),
('index', '网站信息', 1, 1, 0),
('asklist', '后台留言列表', 11, 1, 1),
('pmsglist', '私信列表', 11, 1, 2),
('singlelist', '单页列表', 12, 1, 0),
('cardlist', '充值卡列表', 16, 1, 0),
('addcard', '添加充值卡', 16, 1, 1),
('juanlist', '优惠券列表', 16, 1, 2),
('addjuan', '添加优惠券', 16, 1, 3),
('scoreset', '积分设置', 16, 1, 4),
('prensentjuan', '赠送卷设置', 16, 1, 5),
('sendtasklist', '群发任务', 16, 1, 6),
('sendtask', '发布群发任务', 16, 1, 7),
('advlist', '广告列表', 14, 1, 0),
('advtype', '广告类型', 14, 1, 1),
('wxset', '微信基本设置', 28, 1, 0),
('wxmenu', '微信菜单', 28, 1, 1),
('wxback', '微信自动回复', 28, 1, 2),
('wxuser', '微信用户', 28, 1, 3),
('yiqisaylist', '微信端一起说留言管理', 28, 1, 4),
('glywxmsg', '微信端管理员发布置顶留言', 28, 1, 5),
('memberlistps', '配送员管理', 32, 1, 0),
('psymap', '配送员订单', 32, 1, 1),
('appset', 'app设置', 34, 1, 0),
('buyerapp', 'app用户端', 34, 1, 1),
('shopapp', 'app商家端', 34, 1, 2),
('psapp', 'app配送员', 34, 1, 3);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_messages`
--

CREATE TABLE IF NOT EXISTS `xiaozu_messages` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `qq` int(15) NOT NULL,
  `shopname` varchar(255) NOT NULL,
  `shopaddress` varchar(255) NOT NULL,
  `addtime` varchar(11) NOT NULL,
  `is_pass` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_messages`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_mobile`
--

CREATE TABLE IF NOT EXISTS `xiaozu_mobile` (
  `id` int(20) NOT NULL auto_increment,
  `phone` varchar(50) NOT NULL,
  `addtime` int(12) NOT NULL,
  `code` varchar(50) NOT NULL,
  `is_send` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `xiaozu_mobile`
--

INSERT INTO `xiaozu_mobile` (`id`, `phone`, `addtime`, `code`, `is_send`) VALUES
(1, '15738832712', 1449109151, '17216', 1);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_module`
--

CREATE TABLE IF NOT EXISTS `xiaozu_module` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `cnname` varchar(100) NOT NULL,
  `install` int(1) NOT NULL default '0' COMMENT '0表未安装1，表已安装',
  `parent_id` int(5) NOT NULL default '0' COMMENT '上级模块',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1115 ;

--
-- 导出表中的数据 `xiaozu_module`
--

INSERT INTO `xiaozu_module` (`id`, `name`, `cnname`, `install`, `parent_id`) VALUES
(1, 'system', '系统管理', 1, 0),
(2, 'member', '用户管理', 1, 0),
(3, 'shop', '店铺管理', 1, 0),
(18, 'analysis', '数据分析模块', 1, 0),
(5, 'order', '订单管理', 1, 0),
(7, 'news', '内容管理', 1, 0),
(8, 'gift', '礼品管理', 1, 0),
(17, 'other', '其他管理', 1, 0),
(10, 'area', '区域管理', 1, 3),
(11, 'ask', '留言管理', 1, 7),
(12, 'single', '单页', 1, 7),
(16, 'card', '营销管理', 1, 0),
(14, 'adv', '广告管理', 1, 7),
(20, 'html5', '手机模块', 1, 16),
(28, 'weixin', '微信', 1, 0),
(30, 'wxsite', '微信网站', 1, 28),
(31, 'plate', '订台', 1, 1),
(32, 'psuser', '配送员模块', 1, 3),
(34, 'app', 'app', 1, 28),
(35, 'shopcenter', 'shopcenter', 1, 16);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_news`
--

CREATE TABLE IF NOT EXISTS `xiaozu_news` (
  `id` int(20) NOT NULL auto_increment,
  `content` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `typeid` int(2) NOT NULL,
  `orderid` int(5) NOT NULL default '1000' COMMENT '1000',
  `seo_key` varchar(255) default NULL,
  `seo_content` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 导出表中的数据 `xiaozu_news`
--

INSERT INTO `xiaozu_news` (`id`, `content`, `addtime`, `title`, `typeid`, `orderid`, `seo_key`, `seo_content`) VALUES
(7, '现在国内的外卖市场极其火爆，各个平台凭借地理优势悄然占据市场，分食市场份额。利用大的环境趋势去完成自己创业梦想。光合科技完全独立自主研发的外卖人订餐系统来帮助您，国内第一外卖订餐系统，为您提供外卖行业的全套解决方案，帮助创业者们搭建外卖网站，完成创业梦想，您向成功又迈近了一步。', 1436544000, '订单支付', 3, 4, '做外卖平台找外卖人订餐系统', '外卖市场火爆，外卖人订餐系统也很火爆，价格优惠的外卖人订餐系统给创业者们提供外卖行业的全套解决方案'),
(8, '各位尊敬的创业者们你们好，为了解决您对技术方面的后顾之忧，我们光合科技郑重承诺，我们为您提供终身免费的一个网站升级服务。解决您的后顾之忧，让您能放开手脚去大干一番，对，我们就是您起飞的翅膀。', 1436544000, '配送说明', 4, 3, '外卖人订餐系统提供终身免费升级服务', '外卖人订餐系统提供终身免费升级服务。光合科技外卖人订餐平台开发团队承诺您，我们外卖人订餐系统平台提供终身免费升级的服务'),
(10, '<ul class="tabs" style="margin:0px;padding:0px;font-family:''Microsoft YaHei'', SimSun, Arial;border-width:0px 0px 1px;border-style:none none solid;border-bottom-color:#e0e1e2;list-style:none;width:1060px;height:41px;color:#333333;line-height:normal;background-color:#f5f5f5;"><li class="checked" style="margin:1px 0px 0px;padding:0px;list-style:none;border-width:1px 1px 0px;border-top-style:solid;border-right-style:solid;border-left-style:solid;border-top-color:#ffffff;border-right-color:#ffffff;border-left-color:#ffffff;float:left;width:200px;height:40px;text-align:center;line-height:40px;font-size:20px;color:#3f7cc2;cursor:pointer;border-radius:4px;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;"><span style="margin:0px;padding:0px;width:198px;height:39px;display:block;line-height:39px;color:#3c7bc5;cursor:pointer;border-radius:4px;border-width:1px 1px 0px;border-top-style:solid;border-right-style:solid;border-left-style:solid;border-top-color:#e0e1e2;border-right-color:#e0e1e2;border-left-color:#e0e1e2;">后台功能说明</span></li>\r\n<li style="margin:1px 0px 0px;padding:0px;list-style:none;border-width:0px 0px 1px;border-style:none none solid;border-bottom-color:#e0e1e2;float:left;width:200px;height:40px;text-align:center;line-height:40px;font-size:20px;color:#666666;cursor:pointer;"><a href="http://www.waimairen.com/support/index/belongid/6" style="margin:0px;padding:0px;text-decoration:none;color:#666666;">商家后台说明</a></li>\r\n<li style="margin:1px 0px 0px;padding:0px;list-style:none;border-width:0px 0px 1px;border-style:none none solid;border-bottom-color:#e0e1e2;float:left;width:200px;height:40px;text-align:center;line-height:40px;font-size:20px;color:#666666;cursor:pointer;"><a href="http://www.waimairen.com/support/index/belongid/18" style="margin:0px;padding:0px;text-decoration:none;color:#666666;">手机网站</a></li>\r\n</ul>\r\n<div class="tabbox_underline" style="margin:0px;padding:0px;font-family:''Microsoft YaHei'', SimSun, Arial;width:1060px;height:1px;border-top-width:1px;border-top-style:solid;border-top-color:#ffffff;position:absolute;top:40px;left:0px;z-index:-5;color:#333333;line-height:normal;background-color:#f5f5f5;"></div>\r\n<div class="tab_conbox" style="margin:20px 0px 10px;padding:0px;font-family:''Microsoft YaHei'', SimSun, Arial;width:1060px;overflow:hidden;color:#333333;line-height:normal;background-color:#f5f5f5;"><div class="tab_con" style="margin:0px;padding:0px;width:1060px;overflow:hidden;"><div class="tab_con_listBox" style="margin:0px;padding:15px 0px;width:240px;overflow:hidden;float:left;position:relative;background:url(http://www.waimairen.com/templates/default/public/images/icon_shadow.png) 225px 0px repeat-y;"><div class="tab_con_list" style="margin:0px;padding:0px;width:200px;overflow:hidden;float:left;"><dl style="margin:0px;padding:0px;border:0px none;width:200px;overflow:hidden;float:left;"><dt style="margin:0px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:32px;color:#666666;font-size:15px;text-indent:57px;position:relative;cursor:pointer;"><div class="tab_con_icon icon_open" is_expansion="true" style="margin:0px;padding:0px;width:13px;height:13px;position:absolute;top:10px;left:37px;cursor:pointer;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -541px -154px no-repeat;"></div>\r\n基础功能</dt><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/100" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">外卖人5.0版本</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/101" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">网站限制</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/102" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">积分设置</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/103" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">导航管理</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/104" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">管理员权限</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/105" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">店铺列表</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/106" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">店铺标签</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/107" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">私信管理</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/108" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">优惠券管理</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/109" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">充值卡管理</a></dd><dd class="checked" style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;color:#3f7cc2;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n群发任务</dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/111" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">登陆接口</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/112" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">短信邮箱模板</a></dd><dd style="margin:0px 0px 2px;padding:0px;border:0px none;width:200px;overflow:hidden;line-height:25px;text-indent:73px;font-size:14px;white-space:nowrap;position:relative;"><div class="icon_news" style="margin:0px;padding:0px;position:absolute;top:10px;left:60px;width:4px;height:4px;background:url(http://www.waimairen.com/templates/default/public/images/img.png) -560px -6px no-repeat;"></div>\r\n<a href="http://www.waimairen.com/support/index/showid/126" style="margin:0px;padding:0px;text-decoration:none;color:#888888;width:auto;overflow:hidden;">商家结算</a></dd></dl></div>\r\n<div class="tab_con_TopShadow" style="margin:0px;padding:0px;width:25px;height:65px;position:absolute;top:0px;left:225px;background:url(http://www.waimairen.com/templates/default/public/images/topshadow.png);"></div>\r\n<div class="tab_con_BottomShadow" style="margin:0px;padding:0px;width:25px;height:65px;position:absolute;left:225px;bottom:0px;background:url(http://www.waimairen.com/templates/default/public/images/bottomshadow.png);"></div>\r\n</div>\r\n<div class="tab_con_content" style="margin:0px;padding:0px;width:800px;overflow:hidden;float:right;"><span class="tab_con_title" style="margin:0px 0px 10px;padding:0px;font-size:26px;color:#64666d;line-height:60px;text-align:center;">群发</span></div>\r\n</div>\r\n</div>', 1438617600, '退货说明', 4, 2, '退货说明', '///48/58//'),
(11, '外卖人网上订餐系统8.0发布上线！', 1438704000, '联系我们', 15, 1, '外卖人', '外卖人网上订餐'),
(12, '用户下单流程', 1452355200, '下单流程', 3, 0, '', ''),
(13, '订单支付方式', 1452355200, '支付方式', 3, 0, '', ''),
(14, '联系我们', 1452355200, '网站介绍', 15, 0, '', ''),
(15, '物流服务', 1452355200, '物流服务', 4, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_newstype`
--

CREATE TABLE IF NOT EXISTS `xiaozu_newstype` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL default '1' COMMENT '目录类型：1文章目录 2包含下级目录 ',
  `parent_id` int(20) NOT NULL default '0' COMMENT '上级目录ID，0： 顶级目录',
  `displaytype` tinyint(1) NOT NULL default '1' COMMENT '1：一个文章显示一个页面，2表示此目录文章先到到一个文章里',
  `orderid` int(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 导出表中的数据 `xiaozu_newstype`
--

INSERT INTO `xiaozu_newstype` (`id`, `name`, `type`, `parent_id`, `displaytype`, `orderid`) VALUES
(3, '新手入门', 1, 0, 1, 3),
(4, '物流及售后', 1, 0, 1, 4),
(12, '常见问题', 1, 11, 1, 3),
(15, '关于我们', 1, 0, 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_oauth`
--

CREATE TABLE IF NOT EXISTS `xiaozu_oauth` (
  `id` int(20) NOT NULL auto_increment,
  `uid` int(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `type` varchar(50) default NULL,
  `addtime` int(12) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_oauth`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_onlinelog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_onlinelog` (
  `id` int(30) NOT NULL auto_increment,
  `type` varchar(100) NOT NULL,
  `upid` int(20) NOT NULL default '0',
  `dno` int(30) NOT NULL,
  `cost` decimal(6,2) NOT NULL default '0.00',
  `status` int(1) NOT NULL default '0',
  `addtime` int(12) NOT NULL,
  `source` int(11) NOT NULL,
  `paydotype` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_onlinelog`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_order`
--

CREATE TABLE IF NOT EXISTS `xiaozu_order` (
  `id` int(20) NOT NULL auto_increment,
  `dno` varchar(100) NOT NULL COMMENT '订单编号',
  `shopuid` int(20) NOT NULL COMMENT '店铺UID',
  `shopid` int(20) NOT NULL COMMENT '店铺ID',
  `shopname` varchar(100) NOT NULL COMMENT '店铺名称',
  `shopphone` varchar(20) NOT NULL COMMENT '店铺电话',
  `shopaddress` varchar(150) NOT NULL COMMENT '店铺地址',
  `buyeruid` int(20) NOT NULL COMMENT '购买用户ID，0未注册用户',
  `buyername` varchar(100) NOT NULL COMMENT '购买热名称',
  `buyeraddress` varchar(150) NOT NULL COMMENT '联系地址',
  `buyerphone` varchar(20) NOT NULL COMMENT '联系电话',
  `status` int(1) NOT NULL COMMENT '状态',
  `is_acceptorder` int(1) NOT NULL default '0' COMMENT '确认收货 0 未确认 1已确认',
  `paytype` varchar(20) NOT NULL default '0' COMMENT '支付类型outpay货到支付，open_acout账户余额支付，other调用paylist',
  `paystatus` int(1) NOT NULL COMMENT '支付状态1已支付',
  `trade_no` varchar(50) NOT NULL COMMENT '在线支付交易号',
  `content` varchar(255) NOT NULL COMMENT '订单备注',
  `ordertype` int(1) NOT NULL default '0' COMMENT '订餐方式1网站，2电话，3微信，4App',
  `daycode` int(10) NOT NULL default '0' COMMENT '当天订单序号',
  `area1` varchar(255) default NULL COMMENT '二级地址名称',
  `area2` varchar(255) default NULL COMMENT '三级地址名称',
  `area3` varchar(255) default NULL,
  `cxids` varchar(100) default NULL COMMENT '促销规则ID集',
  `cxcost` decimal(5,2) NOT NULL default '0.00' COMMENT '店铺促销优惠金额',
  `yhjcost` int(5) NOT NULL default '0' COMMENT '优惠劵优惠金额',
  `yhjids` varchar(255) default NULL COMMENT '使用优惠劵ID集',
  `ipaddress` varchar(255) default NULL,
  `scoredown` int(5) NOT NULL default '0' COMMENT '积分抵扣数',
  `is_ping` int(11) NOT NULL default '0' COMMENT '是否评价字段 1已评完 0未评',
  `isbefore` int(1) NOT NULL default '0' COMMENT '0:普通订单，1订台订单',
  `marketcost` decimal(6,2) NOT NULL default '0.00' COMMENT '超市商品总价',
  `marketps` decimal(5,2) NOT NULL default '0.00' COMMENT '超市配送配送',
  `shopcost` decimal(6,2) NOT NULL default '0.00' COMMENT '店铺商品总价',
  `shopps` decimal(5,2) NOT NULL default '0.00' COMMENT '店铺配送费',
  `pstype` int(1) NOT NULL default '0' COMMENT '配送方式 0：平台1：个人',
  `bagcost` decimal(5,2) NOT NULL default '0.00' COMMENT '打包费',
  `addtime` int(12) NOT NULL default '0' COMMENT '制造时间',
  `posttime` int(12) NOT NULL default '0' COMMENT '配送时间',
  `passtime` int(12) NOT NULL default '0' COMMENT '审核时间',
  `sendtime` int(12) NOT NULL default '0' COMMENT '发货时间',
  `suretime` int(12) NOT NULL default '0' COMMENT '完成时间',
  `allcost` decimal(6,2) NOT NULL default '0.00' COMMENT '订单实收费',
  `buycode` varchar(50) default NULL COMMENT '订台码',
  `othertext` text COMMENT '其他说明',
  `is_print` int(1) NOT NULL default '0',
  `wxstatus` int(1) NOT NULL default '0' COMMENT '1商家确认，2商家取消',
  `shoptype` int(1) default '0',
  `is_make` int(1) NOT NULL default '0',
  `is_reback` smallint(1) default '0',
  `areaids` char(255) default NULL,
  `psuid` int(20) default NULL,
  `psusername` varchar(100) default NULL,
  `psemail` varchar(100) default NULL,
  `admin_id` int(20) NOT NULL default '0',
  `is_goshop` int(1) NOT NULL default '0' COMMENT '0:外送 1订台/到店消费/自取',
  `paytype_name` varchar(30) default NULL COMMENT '支付类型code',
  `taxcost` decimal(5,2) NOT NULL,
  `postdate` text,
  `pttype` int(1) NOT NULL COMMENT '1为帮我送  2为帮我买',
  `ptkg` varchar(30) NOT NULL COMMENT '货 公斤 数',
  `ptkm` varchar(30) NOT NULL COMMENT '收取货 地址 两地 距离 km',
  `allkgcost` decimal(10,2) NOT NULL COMMENT '重量价格',
  `allkmcost` decimal(10,2) NOT NULL COMMENT '距离价格',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `xiaozu_order`
--

INSERT INTO `xiaozu_order` (`id`, `dno`, `shopuid`, `shopid`, `shopname`, `shopphone`, `shopaddress`, `buyeruid`, `buyername`, `buyeraddress`, `buyerphone`, `status`, `is_acceptorder`, `paytype`, `paystatus`, `trade_no`, `content`, `ordertype`, `daycode`, `area1`, `area2`, `area3`, `cxids`, `cxcost`, `yhjcost`, `yhjids`, `ipaddress`, `scoredown`, `is_ping`, `isbefore`, `marketcost`, `marketps`, `shopcost`, `shopps`, `pstype`, `bagcost`, `addtime`, `posttime`, `passtime`, `sendtime`, `suretime`, `allcost`, `buycode`, `othertext`, `is_print`, `wxstatus`, `shoptype`, `is_make`, `is_reback`, `areaids`, `psuid`, `psusername`, `psemail`, `admin_id`, `is_goshop`, `paytype_name`, `taxcost`, `postdate`, `pttype`, `ptkg`, `ptkm`, `allkgcost`, `allkmcost`) VALUES
(1, '14528495852415', 4, 4, '光合外卖旗舰店', '15122211123', '棉纺西路4号院1号商业1层商11号', 2936, '测试', '凯旋门', '15738832712', 3, 1, '0', 0, '', '', 1, 1, NULL, NULL, NULL, '8', 1.00, 0, '', '127.0.0.1本机地址', 0, 0, 0, 0.00, 0.00, 46.00, 0.00, 0, 2.00, 1452849585, 1452849600, 1452849585, 1452851124, 1452851144, 47.00, 'c970e7', '', 0, 0, 0, 1, 0, '', NULL, NULL, NULL, 67, 0, NULL, 0.00, '17:20-17:40', 0, '', '', 0.00, 0.00);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_orderdet`
--

CREATE TABLE IF NOT EXISTS `xiaozu_orderdet` (
  `id` int(20) NOT NULL auto_increment,
  `order_id` int(20) NOT NULL,
  `goodsid` int(20) NOT NULL,
  `goodsname` varchar(150) NOT NULL,
  `goodscost` decimal(5,2) NOT NULL,
  `goodscount` int(2) NOT NULL,
  `status` int(1) NOT NULL default '0',
  `shopid` int(5) NOT NULL,
  `is_send` int(11) NOT NULL default '0' COMMENT '是否是赠品 1赠品',
  `product_id` int(20) NOT NULL default '0',
  `have_det` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `xiaozu_orderdet`
--

INSERT INTO `xiaozu_orderdet` (`id`, `order_id`, `goodsid`, `goodsname`, `goodscost`, `goodscount`, `status`, `shopid`, `is_send`, `product_id`, `have_det`) VALUES
(1, 1, 871, '虾仁面', 30.00, 1, 0, 4, 0, 0, 0),
(2, 1, 1031, '麻辣豆腐盖饭【小份】', 8.00, 2, 0, 4, 0, 46, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_orderstatus`
--

CREATE TABLE IF NOT EXISTS `xiaozu_orderstatus` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` int(11) NOT NULL COMMENT '订单ID',
  `statustitle` varchar(255) NOT NULL COMMENT '状态',
  `ststusdesc` varchar(255) NOT NULL COMMENT '状态描述',
  `addtime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `xiaozu_orderstatus`
--

INSERT INTO `xiaozu_orderstatus` (`id`, `orderid`, `statustitle`, `ststusdesc`, `addtime`) VALUES
(1, 1, '订单已提交', '请耐心等待商家确认', 1452849585),
(2, 1, '商家已接单', '商家正在准备商品', 1452850965),
(3, 1, '商家已发货', '商品已经准备好', 1452851125),
(4, 1, '已完成订单', '请评价订单', 1452851144);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_otherlogin`
--

CREATE TABLE IF NOT EXISTS `xiaozu_otherlogin` (
  `id` int(5) NOT NULL auto_increment,
  `loginname` varchar(10) NOT NULL,
  `logindesc` varchar(100) NOT NULL,
  `logourl` varchar(255) NOT NULL,
  `addmeta` varchar(255) default NULL COMMENT '附加meta内容',
  `temp` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_otherlogin`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_paotuiset`
--

CREATE TABLE IF NOT EXISTS `xiaozu_paotuiset` (
  `id` int(11) NOT NULL auto_increment,
  `kg` varchar(20) NOT NULL,
  `kgcost` decimal(10,2) NOT NULL,
  `addkg` varchar(20) NOT NULL,
  `addkgcost` decimal(10,2) NOT NULL,
  `km` varchar(20) NOT NULL,
  `kmcost` decimal(10,2) NOT NULL,
  `addkm` varchar(20) NOT NULL,
  `addkmcost` decimal(10,2) NOT NULL,
  `postdate` text NOT NULL COMMENT '跑腿取件或者收货时间',
  `is_ptorderbefore` int(1) NOT NULL default '1' COMMENT '是否支持预定默认为1 支持预定',
  `pt_orderday` int(11) NOT NULL default '1' COMMENT '预定天数 默认为1支持预定1天',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `xiaozu_paotuiset`
--

INSERT INTO `xiaozu_paotuiset` (`id`, `kg`, `kgcost`, `addkg`, `addkgcost`, `km`, `kmcost`, `addkm`, `addkmcost`, `postdate`, `is_ptorderbefore`, `pt_orderday`) VALUES
(1, '5', 10.00, '2', 2.00, '1', 2.50, '2', 10.00, 'a:9:{i:0;a:3:{s:1:"s";i:21600;s:1:"e";i:28800;s:1:"i";s:0:"";}i:1;a:3:{s:1:"s";i:28800;s:1:"e";i:36000;s:1:"i";s:0:"";}i:2;a:3:{s:1:"s";i:36000;s:1:"e";i:43200;s:1:"i";s:0:"";}i:3;a:3:{s:1:"s";i:43200;s:1:"e";i:50400;s:1:"i";s:0:"";}i:4;a:3:{s:1:"s";i:50400;s:1:"e";i:57600;s:1:"i";s:0:"";}i:5;a:3:{s:1:"s";i:57600;s:1:"e";i:64800;s:1:"i";s:0:"";}i:6;a:3:{s:1:"s";i:64800;s:1:"e";i:72000;s:1:"i";s:0:"";}i:7;a:3:{s:1:"s";i:72000;s:1:"e";i:79200;s:1:"i";s:0:"";}i:8;a:3:{s:1:"s";i:79200;s:1:"e";i:86340;s:1:"i";s:0:"";}}', 1, 7);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_paotuitask`
--

CREATE TABLE IF NOT EXISTS `xiaozu_paotuitask` (
  `id` int(11) NOT NULL auto_increment,
  `dno` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `addtime` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 未处理  1已接受 2 已完成3取消订单',
  `ordertype` int(11) NOT NULL,
  `ipaddress` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_paotuitask`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_paylist`
--

CREATE TABLE IF NOT EXISTS `xiaozu_paylist` (
  `id` int(5) NOT NULL auto_increment,
  `loginname` varchar(10) NOT NULL,
  `logindesc` varchar(100) NOT NULL,
  `logourl` varchar(255) NOT NULL,
  `addmeta` varchar(255) default NULL COMMENT '附加meta内容',
  `temp` text NOT NULL,
  `type` int(1) NOT NULL default '0' COMMENT '0表示网站使用，1表示手机使用',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 导出表中的数据 `xiaozu_paylist`
--

INSERT INTO `xiaozu_paylist` (`id`, `loginname`, `logindesc`, `logourl`, `addmeta`, `temp`, `type`) VALUES
(8, 'open_acout', '余额支付', '', NULL, '[]', 0),
(9, 'alipay', '支付宝', 'http://192.168.0.101/plug/pay/alipay/images/alipay.gif', NULL, '{"partner":"","key":"","seller_email":""}', 1),
(10, 'alimobile', '支付宝手机支付', 'http://192.168.0.117/plug/pay/alimobile/images/', NULL, '{"partner":"waimairen","key":"waimairen","seller_email":"waimairen@qq.com"}', 2),
(12, 'weixin', '微信支付', 'http://www.wmrnew.com/plug/pay/weixin/images/', NULL, '[]', 2);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_paytype`
--

CREATE TABLE IF NOT EXISTS `xiaozu_paytype` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `arrayset` text NOT NULL,
  `is_plug` int(1) NOT NULL COMMENT '0不调用接口，1调用接口文件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_paytype`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_pmes`
--

CREATE TABLE IF NOT EXISTS `xiaozu_pmes` (
  `id` int(20) NOT NULL auto_increment,
  `uid` int(20) default '0',
  `username` varchar(100) default NULL,
  `usercontent` text,
  `userimg` varchar(255) default NULL,
  `creattime` int(12) NOT NULL default '0',
  `backuid` int(20) NOT NULL default '0',
  `backcontent` text,
  `backimg` varchar(255) default NULL,
  `backtime` int(12) NOT NULL default '0',
  `backusername` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `xiaozu_pmes`
--

INSERT INTO `xiaozu_pmes` (`id`, `uid`, `username`, `usercontent`, `userimg`, `creattime`, `backuid`, `backcontent`, `backimg`, `backtime`, `backusername`) VALUES
(7, 1, 'waimairen', '我的私信，&lt;img src=http://7.0.com/upload/emotion/28.gif?ver=1 alt=吃饭 /&gt;&lt;img src=http://7.0.com/upload/emotion/21.gif?ver=1 alt=呕吐 /&gt;&lt;img src=http://7.0.com/upload/emotion/37.gif alt=降温 /&gt;', '', 1436945798, 0, '', '', 0, '网站客服'),
(6, 1, 'waimairen', '分享图片', '/upload/user/20150715152358343.png', 1436945044, 0, '', '', 0, '网站客服');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_positionkey`
--

CREATE TABLE IF NOT EXISTS `xiaozu_positionkey` (
  `datatype` int(1) NOT NULL,
  `parent_id` int(20) NOT NULL,
  `datacode` varchar(100) NOT NULL,
  `datacontent` varchar(100) NOT NULL,
  `lat` varchar(20) default NULL,
  `lng` varchar(20) default NULL,
  FULLTEXT KEY `datacode` (`datacode`),
  FULLTEXT KEY `datacontent` (`datacontent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_positionkey`
--

INSERT INTO `xiaozu_positionkey` (`datatype`, `parent_id`, `datacode`, `datacontent`, `lat`, `lng`) VALUES
(2, 1, 'zhengzhouguanghekejiyouxiangongsi', '郑州光合科技有限公司', '34.753426987181', '113.63176801937'),
(3, 1, 'shiweijianshedongluzhongyuandonglu', '市委,建设东路,中原东路', '34.758894', '113.649357'),
(3, 1, 'swjsdlzydl', '市委,建设东路,中原东路', '34.758894', '113.649357'),
(3, 3, 'henanshengzhengzhoushierqiqudaxuelu46hao', '河南省郑州市二七区大学路46号', '34.758894', '113.649357'),
(3, 3, 'hnszzseqqdxlh', '河南省郑州市二七区大学路46号', '34.758894', '113.649357'),
(3, 5, 'zhongyuandonglushiweibishagang', '中原东路,市委,碧沙岗', '34.755691', '113.645691'),
(3, 5, 'zydlswbsg', '中原东路,市委,碧沙岗', '34.755691', '113.645691'),
(3, 7, 'henanshengzhengzhoushierqiquzhongyuandonglu', '河南省郑州市二七区中原东路', '34.755691', '113.645691'),
(3, 7, 'hnszzseqqzydl', '河南省郑州市二七区中原东路', '34.755691', '113.645691'),
(3, 9, 'shiweibishagangjianshedonglu', '市委,碧沙岗,建设东路', '34.759368', '113.644182'),
(3, 9, 'swbsgjsdl', '市委,碧沙岗,建设东路', '34.759368', '113.644182'),
(3, 11, 'henanshengzhengzhoushierqiqujianshedonglu', '河南省郑州市二七区建设东路', '34.759368', '113.644182'),
(3, 11, 'hnszzseqqjsdl', '河南省郑州市二七区建设东路', '34.759368', '113.644182'),
(3, 13, 'henanshengzhengzhoushizhongyuanqujianshedonglu32hao', '河南省郑州市中原区建设东路32号', '34.760139', '113.639008'),
(3, 13, 'hnszzszyqjsdlh', '河南省郑州市中原区建设东路32号', '34.760139', '113.639008'),
(3, 15, 'henanshengzhengzhoushierqiqujianshedonglu19hao', '河南省郑州市二七区建设东路19号', '34.760614', '113.643248'),
(3, 15, 'hnszzseqqjsdlh', '河南省郑州市二七区建设东路19号', '34.760614', '113.643248'),
(2, 2, 'wmrwsdcxt', '外卖人网上订餐系统', '34.756445986449', '113.67267002517'),
(3, 119, 'jianshelubishagangbaihualu', '建设路,碧沙岗,百花路', '34.760792', '113.630097'),
(2, 2, 'waimairenwangshangdingcanxitong', '外卖人网上订餐系统', '34.756445986449', '113.67267002517'),
(2, 2, 'cstyd', '超市体验店', '34.756445986449', '113.67267002517'),
(3, 17, 'jianshedonglushiweibishagang', '建设东路,市委,碧沙岗', '34.76008', '113.646841'),
(3, 17, 'jsdlswbsg', '建设东路,市委,碧沙岗', '34.76008', '113.646841'),
(3, 19, 'henanshengzhengzhoushierqiqumianfangdonglu58fu1', '河南省郑州市二七区棉纺东路58附1', '34.76008', '113.646841'),
(3, 19, 'hnszzseqqmfdlf', '河南省郑州市二七区棉纺东路58附1', '34.76008', '113.646841'),
(3, 21, 'shiweihezuolumianfanglu', '市委,合作路,棉纺路', '34.763045', '113.64641'),
(3, 21, 'swhzlmfl', '市委,合作路,棉纺路', '34.763045', '113.64641'),
(3, 23, 'henanshengzhengzhoushierqiquwanglinanjie7haolou', '河南省郑州市二七区王立砦南街7号楼', '34.763045', '113.64641'),
(3, 23, 'hnszzseqqwlnjhl', '河南省郑州市二七区王立砦南街7号楼', '34.763045', '113.64641'),
(3, 25, 'shiweirenmingongyuanhuochezhan', '市委,人民公园,火车站', '34.76174', '113.658915'),
(3, 25, 'swrmgyhcz', '市委,人民公园,火车站', '34.76174', '113.658915'),
(3, 27, 'henanshengzhengzhoushierqiqutiegonglijie36hao', '河南省郑州市二七区铁工里街36号', '34.76174', '113.658915'),
(3, 27, 'hnszzseqqtgljh', '河南省郑州市二七区铁工里街36号', '34.76174', '113.658915'),
(3, 29, 'dashiqiaoshiweichenzhuang', '大石桥,市委,陈庄', '34.765714', '113.659202'),
(3, 29, 'dsqswcz', '大石桥,市委,陈庄', '34.765714', '113.659202'),
(3, 31, 'henanshengzhengzhoushierqiquyanhelu8hao', '河南省郑州市二七区沿河路8号', '34.765714', '113.659202'),
(3, 31, 'hnszzseqqyhlh', '河南省郑州市二七区沿河路8号', '34.765714', '113.659202'),
(3, 33, 'bishagangshiweizhongyuandonglu', '碧沙岗,市委,中原东路', '34.757055', '113.643607'),
(3, 33, 'bsgswzydl', '碧沙岗,市委,中原东路', '34.757055', '113.643607'),
(3, 35, 'shiweijingguangluzhongyuandonglu', '市委,京广路,中原东路', '34.756402', '113.653237'),
(3, 35, 'swjglzydl', '市委,京广路,中原东路', '34.756402', '113.653237'),
(3, 37, 'henanshengzhengzhoushierqiqudaxuebeilu', '河南省郑州市二七区大学北路', '34.756402', '113.653237'),
(3, 37, 'hnszzseqqdxbl', '河南省郑州市二七区大学北路', '34.756402', '113.653237'),
(3, 39, 'tongbailuxizhanshichangjie', '桐柏路,西站,市场街', '34.768205', '113.626001'),
(3, 39, 'tblxzscj', '桐柏路,西站,市场街', '34.768205', '113.626001'),
(3, 41, 'henanshengzhengzhoushizhongyuanqumianfanglu', '河南省郑州市中原区棉纺路', '34.768205', '113.626001'),
(3, 41, 'hnszzszyqmfl', '河南省郑州市中原区棉纺路', '34.768205', '113.626001'),
(3, 43, 'xizhanfangzhidashijietongbailu', '西站,纺织大世界,桐柏路', '34.772178', '113.628085'),
(3, 43, 'xzfzdsjtbl', '西站,纺织大世界,桐柏路', '34.772178', '113.628085'),
(3, 45, 'henanshengzhengzhoushizhongyuanquxizhanlu33hao', '河南省郑州市中原区西站路33号', '34.772178', '113.628085'),
(3, 45, 'hnszzszyqxzlh', '河南省郑州市中原区西站路33号', '34.772178', '113.628085'),
(3, 47, 'henanshengzhengzhoushierqiqujianshedonglu33haofu42hao', '河南省郑州市二七区建设东路33号附42号', '34.759665', '113.645045'),
(3, 47, 'hnszzseqqjsdlhfh', '河南省郑州市二七区建设东路33号附42号', '34.759665', '113.645045'),
(3, 49, 'shiweibishagangjianshelu', '市委,碧沙岗,建设路', '34.759249', '113.636924'),
(3, 49, 'swbsgjsl', '市委,碧沙岗,建设路', '34.759249', '113.636924'),
(3, 51, 'henanshengzhengzhoushizhongyuanqujianshedonglu', '河南省郑州市中原区建设东路', '34.759249', '113.636924'),
(3, 51, 'hnszzszyqjsdl', '河南省郑州市中原区建设东路', '34.759249', '113.636924'),
(3, 53, 'shiweimianfanglubishagang', '市委,棉纺路,碧沙岗', '34.761088', '113.639439'),
(3, 53, 'swmflbsg', '市委,棉纺路,碧沙岗', '34.761088', '113.639439'),
(3, 55, 'henanshengzhengzhoushierqiqujianshedonglu23hao', '河南省郑州市二七区建设东路23号', '34.761088', '113.639439'),
(3, 55, 'hnszzseqqjsdlh', '河南省郑州市二七区建设东路23号', '34.761088', '113.639439'),
(3, 57, 'bishagangmianfanglushanbeilu', '碧沙岗,棉纺路,嵩山北路', '34.764409', '113.637427'),
(3, 57, 'bsgmflsbl', '碧沙岗,棉纺路,嵩山北路', '34.764409', '113.637427'),
(3, 59, 'henanshengzhengzhoushierqiqumianfanglu', '河南省郑州市二七区棉纺路', '34.764409', '113.637427'),
(3, 59, 'hnszzseqqmfl', '河南省郑州市二七区棉纺路', '34.764409', '113.637427'),
(3, 61, 'shanbeilubishagangmianfanglu', '嵩山北路,碧沙岗,棉纺路', '34.765966', '113.636457'),
(3, 61, 'sblbsgmfl', '嵩山北路,碧沙岗,棉纺路', '34.765966', '113.636457'),
(3, 63, 'henanshengzhengzhoushierqiqushanbeilu57hao', '河南省郑州市二七区嵩山北路57号', '34.765966', '113.636457'),
(3, 63, 'hnszzseqqsblh', '河南省郑州市二七区嵩山北路57号', '34.765966', '113.636457'),
(3, 65, 'shanbeiluxizhanbishagang', '嵩山北路,西站,碧沙岗', '34.768368', '113.636349'),
(3, 65, 'sblxzbsg', '嵩山北路,西站,碧沙岗', '34.768368', '113.636349'),
(3, 67, 'henanshengzhengzhoushizhongyuanqushanbeilu270hao', '河南省郑州市中原区嵩山北路270号', '34.768368', '113.636349'),
(3, 67, 'hnszzszyqsblh', '河南省郑州市中原区嵩山北路270号', '34.768368', '113.636349'),
(3, 69, 'qinlingluxihuanlurantunlu', '秦岭路,西环路,冉屯路', '34.775262', '113.607244'),
(3, 69, 'qllxhlrtl', '秦岭路,西环路,冉屯路', '34.775262', '113.607244'),
(3, 71, 'henanshengzhengzhoushizhongyuanqutailinglu', '河南省郑州市中原区泰岭路', '34.775262', '113.607244'),
(3, 71, 'hnszzszyqtll', '河南省郑州市中原区泰岭路', '34.775262', '113.607244'),
(3, 73, 'shiweijianshedonglubishagang', '市委,建设东路,碧沙岗', '34.759309', '113.647057'),
(3, 73, 'swjsdlbsg', '市委,建设东路,碧沙岗', '34.759309', '113.647057'),
(3, 75, 'henanshengzhengzhoushierqiqujianshedonglu35haolou', '河南省郑州市二七区建设东路35号楼', '34.759309', '113.647057'),
(3, 75, 'hnszzseqqjsdlhl', '河南省郑州市二七区建设东路35号楼', '34.759309', '113.647057'),
(3, 77, 'henanshengzhengzhoushierqiquhezuolu', '河南省郑州市二七区合作路', '34.763401', '113.645404'),
(3, 77, 'hnszzseqqhzl', '河南省郑州市二七区合作路', '34.763401', '113.645404'),
(3, 79, 'shiweibishagangmianfanglu', '市委,碧沙岗,棉纺路', '34.761207', '113.643895'),
(3, 79, 'swbsgmfl', '市委,碧沙岗,棉纺路', '34.761207', '113.643895'),
(3, 81, 'henanshengzhengzhoushierqiqumianfangdonglu46haofu1', '河南省郑州市二七区棉纺东路46号-附1', '34.761207', '113.643895'),
(3, 81, 'hnszzseqqmfdlhf', '河南省郑州市二七区棉纺东路46号-附1', '34.761207', '113.643895'),
(3, 83, 'shiweizhongyuandonglubishagang', '市委,中原东路,碧沙岗', '34.757411', '113.647991'),
(3, 83, 'swzydlbsg', '市委,中原东路,碧沙岗', '34.757411', '113.647991'),
(3, 85, 'shiweijianshedonglujianxinjie', '市委,建设东路,建新街', '34.760851', '113.650938'),
(3, 85, 'swjsdljxj', '市委,建设东路,建新街', '34.760851', '113.650938'),
(3, 87, 'henanshengzhengzhoushierqiqujianshedonglu10hao', '河南省郑州市二七区建设东路10号', '34.760851', '113.650938'),
(3, 87, 'hnszzseqqjsdlh', '河南省郑州市二七区建设东路10号', '34.760851', '113.650938'),
(3, 89, 'chenzhuangdehuajiehuochezhan', '陈庄,德化街,火车站', '34.756462', '113.672856'),
(3, 89, 'czdhjhcz', '陈庄,德化街,火车站', '34.756462', '113.672856'),
(3, 91, 'henanshengzhengzhoushierqiqudehuajie66', '河南省郑州市二七区德化街66', '34.756462', '113.672856'),
(3, 91, 'hnszzseqqdhj', '河南省郑州市二七区德化街66', '34.756462', '113.672856'),
(3, 93, 'henanshengzhengzhoushierqiqudaxuelu53hao2haolou', '河南省郑州市二七区大学路53号2号楼', '34.758122', '113.64986'),
(3, 93, 'hnszzseqqdxlhhl', '河南省郑州市二七区大学路53号2号楼', '34.758122', '113.64986'),
(3, 95, 'shiweihezuolujianshedonglu', '市委,合作路,建设东路', '34.762215', '113.649357'),
(3, 95, 'swhzljsdl', '市委,合作路,建设东路', '34.762215', '113.649357'),
(3, 97, 'henanshengzhengzhoushierqiquhezuolu29hao', '河南省郑州市二七区合作路29号', '34.762215', '113.649357'),
(3, 97, 'hnszzseqqhzlh', '河南省郑州市二七区合作路29号', '34.762215', '113.649357'),
(3, 99, 'shiweijingguanglurenmingongyuan', '市委,京广路,人民公园', '34.75836', '113.655034'),
(3, 99, 'swjglrmgy', '市委,京广路,人民公园', '34.75836', '113.655034'),
(3, 101, 'henanshengzhengzhoushierqiqujingguangbeilu', '河南省郑州市二七区京广北路', '34.75836', '113.655034'),
(3, 101, 'hnszzseqqjgbl', '河南省郑州市二七区京广北路', '34.75836', '113.655034'),
(3, 103, 'shiweijianxinjiedashiqiao', '市委,建新街,大石桥', '34.762749', '113.654962'),
(3, 103, 'swjxjdsq', '市委,建新街,大石桥', '34.762749', '113.654962'),
(3, 105, 'henanshengzhengzhoushierqiqujianxinbeijie74hao', '河南省郑州市二七区建新北街74号', '34.762749', '113.654962'),
(3, 105, 'hnszzseqqjxbjh', '河南省郑州市二七区建新北街74号', '34.762749', '113.654962'),
(3, 107, 'shiweizhongyuandonglujingguanglu', '市委,中原东路,京广路', '34.756047', '113.650722'),
(3, 107, 'swzydljgl', '市委,中原东路,京广路', '34.756047', '113.650722'),
(3, 109, 'henanshengzhengzhoushierqiqudaxuelu54haofu2hao', '河南省郑州市二七区大学路54号附2号', '34.756047', '113.650722'),
(3, 109, 'hnszzseqqdxlhfh', '河南省郑州市二七区大学路54号附2号', '34.756047', '113.650722'),
(3, 111, 'shiweijingguangluhuochezhan', '市委,京广路,火车站', '34.75575', '113.656543'),
(3, 111, 'swjglhcz', '市委,京广路,火车站', '34.75575', '113.656543'),
(3, 113, 'henanshengzhengzhoushierqiqujingguangbeilu83fu7', '河南省郑州市二七区京广北路83附7', '34.75575', '113.656543'),
(3, 113, 'hnszzseqqjgblf', '河南省郑州市二七区京广北路83附7', '34.75575', '113.656543'),
(3, 115, 'henanshengzhengzhoushierqiqumianfangdonglu53haolunan', '河南省郑州市二七区棉纺东路53号路南', '34.761147', '113.644542'),
(3, 115, 'hnszzseqqmfdlhln', '河南省郑州市二七区棉纺东路53号路南', '34.761147', '113.644542'),
(3, 117, 'henanshengzhengzhoushierqiqujianshedonglu48hao', '河南省郑州市二七区建设东路48号', '34.760258', '113.649428'),
(3, 117, 'hnszzseqqjsdlh', '河南省郑州市二七区建设东路48号', '34.760258', '113.649428'),
(2, 2, 'chaoshitiyandian', '超市体验店', '34.756445986449', '113.67267002517'),
(3, 119, 'jslbsgbhl', '建设路,碧沙岗,百花路', '34.760792', '113.630097'),
(3, 121, 'henanshengzhengzhoushizhongyuanqujianshexilu135hao', '河南省郑州市中原区建设西路135号', '34.760792', '113.630097'),
(3, 121, 'hnszzszyqjsxlh', '河南省郑州市中原区建设西路135号', '34.760792', '113.630097'),
(3, 123, 'shiweibishagangzhongyuandonglu', '市委,碧沙岗,中原东路', '34.757529', '113.646841'),
(3, 123, 'swbsgzydl', '市委,碧沙岗,中原东路', '34.757529', '113.646841'),
(3, 125, 'bishagangshiweilvchengguangchang', '碧沙岗,市委,绿城广场', '34.755275', '113.639152'),
(3, 125, 'bsgswlcgc', '碧沙岗,市委,绿城广场', '34.755275', '113.639152'),
(2, 3, 'guanghechaoshiqijiandian', '光合超市旗舰店', '34.802460991241', '113.59771496427'),
(2, 3, 'ghcsqjd', '光合超市旗舰店', '34.802460991241', '113.59771496427'),
(3, 127, 'shiweimianfangluhezuolu', '市委,棉纺路,合作路', '34.763401', '113.644685'),
(3, 127, 'swmflhzl', '市委,棉纺路,合作路', '34.763401', '113.644685'),
(3, 129, 'henanshengzhengzhoushierqiqumianfangdonglu', '河南省郑州市二七区棉纺东路', '34.763401', '113.644685'),
(3, 129, 'hnszzseqqmfdl', '河南省郑州市二七区棉纺东路', '34.763401', '113.644685'),
(3, 131, 'shiweimianfanglujianshedonglu', '市委,棉纺路,建设东路', '34.761444', '113.645548'),
(3, 131, 'swmfljsdl', '市委,棉纺路,建设东路', '34.761444', '113.645548'),
(3, 133, 'henanshengzhengzhoushierqiqumianfangdonglu542hao', '河南省郑州市二七区棉纺东路54-2号', '34.761444', '113.645548'),
(3, 133, 'hnszzseqqmfdlh', '河南省郑州市二七区棉纺东路54-2号', '34.761444', '113.645548'),
(3, 135, 'henanshengzhengzhoushierqiqumianfangdonglu45hao', '河南省郑州市二七区棉纺东路45号', '34.762215', '113.642026'),
(3, 135, 'hnszzseqqmfdlh', '河南省郑州市二七区棉纺东路45号', '34.762215', '113.642026'),
(3, 137, 'henanshengzhengzhoushierqiquzhongyuanlu78hao', '河南省郑州市二七区中原路78号', '34.754148', '113.654028'),
(3, 137, 'hnszzseqqzylh', '河南省郑州市二七区中原路78号', '34.754148', '113.654028'),
(3, 139, 'zhengzhoutielujukangfuzhongjiejingguanglu', '郑州铁路局,康复中街,京广路', '34.750352', '113.655896'),
(3, 139, 'zztljkfzjjgl', '郑州铁路局,康复中街,京广路', '34.750352', '113.655896'),
(3, 141, 'henanshengzhengzhoushierqiqukangfuzhongjie7hao', '河南省郑州市二七区康复中街7号', '34.750352', '113.655896'),
(3, 141, 'hnszzseqqkfzjh', '河南省郑州市二七区康复中街7号', '34.750352', '113.655896'),
(3, 143, 'henanshengzhengzhoushierqiqumianfangdonglu19hao', '河南省郑州市二七区棉纺东路19号', '34.762452', '113.644757'),
(3, 143, 'hnszzseqqmfdlh', '河南省郑州市二七区棉纺东路19号', '34.762452', '113.644757'),
(3, 145, 'henanshengzhengzhoushierqiqumianfangdonglu65fu1', '河南省郑州市二七区棉纺东路65附1', '34.760554', '113.648782'),
(3, 145, 'hnszzseqqmfdlf', '河南省郑州市二七区棉纺东路65附1', '34.760554', '113.648782'),
(3, 147, 'shiweibishaganglvchengguangchang', '市委,碧沙岗,绿城广场', '34.753733', '113.638792'),
(3, 147, 'swbsglcgc', '市委,碧沙岗,绿城广场', '34.753733', '113.638792'),
(3, 149, 'henanshengzhengzhoushierqiquzhongyuandonglu101hao', '河南省郑州市二七区中原东路101号', '34.753733', '113.638792'),
(3, 149, 'hnszzseqqzydlh', '河南省郑州市二七区中原东路101号', '34.753733', '113.638792'),
(3, 151, 'henanshengzhengzhoushierqiquzhongyuandonglu78', '河南省郑州市二七区中原东路78', '34.755691', '113.654171'),
(3, 151, 'hnszzseqqzydl', '河南省郑州市二七区中原东路78', '34.755691', '113.654171'),
(3, 153, 'henanshengzhengzhoushierqiqumianfangdonglu20hao', '河南省郑州市二七区棉纺东路20号', '34.762452', '113.644685'),
(3, 153, 'hnszzseqqmfdlh', '河南省郑州市二七区棉纺东路20号', '34.762452', '113.644685'),
(3, 155, 'henanshengzhengzhoushierqiquzhongyuandonglu739hao', '河南省郑州市二七区中原东路73-9号', '34.754148', '113.656543'),
(3, 155, 'hnszzseqqzydlh', '河南省郑州市二七区中原东路73-9号', '34.754148', '113.656543'),
(3, 157, 'henanshengzhengzhoushierqiquzhongyuanzhonglu97hao', '河南省郑州市二七区中原中路97号', '34.754386', '113.642314'),
(3, 157, 'hnszzseqqzyzlh', '河南省郑州市二七区中原中路97号', '34.754386', '113.642314'),
(3, 159, 'shiweidaxuelutaoyuanlu', '市委,大学路,桃源路', '34.750767', '113.646266'),
(3, 159, 'swdxltyl', '市委,大学路,桃源路', '34.750767', '113.646266'),
(3, 161, 'jingguanglushiweihuochezhan', '京广路,市委,火车站', '34.756165', '113.657837'),
(3, 161, 'jglswhcz', '京广路,市委,火车站', '34.756165', '113.657837'),
(3, 163, 'henanshengzhengzhoushierqiqujingguangbeilu36hao', '河南省郑州市二七区京广北路36号', '34.756165', '113.657837'),
(3, 163, 'hnszzseqqjgblh', '河南省郑州市二七区京广北路36号', '34.756165', '113.657837'),
(3, 165, 'kangfuqianjiedaxuelujingguanglu', '康复前街,大学路,京广路', '34.749996', '113.65489'),
(3, 165, 'kfqjdxljgl', '康复前街,大学路,京广路', '34.749996', '113.65489'),
(3, 167, 'henanshengzhengzhoushierqiqukangfuzhongjie2hao', '河南省郑州市二七区康复中街2号', '34.749996', '113.65489'),
(3, 167, 'hnszzseqqkfzjh', '河南省郑州市二七区康复中街2号', '34.749996', '113.65489'),
(3, 169, 'henanshengzhengzhoushierqiquzhongyuandonglu98', '河南省郑州市二七区中原东路98', '34.754504', '113.642098'),
(3, 169, 'hnszzseqqzydl', '河南省郑州市二七区中原东路98', '34.754504', '113.642098'),
(3, 171, 'henanshengzhengzhoushierqiquguangchangnanlu', '河南省郑州市二七区广场南路', '34.751776', '113.637571'),
(3, 171, 'hnszzseqqgcnl', '河南省郑州市二七区广场南路', '34.751776', '113.637571'),
(3, 173, 'henanshengzhengzhoushierqiqushannanlu182hao', '河南省郑州市二七区嵩山南路182号', '34.753496', '113.634912'),
(3, 173, 'hnszzseqqsnlh', '河南省郑州市二七区嵩山南路182号', '34.753496', '113.634912'),
(3, 175, 'qinlingluxihuanlushichangjie', '秦岭路,西环路,市场街', '34.775025', '113.607316'),
(3, 175, 'qllxhlscj', '秦岭路,西环路,市场街', '34.775025', '113.607316'),
(3, 177, 'henanshengzhengzhoushizhongyuanquqinlinglu', '河南省郑州市中原区秦岭路', '34.775025', '113.607316'),
(3, 177, 'hnszzszyqqll', '河南省郑州市中原区秦岭路', '34.775025', '113.607316'),
(3, 179, 'bishagangshiweishanbeilu', '碧沙岗,市委,嵩山北路', '34.753437', '113.633259'),
(3, 179, 'bsgswsbl', '碧沙岗,市委,嵩山北路', '34.753437', '113.633259'),
(3, 181, 'henanshengzhengzhoushizhongyuanqushannanlu', '河南省郑州市中原区嵩山南路', '34.753437', '113.633259'),
(3, 181, 'hnszzszyqsnl', '河南省郑州市中原区嵩山南路', '34.753437', '113.633259'),
(3, 183, 'shiweibishaganggongrenlu', '市委,碧沙岗,工人路', '34.753318', '113.631606'),
(3, 183, 'swbsggrl', '市委,碧沙岗,工人路', '34.753318', '113.631606'),
(3, 185, 'henanshengzhengzhoushizhongyuanquzhongyuanxilu233hao', '河南省郑州市中原区中原西路233号', '34.753318', '113.631606'),
(3, 185, 'hnszzszyqzyxlh', '河南省郑州市中原区中原西路233号', '34.753318', '113.631606'),
(3, 187, 'shiweizhongyuandonglukangfuzhongjie', '市委,中原东路,康复中街', '34.754801', '113.649285'),
(3, 187, 'swzydlkfzj', '市委,中原东路,康复中街', '34.754801', '113.649285'),
(3, 189, 'henanshengzhengzhoushierqiqudaxuebeilu54hao', '河南省郑州市二七区大学北路54号', '34.754801', '113.649285'),
(3, 189, 'hnszzseqqdxblh', '河南省郑州市二七区大学北路54号', '34.754801', '113.649285'),
(3, 191, 'renmingongyuanhuochezhanjingguanglu', '人民公园,火车站,京广路', '34.75486', '113.659705'),
(3, 191, 'rmgyhczjgl', '人民公园,火车站,京广路', '34.75486', '113.659705'),
(3, 193, 'henanshengzhengzhoushierqiqubeigongfangqianjie29hao', '河南省郑州市二七区北工房前街29号', '34.75486', '113.659705'),
(3, 193, 'hnszzseqqbgfqjh', '河南省郑州市二七区北工房前街29号', '34.75486', '113.659705'),
(3, 195, 'zhongyuandonglushiweikangfuzhongjie', '中原东路,市委,康复中街', '34.75314', '113.6518'),
(3, 195, 'zydlswkfzj', '中原东路,市委,康复中街', '34.75314', '113.6518'),
(3, 197, 'henanshengzhengzhoushierqiquzhongyuanlu108hao', '河南省郑州市二七区中原路108号', '34.75314', '113.6518'),
(3, 197, 'hnszzseqqzylh', '河南省郑州市二七区中原路108号', '34.75314', '113.6518'),
(3, 199, 'shiweidaxuelukangfuqianjie', '市委,大学路,康复前街', '34.750233', '113.64986'),
(3, 199, 'swdxlkfqj', '市委,大学路,康复前街', '34.750233', '113.64986'),
(3, 201, 'henanshengzhengzhoushierqiqudaxuelu66haofu6hao', '河南省郑州市二七区大学路66号附6号', '34.750233', '113.64986'),
(3, 201, 'hnszzseqqdxlhfh', '河南省郑州市二七区大学路66号附6号', '34.750233', '113.64986'),
(3, 203, 'henanshengzhengzhoushierqiqutaoyuanlu27haoloufu22hao', '河南省郑州市二七区桃源路27号楼附22号', '34.747505', '113.644757'),
(3, 203, 'hnszzseqqtylhlfh', '河南省郑州市二七区桃源路27号楼附22号', '34.747505', '113.644757'),
(3, 205, 'daxuelushiweixinghuabeijie', '大学路,市委,兴华北街', '34.743767', '113.641092'),
(3, 205, 'dxlswxhbj', '大学路,市委,兴华北街', '34.743767', '113.641092'),
(3, 207, 'henanshengzhengzhoushierqiqulonghaizhonglu', '河南省郑州市二七区陇海中路', '34.743767', '113.641092'),
(3, 207, 'hnszzseqqlhzl', '河南省郑州市二七区陇海中路', '34.743767', '113.641092'),
(3, 209, 'jinshuiludulinghuayuanlu', '金水路,杜岭,花园路', '34.773542', '113.688379'),
(3, 209, 'jsldlhyl', '金水路,杜岭,花园路', '34.773542', '113.688379'),
(3, 211, 'henanshengzhengzhoushijinshuiquhuayuanlu84hao', '河南省郑州市金水区花园路84号', '34.773542', '113.688379'),
(3, 211, 'hnszzsjsqhylh', '河南省郑州市金水区花园路84号', '34.773542', '113.688379'),
(3, 213, 'shiweihezuolujianxinjie', '市委,合作路,建新街', '34.764528', '113.653453'),
(3, 213, 'swhzljxj', '市委,合作路,建新街', '34.764528', '113.653453'),
(3, 215, 'henanshengzhengzhoushierqiqujianxindongjie', '河南省郑州市二七区建新东街', '34.764528', '113.653453'),
(3, 215, 'hnszzseqqjxdj', '河南省郑州市二七区建新东街', '34.764528', '113.653453'),
(3, 217, 'henanshengzhengzhoushierqiqujianshedonglu30hao', '河南省郑州市二七区建设东路30号', '34.761325', '113.640086'),
(3, 217, 'hnszzseqqjsdlh', '河南省郑州市二七区建设东路30号', '34.761325', '113.640086'),
(3, 219, 'tongbailujianshelushichangjie', '桐柏路,建设路,市场街', '34.762512', '113.619245'),
(3, 219, 'tbljslscj', '桐柏路,建设路,市场街', '34.762512', '113.619245'),
(3, 221, 'henanshengzhengzhoushizhongyuanqujianshexilu66hao', '河南省郑州市中原区建设西路66号', '34.762512', '113.619245'),
(3, 221, 'hnszzszyqjsxlh', '河南省郑州市中原区建设西路66号', '34.762512', '113.619245'),
(3, 223, 'huashanluqinlinglugangpolu', '华山路,秦岭路,岗坡路', '34.760732', '113.606022'),
(3, 223, 'hslqllgpl', '华山路,秦岭路,岗坡路', '34.760732', '113.606022'),
(3, 225, 'henanshengzhengzhoushizhongyuanquhuashanlu103hao', '河南省郑州市中原区华山路103号', '34.760732', '113.606022'),
(3, 225, 'hnszzszyqhslh', '河南省郑州市中原区华山路103号', '34.760732', '113.606022'),
(3, 227, 'xihuanlulvdongcunhuguangyuan', '西环路,绿东村,湖光苑', '34.759071', '113.595818'),
(3, 227, 'xhlldchgy', '西环路,绿东村,湖光苑', '34.759071', '113.595818'),
(3, 229, 'henanshengzhengzhoushizhongyuanquzhongyuanxilu128hao', '河南省郑州市中原区中原西路128号', '34.759071', '113.595818'),
(3, 229, 'hnszzszyqzyxlh', '河南省郑州市中原区中原西路128号', '34.759071', '113.595818'),
(3, 231, 'xihuanluhuguangyuanlvdongcun', '西环路,湖光苑,绿东村', '34.758834', '113.587912'),
(3, 231, 'xhlhgyldc', '西环路,湖光苑,绿东村', '34.758834', '113.587912'),
(3, 233, 'henanshengzhengzhoushizhongyuanqucundajie134hao', '河南省郑州市中原区村大街134号', '34.758834', '113.587912'),
(3, 233, 'hnszzszyqcdjh', '河南省郑州市中原区村大街134号', '34.758834', '113.587912'),
(3, 235, 'beishunchengjierenmingongyuanhuochezhan', '北顺城街,人民公园,火车站', '34.759546', '113.677024'),
(3, 235, 'bscjrmgyhcz', '北顺城街,人民公园,火车站', '34.759546', '113.677024'),
(3, 237, 'henanshengzhengzhoushiguanchenghuizuqurenminlu2hao', '河南省郑州市管城回族区人民路2号', '34.759546', '113.677024'),
(3, 237, 'hnszzsgchzqrmlh', '河南省郑州市管城回族区人民路2号', '34.759546', '113.677024'),
(3, 239, 'nanguanchengnanluzijingshan', '南关,城南路,紫荆山', '34.749344', '113.686367'),
(3, 239, 'ngcnlzjs', '南关,城南路,紫荆山', '34.749344', '113.686367'),
(3, 241, 'henanshengzhengzhoushiguanchenghuizuquyanchanghoujie', '河南省郑州市管城回族区烟厂后街', '34.749344', '113.686367'),
(3, 241, 'hnszzsgchzqychj', '河南省郑州市管城回族区烟厂后街', '34.749344', '113.686367'),
(3, 243, 'fenghuangtaizhengluweilailu', '凤凰台,郑汴路,未来路', '34.74709', '113.718993'),
(3, 243, 'fhtzlwll', '凤凰台,郑汴路,未来路', '34.74709', '113.718993'),
(3, 245, 'henanshengzhengzhoushijinshuiquqingnianlu', '河南省郑州市金水区青年路', '34.74709', '113.718993'),
(3, 245, 'hnszzsjsqqnl', '河南省郑州市金水区青年路', '34.74709', '113.718993'),
(3, 247, 'henanshengzhengzhoushiguanchenghuizuquzhengweilu', '河南省郑州市管城回族区郑尉路', '34.715287', '113.722299'),
(3, 247, 'hnszzsgchzqzwl', '河南省郑州市管城回族区郑尉路', '34.715287', '113.722299'),
(3, 249, 'henanshengzhengzhoushiguanchenghuizuquzijingshannanlu', '河南省郑州市管城回族区紫荆山南路', '34.711964', '113.697434'),
(3, 249, 'hnszzsgchzqzjsnl', '河南省郑州市管城回族区紫荆山南路', '34.711964', '113.697434'),
(3, 251, 'henanshengzhengzhoushiguanchenghuizuqunanhuanlu', '河南省郑州市管城回族区南环路', '34.711964', '113.744864'),
(3, 251, 'hnszzsgchzqnhl', '河南省郑州市管城回族区南环路', '34.711964', '113.744864'),
(3, 253, 'jingguangluqingfengjiefuhuajie', '京广路,庆丰街,福华街', '34.732139', '113.660496'),
(3, 253, 'jglqfjfhj', '京广路,庆丰街,福华街', '34.732139', '113.660496'),
(3, 255, 'henanshengzhengzhoushierqiquzhengtonglu', '河南省郑州市二七区政通路', '34.732139', '113.660496'),
(3, 255, 'hnszzseqqztl', '河南省郑州市二七区政通路', '34.732139', '113.660496'),
(3, 257, 'zhengmiluqiliyanxinghuananjie', '郑密路,齐礼阎,兴华南街', '34.727274', '113.635487'),
(3, 257, 'zmlqlyxhnj', '郑密路,齐礼阎,兴华南街', '34.727274', '113.635487'),
(3, 259, 'henanshengzhengzhoushierqiquhanghaizhonglu150hao', '河南省郑州市二七区航海中路150号', '34.727274', '113.635487'),
(3, 259, 'hnszzseqqhhzlh', '河南省郑州市二七区航海中路150号', '34.727274', '113.635487'),
(3, 261, 'fengzhuanghanghaizhonglujingguanglu', '冯庄,航海中路,京广路', '34.726562', '113.671563'),
(3, 261, 'fzhhzljgl', '冯庄,航海中路,京广路', '34.726562', '113.671563'),
(3, 263, 'henanshengzhengzhoushierqiquhanghaizhonglu18hao', '河南省郑州市二七区航海中路18号', '34.726562', '113.671563'),
(3, 263, 'hnszzseqqhhzlh', '河南省郑州市二七区航海中路18号', '34.726562', '113.671563'),
(3, 265, 'hanghaidonglujinsegangwanchengdongnanlu', '航海东路,金色港湾,城东南路', '34.726681', '113.700165'),
(3, 265, 'hhdljsgwcdnl', '航海东路,金色港湾,城东南路', '34.726681', '113.700165'),
(3, 267, 'henanshengzhengzhoushiguanchenghuizuquhanghaidonglu226hao', '河南省郑州市管城回族区航海东路226号', '34.726681', '113.700165'),
(3, 267, 'hnszzsgchzqhhdlh', '河南省郑州市管城回族区航海东路226号', '34.726681', '113.700165'),
(3, 269, 'jingguangluzhengzhoutielujuqingfengjie', '京广路,郑州铁路局,庆丰街', '34.736767', '113.66567'),
(3, 269, 'jglzztljqfj', '京广路,郑州铁路局,庆丰街', '34.736767', '113.66567'),
(3, 271, 'henanshengzhengzhoushierqiqubaoquanjie', '河南省郑州市二七区保全街', '34.736767', '113.66567'),
(3, 271, 'hnszzseqqbqj', '河南省郑州市二七区保全街', '34.736767', '113.66567'),
(3, 273, 'daxueluqiliyanqingfengjie', '大学路,齐礼阎,庆丰街', '34.730241', '113.650435'),
(3, 273, 'dxlqlyqfj', '大学路,齐礼阎,庆丰街', '34.730241', '113.650435'),
(3, 275, 'henanshengzhengzhoushierqiqujinhaidadao120fu7hao', '河南省郑州市二七区金海大道120-附7号', '34.730241', '113.650435'),
(3, 275, 'hnszzseqqjhddfh', '河南省郑州市二七区金海大道120-附7号', '34.730241', '113.650435'),
(3, 277, 'henanshengzhengzhoushierqiquhanghaizhonglu251hao', '河南省郑州市二七区航海中路251号', '34.724782', '113.634768'),
(3, 277, 'hnszzseqqhhzlh', '河南省郑州市二七区航海中路251号', '34.724782', '113.634768'),
(3, 279, 'hanghaizhonglufengzhuangjieyunlu', '航海中路,冯庄,洁云路', '34.721934', '113.669407'),
(3, 279, 'hhzlfzjyl', '航海中路,冯庄,洁云路', '34.721934', '113.669407'),
(3, 281, 'henanshengzhengzhoushierqiquhuazhonglu', '河南省郑州市二七区华中路', '34.721934', '113.669407'),
(3, 281, 'hnszzseqqhzl', '河南省郑州市二七区华中路', '34.721934', '113.669407'),
(3, 283, 'xinghuananjieqiliyanzhengmilu', '兴华南街,齐礼阎,郑密路', '34.727393', '113.638649'),
(3, 283, 'xhnjqlyzml', '兴华南街,齐礼阎,郑密路', '34.727393', '113.638649'),
(3, 285, 'henanshengzhengzhoushierqiquhanghaizhonglu140hao', '河南省郑州市二七区航海中路140号', '34.727393', '113.638649'),
(3, 285, 'hnszzseqqhhzlh', '河南省郑州市二七区航海中路140号', '34.727393', '113.638649'),
(3, 287, 'hanghaizhonglufengzhuangjingguanglu', '航海中路,冯庄,京广路', '34.72407', '113.669838'),
(3, 287, 'hhzlfzjgl', '航海中路,冯庄,京广路', '34.72407', '113.669838'),
(3, 289, 'xinghuananjieqiliyanhanghaizhonglu', '兴华南街,齐礼阎,航海中路', '34.727037', '113.640948'),
(3, 289, 'xhnjqlyhhzl', '兴华南街,齐礼阎,航海中路', '34.727037', '113.640948'),
(3, 291, 'henanshengzhengzhoushierqiquhanghaizhonglu98hao', '河南省郑州市二七区航海中路98号', '34.727037', '113.640948'),
(3, 291, 'hnszzseqqhhzlh', '河南省郑州市二七区航海中路98号', '34.727037', '113.640948'),
(3, 293, 'hanghaixiluhuahuaixiaoquruhelu', '航海西路,华淮小区,汝河路', '34.727511', '113.603866'),
(3, 293, 'hhxlhhxqrhl', '航海西路,华淮小区,汝河路', '34.727511', '113.603866'),
(3, 295, 'henanshengzhengzhoushizhongyuanquxisanhuan', '河南省郑州市中原区西三环', '34.727511', '113.603866'),
(3, 295, 'hnszzszyqxsh', '河南省郑州市中原区西三环', '34.727511', '113.603866'),
(3, 297, 'hanghaidonglufengzhuangwulibao', '航海东路,冯庄,五里堡', '34.724426', '113.681911'),
(3, 297, 'hhdlfzwlb', '航海东路,冯庄,五里堡', '34.724426', '113.681911'),
(3, 299, 'henanshengzhengzhoushiguanchenghuizuqukejilu', '河南省郑州市管城回族区客技路', '34.724426', '113.681911'),
(3, 299, 'hnszzsgchzqkjl', '河南省郑州市管城回族区客技路', '34.724426', '113.681911'),
(3, 301, 'zhengmiluqiliyanhuaihelu', '郑密路,齐礼阎,淮河路', '34.728817', '113.634337'),
(3, 301, 'zmlqlyhhl', '郑密路,齐礼阎,淮河路', '34.728817', '113.634337'),
(3, 303, 'henanshengzhengzhoushierqiqushannanlu', '河南省郑州市二七区嵩山南路', '34.728817', '113.634337'),
(3, 303, 'hnszzseqqsnl', '河南省郑州市二七区嵩山南路', '34.728817', '113.634337'),
(3, 305, 'hanghaixiludihuhuayuanhuahuaixiaoqu', '航海西路,帝湖花园,华淮小区', '34.724663', '113.609472'),
(3, 305, 'hhxldhhyhhxq', '航海西路,帝湖花园,华淮小区', '34.724663', '113.609472'),
(3, 307, 'hanghaizhonglujieyunlujingguanglu', '航海中路,洁云路,京广路', '34.722764', '113.667969'),
(3, 307, 'hhzljyljgl', '航海中路,洁云路,京广路', '34.722764', '113.667969'),
(3, 309, 'henanshengzhengzhoushierqiquhuazhonglu11haoyuan', '河南省郑州市二七区华中路11号院', '34.722764', '113.667969'),
(3, 309, 'hnszzseqqhzlhy', '河南省郑州市二七区华中路11号院', '34.722764', '113.667969'),
(3, 311, 'hanghaidonglujinsegangwanweilailu', '航海东路,金色港湾,未来路', '34.719441', '113.708932'),
(3, 311, 'hhdljsgwwll', '航海东路,金色港湾,未来路', '34.719441', '113.708932'),
(3, 313, 'henanshengzhengzhoushiguanchenghuizuqugangwanlu', '河南省郑州市管城回族区港湾路', '34.719441', '113.708932'),
(3, 313, 'hnszzsgchzqgwl', '河南省郑州市管城回族区港湾路', '34.719441', '113.708932'),
(3, 315, 'changjianglujieyunluhanghaizhonglu', '长江路,洁云路,航海中路', '34.720153', '113.659633'),
(3, 315, 'cjljylhhzl', '长江路,洁云路,航海中路', '34.720153', '113.659633'),
(3, 317, 'henanshengzhengzhoushierqiquzhangweizhaidongjie10haoyuan', '河南省郑州市二七区张魏寨东街10号院', '34.720153', '113.659633'),
(3, 317, 'hnszzseqqzwzdjhy', '河南省郑州市二七区张魏寨东街10号院', '34.720153', '113.659633'),
(3, 319, 'henanshengzhengzhoushierqiqu024fengmingbeilu', '河南省郑州市二七区X024(凤鸣北路)', '34.701637', '113.592368'),
(3, 319, 'hnszzseqqfmbl', '河南省郑州市二七区X024(凤鸣北路)', '34.701637', '113.592368'),
(3, 321, 'henanshengzhengzhoushierqiqu024yangxixian', '河南省郑州市二七区X024(杨西线)', '34.694158', '113.582451'),
(3, 321, 'hnszzseqqyxx', '河南省郑州市二七区X024(杨西线)', '34.694158', '113.582451'),
(3, 323, 'qiliyanchangjianglu', '齐礼阎,长江路', '34.697007', '113.638361'),
(3, 323, 'qlycjl', '齐礼阎,长江路', '34.697007', '113.638361'),
(3, 325, 'henanshengzhengzhoushierqiquhuangguolu', '河南省郑州市二七区黄郭路', '34.697007', '113.638361'),
(3, 325, 'hnszzseqqhgl', '河南省郑州市二七区黄郭路', '34.697007', '113.638361'),
(3, 327, 'qingfengjiejingguangludaxuelu', '庆丰街,京广路,大学路', '34.731309', '113.659346'),
(3, 327, 'qfjjgldxl', '庆丰街,京广路,大学路', '34.731309', '113.659346'),
(3, 329, 'henanshengzhengzhoushierqiquqingfengjie58hao', '河南省郑州市二七区庆丰街58号', '34.731309', '113.659346'),
(3, 329, 'hnszzseqqqfjh', '河南省郑州市二七区庆丰街58号', '34.731309', '113.659346'),
(3, 331, 'jianshelubaihualubishagang', '建设路,百花路,碧沙岗', '34.75919', '113.632037'),
(3, 331, 'jslbhlbsg', '建设路,百花路,碧沙岗', '34.75919', '113.632037'),
(3, 333, 'henanshengzhengzhoushizhongyuanquyouailu2hao', '河南省郑州市中原区友爱路2号', '34.75919', '113.632037'),
(3, 333, 'hnszzszyqyalh', '河南省郑州市中原区友爱路2号', '34.75919', '113.632037'),
(3, 335, 'henanshengzhengzhoushierqiqukangfuzhongjie16haoyuan', '河南省郑州市二七区康复中街16号院', '34.752666', '113.655465'),
(3, 335, 'hnszzseqqkfzjhy', '河南省郑州市二七区康复中街16号院', '34.752666', '113.655465'),
(3, 337, 'jingguangluzhengzhoutielujuyonganjie', '京广路,郑州铁路局,永安街', '34.744717', '113.664376'),
(3, 337, 'jglzztljyaj', '京广路,郑州铁路局,永安街', '34.744717', '113.664376'),
(3, 339, 'henanshengzhengzhoushierqiqulonghaizhonglu11hao', '河南省郑州市二七区陇海中路11号', '34.744717', '113.664376'),
(3, 339, 'hnszzseqqlhzlh', '河南省郑州市二七区陇海中路11号', '34.744717', '113.664376'),
(3, 341, 'erligangchengnanlunancangjie', '二里岗,城南路,南仓街', '34.744954', '113.691972'),
(3, 341, 'elgcnlncj', '二里岗,城南路,南仓街', '34.744954', '113.691972'),
(3, 343, 'henanshengzhengzhoushiguanchenghuizuqulonghaidonglu300hao', '河南省郑州市管城回族区陇海东路300号', '34.744954', '113.691972'),
(3, 343, 'hnszzsgchzqlhdlh', '河南省郑州市管城回族区陇海东路300号', '34.744954', '113.691972'),
(3, 345, 'nongyeluyanxianshenggangwenhualu', '农业路沿线,胜岗,文化路', '34.788367', '113.668832'),
(3, 345, 'nylyxsgwhl', '农业路沿线,胜岗,文化路', '34.788367', '113.668832'),
(3, 347, 'henanshengzhengzhoushijinshuiqufengchanlu', '河南省郑州市金水区丰产路', '34.788367', '113.668832'),
(3, 347, 'hnszzsjsqfcl', '河南省郑州市金水区丰产路', '34.788367', '113.668832'),
(3, 349, 'dashiqiaohezuolushiwei', '大石桥,合作路,市委', '34.770221', '113.653884'),
(3, 349, 'dsqhzlsw', '大石桥,合作路,市委', '34.770221', '113.653884'),
(3, 351, 'henanshengzhengzhoushijinshuiqushakoulu', '河南省郑州市金水区沙口路', '34.770221', '113.653884'),
(3, 351, 'hnszzsjsqskl', '河南省郑州市金水区沙口路', '34.770221', '113.653884'),
(3, 353, 'shengtiyuguanshenggangdashiqiao', '省体育馆,胜岗,大石桥', '34.779117', '113.662364'),
(3, 353, 'stygsgdsq', '省体育馆,胜岗,大石桥', '34.779117', '113.662364'),
(3, 355, 'henanshengzhengzhoushijinshuiquweishenglu3hao', '河南省郑州市金水区卫生路3号', '34.779117', '113.662364'),
(3, 355, 'hnszzsjsqwslh', '河南省郑州市金水区卫生路3号', '34.779117', '113.662364'),
(3, 357, 'henanshengzhengzhoushizhongyuanqubaihualu21hao', '河南省郑州市中原区百花路21号', '34.760139', '113.631103'),
(3, 357, 'hnszzszyqbhlh', '河南省郑州市中原区百花路21号', '34.760139', '113.631103'),
(3, 359, 'henanshengzhengzhoushierqiqudaxuelu40', '河南省郑州市二七区大学路40', '34.75658', '113.651297'),
(3, 359, 'hnszzseqqdxl', '河南省郑州市二七区大学路40', '34.75658', '113.651297'),
(3, 361, 'henanshengzhengzhoushizhongyuanquhaitangjie', '河南省郑州市中原区海棠街', '34.805514', '113.586073'),
(3, 361, 'hnszzszyqhtj', '河南省郑州市中原区海棠街', '34.805514', '113.586073'),
(3, 363, 'henanshengzhengzhoushizhongyuanquruifenglu', '河南省郑州市中原区瑞丰路', '34.809071', '113.591103'),
(3, 363, 'hnszzszyqrfl', '河南省郑州市中原区瑞丰路', '34.809071', '113.591103'),
(3, 365, 'bishagangmianfanglushiwei', '碧沙岗,棉纺路,市委', '34.764172', '113.639511'),
(3, 365, 'bsgmflsw', '碧沙岗,棉纺路,市委', '34.764172', '113.639511'),
(3, 367, 'henanshengzhengzhoushierqiqumianfanglu23hao', '河南省郑州市二七区棉纺路23号', '34.764172', '113.639511'),
(3, 367, 'hnszzseqqmflh', '河南省郑州市二七区棉纺路23号', '34.764172', '113.639511'),
(2, 4, 'dexingnanlunantouguaijiaochu', '德兴南路南头拐角处', '34.753488', '113.631349'),
(2, 4, 'ghwmqjd', '光合外卖旗舰店', '34.753488', '113.631349'),
(2, 4, 'guanghewaimaiqijiandian', '光合外卖旗舰店', '34.753488', '113.631349'),
(3, 369, 'xihuanlu', '西环路', '34.80006', '113.594553'),
(3, 369, 'xhl', '西环路', '34.80006', '113.594553'),
(3, 371, 'henanshengzhengzhoushizhongyuanqulaoliahecunbeijie', '河南省郑州市中原区老俩河村北街', '34.80006', '113.594553'),
(3, 371, 'hnszzszyqllhcbj', '河南省郑州市中原区老俩河村北街', '34.80006', '113.594553'),
(3, 373, 'henanshengzhengzhoushizhongyuanqusunzhuangcunbeijie41hao', '河南省郑州市中原区孙庄村北街41号', '34.804803', '113.596637'),
(3, 373, 'hnszzszyqszcbjh', '河南省郑州市中原区孙庄村北街41号', '34.804803', '113.596637'),
(3, 375, 'dulinghuochezhanrenmingongyuan', '杜岭,火车站,人民公园', '34.76174', '113.674078'),
(3, 375, 'dlhczrmgy', '杜岭,火车站,人民公园', '34.76174', '113.674078'),
(3, 377, 'henanshengzhengzhoushiguanchenghuizuqudongtaikanglu41hao', '河南省郑州市管城回族区东太康路41号', '34.76174', '113.674078'),
(3, 377, 'hnszzsgchzqdtklh', '河南省郑州市管城回族区东太康路41号', '34.76174', '113.674078'),
(3, 379, 'henanshengzhengzhoushierqiquzhongyuanlu126hao', '河南省郑州市二七区中原路126号', '34.753733', '113.658052'),
(3, 379, 'hnszzseqqzylh', '河南省郑州市二七区中原路126号', '34.753733', '113.658052'),
(3, 381, 'henanshengzhengzhoushierqiquxizhonghelu6hao', '河南省郑州市二七区西中和路6号', '34.760198', '113.657837'),
(3, 381, 'hnszzseqqxzhlh', '河南省郑州市二七区西中和路6号', '34.760198', '113.657837'),
(3, 383, 'shanbeilushiweibishagang', '嵩山北路,市委,碧沙岗', '34.757767', '113.63484'),
(3, 383, 'sblswbsg', '嵩山北路,市委,碧沙岗', '34.757767', '113.63484'),
(3, 385, 'henanshengzhengzhoushizhongyuanqushanbeilu88hao', '河南省郑州市中原区嵩山北路88号', '34.757767', '113.63484'),
(3, 385, 'hnszzszyqsblh', '河南省郑州市中原区嵩山北路88号', '34.757767', '113.63484'),
(3, 387, 'henanshengzhengzhoushierqiquxizhongheluqianjie27', '河南省郑州市二七区西中和路前街27', '34.760317', '113.656256'),
(3, 387, 'hnszzseqqxzhlqj', '河南省郑州市二七区西中和路前街27', '34.760317', '113.656256'),
(3, 389, 'huzhulubishagangbaihualu', '互助路,碧沙岗,百花路', '34.755691', '113.6306'),
(3, 389, 'hzlbsgbhl', '互助路,碧沙岗,百花路', '34.755691', '113.6306'),
(3, 391, 'henanshengzhengzhoushizhongyuanqubaihualu46hao', '河南省郑州市中原区百花路46号', '34.755691', '113.6306'),
(3, 391, 'hnszzszyqbhlh', '河南省郑州市中原区百花路46号', '34.755691', '113.6306'),
(3, 393, 'shiweibishagangyihelu', '市委,碧沙岗,伊河路', '34.748395', '113.635271'),
(3, 393, 'swbsgyhl', '市委,碧沙岗,伊河路', '34.748395', '113.635271'),
(3, 395, 'henanshengzhengzhoushierqiqushannanlu81hao', '河南省郑州市二七区嵩山南路81号', '34.748395', '113.635271'),
(3, 395, 'hnszzseqqsnlh', '河南省郑州市二七区嵩山南路81号', '34.748395', '113.635271'),
(3, 397, 'shiweidaxuelukangfuzhongjie', '市委,大学路,康复中街', '34.751776', '113.651656'),
(3, 397, 'swdxlkfzj', '市委,大学路,康复中街', '34.751776', '113.651656'),
(3, 399, 'henanshengzhengzhoushierqiqucaiwangxijie17hao', '河南省郑州市二七区菜王西街17号', '34.751776', '113.651656'),
(3, 399, 'hnszzseqqcwxjh', '河南省郑州市二七区菜王西街17号', '34.751776', '113.651656'),
(3, 401, 'bishagangshiweiyihelu', '碧沙岗,市委,伊河路', '34.750649', '113.636924'),
(3, 401, 'bsgswyhl', '碧沙岗,市委,伊河路', '34.750649', '113.636924'),
(3, 403, 'shiweijianshedongluhezuolu', '市委,建设东路,合作路', '34.76174', '113.649572'),
(3, 403, 'swjsdlhzl', '市委,建设东路,合作路', '34.76174', '113.649572'),
(3, 405, 'shiweihezuoludashiqiao', '市委,合作路,大石桥', '34.765951', '113.649931'),
(3, 405, 'swhzldsq', '市委,合作路,大石桥', '34.765951', '113.649931'),
(3, 407, 'henanshengzhengzhoushijinshuiqujinshuilu', '河南省郑州市金水区金水路', '34.765951', '113.649931'),
(3, 407, 'hnszzsjsqjsl', '河南省郑州市金水区金水路', '34.765951', '113.649931'),
(3, 409, 'shichangjiejianshelubishagang', '市场街,建设路,碧沙岗', '34.76002', '113.624491'),
(3, 409, 'scjjslbsg', '市场街,建设路,碧沙岗', '34.76002', '113.624491'),
(3, 411, 'henanshengzhengzhoushizhongyuanquwenhuagonglu', '河南省郑州市中原区文化宫路', '34.76002', '113.624491'),
(3, 411, 'hnszzszyqwhgl', '河南省郑州市中原区文化宫路', '34.76002', '113.624491'),
(3, 413, 'shiweijianxinjierenmingongyuan', '市委,建新街,人民公园', '34.761029', '113.655321'),
(3, 413, 'swjxjrmgy', '市委,建新街,人民公园', '34.761029', '113.655321'),
(3, 415, 'henanshengzhengzhoushierqiqujianxinjie17haolou', '河南省郑州市二七区建新街17号楼', '34.761029', '113.655321'),
(3, 415, 'hnszzseqqjxjhl', '河南省郑州市二七区建新街17号楼', '34.761029', '113.655321'),
(3, 417, 'henanshengzhengzhoushijinshuiqujinshuilu74hao', '河南省郑州市金水区金水路74号', '34.765536', '113.652375'),
(3, 417, 'hnszzsjsqjslh', '河南省郑州市金水区金水路74号', '34.765536', '113.652375'),
(3, 419, 'shiweizhongyuandongludaxuelu', '市委,中原东路,大学路', '34.753021', '113.646338'),
(3, 419, 'swzydldxl', '市委,中原东路,大学路', '34.753021', '113.646338'),
(3, 421, 'henanshengzhengzhoushierqiquzhongyuandonglu104hao', '河南省郑州市二七区中原东路104号', '34.753021', '113.646338'),
(3, 421, 'hnszzseqqzydlh', '河南省郑州市二七区中原东路104号', '34.753021', '113.646338'),
(3, 423, 'henanshengzhengzhoushizhongyuanqushanbeilu', '河南省郑州市中原区嵩山北路', '34.758182', '113.636996'),
(3, 423, 'hnszzszyqsbl', '河南省郑州市中原区嵩山北路', '34.758182', '113.636996'),
(3, 425, 'mianfanglubishagangjianshelu', '棉纺路,碧沙岗,建设路', '34.762156', '113.631247'),
(3, 425, 'mflbsgjsl', '棉纺路,碧沙岗,建设路', '34.762156', '113.631247'),
(3, 427, 'henanshengzhengzhoushizhongyuanquwuchangerjie14haolou', '河南省郑州市中原区五厂二街14号楼', '34.762156', '113.631247'),
(3, 427, 'hnszzszyqwcejhl', '河南省郑州市中原区五厂二街14号楼', '34.762156', '113.631247'),
(3, 429, 'henanshengzhengzhoushierqiqujianshedonglu24hao', '河南省郑州市二七区建设东路24号', '34.759665', '113.641092'),
(3, 429, 'hnszzseqqjsdlh', '河南省郑州市二七区建设东路24号', '34.759665', '113.641092'),
(3, 431, 'henanshengzhengzhoushizhongyuanquxizhanlu26haoyuan', '河南省郑州市中原区西站路26号院', '34.770637', '113.62945'),
(3, 431, 'hnszzszyqxzlhy', '河南省郑州市中原区西站路26号院', '34.770637', '113.62945'),
(3, 433, 'henanshengzhengzhoushizhongyuanqugongrenlu7hao', '河南省郑州市中原区工人路7号', '34.760673', '113.627079'),
(3, 433, 'hnszzszyqgrlh', '河南省郑州市中原区工人路7号', '34.760673', '113.627079'),
(3, 435, 'xizhantongbailufangzhidashijie', '西站,桐柏路,纺织大世界', '34.770103', '113.629163'),
(3, 435, 'xztblfzdsj', '西站,桐柏路,纺织大世界', '34.770103', '113.629163'),
(3, 437, 'henanshengzhengzhoushizhongyuanqushichangjie2hao', '河南省郑州市中原区市场街2号', '34.760554', '113.622551'),
(3, 437, 'hnszzszyqscjh', '河南省郑州市中原区市场街2号', '34.760554', '113.622551'),
(3, 439, 'henanshengzhengzhoushizhongyuanquyouailu', '河南省郑州市中原区友爱路', '34.759427', '113.624779'),
(3, 439, 'hnszzszyqyal', '河南省郑州市中原区友爱路', '34.759427', '113.624779'),
(3, 441, 'henanshengzhengzhoushierqiquzhongyuandonglu110hao', '河南省郑州市二七区中原东路110号', '34.753733', '113.65489'),
(3, 441, 'hnszzseqqzydlh', '河南省郑州市二七区中原东路110号', '34.753733', '113.65489'),
(3, 443, 'shiweijianshelubishagang', '市委,建设路,碧沙岗', '34.759131', '113.633762'),
(3, 443, 'swjslbsg', '市委,建设路,碧沙岗', '34.759131', '113.633762'),
(3, 445, 'henanshengzhengzhoushizhongyuanqubaihuali1haoyuan', '河南省郑州市中原区百花里1号院', '34.752132', '113.629881'),
(3, 445, 'hnszzszyqbhlhy', '河南省郑州市中原区百花里1号院', '34.752132', '113.629881'),
(3, 447, 'shiweilvdongcunfuniulu', '市委,绿东村,伏牛路', '34.751301', '113.618742'),
(3, 447, 'swldcfnl', '市委,绿东村,伏牛路', '34.751301', '113.618742'),
(3, 449, 'henanshengzhengzhoushizhongyuanquluohelu36hao', '河南省郑州市中原区洛河路36号', '34.751301', '113.618742'),
(3, 449, 'hnszzszyqlhlh', '河南省郑州市中原区洛河路36号', '34.751301', '113.618742'),
(3, 451, 'henanshengzhengzhoushierqiquzhongyuandonglu111hao', '河南省郑州市二七区中原东路111号', '34.752962', '113.6541'),
(3, 451, 'hnszzseqqzydlh', '河南省郑州市二七区中原东路111号', '34.752962', '113.6541'),
(3, 453, 'renmingongyuanchenzhuanghuochezhan', '人民公园,陈庄,火车站', '34.753555', '113.674222'),
(3, 453, 'rmgyczhcz', '人民公园,陈庄,火车站', '34.753555', '113.674222'),
(3, 455, 'henanshengzhengzhoushiguanchenghuizuqugongbeijie56haoyuan', '河南省郑州市管城回族区弓背街56号院', '34.753555', '113.674222'),
(3, 455, 'hnszzsgchzqgbjhy', '河南省郑州市管城回族区弓背街56号院', '34.753555', '113.674222'),
(3, 457, 'henanshengzhengzhoushizhongyuanqubaihualunanduan', '河南省郑州市中原区百花路南段', '34.761266', '113.631031'),
(3, 457, 'hnszzszyqbhlnd', '河南省郑州市中原区百花路南段', '34.761266', '113.631031'),
(3, 459, 'henanshengzhengzhoushizhongyuanqubaihuali', '河南省郑州市中原区百花里', '34.752509', '113.631708'),
(3, 459, 'hnszzszyqbhl', '河南省郑州市中原区百花里', '34.752509', '113.631708'),
(3, 461, 'bishagangshiweijianshelu', '碧沙岗,市委,建设路', '34.757432', '113.633146'),
(3, 461, 'bsgswjsl', '碧沙岗,市委,建设路', '34.757432', '113.633146'),
(3, 463, 'henanshengzhengzhoushizhongyuanqushanlu28hao', '河南省郑州市中原区嵩山路28号', '34.757432', '113.633146'),
(3, 463, 'hnszzszyqslh', '河南省郑州市中原区嵩山路28号', '34.757432', '113.633146'),
(3, 465, 'shichangjiebishaganggongrenlu', '市场街,碧沙岗,工人路', '34.754585', '113.627971'),
(3, 465, 'scjbsggrl', '市场街,碧沙岗,工人路', '34.754585', '113.627971'),
(3, 467, 'henanshengzhengzhoushizhongyuanqugongrenluqihao', '河南省郑州市中原区工人路七号', '34.754585', '113.627971'),
(3, 467, 'hnszzszyqgrlqh', '河南省郑州市中原区工人路七号', '34.754585', '113.627971');
INSERT INTO `xiaozu_positionkey` (`datatype`, `parent_id`, `datacode`, `datacontent`, `lat`, `lng`) VALUES
(3, 469, 'henanshengzhengzhoushizhongyuanquyouailu42hao', '河南省郑州市中原区友爱路42号', '34.758678', '113.630055'),
(3, 469, 'hnszzszyqyalh', '河南省郑州市中原区友爱路42号', '34.758678', '113.630055'),
(3, 471, 'henanshengzhengzhoushizhongyuanquzhongyuanxilu23hao', '河南省郑州市中原区中原西路23号', '34.753696', '113.629265'),
(3, 471, 'hnszzszyqzyxlh', '河南省郑州市中原区中原西路23号', '34.753696', '113.629265'),
(3, 473, 'henanshengzhengzhoushizhongyuanqubaihualu34fu1hao', '河南省郑州市中原区百花路34-附1号', '34.758263', '113.630415'),
(3, 473, 'hnszzszyqbhlfh', '河南省郑州市中原区百花路34-附1号', '34.758263', '113.630415'),
(3, 475, 'linshanzhaibishaganggongrenlu', '林山寨,碧沙岗,工人路', '34.752272', '113.627468'),
(3, 475, 'lszbsggrl', '林山寨,碧沙岗,工人路', '34.752272', '113.627468'),
(3, 477, 'henanshengzhengzhoushizhongyuanqugongrenlu43', '河南省郑州市中原区工人路43', '34.752272', '113.627468'),
(3, 477, 'hnszzszyqgrl', '河南省郑州市中原区工人路43', '34.752272', '113.627468'),
(3, 479, 'shiweibishaganghuzhulu', '市委,碧沙岗,互助路', '34.756305', '113.629552'),
(3, 479, 'swbsghzl', '市委,碧沙岗,互助路', '34.756305', '113.629552'),
(3, 481, 'henanshengzhengzhoushizhongyuanquhuzhulubahao', '河南省郑州市中原区互助路八号', '34.756305', '113.629552'),
(3, 481, 'hnszzszyqhzlbh', '河南省郑州市中原区互助路八号', '34.756305', '113.629552'),
(3, 483, 'henanshengzhengzhoushizhongyuanquyouailu38hao', '河南省郑州市中原区友爱路38号', '34.759271', '113.628546'),
(3, 483, 'hnszzszyqyalh', '河南省郑州市中原区友爱路38号', '34.759271', '113.628546'),
(3, 485, 'henanshengzhengzhoushizhongyuanquzhengmianwuchangerjie22haolou', '河南省郑州市中原区郑棉五厂二街22号楼', '34.763542', '113.631636'),
(3, 485, 'hnszzszyqzmwcejhl', '河南省郑州市中原区郑棉五厂二街22号楼', '34.763542', '113.631636'),
(3, 487, 'henanshengzhengzhoushizhongyuanqubaihualu29hao', '河南省郑州市中原区百花路29号', '34.760517', '113.630846'),
(3, 487, 'hnszzszyqbhlh', '河南省郑州市中原区百花路29号', '34.760517', '113.630846'),
(3, 489, 'shiweibishagangbaihualu', '市委,碧沙岗,百花路', '34.755001', '113.630702'),
(3, 489, 'swbsgbhl', '市委,碧沙岗,百花路', '34.755001', '113.630702'),
(3, 491, 'henanshengzhengzhoushizhongyuanqubaihualu46fu4', '河南省郑州市中原区百花路46附4', '34.755001', '113.630702'),
(3, 491, 'hnszzszyqbhlf', '河南省郑州市中原区百花路46附4', '34.755001', '113.630702'),
(3, 493, 'henanshengzhengzhoushizhongyuanquyouailu3hao2haolou', '河南省郑州市中原区友爱路3号-2号楼', '34.759271', '113.63293'),
(3, 493, 'hnszzszyqyalhhl', '河南省郑州市中原区友爱路3号-2号楼', '34.759271', '113.63293'),
(3, 495, 'henanshengzhengzhoushizhongyuanquzhongyuanzhonglu', '河南省郑州市中原区中原中路', '34.753814', '113.633505'),
(3, 495, 'hnszzszyqzyzl', '河南省郑州市中原区中原中路', '34.753814', '113.633505'),
(3, 497, 'henanshengzhengzhoushizhongyuanqushanbeilu40hao', '河南省郑州市中原区嵩山北路40号', '34.757492', '113.634224'),
(3, 497, 'hnszzszyqsblh', '河南省郑州市中原区嵩山北路40号', '34.757492', '113.634224'),
(2, 1, 'wmrqjd', '外卖人旗舰店', '34.753426987181', '113.63176801937'),
(2, 1, 'waimairenqijiandian', '外卖人旗舰店', '34.753426987181', '113.63176801937'),
(3, 499, 'henanshengzhengzhoushizhongyuanquzhongyuanzhonglu220hao1101', '河南省郑州市中原区中原中路220号1101', '34.753577', '113.628618'),
(3, 499, 'hnszzszyqzyzlh', '河南省郑州市中原区中原中路220号1101', '34.753577', '113.628618'),
(1, 1, 'zhengzhou', '郑州', '34.753488', '113.631349'),
(1, 2, 'zhongyuanqu', '中原区', '34.754266', '113.619794'),
(3, 501, 'tongbailubishagangshichangjie', '桐柏路,碧沙岗,市场街', '34.75595', '113.623085'),
(3, 501, 'tblbsgscj', '桐柏路,碧沙岗,市场街', '34.75595', '113.623085'),
(3, 503, 'henanshengzhengzhoushizhongyuanquwenhuagonglu62hao', '河南省郑州市中原区文化宫路62号', '34.75595', '113.623085'),
(3, 503, 'hnszzszyqwhglh', '河南省郑州市中原区文化宫路62号', '34.75595', '113.623085'),
(3, 505, 'huzhulubishaganggongrenlu', '互助路,碧沙岗,工人路', '34.755475', '113.628977'),
(3, 505, 'hzlbsggrl', '互助路,碧沙岗,工人路', '34.755475', '113.628977'),
(3, 507, 'henanshengzhengzhoushizhongyuanquhuzhulu', '河南省郑州市中原区互助路', '34.755475', '113.628977'),
(3, 507, 'hnszzszyqhzl', '河南省郑州市中原区互助路', '34.755475', '113.628977'),
(3, 509, 'henanshengzhengzhoushizhongyuanqugongrenlu42hao', '河南省郑州市中原区工人路42号', '34.751916', '113.627468'),
(3, 509, 'hnszzszyqgrlh', '河南省郑州市中原区工人路42号', '34.751916', '113.627468'),
(3, 511, 'henanshengzhengzhoushizhongyuanqugongrenlu62hao', '河南省郑州市中原区工人路62号', '34.75678', '113.627828'),
(3, 511, 'hnszzszyqgrlh', '河南省郑州市中原区工人路62号', '34.75678', '113.627828'),
(3, 513, 'henanshengzhengzhoushizhongyuanqugongrenlu', '河南省郑州市中原区工人路', '34.759924', '113.628618'),
(3, 513, 'hnszzszyqgrl', '河南省郑州市中原区工人路', '34.759924', '113.628618'),
(3, 515, 'henanshengzhengzhoushizhongyuanqumianfangxilu', '河南省郑州市中原区棉纺西路', '34.765143', '113.631565'),
(3, 515, 'hnszzszyqmfxl', '河南省郑州市中原区棉纺西路', '34.765143', '113.631565'),
(3, 517, 'henanshengzhengzhoushizhongyuanqubaihualu2hao', '河南省郑州市中原区百花路2号', '34.755356', '113.631062'),
(3, 517, 'hnszzszyqbhlh', '河南省郑州市中原区百花路2号', '34.755356', '113.631062'),
(3, 519, 'shichangjiejiansheluqinlinglu', '市场街,建设路,秦岭路', '34.761934', '113.612283'),
(3, 519, 'scjjslqll', '市场街,建设路,秦岭路', '34.761934', '113.612283'),
(3, 521, 'henanshengzhengzhoushizhongyuanquzhengshanglu220hao', '河南省郑州市中原区郑上路220号', '34.761934', '113.612283'),
(3, 521, 'hnszzszyqzslh', '河南省郑州市中原区郑上路220号', '34.761934', '113.612283'),
(3, 523, 'shichangjieqinlinglujianshelu', '市场街,秦岭路,建设路', '34.766619', '113.612786'),
(3, 523, 'scjqlljsl', '市场街,秦岭路,建设路', '34.766619', '113.612786'),
(3, 525, 'henanshengzhengzhoushizhongyuanquliuchangqianjie17hao', '河南省郑州市中原区六厂前街17号', '34.766619', '113.612786'),
(3, 525, 'hnszzszyqlcqjh', '河南省郑州市中原区六厂前街17号', '34.766619', '113.612786'),
(3, 527, 'henanshengzhengzhoushierqiquzhongyuandonglu102hao', '河南省郑州市二七区中原东路102号', '34.753636', '113.640548'),
(3, 527, 'hnszzseqqzydlh', '河南省郑州市二七区中原东路102号', '34.753636', '113.640548'),
(3, 529, 'henanshengzhengzhoushierqiquzhongyuandonglu101haofu22hao', '河南省郑州市二七区中原东路101号附22号', '34.754823', '113.635373'),
(3, 529, 'hnszzseqqzydlhfh', '河南省郑州市二七区中原东路101号附22号', '34.754823', '113.635373'),
(3, 531, 'henanshengzhengzhoushizhongyuanquzhongyuanzhonglu31hao', '河南省郑州市中原区中原中路31号', '34.754111', '113.626031'),
(3, 531, 'hnszzszyqzyzlh', '河南省郑州市中原区中原中路31号', '34.754111', '113.626031'),
(3, 533, 'henanshengzhengzhoushizhongyuanqubaihualu12hao', '河南省郑州市中原区百花路12号', '34.758204', '113.630846'),
(3, 533, 'hnszzszyqbhlh', '河南省郑州市中原区百花路12号', '34.758204', '113.630846'),
(3, 535, 'shanbeilubishagangshiwei', '嵩山北路,碧沙岗,市委', '34.756068', '113.633649'),
(3, 535, 'sblbsgsw', '嵩山北路,碧沙岗,市委', '34.756068', '113.633649'),
(3, 537, 'henanshengzhengzhoushizhongyuanquhuzhulu2hao', '河南省郑州市中原区互助路2号', '34.756068', '113.633649'),
(3, 537, 'hnszzszyqhzlh', '河南省郑州市中原区互助路2号', '34.756068', '113.633649'),
(3, 539, 'henanshengzhengzhoushizhongyuanqushanbeilu232hao', '河南省郑州市中原区嵩山北路232号', '34.76022', '113.635158'),
(3, 539, 'hnszzszyqsblh', '河南省郑州市中原区嵩山北路232号', '34.76022', '113.635158'),
(3, 541, 'henanshengzhengzhoushizhongyuanqushannanlu168hao', '河南省郑州市中原区嵩山南路168号', '34.75156', '113.633864'),
(3, 541, 'hnszzszyqsnlh', '河南省郑州市中原区嵩山南路168号', '34.75156', '113.633864'),
(3, 543, 'shiweibishagangshanbeilu', '市委,碧沙岗,嵩山北路', '34.755416', '113.633361'),
(3, 543, 'swbsgsbl', '市委,碧沙岗,嵩山北路', '34.755416', '113.633361'),
(3, 545, 'henanshengzhengzhoushizhongyuanqushanbeilu10hao', '河南省郑州市中原区嵩山北路10号', '34.755416', '113.633361'),
(3, 545, 'hnszzszyqsblh', '河南省郑州市中原区嵩山北路10号', '34.755416', '113.633361'),
(3, 547, 'henanshengzhengzhoushizhongyuanquyouailu60hao', '河南省郑州市中原区友爱路60号', '34.758559', '113.634224'),
(3, 547, 'hnszzszyqyalh', '河南省郑州市中原区友爱路60号', '34.758559', '113.634224'),
(3, 549, 'henanshengzhengzhoushizhongyuanquzhongyuanzhonglu220hao', '河南省郑州市中原区中原中路220号', '34.753399', '113.629624'),
(3, 549, 'hnszzszyqzyzlh', '河南省郑州市中原区中原中路220号', '34.753399', '113.629624'),
(3, 551, 'henanshengzhengzhoushizhongyuanqubaihualu', '河南省郑州市中原区百花路', '34.757077', '113.631636'),
(3, 551, 'hnszzszyqbhl', '河南省郑州市中原区百花路', '34.757077', '113.631636'),
(3, 553, 'henanshengzhengzhoushierqiqubeiqierlu102hao', '河南省郑州市二七区北七二路102号', '34.763897', '113.638104'),
(3, 553, 'hnszzseqqbqelh', '河南省郑州市二七区北七二路102号', '34.763897', '113.638104'),
(3, 555, 'henanshengzhengzhoushizhongyuanqushannanlu182hao', '河南省郑州市中原区嵩山南路182号', '34.753458', '113.634152'),
(3, 555, 'hnszzszyqsnlh', '河南省郑州市中原区嵩山南路182号', '34.753458', '113.634152'),
(3, 557, 'henanshengzhengzhoushizhongyuanquhuzhulu73hao', '河南省郑州市中原区互助路73号', '34.756009', '113.632068'),
(3, 557, 'hnszzszyqhzlh', '河南省郑州市中原区互助路73号', '34.756009', '113.632068'),
(3, 559, 'henanshengzhengzhoushizhongyuanqubaihualu30hao', '河南省郑州市中原区百花路30号', '34.760161', '113.630127'),
(3, 559, 'hnszzszyqbhlh', '河南省郑州市中原区百花路30号', '34.760161', '113.630127'),
(3, 561, 'henanshengzhengzhoushizhongyuanquhuzhulu5haofu3hao', '河南省郑州市中原区互助路5号附3号', '34.756899', '113.631636'),
(3, 561, 'hnszzszyqhzlhfh', '河南省郑州市中原区互助路5号附3号', '34.756899', '113.631636'),
(3, 563, 'henanshengzhengzhoushizhongyuanqugongrenlu73hao', '河南省郑州市中原区工人路73号', '34.759508', '113.627109'),
(3, 563, 'hnszzszyqgrlh', '河南省郑州市中原区工人路73号', '34.759508', '113.627109'),
(2, 1, 'zzghkjyxgs', '郑州光合科技有限公司', '34.753426987181', '113.63176801937'),
(3, 565, 'henanshengzhengzhoushizhongyuanqugongrenlu52haoyuan1haolou', '河南省郑州市中原区工人路52号院-1号楼', '34.754348', '113.627828'),
(3, 565, 'hnszzszyqgrlhyhl', '河南省郑州市中原区工人路52号院-1号楼', '34.754348', '113.627828'),
(3, 567, 'henanshengzhengzhoushierqiqushannanlu172hao', '河南省郑州市二七区嵩山南路172号', '34.752213', '113.635302'),
(3, 567, 'hnszzseqqsnlh', '河南省郑州市二七区嵩山南路172号', '34.752213', '113.635302'),
(3, 569, 'henanshengzhengzhoushizhongyuanqugongrenlu45hao', '河南省郑州市中原区工人路45号', '34.752569', '113.62754'),
(3, 569, 'hnszzszyqgrlh', '河南省郑州市中原区工人路45号', '34.752569', '113.62754'),
(3, 571, 'henanshengzhengzhoushizhongyuanquzhongyuanxilu199hao', '河南省郑州市中原区中原西路199号', '34.752035', '113.624953'),
(3, 571, 'hnszzszyqzyxlh', '河南省郑州市中原区中原西路199号', '34.752035', '113.624953'),
(3, 573, 'shichangjiebishaganghuzhulu', '市场街,碧沙岗,互助路', '34.756365', '113.624953'),
(3, 573, 'scjbsghzl', '市场街,碧沙岗,互助路', '34.756365', '113.624953'),
(3, 575, 'henanshengzhengzhoushizhongyuanquhuzhulu17hao', '河南省郑州市中原区互助路17号', '34.756365', '113.624953'),
(3, 575, 'hnszzszyqhzlh', '河南省郑州市中原区互助路17号', '34.756365', '113.624953'),
(3, 577, 'henanshengzhengzhoushizhongyuanquyouailu34hao', '河南省郑州市中原区友爱路34号', '34.758619', '113.627612'),
(3, 577, 'hnszzszyqyalh', '河南省郑州市中原区友爱路34号', '34.758619', '113.627612'),
(3, 579, 'huzhulubaihualubishagang', '互助路,百花路,碧沙岗', '34.757373', '113.630127'),
(3, 579, 'hzlbhlbsg', '互助路,百花路,碧沙岗', '34.757373', '113.630127'),
(3, 581, 'henanshengzhengzhoushizhongyuanqubaihualu37hao', '河南省郑州市中原区百花路37号', '34.757373', '113.630127'),
(3, 581, 'hnszzszyqbhlh', '河南省郑州市中原区百花路37号', '34.757373', '113.630127'),
(3, 583, 'xihuanlurantunlu', '西环路,冉屯路', '34.803676', '113.602314'),
(3, 583, 'xhlrtl', '西环路,冉屯路', '34.803676', '113.602314'),
(3, 585, 'henanshengzhengzhoushizhongyuanqukexuedadao', '河南省郑州市中原区科学大道', '34.811027', '113.596062'),
(3, 585, 'hnszzszyqkxdd', '河南省郑州市中原区科学大道', '34.811027', '113.596062'),
(2, 163, 'daguanghechaoshidian', '大光合超市店', '34.802460991241', '113.59771496427'),
(2, 163, 'dghcsd', '大光合超市店', '34.802460991241', '113.59771496427'),
(2, 163, 'daguanghechaoshidiandaguanghechaoshidian', '大光合超市店大光合超市店', '34.802460991241', '113.59771496427'),
(2, 163, 'dghcsddghcsd', '大光合超市店大光合超市店', '34.802460991241', '113.59771496427'),
(3, 587, 'henanshengzhengzhoushizhongyuanqukexuedadaolijiao', '河南省郑州市中原区科学大道立交', '34.807233', '113.599583'),
(3, 587, 'hnszzszyqkxddlj', '河南省郑州市中原区科学大道立交', '34.807233', '113.599583'),
(3, 589, 'henanshengzhengzhoushizhongyuanquwulongkounanlu', '河南省郑州市中原区五龙口南路', '34.795021', '113.606411'),
(3, 589, 'hnszzszyqwlknl', '河南省郑州市中原区五龙口南路', '34.795021', '113.606411'),
(3, 591, 'henanshengzhengzhoushizhongyuanqudianchanglu', '河南省郑州市中原区电厂路', '34.801898', '113.618628'),
(3, 591, 'hnszzszyqdcl', '河南省郑州市中原区电厂路', '34.801898', '113.618628'),
(3, 593, 'henanshengzhengzhoushizhongyuanqudianchangnanlu', '河南省郑州市中原区电厂南路', '34.80464', '113.61083'),
(3, 593, 'hnszzszyqdcnl', '河南省郑州市中原区电厂南路', '34.80464', '113.61083'),
(3, 595, 'henanshengzhengzhoushizhongyuanqunanliucundajie26hao', '河南省郑州市中原区南流村大街26号', '34.800119', '113.588876'),
(3, 595, 'hnszzszyqnlcdjh', '河南省郑州市中原区南流村大街26号', '34.800119', '113.588876'),
(2, 4, 'dxnlntgjc', '德兴南路南头拐角处', '34.753488', '113.631349'),
(3, 597, 'henanshengzhengzhoushizhongyuanqunanliucunnanjie', '河南省郑州市中原区南流村南街', '34.798578', '113.59211'),
(3, 597, 'hnszzszyqnlcnj', '河南省郑州市中原区南流村南街', '34.798578', '113.59211'),
(3, 599, 'henanshengzhengzhoushizhongyuanquhongdalu60hao', '河南省郑州市中原区宏达路60号', '34.802965', '113.591822'),
(3, 599, 'hnszzszyqhdlh', '河南省郑州市中原区宏达路60号', '34.802965', '113.591822'),
(1, 1, 'zz', '郑州', '34.753488', '113.631349'),
(1, 4, 'jinshuiqu', '金水区', '34.805929', '113.667171'),
(1, 4, 'jsq', '金水区', '34.805929', '113.667171'),
(1, 6, 'guomao', '国贸', '34.790802', '113.687564'),
(1, 6, 'gm', '国贸', '34.790802', '113.687564'),
(1, 5, 'erqiqu', '二七区', '34.731025', '113.646510'),
(1, 5, 'eqq', '二七区', '34.731025', '113.646510'),
(1, 7, 'erqiwanda', '二七万达', '34.724371', '113.649303'),
(1, 7, 'eqwd', '二七万达', '34.724371', '113.649303'),
(1, 2, 'zyq', '中原区', '34.754266', '113.619794'),
(1, 3, 'jinzhonghuan', '金中环', '34.741822', '113.621321'),
(1, 3, 'jzh', '金中环', '34.741822', '113.621321'),
(3, 601, 'henanshengzhengzhoushizhongyuanquzhongyuanzhonglu41hao', '河南省郑州市中原区中原中路41号', '34.754407', '113.621432'),
(3, 601, 'hnszzszyqzyzlh', '河南省郑州市中原区中原中路41号', '34.754407', '113.621432'),
(3, 603, 'henanshengzhengzhoushizhongyuanquwenhuagonglu67hao', '河南省郑州市中原区文化宫路67号', '34.758797', '113.622438'),
(3, 603, 'hnszzszyqwhglh', '河南省郑州市中原区文化宫路67号', '34.758797', '113.622438'),
(3, 605, 'henanshengzhengzhoushizhongyuanquhuzhulu26haofu1hao', '河南省郑州市中原区互助路26号附1号', '34.755297', '113.626175'),
(3, 605, 'hnszzszyqhzlhfh', '河南省郑州市中原区互助路26号附1号', '34.755297', '113.626175'),
(3, 607, 'henanshengzhengzhoushizhongyuanqugongrenlu33hao', '河南省郑州市中原区工人路33号', '34.758381', '113.626893'),
(3, 607, 'hnszzszyqgrlh', '河南省郑州市中原区工人路33号', '34.758381', '113.626893'),
(3, 609, 'henanshengzhengzhoushizhongyuanquhuangzhuangcundajie', '河南省郑州市中原区黄庄村大街', '34.774714', '113.583494'),
(3, 609, 'hnszzszyqhzcdj', '河南省郑州市中原区黄庄村大街', '34.774714', '113.583494'),
(3, 611, 'henanshengzhengzhoushizhongyuanquxihuandaolu110hao', '河南省郑州市中原区西环道路110号', '34.769792', '113.592046'),
(3, 611, 'hnszzszyqxhdlh', '河南省郑州市中原区西环道路110号', '34.769792', '113.592046'),
(3, 613, 'henanshengzhengzhoushizhongyuanqujianshexilu', '河南省郑州市中原区建设西路', '34.769199', '113.582919'),
(3, 613, 'hnszzszyqjsxl', '河南省郑州市中原区建设西路', '34.769199', '113.582919'),
(3, 615, 'xihuanlusanguanmiaoqinlinglu', '西环路,三官庙,秦岭路', '34.768547', '113.60031'),
(3, 615, 'xhlsgmqll', '西环路,三官庙,秦岭路', '34.768547', '113.60031'),
(3, 617, 'henanshengzhengzhoushizhongyuanquniuzhuangnanjie', '河南省郑州市中原区牛庄南街', '34.768547', '113.60031'),
(3, 617, 'hnszzszyqnznj', '河南省郑州市中原区牛庄南街', '34.768547', '113.60031'),
(3, 619, 'xihuanluqinlinglusanguanmiao', '西环路,秦岭路,三官庙', '34.772817', '113.601101'),
(3, 619, 'xhlqllsgm', '西环路,秦岭路,三官庙', '34.772817', '113.601101'),
(2, 76, 'guanghexianhuaqijiandian', '光合鲜花旗舰店', '34.741802006663', '113.62121598387'),
(2, 76, 'ghxhqjd', '光合鲜花旗舰店', '34.741802006663', '113.62121598387'),
(2, 76, 'sdfsa', 'sdfsa', '34.741802006663', '113.62121598387'),
(2, 76, 'ghxhqjd', 'sdfsa', '34.741802006663', '113.62121598387'),
(3, 621, 'zhengzhoutielujunanguanyimalu', '郑州铁路局,南关,一马路', '34.739167', '113.678352'),
(3, 621, 'zztljngyml', '郑州铁路局,南关,一马路', '34.739167', '113.678352'),
(3, 623, 'henanshengzhengzhoushiguanchenghuizuquyinshuachangjie', '河南省郑州市管城回族区印刷厂街', '34.739167', '113.678352'),
(3, 623, 'hnszzsgchzqyscj', '河南省郑州市管城回族区印刷厂街', '34.739167', '113.678352'),
(3, 625, 'zhengzhoutielujufengzhuangjingguanglu', '郑州铁路局,冯庄,京广路', '34.738092', '113.679036'),
(3, 625, 'zztljfzjgl', '郑州铁路局,冯庄,京广路', '34.738092', '113.679036'),
(3, 627, 'zhengzhoutielujuyimaluhuochezhan', '郑州铁路局,一马路,火车站', '34.750646', '113.667649'),
(3, 627, 'zztljymlhcz', '郑州铁路局,一马路,火车站', '34.750646', '113.667649'),
(3, 629, 'henanshengzhengzhoushierqiquyimalu', '河南省郑州市二七区一马路', '34.750646', '113.667649'),
(3, 629, 'hnszzseqqyml', '河南省郑州市二七区一马路', '34.750646', '113.667649'),
(3, 631, 'daxueluhuaiheluqiliyan', '大学路,淮河路,齐礼阎', '34.734169', '113.647695'),
(3, 631, 'dxlhhlqly', '大学路,淮河路,齐礼阎', '34.734169', '113.647695'),
(3, 633, 'henanshengzhengzhoushierqiqurenhelu', '河南省郑州市二七区人和路', '34.734169', '113.647695'),
(3, 633, 'hnszzseqqrhl', '河南省郑州市二七区人和路', '34.734169', '113.647695'),
(3, 635, 'jingguanglufuhuajieqingfengjie', '京广路,福华街,庆丰街', '34.732151', '113.664583'),
(3, 635, 'jglfhjqfj', '京广路,福华街,庆丰街', '34.732151', '113.664583'),
(3, 637, 'henanshengzhengzhoushierqiqujingguangzhonglu12hao', '河南省郑州市二七区京广中路12号', '34.732151', '113.664583'),
(3, 637, 'hnszzseqqjgzlh', '河南省郑州市二七区京广中路12号', '34.732151', '113.664583'),
(3, 639, 'fengzhuanghanghaidongluzhengzhoutieluju', '冯庄,航海东路,郑州铁路局', '34.730905', '113.6814'),
(3, 639, 'fzhhdlzztlj', '冯庄,航海东路,郑州铁路局', '34.730905', '113.6814'),
(3, 641, 'henanshengzhengzhoushiguanchenghuizuqulonghainanli', '河南省郑州市管城回族区陇海南里', '34.730905', '113.6814'),
(3, 641, 'hnszzsgchzqlhnl', '河南省郑州市管城回族区陇海南里', '34.730905', '113.6814'),
(3, 643, 'huaiheludaxuelujiaotonglu', '淮河路,大学路,交通路', '34.74022', '113.648198'),
(3, 643, 'hhldxljtl', '淮河路,大学路,交通路', '34.74022', '113.648198'),
(3, 645, 'henanshengzhengzhoushierqiquqinlaojie', '河南省郑州市二七区勤劳街', '34.74022', '113.648198'),
(3, 645, 'hnszzseqqqlj', '河南省郑州市二七区勤劳街', '34.74022', '113.648198'),
(3, 647, 'henanshengzhengzhoushierqiquxinghuananjie', '河南省郑州市二七区兴华南街', '34.727642', '113.638425'),
(3, 647, 'hnszzseqqxhnj', '河南省郑州市二七区兴华南街', '34.727642', '113.638425'),
(3, 649, 'henanshengzhengzhoushierqiquzhengtonglu23haofu6hao', '河南省郑州市二七区政通路23号-附6号', '34.730727', '113.657828'),
(3, 649, 'hnszzseqqztlhfh', '河南省郑州市二七区政通路23号-附6号', '34.730727', '113.657828'),
(3, 651, 'jingguangludaxueluhanghaizhonglu', '京广路,大学路,航海中路', '34.728888', '113.658547'),
(3, 651, 'jgldxlhhzl', '京广路,大学路,航海中路', '34.728888', '113.658547'),
(3, 653, 'qiliyandaxueluxinghuananjie', '齐礼阎,大学路,兴华南街', '34.729778', '113.64209'),
(3, 653, 'qlydxlxhnj', '齐礼阎,大学路,兴华南街', '34.729778', '113.64209'),
(3, 655, 'henanshengzhengzhoushierqiquzhengtonglu105', '河南省郑州市二七区政通路105', '34.729778', '113.64209'),
(3, 655, 'hnszzseqqztl', '河南省郑州市二七区政通路105', '34.729778', '113.64209'),
(3, 657, 'daxueluqiliyanhuaihelu', '大学路,齐礼阎,淮河路', '34.730431', '113.649707'),
(3, 657, 'dxlqlyhhl', '大学路,齐礼阎,淮河路', '34.730431', '113.649707'),
(3, 659, 'henanshengzhengzhoushierqiqudaxuezhonglu120hao', '河南省郑州市二七区大学中路120号', '34.730431', '113.649707'),
(3, 659, 'hnszzseqqdxzlh', '河南省郑州市二七区大学中路120号', '34.730431', '113.649707'),
(3, 661, 'hanghaizhongludaxuelulaodaizhuang', '航海中路,大学路,老代庄', '34.726277', '113.654235'),
(3, 661, 'hhzldxlldz', '航海中路,大学路,老代庄', '34.726277', '113.654235'),
(3, 663, 'henanshengzhengzhoushierqiquhanghaizhonglu113hao', '河南省郑州市二七区航海中路113号', '34.726277', '113.654235'),
(3, 663, 'hnszzseqqhhzlh', '河南省郑州市二七区航海中路113号', '34.726277', '113.654235'),
(3, 665, 'henanshengzhengzhoushigongyishi310dufulu', '河南省郑州市巩义市G310(杜甫路)', '34.742156', '113.022491'),
(3, 665, 'hnszzsgysdfl', '河南省郑州市巩义市G310(杜甫路)', '34.742156', '113.022491'),
(3, 667, 'huaiheludaxueluxinghuananjie', '淮河路,大学路,兴华南街', '34.737847', '113.640724'),
(3, 667, 'hhldxlxhnj', '淮河路,大学路,兴华南街', '34.737847', '113.640724'),
(3, 669, 'henanshengzhengzhoushierqiquminanlu', '河南省郑州市二七区民安路', '34.737847', '113.640724'),
(3, 669, 'hnszzseqqmal', '河南省郑州市二七区民安路', '34.737847', '113.640724'),
(3, 671, 'longhaixiluertonggongyuangongrenlu', '陇海西路,儿童公园,工人路', '34.742297', '113.627789'),
(3, 671, 'lhxletgygrl', '陇海西路,儿童公园,工人路', '34.742297', '113.627789'),
(3, 673, 'henanshengzhengzhoushizhongyuanqulonghaixilu370hao', '河南省郑州市中原区陇海西路370号', '34.742297', '113.627789'),
(3, 673, 'hnszzszyqlhxlh', '河南省郑州市中原区陇海西路370号', '34.742297', '113.627789'),
(3, 675, 'ruheluertonggongyuangongrenlu', '汝河路,儿童公园,工人路', '34.742178', '113.62937'),
(3, 675, 'rhletgygrl', '汝河路,儿童公园,工人路', '34.742178', '113.62937'),
(3, 677, 'henanshengzhengzhoushizhongyuanqulonghaixilu385hao', '河南省郑州市中原区陇海西路385号', '34.742178', '113.62937'),
(3, 677, 'hnszzszyqlhxlh', '河南省郑州市中原区陇海西路385号', '34.742178', '113.62937'),
(3, 679, 'ruhelugongrenluertonggongyuan', '汝河路,工人路,儿童公园', '34.741169', '113.628292'),
(3, 679, 'rhlgrletgy', '汝河路,工人路,儿童公园', '34.741169', '113.628292'),
(3, 681, 'henanshengzhengzhoushizhongyuanqugongrenlu213hao', '河南省郑州市中原区工人路213号', '34.739983', '113.626926'),
(3, 681, 'hnszzszyqgrlh', '河南省郑州市中原区工人路213号', '34.739983', '113.626926'),
(3, 683, 'jicheng', '祭城', '34.766231', '113.765055'),
(3, 683, 'jc', '祭城', '34.766231', '113.765055'),
(3, 685, 'henanshengzhengzhoushijinshuiquqilihenanlu', '河南省郑州市金水区七里河南路', '34.766231', '113.765055'),
(3, 685, 'hnszzsjsqqlhnl', '河南省郑州市金水区七里河南路', '34.766231', '113.765055'),
(3, 687, 'henanshengzhengzhoushijinshuiqujinshuidonglu', '河南省郑州市金水区金水东路', '34.778922', '113.78877'),
(3, 687, 'hnszzsjsqjsdl', '河南省郑州市金水区金水东路', '34.778922', '113.78877'),
(3, 689, 'yaozhaishengzhengfusenlingongyuan', '姚寨,省政府,森林公园', '34.788868', '113.729026'),
(3, 689, 'yzszfslgy', '姚寨,省政府,森林公园', '34.788868', '113.729026'),
(3, 691, 'henanshengzhengzhoushijinshuiqulonghuwaihuannanlu', '河南省郑州市金水区龙湖外环南路', '34.788868', '113.729026'),
(3, 691, 'hnszzsjsqlhwhnl', '河南省郑州市金水区龙湖外环南路', '34.788868', '113.729026'),
(3, 693, 'henanshengzhengzhoushijinshuiqufengchanlu126hao', '河南省郑州市金水区丰产路126号', '34.79035', '113.710845'),
(3, 693, 'hnszzsjsqfclh', '河南省郑州市金水区丰产路126号', '34.79035', '113.710845'),
(3, 695, 'qinlingluertonggongyuanhuashanlu', '秦岭路,儿童公园,华山路', '34.738915', '113.609032'),
(3, 695, 'qlletgyhsl', '秦岭路,儿童公园,华山路', '34.738915', '113.609032'),
(3, 697, 'henanshengzhengzhoushizhongyuanquruhelu', '河南省郑州市中原区汝河路', '34.738915', '113.609032'),
(3, 697, 'hnszzszyqrhl', '河南省郑州市中原区汝河路', '34.738915', '113.609032'),
(3, 699, 'ruhelugongrenluhuaihelu', '汝河路,工人路,淮河路', '34.73761', '113.628867'),
(3, 699, 'rhlgrlhhl', '汝河路,工人路,淮河路', '34.73761', '113.628867'),
(3, 701, 'lvdongcunhuguangyuanxihuanlu', '绿东村,湖光苑,西环路', '34.749771', '113.597534'),
(3, 701, 'ldchgyxhl', '绿东村,湖光苑,西环路', '34.749771', '113.597534'),
(3, 703, 'henanshengzhengzhoushizhongyuanquzhongyuanxilu', '河南省郑州市中原区中原西路', '34.749178', '113.575831'),
(3, 703, 'hnszzszyqzyxl', '河南省郑州市中原区中原西路', '34.749178', '113.575831'),
(3, 705, 'ruheluertonggongyuanqinlinglu', '汝河路,儿童公园,秦岭路', '34.737076', '113.614997'),
(3, 705, 'rhletgyqll', '汝河路,儿童公园,秦岭路', '34.737076', '113.614997'),
(3, 707, 'henanshengzhengzhoushizhongyuanquruhelu20yuan', '河南省郑州市中原区汝河路20院', '34.737076', '113.614997'),
(3, 707, 'hnszzszyqrhly', '河南省郑州市中原区汝河路20院', '34.737076', '113.614997'),
(3, 709, 'daxueluhuaiheluqingfengjie', '大学路,淮河路,庆丰街', '34.736661', '113.647264'),
(3, 709, 'dxlhhlqfj', '大学路,淮河路,庆丰街', '34.736661', '113.647264'),
(3, 711, 'henanshengzhengzhoushierqiqucaoxijie5hao', '河南省郑州市二七区曹砦西街5号', '34.736661', '113.647264'),
(3, 711, 'hnszzseqqcxjh', '河南省郑州市二七区曹砦西街5号', '34.736661', '113.647264'),
(3, 713, 'xinghuananjiedaxueluqiliyan', '兴华南街,大学路,齐礼阎', '34.732626', '113.641084'),
(3, 713, 'xhnjdxlqly', '兴华南街,大学路,齐礼阎', '34.732626', '113.641084'),
(3, 715, 'henanshengzhengzhoushierqiquhuainanjie', '河南省郑州市二七区淮南街', '34.732626', '113.641084'),
(3, 715, 'hnszzseqqhnj', '河南省郑州市二七区淮南街', '34.732626', '113.641084'),
(3, 717, 'daxuelutaoyuanlushiwei', '大学路,桃源路,市委', '34.746785', '113.648956'),
(3, 717, 'dxltylsw', '大学路,桃源路,市委', '34.746785', '113.648956'),
(3, 719, 'henanshengzhengzhoushierqiqutaoyuanlu25haoyuan', '河南省郑州市二七区桃源路25号院', '34.746785', '113.648956'),
(3, 719, 'hnszzseqqtylhy', '河南省郑州市二七区桃源路25号院', '34.746785', '113.648956'),
(3, 721, 'donghuanlumenlou', '东环路,葑门,娄葑', '31.310983', '120.655567'),
(3, 721, 'dhlml', '东环路,葑门,娄葑', '31.310983', '120.655567'),
(3, 723, 'jiangsushengsuzhoushiwuzhongquzhuangxianwanlu88hao', '江苏省苏州市吴中区庄先湾路88号', '31.310983', '120.655567'),
(3, 723, 'jssszswzqzxwlh', '江苏省苏州市吴中区庄先湾路88号', '31.310983', '120.655567'),
(3, 725, 'zhengzhoutielujuwulibaofengzhuang', '郑州铁路局,五里堡,冯庄', '34.737649', '113.684241'),
(3, 725, 'zztljwlbfz', '郑州铁路局,五里堡,冯庄', '34.737649', '113.684241'),
(3, 727, 'henanshengzhengzhoushiguanchenghuizuqulonghaili20hao', '河南省郑州市管城回族区陇海里20号', '34.737649', '113.684241'),
(3, 727, 'hnszzsgchzqlhlh', '河南省郑州市管城回族区陇海里20号', '34.737649', '113.684241'),
(3, 729, 'henanshengzhengzhoushidengfengshi020guoyangxian', '河南省郑州市登封市X020(郭阳线)', '34.550491', '113.065374'),
(3, 729, 'hnszzsdfsgyx', '河南省郑州市登封市X020(郭阳线)', '34.550491', '113.065374'),
(3, 731, 'henanshengzhengzhoushigongyishigongdenglu', '河南省郑州市巩义市巩登路', '34.564702', '113.039215'),
(3, 731, 'hnszzsgysgdl', '河南省郑州市巩义市巩登路', '34.564702', '113.039215'),
(3, 733, 'henanshengzhengzhoushigongyishi', '河南省郑州市巩义市', '34.56595', '112.993869'),
(3, 733, 'hnszzsgys', '河南省郑州市巩义市', '34.56595', '112.993869'),
(3, 735, 'henanshengzhengzhoushidengfengshi', '河南省郑州市登封市', '34.562086', '113.074788'),
(3, 735, 'hnszzsdfs', '河南省郑州市登封市', '34.562086', '113.074788'),
(3, 737, 'henanshengzhengzhoushidengfengshi49jiaotonggaosugonglu', '河南省郑州市登封市S49(焦桐高速公路)', '34.551146', '113.147802'),
(3, 737, 'hnszzsdfsjtgsgl', '河南省郑州市登封市S49(焦桐高速公路)', '34.551146', '113.147802'),
(3, 739, 'zhejiangshengtaizhoushisanmenxian224', '浙江省台州市三门县S224', '29.106571', '121.449091'),
(3, 739, 'zjstzssmx', '浙江省台州市三门县S224', '29.106571', '121.449091'),
(3, 741, 'zhejiangshengtaizhoushisanmenxianpinganlu1hao', '浙江省台州市三门县平安路1号', '29.123437', '121.383209'),
(3, 741, 'zjstzssmxpalh', '浙江省台州市三门县平安路1号', '29.123437', '121.383209'),
(3, 743, 'zhejiangshengtaizhoushisanmenxianhaigegonglu', '浙江省台州市三门县海葛公路', '29.122081', '121.396432'),
(3, 743, 'zjstzssmxhggl', '浙江省台州市三门县海葛公路', '29.122081', '121.396432'),
(3, 745, 'zhejiangshengtaizhoushisanmenxian', '浙江省台州市三门县', '29.126498', '121.406421'),
(3, 745, 'zjstzssmx', '浙江省台州市三门县', '29.126498', '121.406421'),
(3, 747, 'xinliulusuolinglufengqinglu', '新柳路,索凌路,丰庆路', '34.837287', '113.644837'),
(3, 747, 'xllsllfql', '新柳路,索凌路,丰庆路', '34.837287', '113.644837'),
(3, 749, 'henanshengzhengzhoushijinshuiquxinliulunan1hao', '河南省郑州市金水区新柳路南1号', '34.837287', '113.644837'),
(3, 749, 'hnszzsjsqxllnh', '河南省郑州市金水区新柳路南1号', '34.837287', '113.644837'),
(3, 751, 'henanshengzhengzhoushijinshuiqu', '河南省郑州市金水区', '34.843397', '113.713102'),
(3, 751, 'hnszzsjsq', '河南省郑州市金水区', '34.843397', '113.713102'),
(3, 753, 'henanshengzhengzhoushijinshuiquhuanghedonglu', '河南省郑州市金水区黄河东路', '34.783932', '113.720776'),
(3, 753, 'hnszzsjsqhhdl', '河南省郑州市金水区黄河东路', '34.783932', '113.720776'),
(3, 755, 'weilailuminhangluyaozhai', '未来路,民航路,姚寨', '34.782627', '113.727244'),
(3, 755, 'wllmhlyz', '未来路,民航路,姚寨', '34.782627', '113.727244'),
(3, 757, 'henanshengzhengzhoushijinshuiquzhongyixilu13hao3lou', '河南省郑州市金水区众意西路13号-3楼', '34.782627', '113.727244'),
(3, 757, 'hnszzsjsqzyxlhl', '河南省郑州市金水区众意西路13号-3楼', '34.782627', '113.727244'),
(3, 759, 'henanshengzhengzhoushijinshuiquhuizhanlu', '河南省郑州市金水区会展路', '34.781916', '113.732131'),
(3, 759, 'hnszzsjsqhzl', '河南省郑州市金水区会展路', '34.781916', '113.732131'),
(3, 761, 'weilailuyaozhaiminhanglu', '未来路,姚寨,民航路', '34.780315', '113.722645'),
(3, 761, 'wllyzmhl', '未来路,姚寨,民航路', '34.780315', '113.722645'),
(3, 763, 'henanshengzhengzhoushijinshuiqushangwuwaihuanlu', '河南省郑州市金水区商务外环路', '34.780315', '113.722645'),
(3, 763, 'hnszzsjsqswwhl', '河南省郑州市金水区商务外环路', '34.780315', '113.722645'),
(3, 765, 'nongyeluyanxianhuayuanlufengchanlu', '农业路沿线,花园路,丰产路', '34.78826', '113.689156'),
(3, 765, 'nylyxhylfcl', '农业路沿线,花园路,丰产路', '34.78826', '113.689156'),
(3, 767, 'henanshengzhengzhoushijinshuiquhuayuanlu28', '河南省郑州市金水区花园路28', '34.78826', '113.689156'),
(3, 767, 'hnszzsjsqhyl', '河南省郑州市金水区花园路28', '34.78826', '113.689156'),
(3, 769, 'shenggangnongyeluyanxianfengchanlu', '胜岗,农业路沿线,丰产路', '34.788675', '113.677801'),
(3, 769, 'sgnylyxfcl', '胜岗,农业路沿线,丰产路', '34.788675', '113.677801'),
(3, 771, 'henanshengzhengzhoushijinshuiqujingqilu23hao', '河南省郑州市金水区经七路23号', '34.788675', '113.677801'),
(3, 771, 'hnszzsjsqjqlh', '河南省郑州市金水区经七路23号', '34.788675', '113.677801'),
(3, 773, 'henanshengzhengzhoushijinshuiqutianfulu', '河南省郑州市金水区天赋路', '34.791047', '113.74636'),
(3, 773, 'hnszzsjsqtfl', '河南省郑州市金水区天赋路', '34.791047', '113.74636'),
(3, 775, 'shengzhengfuyaozhaiweilailu', '省政府,姚寨,未来路', '34.779322', '113.709853'),
(3, 775, 'szfyzwll', '省政府,姚寨,未来路', '34.779322', '113.709853'),
(3, 777, 'henanshengzhengzhoushijinshuiquyaolu', '河南省郑州市金水区姚砦路', '34.779322', '113.709853'),
(3, 777, 'hnszzsjsqyl', '河南省郑州市金水区姚砦路', '34.779322', '113.709853'),
(3, 779, 'shengzhengfuyaozhaiweierlu', '省政府,姚寨,纬二路', '34.779529', '113.707248'),
(3, 779, 'szfyzwel', '省政府,姚寨,纬二路', '34.779529', '113.707248'),
(3, 781, 'henanshengzhengzhoushijinshuiqudongminglu173hao', '河南省郑州市金水区东明路173号', '34.779529', '113.707248'),
(3, 781, 'hnszzsjsqdmlh', '河南省郑州市金水区东明路173号', '34.779529', '113.707248'),
(3, 783, 'henanshengzhengzhoushijinshuiquweiwulu', '河南省郑州市金水区纬五路', '34.77858', '113.708074'),
(3, 783, 'hnszzsjsqwwl', '河南省郑州市金水区纬五路', '34.77858', '113.708074'),
(3, 785, 'yaozhaishengzhengfuweilailu', '姚寨,省政府,未来路', '34.779574', '113.710032'),
(3, 785, 'yzszfwll', '姚寨,省政府,未来路', '34.779574', '113.710032'),
(3, 787, 'henanshengzhengzhoushijinshuiqudongminglubei179hao', '河南省郑州市金水区东明路北179号', '34.781367', '113.706475'),
(3, 787, 'hnszzsjsqdmlbh', '河南省郑州市金水区东明路北179号', '34.781367', '113.706475'),
(3, 789, 'henanshengzhengzhoushijinshuiquhuanghelu176hao', '河南省郑州市金水区黄河路176号', '34.780255', '113.707751'),
(3, 789, 'hnszzsjsqhhlh', '河南省郑州市金水区黄河路176号', '34.780255', '113.707751'),
(3, 791, 'weilailuyaozhaishengzhengfu', '未来路,姚寨,省政府', '34.780789', '113.714973'),
(3, 791, 'wllyzszf', '未来路,姚寨,省政府', '34.780789', '113.714973'),
(3, 793, 'henanshengzhengzhoushijinshuiquweilailu', '河南省郑州市金水区未来路', '34.780789', '113.714973'),
(3, 793, 'hnszzsjsqwll', '河南省郑州市金水区未来路', '34.780789', '113.714973');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_printlog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_printlog` (
  `orderid` int(20) NOT NULL,
  `addtime` time default NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_printlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_product`
--

CREATE TABLE IF NOT EXISTS `xiaozu_product` (
  `id` int(11) NOT NULL auto_increment COMMENT '子商品ID',
  `goodsid` int(20) NOT NULL COMMENT '主商品ID',
  `goodsname` varchar(255) default NULL COMMENT '商品名称',
  `attrname` varchar(255) default NULL COMMENT '属性描述',
  `attrids` varchar(255) NOT NULL COMMENT '包含规格值ID集，分割',
  `stock` int(5) NOT NULL default '0' COMMENT '库存',
  `cost` decimal(8,2) NOT NULL default '0.00' COMMENT '销售价格',
  `shopid` int(20) NOT NULL default '0',
  `bagcost` decimal(5,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=203 ;

--
-- 导出表中的数据 `xiaozu_product`
--

INSERT INTO `xiaozu_product` (`id`, `goodsid`, `goodsname`, `attrname`, `attrids`, `stock`, `cost`, `shopid`, `bagcost`) VALUES
(45, 1031, '麻辣豆腐盖饭', '大份', '2', 107, 10.00, 4, 1.00),
(46, 1031, '麻辣豆腐盖饭', '小份', '3', 104, 8.00, 4, 1.00),
(47, 871, '虾仁面', '大份', '2', 111, 50.00, 4, 0.00),
(48, 871, '虾仁面', '小份', '3', 111, 30.00, 4, 0.00),
(49, 868, '清汤面', '大份', '2', 111, 20.00, 4, 0.00),
(50, 868, '清汤面', '小份', '3', 1111, 10.00, 4, 0.00),
(51, 867, '牛肉盖浇饭', '大份', '2', 111, 41.00, 4, 0.00),
(52, 867, '牛肉盖浇饭', '小份', '3', 111, 31.00, 4, 0.00),
(53, 869, '蒜汁拌面', '大份', '2', 111, 35.00, 4, 0.00),
(54, 869, '蒜汁拌面', '小份', '3', 111, 20.00, 4, 0.00),
(55, 872, '香菇热干面', '大份', '2', 111, 20.00, 4, 0.00),
(56, 872, '香菇热干面', '小份', '3', 111, 15.00, 4, 0.00),
(57, 873, '鸡蛋捞面', '大份', '2', 111, 25.00, 4, 0.00),
(58, 873, '鸡蛋捞面', '小份', '3', 111, 15.00, 4, 0.00),
(59, 874, '鱼香肉丝盖浇饭', '大份', '2', 111, 22.00, 4, 0.00),
(60, 874, '鱼香肉丝盖浇饭', '小份', '3', 111, 15.00, 4, 0.00),
(61, 875, '炸酱面', '大份', '2', 111, 22.00, 4, 0.00),
(62, 875, '炸酱面', '小份', '3', 111, 15.00, 4, 0.00),
(63, 1516, '朝鲜冷面', '大份', '2', 111, 20.00, 4, 0.00),
(64, 1516, '朝鲜冷面', '小份', '3', 110, 10.00, 4, 0.00),
(108, 1520, '黄焖鸡', '大份,特辣', '2,15', 999, 15.00, 4, 0.00),
(109, 1520, '黄焖鸡', '大份,中辣', '2,13', 100, 15.00, 4, 0.00),
(110, 1520, '黄焖鸡', '大份,微辣', '2,12', 94, 15.00, 4, 0.00),
(111, 1520, '黄焖鸡', '小份,特辣', '3,15', 107, 10.00, 4, 0.00),
(112, 1520, '黄焖鸡', '小份,中辣', '3,13', 98, 10.00, 4, 0.00),
(113, 1520, '黄焖鸡', '小份,微辣', '3,12', 99, 10.00, 4, 0.00);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_regsendjuan`
--

CREATE TABLE IF NOT EXISTS `xiaozu_regsendjuan` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `limitcost` decimal(10,2) NOT NULL,
  `jiancost` decimal(10,2) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `is_open` int(1) NOT NULL default '0' COMMENT '默认0开启 1不开启',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_regsendjuan`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_rule`
--

CREATE TABLE IF NOT EXISTS `xiaozu_rule` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL COMMENT '规则名称',
  `type` int(1) NOT NULL COMMENT '默认1，购物车总价',
  `limittype` int(1) NOT NULL COMMENT '是否指定具体时间1否2指定星期3指定小时',
  `limittime` varchar(255) NOT NULL COMMENT '具体时间：周几，或者具体时间',
  `limitcontent` int(5) NOT NULL COMMENT '限制内容购物车总价',
  `controltype` int(1) NOT NULL COMMENT '规则类型：1赠，3折扣，2减费用',
  `controlcontent` int(20) default NULL COMMENT '限制内容填写赠品ID，折扣率，费用等大于0',
  `starttime` int(11) NOT NULL COMMENT '开始时间',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `status` tinyint(1) NOT NULL COMMENT '状态1有效 2无效',
  `shopid` int(20) NOT NULL COMMENT '店铺id',
  `presenttitle` varchar(255) default NULL COMMENT '赠品标题',
  `signid` int(20) NOT NULL,
  `cattype` int(1) NOT NULL default '1' COMMENT '1外卖 2订台',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 导出表中的数据 `xiaozu_rule`
--

INSERT INTO `xiaozu_rule` (`id`, `name`, `type`, `limittype`, `limittime`, `limitcontent`, `controltype`, `controlcontent`, `starttime`, `endtime`, `status`, `shopid`, `presenttitle`, `signid`, `cattype`) VALUES
(8, '满二十减一', 1, 2, '1,2,3,4,5', 20, 2, 1, 1452441600, 1483631999, 1, 4, '', 4, 0),
(9, '首单减2元', 1, 1, '', 0, 1, 20, 1452355200, 1452095999, 1, 4, '', 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_score_log`
--

CREATE TABLE IF NOT EXISTS `xiaozu_score_log` (
  `id` int(20) NOT NULL auto_increment,
  `uid` int(20) NOT NULL default '0',
  `type` int(1) NOT NULL default '0',
  `score` int(7) NOT NULL default '0',
  `title` varchar(100) default NULL,
  `content` text,
  `addtime` int(12) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_score_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_searchlog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_searchlog` (
  `uid` int(11) NOT NULL COMMENT '用户UID',
  `searchval` varchar(255) NOT NULL COMMENT '搜索关键词',
  `searchtime` int(11) NOT NULL COMMENT '搜索时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_searchlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_searkey`
--

CREATE TABLE IF NOT EXISTS `xiaozu_searkey` (
  `type` int(1) NOT NULL COMMENT '1外卖，2订台，3商城',
  `goid` int(20) NOT NULL,
  `keycontent` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  FULLTEXT KEY `keycontent` (`keycontent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_searkey`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_sharealog`
--

CREATE TABLE IF NOT EXISTS `xiaozu_sharealog` (
  `uid` int(20) NOT NULL,
  `childusername` varchar(100) default NULL,
  `titile` varchar(255) default NULL,
  `addtime` int(12) default NULL,
  `content` varchar(255) default NULL,
  `id` int(20) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `xiaozu_sharealog`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shop`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shop` (
  `id` int(20) NOT NULL auto_increment,
  `uid` int(20) NOT NULL COMMENT '用户ID',
  `shortname` varchar(10) default NULL COMMENT '店铺短地址',
  `shopname` varchar(150) NOT NULL COMMENT '店铺名称',
  `shoplogo` varchar(150) default NULL,
  `phone` varchar(100) default NULL COMMENT '联系电话',
  `address` varchar(150) default NULL COMMENT '联系地址',
  `point` int(10) NOT NULL default '5' COMMENT '评分',
  `cx_info` text COMMENT '促销信息',
  `intr_info` text COMMENT '介绍信息',
  `notice_info` text COMMENT '公告信息',
  `starttime` varchar(100) default NULL COMMENT '营业时间',
  `is_open` int(1) NOT NULL default '0' COMMENT '是否营业',
  `is_onlinepay` int(1) NOT NULL default '1' COMMENT '是否开启在线支付：默认为1开启，0不开启',
  `is_daopay` int(1) NOT NULL default '1' COMMENT '是否开启到付：默认为1开启，0不开启',
  `is_pass` int(1) NOT NULL default '0' COMMENT '是否通过审核',
  `is_recom` int(1) NOT NULL default '0' COMMENT '是否是推荐店铺',
  `maphone` varchar(12) default NULL,
  `addtime` int(12) default NULL,
  `pointcount` int(5) NOT NULL default '0',
  `psservicepoint` int(11) NOT NULL COMMENT '配送服务评分',
  `psservicepointcount` int(11) NOT NULL COMMENT '配送服务评论次数',
  `yjin` decimal(5,2) NOT NULL default '0.00' COMMENT '佣金比例当为0时调用网站设置',
  `lat` decimal(9,6) NOT NULL default '0.000000' COMMENT '地图左坐标',
  `lng` decimal(9,6) NOT NULL default '0.000000' COMMENT '地图右坐标',
  `shopbacklogo` varchar(255) default NULL COMMENT '商家默认背景图片',
  `sort` int(20) NOT NULL default '999' COMMENT '排序',
  `email` varchar(50) default NULL,
  `areaid1` int(20) NOT NULL default '0',
  `areaid2` int(20) NOT NULL default '0',
  `areaid3` int(20) NOT NULL default '0',
  `otherlink` varchar(255) default NULL COMMENT '其他链接地址',
  `endtime` int(11) NOT NULL default '0',
  `IMEI` varchar(255) default NULL,
  `shoptype` int(2) NOT NULL default '0',
  `noticetype` varchar(100) default NULL,
  `machine_code` varchar(255) default NULL COMMENT '打印2机器码',
  `mKey` varchar(255) default NULL COMMENT '打印2打印密匙',
  `pradiusa` int(1) NOT NULL default '1',
  `admin_id` int(20) NOT NULL default '0',
  `sellcount` int(10) default '0',
  `goodattrdefault` varchar(25) NOT NULL,
  `ruzhutype` int(11) NOT NULL default '0',
  `qiyeimg` varchar(150) NOT NULL,
  `zmimg` varchar(150) NOT NULL,
  `fmimg` varchar(150) NOT NULL,
  `foodtongimg` varchar(150) default NULL,
  `jkzimg` varchar(150) default NULL,
  `sqimg` varchar(150) default NULL,
  `qtshuoming` varchar(255) default NULL,
  `wxhui_ewmurl` text NOT NULL COMMENT '闪惠制作二维码url',
  `goodlistmodule` int(1) NOT NULL default '0' COMMENT '商品列表模板默认为0   ',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

--
-- 导出表中的数据 `xiaozu_shop`
--

INSERT INTO `xiaozu_shop` (`id`, `uid`, `shortname`, `shopname`, `shoplogo`, `phone`, `address`, `point`, `cx_info`, `intr_info`, `notice_info`, `starttime`, `is_open`, `is_onlinepay`, `is_daopay`, `is_pass`, `is_recom`, `maphone`, `addtime`, `pointcount`, `psservicepoint`, `psservicepointcount`, `yjin`, `lat`, `lng`, `shopbacklogo`, `sort`, `email`, `areaid1`, `areaid2`, `areaid3`, `otherlink`, `endtime`, `IMEI`, `shoptype`, `noticetype`, `machine_code`, `mKey`, `pradiusa`, `admin_id`, `sellcount`, `goodattrdefault`, `ruzhutype`, `qiyeimg`, `zmimg`, `fmimg`, `foodtongimg`, `jkzimg`, `sqimg`, `qtshuoming`, `wxhui_ewmurl`, `goodlistmodule`) VALUES
(4, 4, 'www.hlju', '光合外卖旗舰店', '/upload/user/20160109232216756.jpg', '15122211123', '棉纺西路4号院1号商业1层商11号', 9, '', '光合外卖旗舰店，汇集国内顶级厨师，川菜粤菜鲁菜淮扬菜，样样精通。\r\n厨师顾问赵杰权老先生曾在钓鱼台国宴担任厨师长一职，先后负责数届国内领导班子的饮食，堪称是内地厨师界的无冕之王。\r\n厨师长朱二明先生是1998-2013节香港厨师大赛的冠军，当之无愧的厨神。', '光合外卖旗舰店，汇集国内顶级厨师，川菜粤菜鲁菜淮扬菜，样样精通。 &nbsp;', '06:00-12:59|15:00-23:00', 1, 1, 1, 1, 1, '18705342222', 1433149257, 31, 0, 1, 5.00, 34.753488, 113.631349, '', 1, 'sss@189.cn', 0, 0, 0, '', 1480433306, '', 0, '3', '', '', 5, 67, 396, '份', 0, '', '', '', '', '', '', '', '', 0),
(103, 1112, '1141', '光合超市旗舰店', '/upload/user/20160109232632948.jpg', '15022222222', '冉屯北路13号27号楼一层附9号', 5, NULL, NULL, '外卖人8.0发布上线！持续升级永无止境！', '00:01-23:59', 1, 1, 1, 1, 1, '15555554444', 1442311583, 10, 0, 0, 5.00, 34.802461, 113.597715, NULL, 2, '56465@qq.com', 0, 0, 0, '', 1473847583, '', 1, '1,2,3', '', '', 10, 67, 12, '份', 0, '', '', '', NULL, NULL, NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shopattr`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shopattr` (
  `shopid` int(20) NOT NULL,
  `cattype` int(1) NOT NULL default '0' COMMENT '1外卖2订台',
  `firstattr` int(20) NOT NULL default '0',
  `attrid` int(20) NOT NULL default '0' COMMENT '该属性ID',
  `value` varchar(255) default NULL COMMENT '值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_shopattr`
--

INSERT INTO `xiaozu_shopattr` (`shopid`, `cattype`, `firstattr`, `attrid`, `value`) VALUES
(4, 0, 173, 0, ''),
(4, 0, 127, 128, '自取'),
(4, 0, 127, 129, '到店吃'),
(4, 0, 130, 131, '自取'),
(4, 0, 130, 132, '外卖'),
(4, 0, 123, 124, '30'),
(103, 1, 173, 175, '高地世纪城'),
(103, 1, 183, 184, '慢城'),
(4, 0, 100, 0, '30分钟'),
(4, 0, 59, 198, '/upload/goods/20160110163220195.png'),
(103, 1, 203, 0, '59分钟'),
(103, 1, 114, 194, '酒店'),
(184, 0, 51, 72, '网站专送'),
(4, 0, 59, 197, '/upload/goods/20160110163203632.png'),
(4, 0, 200, 0, '30分钟'),
(4, 0, 51, 112, '甜点饮品'),
(4, 0, 51, 72, '网站专送'),
(4, 0, 51, 199, '土豪馆'),
(4, 0, 51, 75, '美食外卖');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shopfast`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shopfast` (
  `shopid` int(20) NOT NULL,
  `is_orderbefore` tinyint(1) NOT NULL default '0' COMMENT '0不支持提前预定，1支持',
  `delaytime` int(5) NOT NULL default '0' COMMENT '营业时间和下单时间补差',
  `limitcost` int(3) NOT NULL default '0' COMMENT '起送价格',
  `limitstro` varchar(255) default NULL COMMENT '起送说明',
  `befortime` int(1) NOT NULL default '0' COMMENT '起送提前天数',
  `personcost` int(5) NOT NULL default '0' COMMENT '人均消费价格',
  `sendtype` tinyint(1) NOT NULL default '0' COMMENT '0网站配送，1自行配送',
  `is_hot` int(1) NOT NULL default '0' COMMENT '热卖',
  `is_com` int(1) NOT NULL default '0' COMMENT '推荐',
  `is_new` int(1) NOT NULL COMMENT '新店',
  `maketime` int(5) default '0',
  `pradius` int(1) NOT NULL default '1',
  `pradiusvalue` text,
  `pscost` int(2) NOT NULL default '0',
  `is_waimai` int(1) default '1',
  `is_goshop` int(11) NOT NULL default '0',
  `personcount` int(2) default '0',
  `arrivetime` varchar(20) default NULL,
  `discount` int(1) default '0',
  `postdate` text,
  `is_hui` int(1) NOT NULL default '0' COMMENT '管理员开启闪惠默认0为未开启 1开启',
  `is_shophui` int(1) NOT NULL default '0' COMMENT '商家开启闪惠默认0为未开启 1开启',
  `is_shgift` int(1) NOT NULL default '0' COMMENT '商家是否开启送积分',
  `sendgift` int(11) NOT NULL COMMENT '多少元赠送1积分',
  UNIQUE KEY `shopid` (`shopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_shopfast`
--

INSERT INTO `xiaozu_shopfast` (`shopid`, `is_orderbefore`, `delaytime`, `limitcost`, `limitstro`, `befortime`, `personcost`, `sendtype`, `is_hot`, `is_com`, `is_new`, `maketime`, `pradius`, `pradiusvalue`, `pscost`, `is_waimai`, `is_goshop`, `personcount`, `arrivetime`, `discount`, `postdate`, `is_hui`, `is_shophui`, `is_shgift`, `sendgift`) VALUES
(4, 1, 0, 11, '送到家', 1, 11, 0, 1, 0, 0, 11, 5, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', 10, 1, 1, 10, '11', 0, 'a:41:{i:0;a:3:{s:1:"s";i:36000;s:1:"e";i:37200;s:1:"i";s:0:"";}i:1;a:3:{s:1:"s";i:37200;s:1:"e";i:38400;s:1:"i";s:0:"";}i:2;a:3:{s:1:"s";i:38400;s:1:"e";i:39600;s:1:"i";s:0:"";}i:3;a:3:{s:1:"s";i:39600;s:1:"e";i:40800;s:1:"i";s:0:"";}i:4;a:3:{s:1:"s";i:40800;s:1:"e";i:42000;s:1:"i";s:0:"";}i:5;a:3:{s:1:"s";i:42000;s:1:"e";i:43200;s:1:"i";s:0:"";}i:6;a:3:{s:1:"s";i:43200;s:1:"e";i:44400;s:1:"i";s:0:"";}i:7;a:3:{s:1:"s";i:44400;s:1:"e";i:45600;s:1:"i";s:0:"";}i:8;a:3:{s:1:"s";i:45600;s:1:"e";i:46800;s:1:"i";s:0:"";}i:9;a:3:{s:1:"s";i:46800;s:1:"e";i:48000;s:1:"i";s:0:"";}i:10;a:3:{s:1:"s";i:48000;s:1:"e";i:49200;s:1:"i";s:0:"";}i:11;a:3:{s:1:"s";i:49200;s:1:"e";i:50400;s:1:"i";s:0:"";}i:12;a:3:{s:1:"s";i:50400;s:1:"e";i:51600;s:1:"i";s:0:"";}i:13;a:3:{s:1:"s";i:51600;s:1:"e";i:52800;s:1:"i";s:0:"";}i:14;a:3:{s:1:"s";i:52800;s:1:"e";i:54000;s:1:"i";s:0:"";}i:15;a:3:{s:1:"s";i:54000;s:1:"e";i:55200;s:1:"i";s:0:"";}i:16;a:3:{s:1:"s";i:55200;s:1:"e";i:56400;s:1:"i";s:0:"";}i:17;a:3:{s:1:"s";i:56400;s:1:"e";i:57600;s:1:"i";s:0:"";}i:18;a:3:{s:1:"s";i:57600;s:1:"e";i:58800;s:1:"i";s:0:"";}i:19;a:3:{s:1:"s";i:58800;s:1:"e";i:60000;s:1:"i";s:0:"";}i:20;a:3:{s:1:"s";i:60000;s:1:"e";i:61200;s:1:"i";s:0:"";}i:21;a:3:{s:1:"s";i:61200;s:1:"e";i:62400;s:1:"i";s:0:"";}i:22;a:3:{s:1:"s";i:62400;s:1:"e";i:63600;s:1:"i";s:0:"";}i:23;a:3:{s:1:"s";i:63600;s:1:"e";i:64800;s:1:"i";s:0:"";}i:24;a:3:{s:1:"s";i:64800;s:1:"e";i:66000;s:1:"i";s:0:"";}i:25;a:3:{s:1:"s";i:66000;s:1:"e";i:67200;s:1:"i";s:0:"";}i:26;a:3:{s:1:"s";i:67200;s:1:"e";i:68400;s:1:"i";s:0:"";}i:27;a:3:{s:1:"s";i:68400;s:1:"e";i:69600;s:1:"i";s:0:"";}i:28;a:3:{s:1:"s";i:69600;s:1:"e";i:70800;s:1:"i";s:0:"";}i:29;a:3:{s:1:"s";i:70800;s:1:"e";i:72000;s:1:"i";s:0:"";}i:30;a:3:{s:1:"s";i:72000;s:1:"e";i:73200;s:1:"i";s:0:"";}i:31;a:3:{s:1:"s";i:73200;s:1:"e";i:74400;s:1:"i";s:0:"";}i:32;a:3:{s:1:"s";i:74400;s:1:"e";i:75600;s:1:"i";s:0:"";}i:33;a:3:{s:1:"s";i:75600;s:1:"e";i:76800;s:1:"i";s:0:"";}i:34;a:3:{s:1:"s";i:76800;s:1:"e";i:78000;s:1:"i";s:0:"";}i:35;a:3:{s:1:"s";i:78000;s:1:"e";i:79200;s:1:"i";s:0:"";}i:36;a:3:{s:1:"s";i:79200;s:1:"e";i:80400;s:1:"i";s:0:"";}i:37;a:3:{s:1:"s";i:80400;s:1:"e";i:81600;s:1:"i";s:0:"";}i:38;a:3:{s:1:"s";i:81600;s:1:"e";i:82800;s:1:"i";s:0:"";}i:39;a:3:{s:1:"s";i:82800;s:1:"e";i:84000;s:1:"i";s:0:"";}i:40;a:3:{s:1:"s";i:84000;s:1:"e";i:85200;s:1:"i";s:0:"";}}', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shophui`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shophui` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL COMMENT '规则名称',
  `limittype` int(1) NOT NULL COMMENT '是否指定具体时间1否2指定星期3指定小时',
  `limitweek` varchar(255) NOT NULL COMMENT '具体时间：周几',
  `limittimes` text NOT NULL COMMENT '限制每天具体时间',
  `mjlimitcost` int(11) NOT NULL COMMENT '每满费用金额',
  `limitzhekoucost` int(11) NOT NULL COMMENT '折扣限制金额',
  `controltype` int(1) NOT NULL COMMENT '规则类型：1赠，3折扣，2减费用',
  `controlcontent` int(20) default NULL COMMENT '限制内容填写赠品ID，折扣率，费用等大于0',
  `starttime` int(11) NOT NULL COMMENT '开始时间',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `status` tinyint(1) NOT NULL COMMENT '状态1有效 2无效',
  `shopid` int(20) NOT NULL COMMENT '店铺id',
  `signid` int(20) NOT NULL,
  `cattype` int(1) NOT NULL default '1' COMMENT '1外卖 2订台',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `xiaozu_shophui`
--

INSERT INTO `xiaozu_shophui` (`id`, `name`, `limittype`, `limitweek`, `limittimes`, `mjlimitcost`, `limitzhekoucost`, `controltype`, `controlcontent`, `starttime`, `endtime`, `status`, `shopid`, `signid`, `cattype`) VALUES
(6, '每满50减5元', 1, '', '', 50, 0, 2, 5, 1451923200, 1483718399, 1, 15, 0, 0),
(7, '满一百元减十元', 2, '1,2,3,4,5', '08:00-15:00', 100, 0, 2, 20, 1452441600, 1484150399, 1, 167, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shophuiorder`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shophuiorder` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '用户uid',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `buyorderphone` varchar(100) NOT NULL,
  `dno` varchar(25) NOT NULL COMMENT '买单号',
  `shopid` int(11) NOT NULL COMMENT '店铺ID',
  `shopname` varchar(255) NOT NULL COMMENT '店铺名称',
  `xfcost` decimal(10,2) NOT NULL COMMENT '消费金额',
  `yhcost` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `sjcost` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `givejifen` varchar(30) NOT NULL,
  `huiid` int(11) NOT NULL COMMENT '闪慧ID',
  `huiname` varchar(255) NOT NULL COMMENT '闪慧名称',
  `huitype` int(1) NOT NULL COMMENT '2是每满减 3是折扣',
  `huilimitcost` decimal(10,2) NOT NULL COMMENT '最低达到金额限制',
  `huicost` decimal(10,2) NOT NULL COMMENT '减金额',
  `paytype` int(11) NOT NULL COMMENT '1是微信支付',
  `paystatus` int(1) NOT NULL default '0' COMMENT '0是未付1是已付',
  `status` int(1) NOT NULL default '0' COMMENT '0是未完成是已完成',
  `addtime` int(11) NOT NULL COMMENT '创建时间',
  `completetime` int(11) NOT NULL default '0' COMMENT '支付买单完成时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 导出表中的数据 `xiaozu_shophuiorder`
--

INSERT INTO `xiaozu_shophuiorder` (`id`, `uid`, `username`, `buyorderphone`, `dno`, `shopid`, `shopname`, `xfcost`, `yhcost`, `sjcost`, `givejifen`, `huiid`, `huiname`, `huitype`, `huilimitcost`, `huicost`, `paytype`, `paystatus`, `status`, `addtime`, `completetime`) VALUES
(14, 0, '', '15833333333', '14495615735868', 1, '外卖人旗舰店', 99.00, 0.00, 100.00, '0', 0, '', 0, 0.00, 0.00, 1, 0, 0, 1449561573, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shopmarket`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shopmarket` (
  `shopid` int(20) NOT NULL,
  `is_orderbefore` tinyint(1) NOT NULL default '0' COMMENT '0不支持提前预定，1支持',
  `delaytime` int(5) NOT NULL default '0' COMMENT '营业时间和下单时间补差',
  `limitcost` int(3) NOT NULL default '0' COMMENT '起送价格',
  `limitstro` varchar(255) default NULL COMMENT '起送说明',
  `befortime` int(1) NOT NULL default '0' COMMENT '起送提前天数',
  `sendtype` tinyint(1) NOT NULL default '0' COMMENT '0网站配送，1自行配送',
  `is_hot` int(1) NOT NULL default '0' COMMENT '热卖',
  `is_com` int(1) NOT NULL default '0' COMMENT '推荐',
  `is_new` int(1) NOT NULL COMMENT '新店',
  `maketime` int(5) default '0',
  `pradius` int(1) NOT NULL default '1',
  `pradiusvalue` text,
  `pscost` int(2) default '0',
  `arrivetime` varchar(20) default NULL,
  `postdate` text,
  `is_hui` int(1) NOT NULL default '0' COMMENT '管理员开启闪惠默认0为未开启 1开启',
  `is_shophui` int(1) NOT NULL default '0' COMMENT '商家开启闪惠默认0为未开启 1开启',
  `is_shgift` int(1) NOT NULL default '0' COMMENT '商家是否开启送积分',
  `sendgift` int(11) NOT NULL COMMENT '多少元赠送1积分',
  UNIQUE KEY `shopid` (`shopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_shopmarket`
--

INSERT INTO `xiaozu_shopmarket` (`shopid`, `is_orderbefore`, `delaytime`, `limitcost`, `limitstro`, `befortime`, `sendtype`, `is_hot`, `is_com`, `is_new`, `maketime`, `pradius`, `pradiusvalue`, `pscost`, `arrivetime`, `postdate`, `is_hui`, `is_shophui`, `is_shgift`, `sendgift`) VALUES
(4, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, 0, NULL, 'a:41:{i:0;a:3:{s:1:"s";i:36000;s:1:"e";i:37200;s:1:"i";s:0:"";}i:1;a:3:{s:1:"s";i:37200;s:1:"e";i:38400;s:1:"i";s:0:"";}i:2;a:3:{s:1:"s";i:38400;s:1:"e";i:39600;s:1:"i";s:0:"";}i:3;a:3:{s:1:"s";i:39600;s:1:"e";i:40800;s:1:"i";s:0:"";}i:4;a:3:{s:1:"s";i:40800;s:1:"e";i:42000;s:1:"i";s:0:"";}i:5;a:3:{s:1:"s";i:42000;s:1:"e";i:43200;s:1:"i";s:0:"";}i:6;a:3:{s:1:"s";i:43200;s:1:"e";i:44400;s:1:"i";s:0:"";}i:7;a:3:{s:1:"s";i:44400;s:1:"e";i:45600;s:1:"i";s:0:"";}i:8;a:3:{s:1:"s";i:45600;s:1:"e";i:46800;s:1:"i";s:0:"";}i:9;a:3:{s:1:"s";i:46800;s:1:"e";i:48000;s:1:"i";s:0:"";}i:10;a:3:{s:1:"s";i:48000;s:1:"e";i:49200;s:1:"i";s:0:"";}i:11;a:3:{s:1:"s";i:49200;s:1:"e";i:50400;s:1:"i";s:0:"";}i:12;a:3:{s:1:"s";i:50400;s:1:"e";i:51600;s:1:"i";s:0:"";}i:13;a:3:{s:1:"s";i:51600;s:1:"e";i:52800;s:1:"i";s:0:"";}i:14;a:3:{s:1:"s";i:52800;s:1:"e";i:54000;s:1:"i";s:0:"";}i:15;a:3:{s:1:"s";i:54000;s:1:"e";i:55200;s:1:"i";s:0:"";}i:16;a:3:{s:1:"s";i:55200;s:1:"e";i:56400;s:1:"i";s:0:"";}i:17;a:3:{s:1:"s";i:56400;s:1:"e";i:57600;s:1:"i";s:0:"";}i:18;a:3:{s:1:"s";i:57600;s:1:"e";i:58800;s:1:"i";s:0:"";}i:19;a:3:{s:1:"s";i:58800;s:1:"e";i:60000;s:1:"i";s:0:"";}i:20;a:3:{s:1:"s";i:60000;s:1:"e";i:61200;s:1:"i";s:0:"";}i:21;a:3:{s:1:"s";i:61200;s:1:"e";i:62400;s:1:"i";s:0:"";}i:22;a:3:{s:1:"s";i:62400;s:1:"e";i:63600;s:1:"i";s:0:"";}i:23;a:3:{s:1:"s";i:63600;s:1:"e";i:64800;s:1:"i";s:0:"";}i:24;a:3:{s:1:"s";i:64800;s:1:"e";i:66000;s:1:"i";s:0:"";}i:25;a:3:{s:1:"s";i:66000;s:1:"e";i:67200;s:1:"i";s:0:"";}i:26;a:3:{s:1:"s";i:67200;s:1:"e";i:68400;s:1:"i";s:0:"";}i:27;a:3:{s:1:"s";i:68400;s:1:"e";i:69600;s:1:"i";s:0:"";}i:28;a:3:{s:1:"s";i:69600;s:1:"e";i:70800;s:1:"i";s:0:"";}i:29;a:3:{s:1:"s";i:70800;s:1:"e";i:72000;s:1:"i";s:0:"";}i:30;a:3:{s:1:"s";i:72000;s:1:"e";i:73200;s:1:"i";s:0:"";}i:31;a:3:{s:1:"s";i:73200;s:1:"e";i:74400;s:1:"i";s:0:"";}i:32;a:3:{s:1:"s";i:74400;s:1:"e";i:75600;s:1:"i";s:0:"";}i:33;a:3:{s:1:"s";i:75600;s:1:"e";i:76800;s:1:"i";s:0:"";}i:34;a:3:{s:1:"s";i:76800;s:1:"e";i:78000;s:1:"i";s:0:"";}i:35;a:3:{s:1:"s";i:78000;s:1:"e";i:79200;s:1:"i";s:0:"";}i:36;a:3:{s:1:"s";i:79200;s:1:"e";i:80400;s:1:"i";s:0:"";}i:37;a:3:{s:1:"s";i:80400;s:1:"e";i:81600;s:1:"i";s:0:"";}i:38;a:3:{s:1:"s";i:81600;s:1:"e";i:82800;s:1:"i";s:0:"";}i:39;a:3:{s:1:"s";i:82800;s:1:"e";i:84000;s:1:"i";s:0:"";}i:40;a:3:{s:1:"s";i:84000;s:1:"e";i:85200;s:1:"i";s:0:"";}}', 0, 0, 0, 0),
(103, 1, 0, 0, '', 1, 0, 0, 0, 0, 0, 10, 'a:10:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;}', 1, '59分钟', 'a:41:{i:0;a:3:{s:1:"s";i:36000;s:1:"e";i:37200;s:1:"i";s:0:"";}i:1;a:3:{s:1:"s";i:37200;s:1:"e";i:38400;s:1:"i";s:0:"";}i:2;a:3:{s:1:"s";i:38400;s:1:"e";i:39600;s:1:"i";s:0:"";}i:3;a:3:{s:1:"s";i:39600;s:1:"e";i:40800;s:1:"i";s:0:"";}i:4;a:3:{s:1:"s";i:40800;s:1:"e";i:42000;s:1:"i";s:0:"";}i:5;a:3:{s:1:"s";i:42000;s:1:"e";i:43200;s:1:"i";s:0:"";}i:6;a:3:{s:1:"s";i:43200;s:1:"e";i:44400;s:1:"i";s:0:"";}i:7;a:3:{s:1:"s";i:44400;s:1:"e";i:45600;s:1:"i";s:0:"";}i:8;a:3:{s:1:"s";i:45600;s:1:"e";i:46800;s:1:"i";s:0:"";}i:9;a:3:{s:1:"s";i:46800;s:1:"e";i:48000;s:1:"i";s:0:"";}i:10;a:3:{s:1:"s";i:48000;s:1:"e";i:49200;s:1:"i";s:0:"";}i:11;a:3:{s:1:"s";i:49200;s:1:"e";i:50400;s:1:"i";s:0:"";}i:12;a:3:{s:1:"s";i:50400;s:1:"e";i:51600;s:1:"i";s:0:"";}i:13;a:3:{s:1:"s";i:51600;s:1:"e";i:52800;s:1:"i";s:0:"";}i:14;a:3:{s:1:"s";i:52800;s:1:"e";i:54000;s:1:"i";s:0:"";}i:15;a:3:{s:1:"s";i:54000;s:1:"e";i:55200;s:1:"i";s:0:"";}i:16;a:3:{s:1:"s";i:55200;s:1:"e";i:56400;s:1:"i";s:0:"";}i:17;a:3:{s:1:"s";i:56400;s:1:"e";i:57600;s:1:"i";s:0:"";}i:18;a:3:{s:1:"s";i:57600;s:1:"e";i:58800;s:1:"i";s:0:"";}i:19;a:3:{s:1:"s";i:58800;s:1:"e";i:60000;s:1:"i";s:0:"";}i:20;a:3:{s:1:"s";i:60000;s:1:"e";i:61200;s:1:"i";s:0:"";}i:21;a:3:{s:1:"s";i:61200;s:1:"e";i:62400;s:1:"i";s:0:"";}i:22;a:3:{s:1:"s";i:62400;s:1:"e";i:63600;s:1:"i";s:0:"";}i:23;a:3:{s:1:"s";i:63600;s:1:"e";i:64800;s:1:"i";s:0:"";}i:24;a:3:{s:1:"s";i:64800;s:1:"e";i:66000;s:1:"i";s:0:"";}i:25;a:3:{s:1:"s";i:66000;s:1:"e";i:67200;s:1:"i";s:0:"";}i:26;a:3:{s:1:"s";i:67200;s:1:"e";i:68400;s:1:"i";s:0:"";}i:27;a:3:{s:1:"s";i:68400;s:1:"e";i:69600;s:1:"i";s:0:"";}i:28;a:3:{s:1:"s";i:69600;s:1:"e";i:70800;s:1:"i";s:0:"";}i:29;a:3:{s:1:"s";i:70800;s:1:"e";i:72000;s:1:"i";s:0:"";}i:30;a:3:{s:1:"s";i:72000;s:1:"e";i:73200;s:1:"i";s:0:"";}i:31;a:3:{s:1:"s";i:73200;s:1:"e";i:74400;s:1:"i";s:0:"";}i:32;a:3:{s:1:"s";i:74400;s:1:"e";i:75600;s:1:"i";s:0:"";}i:33;a:3:{s:1:"s";i:75600;s:1:"e";i:76800;s:1:"i";s:0:"";}i:34;a:3:{s:1:"s";i:76800;s:1:"e";i:78000;s:1:"i";s:0:"";}i:35;a:3:{s:1:"s";i:78000;s:1:"e";i:79200;s:1:"i";s:0:"";}i:36;a:3:{s:1:"s";i:79200;s:1:"e";i:80400;s:1:"i";s:0:"";}i:37;a:3:{s:1:"s";i:80400;s:1:"e";i:81600;s:1:"i";s:0:"";}i:38;a:3:{s:1:"s";i:81600;s:1:"e";i:82800;s:1:"i";s:0:"";}i:39;a:3:{s:1:"s";i:82800;s:1:"e";i:84000;s:1:"i";s:0:"";}i:40;a:3:{s:1:"s";i:84000;s:1:"e";i:85200;s:1:"i";s:0:"";}}', 0, 0, 0, 0),
(180, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(182, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shopsearch`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shopsearch` (
  `shopid` int(20) NOT NULL,
  `parent_id` int(20) NOT NULL default '0',
  `second_id` int(20) NOT NULL default '0',
  `cattype` tinyint(1) NOT NULL default '0' COMMENT '1外卖2订台'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_shopsearch`
--

INSERT INTO `xiaozu_shopsearch` (`shopid`, `parent_id`, `second_id`, `cattype`) VALUES
(103, 51, 73, 0),
(4, 51, 72, 0),
(103, 114, 194, 1),
(4, 51, 75, 0),
(4, 51, 112, 0),
(4, 51, 199, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shoptype`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shoptype` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL COMMENT '分类名',
  `type` varchar(100) default NULL COMMENT 'checkbox多选，radio单选，img图片，input输入框',
  `parent_id` int(20) NOT NULL default '0' COMMENT '0表示导航明，1值',
  `cattype` int(1) NOT NULL default '1' COMMENT '1外卖2订台3其他',
  `is_search` int(1) NOT NULL default '0' COMMENT '0不是搜索关键字1搜索关键字',
  `is_main` int(1) NOT NULL default '0' COMMENT '是否展示在店铺列表 0否1是',
  `is_admin` int(1) NOT NULL default '0' COMMENT '设置类型0店铺1后台',
  `instro` varchar(255) default NULL COMMENT '简单介绍',
  `orderid` int(10) NOT NULL default '0' COMMENT '排序ID',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=205 ;

--
-- 导出表中的数据 `xiaozu_shoptype`
--

INSERT INTO `xiaozu_shoptype` (`id`, `name`, `type`, `parent_id`, `cattype`, `is_search`, `is_main`, `is_admin`, `instro`, `orderid`) VALUES
(51, '分类', 'checkbox', 0, 0, 1, 1, 0, '', 6),
(76, '2', '0', 67, 0, 0, 0, 0, '', 0),
(75, '美食外卖', '0', 51, 0, 0, 0, 0, '', 0),
(114, '超市分类', 'checkbox', 0, 1, 1, 1, 0, '', 0),
(58, '60分钟', '0', 57, 0, 0, 0, 0, '', 0),
(59, '店铺图标', 'img', 0, 0, 0, 1, 0, '', 0),
(148, '15', '0', 100, 0, 0, 0, 0, '', 0),
(199, '土豪馆', '0', 51, 0, 0, 0, 0, '', 0),
(68, '1', '0', 67, 0, 0, 0, 0, '', 0),
(150, '44', '0', 149, 0, 0, 0, 0, '', 0),
(73, '送药上门', '0', 51, 0, 0, 0, 0, '', 0),
(72, '网站专送', '0', 51, 0, 0, 0, 0, '', 0),
(84, '1', '0', 83, 0, 0, 0, 0, '', 0),
(85, '2', '0', 83, 0, 0, 0, 0, '', 0),
(90, 'a', '0', 89, 0, 0, 0, 0, '', 0),
(91, 'b', '0', 89, 0, 0, 0, 0, '', 0),
(92, 'c', '0', 89, 0, 0, 0, 0, '', 0),
(93, 'd', '0', 89, 0, 0, 0, 0, '', 0),
(95, '杂货铺', '0', 94, 1, 0, 0, 0, '', 0),
(96, '水果店', '0', 94, 1, 0, 0, 0, '', 0),
(146, '12', '0', 100, 0, 0, 0, 0, '', 0),
(102, '干洗店', '0', 94, 1, 0, 0, 0, '', 0),
(104, '大型综合生活超市', '0', 94, 1, 0, 0, 0, '', 0),
(105, '便利店', '0', 94, 1, 0, 0, 0, '', 0),
(106, '家政', '0', 94, 1, 0, 0, 0, '', 0),
(107, '维修点', '0', 94, 1, 0, 0, 0, '', 0),
(108, '保洁', '0', 94, 1, 0, 0, 0, '', 0),
(109, '小时工', '0', 94, 1, 0, 0, 0, '', 0),
(110, '鲜花蛋糕', '0', 51, 0, 0, 0, 0, '', 0),
(111, '水果蔬菜', '0', 51, 0, 0, 0, 0, '', 0),
(112, '甜点饮品', '0', 51, 0, 0, 0, 0, '', 0),
(116, '杂货店', '0', 114, 1, 0, 0, 0, '', 0),
(117, '综合商超', '0', 114, 1, 0, 0, 0, '', 0),
(121, '优惠活动', '0', 120, 0, 0, 0, 0, '', 0),
(122, '一天一', '0', 120, 0, 0, 0, 0, '', 0),
(124, '30', '0', 123, 0, 0, 0, 0, '', 0),
(147, '13', '0', 100, 0, 0, 0, 0, '', 0),
(128, '自取', '0', 127, 0, 0, 0, 0, '', 0),
(129, '到店吃', '0', 127, 0, 0, 0, 0, '', 0),
(141, '五金店', '0', 114, 1, 0, 0, 0, '', 0),
(131, '自取', '0', 130, 0, 0, 0, 0, '', 0),
(132, '外卖', '0', 130, 0, 0, 0, 0, '', 0),
(151, '55', '0', 149, 0, 0, 0, 0, '', 0),
(143, '客房', '0', 142, 0, 0, 0, 0, '', 0),
(144, '餐厅', '0', 142, 0, 0, 0, 0, '', 0),
(197, '/upload/goods/20160110163203632.png', '0', 59, 0, 0, 0, 0, '超时赔付', 0),
(196, '/upload/goods/20160110163208191.png', '0', 59, 0, 0, 0, 0, '可用优惠卷', 0),
(195, '/upload/goods/20160110163214689.png', '0', 59, 0, 0, 0, 0, '满减', 0),
(159, '鮮花', '0', 114, 1, 0, 0, 0, '', 0),
(161, '家政', '0', 160, 0, 0, 0, 0, '', 0),
(162, '美容', '0', 160, 0, 0, 0, 0, '', 0),
(163, '美体', '0', 160, 0, 0, 0, 0, '', 0),
(164, '洗车', '0', 160, 0, 0, 0, 0, '', 0),
(166, '家政', '0', 165, 1, 0, 0, 0, '', 0),
(167, '美体', '0', 165, 1, 0, 0, 0, '', 0),
(168, '美容', '0', 165, 1, 0, 0, 0, '', 0),
(169, '上门洗车', '0', 165, 1, 0, 0, 0, '', 0),
(170, '上门厨师', '0', 165, 1, 0, 0, 0, '', 0),
(172, '跑腿', '0', 165, 1, 0, 0, 0, '', 0),
(194, '酒店', '0', 114, 1, 0, 0, 0, '', 0),
(174, '董子巷', '0', 173, 0, 0, 0, 0, '', 0),
(175, '高地世纪城', '0', 173, 0, 0, 0, 0, '', 0),
(176, '傻吃街', '0', 173, 0, 0, 0, 0, '', 0),
(177, '东风路', '0', 173, 0, 0, 0, 0, '', 0),
(178, '通信一条街', '0', 173, 0, 0, 0, 0, '', 0),
(179, '百货大楼商圈', '0', 173, 0, 0, 0, 0, '', 0),
(180, '东地路', '0', 173, 0, 0, 0, 0, '', 0),
(181, '宴宾楼', '0', 173, 0, 0, 0, 0, '', 0),
(182, '服装城', '0', 173, 0, 0, 0, 0, '', 0),
(184, '慢城', '0', 183, 1, 0, 0, 0, '', 0),
(185, '华一', '0', 183, 1, 0, 0, 0, '', 0),
(186, '扒鸡美食城', '0', 183, 1, 0, 0, 0, '', 0),
(187, '勿忘我', '0', 183, 1, 0, 0, 0, '', 0),
(188, '捷安特', '0', 183, 1, 0, 0, 0, '', 0),
(189, '海尔', '0', 183, 1, 0, 0, 0, '', 0),
(190, '梦特娇', '0', 183, 1, 0, 0, 0, '', 0),
(192, '123', '0', 191, 0, 0, 0, 0, '', 0),
(193, '456', '0', 191, 0, 0, 0, 0, '', 0),
(198, '/upload/goods/20160110163220195.png', '0', 59, 0, 0, 0, 0, '新店开张', 0),
(200, '外卖送达时间', 'input', 0, 0, 0, 1, 0, '59分钟送达', 1),
(202, '60分钟', '0', 200, 0, 0, 0, 0, '', 0),
(203, '超市平均送达时间', 'input', 0, 1, 0, 1, 0, '59分钟送达', 2),
(204, '59分钟送达', '0', 203, 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_shopwait`
--

CREATE TABLE IF NOT EXISTS `xiaozu_shopwait` (
  `shopid` int(20) NOT NULL,
  `personcost` decimal(5,0) NOT NULL default '0' COMMENT '人均消费',
  `befortime` int(2) NOT NULL default '14' COMMENT '提前预定天数',
  `maxperson` int(3) NOT NULL default '10' COMMENT '最大消费人数',
  `position` text COMMENT '使用,分割',
  `is_hot` int(1) NOT NULL default '0' COMMENT '热卖',
  `is_com` int(1) NOT NULL default '0' COMMENT '推荐',
  `is_new` int(1) NOT NULL COMMENT '新店',
  `timesplit` int(11) NOT NULL default '30' COMMENT '时间间隔',
  `limitcost` int(5) default '0' COMMENT '起订价',
  UNIQUE KEY `shopid` (`shopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_shopwait`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_single`
--

CREATE TABLE IF NOT EXISTS `xiaozu_single` (
  `id` int(20) NOT NULL auto_increment,
  `content` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `addtime` int(11) NOT NULL,
  `seo_key` varchar(255) default NULL,
  `seo_content` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `xiaozu_single`
--

INSERT INTO `xiaozu_single` (`id`, `content`, `title`, `code`, `addtime`, `seo_key`, `seo_content`) VALUES
(3, '<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">选择您所在的区域→选择您所在的商圈→选择您所在的位置（您所在周边50米内的标志性建筑都可以点击进入订餐）→选择您喜欢的餐厅→选择您喜欢的美食→下订单→餐到付款&nbsp;</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">选择您所在的区域</h5>\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<img alt="选择您所在的区域" src="http://www.haochi.me/images/how01.jpg" style="margin:0px;padding:0px;height:auto;max-width:100%;vertical-align:middle;border:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" /><span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">&nbsp;</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">选择您所在的商圈</h5>\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<img alt="选择您所在的商圈" src="http://www.haochi.me/images/how02.jpg" style="margin:0px;padding:0px;height:auto;max-width:100%;vertical-align:middle;border:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" /><span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">&nbsp;</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">选择您所在的位置（您所在周边50米内的标志性建筑都可以点击进入订餐）</h5>\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<img alt="选择您所在的位置" src="http://www.haochi.me/images/how03.jpg" style="margin:0px;padding:0px;height:auto;max-width:100%;vertical-align:middle;border:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" /><span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">&nbsp;</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">选择您喜欢的餐厅</h5>\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<img alt="选择您喜欢的餐厅" src="http://www.haochi.me/images/how04.jpg" style="margin:0px;padding:0px;height:auto;max-width:100%;vertical-align:middle;border:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" /><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">选择您喜欢的美食</h5>\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<img alt="选择您喜欢的美食" src="http://www.haochi.me/images/how05.jpg" style="margin:0px;padding:0px;height:auto;max-width:100%;vertical-align:middle;border:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" /><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">下订单</h5>\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<img alt="下订单" src="http://www.haochi.me/images/how06.jpg" style="margin:0px;padding:0px;height:auto;max-width:100%;vertical-align:middle;border:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" /><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">餐到付款</h5>', '购物流程', 'how', 1378224000, '', ''),
(2, '<h3><img src="/upload/goods/20140901100220921.png" alt="" />餐厅加盟：</h3>\r\r\n当前，互联网普及应用速度前所未有，网络空间对现实生活的影响日益广泛，并不断加深，越来越多的传统行业"触网"，拥有巨大发展潜力的餐饮业也不例外。 <br />\r\r\n外卖人是领先的外卖订餐网络平台，技术实力强，营销平台大，品牌效应广。通过好吃网这个大平台的强力推广，可以让您的餐馆快速建立起自己的品牌形象和市场竞争力，源源不断的为您带来大量的顾客和收入，顾客和收入才是王道。 <br />\r\r\n<h3>餐厅加盟要求：</h3>\r\r\n外卖人为每一家加盟的餐厅开设网店，负责网店的设计和架构。餐厅需要正在经营的餐厅，手续齐全，符合相关卫生标准，信息真实可靠，这样才能为用户提供可靠的外卖服务。外卖人的加盟餐厅通过外卖人平台的强势有效的推广，迅速建立良好的品牌形象和市场知名度，并形成来自于外卖人订餐平台的销售收入的迅速增长。在外卖人的帮助下，优秀的餐饮外卖企业能够迅速做强做大。 <br />\r\r\n<h3>网店开设流程：</h3>\r\r\n<h4>方式一：电话申请开网店</h4>\r\r\n<h5>第一步：致电400-0181-567申请开设网店</h5>\r\r\n致电转加盟餐厅，提供您的餐厅基本信息；<h5>第二步：审核</h5>\r\r\n外卖人根据您提供的餐厅基本信息，安排相关工作人员去餐厅进行核查；<h5>第三步：录入菜单信息</h5>\r\r\n通过审核后，相关工作人员会联系您录入餐厅菜单。录入菜单时可以添加图片和详细介绍。及时更新菜单信息和生动的介绍有助于吸引客户；<h5>第三步： 管理订单</h5>\r\r\n使用外卖人网络餐饮管理系统处理订单，减少人工劳动，及时高效，为您店铺的发展扫清障碍。<br />\r\r\n<br />\r\r\n<h5>方式二：网站自助申请开网店</h5>\r\r\n<h5>第一步： 申请开设网店</h5>\r\r\n填写餐厅详细信息，申请加入外卖人订餐平台。信息需真实有效，通过审核率越高；<h5>第二步： 录入菜单信息</h5>\r\r\n通过审核后，相关工作人员会联系您录入餐厅菜单。录入菜单时可以添加图片和详细介绍。及时更新菜单信息和生动的介绍有助于吸引客户； <h5>第三步： 管理订单</h5>\r\r\n使用外卖人网络餐饮管理系统处理订单，减少人工劳动，及时高效，为您店铺的发展扫清障碍。', '我要开店', 'open', 1377446400, '', ''),
(5, '<div style="text-align:center;padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;">\r\n<h2 style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:inherit;font-size:30px;padding-top:0px;text-rendering:optimizelegibility;">尊敬的用户，欢迎阅读”外卖人”服务协议</h2>\r\n</div>\r\n<h3 style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;">前言：</h3>\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">本服务协议双方分别为郑州光合科技有限公司旗下网站“外卖人”（以下简称“外卖人”）与“外卖人”网站用户，本服务协议具有合同效力。用户必须为具备完全民事行为能力的自然人，或者是具有合法经营资格的实体组织。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">用户确认本服务协议后，本服务协议即在用户和“外卖人”之间产生法律效力。请用户务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向“外卖人”咨询。&nbsp;</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">本服务协议内容包括“外卖人”已经发布的或将来可能发布的各类规则。所有规则为协议不可分割的一部分，与协议正文具有同等法律效力。用户在使用“外卖人”提供的各项服务的同时，承诺接受并遵守各项相关规则的规定。无论用户事实上是否在注册之前认真阅读了本服务协议，默认同意此协议并按照“外卖人”注册程序成功注册为用户，用户的行为仍然表示其同意并签署了本服务协议。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<h3 style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;">双方权利与义务：</h3>\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">用户登录“外卖人”网站，并按要求填写相关信息并确认同意履行相关用户协议的过程。用户因进行交易，获取订餐、订外卖的有偿服务或接触“外卖人”网站服务器而发生的所有应纳税赋，以及一切硬件、软件、服务及其他方面的费用均由用户负责支付。“外卖人”网站仅作为订餐、订外卖的交易地点。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">用户有义务在注册时提供自己的真实资料，并保证诸如电子邮件地址、联系电话、联系地址等内容的有效性及安全性，保证“外卖人”及其他用户可以通过上述联系方式与自己进行联系。同时，用户也有义务在相关资料实际变更时及时更新有关注册资料。用户保证不以他人资料在“外卖人”网站进行注册或认证。若用户使用虚假电话、姓名、地址或冒用他人信息使用“外卖人”订餐服务，“外卖人”将做出相应处罚或屏蔽地址的处理；对“外卖人”造成经济损失的，“外卖人”将保留追究法律责任的权利；用户不应在“外卖人”网站上订餐、订外卖交易平台上恶意评价其他用户，或采取不正当手段提高自身的信用度或降低其他用户的信用度。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">对于用户在“外卖人”网站上订餐、订外卖交易平台上的不当行为或其它任何“外卖人”认为应当终止服务的情况，“外卖人”有权随时做出删除相关信息、终止服务提供等处理，而无须征得用户的同意。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">用户在“外卖人”网站上订餐、订外卖交易过程中如与其他用户因交易产生纠纷，请求“外卖人”从中予以调处，经“外卖人”审核后，“外卖人”有权通过电话或电子邮件联系向纠纷双方了解情况，并将所了解的情况通过电话或电子邮件互相通知对方；</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">“外卖人”有权对用户的注册资料及交易行为进行查阅，发现注册资料或订餐、订外卖交易行为中存在任何问题或怀疑，均有权向用户发出询问及要求改正的通知或者直接做出删除等处理；</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">“外卖人”有义务在现有技术上维护整个网站上订餐、订外卖交易平台的正常运行，并努力提升和改进技术，使用户网站上订餐、订外卖交易活动得以顺利进行。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">对用户在注册使用“外卖人”网站上订餐、订外卖交易平台中所遇到的与交易或注册有关的问题及反映的情况，“外卖人”应及时做出回复。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">用户因在“外卖人”网站上订餐、订外卖交易与其他用户产生诉讼的，用户通过司法部门或行政部门依照法定程序要求“外卖人”提供相关资料，外卖人应积极配合并提供有关资料；</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<h3 style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;">安全：</h3>\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">外卖人账户均有密码保护功能，请妥善保管用户的账户及密码信息；</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">在使用“外卖人”服务进行网站上订餐、订外卖交易时，用户不可避免的要向订餐、订外卖交易对方或潜在的订餐、订外卖交易对方提供自己的个人信息，如联络方式或送餐地址。请用户妥善保护自己的个人信息，仅在必要的情形下向他人提供；</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<span style="line-height:20px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;">如果用户发现自己的个人信息泄密，尤其是“外卖人”账户或及密码发生泄露，请用户立即联络“外卖人”客服，以便“外卖人”采取相应措施。</span><br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<br style="padding-bottom:0px;line-height:20px;margin:0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;" />\r\n<h3 style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;">“外卖人”保留对本协议做出不定时修改的权利</h3>\r\n<p style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;">&nbsp;</p>\r\n<p style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;">&nbsp;</p>\r\n<p style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;">&nbsp;</p>', '服务协议', 'xieyi', 1378224000, '', ''),
(4, '<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">不登录可以使用吗？</h5>\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">当然可以，只要您的cookie不被清除的情况下网站的浏览记录都有保存。我们建议您用30秒的时间免费注册来享受更多服务。</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">订餐之后如何支付餐费？</h5>\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">目前好吃网只支持餐到付款的方式。</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">好吃网提供配送服务吗？</h5>\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">好吃网不提供配送服务。</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">好吃网为您展现的所有餐厅都有自己的配送服务，只要订单额达到餐厅要求的最低起送价，送餐地址在配送范围内，配送均免费。</span><h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">实际送餐时间有差距？</h5>\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">好吃网上显示的送餐所需时间是根据最近30天用户反馈的餐厅送餐所需时间的平均值。这个送餐所需时间只是作为用户订餐时的参考，遇到恶劣天气、餐厅人员配备不够等原因，送餐时间会偏长。</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<h5 style="margin:10px 0px;padding:0px;font-family:宋体, 微软雅黑;line-height:20px;color:#333333;text-rendering:optimizelegibility;font-size:14px;">积分如何计算？</h5>\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">好吃网的注册会员均可参加积分换礼活动。</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">1.当您注册成为好吃网会员将获得10点积分；</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">2.成功激活邮箱您将会获得10点积分；</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">3.每次您订餐成功后都将获得订餐额 ×2 的积分；</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">4.每次您主动点评您所订购的美食都将会获得5点积分。</span>', '常见问题', 'problem', 1378252800, '', ''),
(6, '<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">客服热线：400-0181-567</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">联系我们：0371-66035770&nbsp;</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<span style="color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;">工作时间：09:00-21:00&nbsp;</span><br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br style="margin:0px;padding:0px;color:#333333;font-family:宋体, 微软雅黑;font-size:14px;line-height:20px;" />\r\r\n<br />', '联系我们', 'contact', 1378224000, '', ''),
(7, '<h3 style="padding-bottom:0px;line-height:40px;margin:10px 0px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:24px;padding-top:0px;text-rendering:optimizelegibility;"><span style="font-weight:normal;">外卖人订餐平台优势：</span></h3>\r\n<ul style="padding-bottom:0px;line-height:20px;list-style-type:none;margin:0px 0px 10px 25px;padding-left:0px;padding-right:0px;font-family:宋体, 微软雅黑;color:#333333;font-size:14px;padding-top:0px;">\r\n\r\n<li style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">1.所展现的商家具有正规开店手续、卫生合格；</li>\r\n<li style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">2.网上订餐，看图下单更方便；</li>\r\n<li style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">3.所展现的菜品丰富，各种风味应有尽有；</li>\r\n<li style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">4.网上订餐，并发操作，为商家与用户节省时间；</li>\r\n<li style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">5.根据用户位置，展现送餐商家，避免盲目订餐；</li>\r\n<li style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">6.网络与传统广告相结合，使商户获得多途径的展现；</li>\r\n<li style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">7.通过多种方法帮助店家减员增效、提高送餐准时率，获得更好的顾客满意度等。</li>\r\n</ul>', '关于我们', 'about', 1378224000, '', ''),
(14, '<span>1、</span><b>积分是指成功购物即可累计金额获得的积分。消费1元积1分。</b><br />\r\n	<span>2、</span><b>成功购物是指：活动期间内在易趣网创建并完成交易——即买家已确认收货、安付通交易状态为“交易成功”的交易。</b><br />\r\n \r\n	<span>3、</span><b>不做累计的部分包括但不仅限于：运费，购物券金额。</b><br />\r\n	<span>4、</span><b>无论该交易属于一口价、拍卖，均可累计。</b><br />\r\n	<span>5、</span><b>单笔交易，最多可获得2000积分，多余积分作废处理。</b><br />\r\n \r\n	<span>6、</span><b>消费金额不足1元的零头部分不计入积分，积分按消费金额逐笔折算累加。</b><br />\r\n	<span>7、</span><b>积分可在积分有礼专区参加积分活动。按活动要求，参加1次扣除相应积分。</b><br />\r\n \r\n	<span>8、</span><b>现阶段活动包括积分兑换，积分抽奖。</b>', '积分规则', 'jfgz', 1431446400, '积分规则', '积分规则'),
(15, '这里是跑腿使用说明，可以在后台内容管理-&gt;单页列表处编辑修改！！！', '跑腿使用说明', 'ptIntroduc', 1437408000, '跑腿使用说明', '跑腿使用说明'),
(16, '<div>\r\n	<div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>购买商品如何支付？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>您可通过微信或支付宝支付，微信公众账号暂时仅支持微信支付，不便之处请谅解。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>购买商品多久可以送达？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>购买商品最快可在下单支付后59分钟内极速送达。特殊情况及预约商品除外。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>购物多少起免费配送？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>单笔订单满59元免费配送，不满59元将收取5元的配送费（促销期间满39元免费配送）。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>什么是多商家采购费？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>单笔订单在三家及以上商家选购的统一收取5元的多商家采购费。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>为什么不能跨区域购买？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>各区域服务社提供的商品有一定程度的差异，为保证下午茶产品的新鲜和极致体验，暂不提供跨区域商品的配送。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>如何联系？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>服务热线：<a href="tel:4000181567">400-0181-567</a>（9:00-20:00），还可通过微信公众账号对话框与我们联系。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>商品缺货如何解决？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>如果您所购买的商品暂时缺货，我们的小管家或客服人员将会第一时间与您取得联系，您可以选择换货或退款。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>如何解决商品质量问题？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>小管家送货上门时请当面检验货品，如发现质量问题可直接退换货，同时可致电客服解决。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>如何退款？</p>\r\n   	</div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>对于退款申请，后台会在24小时内进行处理：凡订单中使用的抵价券将自动退还至您的账户中；使用微信、支付宝等第三方支付平台的款项将在7日内退回至您的支付账户。如在退款遇到任何问题，可致电<a href="tel:4000181567">400-0181-567</a>查询。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>结邻下午茶配送时间如何？</p>\r\n    </div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>为了极致的用户体验，结邻下午茶分为59分钟起速达和次日达两种类型。标注有“预”字的商品为次日达。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>结邻自营半成品菜配送时间如何？</p>\r\n    </div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>由于结邻半成品菜是中央厨房制，目前只接受预定并次日15:00之后送达。</p>\r\n    </div>\r\n    <div class="question-item">\r\n    	<span class="q-icon">Q</span>         <p>为什么有时候我选购的超市和下午茶商品默认配送时间为次日？</p>\r\n    </div>\r\n    <div class="answer-item">\r\n    	<span class="a-icon">A</span>         <p>因为您选择的商品里可能有默认配送时间为次日达的预约自营下午茶或半成品菜等。小管家建议您可分成两单。</p>\r\n    </div>\r\n</div>', '新手指南', 'neuserhelp', 1437408000, '新手指南', '新手指南');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_siteset`
--

CREATE TABLE IF NOT EXISTS `xiaozu_siteset` (
  `id` int(1) NOT NULL,
  `instro` text NOT NULL,
  `gonggao` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_siteset`
--

INSERT INTO `xiaozu_siteset` (`id`, `instro`, `gonggao`, `time`) VALUES
(1, 'fds', 'dfs', 111);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_specialpage`
--

CREATE TABLE IF NOT EXISTS `xiaozu_specialpage` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `indeximg` varchar(255) NOT NULL COMMENT '首页显示图片	',
  `imgwidth` varchar(50) NOT NULL default '50%' COMMENT '首页显示图片宽度',
  `imgheight` varchar(50) NOT NULL default '62' COMMENT '首页显示图片高度',
  `specialimg` varchar(255) NOT NULL COMMENT '首页显示图片	',
  `color` varchar(20) NOT NULL COMMENT '专题页背景主色调',
  `showtype` int(1) NOT NULL default '0' COMMENT '针对的是商品还是店铺  默认0为店铺 1为商品',
  `is_custom` int(1) NOT NULL default '1' COMMENT '是否是自定义	默认为1固定的  0为自定义的',
  `cx_type` int(1) NOT NULL COMMENT '如果是商品1为折扣  如果是店铺 1为推荐店铺  2为免减商家 3为打折商家 4免配送费',
  `listids` text NOT NULL COMMENT '如果是自定义的话 所对应的店铺id集或者商品id集',
  `ruleintro` text COMMENT '规则说明',
  `is_show` int(1) NOT NULL default '1' COMMENT '是否展示 默认1展示 0不展示',
  `orderid` int(11) NOT NULL COMMENT '排序',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 导出表中的数据 `xiaozu_specialpage`
--

INSERT INTO `xiaozu_specialpage` (`id`, `name`, `indeximg`, `imgwidth`, `imgheight`, `specialimg`, `color`, `showtype`, `is_custom`, `cx_type`, `listids`, `ruleintro`, `is_show`, `orderid`, `addtime`) VALUES
(1, '热销菜品', '/upload/goods/20160109181816384.png', '50%', '62', '/upload/goods/20160109190519260.png', '#2e170e', 1, 0, 0, '2,76,36,875,868,963,874,872,1657,1668', '<div class="foodiscorule">\n   <ul>\n    <li>1. 代金券新老用户分享</li>\n    <li>2. 代金券不可与其他优惠券叠加使用，首单支付代金券不可叠加</li>\n    <li>3. 仅限在外卖人最新客户端下单且选择在线支付时使用</li>\n    <li>4. 使用代金券下单的手机号，必须为抢代金券是手机号码</li>\n    <li>5. 最终解释权归外卖人所有</li>\n   </ul>\n  </div>', 1, 5, 1452337525),
(3, '立减优惠', '/upload/goods/20160109181759282.png', '50%', '62', '/upload/goods/20160109164849274.png', '#2e170e', 0, 1, 2, '15', '', 1, 6, 1452337662),
(4, '抢购专区', '/upload/goods/20160109172703484.png', '50%', '62', '/upload/goods/20160109172718119.png', 'green', 1, 1, 1, '15,16,13', '', 1, 7, 1452337655),
(5, '免费配送', '/upload/goods/20160109170443956.png', '50%', '62', '/upload/goods/20160109190637543.png', 'yellow', 0, 1, 4, '228,164,165,3101', '', 1, 8, 1452337648),
(6, '外卖订餐', '/upload/goods/20160109183935808.png', '50%', '62', '', '#fff', 0, 1, 6, '', '', 0, 1, 1452354399),
(7, '在线超市', '/upload/goods/20160109183951820.png', '50%', '62', '', '#fff', 0, 1, 7, '', '', 0, 2, 1452354408),
(8, '预定点菜', '/upload/goods/20160109184001957.png', '50%', '62', '', '#fff', 0, 1, 8, '', '', 0, 3, 1452354415),
(9, '跑腿服务', '/upload/goods/20160109172403134.png', '50%', '62', '', '#fff', 0, 1, 9, '', '', 0, 4, 1452354421);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_task`
--

CREATE TABLE IF NOT EXISTS `xiaozu_task` (
  `id` int(20) NOT NULL auto_increment,
  `taskname` varchar(100) NOT NULL,
  `tasktype` int(1) NOT NULL,
  `taskusertype` int(1) NOT NULL,
  `tasklimit` text NOT NULL,
  `start_id` int(20) NOT NULL,
  `end_id` int(20) NOT NULL,
  `content` text NOT NULL,
  `status` int(1) NOT NULL,
  `othercontent` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_task`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_top`
--

CREATE TABLE IF NOT EXISTS `xiaozu_top` (
  `id` int(20) NOT NULL auto_increment,
  `typeid` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `instro` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_top`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_topatt`
--

CREATE TABLE IF NOT EXISTS `xiaozu_topatt` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `orderid` int(5) default '99',
  `ids` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `xiaozu_topatt`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_usrlimit`
--

CREATE TABLE IF NOT EXISTS `xiaozu_usrlimit` (
  `name` varchar(100) NOT NULL COMMENT '操作名称',
  `cnname` varchar(200) NOT NULL,
  `moduleid` int(20) NOT NULL,
  `group` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_usrlimit`
--

INSERT INTO `xiaozu_usrlimit` (`name`, `cnname`, `moduleid`, `group`) VALUES
('index', '模块默认页', 2, 3),
('savesendtask', '保存群发任务', 16, 1),
('jifenlog', '会员积分记录', 2, 5),
('base', '会员基本信息', 2, 5),
('index', '模块默认页', 2, 5),
('saveregester', '提交注册', 2, 5),
('saveresetpwd', '会员保存重置换密码', 2, 5),
('resetpwd', '重置密码', 2, 5),
('login', '登陆', 2, 5),
('shoplogin', '店铺登陆页', 2, 2),
('shoploginin', '店铺登陆数据处理', 2, 2),
('adminmodiy', '管理员自身密码', 2, 1),
('rebkdata', '还原数据', 17, 1),
('savesqldata', 'ajax保存数据', 17, 1),
('basedata', '备份数据', 17, 1),
('savenewstype', '保存新闻分类', 7, 1),
('memberlist', '会员列表', 2, 4),
('addmember', '添加会员', 2, 4),
('savemember', '保存会员', 2, 4),
('delmember', '删除会员', 2, 4),
('delgift', '删除礼品', 8, 1),
('savemaplocation', '后台保存地图位置', 10, 1),
('index', '网站留言首页', 11, 1),
('addsingle', '添加单页', 12, 1),
('singlelist', '单页列表', 12, 1),
('exchangcard', '用户使用充值卡', 16, 5),
('savescore', '保存积分设置', 16, 1),
('commentgid', '获取商品评价列表', 5, 2),
('delnewstype', '删除新闻分类', 7, 1),
('addnewstype', '添加新闻分类', 7, 1),
('savegift', '保存礼品信息', 8, 1),
('saveregester', '提交注册', 2, 3),
('regesterphone', '发送手机验证码', 2, 2),
('baidumap', '后台标记百度地址', 10, 1),
('setgoodsinstro', '编辑商品弹出层', 3, 1),
('marketgoodslist', '超市产品管理', 3, 1),
('marketgoodslist', '超市产品管理', 3, 3),
('index', '店铺信息', 3, 2),
('show', '前台店铺详情', 3, 2),
('delcollect', '删除收藏', 3, 5),
('savepxmyF', '收藏排序', 3, 5),
('savemarket', '保存超市设置', 3, 1),
('usershopmarket', '超市设置', 3, 1),
('delgoods', '删除商品', 3, 1),
('delgoodstype', '删除店铺分类', 3, 1),
('savepx', '保存店铺分类排序', 3, 1),
('editgoodstype', '编辑产品分类', 3, 1),
('delcxrule', '删除促销规则', 3, 1),
('savecxrule', '保存促销规则', 3, 1),
('addcxrule', '添加促销规则', 3, 1),
('shoptoadcost', '保存店铺配送费', 10, 1),
('shopidtoad', '编辑店铺配送区域', 10, 1),
('cxrule', '店铺促销规则', 3, 1),
('updategoods', '店铺编辑菜品', 3, 1),
('addgoods', '保存菜品', 3, 1),
('savegoodstype', '店铺保存菜单', 3, 1),
('savegoodssign', '保存标签', 3, 1),
('delgoodssign', '删除标签', 3, 1),
('adminareacost', '后台保存区域配送费', 10, 1),
('goodslist', '店铺菜品编辑', 3, 1),
('goodssign', '促销商品标签', 3, 1),
('setshoparea', '商家设置区域信息', 10, 1),
('savepsset', '后台保存配送设置', 10, 1),
('adminpsset', '配送费设置', 10, 1),
('delpmes', '删除私有信', 11, 1),
('saveuserpmes', '用户发布私信', 11, 3),
('saveask', '提交留言', 11, 2),
('pmessage', '私信列表', 11, 5),
('deluserpms', '删除私信', 11, 5),
('pmessage', '私信列表', 11, 3),
('deluserpms', '删除私信', 11, 3),
('saveask', '提交留言', 11, 3),
('myask', '用户留言列表', 11, 3),
('backpme', '管理员回复私信', 11, 1),
('pmsglist', '私信列表', 11, 1),
('savepme', '发系统私信', 11, 1),
('newstype', '新闻分类', 7, 1),
('addnews', '添加新闻', 7, 1),
('index', '模块默认页', 7, 1),
('newslist', '新闻列表', 7, 1),
('limitset', '权限列表', 7, 1),
('savelimit', '保存权限设置', 7, 1),
('savenews', '保存新闻', 7, 1),
('delnews', '删除新闻', 7, 1),
('limitset', '权限列表', 12, 1),
('savelimit', '保存权限设置', 12, 1),
('savesingle', '保存单页', 12, 1),
('delsingle', '删除单页', 12, 1),
('delarea', '删除区域', 10, 1),
('savegifttype', '保存礼品类型', 8, 1),
('delgifttype', '删除礼品类型', 8, 1),
('addgift', '添加礼品', 8, 1),
('addgifttype', '后台添加礼品类型', 8, 1),
('limitset', '权限列表', 8, 1),
('giftlist', '后台礼品列表', 8, 1),
('gifttype', '礼品类型', 8, 1),
('savelimit', '保存权限设置', 8, 1),
('exchangjuan', '用户兑换优惠券', 16, 5),
('myjuan', '用户优惠券', 16, 5),
('exchangcard', '用户使用充值卡', 16, 3),
('exchangjuan', '用户兑换优惠券', 16, 3),
('myjuan', '用户优惠券', 16, 3),
('starttask', '进行群发', 16, 1),
('sendtask', '发布群发任务', 16, 1),
('scoreset', '积分设置', 16, 1),
('sendtasklist', '群发任务', 16, 1),
('outjuan', '导出优惠券', 16, 1),
('deljuan', '删除优惠券', 16, 1),
('adminloginout', '管理员退出登陆', 2, 1),
('delgroup', '删除会员分组', 2, 1),
('savegroup', '保持会员分组', 2, 1),
('delmember', '删除会员', 2, 1),
('savemember', '保存会员', 2, 1),
('deladmin', '删除管理员', 2, 1),
('saveadmin', '保存管理员', 2, 1),
('grouplist', '会员分组', 2, 1),
('addmember', '添加会员', 2, 1),
('loginout', '退出登陆', 2, 5),
('savejuan', '保存优惠券', 16, 1),
('addjuan', '添加优惠券', 16, 1),
('exchang', '兑换礼品', 8, 3),
('exchang', '兑换礼品', 8, 5),
('index', '模块默认页', 8, 2),
('exchanghtml', '获取兑换详情', 8, 5),
('exchanghtml', '获取兑换详情', 8, 3),
('index', '模块默认页', 8, 3),
('index', '模块默认页', 8, 5),
('usergift', '会员礼品兑换记录', 8, 3),
('ungift', '取消兑换', 8, 3),
('usergift', '会员礼品兑换记录', 8, 5),
('ungift', '取消兑换', 8, 5),
('shopask', '商加留言列表', 11, 1),
('delask', '后台删除留言', 11, 1),
('backask', '后台回复留言', 11, 1),
('addgoodssign', '添加标签', 3, 1),
('shopask', '商加留言列表', 11, 5),
('myask', '用户留言列表', 11, 5),
('saveask', '提交留言', 11, 5),
('shopask', '商加留言列表', 11, 3),
('delmyask', '用户删除留言', 11, 3),
('delask', '删除留言', 11, 3),
('index', '网站留言', 11, 3),
('backask', '商加回复留言', 11, 3),
('delmyask', '用户删除留言', 11, 5),
('index', '网站留言', 11, 5),
('limitset', '权限列表', 11, 1),
('asklist', '后台留言列表', 11, 1),
('savefastfood', '保存店铺外卖设置', 3, 1),
('saveaddress', '用户保存地址', 10, 5),
('setshoparea', '商家设置配送区域', 10, 3),
('index', '模块默认页', 10, 2),
('savemapshoplocation', '保存商家lng', 10, 3),
('deladdress', '删除用户地址', 10, 5),
('useraddress', '用户地址信息', 10, 5),
('index', '模块默认页', 10, 5),
('editaddress', '用户编辑地址单个信息', 10, 5),
('shopbaidumap', '设置商家位置', 10, 3),
('editaddress', '用户编辑地址单个信息', 10, 3),
('savearea', '后台保存区域', 10, 1),
('addarealist', '后台添加购区域', 10, 1),
('deladdress', '删除用户地址', 10, 3),
('adminarealist', '后台区域列表', 10, 1),
('limitset', '权限列表', 10, 1),
('savelimit', '保存权限设置', 10, 1),
('saveadvtype', '保存广告类型', 14, 1),
('advtype', '广告类型', 14, 1),
('deladv', '删除广告', 14, 1),
('saveadv', '保存广告', 14, 1),
('addadv', '添加广告', 14, 1),
('advlist', '广告列表', 14, 1),
('limitset', '广告权限设置', 14, 1),
('savelimit', '保存权限设置', 14, 1),
('makeorder', '外卖下单', 3, 5),
('savemarket', '保存超市设置', 3, 3),
('addcollect', '添加收藏', 3, 5),
('closeshop', '关闭店铺', 3, 1),
('shop', '前台店铺列表', 3, 2),
('usershopmarket', '超市设置', 3, 3),
('delgoods', '删除商品', 3, 3),
('startshop', '开启外卖店详情', 3, 1),
('usershopinstro', '前台店铺介绍', 3, 1),
('delgoodstype', '删除店铺分类', 3, 3),
('index', '网站留言', 11, 2),
('saveuserpmes', '用户发布私信', 11, 5),
('newshopask', '店铺留言', 11, 5),
('newshopask', '店铺留言', 11, 3),
('savelimit', '保存权限设置', 11, 1),
('newshopask', '店铺留言', 11, 1),
('saveask', '提交留言', 11, 1),
('editgoodstype', '编辑产品分类', 3, 3),
('savepx', '保存店铺分类排序', 3, 3),
('usershopcxnotice', '前台设置促销公告', 3, 1),
('usershopnotice', '前台设置公告', 3, 1),
('shoptotal', '店铺订单统计', 5, 1),
('ajaxcheckshoporder', '商家检测订单', 5, 1),
('ordercomment', '订单评价列表', 5, 1),
('showcommlist', '后台订单评价展示设置', 5, 1),
('guestorder', '游客查询订单', 5, 1),
('smtopay', '亿美短信充值', 17, 1),
('smgetbalance', '获取余额', 17, 1),
('smssetsave', '保存短信设置', 17, 1),
('emailsetsave', '保存邮箱设置', 17, 1),
('smsset', '短信设置', 17, 1),
('emailset', '邮箱设置', 17, 1),
('cleartpl', '清理缓存', 17, 1),
('edittpl', '编辑短信/邮件模板', 17, 1),
('closeshop', '关闭店铺', 3, 3),
('collect', '用户收藏列表', 3, 5),
('makeorder', '外卖下单', 3, 2),
('comment', '店铺评价管理', 5, 1),
('delcommlist', '删除订单评价', 5, 1),
('shopcontrol', '商家操作订单', 5, 1),
('shoporderlist', '商家订单列表', 5, 1),
('ordercontrol', '修改订单状态', 5, 1),
('outtjorder', '导出商家结算表', 5, 1),
('comment', '店铺评价管理', 5, 3),
('outorderlimit', '导出订单', 5, 1),
('saveping', '提交评价', 5, 3),
('regesteremail', '发送邮箱注册验证码', 2, 2),
('yregester', '验证邮箱注册', 2, 2),
('checkname', '检测用户名', 2, 2),
('commentshop', '店铺评价展示', 5, 3),
('ordercomdet', '获取订单评价信息', 5, 3),
('overpiont', '用户已评订单', 5, 3),
('waitpiont', '用户待评订单', 5, 3),
('guestorder', '游客查询订单', 5, 5),
('guestorderlist', '游客订单列表', 5, 5),
('userdelorder', '用户删除订单', 5, 3),
('userorderdet', '用户获取一个订单', 5, 3),
('commentshop', '店铺评价展示', 5, 5),
('saveping', '提交评价', 5, 5),
('ordercomdet', '获取订单评价信息', 5, 5),
('waitpiont', '用户待评订单', 5, 5),
('userunorder', '用户取消订单', 5, 5),
('userunorder', '用户取消订单', 5, 3),
('usershopinstro', '商家设置店铺介绍', 3, 3),
('startshop', '开启外卖店详情', 3, 3),
('index', '店铺信息', 3, 5),
('show', '前台店铺详情', 3, 5),
('giftlog', '礼品兑换记录', 8, 1),
('index', '模块默认页', 8, 1),
('saveresetpwd', '会员保存重置换密码', 2, 3),
('resetpwd', '重置密码', 2, 3),
('savefind', '发送找回密码邮件', 2, 3),
('findpwd', '找会密码', 2, 3),
('newshopask', '店铺留言', 11, 2),
('checkemail', '检测邮箱', 2, 2),
('savelimit', '保存权限设置', 20, 1),
('login', '登陆', 2, 3),
('outdetail', '导出商家结算详情', 5, 1),
('ajaxcheckorder', '检测订单', 5, 1),
('ordertotal', '订单统计', 5, 1),
('ajaxcheckshoporder', '商家检测订单', 5, 3),
('overpiont', '用户已评订单', 5, 5),
('userdelorder', '用户删除订单', 5, 5),
('bandaout', '第三方邦定界面', 2, 2),
('savefastfood', '保存店铺外卖设置', 3, 3),
('gotocollect', '收藏跳转店铺', 3, 5),
('shop', '前台店铺列表', 3, 5),
('openshop', '我要开店', 3, 5),
('checkshopname', '检测店铺名', 3, 5),
('checkshopphone', '检测店铺联系电话', 3, 5),
('saveopen', '提交开店申请', 3, 5),
('usershopnotice', '商家设置公告', 3, 3),
('usershopcxnotice', '商家设置促销公告', 3, 3),
('usershopfast', '商家设置外卖', 3, 3),
('useredit', '商家编辑店铺', 3, 3),
('mangeshop', '用户跳转到店铺', 3, 3),
('checkshopphone', '检测店铺联系电话', 3, 3),
('openshop', '我要开店', 3, 3),
('checkshopname', '检测店铺名', 3, 3),
('saveaddress', '用户保存地址', 10, 3),
('useraddress', '用户地址信息', 10, 3),
('index', '模块默认页', 10, 3),
('shopidtoad', '编辑店铺配送区域', 10, 3),
('shoptoadcost', '保存店铺配送费', 10, 3),
('usershopfast', '前台设置外卖店', 3, 1),
('orderyjin', '商家结算', 5, 1),
('usermorder', '用户超市订单', 5, 3),
('addgroup', '添加会员分组', 2, 1),
('memberlistshop', '商家会员', 2, 1),
('limitset', '权限列表', 20, 1),
('savetpl', '保存模板', 17, 1),
('othertpl', '短信/邮件模板设置', 17, 1),
('savelogin', '保存第三方接口信息', 17, 1),
('installlogin', '查看第三方登陆信息', 17, 1),
('loginlist', '登陆接口', 17, 1),
('delpay', '删除支付接口', 17, 1),
('savepay', '保存支付接口', 17, 1),
('installpay', '安装支付接口', 17, 1),
('paylist', '支付接口列表', 17, 1),
('goodsupload', '店铺上传图片', 17, 1),
('index', '模块默认页', 17, 3),
('userupload', '用户上传图片', 17, 3),
('goodsupload', '店铺上传图片', 17, 3),
('index', '模块默认页', 17, 5),
('userupload', '用户上传图片', 17, 5),
('index', '模块默认页', 17, 2),
('limitset', '权限列表', 17, 1),
('savelimit', '保存权限设置', 17, 1),
('userupload', '用户上传图片', 17, 1),
('saveupload', 'KE插件上传图片', 17, 1),
('adminupload', '后台上传', 17, 1),
('gotocollect', '收藏跳转店铺', 3, 3),
('makeorder', '外卖下单', 3, 3),
('savepxmyF', '收藏排序', 3, 3),
('savecxrule', '保存促销规则', 3, 3),
('useredit', '前台商家编辑店铺', 3, 1),
('resetdefualt', '后台跳转管理店铺', 3, 1),
('saveshopdettype', '保存店铺属性值', 3, 1),
('saveshoptype', '保存店铺属性', 3, 1),
('delshoptype', '删除店铺属性', 3, 1),
('shoptype', '后台模型', 3, 1),
('delshop', '删除商家', 3, 1),
('adminshopwati', '后台待审核商家', 3, 1),
('shopactivetime', '后台店铺有效时间', 3, 1),
('savesetshopyjin', '设置店铺佣金', 3, 1),
('delcxrule', '删除促销规则', 3, 3),
('cxrule', '店铺促销规则', 3, 3),
('adminshoppx', '后台店铺排序', 3, 1),
('passhop', '审核店铺', 3, 1),
('addcxrule', '添加促销规则', 3, 3),
('updategoods', '店铺编辑菜品', 3, 3),
('addgoods', '保存菜品', 3, 3),
('savegoodstype', '店铺保存菜单', 3, 3),
('saveshopbq', '保存店铺标签', 3, 1),
('saveregester', '提交注册', 2, 2),
('index', '模块默认页', 2, 2),
('linktest', '第三方登陆', 2, 2),
('otherlogin', '第三方登陆回写函数', 2, 2),
('saveresetpwd', '会员保存重置换密码', 2, 2),
('resetpwd', '重置密码', 2, 2),
('savefind', '发送找回密码邮件', 2, 2),
('findpwd', '找会密码', 2, 2),
('adminlogin', '管理员登陆', 2, 2),
('login', '登陆', 2, 2),
('regester', '注册帐号', 2, 2),
('regester', '注册帐号', 2, 5),
('loginout', '退出登陆', 2, 3),
('regester', '注册帐号', 2, 3),
('saveuser', '保存用户基本资料', 2, 3),
('edituser', '普通用户修改密码', 2, 3),
('savelimit', '保存权限设置', 2, 1),
('memberlist', '普通会员列表', 2, 1),
('addadmin', '添加管理员', 2, 1),
('adminlist', '管理员列表', 2, 1),
('saveuser', '保存用户基本资料', 2, 5),
('edituser', '普通用户修改密码', 2, 5),
('ordersend', '今日已发货订单', 5, 1),
('ordertoday', '今日待发货订单', 5, 1),
('ordertodayw', '今日带审核订单', 5, 1),
('orderlist', '所有订单', 5, 1),
('beizhulist', '订单备注', 5, 1),
('userorderdet', '用户获取一个订单', 5, 5),
('makeorder', '提交订单', 5, 5),
('guestorderlist', '游客订单列表', 5, 2),
('guestorder', '游客查询订单', 5, 2),
('makeorder', '提交订单', 5, 3),
('shoptotal', '订单统计', 5, 3),
('usersorder', '用户外卖订单', 5, 3),
('commentshop', '店铺评价展示', 5, 2),
('shopcontrol', '商家操作订单', 5, 3),
('saveorderbz', '保存订单备注', 5, 1),
('limitset', '权限列表', 5, 1),
('savelimit', '保存权限设置', 5, 1),
('usermorder', '用户超市订单', 5, 5),
('usersorder', '用户外卖订单', 5, 5),
('index', '模块默认页', 5, 5),
('userorderdet', '用户获取一个订单', 5, 2),
('index', '模块默认页', 5, 2),
('makeorder', '提交订单', 5, 2),
('guestorderlist', '游客订单列表', 5, 1),
('index', '默认首页', 5, 1),
('guestorder', '游客查询订单', 5, 3),
('shoporderlist', '商家订单列表', 5, 3),
('index', '模块默认页', 5, 3),
('shopbiaoqian', '后台店铺标签', 3, 1),
('savelimit', '保存权限设置', 3, 1),
('saveshop', '保存店铺', 3, 1),
('addshop', '添加后台店铺', 3, 1),
('goodslist', '店铺菜品编辑', 3, 3),
('delcollect', '删除收藏', 3, 3),
('addcollect', '添加收藏', 3, 3),
('savegoodinstro', '弹出层保存', 3, 1),
('collect', '用户收藏列表', 3, 3),
('index', '店铺信息', 3, 3),
('editshop', '编辑店铺', 3, 3),
('show', '前台店铺详情', 3, 3),
('shop', '前台店铺列表', 3, 3),
('adminshoplist', '后台商家列表', 3, 1),
('setgoodsinstro', '编辑商品弹出层', 3, 3),
('savegoodinstro', '弹出层保存', 3, 3),
('commentgid', '获取商品评价列表', 5, 1),
('guestorderlist', '游客订单列表', 5, 3),
('commentgid', '获取商品评价列表', 5, 3),
('juanlist', '优惠券列表', 16, 1),
('outcard', '导出充值卡', 16, 1),
('savebkdata', 'ajax还原数据', 17, 1),
('debkfile', '删除备份文件', 17, 1),
('errlog', '错误日志', 17, 1),
('download', '下载日志', 17, 1),
('delerrlog', '删除日志', 17, 1),
('delcard', '删除充值卡', 16, 1),
('savecard', '保存充值卡', 16, 1),
('addcard', '添加充值卡', 16, 1),
('cardlist', '充值卡列表', 16, 1),
('limitset', '权限列表', 16, 1),
('savelimit', '保存权限设置', 16, 1),
('deltask', '删除任务', 16, 1),
('limitset', '权限列表', 3, 1),
('index', '店铺信息', 3, 1),
('setnotice', '设置店铺通知方式', 3, 1),
('saveshoppnotice', '保存通知方式', 3, 1),
('limitset', '权限列表', 2, 1),
('index', '模块默认页', 2, 1),
('adminmodify', '管理员修改本身密码', 2, 1),
('limitset', '权限列表', 18, 1),
('savelimit', '保存权限设置', 18, 1),
('area', '地区销量分析', 18, 1),
('shop', '店铺销量分析', 18, 1),
('goods', '菜品销量分析', 18, 1),
('user', '会员购买数据', 18, 1),
('shopbaidumap', '设置商家位置', 10, 1),
('savemapshoplocation', '保存商家lng', 10, 1),
('setshow', '设置百度地图区域显示', 10, 1),
('index', '模块默认页', 14, 2),
('paylog', '用户充值记录', 2, 5),
('onlinelog', '在线支付记录', 2, 5),
('safepwd', '修改支付密码', 2, 5),
('payoncard', '会员中心在线支付', 2, 5),
('otherlogin', '第三方登陆回写函数', 2, 5),
('bandaout', '第三方邦定界面', 2, 5),
('checkemail', '检测邮箱', 2, 5),
('checkname', '检测用户名', 2, 5),
('payonline', '在线充值', 2, 5),
('yregester', '验证邮箱注册', 2, 5),
('regesteremail', '发送邮箱注册验证码', 2, 5),
('shoplogin', '店铺登陆页', 2, 5),
('shoploginin', '店铺登陆数据处理', 2, 5),
('base', '会员基本信息', 2, 3),
('jifenlog', '会员积分记录', 2, 3),
('paylog', '用户充值记录', 2, 3),
('onlinelog', '在线支付记录', 2, 3),
('safepwd', '修改支付密码', 2, 3),
('payoncard', '会员中心在线支付', 2, 3),
('linktest', '第三方登陆', 2, 3),
('otherlogin', '第三方登陆回写函数', 2, 3),
('bandaout', '第三方邦定界面', 2, 3),
('checkemail', '检测邮箱', 2, 3),
('checkname', '检测用户名', 2, 3),
('payonline', '在线充值', 2, 3),
('shoplogin', '店铺登陆页', 2, 3),
('shoploginin', '店铺登陆数据处理', 2, 3),
('savelimit', '保存权限设置', 28, 1),
('limitset', '权限列表', 28, 1),
('savelimit', '保存权限设置', 30, 1),
('limitset', '权限列表', 30, 1),
('limitset', '权限列表', 31, 1),
('savelimit', '保存权限设置', 31, 1),
('limitset', '权限列表', 32, 1),
('savelimit', '保存权限设置', 32, 1),
('savelimit', '保存权限设置', 34, 1),
('limitset', '权限列表', 34, 1),
('limitset', '权限列表', 35, 1),
('savelimit', '保存权限设置', 35, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxback`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxback` (
  `id` int(20) NOT NULL auto_increment,
  `code` varchar(50) NOT NULL,
  `msgtype` int(1) NOT NULL default '1',
  `values` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `xiaozu_wxback`
--

INSERT INTO `xiaozu_wxback` (`id`, `code`, `msgtype`, `values`) VALUES
(3, 'a', 3, 'a:1:{i:0;a:4:{s:6:"biaoti";s:23:"4月1号愚人节快乐";s:7:"miaoshu";s:339:"             本服务协议双方分别为深圳市网生活信息技术有限公司旗下网站“外卖人”（以下简称“外卖人”）与“外卖人”网站用户，本服务协议具有合同效力。用户必须为具备完全民事行为能力的自然人，或者是具有合法经营资格的实体组织。\r\n             ";s:6:"tupian";s:58:"http://m2.waimairen.com/upload/goods/20140328195812444.jpg";s:7:"lianjie";s:13:"www.baidu.com";}}'),
(4, '1', 1, 'a:2:{s:8:"lj_title";s:12:"进入首页";s:7:"lj_link";s:23:"#";}'),
(5, '3', 2, '我想有个更长的名字测试你好啊啊'),
(6, 'subscribe', 2, '感谢您关注官方微信\r\n菜单装口袋  店铺随身带\r\n快速订外卖  方便有实在\r\n1绑定帐号回复:帐号##密码  \r\n2查看最近订单回复:c\r\n3.查看积分回复:j'),
(7, 'd', 1, 'a:2:{s:8:"lj_title";s:2:"dd";s:7:"lj_link";s:3:"ddd";}');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxcomment`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxcomment` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '微信用户uid',
  `usercontent` varchar(500) NOT NULL COMMENT '发表主题',
  `userimg` varchar(500) NOT NULL COMMENT '图片集',
  `addtime` varchar(20) NOT NULL COMMENT '添加时间',
  `cityname` varchar(25) NOT NULL,
  `areaname` varchar(25) NOT NULL,
  `streetname` varchar(25) NOT NULL,
  `is_top` int(11) NOT NULL default '0',
  `is_show` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信一起说主表' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_wxcomment`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxjuan`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxjuan` (
  `id` int(11) NOT NULL auto_increment,
  `cartname` varchar(50) NOT NULL COMMENT '优惠卷名称',
  `cartdesrc` varchar(255) NOT NULL COMMENT '优惠卷描述',
  `status` int(1) NOT NULL default '0' COMMENT '0未使用，1已绑定，2已使用，3无效',
  `cost` int(5) NOT NULL COMMENT '优惠金额',
  `limitcost` int(5) NOT NULL COMMENT '最低消费限制金额',
  `creattime` int(11) NOT NULL default '0' COMMENT '制造时间',
  `endtime` int(11) NOT NULL default '0' COMMENT '失效时间',
  `lqrule` varchar(50) NOT NULL COMMENT 'lqrule',
  `limitdayshu` int(11) NOT NULL COMMENT '限制每天领取次数',
  `limitzongshu` int(11) NOT NULL COMMENT '限制总共领取次数',
  `lqlink` varchar(255) NOT NULL COMMENT '领取连接',
  `sharetitle` varchar(255) NOT NULL COMMENT '分享标题',
  `sharezhaiy` varchar(255) NOT NULL COMMENT '分享摘要',
  `shareimg` varchar(255) NOT NULL COMMENT '分享图片',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 导出表中的数据 `xiaozu_wxjuan`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxmenu`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxmenu` (
  `id` int(20) NOT NULL auto_increment,
  `type` varchar(10) NOT NULL COMMENT 'view表示连接，click事件',
  `name` varchar(255) NOT NULL COMMENT 'an钮事件名称',
  `values` text COMMENT '当type为view时跳转连接，当click为则为内容',
  `parent_id` int(20) NOT NULL default '0' COMMENT '0一级菜单',
  `sort` int(3) NOT NULL,
  `msgtype` int(1) NOT NULL default '0' COMMENT '0:连接1文本2图文',
  `code` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- 导出表中的数据 `xiaozu_wxmenu`
--

INSERT INTO `xiaozu_wxmenu` (`id`, `type`, `name`, `values`, `parent_id`, `sort`, `msgtype`, `code`) VALUES
(14, 'view', '跑腿服务', 'a:2:{s:7:"lj_link";s:59:"http://m6.waimairen.com/index.php?ctrl=wxsite&action=paotui";s:8:"lj_title";s:12:"跑腿服务";}', 0, 11, 0, 'g'),
(16, 'view', '体验新版', 'a:2:{s:7:"lj_link";s:45:"http://m6.waimairen.com/index.php?ctrl=wxsite";s:8:"lj_title";s:12:"在线下单";}', 0, 12, 0, 'acount'),
(28, 'view', '升级报告', 'a:2:{s:7:"lj_link";s:128:"http://mp.weixin.qq.com/s?__biz=MzA3MzQ3MzYyMA==&mid=401513578&idx=1&sn=7425f6fff461a89bed340ba60b42d62a&scene=0#wechat_redirect";s:8:"lj_title";s:12:"升级报告";}', 0, 10, 0, 'y');

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxpjzan`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxpjzan` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 导出表中的数据 `xiaozu_wxpjzan`
--

INSERT INTO `xiaozu_wxpjzan` (`id`, `uid`, `commentid`) VALUES
(3, 0, 4),
(4, 2758, 99),
(5, 2758, 96),
(6, 2787, 92),
(7, 730, 6),
(8, 1275, 116),
(12, 2782, 128),
(13, 2158, 6);

-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxreplycomment`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxreplycomment` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_wxreplycomment`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxuser`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxuser` (
  `openid` varchar(255) NOT NULL,
  `uid` int(20) NOT NULL,
  `is_bang` int(1) NOT NULL default '0',
  `wxlat` varchar(255) default NULL,
  `wxlng` varchar(255) default NULL,
  `access_token` varchar(100) default NULL,
  `expires_in` int(12) default NULL,
  `refresh_token` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `xiaozu_wxuser`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxuserjuan`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxuserjuan` (
  `id` int(11) NOT NULL auto_increment,
  `juanid` int(11) NOT NULL,
  `fafangtime` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '顾客uid',
  `username` varchar(50) NOT NULL COMMENT '顾客姓名',
  `juanname` varchar(50) NOT NULL COMMENT '优惠卷名称',
  `juancost` int(5) NOT NULL COMMENT '面值',
  `juanlimitcost` int(5) NOT NULL COMMENT '限制金额',
  `endtime` int(11) NOT NULL COMMENT '过期时间',
  `lqstatus` int(11) NOT NULL COMMENT '领取状态',
  `status` int(5) NOT NULL COMMENT '状态',
  `juanshu` int(5) NOT NULL COMMENT '优惠卷数量',
  `usetime` int(11) NOT NULL COMMENT '优惠卷使用时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `xiaozu_wxuserjuan`
--


-- --------------------------------------------------------

--
-- 表的结构 `xiaozu_wxuserjubao`
--

CREATE TABLE IF NOT EXISTS `xiaozu_wxuserjubao` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `xiaozu_wxuserjubao`
--


-- --------------------------------------------------------

--
-- 表的结构 `xx_positionkey`
--

CREATE TABLE IF NOT EXISTS `xx_positionkey` (
  `datatype` int(1) NOT NULL,
  `parent_id` int(20) NOT NULL,
  `datacode` varchar(100) character set utf8 NOT NULL,
  `datacontent` varchar(100) character set utf8 NOT NULL,
  `lat` varchar(20) character set utf8 default NULL,
  `lng` varchar(20) character set utf8 default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `xx_positionkey`
--

