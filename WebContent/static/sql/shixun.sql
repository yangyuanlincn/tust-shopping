/*
 Navicat Premium Data Transfer

 Source Server         : shixun
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : shixun

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 15/03/2018 23:03:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods`  (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food_number` int(11) NULL DEFAULT NULL,
  `food_type_id` int(11) NULL DEFAULT NULL,
  `food_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`food_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES (1, '特色饼干 枣花酥 ', '22.3', 100, 1, 'static/img/11.PNG');
INSERT INTO `foods` VALUES (2, '稻香村 特色糕点休闲点心', '44.2', 100, 1, 'static/img/12.PNG');
INSERT INTO `foods` VALUES (3, 'Knoppers特色饼干', '33.5', 100, 1, 'static/img/13.PNG');
INSERT INTO `foods` VALUES (4, '港荣奶香蒸蛋糕 早餐蛋糕', '22.4', 100, 1, 'static/img/14.PNG');
INSERT INTO `foods` VALUES (5, '桂格燕麦小饼干 早餐饼干 盒装', '32.3', 100, 1, 'static/img/15.PNG');
INSERT INTO `foods` VALUES (6, '嘉顿香葱薄饼', '22.6', 100, 1, 'static/img/16.PNG');
INSERT INTO `foods` VALUES (7, '良品铺子 特色肉松饼 早餐饼干', '13.9', 100, 1, 'static/img/17.PNG');
INSERT INTO `foods` VALUES (8, '良品铺子 手撕面包 早餐面包', '13.3', 100, 1, 'static/img/18.PNG');
INSERT INTO `foods` VALUES (9, '盼盼 梅尼耶 干蛋糕 特色蛋糕', '21.4', 100, 1, 'static/img/19.PNG');
INSERT INTO `foods` VALUES (10, '每日零食 特色曲奇 饼干', '31.2', 100, 1, 'static/img/110.PNG');
INSERT INTO `foods` VALUES (11, '百草味 鱿鱼干 鱿鱼足 鱿鱼条', '21.2', 100, 2, 'static/img/21.jpg');

-- ----------------------------
-- Table structure for foods_hot
-- ----------------------------
DROP TABLE IF EXISTS `foods_hot`;
CREATE TABLE `foods_hot`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods_hot
-- ----------------------------
INSERT INTO `foods_hot` VALUES (1, '口水娃 零食小鱼仔小鱼干 口水鱼香辣味150g 21.0', '33.4', 'static/img/h1.jpg');
INSERT INTO `foods_hot` VALUES (2, '百草味 牛肉干 肉类零食 零食特产肉制品 五香牛肉粒100g袋 14.0', '44.3', 'static/img/h2.jpg');
INSERT INTO `foods_hot` VALUES (3, '内蒙古蒙都 休闲零食 清真手撕风干牛肉干原味488g 79.0', '66.9', 'static/img/h3.jpg');
INSERT INTO `foods_hot` VALUES (4, '内蒙古蒙都 休闲零食 清真手撕风干牛肉干原味488g 79.0', '11.1', 'static/img/h4.jpg');

-- ----------------------------
-- Table structure for foods_type
-- ----------------------------
DROP TABLE IF EXISTS `foods_type`;
CREATE TABLE `foods_type`  (
  `food_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`food_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods_type
-- ----------------------------
INSERT INTO `foods_type` VALUES (1, '饼干糕点');
INSERT INTO `foods_type` VALUES (2, '海味零食');
INSERT INTO `foods_type` VALUES (3, '坚果炒货');
INSERT INTO `foods_type` VALUES (4, '进口零食');
INSERT INTO `foods_type` VALUES (5, '蜜饯果干');
INSERT INTO `foods_type` VALUES (6, '膨化食品');
INSERT INTO `foods_type` VALUES (7, '肉类制品');
INSERT INTO `foods_type` VALUES (8, '素食零食');
INSERT INTO `foods_type` VALUES (9, '糖果巧克力');
INSERT INTO `foods_type` VALUES (10, '饮料');
INSERT INTO `foods_type` VALUES (11, '豆菌笋类');

-- ----------------------------
-- Table structure for shopping_car
-- ----------------------------
DROP TABLE IF EXISTS `shopping_car`;
CREATE TABLE `shopping_car`  (
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NULL DEFAULT NULL,
  `numbers` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_account_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_account_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_account_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'yang', '3343535', NULL, NULL);
INSERT INTO `user` VALUES (2, 'zhang', '2354252', NULL, NULL);
INSERT INTO `user` VALUES (3, '', '', '', '');

SET FOREIGN_KEY_CHECKS = 1;
