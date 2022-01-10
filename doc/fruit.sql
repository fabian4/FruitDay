/*
 Navicat Premium Data Transfer

 Source Server         : pxl
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 1.117.140.237:3306
 Source Schema         : fruit

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 10/01/2022 12:30:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fruits
-- ----------------------------
DROP TABLE IF EXISTS `fruits`;
CREATE TABLE `fruits`  (
  `fid` int NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `up` double(255, 0) NULL DEFAULT NULL,
  `t1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `t2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `inum` int NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruits
-- ----------------------------
INSERT INTO `fruits` VALUES (1, '佳沛新西兰绿奇异果', '4+2盒', 78, '产地 新西兰 销售规格 6个 商品单重 80-90g ', '储藏方法 0-4度冷藏 营养元素 维生素C、叶酸 特别提醒存放4-5天，成熟后更甜 品牌 佳沛', 3);
INSERT INTO `fruits` VALUES (3, '枣', '2斤', 23, '185-210g', '储藏方法 0-4度冷藏 营养元素 膳食纤维，天然叶酸，VC，钙，铁', 3);
INSERT INTO `fruits` VALUES (4, '菠萝', '1个', 59, '产地\r\n国产\r\n销售规格\r\n2斤/4斤\r\n商品单重\r\n250g以上', '储藏方法\r\n0-4度冷藏保存\r\n营养元素\r\n维生素C，果胶，纤维素', 4);
INSERT INTO `fruits` VALUES (8, '南非青提', '2斤', 68, '产地\r\n南非\r\n销售规格\r\n2斤', '储藏方法\r\n0-4度冷藏\r\n营养元素\r\n白藜芦醇，B类维生素，花青素，钙，蛋白质，果糖', 3);
INSERT INTO `fruits` VALUES (9, '里达葡萄', '2斤', 98, '185-210g', '储藏方法 0-4度冷藏 营养元素 维生素C、叶酸 特别提醒存放4-5天，成熟后更甜 品牌 佳沛', 4);
INSERT INTO `fruits` VALUES (10, '墨西哥牛油果', '6个', 40, '产地 墨西哥 销售规格 6个 商品单重 140g以上 ', '储藏方法 0-4度冷藏  营养元素叶酸，钾，钙，磷', 3);
INSERT INTO `fruits` VALUES (11, '美国华盛顿红地厘蛇果', '6个', 30, '产地\r\n美国销售规格\r\n6个\r\n商品单重\r\n185-210g', '储藏方法\r\n0-4度冷藏保存\r\n营养元素\r\n维生素C，果胶，纤维素', 3);
INSERT INTO `fruits` VALUES (12, '智利车厘子', '200g', 28, '产地：进口；包装方式：盒装', '储藏方式 0-4度冷藏 营养元素 维生素A、维生素C 高钾', 3);
INSERT INTO `fruits` VALUES (14, '美国佛罗里达葡萄柚', '6个', 40, '产地 美国 销售规格 6个 商品单重 单个重240-310g', '储藏方法 0-4度冷藏 营养元素 膳食纤维，天然叶酸，VC，钙，铁', 3);
INSERT INTO `fruits` VALUES (16, '赣南红心脐橙', '2斤/4斤', 49, '产地\r\n国产\r\n销售规格\r\n2斤/4斤\r\n商品单重\r\n250g以上', '储藏方法\r\n0-4度冷藏\r\n营养元素\r\n胡萝卜素，维生素C，花青素，钾，叶酸，纤维素', 3);
INSERT INTO `fruits` VALUES (2222, '222', '222', 222, '222', '222', 222);

-- ----------------------------
-- Table structure for hotfruits
-- ----------------------------
DROP TABLE IF EXISTS `hotfruits`;
CREATE TABLE `hotfruits`  (
  `fid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotfruits
-- ----------------------------
INSERT INTO `hotfruits` VALUES (1);
INSERT INTO `hotfruits` VALUES (3);
INSERT INTO `hotfruits` VALUES (4);
INSERT INTO `hotfruits` VALUES (8);
INSERT INTO `hotfruits` VALUES (9);
INSERT INTO `hotfruits` VALUES (10);
INSERT INTO `hotfruits` VALUES (11);
INSERT INTO `hotfruits` VALUES (14);
INSERT INTO `hotfruits` VALUES (16);
INSERT INTO `hotfruits` VALUES (20);

-- ----------------------------
-- Table structure for root
-- ----------------------------
DROP TABLE IF EXISTS `root`;
CREATE TABLE `root`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of root
-- ----------------------------
INSERT INTO `root` VALUES (1, 1);

-- ----------------------------
-- Table structure for shop1
-- ----------------------------
DROP TABLE IF EXISTS `shop1`;
CREATE TABLE `shop1`  (
  `fid` int NOT NULL,
  `isStar` tinyint(1) NOT NULL,
  `isCart` tinyint(1) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop1
-- ----------------------------
INSERT INTO `shop1` VALUES (1, 1, 1);
INSERT INTO `shop1` VALUES (16, 0, 1);
INSERT INTO `shop1` VALUES (9, 1, 0);
INSERT INTO `shop1` VALUES (14, 0, 1);

-- ----------------------------
-- Table structure for shop2
-- ----------------------------
DROP TABLE IF EXISTS `shop2`;
CREATE TABLE `shop2`  (
  `fid` int NOT NULL,
  `isStar` tinyint(1) NOT NULL,
  `isCart` tinyint(1) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop2
-- ----------------------------

-- ----------------------------
-- Table structure for shop3
-- ----------------------------
DROP TABLE IF EXISTS `shop3`;
CREATE TABLE `shop3`  (
  `fid` int NOT NULL,
  `isStar` tinyint(1) NOT NULL,
  `isCart` tinyint(1) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop3
-- ----------------------------

-- ----------------------------
-- Table structure for shop4
-- ----------------------------
DROP TABLE IF EXISTS `shop4`;
CREATE TABLE `shop4`  (
  `fid` int NOT NULL,
  `isStar` tinyint(1) NOT NULL,
  `isCart` tinyint(1) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop4
-- ----------------------------

-- ----------------------------
-- Table structure for shop5
-- ----------------------------
DROP TABLE IF EXISTS `shop5`;
CREATE TABLE `shop5`  (
  `fid` int NOT NULL,
  `isStar` tinyint(1) NOT NULL,
  `isCart` tinyint(1) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop5
-- ----------------------------

-- ----------------------------
-- Table structure for shop6
-- ----------------------------
DROP TABLE IF EXISTS `shop6`;
CREATE TABLE `shop6`  (
  `fid` int NOT NULL,
  `isStar` tinyint(1) NOT NULL,
  `isCart` tinyint(1) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop6
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '111@qq.com', '111', '111', 'fabian');
INSERT INTO `user` VALUES (6, '222', '222', '222', '222');

SET FOREIGN_KEY_CHECKS = 1;
