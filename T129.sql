/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t129`;
CREATE DATABASE IF NOT EXISTS `t129` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t129`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620042038458 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-05-17 07:59:12', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-05-17 07:59:12', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-05-17 07:59:12', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-05-17 07:59:12', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-05-17 07:59:12', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-05-17 07:59:12', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1615000734921, '2021-03-06 03:18:53', 11, '陕西省安康市旬阳市小河镇闫家坪', '联系人1', '12312312312', '是'),
	(1620042020554, '2021-05-03 11:40:20', 1620041828180, '新疆维吾尔自治区阿勒泰地区阿勒泰市切木尔切克镇', '联系人1', '12312312312', '否');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1713017755060 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615551546126 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天表';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(61, '2021-05-17 07:59:12', 1, 1, '提问1', '回复1', 0),
	(62, '2021-05-17 07:59:12', 2, 2, '提问2', '回复2', 2),
	(63, '2021-05-17 07:59:12', 3, 3, '提问3', '回复3', 3),
	(64, '2021-05-17 07:59:12', 4, 4, '提问4', '回复4', 4),
	(65, '2021-05-17 07:59:12', 5, 5, '提问5', '回复5', 5),
	(66, '2021-05-17 07:59:12', 6, 6, '提问6', '回复6', 6),
	(1615551500494, '2021-03-12 12:18:20', 11, NULL, '123123', NULL, 0),
	(1615551511515, '2021-03-12 12:18:30', 11, NULL, '这里可以和客服进行投书', NULL, 0),
	(1615551539376, '2021-03-12 12:18:58', 1, 1, NULL, '213231', NULL),
	(1615551539554, '2021-03-12 12:18:58', 1, 1, NULL, '213231', 0),
	(1615551545730, '2021-03-12 12:19:05', 11, 1, NULL, '213132132', 0),
	(1615551545806, '2021-03-12 12:19:05', 11, 1, NULL, '213132132', 0),
	(1615551546125, '2021-03-12 12:19:05', 11, 1, NULL, '213132132', NULL);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/wangshangshangchengB/upload/1615036302134.jpg'),
	(2, 'picture2', 'http://localhost:8080/wangshangshangchengB/upload/1615036308980.jpg'),
	(3, 'picture3', 'http://localhost:8080/wangshangshangchengB/upload/1615036314868.jpg'),
	(6, 'homepage', 'http://localhost:8080/wangshangshangchengB/upload/1615036321972.jpg');

DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620041971433 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

