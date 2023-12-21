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

 Date: 21/12/2023 23:53:33
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
INSERT INTO `employee` VALUES (0, '张小龙', '987654321@gmail.com', 'manager', 0);
INSERT INTO `employee` VALUES (1, '张三', 'zhang.san@example.com', '门店经理', 1);
INSERT INTO `employee` VALUES (2, '李四', 'li.si@example.com', '副经理', 2);
INSERT INTO `employee` VALUES (3, '王五', 'wang.wu@example.com', '小组长', 1);
INSERT INTO `employee` VALUES (4, '赵六', 'zhao.liu@example.com', '店员（收银）', 3);
INSERT INTO `employee` VALUES (5, '陈七', 'chen.qi@example.com', '店员（导购）', 2);
INSERT INTO `employee` VALUES (6, '周八', 'zhou.ba@example.com', '店员（库房）', 1);
INSERT INTO `employee` VALUES (7, '孙九', 'sun.jiu@example.com', '门店经理', 3);
INSERT INTO `employee` VALUES (8, '杨十', 'yang.shi@example.com', '副经理', 1);
INSERT INTO `employee` VALUES (9, '吴十一', 'wu.shi.yi@example.com', '小组长', 2);
INSERT INTO `employee` VALUES (10, '郑十二', 'zheng.shi.er@example.com', '店员（收银）', 3);
INSERT INTO `employee` VALUES (41, '刘四十一', 'liu.41@example.com', '店员（收银）', 2);
INSERT INTO `employee` VALUES (42, '韩四十二', 'han.42@example.com', '店员（导购）', 1);
INSERT INTO `employee` VALUES (43, '朱四十三', 'zhu.43@example.com', '店员（库房）', 3);
INSERT INTO `employee` VALUES (44, '秦四十四', 'qin.44@example.com', '门店经理', 1);
INSERT INTO `employee` VALUES (45, '许四十五', 'xu.45@example.com', '副经理', 2);
INSERT INTO `employee` VALUES (46, '孙四十六', 'sun.46@example.com', '小组长', 3);
INSERT INTO `employee` VALUES (47, '杨四十七', 'yang.47@example.com', '店员（收银）', 1);
INSERT INTO `employee` VALUES (48, '吴四十八', 'wu.48@example.com', '店员（导购）', 2);
INSERT INTO `employee` VALUES (49, '郑四十九', 'zheng.49@example.com', '店员（库房）', 3);
INSERT INTO `employee` VALUES (50, '周五十', 'zhou.50@example.com', '门店经理', 1);

-- ----------------------------
-- Table structure for employee_preference
-- ----------------------------
DROP TABLE IF EXISTS `employee_preference`;
CREATE TABLE `employee_preference`  (
  `EmployeeID` int NOT NULL,
  `PreferDay` int NULL DEFAULT NULL,
  `PreferTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_preference
-- ----------------------------

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
