/*菜单表类型

Source Server         : MySQL
Source Server Version : 50718

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-06-24 16:49:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0', '为你推荐');
INSERT INTO `menu` VALUES ('1', '国际大牌');
INSERT INTO `menu` VALUES ('2', '女装');
INSERT INTO `menu` VALUES ('3', '女鞋');
INSERT INTO `menu` VALUES ('4', '男装');
INSERT INTO `menu` VALUES ('5', '男鞋');
INSERT INTO `menu` VALUES ('6', '内衣');
INSERT INTO `menu` VALUES ('7', '母婴');
INSERT INTO `menu` VALUES ('8', '手机');
INSERT INTO `menu` VALUES ('9', '数码');
INSERT INTO `menu` VALUES ('10', '家电');
INSERT INTO `menu` VALUES ('11', '美妆');
INSERT INTO `menu` VALUES ('12', '箱包');
INSERT INTO `menu` VALUES ('13', '运动');
INSERT INTO `menu` VALUES ('14', '户外');
INSERT INTO `menu` VALUES ('15', '家装');
INSERT INTO `menu` VALUES ('16', '家纺');
INSERT INTO `menu` VALUES ('17', '居家百货');
INSERT INTO `menu` VALUES ('18', '鲜花宠物');
INSERT INTO `menu` VALUES ('19', '配饰');
INSERT INTO `menu` VALUES ('20', '食品');
INSERT INTO `menu` VALUES ('21', '生鲜');
INSERT INTO `menu` VALUES ('22', '汽车摩托');
INSERT INTO `menu` VALUES ('23', '医药');
INSERT INTO `menu` VALUES ('24', '图书');
INSERT INTO `menu` VALUES ('25', '通信');
INSERT INTO `menu` VALUES ('26', '洗护');
INSERT INTO `menu` VALUES ('27', '乐器');
