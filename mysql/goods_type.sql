/*
商品类型表

Source Server         : MySQL
Source Server Version : 50718

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-06-24 16:49:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '类型名',
  `menu_id` int(10) NOT NULL COMMENT '菜单id',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `ishd` int(10) NOT NULL DEFAULT '1' COMMENT '是否为活动',
  PRIMARY KEY (`id`),
  KEY `emnu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('1', '连衣裙', '2', 'https://img.alicdn.com/tfs/TB1YTCkqXOWBuNjy0FiXXXFxVXa-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('2', 'T恤', '2', 'https://img.alicdn.com/tfs/TB1I0W2qf1TBuNjy0FjXXajyXXa-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('3', '衬衫', '2', 'https://img.alicdn.com/tfs/TB1XzKuqXuWBuNjSspnXXX1NVXa-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('4', '雪纺衫', '2', 'https://img.alicdn.com/tfs/TB1JjmnqkOWBuNjSsppXXXPgpXa-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('5', '裤子', '2', 'https://img.alicdn.com/tfs/TB1kO5nqkOWBuNjSsppXXXPgpXa-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('6', '牛仔裤', '2', 'https://img.alicdn.com/tfs/TB1H6enqkOWBuNjSsppXXXPgpXa-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('7', '小白鞋', '3', 'https://img.alicdn.com/tfs/TB1gh88SVXXXXciaXXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('8', '乐福鞋', '3', 'https://img.alicdn.com/tfs/TB1yNqkSVXXXXXBXVXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('9', '草编鞋', '3', 'https://img.alicdn.com/tfs/TB1lwyrSVXXXXbCXFXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('10', 'T恤', '4', 'https://img.alicdn.com/tfs/TB1h.PxqmBYBeNjy0FeXXbnmFXa-100-100.png_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('11', '衬衫', '4', 'https://img.alicdn.com/tfs/TB1faWZqhGYBuNjy0FnXXX5lpXa-100-100.png_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('12', 'POLO衫', '4', 'https://img.alicdn.com/tfs/TB1EMREqbSYBuNjSspiXXXNzpXa-100-100.png_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('13', '夹克', '4', 'https://img.alicdn.com/tfs/TB1vUWzqkCWBuNjy0FaXXXUlXXa-100-100.png_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('14', '休闲裤', '4', 'https://img.alicdn.com/tfs/TB1qW4YqbGYBuNjy0FoXXciBFXa-100-100.png_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('15', '牛仔裤', '4', 'https://img.alicdn.com/tfs/TB11StUqXGWBuNjy0FbXXb4sXXa-100-100.png_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('16', '平板电视', '10', 'https://img.alicdn.com/tps/i1/TB1IQsKGVXXXXXLXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('17', '洗衣机', '10', 'https://img.alicdn.com/tps/i4/TB1TcZzGVXXXXc_apXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('18', '冰箱', '10', 'https://img.alicdn.com/tps/i3/TB19_gEGVXXXXbAXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('19', '电饭煲', '10', 'https://img.alicdn.com/tps/i2/TB18cUQGVXXXXanXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('20', '空气净化器', '10', 'https://img.alicdn.com/tps/i4/TB1do7HGVXXXXaoXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('21', '扫地机器人', '10', 'https://img.alicdn.com/tps/i3/TB1CjwPGVXXXXa1XXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('22', '护肤套装', '11', 'https://img.alicdn.com/tps/i4/TB1ZsMAGVXXXXcMaXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('23', '面膜', '11', 'https://img.alicdn.com/tps/i1/TB1IDECGVXXXXXOXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('24', '身体护理', '11', 'https://img.alicdn.com/tps/i4/TB19M7HGVXXXXaGXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '0');
INSERT INTO `goods_type` VALUES ('25', null, '1', 'https://img.alicdn.com/tps/i4/TB1PhrmHpXXXXX0XXXXXD.cNVXX-400-200.png_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('26', null, '1', 'https://img.alicdn.com/tps/i4/TB11KlzHXXXXXcKXXXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('27', null, '1', 'https://img.alicdn.com/tps/i4/T1bH9CXmhfXXb1upjX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('28', null, '1', 'https://img.alicdn.com/tps/i4/TB14PoAGVXXXXXXaXXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('29', null, '1', 'https://img.alicdn.com/tps/i4/T1QnFTXXpFXXb1upjX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('30', null, '1', 'https://img.alicdn.com/tps/i4/TB1MWWGGVXXXXbeaXXXSutbFXXX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('31', null, '1', 'https://img.alicdn.com/tps/i4/T1OnjUXdBaXXXQXDnq-90-45.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('32', null, '1', 'https://img.alicdn.com/tps/i4/T1h6otXftXXXb1upjX_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('33', null, '1', 'https://img.alicdn.com/tps/i4/TB1W423GFXXXXa_aXXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('34', null, '1', 'https://img.alicdn.com/tps/i4/TB1C6jpHpXXXXbrXFXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('35', null, '1', 'https://img.alicdn.com/tps/i4/TB1ohvdHpXXXXcGXpXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('36', null, '1', 'https://img.alicdn.com/tps/i4/TB1xdLkHpXXXXcpXFXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('37', null, '1', 'https://img.alicdn.com/tps/i4/TB1zmjiHpXXXXXbXFXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('38', null, '1', 'https://img.alicdn.com/tps/i4/TB1lqjtGVXXXXX2apXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('39', null, '1', 'https://img.alicdn.com/tps/i4/TB2w6r8jVXXXXXiXpXXXXXXXXXX_!!2428721558.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('40', null, '1', 'https://img.alicdn.com/tps/i4/TB1TqhoHXXXXXXgaXXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('41', null, '1', 'https://img.alicdn.com/tps/i4/TB24dj_jVXXXXXaXpXXXXXXXXXX_!!2183615086.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('42', null, '1', 'https://img.alicdn.com/tps/i4/TB1iJTdGVXXXXclaXXXSutbFXXX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('43', null, '1', 'https://img.alicdn.com/tps/i4/TB1k7SaGVXXXXXZaXXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('44', null, '1', 'https://img.alicdn.com/tps/i4/TB17P9qHpXXXXcXXpXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('45', null, '1', 'https://img.alicdn.com/tps/i4/TB1EeysHpXXXXaRXpXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('46', null, '1', 'https://img.alicdn.com/tps/i4/TB1kuopGFXXXXbBaXXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('47', null, '1', 'https://img.alicdn.com/tps/i4/TB1HG6gGVXXXXaZapXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('48', null, '1', 'https://img.alicdn.com/tps/i4/TB1GKuqHpXXXXcmXpXXSutbFXXX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('49', null, '1', 'https://img.alicdn.com/tps/i4/TB1Na.pGFXXXXcwXVXXSutbFXXX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('50', null, '1', 'https://img.alicdn.com/tps/i4/TB1nfMUGpXXXXalXXXXSutbFXXX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('51', null, '1', 'https://img.alicdn.com/tps/i4/TB1TOmBGFXXXXacXFXXSutbFXXX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('52', null, '1', 'https://img.alicdn.com/tps/i4/TB1OoXeHXXXXXcnXVXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('53', null, '1', 'https://img.alicdn.com/tps/i4/TB1Il1oHpXXXXcSXVXXwu0bFXXX.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('54', null, '1', 'https://img.alicdn.com/tps/i4/TB1_AMXGFXXXXb2aXXXSutbFXXX.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('55', '欧美风', '2', 'https://img.alicdn.com/tps/TB1jR36JpXXXXbXXFXXXXXXXXXX-800-800.png_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('56', '文艺风', '2', 'https://img.alicdn.com/tps/TB1hqU1JpXXXXbtXFXXXXXXXXXX-800-800.png_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('57', '街头风', '2', 'https://img.alicdn.com/tps/TB1mrU7JpXXXXXbXFXXXXXXXXXX-800-800.png_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('58', '甜美风', '2', 'https://img.alicdn.com/tps/TB1lO3_JpXXXXa7XpXXXXXXXXXX-1200-1200.png_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('59', '学院风', '2', 'https://img.alicdn.com/tps/TB1WWg1JpXXXXamXVXXXXXXXXXX-800-800.png_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('60', '田园风', '2', 'https://img.alicdn.com/tps/TB1giGtJXXXXXcmXVXXXXXXXXXX-800-800.png_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('61', '玛丽珍', '3', 'https://img.alicdn.com/tfs/TB1mvSHSVXXXXcxXXXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('62', '芭蕾鞋', '3', 'https://img.alicdn.com/tfs/TB1G31MSVXXXXbRXXXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('63', '蛋糕鞋', '3', 'https://img.alicdn.com/tfs/TB1.tR1SVXXXXbdapXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('64', '穆勒鞋', '3', 'https://img.alicdn.com/tfs/TB1UBurSVXXXXbyXFXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('65', '罗马鞋', '3', 'https://img.alicdn.com/tfs/TB1NKOLSVXXXXbUXXXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('66', '奶奶鞋', '3', 'https://img.alicdn.com/tfs/TB1HBCtSVXXXXaAXFXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('67', '绑带鞋', '3', 'https://img.alicdn.com/tfs/TB1mdenSVXXXXXlXVXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('68', '商场同款', '4', 'https://img.alicdn.com/imgextra/i3/2228361831/TB2Upzjafal9eJjSZFzXXaITVXa_!!2228361831.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('69', '大牌上新', '4', 'https://img.alicdn.com/imgextra/i1/2228361831/TB2oBRBaBfM8KJjSZPiXXXdspXa_!!2228361831.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('70', '国际大牌', '4', 'https://img.alicdn.com/imgextra/i1/2228361831/TB2NJHZb_nI8KJjy0FfXXcdoVXa_!!2228361831.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('71', '时尚品牌', '4', 'https://img.alicdn.com/tps/i1/TB1z9wcHXXXXXaGaVXXpUea5FXX-118-148.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('72', '青春流行', '4', 'https://img.alicdn.com/imgextra/i2/397341302/TB2RNjDb0zJ8KJjSspkXXbF7VXa_!!397341302.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('73', '商务绅士', '4', 'https://img.alicdn.com/tps/i1/TB1Q.5JHpXXXXXlXXXXpUea5FXX-118-148.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('74', '设计潮牌', '4', 'https://img.alicdn.com/imgextra/i4/3329152180/TB2CIvKb4HI8KJjy1zbXXaxdpXa_!!3329152180.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('75', '中老年 ', '4', 'https://img.alicdn.com/tfs/TB14xIqbY_I8KJjy1XaXXbsxpXa-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('76', '大码', '4', 'https://img.alicdn.com/tfs/TB18pEqb2DH8KJjy1XcXXcpdXXa-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('77', '沙滩凉鞋', '5', 'https://img.alicdn.com/tfs/TB19wqyQFXXXXX7XpXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('78', '洞洞鞋', '5', 'https://img.alicdn.com/tfs/TB16gmXQFXXXXakXVXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('79', '凉鞋', '5', 'https://img.alicdn.com/tfs/TB1GNamQFXXXXXoXFXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('80', '人字拖', '5', 'https://img.alicdn.com/tfs/TB1G79JQFXXXXXYXXXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('81', '一字拖', '5', 'https://img.alicdn.com/tfs/TB1nVWlQFXXXXapXFXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('82', '包头拖', '5', 'https://img.alicdn.com/tfs/TB1AKaaQFXXXXc7XVXXXXXXXXXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('83', '文胸套装', '6', 'https://img.alicdn.com/tps/i1/TB1nxEKGVXXXXaNXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('84', '聚拢文胸', '6', 'https://img.alicdn.com/tps/i1/TB1juQOGVXXXXcVXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('85', '光面文胸', '6', 'https://img.alicdn.com/tps/i4/TB11cZPGVXXXXcgXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('86', '上托文胸', '6', 'https://img.alicdn.com/tps/i2/TB1HvQQGVXXXXaOXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('87', '少女文胸', '6', 'https://img.alicdn.com/tps/i3/TB1nocUGVXXXXX9XXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('88', '大牌文胸', '6', 'https://img.alicdn.com/tps/i3/TB1_iMQGVXXXXaUXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('89', '调整文胸', '6', 'https://img.alicdn.com/tps/i4/TB1E6EGGVXXXXcmaXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('90', '大码文胸', '6', 'https://img.alicdn.com/tps/i2/TB1qIsSGVXXXXcFXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('91', '无钢圈文胸', '6', 'https://img.alicdn.com/tps/i2/TB130IRGVXXXXXUXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('92', '牛奶粉', '7', 'https://img.alicdn.com/tps/i4/TB1H5wHGVXXXXcHXFXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('93', '羊奶粉', '7', 'https://img.alicdn.com/tps/i1/TB1LEwGGVXXXXXgXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('94', '磨牙棒/饼干', '7', 'https://img.alicdn.com/tps/TB154IZJVXXXXcLXXXXXXXXXXXX-800-800.jpg_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('95', '米粉/米糊', '7', 'https://img.alicdn.com/tps/TB1rE3YJVXXXXcJXXXXXXXXXXXX-800-800.jpg_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('96', '果/菜/肉', '7', 'https://img.alicdn.com/tps/TB1_9ZWJVXXXXc.XXXXXXXXXXXX-800-800.jpg_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('97', '泡芙', '7', 'https://img.alicdn.com/tps/TB1RCk0JVXXXXb.XXXXXXXXXXXX-800-800.jpg_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('98', '维生素', '7', 'https://img.alicdn.com/tps/TB12n33JVXXXXaHXXXXXXXXXXXX-800-800.jpg_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('99', '钙镁锌', '7', 'https://img.alicdn.com/tps/TB1npANJVXXXXXsXFXXXXXXXXXX-800-800.jpg_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('100', '溶豆', '7', 'https://img.alicdn.com/tps/TB1XHIyJVXXXXbZXVXXXXXXXXXX-800-800.jpg_210x210Q90s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('101', 'iPhone', '8', 'https://img.alicdn.com/tps/TB1wWd8NpXXXXbqXpXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('102', '小米', '8', 'https://img.alicdn.com/tps/TB1fBVMNpXXXXbTaXXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('103', '荣耀', '8', 'https://img.alicdn.com/tps/TB1RT47NpXXXXciXpXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('104', '华为', '8', 'https://img.alicdn.com/tps/TB1X103NpXXXXcGXpXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('105', 'OPPO', '8', 'https://img.alicdn.com/tps/TB1lo5aNpXXXXXrXpXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('106', 'vivo', '8', 'https://img.alicdn.com/tps/TB11JXRNpXXXXcVXVXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('107', '三星', '8', 'https://img.alicdn.com/imgextra/i4/370627083/O1CN01nxIn1h22C3oD0HWvb_!!370627083.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('108', '魅族', '8', 'https://img.alicdn.com/tps/TB1bfVINpXXXXXIapXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('109', '诺基亚', '8', 'https://img.alicdn.com/tfs/TB1sTc.vYZnBKNjSZFKXXcGOVXa-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('110', '360', '8', 'https://img.alicdn.com/tps/TB12VudNpXXXXcaXXXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('111', '努比亚', '8', 'https://img.alicdn.com/tps/TB1YTp.NpXXXXaXXpXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('112', 'AGM', '8', 'https://img.alicdn.com/tfs/TB1ZQOXvYwrBKNjSZPcXXXpapXa-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('113', 'MOTO', '8', 'https://img.alicdn.com/tps/TB148X4NpXXXXaEXFXXXXXXXXXX-100-100.png_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('114', '联想', '8', 'https://img.alicdn.com/tfs/TB1xFlwwbZnBKNjSZFhXXc.oXXa-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('115', '自拍相机', '9', 'https://img.alicdn.com/tps/i1/TB14KcOGVXXXXXzXXXXTNA.ZFXX-100-100.jpeg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('116', '数码相机', '9', 'https://img.alicdn.com/tps/i2/TB1NDQNGVXXXXafXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('117', '微单', '9', 'https://img.alicdn.com/tps/i4/TB13J3MGVXXXXb2XXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('118', '单反', '9', 'https://img.alicdn.com/tps/i2/TB1egMFGVXXXXaHXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('119', '镜头', '9', 'https://img.alicdn.com/tps/i1/TB1DcUDGVXXXXcoXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('120', '拍立得', '9', 'https://img.alicdn.com/tps/i4/TB1fBcMGVXXXXbsXXXXTNA.ZFXX-100-100.jpeg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('121', '摄像机', '9', 'https://img.alicdn.com/tps/i1/TB1Ho3FGVXXXXXUXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('122', '电视配件', '10', 'https://img.alicdn.com/tps/i3/TB1SuQDGVXXXXXQaXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('123', '家庭影院', '10', 'https://img.alicdn.com/tps/i4/TB1IAIIGVXXXXb1XpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('124', '空调', '10', 'https://img.alicdn.com/tps/i2/TB1.koJGVXXXXbiXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('125', '抽油机', '10', 'https://img.alicdn.com/tps/i4/TB1nXcFGVXXXXbgXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('126', '洗碗机', '10', 'https://img.alicdn.com/tps/i1/TB1l5UEGVXXXXbFXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('127', '官方直售', '11', 'https://img.alicdn.com/tps/i3/TB1c7.IGVXXXXcsXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('128', '乳液面霜', '11', 'https://img.alicdn.com/tps/i2/TB1PM3JGVXXXXbnXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('129', '眼部护理', '11', 'https://img.alicdn.com/tps/i3/TB13QIJGVXXXXaMXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('130', '洁面', '11', 'https://img.alicdn.com/tps/i1/TB1AnZGGVXXXXbyXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('131', '面部精华', '11', 'https://img.alicdn.com/tps/i2/TB1rTZJGVXXXXaBXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('132', '卸妆', '11', 'https://img.alicdn.com/tps/i2/TB1dhsFGVXXXXX3XFXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('133', '单肩包', '12', 'https://img.alicdn.com/tps/i3/TB1GbQPGVXXXXbEXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('134', '手提包', '12', 'https://img.alicdn.com/tps/i2/TB1PIcOGVXXXXbcXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('135', '斜挎包', '12', 'https://img.alicdn.com/tps/i4/TB1WYUQGVXXXXazXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('136', '双肩包', '12', 'https://img.alicdn.com/tps/i3/TB1UxQOGVXXXXcxXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('137', '真皮包', '12', 'https://img.alicdn.com/tps/i1/TB1YRgPGVXXXXaZXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('138', '帆布包', '12', 'https://img.alicdn.com/tps/i4/TB1cvcIGVXXXXXGXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('139', 'PU包', '12', 'https://img.alicdn.com/tps/i2/TB1XW3vGVXXXXcHXFXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('140', '链条包', '12', 'https://img.alicdn.com/tps/i2/TB1ztUKGVXXXXaoXFXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('141', '跑步机', '13', 'https://img.alicdn.com/tps/i4/TB1SwADGVXXXXX5aXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('142', '踏步机', '13', 'https://img.alicdn.com/tps/i2/TB1WQEGGVXXXXXCXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('143', '自行车', '13', 'https://img.alicdn.com/tps/i2/TB1nuZIGVXXXXaUXFXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('144', '游泳运动', '13', 'https://img.alicdn.com/tps/i2/TB1oesGGVXXXXXpXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('145', '轮滑运动', '13', 'https://img.alicdn.com/tps/i4/TB1blIFGVXXXXaTXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('146', '瑜伽运动', '13', 'https://img.alicdn.com/tps/i3/TB1auZGGVXXXXadXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('147', '运动护具', '13', 'https://img.alicdn.com/tps/i1/TB1iPcJGVXXXXclXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('148', '篮球', '13', 'https://img.alicdn.com/tps/i3/TB1t6cFGVXXXXbnXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('149', '户外照明', '14', 'https://img.alicdn.com/tps/i1/TB1HUACGVXXXXX9aXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('150', '帐篷', '14', 'https://img.alicdn.com/tps/i3/TB1ifsLGVXXXXXMXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('151', '睡袋', '14', 'https://img.alicdn.com/tps/i4/TB15CMFGVXXXXaAXVXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('152', '望远镜', '14', 'https://img.alicdn.com/tps/i1/TB1docJGVXXXXbHXpXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('153', '军迷用品', '14', 'https://img.alicdn.com/tps/i4/TB1ZdoEGVXXXXXgaXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('154', '炉具烧烤', '14', 'https://img.alicdn.com/tps/i2/TB1AHnvGVXXXXX0apXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('155', '登山杖', '14', 'https://img.alicdn.com/tps/i3/TB1H7UHGVXXXXbPXFXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
INSERT INTO `goods_type` VALUES ('156', '钓竿', '14', 'https://img.alicdn.com/tps/i3/TB1r7ZOGVXXXXXpXXXXMxXJVFXX-100-100.jpg_210x210Q50s50.jpg_.webp', '1');
