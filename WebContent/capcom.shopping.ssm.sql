-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        5.7.24 - MySQL Community Server (GPL)
-- 服务器OS:                        Win64
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for capcom.shopping.ssm
CREATE DATABASE IF NOT EXISTS `capcom.shopping.ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `capcom.shopping.ssm`;

-- Dumping structure for table capcom.shopping.ssm.commodity
CREATE TABLE IF NOT EXISTS `commodity` (
  `commodityid` int(11) NOT NULL AUTO_INCREMENT,
  `commodityname` varchar(255) DEFAULT NULL,
  `commodityprice` bigint(20) DEFAULT NULL,
  `pubdate` date DEFAULT NULL,
  `commoditytype` varchar(20) DEFAULT NULL,
  `commodityintro` varchar(255) DEFAULT NULL,
  `commodityphoto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`commodityid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table capcom.shopping.ssm.commodity: ~6 rows (大约)
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` (`commodityid`, `commodityname`, `commodityprice`, `pubdate`, `commoditytype`, `commodityintro`, `commodityphoto`) VALUES
	(1, '哥美斯', 99901, '2021-05-01', '普通怪兽', '在东海弹丸道路第三工地的地底出现，并与原始怪鸟·利特拉展开决斗，但最终被其击败。', 'monster1.png'),
	(2, '宇宙忍者', 99902, '2021-05-05', '宇宙人', '宇宙忍者巴尔坦星人，出自于《初代奥特曼》并且是《奥特曼》系列作品中第一个登场的宇宙人，拥有蝉一样的眼睛，双手有龙虾一样的双钳，拥有极度发达的高科技。巴尔坦的名字来源于巴尔干（Balkan），即巴尔干半岛。', 'monster2.png'),
	(3, '分身宇宙人', 99903, '2021-05-08', '宇宙人', '曾是嘎次星的一种鸟类，直到自己的大脑高度发达而进化成类人型，同时也失去了飞行能力。曾利用大力怪兽 阿龙分析赛文的战斗数据并轻松打败了赛文。', 'monster3.png'),
	(4, '达兰比尔', 99904, '2021-05-08', '斯菲亚合成兽', '由宇宙球体斯菲亚制造出来的首只斯菲亚合成兽。是斯菲亚与火星岩石融合形成的怪兽，外表类似蜘蛛。摧毁了人类在火星上辛辛苦苦建立的基地，全身有亚空间防护罩保护，口中发出破坏光线。', 'monster4.png'),
	(5, '奈奥达兰比尔', 99905, '2021-05-09', '斯菲亚合成兽', '是达兰比尔的残骸通过斯菲亚球体再次集合并强化变成的怪兽，也是戴拿的初战对手，最后被戴拿的索尔捷特光线打败。', 'monster5.png'),
	(6, '格兰雷恩', 99906, '2021-05-10', '斯菲亚合成兽', '降落在地球的斯菲亚为了袭击TPC热能源基地以及TPC本部，依靠火山熔岩的能量制造出的斯菲亚合成兽，在斯菲亚将SUPER GUTS引出地球后开始活动。', 'monster6.png');
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