DELETE FROM `discussshangpinxinxi`;
INSERT INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(121, '2021-05-17 07:59:12', 1, 1, '评论内容1', '回复内容1'),
	(122, '2021-05-17 07:59:12', 2, 2, '评论内容2', '回复内容2'),
	(123, '2021-05-17 07:59:12', 3, 3, '评论内容3', '回复内容3'),
	(124, '2021-05-17 07:59:12', 4, 4, '评论内容4', '回复内容4'),
	(125, '2021-05-17 07:59:12', 5, 5, '评论内容5', '回复内容5'),
	(126, '2021-05-17 07:59:12', 6, 6, '评论内容6', '回复内容6'),
	(1615551314339, '2021-03-12 12:15:13', 1615551151507, 11, '买了几次挺不错的', NULL),
	(1620041971432, '2021-05-03 11:39:30', 1620041890124, 1620041828180, '123123', '111111111111111111111111111111111111111111111111111111111111111111111111');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615547096079 DEFAULT CHARSET=utf8mb3 COMMENT='商品资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(111, '2021-05-17 07:59:12', '标题1', '简介1', 'http://localhost:8080/wangshangshangchengB/upload/1615036500334.jpg', '<p>内容1</p>'),
	(112, '2021-05-17 07:59:12', '标题2', '简介2', 'http://localhost:8080/wangshangshangchengB/upload/1615036508609.jpg', '<p>内容2</p>'),
	(113, '2021-05-17 07:59:12', '标题3', '简介3', 'http://localhost:8080/wangshangshangchengB/upload/1615036516431.jpg', '<p>内容3</p>'),
	(114, '2021-05-17 07:59:12', '标题4', '简介4', 'http://localhost:8080/wangshangshangchengB/upload/1615036522325.jpg', '<p>内容4</p>');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1713017777654 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`) VALUES
	(1620042055592, '2021-05-03 11:40:54', '20215319405495163842', 'shangpinxinxi', 1620041828180, 1620041890124, '商品名称7', 'http://localhost:8080/wangshangshangchengB/upload/1620041872258.jpg', 1, 999.99, 999.99, 999.99, 999.99, 1, '已取消', '新疆维吾尔自治区阿勒泰地区阿勒泰市切木尔切克镇'),
	(1620042079658, '2021-05-03 11:41:19', '2021531941195239788', 'shangpinxinxi', 1620041828180, 1620041890124, '商品名称7', 'http://localhost:8080/wangshangshangchengB/upload/1620041872258.jpg', 1, 999.99, 999.99, 999.99, 999.99, 1, '已完成', '新疆维吾尔自治区阿勒泰地区阿勒泰市切木尔切克镇'),
	(1713017777653, '2024-04-13 14:16:17', '202441322161759626458', 'shangpinxinxi', 11, 41, '商品名称1', 'http://localhost:8080/wangshangshangchengB/upload/1615550298363.jpg', 2, 99.9, 99.9, 199.8, 199.8, 1, '已支付', '陕西省安康市旬阳市小河镇闫家坪');

DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE IF NOT EXISTS `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1620041847428 DEFAULT CHARSET=utf8mb3 COMMENT='商品分类';

DELETE FROM `shangpinfenlei`;
INSERT INTO `shangpinfenlei` (`id`, `addtime`, `shangpinfenlei`) VALUES
	(21, '2021-05-17 07:59:12', '分类1'),
	(22, '2021-05-17 07:59:12', '分类2'),
	(23, '2021-05-17 07:59:12', '分类3'),
	(24, '2021-05-17 07:59:12', '分类4'),
	(25, '2021-05-17 07:59:12', '分类5'),
	(26, '2021-05-17 07:59:12', '分类6'),
	(1620041847427, '2021-05-03 11:37:27', '分类7');

