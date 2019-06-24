/*
用户表

Source Server         : MySQL
Source Server Version : 50718

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-06-24 16:50:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_nick` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) NOT NULL DEFAULT '123456',
  `user_header` varchar(255) DEFAULT 'https://m.xiegaojun.cn/headerImg/default_header.png',
  `points` int(10) DEFAULT '0' COMMENT '积分',
  `register_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xie', '谢高帅', '123456', 'https://m.xiegaojun.cn/headerImg/xie.png', '11', '2019-06-01 17:09:12', '2019-06-24 16:38:16');
INSERT INTO `user` VALUES ('15', 'xie1', '谢高帅1', '123456', 'https://m.xiegaojun.cn/headerImg/ce8a287908bcb2ed5967b8484757480c.png', '3', '2019-06-21 18:54:54', '2019-06-21 20:04:18');
