/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : hr

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 01/12/2023 15:39:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for applicant
-- ----------------------------
DROP TABLE IF EXISTS `applicant`;
CREATE TABLE `applicant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` bit(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specialty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `studyeffort` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `isstock` int(1) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of applicant
-- ----------------------------
INSERT INTO `applicant` VALUES (3, '45', b'1', 4, 'r', '4', 'r', '4', 'r', '4', 'r', '2023-11-23', '		rr			', 1);
INSERT INTO `applicant` VALUES (4, '45', b'1', 44, '4', '4', '4', '4', '4', '4', '4', '2023-11-23', '					444', 1);
INSERT INTO `applicant` VALUES (5, '12', b'1', 12, '12', '12', '12', '12', '12', '12', '12', '2023-11-23', '					qweqw', 1);
INSERT INTO `applicant` VALUES (6, '阿萨', b'1', 12, 'asd', '撒', 'asd', '十大', 'adsa', '2131', '12@侵权.com', '2023-12-01', '					dad', 0);

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `basic` double(11, 0) DEFAULT NULL,
  `eat` double(11, 0) DEFAULT NULL,
  `house` double(11, 0) DEFAULT NULL,
  `duty` double(11, 0) DEFAULT NULL,
  `scot` double(11, 0) DEFAULT NULL,
  `punishment` double(11, 0) DEFAULT NULL,
  `other` double(11, 0) DEFAULT NULL,
  `granttime` date DEFAULT NULL,
  `totalize` double(11, 0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES (1, '1', 2, 1, 22, 1, 2, 2, 1, '2023-12-11', 23);
INSERT INTO `salary` VALUES (2, '5', 5, 5, 5, 5, 5, 5, 5, '2023-12-11', 15);

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `purpose` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `begintime` date DEFAULT NULL,
  `endtime` date DEFAULT NULL,
  `datum` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `educate` bit(1) DEFAULT NULL,
  `effect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `summarize` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES (1, '1', '1', '2023-12-11', '2023-12-16', 'fgf', '1', 't', NULL, b'1', 'wtrw', 'wtwert');
INSERT INTO `train` VALUES (2, '23', '23', '2023-12-11', '2023-12-18', 'yu', 'yu', 'jk', NULL, b'1', 're', 'er');
INSERT INTO `train` VALUES (3, '12', '123', '2023-12-11', '2023-12-23', 'e', 'e', 'e', NULL, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` bit(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `isadmin` bit(1) DEFAULT b'0',
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'user',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, '344', '33', '1', b'1', '2010-01-01', '2023-12-01', 'ddd', b'1', 'user');
INSERT INTO `user` VALUES (6, '23', '22', '5', b'1', '2011-02-02', '2023-12-01', '2152', b'1', 'user');
INSERT INTO `user` VALUES (7, '3', '3', '2', b'0', '2020-01-01', '2023-12-01', 'llll', b'1', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
