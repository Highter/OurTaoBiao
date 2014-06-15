/*
MySQL Data Transfer
Source Host: localhost
Source Database: mytaobiao
Target Host: localhost
Target Database: mytaobiao
Date: 2014/5/31 13:11:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for address_table
-- ----------------------------
CREATE TABLE `address_table` (
  `addressId` int(11) NOT NULL,
  `receiverName` varchar(50) DEFAULT NULL,
  `provice` varchar(30) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `section` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `delliverTime` datetime DEFAULT NULL,
  `addDefault` bit(1) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`addressId`),
  KEY `FKE85473C3BCBE5228` (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for brand_table
-- ----------------------------
CREATE TABLE `brand_table` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(40) DEFAULT NULL,
  `brandStory` longtext,
  `brandLogo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for brandseries_table
-- ----------------------------
CREATE TABLE `brandseries_table` (
  `brandSeriesId` int(11) NOT NULL,
  `brandSeriesName` varchar(30) DEFAULT NULL,
  `brandSeriesIntro` varchar(200) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  PRIMARY KEY (`brandSeriesId`),
  KEY `FKD623352DEAFA3112` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for commodity_table
-- ----------------------------
CREATE TABLE `commodity_table` (
  `commodityId` int(11) NOT NULL,
  `commodityName` varchar(50) DEFAULT NULL,
  `proPlace` varchar(30) DEFAULT NULL,
  `brandName` varchar(40) DEFAULT NULL,
  `brandId` int(11) NOT NULL,
  `brandSeriesName` varchar(30) DEFAULT NULL,
  `brandSeriesId` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `style` varchar(2) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `thickness` varchar(20) DEFAULT NULL,
  `chip` varchar(50) DEFAULT NULL,
  `chipCategory` varchar(2) DEFAULT NULL,
  `watchCase` varchar(20) DEFAULT NULL,
  `dial` varchar(30) DEFAULT NULL,
  `cover` varchar(50) DEFAULT NULL,
  `waterproof` varchar(20) DEFAULT NULL,
  `function` varchar(50) DEFAULT NULL,
  `pack` varchar(100) DEFAULT NULL,
  `originalCost` float DEFAULT NULL,
  `specialCost` float DEFAULT NULL,
  `onSaleTime` datetime DEFAULT NULL,
  `hunmanNum` bigint(20) DEFAULT NULL,
  `saleNum` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`commodityId`),
  KEY `FKAE3E03CEAFA3112` (`brandId`),
  KEY `FKAE3E03CB09A4320` (`brandSeriesId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for commodityfavorites_table
-- ----------------------------
CREATE TABLE `commodityfavorites_table` (
  `commodityFavoritesId` int(11) NOT NULL,
  `commodityId` int(11) DEFAULT NULL,
  `commodityName` varchar(50) DEFAULT NULL,
  `comFavoPrice` float DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`commodityFavoritesId`),
  UNIQUE KEY `commodityId` (`commodityId`),
  UNIQUE KEY `userId` (`userId`),
  KEY `FKD8D29119E92DFA5E` (`commodityId`),
  KEY `FKD8D29119BCBE5228` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for message_table
-- ----------------------------
CREATE TABLE `message_table` (
  `messageId` int(11) NOT NULL,
  `type` varchar(2) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `context` varchar(200) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`messageId`),
  KEY `FKB7A33D96BCBE5228` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
CREATE TABLE `order_table` (
  `OrderId` int(11) NOT NULL,
  `payTime` date DEFAULT NULL,
  `sumMoney` float DEFAULT NULL,
  `payIf` float DEFAULT NULL,
  `deliverIf` float DEFAULT NULL,
  `makeSureIf` float DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `FK75A2F39DBCBE5228` (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for orderdetail_table
-- ----------------------------
CREATE TABLE `orderdetail_table` (
  `OrderDetailId` int(11) NOT NULL,
  `commodityName` varchar(50) DEFAULT NULL,
  `commodityNum` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `commodityId` int(11) DEFAULT NULL,
  `OrderId` int(11) NOT NULL,
  PRIMARY KEY (`OrderDetailId`),
  KEY `FK16F3CCCEE92DFA5E` (`commodityId`),
  KEY `FK16F3CCCE9B88D2E0` (`OrderId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for picture_table
-- ----------------------------
CREATE TABLE `picture_table` (
  `pictureId` int(11) NOT NULL,
  `picPath` varchar(100) DEFAULT NULL,
  `picIntro` varchar(100) DEFAULT NULL,
  `picDefault` bit(1) DEFAULT NULL,
  `commodityId` int(11) NOT NULL,
  PRIMARY KEY (`pictureId`),
  KEY `FK53F6C54DE92DFA5E` (`commodityId`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for power_table
-- ----------------------------
CREATE TABLE `power_table` (
  `powerId` int(11) NOT NULL,
  `looOder` varchar(2) DEFAULT NULL,
  `lookOD` varchar(2) DEFAULT NULL,
  `OhutDown` varchar(2) DEFAULT NULL,
  `addBd` varchar(2) DEFAULT NULL,
  `delBd` varchar(2) DEFAULT NULL,
  `upBd` varchar(2) DEFAULT NULL,
  `looBd` varchar(2) DEFAULT NULL,
  `addBdS` varchar(2) DEFAULT NULL,
  `delBdS` varchar(2) DEFAULT NULL,
  `changeBdS` varchar(2) DEFAULT NULL,
  `addCom` varchar(2) DEFAULT NULL,
  `delCom` varchar(2) DEFAULT NULL,
  `look_updCom` varchar(2) DEFAULT NULL,
  `delU` varchar(2) DEFAULT NULL,
  `lookU` varchar(2) DEFAULT NULL,
  `changeU` varchar(2) DEFAULT NULL,
  `delMsg` varchar(2) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`powerId`),
  UNIQUE KEY `userId` (`userId`),
  KEY `FK2EBF9014BCBE5228` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
CREATE TABLE `user_table` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `passWord` varchar(20) DEFAULT NULL,
  `MSN` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `familyPhone` varchar(20) DEFAULT NULL,
  `cellPhone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passTip` varchar(50) DEFAULT NULL,
  `passAnswer` varchar(50) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `consume` float DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `address_table` VALUES ('15', '黄燕林', '广东', '江门', '市郊', '五邑大学', '652119', '0750-85526599', '13702586029', null, '', '1');
INSERT INTO `address_table` VALUES ('17', 'stone', '广州', '广州', '天河区', '岗顶ddd', '613012', '020-11111111', '13631363290', null, '', '1');
INSERT INTO `address_table` VALUES ('18', 'stone', '广东', '广州', '天河区', '岗顶', '613012', '020-11111111', '13631363290', null, null, '1');
INSERT INTO `address_table` VALUES ('23', '黄燕林', '广州', '广州', '天河区', '岗顶', '613012', '020-11111111', '13702586029', null, '', '2');
INSERT INTO `address_table` VALUES ('24', '毛善', '广州', '广州', '天河区', '岗顶', '1111', '020-11111111', '13631363290', null, '', '2');
INSERT INTO `address_table` VALUES ('25', 'stone', '广东', '广州', '天河区', '岗顶', '613012', '020-11111111', '13631363290', null, null, '2');
INSERT INTO `brand_table` VALUES ('1', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('2', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('3', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('4', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('5', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('6', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('7', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('8', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('9', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('10', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('11', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('12', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('13', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('14', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('15', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('16', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('17', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('18', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('19', '天梭', '这背后有个凄凉的故事...', '天梭无敌');
INSERT INTO `brand_table` VALUES ('20', '雷达', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brand_table` VALUES ('21', '劳力士', '这背后有个凄凉的故事...', '劳力士无敌');
INSERT INTO `brand_table` VALUES ('22', '雷达3333', '这是一个关于【雷达】的故事', '雷达万岁');
INSERT INTO `brandseries_table` VALUES ('1', '天梭Tissot 力洛克系列', '适合身材瘦小的女生..', '1');
INSERT INTO `brandseries_table` VALUES ('2', '力洛克系列 ', '适合各种上层社会人士', '1');
INSERT INTO `brandseries_table` VALUES ('3', '天梭Tissot 天慕系列	', '展现出男人的魅力', '1');
INSERT INTO `brandseries_table` VALUES ('4', '天梭力洛克系列', '富贵的象征', '2');
INSERT INTO `brandseries_table` VALUES ('5', '雷达运动系列', '名符其实', '2');
INSERT INTO `brandseries_table` VALUES ('27', '天梭娉驰100系列', '最受女生欢迎的表', '13');
INSERT INTO `brandseries_table` VALUES ('7', '天梭Tissot 力洛克系列', '适合身材瘦小的女生..', '3');
INSERT INTO `brandseries_table` VALUES ('8', '力洛克系列 ', '适合各种上层社会人士', '3');
INSERT INTO `brandseries_table` VALUES ('9', '天梭Tissot 天慕系列	', '展现出男人的魅力', '3');
INSERT INTO `brandseries_table` VALUES ('10', '天梭力洛克系列', '富贵的象征', '4');
INSERT INTO `brandseries_table` VALUES ('11', '天梭娉驰100系列', '最受女生欢迎的表', '4');
INSERT INTO `brandseries_table` VALUES ('12', '天梭Tissot 力洛克系列', '适合身材瘦小的女生..', '5');
INSERT INTO `brandseries_table` VALUES ('13', '力洛克系列 ', '适合各种上层社会人士', '5');
INSERT INTO `brandseries_table` VALUES ('14', '天梭Tissot 天慕系列	', '展现出男人的魅力', '5');
INSERT INTO `brandseries_table` VALUES ('15', '天梭力洛克系列', '富贵的象征', '6');
INSERT INTO `brandseries_table` VALUES ('16', '天梭娉驰100系列', '最受女生欢迎的表', '6');
INSERT INTO `brandseries_table` VALUES ('17', '天梭Tissot 力洛克系列', '适合身材瘦小的女生..', '7');
INSERT INTO `brandseries_table` VALUES ('18', '力洛克系列 ', '适合各种上层社会人士', '7');
INSERT INTO `brandseries_table` VALUES ('19', '天梭Tissot 天慕系列	', '展现出男人的魅力', '7');
INSERT INTO `brandseries_table` VALUES ('20', '天梭力洛克系列', '富贵的象征', '8');
INSERT INTO `brandseries_table` VALUES ('21', '天梭娉驰100系列', '最受女生欢迎的表', '8');
INSERT INTO `brandseries_table` VALUES ('22', '雷达运动系列', '名符其实', '8');
INSERT INTO `brandseries_table` VALUES ('23', '雷达高贵系列', '富贵的象征', '9');
INSERT INTO `brandseries_table` VALUES ('24', '天梭娉驰100系列', '最受女生欢迎的表', '10');
INSERT INTO `brandseries_table` VALUES ('25', '天梭娉驰100系列', '最受女生欢迎的表', '11');
INSERT INTO `brandseries_table` VALUES ('26', '雷达高贵系列', '富贵的象征', '12');
INSERT INTO `brandseries_table` VALUES ('28', '雷达高贵系列', '富贵的象征', '14');
INSERT INTO `brandseries_table` VALUES ('29', '天梭娉驰100系列', '最受女生欢迎的表', '15');
INSERT INTO `brandseries_table` VALUES ('30', '雷达高贵系列', '富贵的象征', '16');
INSERT INTO `brandseries_table` VALUES ('31', '天梭娉驰100系列', '最受女生欢迎的表', '17');
INSERT INTO `brandseries_table` VALUES ('32', '雷达高贵系列', '富贵的象征', '18');
INSERT INTO `brandseries_table` VALUES ('33', '天梭娉驰100系列', '最受女生欢迎的表', '19');
INSERT INTO `brandseries_table` VALUES ('34', '雷达高贵系列', '富贵的象征', '20');
INSERT INTO `brandseries_table` VALUES ('35', '迷你型系列', '适合身材瘦小的女生..', '21');
INSERT INTO `brandseries_table` VALUES ('36', '黄金系列', '适合各种上层社会人士', '21');
INSERT INTO `brandseries_table` VALUES ('37', '高富帅系列', '展现出男人的魅力', '21');
INSERT INTO `brandseries_table` VALUES ('38', '钻石系列', '富贵的象征', '22');
INSERT INTO `brandseries_table` VALUES ('39', '百富美系列', '最受女生欢迎的表', '22');
INSERT INTO `commodity_table` VALUES ('1', '天梭-手表', null, '天梭', '1', '力洛克系列 ', '2', null, null, null, null, '机械表 ', null, null, '银色 ', null, '防水', null, null, '4000', '3480', '2014-05-20 17:36:52', '2000', '1500', '蓝宝石水晶玻璃/日历/防水');
INSERT INTO `commodity_table` VALUES ('2', '雷达-手表', null, '雷达', '2', '雷达运动系列', '5', null, null, null, null, '机械表 ', null, null, '银色 ', null, '防水', null, null, '5000', '4500', '2014-05-20 17:36:52', '1080', '1000', '矿物质玻璃/小秒盘/防水');
INSERT INTO `commodity_table` VALUES ('5', '天梭-手表3', null, '天梭', '10', '天梭娉驰100系列', '24', 'T41.1.483.33', null, '39毫米', '7mm', '机械表3 ', null, '精钢抛光', '银色 3', '蓝宝石水晶玻璃 ', '防水3', '日历', '包装盒、相关文件、说明书、保修卡', '5540', '4590', '2014-05-22 10:21:08', '2236', '1439', '被誉为世上最性感的运动腕表');
INSERT INTO `commodity_table` VALUES ('3', '天梭-手表2', null, '天梭', '7', '力洛克系列 ', '18', 'T41.1.483.33', null, '39毫米', '7mm', '机械表 ', null, '精钢抛光', '银色 ', '蓝宝石水晶玻璃 ', '防水', '日历', '包装盒、相关文件、说明书、保修卡', '4000', '4390', '2014-05-22 10:10:05', '2230', '1530', '以诞生地为名的150周年纪念款');
INSERT INTO `commodity_table` VALUES ('4', '雷达-手表2', null, '雷达', '8', '雷达运动系列', '22', 'V73091237790', null, '39毫米', '7mm', '机械表 ', null, '小秒盘', '银色 ', '矿物质玻璃 ', '防水', '日历', '包装盒、相关文件、说明书、保修卡', '3000', '2390', '2014-05-22 10:10:05', '2015', '1112', '贵族欧式风格 隽永典雅');
INSERT INTO `commodity_table` VALUES ('6', '雷达-手表3', null, '雷达', '9', '雷达高贵系列', '23', 'V73091237790', null, '39毫米', '7mm', '机械表 ', null, '小秒盘', '银色 ', '矿物质玻璃 ', '防水', '日历', '包装盒、相关文件、说明书、保修卡', '3022', '2990', '2014-05-22 10:21:08', '2115', '1562', '贵族欧式风格 隽永典雅');
INSERT INTO `commodity_table` VALUES ('7', '天梭-手表4', null, '天梭', '11', '天梭娉驰100系列', '25', 'T41.1.483.33', null, '39毫米', '7mm', '机械表3 ', null, '精钢抛光', '银色 3', '蓝宝石水晶玻璃 ', '防水3', '日历', '包装盒、相关文件、说明书、保修卡', '5640', '4590', '2014-05-22 10:26:07', '2336', '1555', '被誉为世上最性感的运动腕表');
INSERT INTO `commodity_table` VALUES ('8', '雷达-手表4', null, '雷达', '12', '雷达高贵系列', '26', 'V73091237790', null, '39毫米', '7mm', '机械表 ', null, '小秒盘', '银色 ', '矿物质玻璃 ', '防水', '日历', '包装盒、相关文件、说明书、保修卡', '3044', '2990', '2014-05-22 10:26:07', '2144', '1957', '贵族欧式风格 隽永典雅');
INSERT INTO `commodity_table` VALUES ('9', '天梭-手表5', null, '天梭', '13', '天梭娉驰100系列', '27', 'T41.1.483.33', null, '39毫米', '7mm', '机械表3 ', null, '精钢抛光', '银色 3', '蓝宝石水晶玻璃 ', '防水3', '日历', '包装盒、相关文件、说明书、保修卡', '5640', '4590', '2014-05-22 10:32:03', '2246', '1429', '被誉为世上最性感的运动腕表');
INSERT INTO `commodity_table` VALUES ('10', '雷达-手表5', null, '雷达', '14', '雷达高贵系列', '28', 'V73091237790', null, '39毫米', '7mm', '机械表 ', null, '小秒盘', '银色 ', '矿物质玻璃 ', '防水', '日历', '包装盒、相关文件、说明书、保修卡', '4022', '3990', '2014-05-22 10:32:03', '235', '1522', '贵族欧式风格 隽永典雅');
INSERT INTO `commodity_table` VALUES ('11', '天梭-手表6', null, '天梭', '15', '天梭娉驰100系列', '29', 'T41.1.483.33', null, '39毫米', '7mm', '机械表5 ', null, '精钢抛光', '银色 5', '蓝宝石水晶玻璃 ', '防水5', '日历', '包装盒、相关文件、说明书、保修卡', '5640', '4590', '2014-05-22 10:35:42', '2246', '1429', '被誉为世上最性感的运动腕表');
INSERT INTO `commodity_table` VALUES ('12', '雷达-手表6', null, '雷达', '16', '雷达高贵系列', '30', 'V73091237790', null, '39毫米', '7mm', '机械表 5', null, '小秒盘5', '银色 5', '矿物质玻璃 ', '防水5', '日历', '包装盒、相关文件、说明书、保修卡', '4022', '3990', '2014-05-22 10:35:42', '235', '1522', '贵族欧式风格 隽永典雅5');
INSERT INTO `commodity_table` VALUES ('13', '天梭-手表7', null, '天梭', '17', '天梭娉驰100系列', '31', 'T41.1.483.33', null, '39毫米', '7mm', '机械表5 ', null, '精钢抛光', '银色 5', '蓝宝石水晶玻璃 ', '防水5', '日历', '包装盒、相关文件、说明书、保修卡', '6640', '5590', '2014-05-22 10:38:58', '3246', '2429', '被誉为世上最性感的运动腕表');
INSERT INTO `commodity_table` VALUES ('14', '雷达-手表7', null, '雷达', '18', '雷达高贵系列', '32', 'V73091237790', null, '39毫米', '7mm', '机械表 7', null, '小秒盘7', '银色 7', '矿物质玻璃 ', '防水5', '日历', '包装盒、相关文件、说明书、保修卡', '5022', '3990', '2014-05-22 10:38:58', '2235', '1222', '贵族欧式风格 隽永典雅5');
INSERT INTO `commodity_table` VALUES ('16', '雷达-手表8', null, '雷达', '20', '雷达高贵系列', '34', 'V73091237790', null, '39毫米', '7mm', '机械表 8', null, '小秒盘7', '银色 8', '矿物质玻璃 ', '防水8', '日历', '包装盒、相关文件、说明书、保修卡', '6022', '3990', '2014-05-22 10:49:40', '3235', '2222', '贵族欧式风格 隽永典雅8');
INSERT INTO `commodity_table` VALUES ('17', '天梭-手表9', null, '天梭', '19', '天梭娉驰100系列', '33', 'T41.1.483.33', null, '39毫米', '7mm', '机械表9 ', null, '精钢抛光', '银色9', '蓝宝石水晶玻璃 ', '防水9', '日历', '包装盒、相关文件、说明书、保修卡', '2640', '1590', '2014-05-22 10:49:40', '6246', '5429', '被誉为世上最性感的运动腕表');
INSERT INTO `commodity_table` VALUES ('18', '钻石-手表', null, '雷达', '2', '钻石系列', '4', null, null, null, null, null, null, null, null, null, null, null, null, '5000', '0', '2014-05-30 17:50:54', '0', '0', '被誉为世上最性感的运动腕表');
INSERT INTO `commodity_table` VALUES ('19', '黄宝石-手表', null, '劳力士', '1', '黄金系列', '2', null, null, null, null, null, null, null, null, null, null, null, null, '4000', '0', '2014-05-30 17:50:58', '0', '0', '被誉为世上最性感的运动腕表');
INSERT INTO `commodityfavorites_table` VALUES ('1', '1', '天梭-手表', '0', '1');
INSERT INTO `commodityfavorites_table` VALUES ('2', '3', '黄宝石-手表', '0', '2');
INSERT INTO `message_table` VALUES ('1', '1', '关于黄宝石的..', '黄宝石真的很好...', '1');
INSERT INTO `message_table` VALUES ('2', '1', '关于红宝石的..', '红宝石真的很好...', '1');
INSERT INTO `message_table` VALUES ('3', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('4', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('5', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('6', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('7', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('8', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('12', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('17', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('18', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('19', '1', '1', '1', '1');
INSERT INTO `message_table` VALUES ('20', '1', '1', '1', '1');
INSERT INTO `order_table` VALUES ('1', '2014-05-20', '23000', '1', '1', '1', '1');
INSERT INTO `order_table` VALUES ('2', '2014-05-24', '23000', '0', '0', '1', '1');
INSERT INTO `order_table` VALUES ('5', '2014-05-29', '8770', '0', '0', '0', '1');
INSERT INTO `order_table` VALUES ('6', '2014-05-29', '11170', '0', '0', '0', '1');
INSERT INTO `order_table` VALUES ('7', '2014-05-29', '11170', '0', '0', '0', '1');
INSERT INTO `orderdetail_table` VALUES ('1', '天梭-手表', '2', '4000', '1', '1');
INSERT INTO `orderdetail_table` VALUES ('2', '雷达-手表', '3', '5000', '2', '1');
INSERT INTO `orderdetail_table` VALUES ('3', '黄宝石-手表', '2', '4000', '3', '1');
INSERT INTO `orderdetail_table` VALUES ('4', '钻石-手表', '3', '5000', '4', '1');
INSERT INTO `orderdetail_table` VALUES ('9', '天梭-手表9', '2', '1590', '17', '5');
INSERT INTO `orderdetail_table` VALUES ('10', '天梭-手表7', '1', '5590', '13', '5');
INSERT INTO `orderdetail_table` VALUES ('11', '天梭-手表9', '1', '1590', '17', '6');
INSERT INTO `orderdetail_table` VALUES ('12', '雷达-手表8', '1', '3990', '16', '5');
INSERT INTO `orderdetail_table` VALUES ('13', '天梭-手表7', '1', '5590', '13', '5');
INSERT INTO `orderdetail_table` VALUES ('14', '天梭-手表9', '1', '1590', '17', '7');
INSERT INTO `orderdetail_table` VALUES ('15', '天梭-手表7', '1', '5590', '13', '5');
INSERT INTO `orderdetail_table` VALUES ('16', '雷达-手表8', '1', '3990', '16', '5');
INSERT INTO `orderdetail_table` VALUES ('17', '天梭-手表9', '1', '1590', '17', '8');
INSERT INTO `orderdetail_table` VALUES ('18', '天梭-手表7', '2', '5590', '13', '9');
INSERT INTO `orderdetail_table` VALUES ('19', '天梭-手表9', '1', '1590', '17', '10');
INSERT INTO `orderdetail_table` VALUES ('20', '天梭-手表9', '1', '1590', '17', '11');
INSERT INTO `orderdetail_table` VALUES ('21', '天梭-手表9', '2', '1590', '17', '12');
INSERT INTO `picture_table` VALUES ('1', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片.....', '', '1');
INSERT INTO `picture_table` VALUES ('2', 'pic/15.jpg', '这是 [天梭-手表] 的相片之一.....', '', '1');
INSERT INTO `picture_table` VALUES ('3', 'pic/16.jpg', '这是 [雷达-手表] 的默认相片.....', '', '2');
INSERT INTO `picture_table` VALUES ('4', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片.....', '', '3');
INSERT INTO `picture_table` VALUES ('5', 'pic/15.jpg', '这是 [天梭-手表] 的相片之一.....', '', '3');
INSERT INTO `picture_table` VALUES ('6', 'pic/16.jpg', '这是 [雷达-手表] 的默认相片.....', '', '4');
INSERT INTO `picture_table` VALUES ('7', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片.....', '', '9');
INSERT INTO `picture_table` VALUES ('8', 'pic/15.jpg', '这是 [天梭-手表] 的相片之一.....', '', '9');
INSERT INTO `picture_table` VALUES ('9', 'pic/16.jpg', '这是 [雷达-手表] 的默认相片.....', '', '10');
INSERT INTO `picture_table` VALUES ('10', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片.....', '', '5');
INSERT INTO `picture_table` VALUES ('11', 'pic/16.jpg', '这是 [雷达-手表] 的默认相片.....', '', '6');
INSERT INTO `picture_table` VALUES ('12', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片....', '', '7');
INSERT INTO `picture_table` VALUES ('13', 'pic/15.jpg', '这是 [雷达-手表] 的默认相片.....', '', '8');
INSERT INTO `picture_table` VALUES ('14', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片.....', '', '11');
INSERT INTO `picture_table` VALUES ('15', 'pic/15.jpg', '这是 [天梭-手表] 的相片之一.....', '', '11');
INSERT INTO `picture_table` VALUES ('16', 'pic/16.jpg', '这是 [雷达-手表] 的默认相片.....', '', '12');
INSERT INTO `picture_table` VALUES ('17', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片.....', '', '13');
INSERT INTO `picture_table` VALUES ('18', 'pic/15.jpg', '这是 [天梭-手表] 的相片之一.....', '', '13');
INSERT INTO `picture_table` VALUES ('19', 'pic/16.jpg', '这是 [雷达-手表] 的默认相片.....', '', '14');
INSERT INTO `picture_table` VALUES ('22', 'pic/16.jpg', '这是 [雷达-手表] 的默认相片.....', '', '16');
INSERT INTO `picture_table` VALUES ('23', 'pic/15.jpg', '这是 [天梭-手表] 的默认相片.....', '', '17');
INSERT INTO `picture_table` VALUES ('24', 'pic/16.jpg', '这是 [天梭-手表] 的相片之一.....', '', '17');
INSERT INTO `picture_table` VALUES ('25', 'src/pic/15.jpg', '这是 [黄宝石-手表] 的默认相片.....', '', '1');
INSERT INTO `picture_table` VALUES ('26', 'src/pic/15.jpg', '这是 [黄宝石-手表] 的相片之一.....', '', '1');
INSERT INTO `picture_table` VALUES ('27', 'src/pic/16.jpg', '这是 [钻石-手表] 的默认相片.....', '', '2');
INSERT INTO `power_table` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '5');
INSERT INTO `power_table` VALUES ('2', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `power_table` VALUES ('3', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4');
INSERT INTO `power_table` VALUES ('4', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11');
INSERT INTO `user_table` VALUES ('1', 'yjw', '111', 'ddd', '99999999999', '020-11111111', '020-11111111', '13631363250', 'dddd', 'old_address', '111', '2014-05-28 15:25:11', '0', '0', null, '0');
INSERT INTO `user_table` VALUES ('2', 'yjw2', 'admin', 'dddd', '285388571', '020-11111111', '020-11111111', '13428282119', '446591998@qq.com', 'old_address', '中山', '2014-05-29 00:09:34', '0', '0', null, '0');
INSERT INTO `user_table` VALUES ('3', 'admin1', '111', 'ddd', 'dsssss', '020-11111111', '020-11111111', '111111', 'dddd', 'old_address', '中山', '2014-05-31 09:51:12', '0', '0', null, '1');
INSERT INTO `user_table` VALUES ('4', 'admin2', '111', null, null, null, null, '13428282119', null, null, null, '2014-05-31 00:50:56', '0', '0', null, '1');
INSERT INTO `user_table` VALUES ('5', 'admin', '111', null, null, null, null, '111', null, null, null, '2014-05-31 13:02:55', '0', '0', null, '2');
INSERT INTO `user_table` VALUES ('6', '黄燕林', '111', null, null, null, null, '13428282119', null, null, null, '2014-05-26 13:55:59', '0', '0', null, '0');
INSERT INTO `user_table` VALUES ('7', 'yjw1', '111', 'dd', 'dd', 'dd', 'dd', 'dd', 'ddd', 'old_address', '普宁', '2014-05-29 01:15:05', '0', '0', null, '0');
INSERT INTO `user_table` VALUES ('10', 'yjw10', '111', 'dd', 'dd', 'dd', 'dd', 'dd', 'ddd', 'old_address', '普宁', '2014-05-26 15:52:09', '0', '0', null, '0');
INSERT INTO `user_table` VALUES ('9', 'yjw9', '111', 'dd', 'dd', 'dd', 'dd', 'dd', 'ddd', 'old_address', '普宁', '2014-05-26 15:52:09', '0', '0', null, '1');
INSERT INTO `user_table` VALUES ('11', 'yjw11', '111', 'dd', 'dd', 'dd', 'dd', 'dd', 'ddd', 'old_address', '普宁', '2014-05-31 09:09:19', '0', '0', null, '1');
