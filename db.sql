/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 120.79.34.35:23306
 Source Schema         : jz

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 11/04/2019 15:39:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jz_account
-- ----------------------------
DROP TABLE IF EXISTS `jz_account`;
CREATE TABLE `jz_account`  (
  `acid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `acmoney` decimal(10, 2) NOT NULL COMMENT '金额',
  `acclassid` int(8) NOT NULL COMMENT '分类ID',
  `actime` int(11) NOT NULL COMMENT '记账时间',
  `acremark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jiid` int(8) NOT NULL COMMENT '记账用户ID',
  `zhifu` int(8) NOT NULL COMMENT '类型 1为收入 2为支出',
  `bankid` int(8) NOT NULL COMMENT '账户ID',
  PRIMARY KEY (`acid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jz_account_class
-- ----------------------------
DROP TABLE IF EXISTS `jz_account_class`;
CREATE TABLE `jz_account_class`  (
  `classid` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `classname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `classtype` int(1) NOT NULL COMMENT '类型 1为收入 2为支出',
  `ufid` int(8) NOT NULL COMMENT '记账用户ID',
  PRIMARY KEY (`classid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jz_account_class
-- ----------------------------
INSERT INTO `jz_account_class` VALUES (1, '默认收入', 1, 1);
INSERT INTO `jz_account_class` VALUES (2, '默认支出', 2, 1);
INSERT INTO `jz_account_class` VALUES (30, '默认收入', 1, 10);
INSERT INTO `jz_account_class` VALUES (31, '默认支出', 2, 10);

-- ----------------------------
-- Table structure for jz_bank
-- ----------------------------
DROP TABLE IF EXISTS `jz_bank`;
CREATE TABLE `jz_bank`  (
  `bankid` int(11) NOT NULL AUTO_INCREMENT COMMENT '账户ID',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户名称',
  `bankaccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号、帐号',
  `balancemoney` decimal(10, 2) NOT NULL COMMENT '余额',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `updatetime` int(11) NOT NULL COMMENT '更新时间',
  `userid` int(8) NOT NULL COMMENT '记账用户ID',
  PRIMARY KEY (`bankid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jz_user
-- ----------------------------
DROP TABLE IF EXISTS `jz_user`;
CREATE TABLE `jz_user`  (
  `uid` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `Isallow` smallint(2) NOT NULL DEFAULT 0 COMMENT '是否禁止登录, 0正常 1禁止',
  `Isadmin` smallint(2) DEFAULT 0 COMMENT '是否管理员 0不是 1是',
  `addtime` int(11) NOT NULL COMMENT '注册时间',
  `utime` int(11) NOT NULL COMMENT '更新时间',
  `salt` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐密码',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jz_user
-- ----------------------------
INSERT INTO `jz_user` VALUES (1, 'admin', 'b7bedeea11c61456d93d76ebe80c620e', 'admi@qq.com', 0, 1, 1554968293, 1554968293, '45eebd965654b2ebe2871107cc16ed2b');

SET FOREIGN_KEY_CHECKS = 1;
