SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `wst_datas`;
CREATE TABLE `wst_datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) NOT NULL DEFAULT '0',
  `dataName` varchar(255) NOT NULL,
  `dataVal` varchar(255) NOT NULL,
  `dataSort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wst_datas
-- ----------------------------
INSERT INTO `wst_datas` VALUES ('1', '1', '下错单', '1', '0'),
 ('2', '1', '配送地址有误', '2', '0'),
 ('3', '1', '我有更好的商品想买', '3', '0'),
 ('4', '1', '商品信息与商家描述的不一致', '4', '0'),
 ('5', '1', '其他', '5', '0'),
 ('6', '2', '没有按照约定的时间送货', '1', '0'),
 ('7', '2', '商品质量与描述的不一致', '2', '0'),
 ('8', '2', '商品在运送过程中受到损坏', '3', '0'),
 ('9', '2', '其他', '10000', '0'),
 ('10', '3', '商品评价', 'appraises', '0'),
 ('11', '3', '商城广告', 'adspic', '0'),
 ('12', '3', '品牌', 'brands', '0'),
 ('13', '3', '商城配置', 'sysconfigs', '0'),
 ('14', '3', '临时目录', 'temp', '0'),
 ('15', '3', '职员信息', 'staffs', '0'),
 ('16', '3', '编辑器', 'image', '0'),
 ('17', '3', '友情链接', 'friendlinks', '0'),
 ('18', '3', '会员等级', 'userranks', '0'),
 ('19', '3', '会员信息', 'users', '0'),
 ('20', '3', '店铺认证', 'accreds', '0'),
 ('21', '3', '店铺信息', 'shops', '0'),
 ('22', '3', '商品信息', 'goods', '0'),
 ('23', '3', '商家广告', 'shopconfigs', '0'),
 ('24', '3', '订单投诉', 'complains', '0');
