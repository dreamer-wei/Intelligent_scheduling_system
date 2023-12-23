/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : intelligent_scheduling_system

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 23/12/2023 00:07:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `AdminID` int NOT NULL,
  `AdminName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AdminEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AdminPosition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `StoreID` int NOT NULL,
  PRIMARY KEY (`AdminID`) USING BTREE,
  UNIQUE INDEX `AdminEmail`(`AdminEmail` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `DayName` int NULL DEFAULT NULL,
  `Day` date NULL DEFAULT NULL,
  `StartTime` int NULL DEFAULT NULL,
  `Duration` decimal(2, 1) NULL DEFAULT NULL,
  `EmployeeID` int NULL DEFAULT NULL,
  `StoreID` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classes
-- ----------------------------

-- ----------------------------
-- Table structure for classrule
-- ----------------------------
DROP TABLE IF EXISTS `classrule`;
CREATE TABLE `classrule`  (
  `RuleID` int NULL DEFAULT NULL,
  `RuleType` int NULL DEFAULT NULL,
  `Divisor` int NULL DEFAULT NULL,
  `RuleTypeValue` decimal(2, 1) NOT NULL,
  `StoreID` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classrule
-- ----------------------------

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `EmployeeID` int NOT NULL,
  `EmployeeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EmployeeEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EmployeePosition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `StoreID` int NOT NULL,
  PRIMARY KEY (`EmployeeID`) USING BTREE,
  UNIQUE INDEX `EmployeeEmail`(`EmployeeEmail` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '张磊', 'zhang.lei@example.com', '经理', 1);
