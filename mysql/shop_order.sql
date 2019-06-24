/*
订单表

Source Server         : MySQL
Source Server Version : 50718

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-06-24 16:50:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单号',
  `uid` int(10) NOT NULL COMMENT '用户id',
  `goods_id` int(10) NOT NULL COMMENT '货物id',
  `price` int(12) DEFAULT NULL COMMENT '单价',
  `num` int(10) DEFAULT NULL COMMENT '数量',
  `style` varchar(255) DEFAULT NULL COMMENT '款式',
  `img` varchar(255) DEFAULT NULL,
  `state` int(10) NOT NULL DEFAULT '0' COMMENT '-1删除订单 0购物车 1待支付 2待评价 3已评价',
  `car_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加入购物车时间',
  `order_time` timestamp NULL DEFAULT NULL COMMENT '生成订单的时间',
  `buy_time` timestamp NULL DEFAULT NULL COMMENT '购买的时间',
  `del_time` timestamp NULL DEFAULT NULL COMMENT '删除订单时间',
  `modify_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES ('54', '1', '8', '11900', '1', '款式3', 'https://img.alicdn.com/imgextra/i3/263817957/TB2CoWPmiC9MuFjSZFoXXbUzFXa_!!263817957.jpg_1152x1920Q50s50.jpg_.webp', '0', '2019-06-21 18:34:39', null, null, null, '2019-06-21 18:34:39');
INSERT INTO `shop_order` VALUES ('55', '1', '7', '8200', '1', '款式3', 'https://img.alicdn.com/imgextra/i3/263817957/O1CN01r9PkoJ28eM0PfQBTl_!!263817957.jpg_1152x1920Q50s50.jpg_.webp', '0', '2019-06-21 18:34:45', null, null, null, '2019-06-21 18:34:45');
INSERT INTO `shop_order` VALUES ('56', '1', '2', '45500', '2', '款式3', 'https://img.alicdn.com/imgextra/i1/272205633/TB2BBkfqhSYBuNjSsphXXbGvVXa_!!272205633.jpg_1152x1920Q50s50.jpg_.webp', '2', '2019-06-21 18:34:52', '2019-06-21 18:34:52', '2019-06-21 18:34:54', null, '2019-06-21 18:34:54');
INSERT INTO `shop_order` VALUES ('57', '1', '12', '21500', '1', '款式3', 'https://img.alicdn.com/imgextra/i3/1031105204/O1CN01Xht1uo1oJTcvY3dD9-1031105204.jpg_1152x1920Q50s50.jpg_.webp', '-1', '2019-06-21 18:35:05', '2019-06-21 18:35:06', null, '2019-06-21 18:35:33', '2019-06-21 18:35:33');
INSERT INTO `shop_order` VALUES ('58', '1', '1', '147400', '1', '款式3', 'https://img.alicdn.com/imgextra/i1/819984768/TB2XUFPiY1YBuNjSszhXXcUsFXa_!!819984768.jpg_1152x1920Q50s50.jpg_.webp', '-1', '2019-06-21 18:35:18', '2019-06-21 18:35:19', null, '2019-06-21 18:35:32', '2019-06-21 18:35:32');
INSERT INTO `shop_order` VALUES ('59', '1', '7', '8200', '1', '款式3', 'https://img.alicdn.com/imgextra/i3/263817957/O1CN01r9PkoJ28eM0PfQBTl_!!263817957.jpg_1152x1920Q50s50.jpg_.webp', '-1', '2019-06-21 18:35:26', '2019-06-21 18:35:26', null, '2019-06-24 12:00:18', '2019-06-24 12:00:18');
INSERT INTO `shop_order` VALUES ('60', '1', '12', '21500', '1', '款式3', 'https://img.alicdn.com/imgextra/i3/1031105204/O1CN01Xht1uo1oJTcvY3dD9-1031105204.jpg_1152x1920Q50s50.jpg_.webp', '2', '2019-06-21 18:35:44', '2019-06-21 18:35:56', '2019-06-21 18:35:58', null, '2019-06-21 18:35:58');
INSERT INTO `shop_order` VALUES ('61', '15', '16', '25100', '1', '款式3', 'https://img.alicdn.com/imgextra/i2/1031105204/TB2dOHwk4rI8KJjy0FpXXb5hVXa-1031105204.jpg_1152x1920Q50s50.jpg_.webp', '0', '2019-06-21 18:59:13', null, null, null, '2019-06-21 18:59:14');
INSERT INTO `shop_order` VALUES ('62', '15', '4', '84800', '1', '款式1', 'https://img.alicdn.com/imgextra/i1/581746910/O1CN0120upHqW2IED6X7V_!!0-item_pic.jpg_1152x1920Q50s50.jpg_.webp', '1', '2019-06-21 18:59:34', '2019-06-21 19:00:02', null, null, '2019-06-21 19:00:02');
INSERT INTO `shop_order` VALUES ('63', '15', '7', '8200', '1', '款式3', 'https://img.alicdn.com/imgextra/i3/263817957/O1CN01r9PkoJ28eM0PfQBTl_!!263817957.jpg_1152x1920Q50s50.jpg_.webp', '2', '2019-06-21 18:59:40', '2019-06-21 19:00:02', '2019-06-21 19:00:44', null, '2019-06-21 19:00:44');
INSERT INTO `shop_order` VALUES ('64', '15', '6', '11900', '2', '款式3', 'https://img.alicdn.com/imgextra/i2/263817957/TB2_3H4g9FmpuFjSZFrXXayOXXa_!!263817957.jpg_1152x1920Q50s50.jpg_.webp', '2', '2019-06-21 18:59:47', '2019-06-21 18:59:47', '2019-06-21 18:59:50', null, '2019-06-21 18:59:50');
