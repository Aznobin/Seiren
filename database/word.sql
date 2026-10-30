/*
 Navicat Premium Dump SQL

 Source Server         : mysql80
 Source Server Type    : MySQL
 Source Server Version : 80045 (8.0.45)
 Source Host           : localhost:3306
 Source Schema         : seiren

 Target Server Type    : MySQL
 Target Server Version : 80045 (8.0.45)
 File Encoding         : 65001

 Date: 29/09/2026 22:42:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `original_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `normalized_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `count` int NOT NULL DEFAULT 1,
  `first_seen` datetime NOT NULL,
  `last_seen` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `original_word`(`original_word` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES (1, 'yes', 'yes', 2, '2026-09-26 02:01:27', '2026-09-26 02:02:04');
INSERT INTO `word` VALUES (2, 'HelloWorld', 'Hello World', 1, '2026-09-26 02:02:14', '2026-09-26 02:02:14');
INSERT INTO `word` VALUES (3, 'HTTPRequest', 'HTTP Request', 2, '2026-09-26 02:02:26', '2026-09-26 03:54:25');
INSERT INTO `word` VALUES (4, 'Hello', 'Hello', 4, '2026-09-26 02:06:50', '2026-09-28 03:01:37');
INSERT INTO `word` VALUES (5, 'localhost', 'localhost', 1, '2026-09-26 02:07:00', '2026-09-26 02:07:00');
INSERT INTO `word` VALUES (6, 'record', 'record', 1, '2026-09-26 02:07:10', '2026-09-26 02:07:10');
INSERT INTO `word` VALUES (7, 'HelloWord', 'Hello Word', 1, '2026-09-26 02:09:45', '2026-09-26 02:09:45');
INSERT INTO `word` VALUES (8, 'server', 'server', 2, '2026-09-26 03:01:46', '2026-09-26 03:09:43');
INSERT INTO `word` VALUES (9, 'start', 'start', 2, '2026-09-26 03:01:54', '2026-09-26 03:05:12');
INSERT INTO `word` VALUES (10, 'ok', 'ok', 1, '2026-09-26 03:05:20', '2026-09-26 03:05:20');
INSERT INTO `word` VALUES (11, 'nice', 'nice', 1, '2026-09-26 03:05:24', '2026-09-26 03:05:24');
INSERT INTO `word` VALUES (12, 'import', 'import', 2, '2026-09-26 03:05:32', '2026-09-27 00:46:28');
INSERT INTO `word` VALUES (13, 'components', 'components', 2, '2026-09-26 03:05:47', '2026-09-27 00:46:36');
INSERT INTO `word` VALUES (14, 'input', 'input', 1, '2026-09-26 03:05:54', '2026-09-26 03:05:54');
INSERT INTO `word` VALUES (15, 'setup', 'setup', 1, '2026-09-26 03:06:01', '2026-09-26 03:06:01');
INSERT INTO `word` VALUES (16, 'Seiren', 'Seiren', 1, '2026-09-26 03:06:52', '2026-09-26 03:06:52');
INSERT INTO `word` VALUES (17, 'client', 'client', 1, '2026-09-26 03:06:58', '2026-09-26 03:06:58');
INSERT INTO `word` VALUES (18, 'limit', 'limit', 1, '2026-09-26 03:07:09', '2026-09-26 03:07:09');
INSERT INTO `word` VALUES (20, 'service', 'service', 2, '2026-09-26 03:09:02', '2026-09-26 22:22:21');
INSERT INTO `word` VALUES (21, 'entity', 'entity', 1, '2026-09-26 03:09:10', '2026-09-26 03:09:10');
INSERT INTO `word` VALUES (22, 'Obsidian', 'Obsidian', 1, '2026-09-26 03:09:21', '2026-09-26 03:09:21');
INSERT INTO `word` VALUES (23, 'edge', 'edge', 3, '2026-09-26 03:09:24', '2026-09-26 03:09:31');
INSERT INTO `word` VALUES (24, 'response', 'response', 2, '2026-09-26 03:09:48', '2026-09-28 19:56:48');
INSERT INTO `word` VALUES (25, 'request', 'request', 2, '2026-09-26 03:09:52', '2026-09-26 19:31:46');
INSERT INTO `word` VALUES (26, 'test', 'test', 1, '2026-09-26 03:09:56', '2026-09-26 03:09:56');
INSERT INTO `word` VALUES (27, 'demo', 'demo', 1, '2026-09-26 03:09:57', '2026-09-26 03:09:57');
INSERT INTO `word` VALUES (28, 'controller', 'controller', 1, '2026-09-26 03:10:02', '2026-09-26 03:10:02');
INSERT INTO `word` VALUES (29, 'main', 'main', 1, '2026-09-26 03:10:06', '2026-09-26 03:10:06');
INSERT INTO `word` VALUES (30, 'java', 'java', 1, '2026-09-26 03:10:10', '2026-09-26 03:10:10');
INSERT INTO `word` VALUES (31, 'load', 'load', 1, '2026-09-26 03:16:43', '2026-09-26 03:16:43');
INSERT INTO `word` VALUES (32, 'loading', 'loading', 1, '2026-09-26 03:16:46', '2026-09-26 03:16:46');
INSERT INTO `word` VALUES (33, 'drop', 'drop', 1, '2026-09-26 03:27:11', '2026-09-26 03:27:11');
INSERT INTO `word` VALUES (34, 'desc', 'desc', 1, '2026-09-26 03:27:14', '2026-09-26 03:27:14');
INSERT INTO `word` VALUES (35, 'varchar', 'varchar', 1, '2026-09-26 03:27:19', '2026-09-26 03:27:19');
INSERT INTO `word` VALUES (36, 'HTTP', 'HTTP', 1, '2026-09-26 03:27:24', '2026-09-26 03:27:24');
INSERT INTO `word` VALUES (37, 'big int', 'big int', 1, '2026-09-26 03:27:36', '2026-09-26 03:27:36');
INSERT INTO `word` VALUES (38, 'key', 'key', 1, '2026-09-26 03:27:40', '2026-09-26 03:27:40');
INSERT INTO `word` VALUES (39, 'original', 'original', 1, '2026-09-26 03:27:45', '2026-09-26 03:27:45');
INSERT INTO `word` VALUES (40, 'id', 'id', 1, '2026-09-26 03:27:50', '2026-09-26 03:27:50');
INSERT INTO `word` VALUES (41, 'normalized', 'normalized', 1, '2026-09-26 03:27:56', '2026-09-26 03:27:56');
INSERT INTO `word` VALUES (42, 'word', 'word', 1, '2026-09-26 03:27:58', '2026-09-26 03:27:58');
INSERT INTO `word` VALUES (43, 'world', 'world', 1, '2026-09-26 03:28:00', '2026-09-26 03:28:00');
INSERT INTO `word` VALUES (44, 'null', 'null', 1, '2026-09-26 03:28:08', '2026-09-26 03:28:08');
INSERT INTO `word` VALUES (45, 'not', 'not', 1, '2026-09-26 03:28:09', '2026-09-26 03:28:09');
INSERT INTO `word` VALUES (46, 'getUserName', 'get User Name', 1, '2026-09-26 03:31:34', '2026-09-26 03:31:34');
INSERT INTO `word` VALUES (47, 'position', 'position', 1, '2026-09-26 03:39:38', '2026-09-26 03:39:38');
INSERT INTO `word` VALUES (48, 'HelloWorldHello', 'Hello World Hello', 1, '2026-09-26 03:40:12', '2026-09-26 03:40:12');
INSERT INTO `word` VALUES (49, 'migration', 'migration', 2, '2026-09-26 03:42:18', '2026-09-26 03:44:08');
INSERT INTO `word` VALUES (50, 'Data Transfer Object', 'Data Transfer Object', 1, '2026-09-26 13:56:46', '2026-09-26 13:56:46');
INSERT INTO `word` VALUES (51, 'DTO', 'DTO', 2, '2026-09-26 13:56:54', '2026-09-27 02:32:29');
INSERT INTO `word` VALUES (52, 'DAO', 'DAO', 1, '2026-09-26 13:57:34', '2026-09-26 13:57:34');
INSERT INTO `word` VALUES (53, 'Data Access Object', 'Data Access Object', 1, '2026-09-26 13:57:40', '2026-09-26 13:57:40');
INSERT INTO `word` VALUES (54, 'containsKey', 'contains Key', 1, '2026-09-26 14:58:05', '2026-09-26 14:58:05');
INSERT INTO `word` VALUES (55, 'branch', 'branch', 1, '2026-09-26 19:30:01', '2026-09-26 19:30:01');
INSERT INTO `word` VALUES (56, 'merge', 'merge', 1, '2026-09-26 19:30:05', '2026-09-26 19:30:05');
INSERT INTO `word` VALUES (57, 'of', 'of', 1, '2026-09-26 19:30:10', '2026-09-26 19:30:10');
INSERT INTO `word` VALUES (58, 'modules', 'modules', 1, '2026-09-26 19:30:16', '2026-09-26 19:30:16');
INSERT INTO `word` VALUES (59, 'transformed', 'transformed', 1, '2026-09-26 19:30:31', '2026-09-26 19:30:31');
INSERT INTO `word` VALUES (60, 'build', 'build', 1, '2026-09-26 19:30:40', '2026-09-26 19:30:40');
INSERT INTO `word` VALUES (63, 'catch', 'catch', 1, '2026-09-26 19:48:52', '2026-09-26 19:48:52');
INSERT INTO `word` VALUES (64, 'toLowerCase', 'to Lower Case', 1, '2026-09-26 19:53:40', '2026-09-26 19:53:40');
INSERT INTO `word` VALUES (65, 'trim', 'trim', 1, '2026-09-26 19:53:48', '2026-09-26 19:53:48');
INSERT INTO `word` VALUES (66, 'splitCamelCase', 'split Camel Case', 2, '2026-09-26 19:55:24', '2026-09-27 06:35:31');
INSERT INTO `word` VALUES (67, 'replaceAll', 'replace All', 1, '2026-09-26 19:55:52', '2026-09-26 19:55:52');
INSERT INTO `word` VALUES (68, 'recordWord', 'record Word', 1, '2026-09-26 19:56:02', '2026-09-26 19:56:02');
INSERT INTO `word` VALUES (69, 'wordResult', 'word result', 1, '2026-09-26 19:56:23', '2026-09-26 19:56:23');
INSERT INTO `word` VALUES (71, 'different', 'different', 1, '2026-09-26 20:27:59', '2026-09-26 20:27:59');
INSERT INTO `word` VALUES (72, 'vue_js', 'vue_js', 1, '2026-09-26 20:36:51', '2026-09-26 20:36:51');
INSERT INTO `word` VALUES (73, 'Recording word', 'recording word', 1, '2026-09-26 22:22:01', '2026-09-26 22:22:01');
INSERT INTO `word` VALUES (74, 'storm', 'storm', 3, '2026-09-26 22:34:10', '2026-09-26 22:41:14');
INSERT INTO `word` VALUES (75, 'picnic', 'picnic', 1, '2026-09-26 22:34:16', '2026-09-26 22:34:16');
INSERT INTO `word` VALUES (76, 'actually', 'actually', 1, '2026-09-26 22:34:24', '2026-09-26 22:34:24');
INSERT INTO `word` VALUES (77, 'rest', 'rest', 1, '2026-09-26 22:34:53', '2026-09-26 22:34:53');
INSERT INTO `word` VALUES (78, 'eat', 'eat', 1, '2026-09-26 22:35:05', '2026-09-26 22:35:05');
INSERT INTO `word` VALUES (79, 'home', 'home', 1, '2026-09-26 22:35:06', '2026-09-26 22:35:06');
INSERT INTO `word` VALUES (80, 'at', 'at', 1, '2026-09-26 22:35:08', '2026-09-26 22:35:08');
INSERT INTO `word` VALUES (81, 'to', 'to', 1, '2026-09-26 22:35:10', '2026-09-26 22:35:10');
INSERT INTO `word` VALUES (82, 'going', 'going', 1, '2026-09-26 22:35:13', '2026-09-26 22:35:13');
INSERT INTO `word` VALUES (83, 'why', 'why', 1, '2026-09-26 22:35:16', '2026-09-26 22:35:16');
INSERT INTO `word` VALUES (84, 'are', 'are', 1, '2026-09-26 22:35:17', '2026-09-26 22:35:17');
INSERT INTO `word` VALUES (85, 'we', 'we', 1, '2026-09-26 22:35:19', '2026-09-26 22:35:19');
INSERT INTO `word` VALUES (86, 'it', 'it', 1, '2026-09-26 22:35:44', '2026-09-26 22:35:44');
INSERT INTO `word` VALUES (87, 'is', 'is', 1, '2026-09-26 22:35:46', '2026-09-26 22:35:46');
INSERT INTO `word` VALUES (88, 'usually', 'usually', 1, '2026-09-26 22:35:54', '2026-09-26 22:35:54');
INSERT INTO `word` VALUES (89, 'where', 'where', 1, '2026-09-26 22:36:00', '2026-09-26 22:36:00');
INSERT INTO `word` VALUES (90, 'you', 'you', 1, '2026-09-26 22:36:05', '2026-09-26 22:36:05');
INSERT INTO `word` VALUES (91, 'go', 'go', 1, '2026-09-26 22:36:08', '2026-09-26 22:36:08');
INSERT INTO `word` VALUES (92, 'tomorrow', 'tomorrow', 1, '2026-09-26 22:36:18', '2026-09-26 22:36:18');
INSERT INTO `word` VALUES (93, 'around', 'around', 2, '2026-09-26 22:36:32', '2026-09-26 22:37:29');
INSERT INTO `word` VALUES (94, 'two', 'two', 1, '2026-09-26 22:36:35', '2026-09-26 22:36:35');
INSERT INTO `word` VALUES (95, 'o', 'o', 1, '2026-09-26 22:36:39', '2026-09-26 22:36:39');
INSERT INTO `word` VALUES (96, 'o\'clock', 'o\'clock', 1, '2026-09-26 22:36:44', '2026-09-26 22:36:44');
INSERT INTO `word` VALUES (97, 'end', 'end', 1, '2026-09-26 22:37:47', '2026-09-26 22:37:47');
INSERT INTO `word` VALUES (98, 'the', 'the', 1, '2026-09-26 22:37:49', '2026-09-26 22:37:49');
INSERT INTO `word` VALUES (99, 'invite', 'invite', 1, '2026-09-26 22:38:34', '2026-09-26 22:38:34');
INSERT INTO `word` VALUES (100, 'tom', 'tom', 1, '2026-09-26 22:38:37', '2026-09-26 22:38:37');
INSERT INTO `word` VALUES (101, 'wait', 'wait', 1, '2026-09-26 22:38:59', '2026-09-26 22:38:59');
INSERT INTO `word` VALUES (102, 'come', 'come', 1, '2026-09-26 22:39:03', '2026-09-26 22:39:03');
INSERT INTO `word` VALUES (103, 'often', 'often', 1, '2026-09-26 22:40:00', '2026-09-26 22:40:00');
INSERT INTO `word` VALUES (104, 'have', 'have', 1, '2026-09-26 22:40:05', '2026-09-26 22:40:05');
INSERT INTO `word` VALUES (105, 'a', 'a', 1, '2026-09-26 22:40:05', '2026-09-26 22:40:05');
INSERT INTO `word` VALUES (106, 'and', 'and', 1, '2026-09-26 22:40:14', '2026-09-26 22:40:14');
INSERT INTO `word` VALUES (107, 'text', 'text', 1, '2026-09-26 22:41:11', '2026-09-26 22:41:11');
INSERT INTO `word` VALUES (108, 'hang out', 'hang out', 1, '2026-09-26 22:41:18', '2026-09-26 22:41:18');
INSERT INTO `word` VALUES (109, 'island', 'island', 1, '2026-09-26 22:41:24', '2026-09-26 22:41:24');
INSERT INTO `word` VALUES (110, 'jealous', 'jealous', 1, '2026-09-26 22:41:28', '2026-09-26 22:41:28');
INSERT INTO `word` VALUES (111, 'picnics', 'picnics', 1, '2026-09-26 22:42:00', '2026-09-26 22:42:00');
INSERT INTO `word` VALUES (112, 'private static final Logger log', 'private static final logger log', 1, '2026-09-26 22:44:01', '2026-09-26 22:44:01');
INSERT INTO `word` VALUES (113, 'LoggerFactory', 'logger factory', 1, '2026-09-26 22:46:31', '2026-09-26 22:46:31');
INSERT INTO `word` VALUES (114, 'getLogger', 'get logger', 1, '2026-09-26 22:46:36', '2026-09-26 22:46:36');
INSERT INTO `word` VALUES (115, 'static', 'static', 1, '2026-09-26 22:46:50', '2026-09-26 22:46:50');
INSERT INTO `word` VALUES (116, 'final', 'final', 1, '2026-09-26 22:46:55', '2026-09-26 22:46:55');
INSERT INTO `word` VALUES (117, 'Log level', 'log level', 1, '2026-09-26 22:52:59', '2026-09-26 22:52:59');
INSERT INTO `word` VALUES (118, 'springframework', 'springframework', 1, '2026-09-26 22:58:47', '2026-09-26 22:58:47');
INSERT INTO `word` VALUES (119, 'Compiler', 'compiler', 1, '2026-09-26 22:59:42', '2026-09-26 22:59:42');
INSERT INTO `word` VALUES (120, 'Annotation Processors', 'annotation processors', 1, '2026-09-26 22:59:47', '2026-09-26 22:59:47');
INSERT INTO `word` VALUES (121, 'hibernate', 'hibernate', 1, '2026-09-26 23:04:34', '2026-09-26 23:04:34');
INSERT INTO `word` VALUES (122, 'Error', 'error', 1, '2026-09-26 23:06:54', '2026-09-26 23:06:54');
INSERT INTO `word` VALUES (123, 'Annotation Processor', 'annotation processor', 1, '2026-09-26 23:06:59', '2026-09-26 23:06:59');
INSERT INTO `word` VALUES (124, 'Info', 'info', 1, '2026-09-26 23:07:05', '2026-09-26 23:07:05');
INSERT INTO `word` VALUES (125, 'Warn', 'warn', 1, '2026-09-26 23:07:12', '2026-09-26 23:07:12');
INSERT INTO `word` VALUES (126, 'English', 'english', 1, '2026-09-26 23:07:18', '2026-09-26 23:07:18');
INSERT INTO `word` VALUES (127, 'CRUD', 'crud', 1, '2026-09-26 23:42:21', '2026-09-26 23:42:21');
INSERT INTO `word` VALUES (128, 'SaaS', 'saa s', 1, '2026-09-26 23:44:19', '2026-09-26 23:44:19');
INSERT INTO `word` VALUES (129, 'Spring Boot', 'spring boot', 1, '2026-09-26 23:45:03', '2026-09-26 23:45:03');
INSERT INTO `word` VALUES (130, 'originalizedWord', 'originalized word', 1, '2026-09-26 23:45:27', '2026-09-26 23:45:27');
INSERT INTO `word` VALUES (131, 'originalWord', 'original word', 2, '2026-09-26 23:46:26', '2026-09-26 23:46:31');
INSERT INTO `word` VALUES (132, 'Stack', 'stack', 1, '2026-09-27 00:09:09', '2026-09-27 00:09:09');
INSERT INTO `word` VALUES (133, 'Deque', 'deque', 1, '2026-09-27 00:12:26', '2026-09-27 00:12:26');
INSERT INTO `word` VALUES (134, 'Peek', 'peek', 2, '2026-09-27 00:12:36', '2026-09-27 00:17:29');
INSERT INTO `word` VALUES (135, 'Top', 'top', 1, '2026-09-27 00:12:42', '2026-09-27 00:12:42');
INSERT INTO `word` VALUES (136, 'LIFO', 'lifo', 1, '2026-09-27 00:12:50', '2026-09-27 00:12:50');
INSERT INTO `word` VALUES (137, 'current', 'current', 1, '2026-09-27 00:18:33', '2026-09-27 00:18:33');
INSERT INTO `word` VALUES (138, 'StringBuilder', 'string builder', 1, '2026-09-27 00:18:40', '2026-09-27 00:18:40');
INSERT INTO `word` VALUES (139, 'PriorityQueue', 'priority queue', 1, '2026-09-27 00:18:57', '2026-09-27 00:18:57');
INSERT INTO `word` VALUES (140, 'HashSet', 'hash set', 1, '2026-09-27 00:19:02', '2026-09-27 00:19:02');
INSERT INTO `word` VALUES (141, 'HashMap', 'hash map', 1, '2026-09-27 00:19:09', '2026-09-27 00:19:09');
INSERT INTO `word` VALUES (142, 'push', 'push', 1, '2026-09-27 00:33:19', '2026-09-27 00:33:19');
INSERT INTO `word` VALUES (143, 'insert', 'insert', 1, '2026-09-27 00:33:24', '2026-09-27 00:33:24');
INSERT INTO `word` VALUES (144, 'seen', 'seen', 1, '2026-09-27 00:36:32', '2026-09-27 00:36:32');
INSERT INTO `word` VALUES (145, 'mysql', 'mysql', 1, '2026-09-27 00:36:43', '2026-09-27 00:36:43');
INSERT INTO `word` VALUES (146, 'index', 'index', 1, '2026-09-27 00:36:48', '2026-09-27 00:36:48');
INSERT INTO `word` VALUES (147, 'return', 'return', 1, '2026-09-27 00:37:02', '2026-09-27 00:37:02');
INSERT INTO `word` VALUES (148, 'toString', 'to string', 1, '2026-09-27 00:37:10', '2026-09-27 00:37:10');
INSERT INTO `word` VALUES (149, 'append', 'append', 1, '2026-09-27 00:37:14', '2026-09-27 00:37:14');
INSERT INTO `word` VALUES (150, 'pop', 'pop', 1, '2026-09-27 00:37:17', '2026-09-27 00:37:17');
INSERT INTO `word` VALUES (151, 'builder', 'builder', 1, '2026-09-27 00:37:24', '2026-09-27 00:37:24');
INSERT INTO `word` VALUES (152, 'Array', 'array', 1, '2026-09-27 00:37:35', '2026-09-27 00:37:35');
INSERT INTO `word` VALUES (153, 'reverseParentheses', 'reverse parentheses', 1, '2026-09-27 00:37:44', '2026-09-27 00:37:44');
INSERT INTO `word` VALUES (154, 'export', 'export', 1, '2026-09-27 00:46:19', '2026-09-27 00:46:19');
INSERT INTO `word` VALUES (155, 'template', 'template', 1, '2026-09-27 00:46:46', '2026-09-27 00:46:46');
INSERT INTO `word` VALUES (156, 'script', 'script', 1, '2026-09-27 00:46:56', '2026-09-27 00:46:56');
INSERT INTO `word` VALUES (157, 'WordCard', 'word card', 1, '2026-09-27 00:47:05', '2026-09-27 00:47:05');
INSERT INTO `word` VALUES (158, 'views', 'views', 1, '2026-09-27 00:47:18', '2026-09-27 00:47:18');
INSERT INTO `word` VALUES (159, 'function', 'function', 1, '2026-09-27 00:47:33', '2026-09-27 00:47:33');
INSERT INTO `word` VALUES (160, 'package', 'package', 1, '2026-09-27 00:47:57', '2026-09-27 00:47:57');
INSERT INTO `word` VALUES (161, 'utils', 'utils', 1, '2026-09-27 00:48:09', '2026-09-27 00:48:09');
INSERT INTO `word` VALUES (162, 'store', 'store', 1, '2026-09-27 00:48:16', '2026-09-27 00:48:16');
INSERT INTO `word` VALUES (163, 'RestControllerAdvice', 'rest controller advice', 3, '2026-09-27 02:32:23', '2026-09-27 03:06:57');
INSERT INTO `word` VALUES (164, 'VO', 'vo', 1, '2026-09-27 02:33:03', '2026-09-27 02:33:03');
INSERT INTO `word` VALUES (165, 'isLetter', 'is letter', 1, '2026-09-27 02:39:13', '2026-09-27 02:39:13');
INSERT INTO `word` VALUES (166, 'isDigit', 'is digit', 1, '2026-09-27 02:39:24', '2026-09-27 02:39:24');
INSERT INTO `word` VALUES (167, 'isWhitespace', 'is whitespace', 1, '2026-09-27 02:39:32', '2026-09-27 02:39:32');
INSERT INTO `word` VALUES (168, 'Unicode', 'unicode', 1, '2026-09-27 03:05:20', '2026-09-27 03:05:20');
INSERT INTO `word` VALUES (169, 'Character', 'character', 1, '2026-09-27 03:05:30', '2026-09-27 03:05:30');
INSERT INTO `word` VALUES (170, 'Letter', 'letter', 1, '2026-09-27 03:05:37', '2026-09-27 03:05:37');
INSERT INTO `word` VALUES (171, 'RuntimeException', 'runtime exception', 1, '2026-09-27 03:06:02', '2026-09-27 03:06:02');
INSERT INTO `word` VALUES (172, 'throw', 'throw', 1, '2026-09-27 03:06:09', '2026-09-27 03:06:09');
INSERT INTO `word` VALUES (173, 'GlobalExceptionHandler', 'global exception handler', 1, '2026-09-27 03:06:25', '2026-09-27 03:06:25');
INSERT INTO `word` VALUES (174, 'exception', 'exception', 3, '2026-09-27 03:06:32', '2026-09-27 05:30:40');
INSERT INTO `word` VALUES (175, 'Serialization', 'serialization', 1, '2026-09-27 03:40:53', '2026-09-27 03:40:53');
INSERT INTO `word` VALUES (176, 'Deserialize', 'deserialize', 1, '2026-09-27 03:41:00', '2026-09-27 03:41:00');
INSERT INTO `word` VALUES (177, 'Serialize', 'serialize', 1, '2026-09-27 03:41:04', '2026-09-27 03:41:04');
INSERT INTO `word` VALUES (178, 'Jackson', 'jackson', 1, '2026-09-27 03:41:10', '2026-09-27 03:41:10');
INSERT INTO `word` VALUES (179, 'failed', 'failed', 1, '2026-09-27 03:58:16', '2026-09-27 03:58:16');
INSERT INTO `word` VALUES (180, 'n', 'n', 1, '2026-09-27 04:21:58', '2026-09-27 04:21:58');
INSERT INTO `word` VALUES (181, 'Promise', 'promise', 2, '2026-09-27 04:27:52', '2026-09-27 17:50:32');
INSERT INTO `word` VALUES (182, 'resolve', 'resolve', 1, '2026-09-27 04:27:58', '2026-09-27 04:27:58');
INSERT INTO `word` VALUES (183, 'setTimeout', 'set timeout', 1, '2026-09-27 04:28:03', '2026-09-27 04:28:03');
INSERT INTO `word` VALUES (184, 'console', 'console', 1, '2026-09-27 04:28:55', '2026-09-27 04:28:55');
INSERT INTO `word` VALUES (185, 'console log', 'console log', 1, '2026-09-27 04:30:24', '2026-09-27 04:30:24');
INSERT INTO `word` VALUES (186, 'disabled', 'disabled', 1, '2026-09-27 04:31:40', '2026-09-27 04:31:40');
INSERT INTO `word` VALUES (187, 'axios', 'axios', 1, '2026-09-27 04:46:39', '2026-09-27 04:46:39');
INSERT INTO `word` VALUES (188, 'enabled', 'enabled', 1, '2026-09-27 04:46:44', '2026-09-27 04:46:44');
INSERT INTO `word` VALUES (189, 'finally', 'finally', 1, '2026-09-27 04:47:11', '2026-09-27 04:47:11');
INSERT INTO `word` VALUES (190, 'WordValidator', 'word validator', 2, '2026-09-27 05:30:29', '2026-09-28 22:52:58');
INSERT INTO `word` VALUES (191, 'validator', 'validator', 1, '2026-09-27 05:30:37', '2026-09-27 05:30:37');
INSERT INTO `word` VALUES (192, 'allowedChars', 'allowed chars', 1, '2026-09-27 06:10:39', '2026-09-27 06:10:39');
INSERT INTO `word` VALUES (193, 'contains', 'contains', 1, '2026-09-27 06:10:57', '2026-09-27 06:10:57');
INSERT INTO `word` VALUES (194, 'camelCase', 'camel case', 2, '2026-09-27 06:35:38', '2026-09-28 22:35:02');
INSERT INTO `word` VALUES (195, 'normalizeWord', 'normalize word', 1, '2026-09-27 06:35:50', '2026-09-27 06:35:50');
INSERT INTO `word` VALUES (196, 'replaceAll(', 'replace all', 1, '2026-09-27 06:38:36', '2026-09-27 06:38:36');
INSERT INTO `word` VALUES (197, 'Alien', 'alien', 1, '2026-09-27 06:38:57', '2026-09-27 06:38:57');
INSERT INTO `word` VALUES (198, 'constant', 'constant', 1, '2026-09-27 18:00:10', '2026-09-27 18:00:14');
INSERT INTO `word` VALUES (199, 'wedding', 'wedding', 1, '2026-09-27 23:47:03', '2026-09-27 23:59:37');
INSERT INTO `word` VALUES (200, 'downloads', 'downloads', 1, '2026-09-28 00:48:40', '2026-09-28 00:48:40');
INSERT INTO `word` VALUES (201, 'message', 'message', 1, '2026-09-28 02:40:13', '2026-09-28 02:40:13');
INSERT INTO `word` VALUES (202, 'instanceof', 'instanceof', 1, '2026-09-28 02:45:50', '2026-09-28 02:45:50');
INSERT INTO `word` VALUES (203, 'AllArgsConstructor', 'all args constructor', 1, '2026-09-28 03:46:04', '2026-09-28 03:46:04');
INSERT INTO `word` VALUES (204, 'WordEntry', 'word entry', 1, '2026-09-28 19:27:13', '2026-09-28 19:27:13');
INSERT INTO `word` VALUES (205, 'isPresent', 'is present', 1, '2026-09-28 19:36:50', '2026-09-28 19:36:50');
INSERT INTO `word` VALUES (207, 'necklace', 'necklace', 1, '2026-09-28 23:19:48', '2026-09-28 23:19:48');
INSERT INTO `word` VALUES (208, 'light', 'light', 1, '2026-09-28 23:20:14', '2026-09-28 23:20:14');
INSERT INTO `word` VALUES (209, 'blue', 'blue', 1, '2026-09-28 23:20:19', '2026-09-28 23:20:19');
INSERT INTO `word` VALUES (210, 'blouse', 'blouse', 1, '2026-09-28 23:44:43', '2026-09-28 23:44:43');
INSERT INTO `word` VALUES (211, 'think so', 'think so', 1, '2026-09-28 23:44:49', '2026-09-28 23:44:49');
INSERT INTO `word` VALUES (212, 'dress', 'dress', 1, '2026-09-28 23:44:53', '2026-09-28 23:44:53');
INSERT INTO `word` VALUES (213, 'TranslationService', 'Translation Service', 1, '2026-09-29 04:11:28', '2026-09-29 04:11:28');

SET FOREIGN_KEY_CHECKS = 1;
