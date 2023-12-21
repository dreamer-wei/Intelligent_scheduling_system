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

 Date: 20/12/2023 20:17:15
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
  `Store` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
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
-- Table structure for classrole
-- ----------------------------
DROP TABLE IF EXISTS `classrole`;
CREATE TABLE `classrole`  (
  `RoleID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RoleType` int NULL DEFAULT NULL,
  `Divisor` int NULL DEFAULT NULL,
  `RoleTypeValue` decimal(2, 1) NOT NULL,
  `StoreID` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classrole
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
  `Store` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`EmployeeID`) USING BTREE,
  UNIQUE INDEX `EmployeeEmail`(`EmployeeEmail` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------

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
  `StoreID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
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
  `UserID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserType` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('202103151201', '沧九溟', '123456', 1);
INSERT INTO `user` VALUES ('202103151211', '徐昊然', '123456', 2);
INSERT INTO `user` VALUES ('202103151228', '李木子', '111', 1);

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