INSERT INTO `employee` VALUES (2, '李娜', 'li.na@example.com', '销售员', 2);
INSERT INTO `employee` VALUES (3, '王宇', 'wang.yu@example.com', '职员', 1);
INSERT INTO `employee` VALUES (4, '赵莉', 'zhao.li@example.com', '助理经理', 2);
INSERT INTO `employee` VALUES (5, '刘强', 'liu.qiang@example.com', '销售员', 1);
INSERT INTO `employee` VALUES (6, '陈静', 'chen.jing@example.com', '职员', 2);
INSERT INTO `employee` VALUES (7, '周勇', 'zhou.yong@example.com', '经理', 1);
INSERT INTO `employee` VALUES (8, '孙丽', 'sun.li@example.com', '助理经理', 2);
INSERT INTO `employee` VALUES (9, '杨勇', 'yang.yong@example.com', '职员', 1);
INSERT INTO `employee` VALUES (10, '吴婷', 'wu.ting@example.com', '销售员', 2);
INSERT INTO `employee` VALUES (11, '郑华', 'zheng.hua@example.com', '助理经理', 1);
INSERT INTO `employee` VALUES (12, '王涛', 'wang.tao@example.com', '经理', 2);
INSERT INTO `employee` VALUES (13, '赵婷', 'zhao.ting@example.com', '职员', 1);
INSERT INTO `employee` VALUES (14, '张宇', 'zhang.yu@example.com', '销售员', 2);
INSERT INTO `employee` VALUES (15, '李霞', 'li.xia@example.com', '助理经理', 1);
INSERT INTO `employee` VALUES (16, '刘明', 'liu.ming@example.com', '职员', 2);
INSERT INTO `employee` VALUES (17, '陈娜', 'chen.na@example.com', '经理', 1);
INSERT INTO `employee` VALUES (18, '周涛', 'zhou.tao@example.com', '销售员', 2);
INSERT INTO `employee` VALUES (19, '孙磊', 'sun.lei@example.com', '助理经理', 1);
INSERT INTO `employee` VALUES (20, '杨丽', 'yang.li@example.com', '职员', 2);
INSERT INTO `employee` VALUES (21, '郑宇', 'zheng.yu@example.com', '经理', 1);
INSERT INTO `employee` VALUES (22, '王艳', 'wang.yan@example.com', '销售员', 2);
INSERT INTO `employee` VALUES (23, '赵娜', 'zhao.na@example.com', '助理经理', 1);
INSERT INTO `employee` VALUES (24, '张涛', 'zhang.tao@example.com', '经理', 2);
INSERT INTO `employee` VALUES (25, '李明', 'li.ming@example.com', '销售员', 1);
INSERT INTO `employee` VALUES (26, '刘婷', 'li.ting@example.com', '职员', 2);
INSERT INTO `employee` VALUES (27, '陈强', 'chen.qiang@example.com', '助理经理', 1);
INSERT INTO `employee` VALUES (28, '周丽', 'zhou.li@example.com', '经理', 2);
INSERT INTO `employee` VALUES (29, '孙强', 'sun.qiang@gmail.com', '销售员', 1);
INSERT INTO `employee` VALUES (30, '杨娟', 'yang.juan@example.com', '助理经理', 2);
INSERT INTO `employee` VALUES (31, '吴宇', 'wu.yu@example.com', '职员', 1);
INSERT INTO `employee` VALUES (32, '郑娟', 'zheng.juan@example.com', '销售员', 2);
INSERT INTO `employee` VALUES (33, '王强', 'wang.qiang@example.com', '助理经理', 1);
INSERT INTO `employee` VALUES (34, '赵涛', 'zhao.tao@example.com', '经理', 2);
INSERT INTO `employee` VALUES (35, '张艳', 'zhang.yan@example.com', '销售员', 1);
INSERT INTO `employee` VALUES (36, '李强', 'li.qiang@example.com', '职员', 2);
INSERT INTO `employee` VALUES (37, '刘梅', 'liu.mei@example.com', '助理经理', 1);
INSERT INTO `employee` VALUES (38, '陈明', 'chen.ming@example.com', '经理', 2);
INSERT INTO `employee` VALUES (39, '周婷', 'zhou.ting@example.com', '销售员', 1);
INSERT INTO `employee` VALUES (40, '孙强', 'sun.qiang@example.com', '助理经理', 2);
INSERT INTO `employee` VALUES (41, '杨娜', 'yang.na@example.com', '经理', 1);
INSERT INTO `employee` VALUES (42, '吴杰', 'wu.jie@example.com', '助理经理', 2);
INSERT INTO `employee` VALUES (43, '郑婷', 'zheng.ting@example.com', '职员', 1);
INSERT INTO `employee` VALUES (44, '王涛', 'wang.tao@gmail.com', '销售员', 2);
INSERT INTO `employee` VALUES (45, '赵芳', 'zhao.fang@example.com', '经理', 1);
INSERT INTO `employee` VALUES (46, '张洋', 'zhang.yang@example.com', '销售员', 2);
INSERT INTO `employee` VALUES (47, '李萍', 'li.ping@example.com', '职员', 1);
INSERT INTO `employee` VALUES (48, '刘明', 'liu.ming@gmail.com', '助理经理', 2);
INSERT INTO `employee` VALUES (49, '陈丽', 'chen.li@example.com', '经理', 1);
INSERT INTO `employee` VALUES (50, '周杰', 'zhou.jie@example.com', '销售员', 2);

