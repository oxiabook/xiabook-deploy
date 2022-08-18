/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : 127.0.0.1:3306
 Source Schema         : smf-book

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 29/06/2022 11:11:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bookquery
-- ----------------------------
DROP TABLE IF EXISTS `bookquery`;
CREATE TABLE `bookquery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookName` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `siteKey` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(12) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `status` varchar(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `bookimg` varchar(128) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `indexPage` varchar(128) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `weight` tinyint NOT NULL DEFAULT '0' COMMENT '权重值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_bbae59fdb7828608ab6a23a3c2` (`bookName`,`siteKey`),
  KEY `IDX_98f279f89965d87264d916efee` (`bookName`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `complete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_daaf43033f8883943d0734e674` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `indexId` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isFetched` int NOT NULL DEFAULT '0',
  `isValid` int NOT NULL DEFAULT '0',
  `siteKey` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `chapterURL` varchar(128) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_90284c78b3d8ad2cd5d49c52fc` (`bookName`,`indexId`,`title`),
  KEY `IDX_91904e002ae914ce6a6200812b` (`bookName`)
) ENGINE=InnoDB AUTO_INCREMENT=15620 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

SET FOREIGN_KEY_CHECKS = 1;
