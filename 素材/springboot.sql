/*
 Navicat Premium Data Transfer

 Source Server         : lwm
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : springboot

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 21/04/2020 19:29:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(10) NOT NULL COMMENT '部门id',
  `department_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (101, '教学部');
INSERT INTO `department` VALUES (102, '市场部');
INSERT INTO `department` VALUES (103, '教研部');
INSERT INTO `department` VALUES (104, '运营部');
INSERT INTO `department` VALUES (105, '后勤部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(10) NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gender` int(10) NOT NULL,
  `birth` datetime(0) NULL,
  `did` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `did`(`did`) USING BTREE,
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`did`) REFERENCES `department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1001, 'AA', 'A24734673@qq.com', 1, '1999-05-06 00:00:00', 101);
INSERT INTO `employee` VALUES (1002, 'BB', 'B24734673@qq.com', 0, '1998-05-06 00:00:00', 102);
INSERT INTO `employee` VALUES (1003, 'CC', 'C24734673@qq.com', 1, '2001-01-01 00:00:00', 103);
INSERT INTO `employee` VALUES (1004, 'DD', 'D24734673@qq.com', 0, '2002-01-01 00:00:00', 104);
INSERT INTO `employee` VALUES (1005, 'EE', 'E24734673@qq.com', 1, '2003-01-01 00:00:00', 105);

SET FOREIGN_KEY_CHECKS = 1;