-- ----------------------------
-- Table structure for employee_preference
-- ----------------------------
DROP TABLE IF EXISTS `employee_preference`;
CREATE TABLE `employee_preference`  (
  `EmployeeID` int NOT NULL,
  `PreferDay` int NULL DEFAULT NULL,
  `PreferTime` decimal(3, 1) NULL DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_preference
-- ----------------------------
INSERT INTO `employee_preference` VALUES (1, 1, 8.0);
INSERT INTO `employee_preference` VALUES (2, 1, 10.0);
INSERT INTO `employee_preference` VALUES (3, 1, 12.0);
INSERT INTO `employee_preference` VALUES (4, 2, 8.0);
INSERT INTO `employee_preference` VALUES (5, 2, 10.0);
INSERT INTO `employee_preference` VALUES (6, 2, 12.0);
INSERT INTO `employee_preference` VALUES (7, 3, 8.0);
INSERT INTO `employee_preference` VALUES (8, 3, 10.0);
INSERT INTO `employee_preference` VALUES (9, 3, 12.0);
INSERT INTO `employee_preference` VALUES (10, 4, 8.0);
INSERT INTO `employee_preference` VALUES (11, 4, 10.0);
INSERT INTO `employee_preference` VALUES (12, 4, 12.0);
INSERT INTO `employee_preference` VALUES (13, 5, 8.0);
INSERT INTO `employee_preference` VALUES (14, 5, 10.0);
INSERT INTO `employee_preference` VALUES (15, 5, 12.0);
INSERT INTO `employee_preference` VALUES (16, 6, 8.0);
INSERT INTO `employee_preference` VALUES (17, 6, 10.0);
INSERT INTO `employee_preference` VALUES (18, 6, 12.0);
INSERT INTO `employee_preference` VALUES (19, 7, 8.0);
INSERT INTO `employee_preference` VALUES (20, 7, 10.0);
INSERT INTO `employee_preference` VALUES (21, 7, 12.0);
INSERT INTO `employee_preference` VALUES (22, 1, 14.0);
INSERT INTO `employee_preference` VALUES (23, 2, 14.0);
INSERT INTO `employee_preference` VALUES (24, 3, 14.0);
INSERT INTO `employee_preference` VALUES (25, 4, 14.0);
INSERT INTO `employee_preference` VALUES (26, 5, 14.0);
INSERT INTO `employee_preference` VALUES (27, 6, 14.0);
INSERT INTO `employee_preference` VALUES (28, 7, 14.0);
INSERT INTO `employee_preference` VALUES (29, 1, 16.0);
INSERT INTO `employee_preference` VALUES (30, 2, 16.0);
INSERT INTO `employee_preference` VALUES (31, 3, 16.0);
INSERT INTO `employee_preference` VALUES (32, 4, 16.0);
INSERT INTO `employee_preference` VALUES (33, 5, 16.0);
INSERT INTO `employee_preference` VALUES (34, 6, 16.0);
INSERT INTO `employee_preference` VALUES (35, 7, 16.0);
INSERT INTO `employee_preference` VALUES (36, 1, 18.0);
INSERT INTO `employee_preference` VALUES (37, 2, 18.0);
INSERT INTO `employee_preference` VALUES (38, 3, 18.0);
INSERT INTO `employee_preference` VALUES (39, 4, 18.0);
INSERT INTO `employee_preference` VALUES (40, 5, 18.0);
INSERT INTO `employee_preference` VALUES (41, 6, 18.0);
INSERT INTO `employee_preference` VALUES (42, 7, 18.0);
INSERT INTO `employee_preference` VALUES (43, 1, 20.0);
INSERT INTO `employee_preference` VALUES (44, 2, 20.0);
INSERT INTO `employee_preference` VALUES (45, 3, 20.0);
INSERT INTO `employee_preference` VALUES (46, 4, 20.0);
INSERT INTO `employee_preference` VALUES (47, 5, 20.0);
INSERT INTO `employee_preference` VALUES (48, 6, 20.0);
INSERT INTO `employee_preference` VALUES (49, 7, 20.0);
INSERT INTO `employee_preference` VALUES (50, 7, 22.0);

-- ----------------------------
-- Table structure for storeinfo
-- ----------------------------
DROP TABLE IF EXISTS `storeinfo`;
CREATE TABLE `storeinfo`  (
  `StoreID` int NOT NULL,
  `StoreName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `StoreAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `StoreSize` float NULL DEFAULT NULL,
  PRIMARY KEY (`StoreID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeinfo
-- ----------------------------
INSERT INTO `storeinfo` VALUES (1, '阿迪达斯', '西湖区留下街道288号', 400);
INSERT INTO `storeinfo` VALUES (2, '耐克', '西湖区留下街道300号', 500);
INSERT INTO `storeinfo` VALUES (3, '李宁', '西湖区留下街道388号', 450);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `UserID` int NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserType` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2021031201, '沧九溟', '123456', 1);
INSERT INTO `user` VALUES (2021031211, '徐昊然', '123456', 2);
INSERT INTO `user` VALUES (2021031228, '李木子', '111', 1);

-- ----------------------------
-- Procedure structure for InsertUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertUser`;
delimiter ;;
CREATE PROCEDURE `InsertUser`(IN p_id varchar(255), IN p_uname varchar(255), IN p_tp int,
                                                  OUT result int)
BEGIN
    DECLARE exitCode INT DEFAULT 0;

    -- 使用异常处理来捕获插入失败的情况
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET result = exitCode;
    END;

    -- 执行插入语句
    INSERT INTO user (UserID, UserName, UserPassword, UserType) VALUES (p_id, p_uname, '123456', p_tp);

    -- 如果没有抛出异常，说明插入成功
    SET result = 1;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