DROP TABLE IF EXISTS `shangpinpingjia`;
CREATE TABLE IF NOT EXISTS `shangpinpingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615551418201 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `shangpinpingjia`;

DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620041890125 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpinxinxi`;
INSERT INTO `shangpinxinxi` (`id`, `addtime`, `shangpinmingcheng`, `shangpinfenlei`, `tupian`, `biaoqian`, `pinpai`, `shangpinxiangqing`, `clicktime`, `clicknum`, `price`) VALUES
	(41, '2021-05-17 07:59:12', '商品名称1', '分类1', 'http://localhost:8080/wangshangshangchengB/upload/1615550298363.jpg', '标签1', '品牌1', '<p>商品详情1</p>', '2024-04-13 14:16:17', 16, 99.9),
	(42, '2021-05-17 07:59:12', '商品名称2', '分类2', 'http://localhost:8080/wangshangshangchengB/upload/1615550308854.jpg', '标签2', '品牌2', '<p>商品详情2</p>', '2024-04-13 14:14:57', 27, 99.9),
	(43, '2021-05-17 07:59:12', '商品名称3', '分类3', 'http://localhost:8080/wangshangshangchengB/upload/1615550319115.jpg', '标签3', '品牌3', '<p>商品详情3</p>', '2024-04-13 14:14:54', 23, 99.9),
	(44, '2021-05-17 07:59:12', '商品名称4', '分类4', 'http://localhost:8080/wangshangshangchengB/upload/1615550339603.jpg', '标签4', '品牌4', '<p>商品详情4</p>', '2021-05-03 11:39:18', 28, 99.9),
	(45, '2021-05-17 07:59:12', '商品名称5', '分类5', 'http://localhost:8080/wangshangshangchengB/upload/1615550360764.jpg', '标签5', '品牌5', '<p>商品详情5</p>', '2021-03-12 11:59:12', 17, 99.9),
	(46, '2021-05-17 07:59:12', '商品名称6', '分类6', 'http://localhost:8080/wangshangshangchengB/upload/1615550374624.jpg', '标签6', '品牌6', '<p>商品详情6</p>', '2021-03-12 11:59:26', 15, 99.9),
	(1620041890124, '2021-05-03 11:38:10', '商品名称7', '分类7', 'http://localhost:8080/wangshangshangchengB/upload/1620041872258.jpg', '标签7', '品牌7', '<p><span style="color: rgb(96, 98, 102);">商品详情7</span></p>', '2021-05-03 11:41:19', 4, 999.99);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1713017753703 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1615551322412, '2021-03-12 12:15:21', 11, 1615551151507, 'shangpinxinxi', '坚果', 'http://localhost:8080/wangshangshangchengB/upload/1615551139102.jpg'),
	(1620041959859, '2021-05-03 11:39:19', 1620041828180, 44, 'shangpinxinxi', '商品名称4', 'http://localhost:8080/wangshangshangchengB/upload/1615550339603.jpg'),
	(1620041964321, '2021-05-03 11:39:23', 1620041828180, 1620041890124, 'shangpinxinxi', '商品名称7', 'http://localhost:8080/wangshangshangchengB/upload/1620041872258.jpg'),
	(1713017753702, '2024-04-13 14:15:53', 11, 41, 'shangpinxinxi', '商品名称1', 'http://localhost:8080/wangshangshangchengB/upload/1615550298363.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '用户1', 'yonghu', '用户', 'j2ewoczvw1usgqi34rqyx0pyq3nsrqr7', '2021-05-17 08:04:27', '2024-04-13 07:15:40'),
	(2, 1, 'abo', 'users', '管理员', '96k63zp09v7lacb79b94xpmch4d9j0h7', '2021-05-17 08:05:48', '2024-04-13 07:14:38'),
	(3, 1614241036888, '1', 'yonghu', '用户', 'w59s1pisbi8g0x8b2ur0mwjdewf0lepf', '2021-05-17 08:18:05', '2021-05-17 01:22:12'),
	(4, 1620041828180, '123', 'yonghu', '用户', '9w33vght9628ccw4st9mvghw77cqd8wi', '2021-05-03 11:38:34', '2021-05-03 04:42:02');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-17 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620041828181 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `lianxidianhua`, `money`) VALUES
	(11, '2021-05-17 07:59:12', '用户1', '123456', '姓名1', 'http://localhost:8080/wangshangshangchengB/upload/1615036163640.jpg', '男', '13823888881', 6231.2),
	(12, '2021-05-17 07:59:12', '用户2', '123456', '姓名2', 'http://localhost:8080/wangshangshangchengB/upload/1615036189919.jpg', '男', '13823888882', 100),
	(13, '2021-05-17 07:59:12', '用户3', '123456', '姓名3', 'http://localhost:8080/wangshangshangchengB/upload/1615036201218.jpg', '男', '13823888883', 100),
	(14, '2021-05-17 07:59:12', '用户4', '123456', '姓名4', 'http://localhost:8080/wangshangshangchengB/upload/1615036215497.jpg', '男', '13823888884', 100),
	(15, '2021-05-17 07:59:12', '用户5', '123456', '姓名5', 'http://localhost:8080/wangshangshangchengB/upload/1615036231399.jpg', '男', '13823888885', 100),
	(16, '2021-05-17 07:59:12', '用户6', '123456', '姓名6', 'http://localhost:8080/wangshangshangchengB/upload/1615036258696.jpg', '男', '13823888886', 100),
	(1620041828180, '2021-05-03 11:37:08', '123', '123', '123', 'http://localhost:8080/wangshangshangchengB/upload/1620041823898.jpg', '男', '12312312312', 111111000000000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
