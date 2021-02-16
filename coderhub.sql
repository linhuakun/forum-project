/*
 Navicat Premium Data Transfer

 Source Server         : kuncity
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : coderhub

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 13/01/2021 22:03:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for avatar
-- ----------------------------
DROP TABLE IF EXISTS `avatar`;
CREATE TABLE `avatar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `mimetype` varchar(30) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `avatar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of avatar
-- ----------------------------
BEGIN;
INSERT INTO `avatar` VALUES (31, 'b59d5122dfad5a81fa2c2d1f8b9330c5', 'image/jpeg', 47382, 1, '2020-12-18 19:29:59', '2020-12-28 14:57:44');
INSERT INTO `avatar` VALUES (33, '12e1d16ba9f6c9a22b318f263d2e137c', 'image/jpeg', 84484, 2, '2020-12-18 19:46:37', '2021-01-13 20:28:55');
INSERT INTO `avatar` VALUES (36, 'a68e14f56608523cdfc1e6018e238a5a', 'image/jpeg', 47382, 12, '2020-12-28 13:48:30', '2021-01-13 21:29:07');
INSERT INTO `avatar` VALUES (37, '6cf795d0f6ed28f20f7fe5bc80d5d4a2', 'image/jpeg', 47382, 4, '2020-12-28 15:00:47', '2020-12-28 15:00:47');
INSERT INTO `avatar` VALUES (38, '67416a1087040221f1c45bc6aa3e629d', 'image/jpeg', 36428, 3, '2020-12-29 11:21:20', '2020-12-29 11:21:20');
INSERT INTO `avatar` VALUES (39, '758e0292229787546931176e02f05ebc', 'image/jpeg', 47382, 13, '2021-01-13 20:52:12', '2021-01-13 20:52:12');
INSERT INTO `avatar` VALUES (40, '1670a56be5b6e6e18d060829181596fd', 'image/jpeg', 47382, 14, '2021-01-13 20:52:48', '2021-01-13 21:09:33');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `moment_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment_id` int NOT NULL DEFAULT '10000000',
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (67, '确实很快乐', 209, 2, 10000000, '2021-01-01 18:35:42', '2021-01-01 18:35:42');
INSERT INTO `comment` VALUES (68, '你说的很对', 209, 2, 10000000, '2021-01-01 18:35:52', '2021-01-01 18:35:52');
INSERT INTO `comment` VALUES (69, '对', 209, 3, 67, '2021-01-01 18:36:17', '2021-01-01 18:36:17');
INSERT INTO `comment` VALUES (70, '你说的不对', 209, 3, 68, '2021-01-01 18:36:23', '2021-01-01 18:36:23');
INSERT INTO `comment` VALUES (71, '你说的都对', 209, 12, 69, '2021-01-01 18:38:59', '2021-01-01 18:38:59');
INSERT INTO `comment` VALUES (72, 'kobe确实快乐', 209, 12, 67, '2021-01-01 18:39:20', '2021-01-01 18:39:20');
INSERT INTO `comment` VALUES (73, '那我一定要好好品尝品尝 不醉不休 快快乐乐评酒', 211, 2, 10000000, '2021-01-02 13:38:15', '2021-01-02 13:38:15');
INSERT INTO `comment` VALUES (74, '确实 你这个是好酒', 211, 1, 73, '2021-01-02 13:40:58', '2021-01-02 13:40:58');
INSERT INTO `comment` VALUES (75, '你这酒我没有喝过 我有空也去买买你这个酒', 212, 1, 10000000, '2021-01-02 13:41:51', '2021-01-02 13:41:51');
INSERT INTO `comment` VALUES (76, '123', 213, 12, 10000000, '2021-01-03 11:31:48', '2021-01-03 11:31:48');
INSERT INTO `comment` VALUES (77, '123', 213, 12, 76, '2021-01-03 11:31:52', '2021-01-03 11:31:52');
INSERT INTO `comment` VALUES (78, '123', 213, 12, 10000000, '2021-01-03 11:31:56', '2021-01-03 11:31:56');
INSERT INTO `comment` VALUES (79, '123', 213, 12, 78, '2021-01-03 11:32:03', '2021-01-03 11:32:03');
INSERT INTO `comment` VALUES (80, '12', 213, 12, 79, '2021-01-03 11:33:38', '2021-01-03 11:33:38');
INSERT INTO `comment` VALUES (81, '12', 213, 12, 10000000, '2021-01-03 11:35:22', '2021-01-03 11:35:22');
INSERT INTO `comment` VALUES (82, '123', 213, 12, 81, '2021-01-03 11:35:26', '2021-01-03 11:35:26');
INSERT INTO `comment` VALUES (83, '123', 213, 12, 82, '2021-01-03 11:36:26', '2021-01-03 11:36:26');
INSERT INTO `comment` VALUES (84, '123', 213, 12, 82, '2021-01-03 11:39:16', '2021-01-03 11:39:16');
INSERT INTO `comment` VALUES (85, '123', 213, 12, 10000000, '2021-01-03 11:39:22', '2021-01-03 11:39:22');
INSERT INTO `comment` VALUES (86, '是真的很帅吗', 214, 12, 10000000, '2021-01-04 15:42:02', '2021-01-04 15:42:02');
INSERT INTO `comment` VALUES (87, '是真的吗', 214, 3, 86, '2021-01-04 15:42:49', '2021-01-04 15:42:49');
INSERT INTO `comment` VALUES (88, '不会吧', 214, 3, 10000000, '2021-01-04 15:42:56', '2021-01-04 15:42:56');
INSERT INTO `comment` VALUES (89, '假的', 214, 2, 87, '2021-01-04 15:43:30', '2021-01-04 15:43:30');
INSERT INTO `comment` VALUES (90, '确实不错', 215, 12, 10000000, '2021-01-13 19:33:24', '2021-01-13 19:33:24');
INSERT INTO `comment` VALUES (91, '真不错', 216, 12, 10000000, '2021-01-13 20:01:00', '2021-01-13 20:01:00');
INSERT INTO `comment` VALUES (92, '真的很好', 216, 1, 10000000, '2021-01-13 20:01:31', '2021-01-13 20:01:31');
COMMIT;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) NOT NULL,
  `mimetype` varchar(30) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `moment_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `user_id` (`user_id`),
  KEY `moment_id` (`moment_id`),
  CONSTRAINT `file_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `file_ibfk_2` FOREIGN KEY (`moment_id`) REFERENCES `moment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of file
-- ----------------------------
BEGIN;
INSERT INTO `file` VALUES (18, '3e1c6700aaf0bbb169554e029533e7fa', 'image/png', 3467, 2, 1, '2020-12-24 16:41:12', '2020-12-24 16:41:12');
INSERT INTO `file` VALUES (19, '289aaa4d4a6426a818c7da7ca2f94218', 'image/jpeg', 14658, 2, 1, '2020-12-24 16:41:12', '2020-12-24 16:41:12');
INSERT INTO `file` VALUES (49, 'c389f4ca93af12b4152ba1c34d8cea68', 'image/jpeg', 47382, 204, 3, '2020-12-30 22:40:44', '2020-12-30 22:40:44');
INSERT INTO `file` VALUES (62, '99f90d5b46444d0eb39743f896bb7baa', 'image/jpeg', 12577, 211, 12, '2021-01-02 13:36:39', '2021-01-02 13:36:39');
INSERT INTO `file` VALUES (63, '41164e93cf9cf23a9ad95074cb1ad6ef', 'image/jpeg', 11730, 212, 2, '2021-01-02 13:39:01', '2021-01-02 13:39:01');
INSERT INTO `file` VALUES (64, '5aa3099a6fa0bc76405a42305e190ec4', 'image/jpeg', 4857, 213, 1, '2021-01-02 13:40:28', '2021-01-02 13:40:28');
INSERT INTO `file` VALUES (65, 'f4a9d2e3a46b20de14546b90213a2088', 'image/jpeg', 18685, 213, 1, '2021-01-02 13:40:30', '2021-01-02 13:40:30');
INSERT INTO `file` VALUES (66, '0063f379ad2e034c76e9ae6063106d6a', 'image/jpeg', 84484, 214, 12, '2021-01-04 15:41:39', '2021-01-04 15:41:39');
INSERT INTO `file` VALUES (67, 'e8852705b5307bb99a7ac0a845642072', 'image/jpeg', 12577, 215, 2, '2021-01-04 15:44:45', '2021-01-04 15:44:45');
INSERT INTO `file` VALUES (68, 'bde4f1185d5c1b71e40805eaa5411d3c', 'image/jpeg', 4857, 215, 2, '2021-01-04 15:44:45', '2021-01-04 15:44:45');
INSERT INTO `file` VALUES (69, '4d4ced6302e714c621da766c4ce1a138', 'image/jpeg', 1401, 216, 12, '2021-01-13 20:00:45', '2021-01-13 20:00:45');
INSERT INTO `file` VALUES (70, '744a7dcd2fb34de275f813a94044049e', 'image/jpeg', 18685, 216, 12, '2021-01-13 20:00:48', '2021-01-13 20:00:48');
INSERT INTO `file` VALUES (71, 'ba22b3a5609ed2ce8d9c03b1b99efcde', 'image/jpeg', 12577, 216, 12, '2021-01-13 20:00:48', '2021-01-13 20:00:48');
COMMIT;

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of label
-- ----------------------------
BEGIN;
INSERT INTO `label` VALUES (1, '前端', '2020-12-16 15:58:57', '2020-12-16 15:58:57');
INSERT INTO `label` VALUES (2, '文学', '2020-12-16 16:00:56', '2020-12-16 16:00:56');
INSERT INTO `label` VALUES (3, '青春', '2020-12-16 16:01:04', '2020-12-16 16:01:04');
INSERT INTO `label` VALUES (4, 'c语言', '2020-12-16 16:49:09', '2020-12-16 16:49:09');
INSERT INTO `label` VALUES (6, '编程', '2020-12-16 19:11:37', '2020-12-16 19:11:37');
INSERT INTO `label` VALUES (7, '开发语言', '2020-12-16 19:11:37', '2020-12-16 19:11:37');
INSERT INTO `label` VALUES (8, 'java语言', '2020-12-16 19:33:36', '2020-12-16 19:33:36');
COMMIT;

-- ----------------------------
-- Table structure for moment
-- ----------------------------
DROP TABLE IF EXISTS `moment`;
CREATE TABLE `moment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `user_id` int NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `moment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of moment
-- ----------------------------
BEGIN;
INSERT INTO `moment` VALUES (2, '纵然再苦守数百年 我的心意 始终如一', 1, '2020-12-15 14:02:49', '2020-12-15 14:02:49');
INSERT INTO `moment` VALUES (5, '不要告诉我你不需要保护，不要告诉我你不寂寞，知微，我只希望你，在走过黑夜的那个时辰，不要倔强的选择一个人。', 3, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (6, 'If you shed tears when you miss the sun, you also miss the stars.如果你因失去了太阳而流泪，那么你也将失去群星了。', 1, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (8, '某一天，突然发现，许多结果都与路径无关。', 4, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (10, '翅膀长在你的肩上，太在乎别人对于飞行姿势的批评，所以你飞不起来', 4, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (11, '一个人至少拥有一个梦想，有一个理由去坚强。心若没有栖息的地方，到哪里都是在流浪。', 2, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (12, '不乱于心，不困于情。不畏将来，不念过往。如此，安好。', 3, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (13, '如果你给我的，和你给别人的是一样的，那我就不要了。', 3, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (14, '故事的开头总是这样，适逢其会，猝不及防。故事的结局总是这样，花开两朵，天各一方。', 2, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (15, '你不愿意种花，你说，我不愿看见它一点点凋落。是的，为了避免结束，你避免了一切开始。', 2, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (16, '你如果认识从前的我，也许你会原谅现在的我。', 4, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (17, '每一个不曾起舞的日子，都是对生命的辜负。', 2, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (18, '向来缘浅，奈何情深。', 2, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (19, '心之所向 素履以往 生如逆旅 一苇以航', 3, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (20, '生如夏花之绚烂，死如秋叶之静美。', 3, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (21, '答案很长，我准备用一生的时间来回答，你准备要听了吗？', 4, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (22, '因为爱过，所以慈悲；因为懂得，所以宽容。', 4, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (23, '我们听过无数的道理，却仍旧过不好这一生。', 1, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (24, '我来不及认真地年轻，待明白过来时，只能选择认真地老去。', 2, '2020-12-15 14:04:21', '2020-12-15 14:04:21');
INSERT INTO `moment` VALUES (31, '我说错了，C语言才是最好的语言~', 4, '2020-11-23 22:05:23', '2020-11-27 21:35:42');
INSERT INTO `moment` VALUES (33, '曾几何时，他也好，她也好，都是这家伙的被害者。所以我才憎恶着。这个强求着所谓“大家”的世界。必须建立在牺牲某人之上才能成立的低劣的和平。以温柔和正义粉饰，明明是恶毒之物却登大雅之堂，随着时间的流逝越发凶恶，除欺瞒外别无其二的空虚的概念。过去和世界都是无法改变的。发生过的事情和所谓的“大家”都是无法改变的。但是，并不是说自己只能隶属于他们', 1, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (34, '不要告诉我你不需要保护，不要告诉我你不寂寞，知微，我只希望你，在走过黑夜的那个时辰，不要倔强的选择一个人。', 3, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (35, 'If you shed tears when you miss the sun, you also miss the stars.如果你因失去了太阳而流泪，那么你也将失去群星了。', 1, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (36, '在世间万物中我都发现了你，渺小时，你是阳光下一粒种子，伟大时，你隐身在高山海洋里。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (38, '限定目的，能使人生变得简洁。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (39, '翅膀长在你的肩上，太在乎别人对于飞行姿势的批评，所以你飞不起来', 4, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (40, '一个人至少拥有一个梦想，有一个理由去坚强。心若没有栖息的地方，到哪里都是在流浪。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (41, '不乱于心，不困于情。不畏将来，不念过往。如此，安好。', 3, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (42, '如果你给我的，和你给别人的是一样的，那我就不要了。', 3, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (43, '故事的开头总是这样，适逢其会，猝不及防。故事的结局总是这样，花开两朵，天各一方。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (44, '你不愿意种花，你说，我不愿看见它一点点凋落。是的，为了避免结束，你避免了一切开始。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (45, '你如果认识从前的我，也许你会原谅现在的我。', 4, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (46, '每一个不曾起舞的日子，都是对生命的辜负。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (47, '向来缘浅，奈何情深。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (48, '心之所向 素履以往 生如逆旅 一苇以航', 3, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (49, '生如夏花之绚烂，死如秋叶之静美。', 3, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (50, '答案很长，我准备用一生的时间来回答，你准备要听了吗？', 4, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (51, '因为爱过，所以慈悲；因为懂得，所以宽容。', 4, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (52, '我们听过无数的道理，却仍旧过不好这一生。', 1, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (53, '我来不及认真地年轻，待明白过来时，只能选择认真地老去。', 2, '2020-11-23 22:21:19', '2020-11-23 22:21:19');
INSERT INTO `moment` VALUES (204, 'must successf！', 3, '2020-12-30 22:40:43', '2020-12-30 22:40:43');
INSERT INTO `moment` VALUES (211, '白杜康好酒！好酒！建议品尝品尝', 12, '2021-01-02 13:36:39', '2021-01-02 13:36:39');
INSERT INTO `moment` VALUES (212, '大家看看这酒如何', 2, '2021-01-02 13:39:01', '2021-01-02 13:39:01');
INSERT INTO `moment` VALUES (213, '这二款精品大家看看怎么样？', 1, '2021-01-02 13:40:28', '2021-01-02 13:40:28');
INSERT INTO `moment` VALUES (214, '我强哥很帅', 12, '2021-01-04 15:41:39', '2021-01-04 15:41:39');
INSERT INTO `moment` VALUES (215, '确实今天 天气很好', 2, '2021-01-04 15:44:45', '2021-01-04 15:44:45');
INSERT INTO `moment` VALUES (216, '天下之大 没有一个厉害的', 12, '2021-01-13 20:00:45', '2021-01-13 20:00:45');
COMMIT;

-- ----------------------------
-- Table structure for moment_label
-- ----------------------------
DROP TABLE IF EXISTS `moment_label`;
CREATE TABLE `moment_label` (
  `moment_id` int NOT NULL,
  `label_id` int NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`moment_id`,`label_id`),
  KEY `label_id` (`label_id`),
  CONSTRAINT `moment_label_ibfk_1` FOREIGN KEY (`moment_id`) REFERENCES `moment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `moment_label_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of moment_label
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for moment_user
-- ----------------------------
DROP TABLE IF EXISTS `moment_user`;
CREATE TABLE `moment_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `moment_id` int NOT NULL,
  `user_id` int NOT NULL,
  `ispraise` int NOT NULL DEFAULT '1',
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of moment_user
-- ----------------------------
BEGIN;
INSERT INTO `moment_user` VALUES (305, 213, 12, 1, '2021-01-03 18:35:13', '2021-01-13 19:59:14');
INSERT INTO `moment_user` VALUES (306, 212, 12, 0, '2021-01-03 18:35:50', '2021-01-03 18:38:27');
INSERT INTO `moment_user` VALUES (307, 211, 12, 0, '2021-01-03 18:39:52', '2021-01-03 18:39:57');
INSERT INTO `moment_user` VALUES (308, 214, 12, 1, '2021-01-04 15:41:46', '2021-01-04 15:48:37');
INSERT INTO `moment_user` VALUES (309, 214, 2, 0, '2021-01-04 15:43:35', '2021-01-04 15:45:15');
INSERT INTO `moment_user` VALUES (310, 215, 2, 1, '2021-01-04 15:45:13', '2021-01-04 15:45:13');
INSERT INTO `moment_user` VALUES (311, 213, 2, 1, '2021-01-04 15:45:18', '2021-01-04 15:45:20');
INSERT INTO `moment_user` VALUES (312, 215, 12, 1, '2021-01-04 15:45:41', '2021-01-13 19:53:56');
INSERT INTO `moment_user` VALUES (313, 216, 12, 1, '2021-01-13 20:00:56', '2021-01-13 20:00:56');
INSERT INTO `moment_user` VALUES (314, 216, 1, 1, '2021-01-13 20:01:17', '2021-01-13 20:01:24');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(10) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` int NOT NULL,
  `score` decimal(10,1) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pid` int NOT NULL,
  `voteCnt` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, '华为', '华为nova 3（全网通） ', 2699, 6.7, 'http://detail.zol.com.cn/cell_phone/index1185512.shtml', 1185512, 65);
INSERT INTO `products` VALUES (2, '华为', '华为nova 3（全网通） ', 2699, 6.7, 'http://detail.zol.com.cn/cell_phone/index1185512.shtml', 1185512, 65);
INSERT INTO `products` VALUES (3, '华为', '华为P20 Pro（6GB RAM/全网通） ', 4488, 8.3, 'http://detail.zol.com.cn/cell_phone/index1207038.shtml', 1207038, 103);
INSERT INTO `products` VALUES (4, '华为', '华为P20（全网通） ', 3388, 8.4, 'http://detail.zol.com.cn/cell_phone/index1175779.shtml', 1175779, 127);
INSERT INTO `products` VALUES (5, '华为', '华为nova 3i（4GB RAM/全网通） ', 1999, 7.0, 'http://detail.zol.com.cn/cell_phone/index1222100.shtml', 1222100, 9);
INSERT INTO `products` VALUES (6, '华为', '华为Mate 10（4GB RAM/全网通） ', 3399, 8.3, 'http://detail.zol.com.cn/cell_phone/index1165672.shtml', 1165672, 125);
INSERT INTO `products` VALUES (7, '华为', '华为nova 3e（全网通） ', 1999, 8.8, 'http://detail.zol.com.cn/cell_phone/index1207608.shtml', 1207608, 71);
INSERT INTO `products` VALUES (8, '华为', '华为nova 2s（4GB RAM/全网通） ', 2399, 7.5, 'http://detail.zol.com.cn/cell_phone/index1204363.shtml', 1204363, 97);
INSERT INTO `products` VALUES (9, '华为', '华为Mate 10 Pro（全网通） ', 3599, 8.7, 'http://detail.zol.com.cn/cell_phone/index1181128.shtml', 1181128, 92);
INSERT INTO `products` VALUES (10, '华为', '华为畅享8（3GB RAM/全网通） ', 1099, 5.3, 'http://detail.zol.com.cn/cell_phone/index1208286.shtml', 1208286, 28);
INSERT INTO `products` VALUES (11, '华为', '华为P10（VTR-AL00/全网通） ', 3488, 7.2, 'http://detail.zol.com.cn/cell_phone/index1160028.shtml', 1160028, 395);
INSERT INTO `products` VALUES (12, '华为', '华为畅享8 Plus（全网通） ', 1499, 5.8, 'http://detail.zol.com.cn/cell_phone/index1210102.shtml', 1210102, 11);
INSERT INTO `products` VALUES (13, '华为', '华为麦芒7（全网通） ', 2399, 7.6, 'http://detail.zol.com.cn/cell_phone/index1227167.shtml', 1227167, 5);
INSERT INTO `products` VALUES (14, '华为', '华为Mate 9（MHA-AL00/4GB RAM/全网通） ', 1788, 7.8, 'http://detail.zol.com.cn/cell_phone/index1143413.shtml', 1143413, 449);
INSERT INTO `products` VALUES (15, '华为', '华为nova 3i（6GB RAM/全网通） ', 2199, 7.0, 'http://detail.zol.com.cn/cell_phone/index1224424.shtml', 1224424, 9);
INSERT INTO `products` VALUES (16, '华为', '华为Mate RS保时捷版（全网通） ', 9999, 6.1, 'http://detail.zol.com.cn/cell_phone/index1210089.shtml', 1210089, 16);
INSERT INTO `products` VALUES (17, '华为', '华为nova 2（PIC-AL00/全网通） ', 1228, 8.0, 'http://detail.zol.com.cn/cell_phone/index1170042.shtml', 1170042, 209);
INSERT INTO `products` VALUES (18, '华为', '华为麦芒6（全网通） ', 2199, 6.1, 'http://detail.zol.com.cn/cell_phone/index1182274.shtml', 1182274, 57);
INSERT INTO `products` VALUES (19, '华为', '华为P9（EVA-AL00/标准版/全网通） ', 1448, 7.8, 'http://detail.zol.com.cn/cell_phone/index404275.shtml', 404275, 648);
INSERT INTO `products` VALUES (20, '华为', '华为nova（CAZ-AL10/高配版/全网通） ', 988, 6.9, 'http://detail.zol.com.cn/cell_phone/index1154505.shtml', 1154505, 198);
INSERT INTO `products` VALUES (21, '华为', '华为畅享8e（全网通） ', 999, 4.8, 'http://detail.zol.com.cn/cell_phone/index1210103.shtml', 1210103, 4);
INSERT INTO `products` VALUES (22, '华为', '华为麦芒5（MLA-AL10/高配版/全网通） ', 1099, 6.8, 'http://detail.zol.com.cn/cell_phone/index1148829.shtml', 1148829, 136);
INSERT INTO `products` VALUES (23, '华为', '华为P10 Plus（VKY-AL00/6GB RAM全网通） ', 2488, 7.5, 'http://detail.zol.com.cn/cell_phone/index1163813.shtml', 1163813, 186);
INSERT INTO `products` VALUES (24, '华为', '华为Mate 9 Pro（4GB RAM/全网通） ', 2799, 8.0, 'http://detail.zol.com.cn/cell_phone/index1159578.shtml', 1159578, 136);
INSERT INTO `products` VALUES (25, 'vivo', 'vivo X7 Plus（全网通） ', 2350, 8.2, 'http://detail.zol.com.cn/cell_phone/index1147812.shtml', 1147812, 484);
INSERT INTO `products` VALUES (26, 'vivo', 'vivo X9s Plus（全网通） ', 2498, 7.4, 'http://detail.zol.com.cn/cell_phone/index1170837.shtml', 1170837, 523);
INSERT INTO `products` VALUES (27, 'vivo', 'vivo Y51A（高配版/全网通） ', 998, 6.6, 'http://detail.zol.com.cn/cell_phone/index1115625.shtml', 1115625, 306);
INSERT INTO `products` VALUES (28, 'vivo', 'vivo X7（全网通） ', 1799, 7.7, 'http://detail.zol.com.cn/cell_phone/index1145877.shtml', 1145877, 736);
INSERT INTO `products` VALUES (29, 'vivo', 'vivo X9s（全网通） ', 1998, 8.9, 'http://detail.zol.com.cn/cell_phone/index1174429.shtml', 1174429, 563);
INSERT INTO `products` VALUES (30, 'vivo', 'vivo Y66i（全网通） ', 1198, 6.3, 'http://detail.zol.com.cn/cell_phone/index1204388.shtml', 1204388, 161);
INSERT INTO `products` VALUES (31, 'vivo', 'vivo X9s  L（移动全网通） ', 1998, 8.9, 'http://detail.zol.com.cn/cell_phone/index1175257.shtml', 1175257, 563);
INSERT INTO `products` VALUES (32, 'vivo', 'vivo X9L（移动全网通）  ', 1998, 8.5, 'http://detail.zol.com.cn/cell_phone/index1170124.shtml', 1170124, 1362);
INSERT INTO `products` VALUES (33, 'vivo', 'vivo X20Plus屏幕指纹版（全网通） ', 3598, 6.2, 'http://detail.zol.com.cn/cell_phone/index1205808.shtml', 1205808, 17);
INSERT INTO `products` VALUES (34, 'vivo', 'vivo Y75（4GB RAM/全网通） ', 1098, 7.5, 'http://detail.zol.com.cn/cell_phone/index1208237.shtml', 1208237, 27);
INSERT INTO `products` VALUES (35, 'vivo', 'vivo X20（旗舰版/全网通） ', 2598, 9.1, 'http://detail.zol.com.cn/cell_phone/index1184293.shtml', 1184293, 1075);
INSERT INTO `products` VALUES (36, 'vivo', 'vivo Y55（全网通） ', 999, 6.4, 'http://detail.zol.com.cn/cell_phone/index1156093.shtml', 1156093, 126);
INSERT INTO `products` VALUES (37, 'vivo', 'vivo Y75（3GB RAM/全网通） ', 1298, 7.5, 'http://detail.zol.com.cn/cell_phone/index1185212.shtml', 1185212, 27);
INSERT INTO `products` VALUES (38, 'vivo', 'vivo Xplay6（全网通） ', 3498, 8.7, 'http://detail.zol.com.cn/cell_phone/index1159623.shtml', 1159623, 691);
INSERT INTO `products` VALUES (39, 'OPPO', 'OPPO R17（8GB RAM/全网通） ', 3499, 9.5, 'http://detail.zol.com.cn/cell_phone/index1225806.shtml', 1225806, 173);
INSERT INTO `products` VALUES (40, 'OPPO', 'OPPO Find X（标准版/全网通） ', 4999, 9.5, 'http://detail.zol.com.cn/cell_phone/index1213467.shtml', 1213467, 774);
INSERT INTO `products` VALUES (41, 'OPPO', 'OPPO R15（6GB RAM/全网通） ', 2699, 9.2, 'http://detail.zol.com.cn/cell_phone/index1206990.shtml', 1206990, 1055);
INSERT INTO `products` VALUES (42, 'OPPO', 'OPPO A3（全网通） ', 1799, 8.9, 'http://detail.zol.com.cn/cell_phone/index1211599.shtml', 1211599, 366);
INSERT INTO `products` VALUES (43, 'OPPO', 'OPPO A5（全网通） ', 1500, 8.7, 'http://detail.zol.com.cn/cell_phone/index1221126.shtml', 1221126, 357);
INSERT INTO `products` VALUES (44, 'OPPO', 'OPPO R11（标准版/全网通） ', 1553, 9.1, 'http://detail.zol.com.cn/cell_phone/index1150077.shtml', 1150077, 1346);
INSERT INTO `products` VALUES (45, 'OPPO', 'OPPO A1（3GB RAM/全网通） ', 1000, 7.4, 'http://detail.zol.com.cn/cell_phone/index1209829.shtml', 1209829, 86);
INSERT INTO `products` VALUES (46, 'OPPO', 'OPPO Find X兰博基尼版（全网通） ', 9999, 9.7, 'http://detail.zol.com.cn/cell_phone/index1220645.shtml', 1220645, 89);
INSERT INTO `products` VALUES (47, 'OPPO', 'OPPO R17 Pro（全网通） ', 4299, 9.4, 'http://detail.zol.com.cn/cell_phone/index1225826.shtml', 1225826, 91);
INSERT INTO `products` VALUES (48, 'OPPO', 'OPPO A7x（全网通） ', 1999, 8.7, 'http://detail.zol.com.cn/cell_phone/index1230724.shtml', 1230724, 48);
INSERT INTO `products` VALUES (49, 'OPPO', 'OPPO R11s（4GB RAM/全网通） ', 2299, 9.2, 'http://detail.zol.com.cn/cell_phone/index1184068.shtml', 1184068, 1310);
INSERT INTO `products` VALUES (50, 'OPPO', 'OPPO A83 (全网通) ', 1199, 5.8, 'http://detail.zol.com.cn/cell_phone/index1205003.shtml', 1205003, 38);
INSERT INTO `products` VALUES (51, 'OPPO', 'OPPO A57（全网通） ', 799, 7.6, 'http://detail.zol.com.cn/cell_phone/index1160598.shtml', 1160598, 577);
INSERT INTO `products` VALUES (52, 'OPPO', 'OPPO A73（全网通） ', 1499, 8.4, 'http://detail.zol.com.cn/cell_phone/index1205054.shtml', 1205054, 380);
INSERT INTO `products` VALUES (53, 'OPPO', 'OPPO R17（雾光渐变色/8GB RAM/全网通） ', 3599, 9.5, 'http://detail.zol.com.cn/cell_phone/index1229193.shtml', 1229193, 171);
INSERT INTO `products` VALUES (54, 'OPPO', 'OPPO R11s Plus（全网通） ', 1899, 9.0, 'http://detail.zol.com.cn/cell_phone/index1184231.shtml', 1184231, 669);
INSERT INTO `products` VALUES (55, 'OPPO', 'OPPO R15梦镜版（梦境红/全网通） ', 2999, 9.2, 'http://detail.zol.com.cn/cell_phone/index1208720.shtml', 1208720, 1032);
INSERT INTO `products` VALUES (56, 'OPPO', 'OPPO R17（6GB RAM/全网通） ', 3199, 9.5, 'http://detail.zol.com.cn/cell_phone/index1229159.shtml', 1229159, 171);
INSERT INTO `products` VALUES (57, 'OPPO', 'OPPO R11 Plus（全网通） ', 1788, 9.2, 'http://detail.zol.com.cn/cell_phone/index1170222.shtml', 1170222, 546);
INSERT INTO `products` VALUES (58, 'OPPO', 'OPPO R15梦镜版（陶瓷黑/梦境紫/全网通） ', 3299, 9.2, 'http://detail.zol.com.cn/cell_phone/index1210656.shtml', 1210656, 1032);
INSERT INTO `products` VALUES (59, 'OPPO', 'OPPO A79（全网通） ', 1699, 8.7, 'http://detail.zol.com.cn/cell_phone/index1203640.shtml', 1203640, 339);
INSERT INTO `products` VALUES (60, '小米', '小米8（6GB RAM/全网通） ', 2599, 5.1, 'http://detail.zol.com.cn/cell_phone/index1213787.shtml', 1213787, 308);
INSERT INTO `products` VALUES (61, '小米', '小米6X（4GB RAM/全网通） ', 1349, 5.3, 'http://detail.zol.com.cn/cell_phone/index1170480.shtml', 1170480, 106);
INSERT INTO `products` VALUES (62, '小米', '小米8 SE（4GB RAM/全网通） ', 1699, 5.3, 'http://detail.zol.com.cn/cell_phone/index1217453.shtml', 1217453, 76);
INSERT INTO `products` VALUES (63, '小米', '小米8青春版（4GB RAM/全网通） ', 1399, 6.0, 'http://detail.zol.com.cn/cell_phone/index1231048.shtml', 1231048, 18);
INSERT INTO `products` VALUES (64, '小米', '小米红米Note 5（3GB RAM/全网通） ', 999, 5.5, 'http://detail.zol.com.cn/cell_phone/index1175353.shtml', 1175353, 98);
INSERT INTO `products` VALUES (65, '小米', '小米MIX 2s（6GB RAM/全网通） ', 2999, 5.6, 'http://detail.zol.com.cn/cell_phone/index1202983.shtml', 1202983, 134);
INSERT INTO `products` VALUES (66, '小米', '小米6（6GB RAM/全网通） ', 2409, 6.2, 'http://detail.zol.com.cn/cell_phone/index1161066.shtml', 1161066, 526);
INSERT INTO `products` VALUES (67, '小米', '小米红米6 Pro（3GB RAM/全网通） ', 969, 6.1, 'http://detail.zol.com.cn/cell_phone/index1220665.shtml', 1220665, 21);
INSERT INTO `products` VALUES (68, '小米', '小米8透明探索版（全网通） ', 3699, 5.4, 'http://detail.zol.com.cn/cell_phone/index1216973.shtml', 1216973, 48);
INSERT INTO `products` VALUES (69, '小米', '小米Max 3（4GB RAM/全网通） ', 1699, 5.1, 'http://detail.zol.com.cn/cell_phone/index1205304.shtml', 1205304, 66);
INSERT INTO `products` VALUES (70, '小米', '小米MIX 2（全网通） ', 2299, 5.4, 'http://detail.zol.com.cn/cell_phone/index1160797.shtml', 1160797, 147);
INSERT INTO `products` VALUES (71, '小米', '小米Max 2（全网通） ', 939, 6.2, 'http://detail.zol.com.cn/cell_phone/index1165765.shtml', 1165765, 119);
INSERT INTO `products` VALUES (72, '小米', '小米红米6（3GB RAM/全网通） ', 769, 5.4, 'http://detail.zol.com.cn/cell_phone/index1215069.shtml', 1215069, 11);
INSERT INTO `products` VALUES (73, '小米', '小米红米5 Plus（3GB RAM/全网通） ', 800, 5.8, 'http://detail.zol.com.cn/cell_phone/index1183689.shtml', 1183689, 75);
INSERT INTO `products` VALUES (74, '小米', '小米红米Note 5（4GB RAM/全网通） ', 1299, 5.5, 'http://detail.zol.com.cn/cell_phone/index1209455.shtml', 1209455, 98);
INSERT INTO `products` VALUES (75, '小米', '小米红米Note 4X（3GB RAM/全网通） ', 999, 5.7, 'http://detail.zol.com.cn/cell_phone/index1163122.shtml', 1163122, 285);
INSERT INTO `products` VALUES (76, '小米', '小米Note 3（6GB RAM/全网通） ', 1849, 5.8, 'http://detail.zol.com.cn/cell_phone/index1164780.shtml', 1164780, 92);
INSERT INTO `products` VALUES (77, '小米', '小米5X（全网通） ', 1129, 5.8, 'http://detail.zol.com.cn/cell_phone/index1175015.shtml', 1175015, 98);
INSERT INTO `products` VALUES (78, '小米', '小米红米6A（2GB RAM/全网通） ', 549, 6.1, 'http://detail.zol.com.cn/cell_phone/index1216196.shtml', 1216196, 3);
INSERT INTO `products` VALUES (79, '小米', '小米6X（6GB RAM/全网通） ', 1709, 5.3, 'http://detail.zol.com.cn/cell_phone/index1212271.shtml', 1212271, 106);
INSERT INTO `products` VALUES (80, '小米', '小米MIX（全网通） ', 2900, 5.3, 'http://detail.zol.com.cn/cell_phone/index1158428.shtml', 1158428, 173);
INSERT INTO `products` VALUES (81, '苹果', '苹果iPhone XS（全网通） ', 8699, 5.5, 'http://detail.zol.com.cn/cell_phone/index1229519.shtml', 1229519, 51);
INSERT INTO `products` VALUES (82, '苹果', '苹果iPhone X（全网通） ', 6898, 8.0, 'http://detail.zol.com.cn/cell_phone/index1182639.shtml', 1182639, 193);
INSERT INTO `products` VALUES (83, '苹果', '苹果iPhone XR（全网通） ', 6499, 4.6, 'http://detail.zol.com.cn/cell_phone/index1205394.shtml', 1205394, 35);
INSERT INTO `products` VALUES (84, '苹果', '苹果iPhone 8 Plus（全网通） ', 5468, 8.5, 'http://detail.zol.com.cn/cell_phone/index1182632.shtml', 1182632, 84);
INSERT INTO `products` VALUES (85, '苹果', '苹果iPhone XS Max（全网通） ', 9599, 5.8, 'http://detail.zol.com.cn/cell_phone/index1229520.shtml', 1229520, 30);
INSERT INTO `products` VALUES (86, '苹果', '苹果iPhone 8（全网通） ', 4528, 6.8, 'http://detail.zol.com.cn/cell_phone/index394162.shtml', 394162, 254);
INSERT INTO `products` VALUES (87, '苹果', '苹果iPhone 7（全网通） ', 3628, 8.0, 'http://detail.zol.com.cn/cell_phone/index384973.shtml', 384973, 475);
INSERT INTO `products` VALUES (88, '苹果', '苹果iPhone 7 Plus（全网通） ', 4499, 8.1, 'http://detail.zol.com.cn/cell_phone/index1104332.shtml', 1104332, 335);
INSERT INTO `products` VALUES (89, '苹果', '苹果iPhone 6S Plus（全网通） ', 3000, 8.0, 'http://detail.zol.com.cn/cell_phone/index398690.shtml', 398690, 279);
INSERT INTO `products` VALUES (90, '苹果', '苹果iPhone 5S（双4G） ', 1199, 8.2, 'http://detail.zol.com.cn/cell_phone/index340414.shtml', 340414, 2964);
INSERT INTO `products` VALUES (91, '苹果', '苹果iPhone 8 Plus（国际版/全网通） ', 5188, 8.5, 'http://detail.zol.com.cn/cell_phone/index1204817.shtml', 1204817, 84);
INSERT INTO `products` VALUES (92, '苹果', '苹果iPhone 7 Plus（双4G） ', 4388, 8.1, 'http://detail.zol.com.cn/cell_phone/index1177080.shtml', 1177080, 335);
INSERT INTO `products` VALUES (93, '苹果', '苹果iPhone 8（国际版/全网通） ', 4688, 6.8, 'http://detail.zol.com.cn/cell_phone/index1204816.shtml', 1204816, 254);
INSERT INTO `products` VALUES (94, '苹果', '苹果iPhone X（国际版/全网通） ', 6888, 8.0, 'http://detail.zol.com.cn/cell_phone/index1204818.shtml', 1204818, 191);
INSERT INTO `products` VALUES (95, '苹果', '苹果iPhone 7 Plus（国际版/全网通） ', 4749, 8.1, 'http://detail.zol.com.cn/cell_phone/index1155434.shtml', 1155434, 335);
INSERT INTO `products` VALUES (96, '苹果', '苹果iPhone 6S（国际版/双4G） ', 2320, 7.3, 'http://detail.zol.com.cn/cell_phone/index1100448.shtml', 1100448, 551);
INSERT INTO `products` VALUES (97, '锤子科技', '锤子科技坚果Pro 2S（4GB RAM/全网通） ', 1798, 6.3, 'http://detail.zol.com.cn/cell_phone/index1227474.shtml', 1227474, 22);
INSERT INTO `products` VALUES (98, '锤子科技', '锤子科技坚果R1（6GB RAM/全网通） ', 3499, 5.1, 'http://detail.zol.com.cn/cell_phone/index1162957.shtml', 1162957, 64);
INSERT INTO `products` VALUES (99, '锤子科技', '锤子科技坚果Pro 2（4GB RAM/全网通） ', 1399, 7.4, 'http://detail.zol.com.cn/cell_phone/index1202624.shtml', 1202624, 85);
INSERT INTO `products` VALUES (100, '锤子科技', '锤子科技坚果3（全网通） ', 1099, 5.5, 'http://detail.zol.com.cn/cell_phone/index1209757.shtml', 1209757, 42);
INSERT INTO `products` VALUES (101, '锤子科技', '锤子科技坚果Pro 2S（6GB RAM/全网通） ', 1998, 6.3, 'http://detail.zol.com.cn/cell_phone/index1228692.shtml', 1228692, 22);
INSERT INTO `products` VALUES (102, '锤子科技', '锤子科技坚果Pro（64GB ROM/全网通） ', 1179, 7.3, 'http://detail.zol.com.cn/cell_phone/index1166591.shtml', 1166591, 188);
INSERT INTO `products` VALUES (103, '锤子科技', '锤子科技坚果R1（8GB RAM/全网通） ', 4499, 5.1, 'http://detail.zol.com.cn/cell_phone/index1214020.shtml', 1214020, 64);
INSERT INTO `products` VALUES (104, '锤子科技', '锤子科技坚果Pro 2特别版（全网通） ', 1449, 7.4, 'http://detail.zol.com.cn/cell_phone/index1213907.shtml', 1213907, 85);
INSERT INTO `products` VALUES (105, '锤子科技', '锤子科技坚果Pro（128GB ROM/全网通） ', 1499, 7.3, 'http://detail.zol.com.cn/cell_phone/index1170719.shtml', 1170719, 188);
INSERT INTO `products` VALUES (106, '锤子科技', '锤子科技坚果Pro 2（6GB RAM/全网通） ', 1949, 7.4, 'http://detail.zol.com.cn/cell_phone/index1202737.shtml', 1202737, 85);
INSERT INTO `products` VALUES (107, '锤子科技', '锤子科技M1（全网通） ', 1800, 8.0, 'http://detail.zol.com.cn/cell_phone/index1138532.shtml', 1138532, 148);
INSERT INTO `products` VALUES (108, '锤子科技', '锤子科技M1L（高配版/全网通） ', 2399, 8.0, 'http://detail.zol.com.cn/cell_phone/index1157726.shtml', 1157726, 148);
INSERT INTO `products` VALUES (109, '锤子科技', '锤子科技坚果Pro（32GB ROM/全网通） ', 1099, 7.3, 'http://detail.zol.com.cn/cell_phone/index1170718.shtml', 1170718, 188);
INSERT INTO `products` VALUES (110, '华为', '华为nova 3（全网通） ', 2699, 6.7, 'http://detail.zol.com.cn/cell_phone/index1185512.shtml', 1185512, 65);
INSERT INTO `products` VALUES (111, '华为', '华为P20 Pro（6GB RAM/全网通） ', 4488, 8.3, 'http://detail.zol.com.cn/cell_phone/index1207038.shtml', 1207038, 103);
INSERT INTO `products` VALUES (112, '华为', '华为P20（全网通） ', 3388, 8.4, 'http://detail.zol.com.cn/cell_phone/index1175779.shtml', 1175779, 127);
INSERT INTO `products` VALUES (113, '华为', '华为nova 3i（4GB RAM/全网通） ', 1999, 7.0, 'http://detail.zol.com.cn/cell_phone/index1222100.shtml', 1222100, 9);
INSERT INTO `products` VALUES (114, '华为', '华为Mate 10（4GB RAM/全网通） ', 3399, 8.3, 'http://detail.zol.com.cn/cell_phone/index1165672.shtml', 1165672, 125);
INSERT INTO `products` VALUES (115, '华为', '华为nova 3e（全网通） ', 1999, 8.8, 'http://detail.zol.com.cn/cell_phone/index1207608.shtml', 1207608, 71);
INSERT INTO `products` VALUES (116, '华为', '华为nova 2s（4GB RAM/全网通） ', 2399, 7.5, 'http://detail.zol.com.cn/cell_phone/index1204363.shtml', 1204363, 97);
INSERT INTO `products` VALUES (117, '华为', '华为Mate 10 Pro（全网通） ', 3599, 8.7, 'http://detail.zol.com.cn/cell_phone/index1181128.shtml', 1181128, 92);
INSERT INTO `products` VALUES (118, '华为', '华为畅享8（3GB RAM/全网通） ', 1099, 5.3, 'http://detail.zol.com.cn/cell_phone/index1208286.shtml', 1208286, 28);
INSERT INTO `products` VALUES (119, '华为', '华为P10（VTR-AL00/全网通） ', 3488, 7.2, 'http://detail.zol.com.cn/cell_phone/index1160028.shtml', 1160028, 395);
INSERT INTO `products` VALUES (120, '华为', '华为畅享8 Plus（全网通） ', 1499, 5.8, 'http://detail.zol.com.cn/cell_phone/index1210102.shtml', 1210102, 11);
INSERT INTO `products` VALUES (121, '华为', '华为麦芒7（全网通） ', 2399, 7.6, 'http://detail.zol.com.cn/cell_phone/index1227167.shtml', 1227167, 5);
INSERT INTO `products` VALUES (122, '华为', '华为Mate 9（MHA-AL00/4GB RAM/全网通） ', 1788, 7.8, 'http://detail.zol.com.cn/cell_phone/index1143413.shtml', 1143413, 449);
INSERT INTO `products` VALUES (123, '华为', '华为nova 3i（6GB RAM/全网通） ', 2199, 7.0, 'http://detail.zol.com.cn/cell_phone/index1224424.shtml', 1224424, 9);
INSERT INTO `products` VALUES (124, '华为', '华为Mate RS保时捷版（全网通） ', 9999, 6.1, 'http://detail.zol.com.cn/cell_phone/index1210089.shtml', 1210089, 16);
INSERT INTO `products` VALUES (125, '华为', '华为nova 2（PIC-AL00/全网通） ', 1228, 8.0, 'http://detail.zol.com.cn/cell_phone/index1170042.shtml', 1170042, 209);
INSERT INTO `products` VALUES (126, '华为', '华为麦芒6（全网通） ', 2199, 6.1, 'http://detail.zol.com.cn/cell_phone/index1182274.shtml', 1182274, 57);
INSERT INTO `products` VALUES (127, '华为', '华为P9（EVA-AL00/标准版/全网通） ', 1448, 7.8, 'http://detail.zol.com.cn/cell_phone/index404275.shtml', 404275, 648);
INSERT INTO `products` VALUES (128, '华为', '华为nova（CAZ-AL10/高配版/全网通） ', 988, 6.9, 'http://detail.zol.com.cn/cell_phone/index1154505.shtml', 1154505, 198);
INSERT INTO `products` VALUES (129, '华为', '华为畅享8e（全网通） ', 999, 4.8, 'http://detail.zol.com.cn/cell_phone/index1210103.shtml', 1210103, 4);
INSERT INTO `products` VALUES (130, '华为', '华为麦芒5（MLA-AL10/高配版/全网通） ', 1099, 6.8, 'http://detail.zol.com.cn/cell_phone/index1148829.shtml', 1148829, 136);
INSERT INTO `products` VALUES (131, '华为', '华为P10 Plus（VKY-AL00/6GB RAM全网通） ', 2488, 7.5, 'http://detail.zol.com.cn/cell_phone/index1163813.shtml', 1163813, 186);
INSERT INTO `products` VALUES (132, '华为', '华为Mate 9 Pro（4GB RAM/全网通） ', 2799, 8.0, 'http://detail.zol.com.cn/cell_phone/index1159578.shtml', 1159578, 136);
INSERT INTO `products` VALUES (133, 'vivo', 'vivo X7 Plus（全网通） ', 2350, 8.2, 'http://detail.zol.com.cn/cell_phone/index1147812.shtml', 1147812, 484);
INSERT INTO `products` VALUES (134, 'vivo', 'vivo X9s Plus（全网通） ', 2498, 7.4, 'http://detail.zol.com.cn/cell_phone/index1170837.shtml', 1170837, 523);
INSERT INTO `products` VALUES (135, 'vivo', 'vivo Y51A（高配版/全网通） ', 998, 6.6, 'http://detail.zol.com.cn/cell_phone/index1115625.shtml', 1115625, 306);
INSERT INTO `products` VALUES (136, 'vivo', 'vivo X7（全网通） ', 1799, 7.7, 'http://detail.zol.com.cn/cell_phone/index1145877.shtml', 1145877, 736);
INSERT INTO `products` VALUES (137, 'vivo', 'vivo X9s（全网通） ', 1998, 8.9, 'http://detail.zol.com.cn/cell_phone/index1174429.shtml', 1174429, 563);
INSERT INTO `products` VALUES (138, 'vivo', 'vivo Y66i（全网通） ', 1198, 6.3, 'http://detail.zol.com.cn/cell_phone/index1204388.shtml', 1204388, 161);
INSERT INTO `products` VALUES (139, 'vivo', 'vivo X9s  L（移动全网通） ', 1998, 8.9, 'http://detail.zol.com.cn/cell_phone/index1175257.shtml', 1175257, 563);
INSERT INTO `products` VALUES (140, 'vivo', 'vivo X9L（移动全网通）  ', 1998, 8.5, 'http://detail.zol.com.cn/cell_phone/index1170124.shtml', 1170124, 1362);
INSERT INTO `products` VALUES (141, 'vivo', 'vivo X20Plus屏幕指纹版（全网通） ', 3598, 6.2, 'http://detail.zol.com.cn/cell_phone/index1205808.shtml', 1205808, 17);
INSERT INTO `products` VALUES (142, 'vivo', 'vivo Y75（4GB RAM/全网通） ', 1098, 7.5, 'http://detail.zol.com.cn/cell_phone/index1208237.shtml', 1208237, 27);
INSERT INTO `products` VALUES (143, 'vivo', 'vivo X20（旗舰版/全网通） ', 2598, 9.1, 'http://detail.zol.com.cn/cell_phone/index1184293.shtml', 1184293, 1075);
INSERT INTO `products` VALUES (144, 'vivo', 'vivo Y55（全网通） ', 999, 6.4, 'http://detail.zol.com.cn/cell_phone/index1156093.shtml', 1156093, 126);
INSERT INTO `products` VALUES (145, 'vivo', 'vivo Y75（3GB RAM/全网通） ', 1298, 7.5, 'http://detail.zol.com.cn/cell_phone/index1185212.shtml', 1185212, 27);
INSERT INTO `products` VALUES (146, 'vivo', 'vivo Xplay6（全网通） ', 3498, 8.7, 'http://detail.zol.com.cn/cell_phone/index1159623.shtml', 1159623, 691);
INSERT INTO `products` VALUES (147, 'OPPO', 'OPPO R17（8GB RAM/全网通） ', 3499, 9.5, 'http://detail.zol.com.cn/cell_phone/index1225806.shtml', 1225806, 173);
INSERT INTO `products` VALUES (148, 'OPPO', 'OPPO Find X（标准版/全网通） ', 4999, 9.5, 'http://detail.zol.com.cn/cell_phone/index1213467.shtml', 1213467, 774);
INSERT INTO `products` VALUES (149, 'OPPO', 'OPPO R15（6GB RAM/全网通） ', 2699, 9.2, 'http://detail.zol.com.cn/cell_phone/index1206990.shtml', 1206990, 1055);
INSERT INTO `products` VALUES (150, 'OPPO', 'OPPO A3（全网通） ', 1799, 8.9, 'http://detail.zol.com.cn/cell_phone/index1211599.shtml', 1211599, 366);
INSERT INTO `products` VALUES (151, 'OPPO', 'OPPO A5（全网通） ', 1500, 8.7, 'http://detail.zol.com.cn/cell_phone/index1221126.shtml', 1221126, 357);
INSERT INTO `products` VALUES (152, 'OPPO', 'OPPO R11（标准版/全网通） ', 1553, 9.1, 'http://detail.zol.com.cn/cell_phone/index1150077.shtml', 1150077, 1346);
INSERT INTO `products` VALUES (153, 'OPPO', 'OPPO A1（3GB RAM/全网通） ', 1000, 7.4, 'http://detail.zol.com.cn/cell_phone/index1209829.shtml', 1209829, 86);
INSERT INTO `products` VALUES (154, 'OPPO', 'OPPO Find X兰博基尼版（全网通） ', 9999, 9.7, 'http://detail.zol.com.cn/cell_phone/index1220645.shtml', 1220645, 89);
INSERT INTO `products` VALUES (155, 'OPPO', 'OPPO R17 Pro（全网通） ', 4299, 9.4, 'http://detail.zol.com.cn/cell_phone/index1225826.shtml', 1225826, 91);
INSERT INTO `products` VALUES (156, 'OPPO', 'OPPO A7x（全网通） ', 1999, 8.7, 'http://detail.zol.com.cn/cell_phone/index1230724.shtml', 1230724, 48);
INSERT INTO `products` VALUES (157, 'OPPO', 'OPPO R11s（4GB RAM/全网通） ', 2299, 9.2, 'http://detail.zol.com.cn/cell_phone/index1184068.shtml', 1184068, 1310);
INSERT INTO `products` VALUES (158, 'OPPO', 'OPPO A83 (全网通) ', 1199, 5.8, 'http://detail.zol.com.cn/cell_phone/index1205003.shtml', 1205003, 38);
INSERT INTO `products` VALUES (159, 'OPPO', 'OPPO A57（全网通） ', 799, 7.6, 'http://detail.zol.com.cn/cell_phone/index1160598.shtml', 1160598, 577);
INSERT INTO `products` VALUES (160, 'OPPO', 'OPPO A73（全网通） ', 1499, 8.4, 'http://detail.zol.com.cn/cell_phone/index1205054.shtml', 1205054, 380);
INSERT INTO `products` VALUES (161, 'OPPO', 'OPPO R17（雾光渐变色/8GB RAM/全网通） ', 3599, 9.5, 'http://detail.zol.com.cn/cell_phone/index1229193.shtml', 1229193, 171);
INSERT INTO `products` VALUES (162, 'OPPO', 'OPPO R11s Plus（全网通） ', 1899, 9.0, 'http://detail.zol.com.cn/cell_phone/index1184231.shtml', 1184231, 669);
INSERT INTO `products` VALUES (163, 'OPPO', 'OPPO R15梦镜版（梦境红/全网通） ', 2999, 9.2, 'http://detail.zol.com.cn/cell_phone/index1208720.shtml', 1208720, 1032);
INSERT INTO `products` VALUES (164, 'OPPO', 'OPPO R17（6GB RAM/全网通） ', 3199, 9.5, 'http://detail.zol.com.cn/cell_phone/index1229159.shtml', 1229159, 171);
INSERT INTO `products` VALUES (165, 'OPPO', 'OPPO R11 Plus（全网通） ', 1788, 9.2, 'http://detail.zol.com.cn/cell_phone/index1170222.shtml', 1170222, 546);
INSERT INTO `products` VALUES (166, 'OPPO', 'OPPO R15梦镜版（陶瓷黑/梦境紫/全网通） ', 3299, 9.2, 'http://detail.zol.com.cn/cell_phone/index1210656.shtml', 1210656, 1032);
INSERT INTO `products` VALUES (167, 'OPPO', 'OPPO A79（全网通） ', 1699, 8.7, 'http://detail.zol.com.cn/cell_phone/index1203640.shtml', 1203640, 339);
INSERT INTO `products` VALUES (168, '小米', '小米8（6GB RAM/全网通） ', 2599, 5.1, 'http://detail.zol.com.cn/cell_phone/index1213787.shtml', 1213787, 308);
INSERT INTO `products` VALUES (169, '小米', '小米6X（4GB RAM/全网通） ', 1349, 5.3, 'http://detail.zol.com.cn/cell_phone/index1170480.shtml', 1170480, 106);
INSERT INTO `products` VALUES (170, '小米', '小米8 SE（4GB RAM/全网通） ', 1699, 5.3, 'http://detail.zol.com.cn/cell_phone/index1217453.shtml', 1217453, 76);
INSERT INTO `products` VALUES (171, '小米', '小米8青春版（4GB RAM/全网通） ', 1399, 6.0, 'http://detail.zol.com.cn/cell_phone/index1231048.shtml', 1231048, 18);
INSERT INTO `products` VALUES (172, '小米', '小米红米Note 5（3GB RAM/全网通） ', 999, 5.5, 'http://detail.zol.com.cn/cell_phone/index1175353.shtml', 1175353, 98);
INSERT INTO `products` VALUES (173, '小米', '小米MIX 2s（6GB RAM/全网通） ', 2999, 5.6, 'http://detail.zol.com.cn/cell_phone/index1202983.shtml', 1202983, 134);
INSERT INTO `products` VALUES (174, '小米', '小米6（6GB RAM/全网通） ', 2409, 6.2, 'http://detail.zol.com.cn/cell_phone/index1161066.shtml', 1161066, 526);
INSERT INTO `products` VALUES (175, '小米', '小米红米6 Pro（3GB RAM/全网通） ', 969, 6.1, 'http://detail.zol.com.cn/cell_phone/index1220665.shtml', 1220665, 21);
INSERT INTO `products` VALUES (176, '小米', '小米8透明探索版（全网通） ', 3699, 5.4, 'http://detail.zol.com.cn/cell_phone/index1216973.shtml', 1216973, 48);
INSERT INTO `products` VALUES (177, '小米', '小米Max 3（4GB RAM/全网通） ', 1699, 5.1, 'http://detail.zol.com.cn/cell_phone/index1205304.shtml', 1205304, 66);
INSERT INTO `products` VALUES (178, '小米', '小米MIX 2（全网通） ', 2299, 5.4, 'http://detail.zol.com.cn/cell_phone/index1160797.shtml', 1160797, 147);
INSERT INTO `products` VALUES (179, '小米', '小米Max 2（全网通） ', 939, 6.2, 'http://detail.zol.com.cn/cell_phone/index1165765.shtml', 1165765, 119);
INSERT INTO `products` VALUES (180, '小米', '小米红米6（3GB RAM/全网通） ', 769, 5.4, 'http://detail.zol.com.cn/cell_phone/index1215069.shtml', 1215069, 11);
INSERT INTO `products` VALUES (181, '小米', '小米红米5 Plus（3GB RAM/全网通） ', 800, 5.8, 'http://detail.zol.com.cn/cell_phone/index1183689.shtml', 1183689, 75);
INSERT INTO `products` VALUES (182, '小米', '小米红米Note 5（4GB RAM/全网通） ', 1299, 5.5, 'http://detail.zol.com.cn/cell_phone/index1209455.shtml', 1209455, 98);
INSERT INTO `products` VALUES (183, '小米', '小米红米Note 4X（3GB RAM/全网通） ', 999, 5.7, 'http://detail.zol.com.cn/cell_phone/index1163122.shtml', 1163122, 285);
INSERT INTO `products` VALUES (184, '小米', '小米Note 3（6GB RAM/全网通） ', 1849, 5.8, 'http://detail.zol.com.cn/cell_phone/index1164780.shtml', 1164780, 92);
INSERT INTO `products` VALUES (185, '小米', '小米5X（全网通） ', 1129, 5.8, 'http://detail.zol.com.cn/cell_phone/index1175015.shtml', 1175015, 98);
INSERT INTO `products` VALUES (186, '小米', '小米红米6A（2GB RAM/全网通） ', 549, 6.1, 'http://detail.zol.com.cn/cell_phone/index1216196.shtml', 1216196, 3);
INSERT INTO `products` VALUES (187, '小米', '小米6X（6GB RAM/全网通） ', 1709, 5.3, 'http://detail.zol.com.cn/cell_phone/index1212271.shtml', 1212271, 106);
INSERT INTO `products` VALUES (188, '小米', '小米MIX（全网通） ', 2900, 5.3, 'http://detail.zol.com.cn/cell_phone/index1158428.shtml', 1158428, 173);
INSERT INTO `products` VALUES (189, '苹果', '苹果iPhone XS（全网通） ', 8699, 5.5, 'http://detail.zol.com.cn/cell_phone/index1229519.shtml', 1229519, 51);
INSERT INTO `products` VALUES (190, '苹果', '苹果iPhone X（全网通） ', 6898, 8.0, 'http://detail.zol.com.cn/cell_phone/index1182639.shtml', 1182639, 193);
INSERT INTO `products` VALUES (191, '苹果', '苹果iPhone XR（全网通） ', 6499, 4.6, 'http://detail.zol.com.cn/cell_phone/index1205394.shtml', 1205394, 35);
INSERT INTO `products` VALUES (192, '苹果', '苹果iPhone 8 Plus（全网通） ', 5468, 8.5, 'http://detail.zol.com.cn/cell_phone/index1182632.shtml', 1182632, 84);
INSERT INTO `products` VALUES (193, '苹果', '苹果iPhone XS Max（全网通） ', 9599, 5.8, 'http://detail.zol.com.cn/cell_phone/index1229520.shtml', 1229520, 30);
INSERT INTO `products` VALUES (194, '苹果', '苹果iPhone 8（全网通） ', 4528, 6.8, 'http://detail.zol.com.cn/cell_phone/index394162.shtml', 394162, 254);
INSERT INTO `products` VALUES (195, '苹果', '苹果iPhone 7（全网通） ', 3628, 8.0, 'http://detail.zol.com.cn/cell_phone/index384973.shtml', 384973, 475);
INSERT INTO `products` VALUES (196, '苹果', '苹果iPhone 7 Plus（全网通） ', 4499, 8.1, 'http://detail.zol.com.cn/cell_phone/index1104332.shtml', 1104332, 335);
INSERT INTO `products` VALUES (197, '苹果', '苹果iPhone 6S Plus（全网通） ', 3000, 8.0, 'http://detail.zol.com.cn/cell_phone/index398690.shtml', 398690, 279);
INSERT INTO `products` VALUES (198, '苹果', '苹果iPhone 5S（双4G） ', 1199, 8.2, 'http://detail.zol.com.cn/cell_phone/index340414.shtml', 340414, 2964);
INSERT INTO `products` VALUES (199, '苹果', '苹果iPhone 8 Plus（国际版/全网通） ', 5188, 8.5, 'http://detail.zol.com.cn/cell_phone/index1204817.shtml', 1204817, 84);
INSERT INTO `products` VALUES (200, '苹果', '苹果iPhone 7 Plus（双4G） ', 4388, 8.1, 'http://detail.zol.com.cn/cell_phone/index1177080.shtml', 1177080, 335);
INSERT INTO `products` VALUES (201, '苹果', '苹果iPhone 8（国际版/全网通） ', 4688, 6.8, 'http://detail.zol.com.cn/cell_phone/index1204816.shtml', 1204816, 254);
INSERT INTO `products` VALUES (202, '苹果', '苹果iPhone X（国际版/全网通） ', 6888, 8.0, 'http://detail.zol.com.cn/cell_phone/index1204818.shtml', 1204818, 191);
INSERT INTO `products` VALUES (203, '苹果', '苹果iPhone 7 Plus（国际版/全网通） ', 4749, 8.1, 'http://detail.zol.com.cn/cell_phone/index1155434.shtml', 1155434, 335);
INSERT INTO `products` VALUES (204, '苹果', '苹果iPhone 6S（国际版/双4G） ', 2320, 7.3, 'http://detail.zol.com.cn/cell_phone/index1100448.shtml', 1100448, 551);
INSERT INTO `products` VALUES (205, '锤子科技', '锤子科技坚果Pro 2S（4GB RAM/全网通） ', 1798, 6.3, 'http://detail.zol.com.cn/cell_phone/index1227474.shtml', 1227474, 22);
INSERT INTO `products` VALUES (206, '锤子科技', '锤子科技坚果R1（6GB RAM/全网通） ', 3499, 5.1, 'http://detail.zol.com.cn/cell_phone/index1162957.shtml', 1162957, 64);
INSERT INTO `products` VALUES (207, '锤子科技', '锤子科技坚果Pro 2（4GB RAM/全网通） ', 1399, 7.4, 'http://detail.zol.com.cn/cell_phone/index1202624.shtml', 1202624, 85);
INSERT INTO `products` VALUES (208, '锤子科技', '锤子科技坚果3（全网通） ', 1099, 5.5, 'http://detail.zol.com.cn/cell_phone/index1209757.shtml', 1209757, 42);
INSERT INTO `products` VALUES (209, '锤子科技', '锤子科技坚果Pro 2S（6GB RAM/全网通） ', 1998, 6.3, 'http://detail.zol.com.cn/cell_phone/index1228692.shtml', 1228692, 22);
INSERT INTO `products` VALUES (210, '锤子科技', '锤子科技坚果Pro（64GB ROM/全网通） ', 1179, 7.3, 'http://detail.zol.com.cn/cell_phone/index1166591.shtml', 1166591, 188);
INSERT INTO `products` VALUES (211, '锤子科技', '锤子科技坚果R1（8GB RAM/全网通） ', 4499, 5.1, 'http://detail.zol.com.cn/cell_phone/index1214020.shtml', 1214020, 64);
INSERT INTO `products` VALUES (212, '锤子科技', '锤子科技坚果Pro 2特别版（全网通） ', 1449, 7.4, 'http://detail.zol.com.cn/cell_phone/index1213907.shtml', 1213907, 85);
INSERT INTO `products` VALUES (213, '锤子科技', '锤子科技坚果Pro（128GB ROM/全网通） ', 1499, 7.3, 'http://detail.zol.com.cn/cell_phone/index1170719.shtml', 1170719, 188);
INSERT INTO `products` VALUES (214, '锤子科技', '锤子科技坚果Pro 2（6GB RAM/全网通） ', 1949, 7.4, 'http://detail.zol.com.cn/cell_phone/index1202737.shtml', 1202737, 85);
INSERT INTO `products` VALUES (215, '锤子科技', '锤子科技M1（全网通） ', 1800, 8.0, 'http://detail.zol.com.cn/cell_phone/index1138532.shtml', 1138532, 148);
INSERT INTO `products` VALUES (216, '锤子科技', '锤子科技M1L（高配版/全网通） ', 2399, 8.0, 'http://detail.zol.com.cn/cell_phone/index1157726.shtml', 1157726, 148);
INSERT INTO `products` VALUES (217, '锤子科技', '锤子科技坚果Pro（32GB ROM/全网通） ', 1099, 7.3, 'http://detail.zol.com.cn/cell_phone/index1170718.shtml', 1170718, 188);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avatar_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'luck', 'e99a18c428cb38d5f260853678922e03', '2020-12-15 12:49:06', '2021-01-13 22:03:22', 'http://localhost:8001/users/1/avatar');
INSERT INTO `user` VALUES (2, 'kobe', 'e99a18c428cb38d5f260853678922e03', '2020-12-15 14:03:59', '2021-01-13 22:03:25', 'http://localhost:8001/users/2/avatar');
INSERT INTO `user` VALUES (3, 'lili', 'e99a18c428cb38d5f260853678922e03', '2020-12-15 14:04:05', '2021-01-13 22:03:28', 'http://localhost:8001/users/3/avatar');
INSERT INTO `user` VALUES (4, 'xiaoming', 'e99a18c428cb38d5f260853678922e03', '2020-12-15 14:04:10', '2021-01-13 22:03:31', 'http://localhost:8001/users/4/avatar');
INSERT INTO `user` VALUES (11, 'kun', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-18 21:19:07', '2020-12-18 21:19:07', NULL);
INSERT INTO `user` VALUES (12, 'kunkun', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-28 13:44:41', '2021-01-13 22:03:34', 'http://localhost:8001/users/12/avatar');
INSERT INTO `user` VALUES (13, '123', '4297f44b13955235245b2497399d7a93', '2021-01-13 20:52:05', '2021-01-13 22:03:39', 'http://localhost:8001/users/13/avatar');
INSERT INTO `user` VALUES (14, '1234', 'ed2b1f468c5f915f3f1cf75d7068baae', '2021-01-13 20:52:34', '2021-01-13 22:03:41', 'http://localhost:8001/users/14/avatar');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
