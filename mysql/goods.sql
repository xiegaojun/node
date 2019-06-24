/*
商品表

Source Server         : MySQL
Source Server Version : 50718

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-06-24 16:49:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '商品名',
  `price` int(12) NOT NULL COMMENT '价格',
  `goods_type_id` int(10) NOT NULL COMMENT '类别',
  `img` varchar(255) NOT NULL COMMENT '图片',
  `volume` int(20) DEFAULT '0' COMMENT '销量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'DAZZLE地素 春夏装新款 优雅绑带镂空蕾丝短袖连衣裙女 2F2O4608B', '145800', '1', 'https://img.alicdn.com/bao/uploaded/i2/819984768/TB1YUQNlv1TBuNjy0FjXXajyXXa_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '69');
INSERT INTO `goods` VALUES ('2', 'ochirly露肩荷叶边印花雪纺连衣裙', '43900', '1', 'https://img.alicdn.com/bao/uploaded/i3/272205633/TB1OIVRuoR1BeNjy0FmXXb0wVXa_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '184');
INSERT INTO `goods` VALUES ('3', 'ochirly欧时力春夏装印花雪纺V领短袖仙女裙连衣裙女1GY3081530', '46900', '1', 'https://img.alicdn.com/bao/uploaded/i3/272205633/TB10.lTAuOSBuNjy0FdXXbDnVXa_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '302');
INSERT INTO `goods` VALUES ('4', '摩安珂立领修身百褶连衣裙', '84800', '1', 'https://img.alicdn.com/bao/uploaded/i4/581746910/O1CN0120upHnTaz3hEHf0_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '337');
INSERT INTO `goods` VALUES ('5', 'ochirlyv领印花交叉雪纺仙女裙', '23900', '1', 'https://img.alicdn.com/bao/uploaded/i1/272205633/TB1MJAYaHZnBKNjSZFhXXc.oXXa_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '210');
INSERT INTO `goods` VALUES ('6', '韩都衣舍2019韩版女装夏装新款宽松上衣潮打底短袖T恤JW6475筱', '10300', '2', 'https://img.alicdn.com/bao/uploaded/i1/263817957/O1CN01qCtkRV28eM0ZFSj7p_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '338');
INSERT INTO `goods` VALUES ('7', '韩都衣舍韩版宽松纯色v领t恤', '6600', '2', 'https://img.alicdn.com/bao/uploaded/i1/263817957/O1CN01vOqjZW28eM0facujc_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '1197');
INSERT INTO `goods` VALUES ('8', '韩都衣舍预售韩版宽松纯棉t恤', '10300', '2', 'https://img.alicdn.com/bao/uploaded/i2/263817957/O1CN017wEmOJ28eM0ef30GD_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '453');
INSERT INTO `goods` VALUES ('9', 'Massimo Dutti 女装 白色长袖T恤女士春季打底上衣2019新款春装 06860900250', '19000', '2', 'https://img.alicdn.com/bao/uploaded/i1/2183380830/O1CN01Su2JHB1I0BCqFwR6x_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '460');
INSERT INTO `goods` VALUES ('10', 'chirly网纱系带无袖衬衫', '31900', '3', 'https://img.alicdn.com/bao/uploaded/i4/272205633/TB1b00ztOCYBuNkSnaVXXcMsVXa_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '197');
INSERT INTO `goods` VALUES ('11', 'lily撞色系带娃娃领喇叭袖涤纶衬衫', '21900', '3', 'https://img.alicdn.com/bao/uploaded/i3/1031105204/TB1AtBccXuWBuNjSszbXXcS7FXa_!!0-item_pic.jpg_960x960Q50s50.jpg_.webp', '123');
INSERT INTO `goods` VALUES ('12', 'Lily夏新款女装时尚通勤亮色系宽松短袖套头衬衫', '19900', '3', 'https://img.alicdn.com/imgextra/i4/1031105204/O1CN01iT8zWe1oJTcwJw3Oe_!!0-item_pic.jpg_1152x1920Q50s50.jpg_.webp', '104');
INSERT INTO `goods` VALUES ('13', 'MOCO简约V领宽松复古衬衫女 纯色真丝衬衣  摩安珂', '66800', '3', 'https://img.alicdn.com/imgextra/i1/581746910/TB1BKhlcWmgSKJjSsphXXcy1VXa_!!0-item_pic.jpg_1152x1920Q50s50.jpg_.webp', '325');
INSERT INTO `goods` VALUES ('14', 'Vero Moda夏季印花个性喇叭袖口女款上衣|318251504', '20210', '4', 'https://img.alicdn.com/imgextra/i4/420567757/TB1xWGhif9TBuNjy0FcXXbeiFXa_!!0-item_pic.jpg_1152x1920Q50s50.jpg_.webp', '410');
INSERT INTO `goods` VALUES ('15', 'Lily夏新款女装CHOKER时尚通勤气质心机宽松雪纺衫衬衫', '21900', '4', 'https://img.alicdn.com/imgextra/i2/1031105204/TB1Myd9xk7mBKNjSZFyXXbydFXa_!!0-item_pic.jpg_1152x1920Q50s50.jpg_.webp', '172');
INSERT INTO `goods` VALUES ('16', 'Lily春新款女装宽松印花荷叶边雪纺衫系带雪纺衫118120C8621', '23500', '4', 'https://img.alicdn.com/imgextra/i2/1031105204/TB2DNbHkZbI8KJjy1zdXXbe1VXa-1031105204.jpg_1152x1920Q50s50.jpg_.webp', '123');
INSERT INTO `goods` VALUES ('17', '雪纺衫女夏2019夏装新款大码短袖衬衫气质韩版衬衣女士显瘦上衣潮', '15900', '4', 'https://img.alicdn.com/imgextra/i1/2273165016/TB2XowzevImBKNjSZFlXXc43FXa_!!2273165016.jpg_1152x1920Q50s50.jpg_.webp', '127');
INSERT INTO `goods` VALUES ('18', 'Lily女装春新款黑色直筒休闲裤ol通勤百搭裤子修身打底铅笔裤', '19900', '5', 'https://img.alicdn.com/imgextra/i2/1031105204/O1CN011oJTajMkaw3LJMw_!!1031105204-0-item_pic.jpg_1152x1920Q50s50.jpg_.webp', '2923');
INSERT INTO `goods` VALUES ('19', 'Lily春新款女装 通勤OL黑色高腰九分阔腿裤喇叭裤休闲裤女', '22900', '5', 'https://img.alicdn.com/imgextra/i3/1031105204/O1CN011oJTaii0qo2TSmv_!!1031105204-0-item_pic.jpg_1152x1920Q50s50.jpg_.webp', '598');
INSERT INTO `goods` VALUES ('20', '哥弟女裤2019春季新款休闲裤女修身显瘦九分裤小脚女士裤子190063', '30000', '5', 'https://img.alicdn.com/bao/uploaded/i3/728443962/O1CN011f8dgDTOzTIUg05_!!728443962.jpg_1152x1920Q50s50.jpg_.webp', '2437');
DROP TRIGGER IF EXISTS `goods_tri`;
DELIMITER ;;
CREATE TRIGGER `goods_tri` AFTER INSERT ON `goods` FOR EACH ROW BEGIN
	INSERT goods_info (name,price,volume,goods_id) VALUES (NEW.name,NEW.price,NEW.volume,NEW.id);
END
;;
DELIMITER ;
