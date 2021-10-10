/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : leetcode

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 10/10/2021 14:27:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ac_record
-- ----------------------------
DROP TABLE IF EXISTS `ac_record`;
CREATE TABLE `ac_record`  (
  `day_str` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subject_string` blob NULL,
  PRIMARY KEY (`day_str`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ac_record
-- ----------------------------

-- ----------------------------
-- Table structure for leetcode_question
-- ----------------------------
DROP TABLE IF EXISTS `leetcode_question`;
CREATE TABLE `leetcode_question`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增 ID',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目类型',
  `question_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题目编号',
  `question_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目名称',
  `finish_frequency` int NOT NULL DEFAULT 0 COMMENT '完成次数',
  `last_finish_time` datetime(0) NULL DEFAULT NULL COMMENT '最后完成时间',
  `status` int NULL DEFAULT NULL,
  `question_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '题目 url',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `leetcode_question_last_finish_time_index`(`last_finish_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'leetcode 题目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leetcode_question
-- ----------------------------
INSERT INTO `leetcode_question` VALUES (1, '链表', '141', '环形链表', 0, '2021-09-03 21:34:21', 1, 'https://leetcode-cn.com/problems/linked-list-cycle', '2021-02-08 19:02:48', '2021-09-03 21:34:21');
INSERT INTO `leetcode_question` VALUES (2, '链表', '206', '反转链表', 0, '2021-09-03 21:34:21', 1, 'https://leetcode-cn.com/problems/reverse-linked-list/', '2021-02-08 19:03:48', '2021-09-03 21:34:21');
INSERT INTO `leetcode_question` VALUES (3, '链表', '21', '合并两个有序链表', 0, '2021-09-03 21:34:21', 1, 'https://leetcode-cn.com/problems/merge-two-sorted-lists/', '2021-02-08 19:03:51', '2021-09-03 21:34:21');
INSERT INTO `leetcode_question` VALUES (4, '链表', '24', '两两交换链表中的节点', 0, '2021-07-19 21:02:02', 1, 'https://leetcode-cn.com/problems/swap-nodes-in-pairs/', '2021-02-08 19:03:54', '2021-07-19 21:02:02');
INSERT INTO `leetcode_question` VALUES (5, '链表', '142', '环形链表II', 0, '2021-07-09 23:34:35', 1, 'https://leetcode-cn.com/problems/linked-list-cycle-ii/', '2021-02-08 19:03:56', '2021-07-09 23:34:35');
INSERT INTO `leetcode_question` VALUES (6, '数组', '283', '移动零', 0, '2021-05-09 22:40:51', 1, 'https://leetcode-cn.com/problems/move-zeroes/', '2021-02-08 19:03:59', '2021-05-09 22:40:51');
INSERT INTO `leetcode_question` VALUES (7, '数组', '26', '删除排序数组中的重复项', 0, '2021-05-10 23:49:11', 1, 'https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/', '2021-02-08 19:06:43', '2021-05-10 23:49:11');
INSERT INTO `leetcode_question` VALUES (8, '数组', '88', '合并两个有序数组', 0, '2021-05-10 23:49:11', 1, 'https://leetcode-cn.com/problems/merge-sorted-array/', '2021-02-10 00:05:26', '2021-05-10 23:49:11');
INSERT INTO `leetcode_question` VALUES (9, '数组', '1', '两数之和', 0, '2021-05-10 23:49:11', 1, 'https://leetcode-cn.com/problems/two-sum/', '2021-02-12 14:57:23', '2021-05-10 23:49:11');
INSERT INTO `leetcode_question` VALUES (10, '数组', '15', '三数之和', 0, '2021-05-12 00:00:23', 1, 'https://leetcode-cn.com/problems/3sum/', '2021-02-12 14:58:02', '2021-05-12 00:00:23');
INSERT INTO `leetcode_question` VALUES (11, '数组', '11', '盛最多水的容器', 0, '2021-05-12 00:00:23', 1, 'https://leetcode-cn.com/problems/container-with-most-water/', '2021-02-13 01:50:44', '2021-05-12 00:00:23');
INSERT INTO `leetcode_question` VALUES (12, '栈', '232', '用栈实现队列', 0, '2021-05-12 00:00:23', 1, 'https://leetcode-cn.com/problems/implement-queue-using-stacks/', '2021-02-16 14:55:02', '2021-05-12 00:00:23');
INSERT INTO `leetcode_question` VALUES (13, '栈', '20', '有效的括号', 0, '2021-09-09 22:41:44', 1, 'https://leetcode-cn.com/problems/valid-parentheses/', '2021-02-17 01:28:17', '2021-09-09 22:41:44');
INSERT INTO `leetcode_question` VALUES (14, '栈', '155', '最小栈', 0, '2021-05-12 22:12:16', 1, 'https://leetcode-cn.com/problems/min-stack/', '2021-02-17 23:39:44', '2021-05-12 22:12:16');
INSERT INTO `leetcode_question` VALUES (15, '队列', '225', '用队列实现栈', 0, '2021-05-12 22:12:16', 1, 'https://leetcode-cn.com/problems/implement-stack-using-queues/', '2021-02-20 00:01:08', '2021-05-12 22:12:16');
INSERT INTO `leetcode_question` VALUES (16, '队列', '剑指offer 59', 'II. 队列的最大值', 0, '2021-05-15 22:19:40', 2, 'https://leetcode-cn.com/problems/dui-lie-de-zui-da-zhi-lcof/', '2021-02-20 21:45:05', '2021-05-15 22:19:40');
INSERT INTO `leetcode_question` VALUES (17, '队列', '622', '设计循环队列', 0, '2021-05-13 17:36:31', 1, 'https://leetcode-cn.com/problems/design-circular-queue/', '2021-02-21 23:19:41', '2021-05-13 17:36:31');
INSERT INTO `leetcode_question` VALUES (18, '队列', '641', '设计循环双端队列', 0, '2021-05-13 17:36:31', 1, 'https://leetcode-cn.com/problems/design-circular-deque/', '2021-02-23 13:15:09', '2021-05-13 17:36:31');
INSERT INTO `leetcode_question` VALUES (19, '队列', '239', '滑动窗口最大值', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/sliding-window-maximum/', '2021-02-23 23:14:57', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (20, '栈', '42', '接雨水', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/trapping-rain-water', '2021-02-24 23:26:38', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (21, '哈希表', '242', '有效的字母异位词', 0, '2021-05-14 15:10:35', 1, 'https://leetcode-cn.com/problems/valid-anagram/', '2021-02-26 10:18:30', '2021-05-14 15:10:35');
INSERT INTO `leetcode_question` VALUES (22, '哈希表', '49', '字母异位分词', 0, '2021-05-15 22:19:40', 1, 'https://leetcode-cn.com/problems/group-anagrams/', '2021-02-28 21:24:54', '2021-05-15 22:19:40');
INSERT INTO `leetcode_question` VALUES (23, '堆', '剑指offer 40', '最小的 k 个数', 0, '2021-05-15 22:19:40', 1, 'https://leetcode-cn.com/problems/zui-xiao-de-kge-shu-lcof/', '2021-03-02 14:36:49', '2021-05-15 22:19:40');
INSERT INTO `leetcode_question` VALUES (24, '堆', '347', '前 k 个高频元素', 0, '2021-05-15 22:19:40', 1, 'https://leetcode-cn.com/problems/top-k-frequent-elements/', '2021-03-03 10:33:10', '2021-05-15 22:19:40');
INSERT INTO `leetcode_question` VALUES (25, '堆', '264', '丑数', 0, '2021-05-16 18:34:15', 1, 'https://leetcode-cn.com/problems/ugly-number-ii/', '2021-03-04 10:53:16', '2021-05-16 18:34:15');
INSERT INTO `leetcode_question` VALUES (26, '树', '590', 'N叉树的后序遍历', 0, '2021-06-02 13:59:05', 1, 'https://leetcode-cn.com/problems/n-ary-tree-postorder-traversal/', '2021-03-06 12:08:19', '2021-06-02 13:59:05');
INSERT INTO `leetcode_question` VALUES (27, '树', '589', 'N叉树的前序遍历', 0, '2021-06-03 15:06:44', 1, 'https://leetcode-cn.com/problems/n-ary-tree-preorder-traversal/', '2021-03-08 00:18:19', '2021-06-03 15:06:44');
INSERT INTO `leetcode_question` VALUES (28, '树', '94', '二叉树的中序遍历', 0, '2021-06-06 04:57:27', 1, 'https://leetcode-cn.com/problems/binary-tree-inorder-traversal/', '2021-03-08 00:19:08', '2021-06-06 04:57:27');
INSERT INTO `leetcode_question` VALUES (29, '树', '144', '二叉树的前序遍历', 0, '2021-06-06 04:57:27', 1, 'https://leetcode-cn.com/problems/binary-tree-preorder-traversal/', '2021-03-09 23:23:03', '2021-06-06 04:57:27');
INSERT INTO `leetcode_question` VALUES (30, '树', '429', 'N叉树的层序遍历', 0, '2021-06-06 04:57:27', 1, 'https://leetcode-cn.com/problems/n-ary-tree-level-order-traversal/', '2021-03-10 22:29:56', '2021-06-06 04:57:27');
INSERT INTO `leetcode_question` VALUES (31, '树', '226', '翻转二叉树', 0, '2021-06-11 21:39:32', 1, 'https://leetcode-cn.com/problems/invert-binary-tree/', '2021-03-11 23:47:01', '2021-06-11 21:39:32');
INSERT INTO `leetcode_question` VALUES (32, '树', '104', '二叉树的最大深度', 0, '2021-05-16 23:33:58', 1, 'https://leetcode-cn.com/problems/maximum-depth-of-binary-tree/', '2021-03-11 23:47:29', '2021-05-16 23:33:58');
INSERT INTO `leetcode_question` VALUES (33, '树', '98', '验证二叉搜索树', 0, '2021-05-16 23:33:58', 1, 'https://leetcode-cn.com/problems/validate-binary-search-tree/', '2021-03-15 10:47:22', '2021-05-16 23:33:58');
INSERT INTO `leetcode_question` VALUES (34, '树', '105', '从前序与中序遍历序列构造二叉树', 0, '2021-06-11 21:39:32', 1, 'https://leetcode-cn.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/', '2021-03-17 12:10:24', '2021-06-11 21:39:32');
INSERT INTO `leetcode_question` VALUES (35, '设计', '146', 'LRU 缓存机制', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/lru-cache/', '2021-03-24 12:06:38', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (36, '树', '111', '二叉树的最小深度', 0, '2021-08-18 20:00:24', 1, 'https://leetcode-cn.com/problems/minimum-depth-of-binary-tree/', '2021-03-24 19:19:40', '2021-08-18 20:00:24');
INSERT INTO `leetcode_question` VALUES (37, '树', '236', '二叉树的最近公共祖先', 0, '2021-08-24 19:46:10', 1, 'https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-tree/', '2021-03-24 19:20:06', '2021-08-24 19:46:10');
INSERT INTO `leetcode_question` VALUES (38, '分治', '169', '多数元素', 0, '2021-04-02 15:32:38', 2, 'https://leetcode-cn.com/problems/majority-element/', '2021-03-26 00:11:50', '2021-04-02 15:32:38');
INSERT INTO `leetcode_question` VALUES (39, '分治', '50', 'Pow(x, n)', 0, '2021-05-20 22:12:37', 1, 'https://leetcode-cn.com/problems/powx-n/', '2021-03-27 10:46:30', '2021-05-20 22:12:37');
INSERT INTO `leetcode_question` VALUES (40, '回溯', '77', '组合', 0, '2021-05-20 22:12:37', 1, 'https://leetcode-cn.com/problems/combinations/', '2021-03-28 00:04:56', '2021-05-20 22:12:37');
INSERT INTO `leetcode_question` VALUES (41, '回溯', '46', '全排列', 0, '2021-05-20 22:12:37', 1, 'https://leetcode-cn.com/problems/permutations/', '2021-03-29 00:33:35', '2021-05-20 22:12:37');
INSERT INTO `leetcode_question` VALUES (42, '回溯', '47', '全排列 II', 0, '2021-05-20 22:26:02', 1, 'https://leetcode-cn.com/problems/permutations-ii/', '2021-03-29 18:48:45', '2021-05-20 22:26:02');
INSERT INTO `leetcode_question` VALUES (43, '回溯', '22', '括号生成', 0, '2021-05-20 22:26:02', 1, 'https://leetcode-cn.com/problems/generate-parentheses', '2021-03-30 19:21:30', '2021-05-20 22:26:02');
INSERT INTO `leetcode_question` VALUES (44, '回溯', '78', '子集', 0, '2021-05-20 22:26:02', 1, 'https://leetcode-cn.com/problems/subsets/', '2021-03-31 15:48:29', '2021-05-20 22:26:02');
INSERT INTO `leetcode_question` VALUES (45, '链表', '160', '相交链表', 0, '2021-07-11 22:52:13', 1, 'https://leetcode-cn.com/problems/intersection-of-two-linked-lists/', '2021-03-31 21:29:44', '2021-07-11 22:52:13');
INSERT INTO `leetcode_question` VALUES (47, 'BFS', '433', '最小基因变化', 0, '2021-04-15 13:47:01', 4, 'https://leetcode-cn.com/problems/minimum-genetic-mutation/', '2021-04-05 21:22:39', '2021-04-15 13:47:01');
INSERT INTO `leetcode_question` VALUES (48, 'BFS', '200', '岛屿数量', 0, '2021-04-17 15:48:27', 4, 'https://leetcode-cn.com/problems/number-of-islands/', '2021-04-07 15:31:10', '2021-04-17 15:48:27');
INSERT INTO `leetcode_question` VALUES (49, 'BFS', '515', '在每个树行中找最大值', 0, '2021-04-14 13:11:49', 4, 'https://leetcode-cn.com/problems/find-largest-value-in-each-tree-row/', '2021-04-07 15:50:11', '2021-04-14 13:11:49');
INSERT INTO `leetcode_question` VALUES (50, 'BFS', '127', '单词接龙', 0, '2021-04-19 13:09:04', 4, 'https://leetcode-cn.com/problems/word-ladder/description/', '2021-04-10 16:12:24', '2021-04-19 13:09:04');
INSERT INTO `leetcode_question` VALUES (52, 'DFS', '200', '岛屿数量', 0, '2021-04-17 15:48:27', 4, 'https://leetcode-cn.com/problems/number-of-islands/', '2021-04-13 16:30:37', '2021-04-17 15:48:27');
INSERT INTO `leetcode_question` VALUES (53, '二分查找', '69', 'x 的平方根', 0, '2021-08-16 22:44:51', 1, 'https://leetcode-cn.com/problems/sqrtx/', '2021-04-14 23:52:34', '2021-08-16 22:44:51');
INSERT INTO `leetcode_question` VALUES (54, '二分查找', '367', '有效的完全平方根', 0, '2021-08-16 22:44:51', 1, 'https://leetcode-cn.com/problems/valid-perfect-square/', '2021-04-15 22:57:53', '2021-08-16 22:44:51');
INSERT INTO `leetcode_question` VALUES (55, '二分查找', '33', '搜索旋转排序数组', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/search-in-rotated-sorted-array/', '2021-04-17 17:16:14', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (56, '二分查找', '74', '搜索二维矩阵', 0, '2021-08-27 22:25:17', 1, 'https://leetcode-cn.com/problems/search-a-2d-matrix/', '2021-04-17 17:16:45', '2021-08-27 22:25:17');
INSERT INTO `leetcode_question` VALUES (57, '二分查找', '153', '寻找旋转排序数组中的最小值', 0, '2021-09-04 09:58:31', 1, 'https://leetcode-cn.com/problems/find-minimum-in-rotated-sorted-array/', '2021-04-19 22:36:52', '2021-09-04 09:58:31');
INSERT INTO `leetcode_question` VALUES (58, '链表', '2', '两数相加', 0, '2021-09-17 19:57:16', 1, 'https://leetcode-cn.com/problems/add-two-numbers', '2021-05-23 14:10:57', '2021-09-17 19:57:16');
INSERT INTO `leetcode_question` VALUES (59, '字符串', '3', '无重复字符的最长子串', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/longest-substring-without-repeating-characters', '2021-05-23 14:17:32', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (60, '字符串', '415', '字符串相加', 0, '2021-09-29 23:47:11', 1, 'https://leetcode-cn.com/problems/add-strings/', '2021-05-24 11:19:47', '2021-09-29 23:47:11');
INSERT INTO `leetcode_question` VALUES (61, '链表', '23', '合并 K 个升序列表', 0, '2021-07-19 21:02:02', 1, 'https://leetcode-cn.com/problems/merge-k-sorted-lists/', '2021-05-30 00:24:47', '2021-07-19 21:02:02');
INSERT INTO `leetcode_question` VALUES (62, '链表', '剑指 offer 35', '复杂链表的复制', 0, '2021-07-19 21:02:02', 1, 'https://leetcode-cn.com/problems/fu-za-lian-biao-de-fu-zhi-lcof/', '2021-05-30 00:25:49', '2021-07-19 21:02:02');
INSERT INTO `leetcode_question` VALUES (208, '字符串', '5', '最长回文子串', 0, '2021-09-11 15:48:52', 1, 'https://leetcode-cn.com/problems/longest-palindromic-substring/', '2021-06-01 11:40:00', '2021-09-11 15:48:52');
INSERT INTO `leetcode_question` VALUES (209, '树', '101', '对称二叉树', 0, '2021-06-12 14:27:39', 1, 'https://leetcode-cn.com/problems/symmetric-tree/', '2021-06-03 12:10:49', '2021-06-12 14:27:39');
INSERT INTO `leetcode_question` VALUES (210, '树', '145', '二叉树的后序遍历', 0, '2021-06-11 21:39:32', 1, 'https://leetcode-cn.com/problems/binary-tree-postorder-traversal/', '2021-06-06 23:26:52', '2021-06-11 21:39:32');
INSERT INTO `leetcode_question` VALUES (211, '树', '257', '二叉树的所有路径', 0, '2021-06-14 23:15:36', 1, 'https://leetcode-cn.com/problems/binary-tree-paths/', '2021-06-08 22:28:38', '2021-06-14 23:15:36');
INSERT INTO `leetcode_question` VALUES (212, '排序', '912', '快速排序', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/sort-an-array/', '2021-06-09 21:54:04', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (213, '排序', '912', '归并排序', 0, '2021-06-21 19:51:45', 1, 'https://leetcode-cn.com/problems/sort-an-array/', '2021-06-13 14:53:24', '2021-06-21 19:51:45');
INSERT INTO `leetcode_question` VALUES (214, '链表', '25', 'K 个一组翻转链表', 0, '2021-09-17 19:57:16', 1, 'https://leetcode-cn.com/problems/reverse-nodes-in-k-group/', '2021-06-13 17:30:13', '2021-09-17 19:57:16');
INSERT INTO `leetcode_question` VALUES (215, '树', '103', '二叉树的锯齿形层序遍历', 0, '2021-06-18 23:46:12', 1, 'https://leetcode-cn.com/problems/binary-tree-zigzag-level-order-traversal/', '2021-06-15 10:41:41', '2021-06-18 23:46:12');
INSERT INTO `leetcode_question` VALUES (216, 'DP', '53', '最大子序和', 0, '2021-10-05 09:24:35', 1, 'https://leetcode-cn.com/problems/maximum-subarray', '2021-06-17 19:50:09', '2021-10-05 09:24:35');
INSERT INTO `leetcode_question` VALUES (217, '树', '112', '路径总和', 0, '2021-06-23 13:58:03', 1, 'https://leetcode-cn.com/problems/path-sum/', '2021-06-19 22:27:01', '2021-06-23 13:58:03');
INSERT INTO `leetcode_question` VALUES (218, '排序', '912', '堆排序', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/sort-an-array/', '2021-06-20 23:52:51', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (219, '二分查找', '704', '二分查找', 0, '2021-08-16 22:44:51', 1, 'https://leetcode-cn.com/problems/binary-search/', '2021-06-22 19:15:13', '2021-08-16 22:44:51');
INSERT INTO `leetcode_question` VALUES (220, 'DP', '121', '股票买卖的最佳时机', 0, '2021-07-06 22:46:03', 1, 'https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/', '2021-06-23 19:35:44', '2021-07-06 22:46:03');
INSERT INTO `leetcode_question` VALUES (221, '树（非递归）', '144', '二叉树的前序遍历', 0, '2021-07-08 22:21:46', 1, 'https://leetcode-cn.com/problems/binary-tree-preorder-traversal/', '2021-06-27 16:28:26', '2021-07-08 22:21:46');
INSERT INTO `leetcode_question` VALUES (222, '树（非递归）', '94', '二叉树的中序遍历', 0, '2021-07-08 22:21:46', 1, 'https://leetcode-cn.com/problems/binary-tree-inorder-traversal', '2021-06-27 17:38:48', '2021-07-08 22:21:46');
INSERT INTO `leetcode_question` VALUES (223, 'DP', '198', '打家劫舍', 0, '2021-07-09 23:34:35', 1, 'https://leetcode-cn.com/problems/house-robber/', '2021-07-03 17:21:31', '2021-07-09 23:34:35');
INSERT INTO `leetcode_question` VALUES (224, '链表', '剑指 Offer 22', '链表中倒数第k个节点', 0, '2021-07-18 22:02:34', 1, 'https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/', '2021-07-03 17:22:23', '2021-07-18 22:02:34');
INSERT INTO `leetcode_question` VALUES (225, 'DP', '70', '爬楼梯', 0, '2021-07-09 23:34:35', 1, 'https://leetcode-cn.com/problems/climbing-stairs/', '2021-07-03 17:25:24', '2021-07-09 23:34:35');
INSERT INTO `leetcode_question` VALUES (226, '链表', '328', '奇偶链表', 0, '2021-09-13 23:12:53', 1, 'https://leetcode-cn.com/problems/odd-even-linked-list', '2021-07-11 23:08:20', '2021-09-13 23:12:53');
INSERT INTO `leetcode_question` VALUES (227, '二分查找', '34', '在排序数组中查找元素的第一个和最后一个位置', 0, '2021-09-06 21:33:51', 1, 'https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array/', '2021-08-15 22:54:53', '2021-09-06 21:33:51');
INSERT INTO `leetcode_question` VALUES (228, '树', '110', '平衡二叉树', 0, '2021-08-24 19:46:10', 1, 'https://leetcode-cn.com/problems/balanced-binary-tree/', '2021-08-16 22:46:48', '2021-08-24 19:46:10');
INSERT INTO `leetcode_question` VALUES (229, '树', '剑指 Offer 54', '二叉搜索树的第k大节点', 0, '2021-10-05 09:24:35', 1, 'https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-di-kda-jie-dian-lcof/', '2021-08-18 23:05:27', '2021-10-05 09:24:35');
INSERT INTO `leetcode_question` VALUES (230, '树', '102', '二叉树的层序遍历', 0, '2021-08-21 11:32:27', 1, 'https://leetcode-cn.com/problems/binary-tree-level-order-traversal/', '2021-08-18 23:09:51', '2021-08-21 11:32:27');
INSERT INTO `leetcode_question` VALUES (231, '树', '199', '二叉树的右视图', 0, '2021-08-24 19:46:10', 1, 'https://leetcode-cn.com/problems/binary-tree-right-side-view/', '2021-08-19 22:32:07', '2021-08-24 19:46:10');
INSERT INTO `leetcode_question` VALUES (232, '树', '106', '从中序与后序遍历序列构造二叉树', 0, '2021-08-27 22:25:17', 1, 'https://leetcode-cn.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/', '2021-08-23 00:06:30', '2021-08-27 22:25:17');
INSERT INTO `leetcode_question` VALUES (233, '树', '129', '求根节点到叶节点数字之和', 0, '2021-08-27 22:25:17', 1, 'https://leetcode-cn.com/problems/sum-root-to-leaf-numbers/', '2021-08-23 20:18:42', '2021-08-27 22:25:17');
INSERT INTO `leetcode_question` VALUES (234, '树', '113', '路径总和 II', 0, '2021-09-01 21:49:06', 1, 'https://leetcode-cn.com/problems/path-sum-ii/', '2021-08-24 21:34:43', '2021-09-01 21:49:06');
INSERT INTO `leetcode_question` VALUES (235, '树', '951', '翻转等价二叉树', 0, '2021-09-03 21:34:21', 1, 'https://leetcode-cn.com/problems/flip-equivalent-binary-trees/', '2021-08-25 23:31:54', '2021-09-03 21:34:21');
INSERT INTO `leetcode_question` VALUES (236, '树', '450', '删除二叉搜索树中的节点', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/delete-node-in-a-bst/', '2021-08-27 00:03:48', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (237, '树', '108', '将有序数组转换为二叉搜索树', 0, '2021-09-05 21:35:04', 1, 'https://leetcode-cn.com/problems/convert-sorted-array-to-binary-search-tree/', '2021-08-28 22:26:29', '2021-09-05 21:35:04');
INSERT INTO `leetcode_question` VALUES (238, '链表', '244', '回文链表', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/palindrome-linked-list/', '2021-08-30 21:30:50', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (239, '字符串', '14', '最长公共前缀', 0, '2021-09-18 15:25:14', 1, 'https://leetcode-cn.com/problems/longest-common-prefix/', '2021-09-03 22:50:16', '2021-09-18 15:25:14');
INSERT INTO `leetcode_question` VALUES (240, '字符串', '8', '字符串转换整数', 0, '2021-09-11 15:48:52', 1, 'https://leetcode-cn.com/problems/string-to-integer-atoi', '2021-09-05 02:22:13', '2021-09-11 15:48:52');
INSERT INTO `leetcode_question` VALUES (241, '堆', '215', '数组中的第K个最大元素', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/kth-largest-element-in-an-array/', '2021-09-11 00:25:41', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (242, 'DP', '1143', '最长公共子序列', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/longest-common-subsequence/', '2021-09-17 22:15:07', '2021-10-07 09:05:36');
INSERT INTO `leetcode_question` VALUES (243, 'DP', '300', '最长递增子序列', 0, '2021-10-07 09:05:36', 3, 'https://leetcode-cn.com/problems/longest-increasing-subsequence/', '2021-09-20 19:41:44', '2021-10-07 09:05:36');

SET FOREIGN_KEY_CHECKS = 1;
