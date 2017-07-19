SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `wst_shops`;
CREATE TABLE `wst_shops` (
  `shopId` int(11) NOT NULL AUTO_INCREMENT,
  `shopSn` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `areaIdPath` varchar(255) NOT NULL,
  `areaId` int(11) NOT NULL,
  `isSelf` tinyint(4) NOT NULL DEFAULT '0',
  `shopName` varchar(100) NOT NULL,
  `shopkeeper` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `shopCompany` varchar(255) NOT NULL,
  `shopImg` varchar(150) NOT NULL,
  `shopTel` varchar(40) NOT NULL,
  `shopQQ` varchar(50) DEFAULT NULL,
  `shopWangWang` varchar(50) DEFAULT NULL,
  `shopAddress` varchar(255) NOT NULL,
  `bankId` int(11) NOT NULL,
  `bankNo` varchar(20) NOT NULL,
  `bankUserName` varchar(50) NOT NULL,
  `isInvoice` tinyint(4) NOT NULL DEFAULT '0',
  `invoiceRemarks` varchar(255) DEFAULT NULL,
  `serviceStartTime` time NOT NULL DEFAULT '08:30:00',
  `serviceEndTime` time NOT NULL DEFAULT '22:30:00',
  `freight` int(11) DEFAULT '0',
  `shopAtive` tinyint(4) NOT NULL DEFAULT '1',
  `shopStatus` tinyint(4) NOT NULL DEFAULT '1',
  `statusDesc` varchar(255) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`shopId`),
  KEY `shopStatus` (`shopStatus`,`dataFlag`) USING BTREE,
  KEY `areaIdPath` (`areaIdPath`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO `wst_shops` VALUES ('1', 'S000000001', '1', '440000_440100_440106_', '440106', '1', 'WSTMart自营超市', 'wstmart', '13888888888', 'WSTMart自营超市', 'upload/shops/2016-10/5800ac97d0c24.png', '13888888888', '153289970', null, '燕岭路89号燕侨大厦', '24', '2343243124312412', '是暗室逢灯', '0', '', '08:30:00', '22:30:00', '5', '1', '1', '', '1', '2016-10-08 10:27:28'),
('2', 'S000000002', '3', '440000_440100_440106_', '440106', '0', '新鲜鲜果旗舰店', '新鲜鲜果', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57f8a7f3ef8ea.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '234234234324', '说法', '0', '', '08:30:00', '22:30:00', '5', '1', '1', '', '1', '2016-10-08 16:02:44'),
('3', 'S000000003', '4', '440000_440100_440106_', '440106', '0', '海源水果蔬菜店', '海源', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57f8f801ced69.jpg', '18902295525', '153289970', null, '燕岭路89号燕侨大厦', '24', '234234234234324', '地方', '0', '', '08:30:00', '22:30:00', '4', '1', '1', '', '1', '2016-10-08 21:44:57'),
('4', 'S000000004', '7', '440000_440100_440106_', '440106', '0', '维达自营旗舰店', '维达', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fa2a9dba7c2.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '234234243234242', '水电费', '0', '', '08:30:00', '22:30:00', '4', '1', '1', '', '1', '2016-10-09 19:32:17'),
('5', 'S000000005', '8', '440000_440100_440106_', '440106', '0', '乐居家具日用旗舰店', '商淘', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fa3fd1377e1.jpg', '18902295525', '153289970', null, '燕岭路89号燕侨大厦', '24', '23424234234', '234是', '1', '仔细核对，开错无补', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-09 21:03:01'),
('6', 'S000000006', '9', '440000_440100_440106_', '440106', '0', 'wstmart酒水旗舰店', '酒水', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57faf4a944a87.jpg', '18902295525', '153289970', null, '燕岭路89号燕侨大厦', '24', '234242322', '撒旦法', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 09:53:50'),
('7', 'S000000007', '10', '440000_440100_440106_', '440106', '0', 'wstmart粮油食品旗舰店', '粮油食品', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb0185b1d6d.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '2423234242', '的', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 10:49:35'),
('8', 'S000000008', '11', '440000_440100_440106_', '440106', '0', 'wstmart三只松鼠官方旗舰店', '松鼠', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb39ff7f5e2.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '242342423', '4阿萨法', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 14:50:07'),
('9', 'S000000009', '12', '440000_440100_440106_', '440106', '0', 'Sisley希思黎国际专营店', '希思黎', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb4c1a9d7f8.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '324242323', '发送', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 16:07:38'),
('10', 'S000000010', '13', '440000_440100_440106_', '440106', '0', '奥蒂斯特保健旗舰店', '奥蒂斯特', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb77a90c799.png', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '2343423432', '是的', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 19:15:34'),
('11', 'S000000011', '14', '440000_440100_440106_', '440106', '0', '华为荣耀旗舰店', '荣耀', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fc85b7c6bb4.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '3242323423423', '阿萨德', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-11 14:25:24');