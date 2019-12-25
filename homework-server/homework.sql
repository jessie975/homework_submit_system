/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : 127.0.0.1:3306
 Source Schema         : homework

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 25/12/2019 15:40:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '作业名',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `sid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '学号',
  `grade` int(4) DEFAULT NULL COMMENT '年级',
  `classes` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '班级',
  `createTime` datetime DEFAULT NULL COMMENT '提交时间',
  `downLink` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '下载链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of task
-- ----------------------------
BEGIN;
INSERT INTO `task` VALUES (1, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:20', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (2, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:58', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (3, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:58', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (4, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:58', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (5, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:58', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (6, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:58', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (7, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:58', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (8, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:59', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (9, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:59', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (10, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:59', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (11, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:59', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (12, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:59', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (13, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:59', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (14, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:25:59', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (15, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:00', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (16, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:00', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (17, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:00', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (18, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:00', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (19, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:00', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (20, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:00', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (21, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:01', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (22, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:01', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (23, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:01', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (24, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:01', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (25, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:01', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (26, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:02', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (27, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:02', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (28, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:02', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (29, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:02', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (30, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:02', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (31, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:02', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (32, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:03', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (33, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:03', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (34, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:03', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (35, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:03', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (36, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:03', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (37, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:03', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (38, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:03', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (39, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:04', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (40, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:04', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (41, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:04', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (42, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:04', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (43, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:04', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (44, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:04', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (45, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:05', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (46, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:05', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (47, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:05', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (48, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:05', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (49, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:05', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (50, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:05', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (51, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:06', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (52, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:06', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (53, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:06', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (54, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:06', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (55, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:06', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (56, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:06', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (57, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:07', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (58, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:07', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (59, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:07', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (60, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:07', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (61, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:07', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (62, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:07', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (63, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:08', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (64, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:08', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (65, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:08', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (66, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:08', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (67, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:08', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (68, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:08', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (69, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:09', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (70, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:09', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (71, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:09', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (72, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:09', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (73, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:09', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (74, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:09', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (75, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:10', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (76, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:10', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (77, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:10', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (78, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:10', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (79, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:10', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (80, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:11', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (81, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:11', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
INSERT INTO `task` VALUES (82, 'ASP.NET实验报告', '杨胜洁', '201607014332', 2016, '计科B163班', '2019-12-25 15:26:11', 'http://127.0.0.1:5000/UploadFiles/1577287483_课程设计说明书封面下载.doc');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
