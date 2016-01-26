/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50037
Source Host           : localhost:3306
Source Database       : minidao-pe

Target Server Type    : MYSQL
Target Server Version : 50037
File Encoding         : 65001

Date: 2016-01-18 16:01:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` varchar(36) NOT NULL default '' COMMENT '主键',
  `empno` varchar(120) default NULL COMMENT '雇员编号',
  `NAME` varchar(32) NOT NULL COMMENT '雇员名',
  `AGE` int(11) default NULL COMMENT '年龄',
  `BIRTHDAY` datetime default NULL COMMENT '生日',
  `SALARY` decimal(19,2) default NULL COMMENT '工资',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '001', '张开忠', '20', '2013-08-17 11:10:05', '8900.55');
INSERT INTO `employee` VALUES ('2', '200', '张代浩的世界1', '20', '2016-01-15 20:13:07', '88888.00');
INSERT INTO `employee` VALUES ('3', '200', 'scott', '20', '2016-01-15 20:14:44', '88888.00');
INSERT INTO `employee` VALUES ('4', '200', 'scott', '20', '2016-01-15 20:22:04', '88888.00');
INSERT INTO `employee` VALUES ('5', '200', 'scott', '20', '2016-01-15 20:22:49', '88888.00');
