/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : eairp

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 28/02/2025 22:17:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户名称',
  `contact` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone_number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传真',
  `first_quarter_account_receivable` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '一季度应收账款',
  `second_quarter_account_receivable` decimal(12, 2) NULL DEFAULT NULL COMMENT '二季度应收账款',
  `third_quarter_account_receivable` decimal(12, 2) NULL DEFAULT NULL COMMENT '三季度应收账款',
  `fourth_quarter_account_receivable` decimal(12, 2) NULL DEFAULT NULL COMMENT '四季度应收账款',
  `total_account_receivable` decimal(24, 2) NULL DEFAULT NULL COMMENT '累计应收账款',
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tax_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '纳税人识别号',
  `bank_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开户行',
  `account_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `tax_rate` decimal(12, 2) NULL DEFAULT NULL COMMENT '税率',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态（0-启用，1-停用）默认启用',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1259902942081712128, 0, 'CC', '小陈', '18027431919', '12313@11.com', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-08 16:04:29', '2024-08-06 06:47:17', 0, 0, 0);
INSERT INTO `customer` VALUES (1260024448908525568, 1255645635676209152, '客户A', '赵伟', '18027431919', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-09 00:07:19', NULL, 1255649402538688512, NULL, 0);
INSERT INTO `customer` VALUES (1260382967981670400, 1255645635676209152, '陈广瑞', '李晨君', '13713131516', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-09 23:51:56', NULL, 1260268142840512512, NULL, 0);
INSERT INTO `customer` VALUES (1260388449681145856, 1255645635676209152, '王贤', '王贤', '17916161895', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-10 00:13:43', NULL, 1260268142840512512, NULL, 0);
INSERT INTO `customer` VALUES (1264637669397233664, 1255645635676209152, 'A Dealer', '17816162315', '17816162315', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '91610131MAC9KMEQ8J', '中国农业银行(西安科技路中段支行)', '', 1.00, 0, '', 0, '2024-07-21 17:38:36', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `customer` VALUES (1264637727421235200, 1255645635676209152, 'B Dealer', '15015151623', '15015151623', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-21 17:38:50', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `customer` VALUES (1264637795389931520, 1255645635676209152, 'C Dealer', '17915162156', '17915162156', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-21 17:39:06', '2024-08-02 04:09:12', 1255645635676209152, 1255645635676209152, 0);
INSERT INTO `customer` VALUES (1266517878027321344, 1255645635676209152, 'D Dealer', '17916161236', '17916161236', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-26 22:09:53', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `customer` VALUES (1266517966837514240, 1255645635676209152, 'E Dealer', '13713735110', '13713735110', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-26 22:10:14', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `customer` VALUES (1266518027038359552, 1255645635676209152, 'F Dealer', '18601701547', '18601701547', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-07-26 22:10:28', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `customer` VALUES (1270179404324012032, 0, 'A Dealer', 'A Dealer', '021-61615936', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-08-06 00:39:29', NULL, 0, NULL, 0);
INSERT INTO `customer` VALUES (1270272515280732160, 0, 'B Dealer', 'Mr. Wang', '021-61615936', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0, '', 0, '2024-08-06 06:49:28', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for financial_account
-- ----------------------------
DROP TABLE IF EXISTS `financial_account`;
CREATE TABLE `financial_account`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `account_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `account_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编号',
  `initial_amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '期初金额',
  `current_amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '当前余额',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '启用',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `is_default` tinyint(1) NULL DEFAULT NULL COMMENT '是否默认',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '账户信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of financial_account
-- ----------------------------
INSERT INTO `financial_account` VALUES (1810341847370792962, 0, '微信支付', 'WX00005', 0.00, 59602.60, NULL, 0, NULL, 0, '2024-07-08 23:55:06', NULL, 0, NULL, 0);
INSERT INTO `financial_account` VALUES (1819297562890321922, 1255645635676209152, 'Visa中国银行', NULL, 0.00, 0.00, NULL, 0, NULL, 0, '2024-08-02 17:01:55', NULL, 1255645635676209152, NULL, 0);

-- ----------------------------
-- Table structure for financial_main
-- ----------------------------
DROP TABLE IF EXISTS `financial_main`;
CREATE TABLE `financial_main`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `related_person_id` bigint NULL DEFAULT NULL COMMENT '关联人id(会员/客户/供应商)',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '经手人id',
  `account_id` bigint NULL DEFAULT NULL COMMENT '账户id',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型(支出/收入/收款/付款/转账)',
  `change_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '变动金额(优惠/收款/付款/实付)',
  `discount_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠金额',
  `total_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '合计金额',
  `receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `receipt_source` tinyint(1) NULL DEFAULT 0 COMMENT '单据来源，0-pc，1-手机',
  `receipt_date` datetime NULL DEFAULT NULL COMMENT '单据日期',
  `remark` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `file_id` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '附件ID（多个用逗号分隔）',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态，0未审核、1已审核、9审核中',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK9F4C0D8DB610FC06`(`related_person_id` ASC) USING BTREE,
  INDEX `FK9F4C0D8DAAE50527`(`account_id` ASC) USING BTREE,
  INDEX `FK9F4C0D8DC4170B37`(`operator_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '财务主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of financial_main
-- ----------------------------
INSERT INTO `financial_main` VALUES (1255743643810004992, 1255645635676209152, 1806027639959318529, NULL, 1806027923552989185, '付款', 50.00, 0.00, 50.00, 'FKD1255743606589751296', 0, '2024-06-27 04:36:46', '', '', 0, '2024-06-27 04:36:55', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_main` VALUES (1255743745186332672, 1255645635676209152, 1806027639959318529, NULL, 1806027923552989185, '付款', 50.00, 0.00, 50.00, 'FKD1255743711447351296', 0, '2024-06-27 04:37:11', '', '', 0, '2024-06-27 04:37:19', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_main` VALUES (1255744115119751168, 1255645635676209152, 1806027639959318529, NULL, 1806027923552989185, '付款', 50.00, 0.00, 50.00, 'FKD1255744064377061376', 0, '2024-06-27 04:38:35', '', '', 0, '2024-06-27 04:38:48', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_main` VALUES (1255744153485049856, 1255645635676209152, 1806027639959318529, NULL, 1806027923552989185, '付款', 50.00, 0.00, 50.00, 'FKD1255744121373458432', 0, '2024-06-27 04:38:49', '', '', 0, '2024-06-27 04:38:57', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_main` VALUES (1255744533090533376, 1255645635676209152, 1806027639959318529, NULL, 1806027923552989185, '付款', 50.00, 0.00, 50.00, 'FKD1255744491747278848', 0, '2024-06-27 04:40:17', '', '', 0, '2024-06-27 04:40:27', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_main` VALUES (1255744590812545024, 1255645635676209152, 1806027639959318529, NULL, 1806027923552989185, '付款', 50.00, 0.00, 50.00, 'FKD1255744551704854528', 0, '2024-06-27 04:40:31', '', '', 0, '2024-06-27 04:40:41', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_main` VALUES (1255744747746623488, 1255645635676209152, 1806027639959318529, NULL, 1806027923552989185, '付款', 20.00, 0.00, 20.00, 'FKD1255744700233547776', 0, '2024-06-27 04:41:07', '', '', 0, '2024-06-27 04:41:18', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `financial_main` VALUES (1268668615511506944, 0, 1815963845791395842, NULL, 1810341847370792962, '收入', NULL, NULL, 23.00, 'SRD1268668547865772032', 0, '2024-08-01 20:35:52', '', '', 0, '2024-08-01 20:36:09', NULL, 0, NULL, 0);
INSERT INTO `financial_main` VALUES (1268669225543663616, 0, 1259902942081712128, NULL, 1810341847370792962, '收入', NULL, NULL, 222.00, 'SRD1268669199455092736', 0, '2024-08-01 20:38:27', '', '', 1, '2024-08-01 20:38:34', NULL, 0, NULL, 0);
INSERT INTO `financial_main` VALUES (1268722727443759104, 0, 1815963845791395842, NULL, NULL, '收预付款', 11.00, NULL, 11.00, 'ACD1268722672942972928', 0, '2024-08-02 00:11:05', '', '', 1, '2024-08-02 00:11:10', NULL, 0, NULL, 1);
INSERT INTO `financial_main` VALUES (1268722790333153280, 0, 1815963845791395842, NULL, NULL, '收预付款', 33.00, NULL, 33.00, 'ACD1268722756359290880', 0, '2024-08-02 00:11:24', '', '', 0, '2024-08-02 00:11:25', NULL, 0, NULL, 0);
INSERT INTO `financial_main` VALUES (1268723825365745664, 0, NULL, NULL, 1810341847370792962, '转账', NULL, NULL, 222.00, 'ZZD1268723786333552640', 0, '2024-08-02 00:15:22', '', '', 1, '2024-08-02 00:15:32', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for financial_sub
-- ----------------------------
DROP TABLE IF EXISTS `financial_sub`;
CREATE TABLE `financial_sub`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `financial_main_id` bigint NOT NULL COMMENT '财务主表id',
  `account_id` bigint NULL DEFAULT NULL COMMENT '账户Id',
  `income_expense_id` bigint NULL DEFAULT NULL COMMENT '收支项目Id',
  `other_receipt` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联单据',
  `receivable_payment_arrears` decimal(12, 2) NULL DEFAULT NULL COMMENT '应收/付 欠款',
  `received_prepaid_arrears` decimal(12, 2) NULL DEFAULT NULL COMMENT '已收/付 欠款',
  `single_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '单项金额',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK9F4CBAC0AAE50527`(`account_id` ASC) USING BTREE,
  INDEX `FK9F4CBAC0C5FE6007`(`financial_main_id` ASC) USING BTREE,
  INDEX `FK9F4CBAC0D203EDC5`(`income_expense_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '财务子表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of financial_sub
-- ----------------------------
INSERT INTO `financial_sub` VALUES (1255744115161694208, 1255645635676209152, 1255744115119751168, 1806027923552989185, NULL, 'CGRK1255734763491164160', 100.00, 50.00, 50.00, NULL, '2024-06-27 04:38:48', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_sub` VALUES (1255744153506021376, 1255645635676209152, 1255744153485049856, 1806027923552989185, NULL, 'CGRK1255734763491164160', 50.00, 100.00, 50.00, NULL, '2024-06-27 04:38:57', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_sub` VALUES (1255744533111504896, 1255645635676209152, 1255744533090533376, 1806027923552989185, NULL, 'CGRK1255734763491164160', 100.00, 50.00, 50.00, NULL, '2024-06-27 04:40:27', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_sub` VALUES (1255744590833516544, 1255645635676209152, 1255744590812545024, 1806027923552989185, NULL, 'CGRK1255734763491164160', 50.00, 100.00, 50.00, NULL, '2024-06-27 04:40:41', NULL, 1255645635676209152, NULL, 1);
INSERT INTO `financial_sub` VALUES (1255744747771789312, 1255645635676209152, 1255744747746623488, 1806027923552989185, NULL, 'CGRK1255734763491164160', 50.00, 70.00, 20.00, NULL, '2024-06-27 04:41:18', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `financial_sub` VALUES (1268668615566032896, 0, 1268668615511506944, 1810341847370792962, 1818988962502340609, NULL, NULL, NULL, 23.00, NULL, '2024-08-01 20:36:09', NULL, 0, NULL, 0);
INSERT INTO `financial_sub` VALUES (1268669225577218048, 0, 1268669225543663616, 1810341847370792962, 1818988962502340609, NULL, NULL, NULL, 222.00, NULL, '2024-08-01 20:38:34', NULL, 0, NULL, 0);
INSERT INTO `financial_sub` VALUES (1268722727489896448, 0, 1268722727443759104, 1810341847370792962, NULL, NULL, NULL, NULL, 11.00, '1111', NULL, NULL, NULL, NULL, 1);
INSERT INTO `financial_sub` VALUES (1268722790345736192, 0, 1268722790333153280, 1810341847370792962, NULL, NULL, NULL, NULL, 33.00, '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `financial_sub` VALUES (1268723825458020352, 0, 1268723825365745664, 1810341847370792962, NULL, NULL, NULL, NULL, 222.00, '222', '2024-08-02 00:15:32', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for income_expense
-- ----------------------------
DROP TABLE IF EXISTS `income_expense`;
CREATE TABLE `income_expense`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '启用',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收支项目' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of income_expense
-- ----------------------------
INSERT INTO `income_expense` VALUES (1818988962502340609, 0, '阿萨德', '收入', NULL, 0, NULL, '2024-08-01 20:35:38', NULL, 0, NULL, 0);
INSERT INTO `income_expense` VALUES (1818988996962742274, 0, '万森', '支出', NULL, 0, NULL, '2024-08-01 20:35:47', NULL, 0, NULL, 0);
INSERT INTO `income_expense` VALUES (1819102214980861953, 1255645635676209152, 'USDT', '收入', NULL, 0, NULL, '2024-08-02 04:05:40', '2024-08-02 04:08:38', 1255645635676209152, 1255645635676209152, 0);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `member_number` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员卡号',
  `member_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会员名称',
  `phone_number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `advance_payment` decimal(12, 3) NULL DEFAULT NULL COMMENT '预付款',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态（0-启用，1-停用）默认启用',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1812752128290643970, 1255645635676209152, 'Viper3', 'Nico', '', '12313@11.com', 5200.000, 0, '', 0, '2024-07-15 15:32:41', '2024-08-02 04:10:12', 1255645635676209152, 1255645635676209152, 0);
INSERT INTO `member` VALUES (1815963845791395842, 0, 'MU517161561', '每日优鲜', '', '', 44.000, 0, '', 0, '2024-07-24 12:14:54', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for operator
-- ----------------------------
DROP TABLE IF EXISTS `operator`;
CREATE TABLE `operator`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id（预留字段后续考虑加到用户表关联角色）',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态（0-启用, 1-停用）',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '经手人表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of operator
-- ----------------------------
INSERT INTO `operator` VALUES (1819100885877227522, 1255645635676209152, NULL, '阿萨德', '财务员', 0, NULL, NULL, '2024-08-02 04:00:23', NULL, 1255645635676209152, NULL, 0);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_category_id` bigint NULL DEFAULT NULL COMMENT '产品类型id',
  `product_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `product_manufacturer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '制造商',
  `product_model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '型号',
  `product_standard` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `product_color` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `product_unit_id` bigint NULL DEFAULT NULL COMMENT '计量单位Id',
  `product_unit` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单位',
  `product_expiry_num` int NULL DEFAULT NULL COMMENT '保质期天数',
  `product_weight` decimal(12, 3) NULL DEFAULT NULL COMMENT '基础重量(kg)',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '启用 0-禁用  1-启用',
  `other_field_one` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '自定义1',
  `other_field_two` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '自定义2',
  `other_field_three` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '自定义3',
  `enable_serial_number` tinyint(1) NULL DEFAULT 0 COMMENT '是否开启序列号，0否，1是',
  `enable_batch_number` tinyint(1) NULL DEFAULT 0 COMMENT '是否开启批号，0否，1是',
  `warehouse_shelves` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓位货架',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK675951272AB6672C`(`product_category_id` ASC) USING BTREE,
  INDEX `UnitId`(`product_unit_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1274350361921978368, 0, NULL, 'Piston', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '活塞 ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361926172673, 0, NULL, 'Piston jex-66', NULL, NULL, 'JEX－66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '活塞　 JEX－66', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361930366978, 0, NULL, 'Throttle anvil jex-66', NULL, NULL, 'JEX-66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '针垫 JEX-66', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361934561282, 0, NULL, 'Safty band jex-66', NULL, NULL, 'JEX-66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '锁紧圈 JEX-66', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361938755585, 0, NULL, 'Front washer jex-66', NULL, NULL, 'JEX-66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '前垫圈 JEX-66', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361942949889, 0, NULL, 'Rear waherjex-66', NULL, NULL, 'JEX-66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '后垫圈 JEX-66', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361947144193, 0, NULL, 'Retaining pin', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '定位销 ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361951338497, 0, NULL, 'Cylinder jex-66', NULL, NULL, 'JEX-66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '枪管　 JEX-66', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361955532800, 0, NULL, 'Stop ring jex-66', NULL, NULL, 'JEX-66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '前罗母　 JEX-66', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361984892928, 0, NULL, 'Springjex-24', NULL, NULL, 'JEX-24', NULL, NULL, 'pc', 0, 0.000, NULL, 0, 'JEX-24弹簧 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361989087232, 0, NULL, 'Piston jex-24', NULL, NULL, 'JEX-24', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '活塞　 JEX-24', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361989087235, 0, NULL, 'Throttle anvil jex-24', NULL, NULL, 'JEX-24', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '针垫　 JEX-24', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361993281538, 0, NULL, 'Lock ring jex-24', NULL, NULL, 'JEX-24', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '前罗母　 JEX-24', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361997475841, 0, NULL, 'Rear washer jex-24', NULL, NULL, 'JEX-24', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '后胶垫圈　 JEX-24', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350361997475844, 0, NULL, 'Front washerjex-24', NULL, NULL, 'JEX-24', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '前垫圈 JEX-24', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362001670146, 0, NULL, 'Cylinder jex-24', NULL, NULL, 'JEX-24', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '枪管　 JEX-24', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362026835969, 0, NULL, 'Spring-jex-66', NULL, NULL, 'JEX-66', NULL, NULL, 'pc', 0, 0.000, NULL, 0, 'JEX-66弹簧 ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362031030272, 0, NULL, 'Table-water', NULL, NULL, '600ml', NULL, NULL, 'btl', 0, 0.000, NULL, 0, '矿泉水 600ml', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362031030275, 0, NULL, 'Net for table tennis', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '乒乓球网 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362035224577, 0, NULL, 'Baseball cap', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '棒球帽 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362035224580, 0, NULL, 'Scales', NULL, NULL, '0-100kg', NULL, NULL, 'set', 0, 0.000, NULL, 0, '体重称 0-100kg', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362039418881, 0, NULL, 'Bowl', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '皮碗(吸耳球) ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362043613184, 0, NULL, 'Eye ball', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '吸耳球 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362043613187, 0, NULL, 'Card plastic', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '扑克 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362047807488, 0, NULL, 'Portfolio', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '公文包 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362047807491, 0, NULL, 'Chess & checker game', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '象棋 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362052001793, 0, NULL, 'Lighter cigarette one way use', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '打火机 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362052001796, 0, NULL, 'Sunglass', NULL, NULL, 'plastic', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '太阳镜 plastic', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362110722048, 0, NULL, 'Barber hair scissor set', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, '理发工具 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362110722051, 0, NULL, 'Marine tv antennas', NULL, NULL, 'AC110V / 220V', NULL, NULL, 'set', 0, 0.000, NULL, 0, '船用电视天线 AC110V / 220V', 'B1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362114916353, 0, NULL, 'Tv set', NULL, NULL, '21\" colour', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电视 21\" colour', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362114916356, 0, NULL, 'Tv set', NULL, NULL, '20\" colour', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电视 20\" colour', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362119110656, 0, NULL, 'Dvd', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, 'DVD ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362119110659, 0, NULL, 'Player multi-ststem vtr & dvd player', NULL, NULL, '220v', NULL, NULL, 'set', 0, 0.000, NULL, 0, '组合音箱 220v', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362119110662, 0, NULL, 'Vcd', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, 'VCD ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362123304962, 0, NULL, 'Player multi-ststem ', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, '音响 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362123304965, 0, NULL, 'Game', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, '游戏机 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362127499265, 0, NULL, 'Cassette tapes', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '硬盘 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362127499268, 0, NULL, 'Cd bag', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, 'CD包 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362131693568, 0, NULL, 'Christmas decorations xmas tree with stand plastic', NULL, NULL, '1.5m', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圣诞树 1.5m', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362131693571, 0, NULL, 'Christmas trees interior decoration set for xmas', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, '圣诞树 饰品', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362135887872, 0, NULL, 'O ring ks-9', NULL, NULL, '36.5*1.8', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '胶圈（JEX24) 36.5*1.8', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362135887875, 0, NULL, 'O ring w-4', NULL, NULL, '10mm*1mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '密封圈（JEX-66) 10mm*1mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362152665090, 0, NULL, 'White bed sheets', NULL, NULL, 'white 1500*2300mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单  white 1500*2300mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362156859393, 0, NULL, 'White bed sheets', NULL, NULL, 'white 1800*2300mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单  white 1800*2300mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362156859396, 0, NULL, 'White bed sheets', NULL, NULL, 'white 1828*2600mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单  white 1828*2600mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362161053697, 0, NULL, 'White bed sheets', NULL, NULL, 'white  2030*2600mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单  white  2030*2600mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362161053700, 0, NULL, 'White bed sheets', NULL, NULL, 'white  2286*2400mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单  white  2286*2400mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362161053703, 0, NULL, 'Blue bed sheets', NULL, NULL, 'blue 1500*2３00mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单  blue 1500*2400mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362194608130, 0, NULL, 'Blue bed sheets', NULL, NULL, 'blue 1800*2300mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单 blue 1800*2300mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362198802433, 0, NULL, 'Blue bed sheets', NULL, NULL, 'blue  2030*2600mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '床单  blue 2030*2600mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362198802436, 0, NULL, 'Mattress foam rubber', NULL, NULL, '900*2000*150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '床垫 900*2000*150mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362198802439, 0, NULL, 'Mattress foam rubber', NULL, NULL, '1350*2000*150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '床垫 1350*2000*150mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362202996738, 0, NULL, 'Quilt covers', NULL, NULL, 'single 1550*2200mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '被套 single 1550*2200mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362202996741, 0, NULL, 'Quilt covers', NULL, NULL, 'double 2000*2300mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '被套　 double 2000*2300mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362207191040, 0, NULL, 'Pillows ', NULL, NULL, '600*400MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '枕头 600*400MM', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362207191043, 0, NULL, 'White pillow cases', NULL, NULL, 'white 700*500*200mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '枕套  white 700*500*200mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362207191046, 0, NULL, 'Blue pillow cases', NULL, NULL, 'blue 700*500*200mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '枕套  blue 700*500*200mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362211385346, 0, NULL, '枕巾', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '枕巾', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362219773952, 0, NULL, 'Camel acrylic blankets', NULL, NULL, 'camel 1500*2000mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '毛毯  camel 1500*2000mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362219773955, 0, NULL, 'Blue acrylic blankets', NULL, NULL, 'blue 1500*2000mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '毛毯  blue 1500*2000mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362219773958, 0, NULL, 'Camel acrylic blankets', NULL, NULL, 'camel 1800 x 2300mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '毛毯  camel 1800 x 2300mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362223968258, 0, NULL, 'Blue acrylic blankets', NULL, NULL, 'blue 1800 x 2300mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '毛毯  blue 1800 x 2300mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362223968261, 0, NULL, 'Quilts', NULL, NULL, '1500*2000mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '太空棉被 1500*2000mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362228162560, 0, NULL, 'Cook & steward coats', NULL, NULL, 'White Closed collar  Size  M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '厨师制服-上衣单排扣 White Closed collar  Size  M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362228162563, 0, NULL, 'Cook & steward coats', NULL, NULL, 'White Closed collar  Size  L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '厨师制服-上衣单排扣 White Closed collar  Size  L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362228162566, 0, NULL, 'Cook & steward coats', NULL, NULL, 'White Closed collar  Size  LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '厨师制服-上衣单排扣 White Closed collar  Size  LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362232356866, 0, NULL, 'Cook & steward coats', NULL, NULL, 'White Double Breasted  Size  M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '厨师制服-上衣双排扣 White Double Breasted  Size  M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362232356869, 0, NULL, 'Cook & steward coats', NULL, NULL, 'White Double Breasted  Size  L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '厨师制服-上衣双排扣 White Double Breasted  Size  L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362236551168, 0, NULL, 'Cook & steward coats', NULL, NULL, 'White Double Breasted  Size  LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '厨师制服-上衣双排扣 White Double Breasted  Size  LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362236551171, 0, NULL, 'Black trousers for cook', NULL, NULL, 'black  M', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '厨师裤 black  M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362236551174, 0, NULL, 'Black trousers for cook', NULL, NULL, 'black L', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '厨师裤 black L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362240745474, 0, NULL, 'Black trousers for cook', NULL, NULL, 'black  large-size LL', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '厨师裤 black  large-size LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362240745477, 0, NULL, 'Shirts long sleeves', NULL, NULL, 'LL ', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '长袖衬衣 LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362240745480, 0, NULL, 'Shirts long sleeves', NULL, NULL, '3L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '长袖衬衣 3L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362244939778, 0, NULL, 'Cook\'s caps', NULL, NULL, 'Skull Type  Paper', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师帽-船型　纸制 Skull Type  Paper', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362244939781, 0, NULL, 'Cook\'s caps', NULL, NULL, 'Crown Type  Paper', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师帽-中型　纸制 Crown Type  Paper', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362249134080, 0, NULL, 'Cook\'s caps', NULL, NULL, 'Skull Type  Cotton', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师帽-船型　布制 Skull Type  Cotton', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362249134083, 0, NULL, 'Cook\'s caps', NULL, NULL, 'Crown Type  Cotton', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师帽-中型　布制 Crown Type  Cotton', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362249134086, 0, NULL, 'Reglan sleeves', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '套袖 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362253328386, 0, NULL, 'Cooks aprons', NULL, NULL, 'White Cotton, Waist Type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师围裙-腰式-棉布  白色 White Cotton, Waist Type', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362253328389, 0, NULL, 'Cooks aprons', NULL, NULL, 'White Cotton, Bib Type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师围裙-长式-棉布  白色 White Cotton, Bib Type', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362257522690, 0, NULL, 'Cooks aprons', NULL, NULL, 'Color Vinyl, Waist Type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师围裙-腰式-塑料  彩色 Color Vinyl, Waist Type', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362261716992, 0, NULL, 'Cooks aprons', NULL, NULL, 'Color Vinyl, Bib Type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '厨师围裙-长式-塑料  彩色 Color Vinyl, Bib Type', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362261716995, 0, NULL, 'Cook\'s aprons,non-water', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '防水围裙 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362261716998, 0, NULL, 'Bow ties', NULL, NULL, 'Black', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蝴蝶领结-黑 Black', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362265911298, 0, NULL, 'Laundry pinches (clothes pins)', NULL, NULL, 'Plastic   10\'s/pkt', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '洗衣夹-塑料 Plastic   10\'s/pkt', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362265911301, 0, NULL, 'Laundry pinches (clothes pins)', NULL, NULL, 'Plastic   20\'s/pkt', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '洗衣夹-塑料 Plastic   20\'s/pkt', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362270105602, 0, NULL, '凉衣绳，200mtrs', NULL, NULL, '200mtrs with hook', NULL, NULL, 'coil', 0, 0.000, NULL, 0, '凉衣绳，200mtrs', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362270105605, 0, NULL, 'Coat hangers', NULL, NULL, 'Wood made', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '挂衣架-木制 Wood made', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362274299905, 0, NULL, 'Coat hangers', NULL, NULL, 'Plastic made', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '挂衣架-塑料 Plastic made', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362274299908, 0, NULL, 'Plastic storage baskets', NULL, NULL, 'Plastic 620*440*340mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '周转箱-塑料 Plastic 620*440*340mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362278494209, 0, NULL, 'White bath towels', NULL, NULL, 'White   700-800*1300-1400mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '浴巾-白色 White   700-800*1300-1400mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362278494212, 0, NULL, 'Blue bath towels', NULL, NULL, 'blue    700-800*1300-1400mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '浴巾-蓝色 blue    700-800*1300-1400mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362282688512, 0, NULL, 'White face towels', NULL, NULL, 'White 370-500*900-1000mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '毛巾-白色 White 370-500*900-1000mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362282688515, 0, NULL, 'Blue face towels', NULL, NULL, 'blue   370-500*900-1000mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '毛巾-蓝色 blue   370-500*900-1000mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362282688518, 0, NULL, 'Sweat towels', NULL, NULL, 'White 300*7600mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '手巾（小毛巾） White 300*7600mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362286882817, 0, NULL, 'Pantry cloths', NULL, NULL, '400*690mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '餐巾布 400*690mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362286882820, 0, NULL, 'Glass cloths', NULL, NULL, '410*700mm', NULL, NULL, 'sht', 0, 0.000, NULL, 0, '擦拭布 410*700mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362286882823, 0, NULL, 'Duster cloths', NULL, NULL, NULL, NULL, NULL, 'sht', 0, 0.000, NULL, 0, '抹布 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362291077122, 0, NULL, 'Mutton cloths (stockinet)', NULL, NULL, 'White', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '毛巾布 White', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362291077125, 0, NULL, 'Table cloths（cotton）', NULL, NULL, '290*120cm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '餐桌布（棉） 290*120cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362295271424, 0, NULL, 'Table cloths（cotton）', NULL, NULL, '1000 X 2000MM,cotton,white', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '餐桌布, 棉 白,   1000 X 2000MM  ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362295271427, 0, NULL, 'Plastic table cloths', NULL, NULL, '1070mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '塑料桌布 1070mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362295271430, 0, NULL, 'Plastic table cloths', NULL, NULL, 'W 1370mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '塑料桌布 W 1370mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362299465729, 0, NULL, 'Transparent plastic sheeting', NULL, NULL, '0.1*1370mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '透明塑料布 0.1*1370mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362299465732, 0, NULL, 'Transparent plastic sheeting', NULL, NULL, '0.2*915mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '塑料塑料布 0.2*915mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362299465735, 0, NULL, 'Tramsparent plastic sheeting ', NULL, NULL, '0.2*1370mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '透明塑料布 0.2*1370mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362303660033, 0, NULL, 'Tramsparent plastic sheeting ', NULL, NULL, '0.3*1370mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '透明塑料布 0.3*1370mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362303660036, 0, NULL, 'Transparent plastic sheetings', NULL, NULL, '1mm*915mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '透明塑料布 1mm*915mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362303660039, 0, NULL, 'Transparent plastic sheetings', NULL, NULL, '2.0mm*915mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '透明塑料布 2.0mm*915mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362307854337, 0, NULL, 'Non-skid sheeting', NULL, NULL, 'W 800mm', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '防滑橡皮布 W 800mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362307854340, 0, NULL, 'Slideway', NULL, NULL, 'W 1m', NULL, NULL, 'set', 0, 0.000, NULL, 0, '浴帘速滑道 W 1m', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362307854343, 0, NULL, 'Shower curtains', NULL, NULL, 'Vinyl  color', NULL, NULL, 'set', 0, 0.000, NULL, 0, '浴帘 Vinyl  color', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362312048642, 0, NULL, 'Plastic brooms', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料扫把 ', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362312048645, 0, NULL, 'Dinner knife', NULL, NULL, '233mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '正餐刀 233mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362312048648, 0, NULL, 'Dinner fork', NULL, NULL, '210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '正餐叉 210mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362316242946, 0, NULL, 'Table spoon', NULL, NULL, '203mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '正餐勺 203mm', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362316242949, 0, NULL, 'Dessert knife', NULL, NULL, '213mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '西餐刀 213mm', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362316242952, 0, NULL, '小餐叉, 雕纹把 118mm', NULL, NULL, '118mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '小餐叉, 雕纹把 118mm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362320437250, 0, NULL, 'Tea spoon', NULL, NULL, '133mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '茶匙 133mm', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362320437253, 0, NULL, 'Coffee spoon', NULL, NULL, '119mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '咖啡勺 119mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362324631554, 0, NULL, 'Ice Cream Spoon', NULL, NULL, '100mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢冰欺凌勺 100mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362324631557, 0, NULL, 'Sauce ladle', NULL, NULL, '160mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '沙司勺 160mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362328825857, 0, NULL, 'Serving Fork', NULL, NULL, ' 220mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金叉子 220mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362328825860, 0, NULL, 'Serving Spoon', NULL, NULL, '208mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金勺 208mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362328825863, 0, NULL, 'Salad Server Fork', NULL, NULL, '203mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金叉子 203mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362333020161, 0, NULL, 'Soup ladle', NULL, NULL, '296mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金手勺 296mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362333020164, 0, NULL, 'Sauce Ladle', NULL, NULL, '162mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金调味勺 162mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362333020167, 0, NULL, 'Dinner Knife', NULL, NULL, '246mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金餐刀 246mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362337214466, 0, NULL, 'Dinner Fork', NULL, NULL, '205mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金餐叉 205mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362337214469, 0, NULL, 'Table Spoon', NULL, NULL, '199mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金饭匙 199mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362337214472, 0, NULL, 'Soup Spoon', NULL, NULL, '175mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金汤匙 175mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362341408770, 0, NULL, 'Butter Knife', NULL, NULL, '144mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金黄油刀 144mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362341408773, 0, NULL, 'Tea Spoon', NULL, NULL, '132mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '镍合金茶匙 132mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362341408776, 0, NULL, 'Knife plastic', NULL, NULL, '175mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '一次性塑料刀 175mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362345603074, 0, NULL, 'Fork plastic', NULL, NULL, '144mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '一次性塑料叉 144mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362345603077, 0, NULL, 'Spoon plastic', NULL, NULL, '147mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '一次性塑料勺 147mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362349797376, 0, NULL, 'Oval baker', NULL, NULL, 'Size  270*165mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '椭圆面包盘 Size  270*165mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362349797379, 0, NULL, 'Oval platter', NULL, NULL, 'Size  207*151mm 8\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '鱼池 Size  207*151mm 8\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362349797382, 0, NULL, 'Oval platter', NULL, NULL, 'Size  235*172mm 9\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '鱼池 Size  235*172mm 9\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362353991680, 0, NULL, 'Oval platter', NULL, NULL, 'Size  258*190mm 10\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '鱼池 Size  258*190mm 10\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362353991683, 0, NULL, 'Oval platter', NULL, NULL, 'Size  293*210mm 12\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '鱼池 Size  293*210mm 12\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362353991686, 0, NULL, 'Oval platter', NULL, NULL, 'Size  311*230mm 14\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '鱼池 Size  311*230mm 14\"', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362358185985, 0, NULL, 'Egg cup with stem ', NULL, NULL, '48mm  2.5\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蛋杯 48mm  2.5\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362358185988, 0, NULL, 'Dinner plate', NULL, NULL, '233mm  8\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平盘 233mm  8\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362358185991, 0, NULL, 'Dinner plate', NULL, NULL, '262mm  8\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平盘 262mm  8\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362362380289, 0, NULL, 'Rim soup plate', NULL, NULL, '205mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '深盘 205mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362362380292, 0, NULL, 'Rim soup plate', NULL, NULL, '233mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '深盘 233mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362362380295, 0, NULL, 'Dessert plate', NULL, NULL, '191mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平盘 191mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362366574594, 0, NULL, 'Dessert plate', NULL, NULL, '210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平盘 210mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362366574597, 0, NULL, 'Dinner plate china marine quality', NULL, NULL, '245MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '盘子，　245MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362366574600, 0, NULL, 'Couple dinner plate', NULL, NULL, '195mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '汤盘　 195mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362370768897, 0, NULL, 'Cereal bowel', NULL, NULL, '152mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '汤盘　 195mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362370768900, 0, NULL, 'Fruit plate', NULL, NULL, '142mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '瓷水果盘 142mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362370768903, 0, NULL, 'Tea cup only', NULL, NULL, '210cc 81mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '茶杯 210cc 81mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362374963200, 0, NULL, 'Saucer for tea cup', NULL, NULL, '150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '茶杯碟 150mm', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362374963203, 0, NULL, 'Coffee cup only', NULL, NULL, '70mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '咖啡杯 70mm', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362374963206, 0, NULL, 'Saucer for coffee cup', NULL, NULL, '150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '咖啡杯碟 150mm', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362374963209, 0, NULL, 'Coffee cup after dinner', NULL, NULL, '61mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '餐后咖啡杯 61mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362379157505, 0, NULL, 'Saucer for AD', NULL, NULL, '121mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '餐后咖啡杯碟', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362379157508, 0, NULL, 'Mug ', NULL, NULL, '78mm 290cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '筒状咖啡杯 78mm 290cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362379157511, 0, NULL, 'Coffee pot with cups completed', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, '整套咖啡具 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362379157514, 0, NULL, 'Meat plate', NULL, NULL, '210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '树脂平盘 210mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362383351810, 0, NULL, 'PLATE MEAT MELAMINE 230MM', NULL, NULL, '230MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平盘-抗碎 230MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362383351813, 0, NULL, 'Cake plate', NULL, NULL, '160mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '树脂平盘 160mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362383351816, 0, NULL, 'PLATE OVAL MELAMINE 307X221MM', NULL, NULL, '307X221MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '椭圆形的盘子- 抗碎307X221MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362387546113, 0, NULL, 'Mug cup', NULL, NULL, '260cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '筒状咖啡杯-塑料 260cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362387546116, 0, NULL, 'COFFEE CUP MELAMINE 170CC', NULL, NULL, '170CC', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '咖啡杯 170CC', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362387546119, 0, NULL, 'Creamer', NULL, NULL, '190cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '奶壶 190cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362391740417, 0, NULL, 'Sugar bowl', NULL, NULL, '300cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '糖罐 300cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362391740420, 0, NULL, 'Tea or coffee pot', NULL, NULL, '450cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '茶/咖啡壶 450cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362391740423, 0, NULL, 'Soup  tureen ', NULL, NULL, '312mm*185mm 1500cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '双耳汤盅 312mm*185mm 1500cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362395934721, 0, NULL, 'Stoneware gratin dishes', NULL, NULL, '210*100MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '陶瓷法式盘 210*100MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362395934724, 0, NULL, 'Ovenware gratin dishes', NULL, NULL, '146*41MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '微波炉专用碗　 146*41MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362395934727, 0, NULL, 'Rotring variant pens', NULL, NULL, '290*212*48MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '微波炉烤盘 290*212*48MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362400129026, 0, NULL, 'Paper plates', NULL, NULL, 'round 171mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '纸盘 round 171mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362400129029, 0, NULL, 'Paper plates', NULL, NULL, 'round 222mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '纸盘 round 222mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362400129032, 0, NULL, 'Paper bowls', NULL, NULL, '5\"', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '纸碗 5\"', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362404323329, 0, NULL, '直玻璃杯', NULL, NULL, '295cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '直玻璃杯', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362404323332, 0, NULL, 'Whisky teflon round', NULL, NULL, '40CC', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '威士忌酒杯 40CC', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362404323335, 0, NULL, 'Hard-strong glass tumblers', NULL, NULL, 'Straight 290cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢化玻璃杯- 直形 Straight 290cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362408517634, 0, NULL, 'Hard-strong glass tumblers', NULL, NULL, 'Barrel 150cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢化玻璃杯- 圆筒形 Barrel 150cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362408517637, 0, NULL, 'Hard-strong glass tumblers', NULL, NULL, 'Barrel 240cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢化玻璃杯- 圆筒形 Barrel 240cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362412711936, 0, NULL, 'Beer mugs', NULL, NULL, '265CC', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃啤酒杯 265CC', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362412711939, 0, NULL, 'Beer mugs', NULL, NULL, '500cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '啤酒杯 500cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362412711942, 0, NULL, 'Disposable cups', NULL, NULL, 'Without handle', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '一次性杯-纸 Without handle', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362416906241, 0, NULL, 'Ice creamand sherbet glass dishes', NULL, NULL, '100*90MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '冰激淋玻璃杯 100*90MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362416906244, 0, NULL, 'Ice cream scoops', NULL, NULL, 'Round φ55mm*50cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '冰激凌匙　 Round φ55mm*50cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362416906247, 0, NULL, 'Ice cream scoops', NULL, NULL, 'Round φ65mm*80cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '冰激凌匙 Round φ65mm*80cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362416906250, 0, NULL, 'Round glass plate', NULL, NULL, '300mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圆形玻璃盘 300mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362421100546, 0, NULL, 'Glass bowls', NULL, NULL, 'φ120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃碗 φ120mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362421100549, 0, NULL, 'Tempered salad bowls', NULL, NULL, 'φ200mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃制沙拉碗 φ200mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362421100552, 0, NULL, 'Tempered salad bowls', NULL, NULL, 'φ230mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃制沙拉碗 φ230mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362425294849, 0, NULL, 'Glass salad bowls', NULL, NULL, 'φ129mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃制沙拉碗 φ129mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362425294852, 0, NULL, 'Glass salad bowls', NULL, NULL, 'φ180mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃制沙拉碗 φ180mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362425294855, 0, NULL, 'Glass salad bowls', NULL, NULL, 'φ210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃沙拉碗 φ210mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362429489152, 0, NULL, 'Plastic salad bowls', NULL, NULL, '250MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料沙拉碗 250MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362429489155, 0, NULL, 'Wood spoons', NULL, NULL, 'L250mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '木汤勺 L250mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362429489158, 0, NULL, 'Serving tongs  salad stainless steel ', NULL, NULL, '240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢沙拉夹 240mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362433683457, 0, NULL, 'Serving tongs  bread&cake stainless steel ', NULL, NULL, '215mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢面包夹 215mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362433683460, 0, NULL, 'Serving tongs multipurpose stainless steel', NULL, NULL, '240mm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '不锈钢食品夹 240mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362433683463, 0, NULL, '不锈钢盘   200X150MM  ', NULL, NULL, '200X150MM ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盘   200X150MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362437877761, 0, NULL, '不锈钢盘   230X165MM  ', NULL, NULL, ' 230X165MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盘   230X165MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362437877764, 0, NULL, '不锈钢盘   255X180MM  ', NULL, NULL, '255X180MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盘   255X180MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362437877767, 0, NULL, 'Stainless steel dishes ', NULL, NULL, '460mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆盘 460mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362442072065, 0, NULL, 'Stainless steel gravy boats', NULL, NULL, '300mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢浓汁杯 300mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362442072068, 0, NULL, 'Stainless steel soup tureens', NULL, NULL, '2.4lL', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平底不锈钢汤锅 2.4lL', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362442072071, 0, NULL, 'Stainless steel soup tureens', NULL, NULL, '4 ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平底不锈钢汤锅 4 ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362446266369, 0, NULL, 'stainless steel 400mm', NULL, NULL, '400mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '椭圆不锈钢盛汤盅400mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362446266372, 0, NULL, 'Stainless steel soup tureens', NULL, NULL, '2.8ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅 2.8ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362446266375, 0, NULL, 'vegetable 地刷w/cover oval', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '椭圆不锈钢蔬菜盘 ', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362450460674, 0, NULL, 'Stainless steel vegetable dishes', NULL, NULL, '290*230mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢蔬菜盘 290*230mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362450460677, 0, NULL, 'Plastic  bread baskets', NULL, NULL, '295*200*98MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料面包篮 295*200*98MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362450460680, 0, NULL, 'Bamboo bread baskets', NULL, NULL, '290*180*90mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '竹面包篮 290*180*90mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362454654978, 0, NULL, 'Table bells', NULL, NULL, 'D 75mm*H90mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '西餐桌铃 D 75mm*H90mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362454654981, 0, NULL, 'Hand bells', NULL, NULL, '125mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '西餐手摇铃 125mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362454654984, 0, NULL, 'Glass salt&pepper shakers', NULL, NULL, 'plastic top', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃调味瓶 plastic top', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362458849281, 0, NULL, 'Glass salt&pepper shakers', NULL, NULL, 'stainless steel top', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃调味瓶 stainless steel top', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362458849284, 0, NULL, 'Wood salt shakers&pepper mills', NULL, NULL, 'D48*120MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '木制胡椒调味瓶 D48*120MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362458849287, 0, NULL, 'Salt and pepper caster sets', NULL, NULL, '2s\'/set', NULL, NULL, 'set', 0, 0.000, NULL, 0, '调味瓶组 2s\'/set', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362463043584, 0, NULL, 'Sauce caster sets', NULL, NULL, '4s\'/set', NULL, NULL, 'set', 0, 0.000, NULL, 0, '塑料 油及醋，牙签调料组 4个/套', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362463043587, 0, NULL, '4pcs cruet stand sets', NULL, NULL, '4s\'/set', NULL, NULL, 'set', 0, 0.000, NULL, 0, '调味瓶组 4s\'/set', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362463043590, 0, NULL, 'Glass sauce bottles', NULL, NULL, 'D60*H90MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料盖的玻璃浆瓶D60*H90MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362463043593, 0, NULL, 'Glass sauce bottles', NULL, NULL, 'D58*H9118MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料盖的玻璃浆瓶D58*H9118MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362467237889, 0, NULL, 'syrup pitcher glass 200cc', NULL, NULL, 'syrup pitcher glass 200cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢糖浆罐', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362467237892, 0, NULL, 'Plastic butter cases', NULL, NULL, '80X150X40MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑胶牛酪盒 带盖,     80X150X40MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362467237895, 0, NULL, 'Stainless steel butter trays', NULL, NULL, '185*110*55', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢牛酪碟 185*110*55', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362471432192, 0, NULL, 'Stainless steel butter dishes', NULL, NULL, 'D95*H70MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢牛酪盒 D95*H70MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362471432195, 0, NULL, 'Tooth picks', NULL, NULL, 'Round  100\'s/pkt', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '牙签-圆形 Round  100\'s/pkt', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362471432198, 0, NULL, 'Tooth picks', NULL, NULL, 'Flat   750\'s/pkt', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '牙签-扁形 Flat   750\'s/pkt', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362471432201, 0, NULL, 'Plastic tooth pick holders', NULL, NULL, 'D 59mm*H73mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料牙签盒 D 59mm*H73mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362475626498, 0, NULL, 'Glass Tooth Pick Holders', NULL, NULL, 'D 44mmX H 52mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃牙签盒', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362475626501, 0, NULL, 'Glass sugar bowls', NULL, NULL, '80*135MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃糖罐 80*135MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362479820800, 0, NULL, 'Sugar pot stainless steel', NULL, NULL, '280CC', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢糖罐 280CC', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362479820803, 0, NULL, 'sugar pot stainless steel', NULL, NULL, '900cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢糖罐 900cc', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362479820806, 0, NULL, 'creamer/milk pitcher', NULL, NULL, '350cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢乳酪壶 350cc', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362479820809, 0, NULL, 'Stainless steel coffee pots', NULL, NULL, 'dia103mm H140  900cc ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '咖啡壶--不锈钢 dia103mm H140  900cc ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362484015106, 0, NULL, 'tea pot stainless steel', NULL, NULL, '118MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢茶壶D118MM', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362484015109, 0, NULL, 'Stainless steel tea pots', NULL, NULL, '500CC dia 100mm H 115mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢茶壶 500CC dia 100mm H 115mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362488209409, 0, NULL, 'SUGAR POT STAINLESS STEEL, 280CC', NULL, NULL, '1 cup', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '土耳其式咖啡壶  1杯,57x63mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362488209412, 0, NULL, '土耳其式咖啡壶  3杯, 75x83mm', NULL, NULL, '3 cups', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '土耳其式咖啡壶  3杯, 75x83mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362492403713, 0, NULL, 'Filter paper for \"mocha express\"', NULL, NULL, 'NO3 56  100\'s', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '咖啡滤纸 NO3 56  100\'s', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362492403716, 0, NULL, 'Plastic water jugs', NULL, NULL, '2Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料量杯 2Ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362492403719, 0, NULL, 'Glass water jugs (carafes)', NULL, NULL, '1.9Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃水壶 1.9Ltr', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362496598017, 0, NULL, 'Glass water jugs with ice lip', NULL, NULL, '2Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '带盖的玻璃水壶 2Ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362496598020, 0, NULL, 'Stainless steel water jugs', NULL, NULL, '1.8L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢水壶 1.8L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362496598023, 0, NULL, 'Stainless steel water jugs', NULL, NULL, '2.0L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢暖瓶 2.0L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362500792320, 0, NULL, 'Spare container for thermos bottles', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '暖水瓶胆 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362500792323, 0, NULL, 'Thermos bottles,steel', NULL, NULL, '1.9 Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '暖水瓶  铁壳　 1.9 Ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362500792326, 0, NULL, 'Air pressure type thermos bottles', NULL, NULL, '2.2L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '气压式暖水瓶 2.2L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362500792329, 0, NULL, 'Thermos bottles', NULL, NULL, 'Plastic', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑壳暖水瓶 Plastic', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362504986625, 0, NULL, 'Thermos bottles', NULL, NULL, 'Stainless Steel', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢暖水瓶 Stainless Steel', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362504986628, 0, NULL, 'Electric boiling water tank', NULL, NULL, '110V 30L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电热开水炉 110V 30L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362504986631, 0, NULL, 'Stainless steel cocktail shakers', NULL, NULL, '200cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '调酒器-不锈钢　 200cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362509180928, 0, NULL, 'Stainless steel cocktail shakers', NULL, NULL, '330cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '调酒器-不锈钢　 330cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362509180931, 0, NULL, 'Muddlers', NULL, NULL, 'plastic  200mm L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '调酒棒 plastic  200mm L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362509180934, 0, NULL, 'Muddlers', NULL, NULL, 'Stainless Steel 200mm L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '调酒棒 Stainless Steel 200mm L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362509180937, 0, NULL, 'Ice tongs', NULL, NULL, 'L150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '冰块夹 L150mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362513375234, 0, NULL, 'Stainless steel champagne coolers', NULL, NULL, '190MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢香槟酒冷却桶 190MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362513375237, 0, NULL, 'Ice cube trays', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '制冰块盘 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362513375240, 0, NULL, 'Iron cube packs', NULL, NULL, '325*160MM　　10s\'/pkt', NULL, NULL, 'bag', 0, 0.000, NULL, 0, '制冰袋 325*160MM　　10s\'/pkt', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362517569538, 0, NULL, 'Plastic service trays', NULL, NULL, '350*270MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料托盘 350*270MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362517569541, 0, NULL, 'Plastic service trays', NULL, NULL, '410*300MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料托盘 410*300MM', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362517569544, 0, NULL, 'Plastic service trays', NULL, NULL, '475*370MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料托盘 475*370MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362521763841, 0, NULL, 'Plastic service trays', NULL, NULL, '405mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料餐盘, 圆, 防滑,  405mm Diam', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362521763844, 0, NULL, 'Wood service trays', NULL, NULL, '510*308', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '方型木托盘 510*308', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362521763847, 0, NULL, 'Stainless steel service trays', NULL, NULL, '350mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆盘 350mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362525958145, 0, NULL, 'Stainless steel serxvice trays', NULL, NULL, 'Cafeteria 320*435*21MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢餐盘 Cafeteria 320*435*21MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362525958148, 0, NULL, 'Stainless steel serxvice trays', NULL, NULL, '455*340', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢餐盘－带两个耳朵 455*340', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362525958151, 0, NULL, 'Stainless steel serxvice trays', NULL, NULL, '400X300X30', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢餐盘-分格 400X300X30', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362530152449, 0, NULL, 'Alumite service trays', NULL, NULL, '460*305*25', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制托盘-两边带把 460*305*25', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362530152452, 0, NULL, 'Food service trolleys', NULL, NULL, 'With Guard Bar', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '餐车-不锈钢 With Guard Bar', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362534346752, 0, NULL, 'Napkin papers', NULL, NULL, '250*250mm', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '餐巾纸 250*250mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362534346755, 0, NULL, 'Stainless steel paper napkin holders', NULL, NULL, '122*140', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢餐巾纸架 122*140', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362534346758, 0, NULL, 'Stainless steel paper napkin holders', NULL, NULL, '115*95*140mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢餐巾盒', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362534346761, 0, NULL, 'Paper table napkins', NULL, NULL, '330*330  2400‘s', NULL, NULL, 'C/T', 0, 0.000, NULL, 0, '餐巾纸 330*330 2400‘s', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362538541058, 0, NULL, 'Paper table napkins', NULL, NULL, '2000\'s', NULL, NULL, 'C/T', 0, 0.000, NULL, 0, '餐巾纸  2000\'s', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362538541061, 0, NULL, 'Steel frying pans', NULL, NULL, '280mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢制煎锅 280mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362538541064, 0, NULL, 'FRYING PAN STEEL', NULL, NULL, 'DIAM 450MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢制煎锅450MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362542735361, 0, NULL, 'Stainless steel frying pans', NULL, NULL, 'φ160mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢煎锅 φ160mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362542735364, 0, NULL, 'Stainless steel frying pans', NULL, NULL, 'φ260mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢煎锅 φ260mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362542735367, 0, NULL, 'Aluminium frying pans', NULL, NULL, 'φ240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制煎锅 φ240mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362546929664, 0, NULL, 'Aluminium frying pans', NULL, NULL, 'φ270mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制煎锅 φ270mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362546929667, 0, NULL, 'Aluminium frying pans', NULL, NULL, 'φ300mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制煎锅 φ300mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362546929670, 0, NULL, 'Teflon coated frying pans', NULL, NULL, '260MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不粘煎锅 260MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362551123968, 0, NULL, 'Teflon coated frying pans', NULL, NULL, '280mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不粘煎锅 280mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362551123971, 0, NULL, 'Teflon coated frying pans', NULL, NULL, '320mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不粘煎锅 320mm', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362551123974, 0, NULL, 'Cast aluminium steak pans', NULL, NULL, '260*240MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝牛排锅 260*240MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362551123977, 0, NULL, '铝制牛排锅,  320X240MM  ', NULL, NULL, '320X240MM ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制牛排锅,  320X240MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362555318274, 0, NULL, 'French fryers', NULL, NULL, '300*180MM', NULL, NULL, 'set', 0, 0.000, NULL, 0, '法式煎锅-带滤网 300*180MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362555318277, 0, NULL, 'Standard aluminium saute pans', NULL, NULL, '270*90  5.0L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准型铝制平底锅 270*90  5.0L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362559512576, 0, NULL, 'Standard aluminium saute pans', NULL, NULL, ' 6.0LTR 300*100MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准型铝制平底锅  6.0LTR 300*100MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362559512579, 0, NULL, 'Heavy duty aluminium saute pans', NULL, NULL, '150*60MM　1L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用型铝制平底锅 150*60MM　1L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362559512582, 0, NULL, 'Heavy duty aluminium saute pans', NULL, NULL, '210*70MM 2.4L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用型铝制长柄平底锅　 210*70MM 2.4L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362559512585, 0, NULL, 'Heavy duty aluminium saute pans', NULL, NULL, '5Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝制浅锅,  5.0LTR  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362563706881, 0, NULL, 'Heavy duty aluminium saute pans', NULL, NULL, '9Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝制浅锅,  9LTR', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362563706884, 0, NULL, 'Standard aluminium sauce pans', NULL, NULL, '2.7LTR  180*100mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准铝质煮汤锅 2.7LTR  180*10mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362563706887, 0, NULL, 'Standard aluminium sauce pans', NULL, NULL, '240*130 6.0L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准铝质煮汤锅 240*130 6.0L', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362567901184, 0, NULL, 'Heavy duty aluminium saucepans', NULL, NULL, '150mm  1.5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝汤锅 150mm  1.5L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362567901187, 0, NULL, 'Heavy duty aluminium saucepans', NULL, NULL, '180mm  2.8L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝汤锅 180mm  2.8L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362567901190, 0, NULL, 'Heavy duty aluminium saucepans', NULL, NULL, '220mm  4.2LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝汤锅 220mm  4.2LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362567901193, 0, NULL, 'Heavy duty aluminium saucepans', NULL, NULL, '240mm  6.2LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝汤锅 240mm  6.2LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362572095489, 0, NULL, 'Heavy duty aluminium saucepans', NULL, NULL, '270mm  8.6LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝汤锅 270mm  8.6LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362572095492, 0, NULL, 'Heavy duty aluminium saucepans', NULL, NULL, '330*210mm 18L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝汤锅 330*210mm 18L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362572095495, 0, NULL, 'Standard aluminium braisers', NULL, NULL, '210*70MM  2.4L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准铝制浅锅 210*70MM  2.4L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362576289792, 0, NULL, 'Standard aluminium braisers', NULL, NULL, '390*130MM 15 L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准铝制浅锅  390*130MM 15 L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362576289795, 0, NULL, 'Standard aluminium braisers', NULL, NULL, '420*140MM 19L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准铝制浅锅  420*140MM 19L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362576289798, 0, NULL, 'Standard aluminium braisers', NULL, NULL, '540*180MM 41L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '标准铝制浅锅 540*180MM 41L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362576289801, 0, NULL, '耐用铝制浅锅,  5.0LTR  ', NULL, NULL, '5.0LTR  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用铝制浅锅,  5.0LTR  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362580484098, 0, NULL, 'Heavy duty aluminium braisers', NULL, NULL, '330*110MM    9.4LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用型铝制浅锅 330*110MM    9.4LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362580484101, 0, NULL, 'Heavy duty aluminium braisers', NULL, NULL, '390*130MM   15LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用型铝制浅锅 390*130MM   15LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362580484104, 0, NULL, 'Heavy duty aluminium braisers', NULL, NULL, '600*210MM　　56LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用型铝制浅锅 600*210MM　　56LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362584678401, 0, NULL, 'Standard aluminium sauce pots', NULL, NULL, '180*130mm,3.0ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝汤桶 180*130mm,3.0ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362584678404, 0, NULL, 'Standard aluminium sauce pots', NULL, NULL, '210*150mm,5.0ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝汤桶 210*150mm,5.0ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362584678407, 0, NULL, 'Standard aluminium sauce pots', NULL, NULL, '270*180mm 10.0L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝汤桶 270*180mm 10.0L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362584678410, 0, NULL, 'Standard aluminium sauce pots', NULL, NULL, '360*240mm  24L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝汤桶 360*240mm  24L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362588872706, 0, NULL, 'Heavy duty aluminium sauce pots', NULL, NULL, '300*200mm  15L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用型铝汤锅 300*200mm  15L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362588872709, 0, NULL, 'Heavy duty aluminium sauce pots', NULL, NULL, '510*350MM  70L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '耐用型铝汤锅  510*350MM  70L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362588872712, 0, NULL, 'Stainless steel sauce pots', NULL, NULL, '270*180mm 10L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅　 270*180mm 10L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362593067008, 0, NULL, '不锈钢汤锅, 13LTR', NULL, NULL, '13LTR  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅, 13LTR', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362593067011, 0, NULL, 'Stainless steel sauce pots', NULL, NULL, '390*250mm 30L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅　 390*250mm 30L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362593067014, 0, NULL, 'Stainless steel sauce pots', NULL, NULL, '420*280MM　38L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅　 420*280MM　38L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362593067017, 0, NULL, '不锈钢汤料锅, 20LTR', NULL, NULL, '20LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤料锅, 20LTR', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362597261314, 0, NULL, 'Stainless steel stock pots', NULL, NULL, '390*390MM　45L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅 390*390MM　45L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362597261317, 0, NULL, 'Stainless steel stock pots', NULL, NULL, '420*420MM　57L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅 420*420MM　57L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362597261320, 0, NULL, 'Stainless steel stock pots', NULL, NULL, '450*450MM　70L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤锅 450*450MM　70L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362601455618, 0, NULL, 'Fish broilers', NULL, NULL, '360*300mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烤鱼网夹 360*300mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362601455621, 0, NULL, 'Steeless steel cooking ware ', NULL, NULL, '4.0L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '双耳不锈钢锅 4.0L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362601455624, 0, NULL, 'Egg poachers', NULL, NULL, '4cups', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '煮蛋器（4只） 4cups', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362605649921, 0, NULL, 'Egg poachers', NULL, NULL, '220V 6cups', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '六孔蒸蛋器 220V 6cups', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362605649924, 0, NULL, 'Alumite kettles', NULL, NULL, 'φ240mm  5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水壶-铝 φ240mm  5L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362605649927, 0, NULL, 'Alumite kettles', NULL, NULL, 'φ260mm 6L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水壶-铝 φ260mm 6L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362609844224, 0, NULL, 'Alumite kettles', NULL, NULL, 'φ280mm 8L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水壶-铝 φ280mm 8L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362609844227, 0, NULL, '水壶-不锈钢 φ150mm 1.5L', NULL, NULL, 'φ150mm 1.5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水壶-不锈钢 φ150mm 1.5L', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362609844230, 0, NULL, 'Stainless steel kettles', NULL, NULL, 'φ180mm 3L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水壶-不锈钢 φ180mm 3L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362614038528, 0, NULL, 'Stainless steel kettles', NULL, NULL, 'φ220mm 5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水壶-不锈钢 φ220mm 5L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362614038531, 0, NULL, 'Aluminium roast pans', NULL, NULL, '400*280*65MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制烤盘 400*280*65MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362614038534, 0, NULL, 'Aluminium roast pans', NULL, NULL, '640*425*120MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制烤盘 640*425*120MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362618232832, 0, NULL, 'Steel roast pans', NULL, NULL, '350*500*50MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢制烤盘 350*500*50MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362618232835, 0, NULL, '钢制烤盘, 395X545X40MM', NULL, NULL, '395X545X40MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢制烤盘, 395X545X40MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362618232838, 0, NULL, 'Aluminium rectangular pans', NULL, NULL, '370*305*45', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制方形盘 370*305*45', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362618232841, 0, NULL, 'Stainless steel rectangular pans', NULL, NULL, '320*260*50', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢托盘 320*260*50', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362622427138, 0, NULL, 'Stainless steel rectangular pans', NULL, NULL, '350*270*63MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢托盘 350*270*63MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362622427141, 0, NULL, 'Stainless steel rectangular pans', NULL, NULL, '400*290*67MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢方盘 400*290*67MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362622427144, 0, NULL, 'Stainless steel rectangular pans', NULL, NULL, '480*335*80MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢方盘 480*335*80MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362626621441, 0, NULL, 'Stainless steel rectangular pans', NULL, NULL, '570*367*90MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢长方形盘 570*367*90MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362626621444, 0, NULL, 'Aluminium sheet pans', NULL, NULL, '455X330X25MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制薄片烤盘 455X330X25MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362626621447, 0, NULL, 'Aluminium mixing bowls', NULL, NULL, '180MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制盆, 180MM DIA  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362626621450, 0, NULL, 'Aluminium mixing bowls', NULL, NULL, '330MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝盆 330MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362630815746, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, 'φ150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 φ150mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362630815749, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, 'φ180mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 φ180mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362630815752, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, 'φ210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 φ210mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362635010048, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, ' 240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆  240mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362635010051, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, '270MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 270MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362635010054, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, '300mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 300mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362635010057, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, '330MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 330MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362639204354, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, '360MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 360MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362639204357, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, '390MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 390MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362639204360, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, '450mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 450mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362643398656, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, 'φ500mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 φ500mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362643398659, 0, NULL, 'Stainless steel mixing bowls', NULL, NULL, 'φ600mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢盆 φ600mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362643398662, 0, NULL, 'Colanders,stainless steel', NULL, NULL, '270mm s.s', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢制滤锅, 270MM DIAM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362643398665, 0, NULL, 'Colanders,stainless steel', NULL, NULL, '450mm s.s', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢制滤锅, 450MM DIAM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362647592960, 0, NULL, 'Colanders,aluminium', NULL, NULL, '450mm Aluminium', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝制滤锅 450MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362647592963, 0, NULL, 'Stainless steel conical strainers', NULL, NULL, '210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '锥形漏网 210MM', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362647592966, 0, NULL, 'Stainless steel bowl strainers', NULL, NULL, '153mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆型滤网 153mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362647592969, 0, NULL, 'Stainless steel bowl strainers', NULL, NULL, '203mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆型滤网 203mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362651787265, 0, NULL, 'Stainless steel bowl strainers', NULL, NULL, '254mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆形滤网 254mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362651787268, 0, NULL, 'Oil strainers', NULL, NULL, '240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '滤油网 240MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362651787271, 0, NULL, 'cleaver carbon steel blade', NULL, NULL, '250mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切肉刀250mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362651787274, 0, NULL, 'Tea strainers', NULL, NULL, 'φ62mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '滤茶网 φ62mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362655981570, 0, NULL, 'Tomato & vegetable strainers', NULL, NULL, '240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '滤蔬菜网, 240MM DIAM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362655981573, 0, NULL, 'Funnels', NULL, NULL, 'Plastic  φ120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '漏斗-塑料 Plastic  φ120mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362655981576, 0, NULL, 'Funnels', NULL, NULL, 'Plastic  φ150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '漏斗-塑料 Plastic  φ150mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362660175874, 0, NULL, 'Funnels', NULL, NULL, 'Plastic  φ180mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '漏斗-塑料 Plastic  φ180mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362660175877, 0, NULL, 'Funnels', NULL, NULL, 'Plastic  φ210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '漏斗-塑料 Plastic  φ210mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362664370176, 0, NULL, '不锈钢漏斗, DIAM 120MM  ', NULL, NULL, '120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢漏斗, DIAM 120MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362664370179, 0, NULL, 'Wooden sieves', NULL, NULL, '240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '粉筛-木制 240mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362664370182, 0, NULL, 'Wooden sieves', NULL, NULL, '300mm,6.5mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '粉筛-木制 300mm,6.5mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362668564480, 0, NULL, 'Wooden sieves', NULL, NULL, '360mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '粉筛-木制 360mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362668564483, 0, NULL, 'Stainless steel sieves', NULL, NULL, '310mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢筛 310MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362668564486, 0, NULL, 'French kinves', NULL, NULL, '200MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '法式厨房用刀 200MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362672758784, 0, NULL, 'French kinves', NULL, NULL, '270MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '法式厨房刀 270MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362672758787, 0, NULL, 'French kinves', NULL, NULL, '300MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '法式刀 300MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362672758790, 0, NULL, '刻牛骨刀,, 不锈钢,  150MM', NULL, NULL, ' 150MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '刻牛骨刀,, 不锈钢,  150MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362676953088, 0, NULL, '刻鸡骨刀, , 不锈钢,  150MM', NULL, NULL, ' 150MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '刻鸡骨刀, , 不锈钢,  150MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362676953091, 0, NULL, 'Cleavers', NULL, NULL, '180mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切肉刀 180mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362676953094, 0, NULL, 'Cleavers', NULL, NULL, '250MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切肉刀 250MM', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362681147392, 0, NULL, 'Cleavers', NULL, NULL, '250MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '砍刀 250MM', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362681147395, 0, NULL, 'Buchers knives', NULL, NULL, '210MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '屠宰刀 210MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362681147398, 0, NULL, 'Buchers knives', NULL, NULL, '270mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '屠宰刀 270mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362681147401, 0, NULL, 'Buchers knives', NULL, NULL, '300MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '屠宰刀 300MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362685341697, 0, NULL, 'Frozen meat kinves', NULL, NULL, '230MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切冷冻品刀 230MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362685341700, 0, NULL, 'Ham slicers', NULL, NULL, '300mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切火腿刀 300mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362685341703, 0, NULL, 'English slicers (salmon slicers)', NULL, NULL, '360MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '英式切片刀 360MM', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362689536000, 0, NULL, '切面包刀, 塑料把,  203MM', NULL, NULL, ' 203MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切面包刀, 塑料把,  203MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362689536003, 0, NULL, 'Bread knives', NULL, NULL, '300MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切面包刀 300MM', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362689536006, 0, NULL, 'Hotel slicers', NULL, NULL, '270mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切片刀 270mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362693730305, 0, NULL, 'Fruit knives', NULL, NULL, '95mmL', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢水果刀 95mmL', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362693730308, 0, NULL, 'small knife carbon steel superior', NULL, NULL, '120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '碳钢小刀 120mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362693730311, 0, NULL, 'Decorating knives', NULL, NULL, '85mm L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '去芯刀 85mm L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362697924609, 0, NULL, 'Cheese knives', NULL, NULL, '180mmL ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '奶酪刀 180mmL ', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362697924612, 0, NULL, '剥皮刀, 70MM', NULL, NULL, '70MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '剥皮刀, 70MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362702118912, 0, NULL, 'Potato peelers', NULL, NULL, 'Frame 145mm L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '刮皮刀 Frame 145mm L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362702118915, 0, NULL, 'Potato peelers', NULL, NULL, 'Plastic Grip Type 145mm L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '刮皮器 Plastic Grip Type 145mm L', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362702118918, 0, NULL, 'Apple corers', NULL, NULL, '180mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '挖心刀 180mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362731479041, 0, NULL, 'Fish shears', NULL, NULL, '200mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '鱼剪刀 200mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362731479044, 0, NULL, 'Fish scalers', NULL, NULL, '190mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '剥鳞器 190mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362731479047, 0, NULL, 'Poultry secateurs stainless steel', NULL, NULL, '250mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '剪鸡剪刀-不锈钢 250mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362735673346, 0, NULL, 'Butcher\'s saws', NULL, NULL, '450mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '骨锯 450mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362735673349, 0, NULL, 'Butcher\'s steels', NULL, NULL, '290mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '磨刀棒 290mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362735673352, 0, NULL, 'Rough sharpening stones', NULL, NULL, '75*50*205', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '粗磨油石 75*50*205', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362739867650, 0, NULL, 'Carboundum finish sharpening stones', NULL, NULL, '66*34*207', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '油石-合成 66*34*207', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362739867653, 0, NULL, 'SHARPENING STONE NATURAL, FINISH ', NULL, NULL, '70X60X220mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '油石 70X60X220mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362739867656, 0, NULL, 'Cutting boards (chopping boards),wooden', NULL, NULL, '600*300*60', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '木制切菜板 600*300*60', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362744061954, 0, NULL, 'Cutting boards (chopping boards),plastic', NULL, NULL, '440X250X15MM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料砧板, 白色, 440X250X15MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362744061957, 0, NULL, 'Plastic cutting  boards', NULL, NULL, '500*270*20', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料菜板 500*270*20', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362748256256, 0, NULL, 'Plastic cutting  boards', NULL, NULL, '720*330*20MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料菜板 720*330*20MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362748256259, 0, NULL, 'Plastic cutting  boards', NULL, NULL, '840*390*30MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料菜板 840*390*30MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362748256262, 0, NULL, 'Cook\'s forks', NULL, NULL, '420MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢叉（带木柄） 420MM', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362748256265, 0, NULL, '烹饪叉, 不锈钢,  410MM ', NULL, NULL, '410mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烹饪叉, 不锈钢,  410MM  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362752450562, 0, NULL, 'Meat forks', NULL, NULL, '300MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢肉叉 300MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362752450565, 0, NULL, 'Skewers', NULL, NULL, 'Stainless Steel 150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '肉串钎 Stainless Steel 150mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362752450568, 0, NULL, '橡胶铲锅刀', NULL, NULL, '100mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '橡胶铲锅刀', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362756644866, 0, NULL, '扁铲刀 150MM', NULL, NULL, '150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '扁铲刀 150MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362756644869, 0, NULL, 'Spatula tuners', NULL, NULL, '280MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '扁铲刀 280MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362756644872, 0, NULL, 'Egg turners', NULL, NULL, '75*90mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '煎蛋铲 75*90mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362760839170, 0, NULL, 'Cake turners', NULL, NULL, '70*165mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '煎饼铲 70*165mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362760839173, 0, NULL, 'Turners for fish or steak', NULL, NULL, '150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢扁铲刀150mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362760839176, 0, NULL, 'Turners for fish or steak', NULL, NULL, '76*200MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '多用途煎铲 76*200MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362765033474, 0, NULL, 'Stainless steel soup laders', NULL, NULL, '180cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤勺 180cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362765033477, 0, NULL, 'Stainless steel soup laders', NULL, NULL, '1000cc', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤勺－垂直把 1000cc', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362765033480, 0, NULL, 'Stainless steel spoons', NULL, NULL, 'basting ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '长柄不锈钢汤勺 basting ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362769227777, 0, NULL, 'Stainless steel spoons', NULL, NULL, 'Perforated ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢漏勺 Perforated ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362769227780, 0, NULL, 'Stainless steel spoons', NULL, NULL, 'cooking ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢炒菜勺 cooking ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362769227783, 0, NULL, 'Stainless steel spoons', NULL, NULL, 'cooking ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢炒菜铲', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362769227786, 0, NULL, 'Stainless steel scoops', NULL, NULL, 'W105*OL275', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢面铲 W105*OL275', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362773422082, 0, NULL, 'Stainless steel scoops', NULL, NULL, 'D135*L210MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢面铲 D135*L210MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362773422085, 0, NULL, 'Wire whips', NULL, NULL, '240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢打蛋器 240mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362773422088, 0, NULL, 'Wire whips', NULL, NULL, '270MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢打蛋器 270MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362777616385, 0, NULL, 'Wire whips', NULL, NULL, '360MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢打蛋器 360MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362777616388, 0, NULL, 'Wire whips', NULL, NULL, '390MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢打蛋器 390MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362777616391, 0, NULL, 'Wire whips', NULL, NULL, '540MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢打蛋器 540MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362781810688, 0, NULL, 'BOTTLE OPENER STAINLESS STEEL', NULL, NULL, '100MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢开瓶器 100MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362781810691, 0, NULL, 'Bottle openers', NULL, NULL, '137mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '啤酒开瓶器-不锈钢 137mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362781810694, 0, NULL, 'Cork screws', NULL, NULL, 'Regular Type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '红酒开瓶器-拔栓 Regular Type', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362786004993, 0, NULL, 'Cork screws', NULL, NULL, 'German Type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '红酒开瓶器-酒钻 German Type', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362786004996, 0, NULL, 'Cork screws', NULL, NULL, 'Geared Lever Type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '红酒开瓶器-双翼酒钻 Geared Lever Type', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362786004999, 0, NULL, 'Hand can openers', NULL, NULL, '105mmL', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '开罐刀 105mmL', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362790199297, 0, NULL, 'Hand  can openers', NULL, NULL, '3 way 130mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '开罐头刀  简易型 3 way 130mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362790199300, 0, NULL, 'Hand  can openers', NULL, NULL, '185MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '开罐器 185MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362790199303, 0, NULL, 'Hand  can openers', NULL, NULL, '185mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '开罐器-手动 185mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362794393602, 0, NULL, 'Edlund table can openers', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, '开罐器-台式 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362794393605, 0, NULL, 'Spare knife for edlund no2 can opener', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '开罐器刀片 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362794393608, 0, NULL, 'Spare gear for edlund no2 can opener', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '开罐器齿轮 ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362798587906, 0, NULL, 'Bread pans with slide cover', NULL, NULL, '400*100*100', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '面包模具-带盖 400*100*100', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362798587909, 0, NULL, 'Bread pans without cover', NULL, NULL, '400*100*100', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '面包模具-不带盖 400*100*100', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362798587912, 0, NULL, 'Tin layer cake pans', NULL, NULL, '180*60MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蛋糕模具盘 180*60MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362802782209, 0, NULL, 'Tin layer cake pans', NULL, NULL, '240*75MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蛋糕模具盘 240*75MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362802782212, 0, NULL, 'Muffin pans', NULL, NULL, '6cup', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '松饼模具 6cup', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362802782215, 0, NULL, 'Muffin pans', NULL, NULL, '12Cup', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '松饼模具 12Cup', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362806976513, 0, NULL, 'Angle cake pans', NULL, NULL, '210MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圆形蛋糕模具 210MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362806976516, 0, NULL, 'Jelly moulds', NULL, NULL, '134*70MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '果冻模 134*70MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362806976519, 0, NULL, 'Jelly moulds', NULL, NULL, '145*82MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '果冻模 145*82MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362811170816, 0, NULL, 'Pastry bags', NULL, NULL, '350mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '挤花袋 350mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362811170819, 0, NULL, 'Pastry bags', NULL, NULL, '457MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '挤花袋    457MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362811170822, 0, NULL, 'Pastry tube sets', NULL, NULL, '6s/set', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '挤花袋备用嘴 6s/set', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362811170825, 0, NULL, 'Dough scrapers', NULL, NULL, '150*110mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蛋糕刮板 150*110mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362815365122, 0, NULL, 'Pastry jaggers', NULL, NULL, '180MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烤饼用花模 180MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362815365125, 0, NULL, 'Pastry cutters,12\'sers', NULL, NULL, '12s/set', NULL, NULL, 'set', 0, 0.000, NULL, 0, '做饼模型 12s/set', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362815365128, 0, NULL, 'Hard wood rooling pins', NULL, NULL, 'French type L450*D30', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '擀面杖 French type L450*D30', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362819559425, 0, NULL, 'Hard wood rooling pins', NULL, NULL, 'Roller type L240*D41MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '擀面棍 Roller type L240*D41MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362819559428, 0, NULL, 'Hard wood rooling pins', NULL, NULL, 'Roller type L380*D85MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '擀面棍 Roller type L380*D85MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362819559431, 0, NULL, 'Lemon  squeezers', NULL, NULL, 'Stainless Steel 100mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '柠檬榨汁器 Stainless Steel 100mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362819559434, 0, NULL, 'Grapefruit& orange squeezers', NULL, NULL, '185MM (2-12)', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃榨汁器 185MM (2-12)', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362823753730, 0, NULL, 'Potato mashers', NULL, NULL, '100sq.*270mmL', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '捣薯器 100sq.*270mmL', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362823753733, 0, NULL, '挖球器 15*18mm', NULL, NULL, '15*18mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '挖球器 15*18mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362823753736, 0, NULL, 'Garlic presses', NULL, NULL, '150mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '榨蒜器 150mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362827948034, 0, NULL, 'Nut crackers', NULL, NULL, '158mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '榨橄榄器-核桃夹 158mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362827948037, 0, NULL, 'Cheese boards', NULL, NULL, '480*240*30MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '木制切乳板（木制菜板） 480*240*30MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362827948040, 0, NULL, 'Cheese cutters', NULL, NULL, '120MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢切乳酪刀 120MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362832142338, 0, NULL, 'Cheese slicers', NULL, NULL, '220mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢切乳酪片器 220mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362832142341, 0, NULL, 'Cheese graters', NULL, NULL, 'Stainless steel　60*90*204', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '乳酪磨碎器 Stainless steel　60*90*204', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362832142344, 0, NULL, 'Cheese graters', NULL, NULL, 'Stainless steel　　80*100*240', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '乳酪磨碎器 Stainless steel　　80*100*240', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362836336642, 0, NULL, 'Egg slicers', NULL, NULL, '140*85', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切蛋器-切片式 140*85', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362836336645, 0, NULL, 'Egg wedger', NULL, NULL, '210*65', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切蛋器 210*65', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362836336648, 0, NULL, 'Steak tenderizers', NULL, NULL, 'Flat Trowel Type 200mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '嫩肉器-扁铲式 Flat Trowel Type 200mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362840530946, 0, NULL, 'Steak tenderizers', NULL, NULL, 'Notched Trowel Type 200mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '嫩肉器-锯齿式 Notched Trowel Type 200mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362840530949, 0, NULL, 'Steak tenderizers', NULL, NULL, 'Square Hammer Type 247mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '嫩肉器-方锤式 Square Hammer Type 247mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362840530952, 0, NULL, 'Food containers with sealed cover', NULL, NULL, '182*115*51mm 0.8L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料饭盒 182*115*51mm 0.8L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362844725250, 0, NULL, '塑料饭盒 198*134*67mm 1.5L', NULL, NULL, ' 198*134*67mm 1.5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料饭盒 198*134*67mm 1.5L', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362844725253, 0, NULL, 'Food containers with sealed cover', NULL, NULL, '270*200*85mm 3.6L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料食品盒 270*200*85mm 3.6L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362844725256, 0, NULL, 'Food containers with sealed cover', NULL, NULL, '310*235*105mm 5.9L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料食品盒310*235*105mm  5.9L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362848919553, 0, NULL, 'Food containers with sealed cover', NULL, NULL, 'φ155*130mm 1.6L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料食品盒 φ155*130mm1.6L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362848919556, 0, NULL, 'Food containers with sealed cover', NULL, NULL, 'φ185*145mm  2.8L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料食品盒 φ185*145mm 2.8L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362848919559, 0, NULL, 'Plastic food storage boxes large size with cover', NULL, NULL, '685*425*100mm 21.4L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '食品箱-塑料 685*425*100mm 21.4L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362853113856, 0, NULL, 'Plastic food storage bags', NULL, NULL, '5Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料食品袋 5Ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362853113859, 0, NULL, 'Plastic food storage bags', NULL, NULL, '10Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料食品袋 10Ltr', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362853113862, 0, NULL, 'Plastic space saver food storage containers', NULL, NULL, '380*275*H 545  33L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '方形塑料容器 380*275*H 545  33L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362853113865, 0, NULL, '塑料面包箱 带盖（保鲜盒顶）', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料面包箱 带盖（保鲜盒顶）', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362857308162, 0, NULL, 'Dish drainer racks', NULL, NULL, '420*340*125', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '餐具滴水架 420*340*125', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362857308165, 0, NULL, 'Compartment steel wire glass racks', NULL, NULL, '475*315*155', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '玻璃餐具架 475*315*155', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362857308168, 0, NULL, 'Steel wire tableware racks', NULL, NULL, '475*475*130', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '餐具滴水架 475*475*130', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362861502465, 0, NULL, 'Japnese cooking utensils small pickle bowl', NULL, NULL, 'dia 113MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '日式小瓷碗 dia 113MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362861502468, 0, NULL, 'Soup bowl regular plastic,Japanese style', NULL, NULL, '129*55mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '日式塑料汤碗 直径129*高55MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362861502471, 0, NULL, 'Japanese style  plastic tableware noodle bowl', NULL, NULL, '155*68mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '面条碗 日式(树脂） 155*68mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362865696769, 0, NULL, 'Japanese style  plastic plate round plate', NULL, NULL, '190MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '日式树脂盘 190MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362865696772, 0, NULL, 'Japanese style  plastic tableware soy sauce plate', NULL, NULL, '92*68mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '日式调味盘（树脂） 92*68mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362865696775, 0, NULL, 'Aluminum boiling pans', NULL, NULL, '300MM  5.4L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝煮锅 300MM  5.4L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362869891074, 0, NULL, 'Aluminum boiling pans', NULL, NULL, '420MM 16L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝煮锅  420MM 16L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362869891077, 0, NULL, 'Aluminum boiling pans', NULL, NULL, '480*210 24LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝煮锅 480*210 24LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362869891080, 0, NULL, 'Aluminum boiling pans with handles', NULL, NULL, '200*75MM 2.0L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '带单把的铝煮锅  200*75MM 2.0L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362874085378, 0, NULL, 'Grilling nets', NULL, NULL, '450*325MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烤网夹带把 450*325MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362874085381, 0, NULL, 'Wire skimmers', NULL, NULL, '200MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢漏勺 200MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362874085384, 0, NULL, 'Stainless steel noodle boilers', NULL, NULL, 'D 130* H170mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢煮面杓 D 130* H170mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362878279681, 0, NULL, 'Net scoop ladles', NULL, NULL, 'φ210mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '捞面杓 φ210mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362878279684, 0, NULL, 'Net scoop ladles', NULL, NULL, 'φ240mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '捞面杓 φ240mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362878279687, 0, NULL, 'Rice baskets', NULL, NULL, 'small D480*H150', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '竹淘米筐 small D480*H150', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362882473985, 0, NULL, 'Rice baskets', NULL, NULL, 'big D600*230', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '竹淘米筐 big D600*230', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362882473988, 0, NULL, 'Plastic round baskets', NULL, NULL, '290MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圆塑料筐 290MM ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362882473991, 0, NULL, 'Plastic round baskets', NULL, NULL, '420mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圆塑料筐 420MM', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362886668289, 0, NULL, 'Plastic round baskets', NULL, NULL, '470MM DIAM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圆塑料筐 470MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362886668292, 0, NULL, 'Plastic round baskets', NULL, NULL, '350*190mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圆塑料筐 350*190mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362886668295, 0, NULL, 'Plastic round baskets', NULL, NULL, '550*330MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '圆塑料筐 550*330MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362890862593, 0, NULL, 'Stainless steel round baskets', NULL, NULL, '250MM*109MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆筐 250MM*109MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362890862596, 0, NULL, 'Stainless steel round baskets', NULL, NULL, '275MM*118MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆筐 275MM*118MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362890862599, 0, NULL, 'Stainless steel round baskets', NULL, NULL, '500*220mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢圆筐 500*220mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362895056896, 0, NULL, 'Fish chopping knives', NULL, NULL, '180MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '切鱼刀 180MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362895056899, 0, NULL, 'Disposable bamboo skewers', NULL, NULL, '250MM  110根/包', NULL, NULL, 'bag', 0, 0.000, NULL, 0, '烤肉竹钎 250MM  110根/包', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362895056902, 0, NULL, 'Shallow ladles', NULL, NULL, 'solid bowl bowl size 113mm 330mm L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '木柄勺子 solid bowl bowl size 113mm 330mm L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362899251200, 0, NULL, 'Wood paddles', NULL, NULL, '110*480mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '木勺 110*480mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362899251203, 0, NULL, 'Wood paddles', NULL, NULL, '120*750mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '木勺 120*750mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362899251206, 0, NULL, 'Plastic paddles', NULL, NULL, '240MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料米饭铲 长240MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362899251209, 0, NULL, 'Water dippers', NULL, NULL, 'Plastic  1.2L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水勺-塑料 Plastic  1.2L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362903445506, 0, NULL, 'Water dippers', NULL, NULL, '0.9L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水勺-铝 0.9L', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362903445509, 0, NULL, 'Water dippers', NULL, NULL, '1.4L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水勺-铝 1.4L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362907639809, 0, NULL, 'Water dippers', NULL, NULL, '1L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水勺-不锈钢 1L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362907639812, 0, NULL, 'Water dippers', NULL, NULL, '1.4L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '水勺-不锈钢 1.4L', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362907639815, 0, NULL, 'Vegetable peelers', NULL, NULL, '175mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '刮皮刀  175mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362911834114, 0, NULL, 'Vegrtable cutter \"benliner\"', NULL, NULL, '315*90MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '擦丝器 315*90MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362911834117, 0, NULL, 'Graters', NULL, NULL, 'Aluminium 170*260', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '擦丝器-铝 Aluminium 170*260', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362916028416, 0, NULL, 'Raddish graters', NULL, NULL, 'Copper 160*275', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '擦丝器-铜 Copper 160*275', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362916028419, 0, NULL, 'Raddish graters', NULL, NULL, 'Stainless Steel 160*270', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '擦丝器-不锈钢 Stainless Steel 160*270', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362916028422, 0, NULL, 'Sushi boards\"nuki-ita\"', NULL, NULL, '600*295*55mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '寿司板 600*295*55mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362920222721, 0, NULL, 'Bamboo sushi rollers', NULL, NULL, '240*270mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '寿司卷 240*270mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362920222724, 0, NULL, 'Bleached cotton cloth', NULL, NULL, 'W 360mm ', NULL, NULL, 'mtr', 0, 0.000, NULL, 0, '豆腐布 W 360mm ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362920222727, 0, NULL, 'Japanese style chopsticks', NULL, NULL, 'Lacquered Bamboo Round 220mml', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '日式筷子-竹-圆形 Lacquered Bamboo Round 220mml', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362924417026, 0, NULL, 'Japanese style chopsticks', NULL, NULL, 'Lacquered Bamboo Square 225mm', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '日式筷子-竹-方形 Lacquered Bamboo Square 225mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362924417029, 0, NULL, 'Japanese style chopsticks', NULL, NULL, 'Plastic Square 225mm', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '日式筷子-塑料-方形 Plastic Square 225mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362928611330, 0, NULL, 'CHOPSTICKS STAND PLASTIC, ', NULL, NULL, '100MM DIAM X 140MM HEIGHT', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料筷子筒100MM 直径 X 140MM 高', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362928611333, 0, NULL, 'Cooking chopsticks', NULL, NULL, '390mm', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '调理筷子 390mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362932805632, 0, NULL, 'Cooking chopsticks', NULL, NULL, '450mm', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '调理筷子 450mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362932805635, 0, NULL, 'CANISTER GREEN TEA TIN ', NULL, NULL, '1.8LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '茶叶筒-锡1.8LTR', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362932805638, 0, NULL, 'Washing basins', NULL, NULL, '270*115MM　5.3L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝盆 270*115MM　5.3L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362936999937, 0, NULL, 'Washing basins', NULL, NULL, '330*140MM　10.0L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝盆 330*140MM　10.0L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362936999940, 0, NULL, 'Plastic washing  basins', NULL, NULL, '130*400MM 11LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料盆 130*400MM 11LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362936999943, 0, NULL, 'Plastic washing  basins', NULL, NULL, '150*450mm 16L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料盆 150*450mm 16L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362941194242, 0, NULL, 'Plastic washing  basins', NULL, NULL, '170*500mm 24ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料盆 24ltr 170*500mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362941194245, 0, NULL, 'Plastic washing  basins', NULL, NULL, '190*570MM 37L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料盆 37L　190*570MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362945388544, 0, NULL, 'Chinese style rice bowls', NULL, NULL, 'D 115* H 53mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '米饭碗 D 117* H 55mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362945388547, 0, NULL, 'Chinese style soup bowls', NULL, NULL, 'D 183* H 60mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '汤碗 D 183* H 60mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362945388550, 0, NULL, 'Chinese style soup bowls', NULL, NULL, 'D 205* H 60mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '汤碗 D 205* H 60mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362949582848, 0, NULL, 'Chinese style soup bowls', NULL, NULL, 'D 228* H 60mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '汤碗 D 228* H 60mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362949582851, 0, NULL, 'Chinese style noodle bowls', NULL, NULL, 'D 193* H 68mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '面条碗 D 193* H 68mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362949582854, 0, NULL, 'Chinese style soup spoons', NULL, NULL, 'L 140mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '调瓷羹-瓷白 L 140mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362953777154, 0, NULL, 'Large noodle bowl', NULL, NULL, '205*60MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '面条碗 205*60MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362953777157, 0, NULL, 'SOUP BOWL CHINESE STYLE, MELAMINE ', NULL, NULL, '113MM ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '中式汤碗-抗碎 直径113MM ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362953777160, 0, NULL, 'Serving plate', NULL, NULL, '300*40mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '平盘 300*40mm', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362957971458, 0, NULL, 'Chinese style chopsticks', NULL, NULL, 'Plastic  L 260mm', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '筷子-中式-塑料 Plastic  L 260mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362957971461, 0, NULL, 'Chinese style chopsticks', NULL, NULL, 'Bamboo  L 260mm', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '筷子-中式-竹 Bamboo  L 260mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362962165761, 0, NULL, 'Chopsticks,disposable', NULL, NULL, 'Wood', NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '一次性筷子 Wood', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362962165764, 0, NULL, 'Steel chinese frying pans', NULL, NULL, '330mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '中式炒锅 330mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362962165767, 0, NULL, 'Steel chinese frying pans', NULL, NULL, '360mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '中式炒锅 360mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362966360066, 0, NULL, 'Steel chinese cooking pans', NULL, NULL, '420MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢制中式炒菜锅 420MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362966360069, 0, NULL, 'Steel chinese cooking pans', NULL, NULL, '450MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢制中式炒菜锅 450MM', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362966360072, 0, NULL, 'Steel chinese cooking pans', NULL, NULL, '600mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢制中式炒菜锅 600mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362970554370, 0, NULL, 'Chinese soup ladles', NULL, NULL, 'Solid Type Stainless Steel 120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '中式汤勺-不锈钢 Solid Type Stainless Steel 120mm', 'B2 ', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362970554373, 0, NULL, 'Chinese soup ladles', NULL, NULL, '130mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢汤勺 130mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362970554376, 0, NULL, 'Chinese soup ladles', NULL, NULL, 'Perforated Type Steel 120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '中式汤勺-铁制带孔 Perforated Type Steel 120mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362974748674, 0, NULL, '中式漏杓,不锈钢, 30MM', NULL, NULL, '130MM DIAM  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '中式漏杓,不锈钢, 30MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362974748677, 0, NULL, 'Chinese turners', NULL, NULL, '120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '炒菜铲-不锈钢 120mm', 'B1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362978942978, 0, NULL, 'turner Chinese steel blade', NULL, NULL, '130mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '中式煎匙 130mm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362978942981, 0, NULL, 'Chinese turners', NULL, NULL, '130mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢煎匙 130mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362978942984, 0, NULL, 'Chinese vegetable knives', NULL, NULL, '213mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '菜刀-中式 213mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362983137282, 0, NULL, 'Chinese cutting boards　wood', NULL, NULL, 'D390*H150', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '菜墩-木 D390*H150', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362983137285, 0, NULL, 'Chinese cutting boards  plastic', NULL, NULL, 'D400*H100', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '菜墩－木 D400*H100', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362987331584, 0, NULL, 'Chinese cutting boards　plastic', NULL, NULL, 'D450*H100', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '菜墩－木 D450*H100', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362987331587, 0, NULL, 'Chinese bamboo food steamers (body)', NULL, NULL, 'OD 390mm  H 55mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '竹蒸笼 OD 390mm  H 55mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362987331590, 0, NULL, 'Chinese bamboo food steamers (body)', NULL, NULL, 'OD 420mm  H 55mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '竹蒸笼 OD 420mm  H 55mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362991525888, 0, NULL, 'Chinese bamboo food steamers (cover)', NULL, NULL, 'OD 390mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '竹蒸笼帽 OD 390mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362991525891, 0, NULL, 'Chinese bamboo food steamers (cover)', NULL, NULL, 'OD 420mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '竹蒸笼帽 OD 420mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362991525894, 0, NULL, 'Aluminium  food steamerr', NULL, NULL, 'OD510', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝蒸笼　 OD510', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362995720192, 0, NULL, 'Aluminium  food steamer(cover)', NULL, NULL, 'OD510', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '铝蒸笼帽　　 OD510', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362995720195, 0, NULL, 'Spring balance  scales', NULL, NULL, '10KGS', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '弹簧称 10KGS', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362995720198, 0, NULL, 'Spring balance  scales', NULL, NULL, '50KGS', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '弹簧称 50KGS', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362999914496, 0, NULL, 'Measuring cups', NULL, NULL, '1L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料量杯 1L', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362999914499, 0, NULL, 'Measuring cups', NULL, NULL, '2L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料量杯 2L', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350362999914502, 0, NULL, 'Cotton meat twine', NULL, NULL, '100G　', NULL, NULL, 'roll', 0, 0.000, NULL, 0, '帆布线 100G　', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363004108801, 0, NULL, 'Galley gloves', NULL, NULL, NULL, NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '橡胶手套-厨房 ', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363004108804, 0, NULL, 'Oven mitts', NULL, NULL, NULL, NULL, NULL, 'Pr', 0, 0.000, NULL, 0, '烤箱用手套 ', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363004108807, 0, NULL, 'Hand scourers', NULL, NULL, 'Steel', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '钢丝球 Steel', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363008303105, 0, NULL, 'Sponge cleaners', NULL, NULL, '150 x 100 x 50mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '海绵块 150 x 100 x 50mm', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363008303108, 0, NULL, 'Steel wool', NULL, NULL, 'No.3     450g/pkt', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '钢丝绒　 No.3     450g/pkt', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363008303111, 0, NULL, 'Steel wool', NULL, NULL, 'No.1     450g/pkt', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '钢丝绒　 No.1     450g/pkt', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363012497409, 0, NULL, 'Steel wool', NULL, NULL, 'No.0     450g/pkt', NULL, NULL, 'pkt', 0, 0.000, NULL, 0, '钢丝绒　 No.0     450g/pkt', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363016691712, 0, NULL, 'Scotch-brite cleaners scouring pad', NULL, NULL, '230*150mm NO.96', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '百洁布 230*150mm NO.96', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363016691715, 0, NULL, 'Scotch-brite cleaners sponge ace s', NULL, NULL, 'Scrubbing Sponge S', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '百洁布-带海绵-小 Scrubbing Sponge S,3m', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363016691718, 0, NULL, 'Scotch-brite cleaners sponge ace l', NULL, NULL, 'Scrubbing Sponge L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '洗碗百洁布-大 Scrubbing Sponge L', 'B2类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363142520835, 0, NULL, 'Ash trays glass', NULL, NULL, '160mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烟缸-玻璃 160mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363142520838, 0, NULL, 'Ash trays glass', NULL, NULL, '185mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烟缸-玻璃 185mm', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363146715136, 0, NULL, 'Ash trays plastic plain', NULL, NULL, '145mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烟缸-塑料 145mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363146715139, 0, NULL, 'Ash trays stainless steel', NULL, NULL, '160mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烟缸-不锈钢 直径 160MM', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363146715142, 0, NULL, 'Ash trays stainless steel', NULL, NULL, 'divide drop 120mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烟灰缸 divide drop 120mm', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363146715145, 0, NULL, 'Rat traps', NULL, NULL, 'sling type', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '老鼠夹　 sling type', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363150909442, 0, NULL, 'Fly swatters', NULL, NULL, '550mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '苍蝇拍 550mm', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363150909445, 0, NULL, 'Electric hot plates', NULL, NULL, '110V 1200W  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '封闭电炉 110V 1200W  ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363150909448, 0, NULL, 'Electric hot plates', NULL, NULL, '220V 1200W  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '封闭电炉　 220V 1200W  ', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363155103746, 0, NULL, 'Electric kettles', NULL, NULL, '220V　 1.7L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢电水壶 220V　 1.7L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363155103749, 0, NULL, 'Electric kettles', NULL, NULL, '110V  2.1L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢电水壶 110V  2.1L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363155103752, 0, NULL, 'Electric kettles', NULL, NULL, '110V  3.5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢电水壶 110V  3.5L', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363159298050, 0, NULL, 'Electric kettles', NULL, NULL, '220V   3.5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢电水壶 220V   3.5L', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363159298053, 0, NULL, 'Electric kettles', NULL, NULL, '110V  5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢电水壶 110V  5L', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363159298056, 0, NULL, 'Electric kettles', NULL, NULL, '220V  5L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢电水壶 220V  5L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363163492353, 0, NULL, 'Bottles for hot water', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '塑料暖水瓶', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363163492356, 0, NULL, 'Electric thermo pots', NULL, NULL, '110V 2.4L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '气压式电热水瓶 110V 2.4L', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363163492359, 0, NULL, 'Electric thermo pots', NULL, NULL, '110V 3L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '气压式电热水瓶 110V 3L', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363167686657, 0, NULL, 'Electric thermo pots', NULL, NULL, '220V 3L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '气压式电热水瓶 220V 3L', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363167686660, 0, NULL, 'Electric coffee makers', NULL, NULL, '110V  12 Cups', NULL, NULL, 'set', 0, 0.000, NULL, 0, '煮咖啡机 110V  12 Cups', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363167686663, 0, NULL, 'Electric coffee makers', NULL, NULL, '220V  12 cups', NULL, NULL, 'set', 0, 0.000, NULL, 0, '咖啡壶 220V  12 cups', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363171880961, 0, NULL, 'Electric water bottle', NULL, NULL, '110V ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电水壶-电热水杯 110V ', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363171880964, 0, NULL, 'Auto-elect. toasters', NULL, NULL, '110V  2 Slice', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烤面包机 110V  2 Slice', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363171880967, 0, NULL, 'Auto-elect. toasters', NULL, NULL, '110V  4 Slice', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烤面包机 110V  4 Slice', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363176075264, 0, NULL, 'Auto-elect. toasters', NULL, NULL, '220V  2 Slice', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烤面包机 220V  2 Slice', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363176075267, 0, NULL, 'Auto-elect. toasters', NULL, NULL, '220V 4 Slice', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烤面包机 220V 4 Slice', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363176075270, 0, NULL, 'Eletric oven toasters', NULL, NULL, '110V  850w', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '微波炉 110V  850w', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363176075273, 0, NULL, 'Eletric blenders', NULL, NULL, '110V,1.4 L 1L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电动果汁机 110V,1.4 L', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363180269570, 0, NULL, '电动果汁机 220V 1.0LTR', NULL, NULL, '220V 1.0LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电动果汁机 220V 1.0LTR', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363180269573, 0, NULL, 'Eletric blenders', NULL, NULL, '220V 1.4LTR', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电动果汁机 220V 1.4LTR', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363180269576, 0, NULL, 'Stainless steel electric water bottle', NULL, NULL, '110V  7.5kg/hour(4-18)', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '不锈钢电水壶 110V  7.5kg/hour', 'C2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363184463874, 0, NULL, 'Portable universal cooking mixer', NULL, NULL, '110 20Ltr', NULL, NULL, 'set', 0, 0.000, NULL, 0, '110V搅拌机 20Ltr', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363184463877, 0, NULL, 'Portable universal cooking mixer', NULL, NULL, '220 20Ltr', NULL, NULL, 'set', 0, 0.000, NULL, 0, '220V搅拌机 20Ltr', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363188658177, 0, NULL, 'Stainless steel threaded elbows', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蔬菜切片机 ', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363188658180, 0, NULL, 'Electric table griddles', NULL, NULL, '220V', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电烤盘 220V', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363188658183, 0, NULL, 'Electric rice cookers/steamers', NULL, NULL, '110V  4 Ltr', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电饭锅 110V  4 Ltr', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363192852481, 0, NULL, '电饭锅, 1.8LTR 220V  ', NULL, NULL, '1.8LTR 220V  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电饭锅, 1.8LTR 220V  ', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363192852484, 0, NULL, 'Electric rice cookers/steamers', NULL, NULL, '220V  4 L ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电饭锅 220V  4 L ', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363192852487, 0, NULL, 'Electric rice cookers/steamers', NULL, NULL, '220V 18L ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电饭锅 220V 18L ', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363197046784, 0, NULL, 'Electric  refrigerators', NULL, NULL, '110V 200L 155*56*69', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电冰箱 110V 200L 155*56*69', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363197046787, 0, NULL, 'Electric  refrigerators', NULL, NULL, '220V 50L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电冰箱 220V 50L', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363197046790, 0, NULL, 'Electric  refrigerators', NULL, NULL, '220V 70L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电冰箱 220V 70L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363197046793, 0, NULL, 'Electric vacuum cleaner', NULL, NULL, '110v  ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '吸尘器 110v  ', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363201241090, 0, NULL, 'Electric vacuum cleaner', NULL, NULL, '220v', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '吸尘器 220v', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363201241093, 0, NULL, 'Standby bag', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '吸尘器备用袋-一次性 ', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363205435392, 0, NULL, 'Carpet shampoo cleaners', NULL, NULL, '220V', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '地毯清洗机 220V', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363205435395, 0, NULL, 'Electric floor polishers', NULL, NULL, '220V', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '打蜡机 220V', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363205435398, 0, NULL, 'Electric    \'hair  dries', NULL, NULL, '110v', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电吹风　 110v', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363209629696, 0, NULL, 'Electric    \'hair  dries', NULL, NULL, '220v', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电吹风　 220v', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363209629699, 0, NULL, 'Elect. washing machine twin-tubes', NULL, NULL, '110V  5.5kg', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '双缸洗衣机 110V  5.5kg', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363209629702, 0, NULL, 'Elect. washing machine twin-tubes', NULL, NULL, '220V  5.5kg', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '双缸洗衣机 220V  5.5kg', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363213824000, 0, NULL, 'Electric washing machines full automatic', NULL, NULL, '110V  5kg', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '全自动洗衣机 110V  5kg', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363213824003, 0, NULL, 'Electric washing machines full automatic', NULL, NULL, '220V  5kg', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '全自动洗衣机 220V  5kg', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363213824006, 0, NULL, 'Washing machine', NULL, NULL, '220V　10KG', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '洗衣机 220V　10KG', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363218018306, 0, NULL, 'Electric  laudry dryers', NULL, NULL, '220v 15kg.', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烘干机 220v', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363218018309, 0, NULL, 'Electric pressing irons', NULL, NULL, 'Steam/Dry  110V', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蒸汽电熨斗 Steam/Dry  110V', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363218018312, 0, NULL, 'Electric pressing irons', NULL, NULL, 'Steam/Dry  220V', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '蒸汽电熨斗 Steam/Dry  220V', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363222212610, 0, NULL, 'Ironing tables', NULL, NULL, '1310*410MM', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '烫衣板 1310*410MM', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363222212613, 0, NULL, 'Electring portable sewing machines', NULL, NULL, '220V', NULL, NULL, 'set', 0, 0.000, NULL, 0, '缝纫机 220V', 'ddd', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363222212616, 0, NULL, 'Cabin fans', NULL, NULL, '110V 300W 60HZ TABLE', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电风扇　 110V 300W 60HZ TABLE', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363226406913, 0, NULL, 'Cabin fans', NULL, NULL, '110V  60HZ  300W WALL', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电风扇 110V  60HZ  300W WALL', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363226406916, 0, NULL, 'Cabin fans', NULL, NULL, '220V 50HZ  TABLE', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电风扇　　 220V 50HZ  TABLE', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363226406919, 0, NULL, 'Cabin fans', NULL, NULL, '220V 50HZ WALL', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电风扇 220V 50HZ WALL', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363230601217, 0, NULL, 'Electric portable heaters', NULL, NULL, '110V', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电暖气 110V', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363230601220, 0, NULL, 'Meat choppers', NULL, NULL, '12A 300*119*168mm', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '手动绞肉机　 12A 300*119*168mm', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363230601223, 0, NULL, 'Soybean milk machine 220V', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '220V豆浆机 70公斤/小时', NULL, NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363234795520, 0, NULL, 'Electric meat grinders', NULL, NULL, '110V 12kg', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电动绞肉机 110V 12kg 带变压器', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363234795523, 0, NULL, 'Electric meat grinders', NULL, NULL, '220V  12kg', NULL, NULL, 'set', 0, 0.000, NULL, 0, '电动绞肉机 220V  12kg', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363234795526, 0, NULL, 'Electric meat grinders', NULL, NULL, '220V  25KG', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '电动绞肉机 220V  25KG', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363238989824, 0, NULL, 'Microwave  ovens', NULL, NULL, '110v 20L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '微波炉 110v 20L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363238989827, 0, NULL, 'Universal kichen machines', NULL, NULL, '220V 20L', NULL, NULL, 'set', 0, 0.000, NULL, 0, '多用途搅拌机 220V 20L', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363238989830, 0, NULL, 'Universal kichen machines', NULL, NULL, '110V ', NULL, NULL, 'set', 0, 0.000, NULL, 0, '多用途搅拌机 110V ', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363238989833, 0, NULL, 'Dryer machine', NULL, NULL, '220V　15KG', NULL, NULL, 'set', 0, 0.000, NULL, 0, '衣服烘干机 220V　15KG', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363243184130, 0, NULL, 'Boilersuits for ZY', NULL, NULL, 'orange　XXXL', NULL, NULL, 'set', 0, 0.000, NULL, 0, '浙远连体工作服 orange　XXXL', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363243184133, 0, NULL, 'Cotton working gloves', NULL, NULL, 'Ordinary', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '线手套 Ordinary', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363247378432, 0, NULL, 'Cotton working gloves', NULL, NULL, 'Rubber Coated Palm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '线手套-胶皮 Rubber Coated Palm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363247378435, 0, NULL, 'Cotton working gloves', NULL, NULL, 'Non Slip Dots', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '线手套-点胶 Non Slip Dots', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363247378438, 0, NULL, 'Working  gloves canvas', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '手套  帆布 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363251572737, 0, NULL, 'Winter gloves', NULL, NULL, 'Size M', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒手套 Size M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363251572740, 0, NULL, 'Winter gloves', NULL, NULL, 'Size L', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒手套 Size L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363251572743, 0, NULL, 'Woolen winter gloves', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '羊毛防寒手套 ', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363255767042, 0, NULL, 'Gloves used in fishing ship，rubber', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '抓鱼用橡胶手套-单', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363255767045, 0, NULL, 'Leather palm working gloves', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '皮手套-EGC ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363255767048, 0, NULL, 'Leather palm working gloves', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '皮手套-好质量 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363259961346, 0, NULL, 'Calf skin working gloves', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '小牛皮手套 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363259961349, 0, NULL, 'Leather gauntlet gloves', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '长皮手套 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363259961352, 0, NULL, 'Aramid  fibre  gloves', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '纤维手套 ', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363264155649, 0, NULL, 'Natural rubber gloves', NULL, NULL, 'Short', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '橡胶手套 Short', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363264155652, 0, NULL, 'Natural rubber gloves', NULL, NULL, 'Long', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '橡胶手套 Long', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363264155655, 0, NULL, 'Oil/acid resistant plastic gloves', NULL, NULL, 'Short', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '橡胶手套-耐酸碱 Short', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363268349953, 0, NULL, 'Oil/acid resistant plastic gloves', NULL, NULL, 'Long', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '橡胶手套-耐酸碱 Long', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363268349956, 0, NULL, 'Oil/acid resistant plastic gloves', NULL, NULL, 'short', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '橡胶手套-耐酸碱 棉', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363268349959, 0, NULL, 'Oil/acid resistant plastic gloves', NULL, NULL, 'long', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '橡胶手套-耐酸碱 棉', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363272544257, 0, NULL, 'Disposable gloves ( one-off)', NULL, NULL, '100 prs/pkt', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '一次性手套 100 prs/pkt', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363272544260, 0, NULL, 'Natural rubber gloves', NULL, NULL, 'short', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防滑橡胶棉手套 short', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363272544263, 0, NULL, 'Rubber boots', NULL, NULL, 'short 25cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '长筒雨靴 short 25cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363276738560, 0, NULL, 'Rubber boots', NULL, NULL, 'short 26cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '长筒雨靴 short 26cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363276738563, 0, NULL, 'Rubber boots', NULL, NULL, 'Short 27cm 44#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '长筒雨靴 Short 27cm 44#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363276738566, 0, NULL, 'Rubber boots', NULL, NULL, 'Short 28cm 46#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '长筒雨靴 Short 28cm 46#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363276738569, 0, NULL, 'Rubber boots', NULL, NULL, 'Short 29cm 48#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '长筒雨靴 Short 29cm 48#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363280932866, 0, NULL, 'Rubber boots', NULL, NULL, 'Short 30cm ', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '长筒雨靴 Short 30cm ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363280932869, 0, NULL, 'Rubber boots', NULL, NULL, 'Short 26.5cm 43#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '半高筒雨靴 Short 26.5cm 43#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363280932872, 0, NULL, 'Rubber boots', NULL, NULL, 'Short 27.5cm 45#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '半高筒雨靴 Short 27.5cm 45#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363285127169, 0, NULL, 'Rubber boots', NULL, NULL, 'Short 28.5cm 47#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '半高筒雨靴 Short 28.5cm 47#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363285127172, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 24.5cm 39#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 24.5cm 39#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363285127175, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 25cm 40#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 25cm 40#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363289321472, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 26cm 42#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 26cm 42#', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363289321475, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 27cm 44#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 27cm 44#', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363289321478, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 28cm 46#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 28cm 46#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363293515776, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 29cm 48#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 29cm 48#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363293515779, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 30cm ', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 30cm ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363293515782, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 26.5cm 43#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 26.5cm 43#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363293515785, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 27.5cm 45#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 27.5cm 45#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363297710082, 0, NULL, 'Rubber boots', NULL, NULL, 'Long 28.5cm 47#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴 Long 28.5cm 47#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363297710085, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'short 24cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 short 24cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363297710088, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'short 25cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 short 25cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363301904386, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'short 26cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 short 26cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363301904389, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'short 27cm ', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 short 27cm ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363301904392, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'short 28cm ', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 short 28cm ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363306098688, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'long 24cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 long 24cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363306098691, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'long 25cm ', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 long 25cm ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363306098694, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'long 26cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 long 26cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363306098697, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'long 27cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全长筒雨靴 long 27cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363310292994, 0, NULL, 'Steel-toe rubber boots', NULL, NULL, 'long 28cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全高筒雨靴 long 28cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363310292997, 0, NULL, 'Boots and shoes oil/acid resistant', NULL, NULL, '24cm 38#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '耐油,酸长筒靴 24cm 38#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363310293000, 0, NULL, 'Boots and shoes oil/acid resistant', NULL, NULL, '24.5cm 39#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '耐油,酸长筒靴 24.5cm 39#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363314487298, 0, NULL, 'Boots and shoes oil/acid resistant', NULL, NULL, '25cm 40#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '耐油,酸长筒靴 25cm 40#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363314487301, 0, NULL, 'Boots and shoes oil/acid resistant', NULL, NULL, '25.5cm 41#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '耐油,酸长筒靴 25.5cm 41#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363314487304, 0, NULL, 'Boots and shoes oil/acid resistant', NULL, NULL, '26cm 42#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '耐油,酸长筒靴 26cm 42#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363318681601, 0, NULL, 'Boots and shoes oil/acid resistant', NULL, NULL, '26.5cm 43#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '耐油,酸长筒靴 26.5cm 43#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363318681604, 0, NULL, 'Boots and shoes oil/acid resistant', NULL, NULL, '27cm 44#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '耐油,酸长筒靴 27cm 44#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363318681607, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '27.5cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 27.5cm', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363322875905, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '29cm   48＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 29cm   48＃', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363322875908, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '24cm 38#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 24cm 38#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363322875911, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '24.5cm 39#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 24.5cm 39#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363327070209, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '25cm 40#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 25cm 40#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363327070212, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '25.5cm 41#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 25.5cm 41#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363327070215, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '26cm 42#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 26cm 42#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363331264513, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '26.5cm 43#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 26.5cm 43#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363331264516, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '27cm 44#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 27cm 44#', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363331264519, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '27.5cm 45', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 27.5cm 45', 'C1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363335458817, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '28cm 46#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 28cm 46#', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363335458820, 0, NULL, 'Oil/acid resistant boots with steel toe', NULL, NULL, '28.5cm 47#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '劳保鞋 28.5cm 47#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363335458823, 0, NULL, 'Winter boots', NULL, NULL, '25cm 40#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 25cm 40#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363339653122, 0, NULL, 'Winter boots', NULL, NULL, '25.5cm 41#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 25.5cm 41#', 'B1类', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363339653125, 0, NULL, 'Winter boots', NULL, NULL, '26cm 42#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 26cm 42#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363339653128, 0, NULL, 'Winter boots', NULL, NULL, '26.5 43#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 26.5 43#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363343847426, 0, NULL, 'Winter boots', NULL, NULL, '27cm 44#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 27cm 44#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363343847429, 0, NULL, 'Inner for winter boots  ', NULL, NULL, '44＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴内套 44＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363343847432, 0, NULL, 'Winter boots', NULL, NULL, '27.5cm 45#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 27.5cm 45#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363348041729, 0, NULL, 'Winter boots', NULL, NULL, '46#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒棉雨靴 46#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363348041732, 0, NULL, 'Inner for winter boots  ', NULL, NULL, '46＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴内套 46＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363348041735, 0, NULL, 'Winter boots', NULL, NULL, '48＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 48＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363352236033, 0, NULL, 'Inner for winter boots  ', NULL, NULL, '48＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴内套 48＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363352236036, 0, NULL, 'Winter boots', NULL, NULL, '50＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防寒棉雨靴 50＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363352236039, 0, NULL, 'Inner for winter boots  ', NULL, NULL, '50＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '高筒雨靴内套 50＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363356430336, 0, NULL, 'Winter boots with steel toe', NULL, NULL, '39＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '带钢包头防寒棉雨靴 39＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363356430339, 0, NULL, 'Winter boots with steel toe', NULL, NULL, '40＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '带钢包头防寒棉雨靴 40＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363356430342, 0, NULL, 'Winter boots with steel toe', NULL, NULL, '41#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '带钢包头防寒棉雨靴 41#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363360624640, 0, NULL, 'Winter boots with steel toe', NULL, NULL, '42＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '带钢包头防寒棉雨靴 42＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363360624643, 0, NULL, 'Winter boots with steel toe', NULL, NULL, '44＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '带钢包头防寒棉雨靴 44＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363360624646, 0, NULL, 'Winter boots with steel toe', NULL, NULL, '45＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '带钢包头防寒棉雨靴 45＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363364818944, 0, NULL, 'Winter boots with steel toe', NULL, NULL, '46＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '带钢包头防寒棉雨靴 46＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363364818947, 0, NULL, 'Boilersuits for ZY', NULL, NULL, 'orange　XL', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '浙远连体工作服 orange　XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363364818950, 0, NULL, 'Safety work shoes (24cm)', NULL, NULL, '24cm 38#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 24cm 38#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363364818953, 0, NULL, 'Safety work shoes (24.5cm)', NULL, NULL, '24.5cm 39#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 24.5cm 39#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363369013250, 0, NULL, 'Safety work shoes (25cm)', NULL, NULL, '25cm 40#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 25cm 40#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363369013253, 0, NULL, 'Safety work shoes (25.5cm)', NULL, NULL, '25.5cm 41#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 25.5cm 41#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363369013256, 0, NULL, 'Safety work shoes(26cm)', NULL, NULL, '26cm 42#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 26cm 42#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363373207554, 0, NULL, 'Safety work shoes (26.5cm)', NULL, NULL, '26.5cm 43#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 26.5cm 43#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363373207557, 0, NULL, 'Safety work shoes (27cm)', NULL, NULL, '27cm 44#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 27cm 44#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363377401856, 0, NULL, 'Safety work shoes(27.5cm)', NULL, NULL, '27.5cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 27.5cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363377401859, 0, NULL, 'Safety work shoes 28(cm)', NULL, NULL, '28cm 46#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 28cm 46#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363377401862, 0, NULL, 'Safety work shoes (23.5cm)', NULL, NULL, '23.5cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '安全鞋 23.5cm', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363381596161, 0, NULL, 'Winter safety work shoes(39#)', NULL, NULL, '39＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋 39＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363381596164, 0, NULL, 'Winter safety work shoes(40#)', NULL, NULL, '40＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋  40＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363381596167, 0, NULL, 'Winter safety work shoes(41#)', NULL, NULL, '41＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋  41＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363385790465, 0, NULL, 'Winter safety work shoes(42#)', NULL, NULL, '42＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋  42＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363385790468, 0, NULL, 'Winter safety work shoes(43#)', NULL, NULL, '43＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋  43＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363385790471, 0, NULL, 'Winter safety work shoes(44#)', NULL, NULL, '44＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋  44＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363389984770, 0, NULL, 'Winter safety work shoes(45#)', NULL, NULL, '45＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋 45＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363389984773, 0, NULL, 'Winter safety work shoes(46#)', NULL, NULL, '46＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋 46＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363389984776, 0, NULL, 'Winter safety work shoes(48#)', NULL, NULL, '48＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋  48＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363394179074, 0, NULL, 'Winter safety work shoes(50#)', NULL, NULL, '50＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉劳保鞋  50＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363394179077, 0, NULL, 'Anti-electro-static  boots(24cm)', NULL, NULL, '24cm 38#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  24cm 38#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363398373376, 0, NULL, 'Anti-electro-static  boots(24.5cm)', NULL, NULL, '24.5cm 39#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  24.5cm 39#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363398373379, 0, NULL, 'Anti-electro-static  boots(25cm)', NULL, NULL, '25cm 40#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  25cm 40#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363398373382, 0, NULL, 'Anti-electro-static  boots(25.5cm)', NULL, NULL, '25.5cm 41#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  25.5cm 41#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363398373385, 0, NULL, 'Anti-electro-static  boots(26cm)', NULL, NULL, '26cm 42#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  26cm 42#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363402567682, 0, NULL, 'Anti-electro-static  boots(26.5cm)', NULL, NULL, '26.5cm 43#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  26.5cm 43#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363402567685, 0, NULL, 'Anti-electro-static  boots(27cm)', NULL, NULL, '27cm 44#', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  27cm 44#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363402567688, 0, NULL, 'Anti-electro-static  boots(27.5cm)', NULL, NULL, '27.5cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴  27.5cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363406761985, 0, NULL, 'Anti-electro-static  boots', NULL, NULL, '28cm', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '防静电长靴 28cm', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363406761988, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '38＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工　 38＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363406761991, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '39＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工 39＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363410956290, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '40＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工  40＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363410956293, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '41＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工 41＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363415150593, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '42＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工　 42＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363415150596, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '43＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工　 43＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363415150599, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '44＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工  44＃', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363419344898, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '45＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工　 45＃', 'B1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363419344901, 0, NULL, 'Anti-electro-static  shoes', NULL, NULL, '46＃', NULL, NULL, 'pr', 0, 0.000, NULL, 0, '绝缘鞋-电工　 46＃', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363423539200, 0, NULL, 'Cotton working socks', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '毛棉袜', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363423539203, 0, NULL, 'Cotton socks', NULL, NULL, NULL, NULL, NULL, 'pr', 0, 0.000, NULL, 0, '棉线袜子 ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363423539206, 0, NULL, 'Boilersuits for ZY', NULL, NULL, 'orange　L', NULL, NULL, 'set', 0, 0.000, NULL, 0, '浙远连体工作服 orange　L', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363427733505, 0, NULL, 'Rain suits(one-off)', NULL, NULL, NULL, NULL, NULL, 'set', 0, 0.000, NULL, 0, '一次性雨衣 ', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363427733508, 0, NULL, 'Rain suits(one-off)', NULL, NULL, 'large-size', NULL, NULL, 'set', 0, 0.000, NULL, 0, '一次性雨衣 large-size', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363427733511, 0, NULL, 'Rain suits with hood', NULL, NULL, 'Size  M#', NULL, NULL, 'set', 0, 0.000, NULL, 0, '尼龙分体雨衣 Size  M#', 'ddd', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363431927809, 0, NULL, 'Rain suits with hood', NULL, NULL, 'Size  L#', NULL, NULL, 'set', 0, 0.000, NULL, 0, '尼龙分体雨衣 Size  L#', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363431927812, 0, NULL, 'Rain suits with hood', NULL, NULL, 'Size  LL#', NULL, NULL, 'set', 0, 0.000, NULL, 0, '尼龙分体雨衣 Size  LL#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363431927815, 0, NULL, 'Rain suits with hood', NULL, NULL, 'Size  XL#', NULL, NULL, 'set', 0, 0.000, NULL, 0, '尼龙分体雨衣 Size  XL#', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363431927818, 0, NULL, 'Rain suits cloth lined rubber ', NULL, NULL, 'M', NULL, NULL, 'set', 0, 0.000, NULL, 0, '分体雨衣 M', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363436122114, 0, NULL, 'Rain suits cloth lined rubber ', NULL, NULL, 'large-size', NULL, NULL, 'set', 0, 0.000, NULL, 0, '分体雨衣 large-size', 'B3', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363436122117, 0, NULL, 'Rain suits cloth lined rubber ', NULL, NULL, 'outsize', NULL, NULL, 'set', 0, 0.000, NULL, 0, '分体雨衣 outsize', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363436122120, 0, NULL, 'Rain suits with hood cloth lined rubber', NULL, NULL, 'Size  M#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '长雨衣 Size  M#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363440316417, 0, NULL, 'Rain suits with hood cloth lined rubber', NULL, NULL, 'Size  L#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '长雨衣 Size  L#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363440316420, 0, NULL, 'Rain suits with hood cloth lined rubber', NULL, NULL, 'Size  LL#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '长雨衣 Size  LL#', 'o', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363440316423, 0, NULL, 'Rain suits with hood cloth lined rubber', NULL, NULL, 'Size  XL# (2-12)', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '长雨衣 Size  XL# (2-12)', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363444510720, 0, NULL, 'Boilersuits for ZY', NULL, NULL, 'blue　L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '浙远连体工作服 blue　L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363444510723, 0, NULL, 'Boilersuits coveralls(white m)', NULL, NULL, 'white M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-白色 white M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363444510726, 0, NULL, 'Boilersuits coveralls(white l)', NULL, NULL, 'white L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-白色 white L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363448705025, 0, NULL, 'Boilersuits coveralls(white ll)', NULL, NULL, 'white LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-白色 white LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363448705028, 0, NULL, 'Boilersuits coveralls(white xl)', NULL, NULL, 'white XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-白色 white XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363448705031, 0, NULL, 'Boilersuits coveralls(white 4l)', NULL, NULL, 'white 4L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-白色 white 4L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363452899330, 0, NULL, 'Boilersuits coveralls(blue m)', NULL, NULL, 'blue M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－蓝色 blue M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363452899333, 0, NULL, 'Boilersuits coveralls(blue l)', NULL, NULL, 'blue L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－蓝色 blue L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363452899336, 0, NULL, 'Boilersuits coveralls(blue ll)', NULL, NULL, 'blue LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－蓝色 blue LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363457093633, 0, NULL, 'Boilersuits coveralls(blue xl)', NULL, NULL, 'blue XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－蓝色 blue XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363457093636, 0, NULL, 'Boilersuits coveralls(blue 4l)', NULL, NULL, 'blue 4L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－蓝色 blue 4L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363457093639, 0, NULL, 'Boilersuits coveralls(gray m)', NULL, NULL, 'gray M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－灰色 gray M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363461287938, 0, NULL, 'Boilersuits coveralls(gray l)', NULL, NULL, 'gray L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－灰色 gray L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363461287941, 0, NULL, 'Boilersuits coveralls(gray ll)', NULL, NULL, 'gray LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－灰色 gray LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363461287944, 0, NULL, 'Boilersuits coveralls(gray xl)', NULL, NULL, 'gray XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－灰色 gray XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363465482242, 0, NULL, 'Boilersuits coveralls(gray 4l)', NULL, NULL, 'gray 4L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服－灰色 gray 4L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363465482245, 0, NULL, 'Boilersuits coveralls(orange m)', NULL, NULL, 'orange M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-橙色 orange M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363465482248, 0, NULL, 'Boilersuits coveralls(orange l)', NULL, NULL, 'orange L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-橙色 orange L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363469676546, 0, NULL, 'Boilersuits coveralls(orange ll)', NULL, NULL, 'orange LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-橙色 orange LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363469676549, 0, NULL, 'Boilersuits coveralls(orange xl)', NULL, NULL, 'orange XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-橙色 orange XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363469676552, 0, NULL, 'Boilersuits coveralls(orange 4l)', NULL, NULL, 'orange 4L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-橙色 orange 4L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363473870850, 0, NULL, 'Boilersuits coveralls(khaki m)', NULL, NULL, 'khaki M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-黄褐 khaki M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363473870853, 0, NULL, 'Boilersuits coveralls(khaki l)', NULL, NULL, 'khaki L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-黄褐 khaki L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363473870856, 0, NULL, 'Boilersuits coveralls(khaki ll)', NULL, NULL, 'khaki LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-黄褐 khaki LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363478065154, 0, NULL, 'Boilersuits coveralls(khaki xl)', NULL, NULL, 'khaki XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-黄褐 khaki XL', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363478065157, 0, NULL, 'Boilersuits coveralls(khaiki 4l)', NULL, NULL, 'khaki 4L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '工作服-黄褐 khaki 4L', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363482259456, 0, NULL, 'Boilersuits coveralls(m#) fastner type', NULL, NULL, 'M#  Size , White Color', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-白色 M#  Size , White Color', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363482259459, 0, NULL, 'Boilersuits coveralls(l#) fastner type', NULL, NULL, 'L#   Size,White Color', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-白色 L#   Size,White Color', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363482259462, 0, NULL, 'Boilersuits coveralls(xl#) fastner type', NULL, NULL, 'XL# White Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-白色 XL# White Color Size', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363486453761, 0, NULL, 'Boilersuits coveralls(xxl#) fastner type', NULL, NULL, 'XXL#  White Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-白色 XXL#  White Color Size', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363486453764, 0, NULL, 'Boilersuits coveralls(xxl#) fastner type', NULL, NULL, 'XXXL#  White Color Size ', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-白色 XXXL#  White Color Size ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363486453767, 0, NULL, 'Boilersuits coveralls(m#) fastner type', NULL, NULL, 'M# Blue Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-蓝色 M# Blue Color Size', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363490648065, 0, NULL, 'Boilersuits coveralls(l#) fastner type', NULL, NULL, 'L#  Blue Color Size ', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-蓝色 L#  Blue Color Size ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363490648068, 0, NULL, 'Boilersuits coveralls(ll#) fastner type', NULL, NULL, 'LL#Blue Color Size ', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-蓝色 LL#Blue Color Size ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363490648071, 0, NULL, 'Boilersuits coveralls(xl#) fastner type', NULL, NULL, 'XL#  Blue Color Size ', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-蓝色 XL#  Blue Color Size ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363494842370, 0, NULL, 'Boilersuits coveralls(xxl#) fastner type', NULL, NULL, 'XXL#  Blue Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-蓝色 XXL#  Blue Color Size', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363494842373, 0, NULL, 'Boilersuits coveralls(m#) fastner type', NULL, NULL, 'M#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-蓝色 M#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363494842376, 0, NULL, 'Boilersuits coveralls(l#) fastner type', NULL, NULL, 'L#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-蓝色 L#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363499036674, 0, NULL, 'Boilersuits coveralls(ll#) fastner type', NULL, NULL, 'gray LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-灰色 gray LL', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363499036677, 0, NULL, 'Boilersuits coveralls(m#) fastner type', NULL, NULL, 'Orange Color Size   M#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-橙色 Orange Color Size   M#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363499036680, 0, NULL, 'Boilersuits coveralls(l#) fastner type', NULL, NULL, 'L#  Orange Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-橙色 L#  Orange Color Size', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363503230978, 0, NULL, 'Boilersuits coveralls  fastner type', NULL, NULL, 'Orange Color Size   LL#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-橙色 Orange Color Size   LL#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363503230981, 0, NULL, 'Boilersuits coveralls(xl#) fastner type', NULL, NULL, 'XL#  Orange Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-橙色 XL#  Orange Color Size', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363507425281, 0, NULL, 'Boilersuits coveralls(4l) fastner type', NULL, NULL, '4L#  Orange Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-橙色 4L#  Orange Color Size', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363507425284, 0, NULL, 'Boilersuits coveralls(m#) fastner type', NULL, NULL, 'M#  Orange Color Size', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-黄褐 M#  Orange Color Size', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363507425287, 0, NULL, 'Boilersuits coveralls(fasten type)', NULL, NULL, 'khaki L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-黄褐 khaki L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363511619586, 0, NULL, 'Boilersuits coveralls(fasten type)', NULL, NULL, 'khaki LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-黄褐 khaki LL', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363511619589, 0, NULL, 'Boilersuits coveralls(fasten type)', NULL, NULL, 'khaki XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '连体工作服-黄褐 khaki XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363511619592, 0, NULL, 'Disposable boilersuits', NULL, NULL, 'LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '一次性工作服 LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363515813890, 0, NULL, 'Fire retardany boilersuits', NULL, NULL, 'M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '分体工作服 M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363515813893, 0, NULL, 'Fire retardany boilersuits', NULL, NULL, 'L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '分体工作服 L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363515813896, 0, NULL, 'Boilersuits for ZY', NULL, NULL, 'blue　XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '浙远连体工作服 blue　XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363520008194, 0, NULL, 'Refrigerator coats', NULL, NULL, 'nylon M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 nylon M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363520008197, 0, NULL, 'Refrigerator coats', NULL, NULL, 'nylon L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 nylon L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363520008200, 0, NULL, 'Refrigerator coats', NULL, NULL, 'nylon LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 nylon LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363524202498, 0, NULL, 'Refrigerator coats', NULL, NULL, 'nylon XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 nylon XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363524202501, 0, NULL, 'Refrigerator coats', NULL, NULL, 'cotton M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 cotton M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363524202504, 0, NULL, 'Refrigerator coats', NULL, NULL, 'cotton L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 cotton L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363528396801, 0, NULL, 'Refrigerator coats', NULL, NULL, 'cotton LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 cotton LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363528396804, 0, NULL, 'Refrigerator coats', NULL, NULL, 'cotton XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒茄克 cotton XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363528396807, 0, NULL, 'Parkas', NULL, NULL, 'Size  M#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒服M Size  M#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363532591105, 0, NULL, 'Parkas', NULL, NULL, 'Size  L#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒服L Size  L#', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363532591108, 0, NULL, 'Parkas', NULL, NULL, 'Size  LL#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒服LL Size  LL#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363532591111, 0, NULL, 'Parkas', NULL, NULL, 'Size  XL#', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒服XL Size  XL#', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363536785409, 0, NULL, 'Cotton trousers', NULL, NULL, NULL, NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '棉裤 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363536785412, 0, NULL, 'Winter use boilersuits', NULL, NULL, 'M', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒棉连体工作服 M', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363536785415, 0, NULL, 'Winter use boilersuits', NULL, NULL, 'L', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒棉连体工作服 L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363540979712, 0, NULL, 'Winter use boilersuits', NULL, NULL, 'LL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒棉连体工作服 LL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363540979715, 0, NULL, 'Winter use boilersuits', NULL, NULL, 'XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒棉连体工作服 XL', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363540979718, 0, NULL, 'Winter use boilersuits', NULL, NULL, 'XXL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒棉连体工作服 XXL', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363545174017, 0, NULL, 'Winter use boilersuits', NULL, NULL, 'XXXL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒棉连体工作服 XXXL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363545174020, 0, NULL, 'Winter use boilersuits', NULL, NULL, 'XXXXL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒棉连体工作服 XXXXL', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363545174023, 0, NULL, 'Cotton cap', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '棉帽 ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363549368321, 0, NULL, 'Caps', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '草帽 ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363549368324, 0, NULL, 'Knit  caps pointed crown knit', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '滑雪帽  双层 ', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363549368327, 0, NULL, 'Winter caps fullface,knit', NULL, NULL, NULL, NULL, NULL, 'pc', 0, 0.000, NULL, 0, '防寒帽 ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363553562625, 0, NULL, 'Woolen sweater', NULL, NULL, NULL, NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '羊毛衫（毛衣） ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363553562628, 0, NULL, 'Winter jackets&trousers', NULL, NULL, 'XL', NULL, NULL, 'pcs', 0, 0.000, NULL, 0, '防寒工作服(绿） XL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363553562631, 0, NULL, 'Winter inner  suits', NULL, NULL, 'M ', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '保暖衣 M ', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363557756930, 0, NULL, 'Boilersuits for ZY up1', NULL, NULL, 'blue　XXL', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '浙远连体工作服 blue　XXL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363557756933, 0, NULL, 'Boilersuits for ZY up2', NULL, NULL, 'blue　XXXL', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '浙远连体工作服 blue　XXXL', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363561951232, 0, NULL, 'Boilersuits for ZY2 up3', NULL, NULL, 'white　L', NULL, NULL, 'pc', 0, 0.000, NULL, 0, '浙远连体工作服 white　L', 'B2', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product` VALUES (1274350363561951235, 0, NULL, 'Boilersuits for New', NULL, NULL, 'new add', NULL, NULL, 'zz', 0, 0.000, NULL, 0, '新的', 'C1', NULL, 0, 0, NULL, '2024-08-17 12:53:23', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute`;
CREATE TABLE `product_attribute`  (
  `id` bigint NOT NULL,
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `attribute_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `attribute_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品属性表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `category_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `category_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编号',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '上级id',
  `sort` int NULL DEFAULT NULL COMMENT '显示顺序',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK3EE7F725237A77D8`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES (1268394550578118656, 1255645635676209152, 'CPU', 'GPU3060', NULL, 1, NULL, '2024-08-01 02:27:06', '2024-08-01 02:40:49', 1255645635676209152, 1255645635676209152, 1);
INSERT INTO `product_category` VALUES (1268397972761083904, 1255645635676209152, '测试', 'GPU3060', NULL, NULL, NULL, '2024-08-01 02:40:42', '2024-08-01 02:43:15', 1255645635676209152, 1255645635676209152, 0);
INSERT INTO `product_category` VALUES (1268593766936084480, 0, 'CPU', 'BCOne1', NULL, NULL, NULL, '2024-08-01 15:38:43', NULL, 0, NULL, 1);
INSERT INTO `product_category` VALUES (1270016549930926080, 0, '货物', '1', NULL, NULL, NULL, '2024-08-05 13:52:21', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for product_extend_price
-- ----------------------------
DROP TABLE IF EXISTS `product_extend_price`;
CREATE TABLE `product_extend_price`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NULL DEFAULT NULL COMMENT '商品id',
  `product_bar_code` int NULL DEFAULT NULL COMMENT '商品条码',
  `product_unit` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品单位',
  `multi_attribute` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多属性',
  `purchase_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '采购价格',
  `retail_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '零售价格',
  `sale_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '销售价格',
  `low_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '最低售价',
  `default_flag` tinyint(1) NULL DEFAULT 1 COMMENT '是否为默认单位，1是，0否',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品价格扩展' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product_extend_price
-- ----------------------------

-- ----------------------------
-- Table structure for product_extend_property
-- ----------------------------
DROP TABLE IF EXISTS `product_extend_property`;
CREATE TABLE `product_extend_property`  (
  `id` bigint NOT NULL COMMENT '主键',
  `native_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '原始名称',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '是否启用',
  `another_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '别名',
  `sort` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品扩展字段表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_extend_property
-- ----------------------------

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NULL DEFAULT NULL COMMENT '商品id',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片上传的uid',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片类型（png jpg jpeg）',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片上传状态',
  `image_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片名称',
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片地址',
  `image_size` int NULL DEFAULT NULL COMMENT '图片大小 mb',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_image
-- ----------------------------

-- ----------------------------
-- Table structure for product_inventory_current
-- ----------------------------
DROP TABLE IF EXISTS `product_inventory_current`;
CREATE TABLE `product_inventory_current`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NULL DEFAULT NULL COMMENT '产品id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库id',
  `current_stock_quantity` decimal(24, 6) NULL DEFAULT NULL COMMENT '当前库存数量',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品当前库存' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product_inventory_current
-- ----------------------------

-- ----------------------------
-- Table structure for product_inventory_initial
-- ----------------------------
DROP TABLE IF EXISTS `product_inventory_initial`;
CREATE TABLE `product_inventory_initial`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NULL DEFAULT NULL COMMENT '产品id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库id',
  `init_stock_quantity` decimal(24, 6) NULL DEFAULT NULL COMMENT '初始库存数量',
  `low_stock_quantity` decimal(24, 6) NULL DEFAULT NULL COMMENT '最低库存数量',
  `high_stock_quantity` decimal(24, 6) NULL DEFAULT NULL COMMENT '最高库存数量',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品初始库存' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product_inventory_initial
-- ----------------------------

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property`  (
  `id` bigint NOT NULL COMMENT '主键',
  `native_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '原始名称',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '是否启用',
  `another_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '别名',
  `sort` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品扩展字段表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_property
-- ----------------------------

-- ----------------------------
-- Table structure for product_sku
-- ----------------------------
DROP TABLE IF EXISTS `product_sku`;
CREATE TABLE `product_sku`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NULL DEFAULT NULL COMMENT '商品id',
  `product_bar_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  `product_unit` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品单位',
  `multi_attribute` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多属性',
  `purchase_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '采购价格',
  `retail_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '零售价格',
  `sale_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '销售价格',
  `low_price` decimal(12, 3) NULL DEFAULT NULL COMMENT '最低售价',
  `default_flag` tinyint(1) NULL DEFAULT 1 COMMENT '是否为默认单位，1是，0否',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品价格扩展' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product_sku
-- ----------------------------
INSERT INTO `product_sku` VALUES (1274350361921978369, 0, 1274350361921978368, '00A332', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361930366976, 0, 1274350361926172673, '00A395', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361934561280, 0, 1274350361930366978, '00A399', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361934561283, 0, 1274350361934561282, '01A466', NULL, NULL, 1.780, 2.080, 0.000, 1.550, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361938755586, 0, 1274350361938755585, '01A474', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361942949890, 0, 1274350361942949889, '01A475', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361947144194, 0, 1274350361947144193, '01A478', NULL, NULL, 0.170, 0.200, 0.000, 0.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361951338498, 0, 1274350361951338497, '01B463', NULL, NULL, 53.480, 62.380, 0.000, 46.780, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361955532801, 0, 1274350361955532800, '01B464', NULL, NULL, 10.710, 12.490, 0.000, 9.370, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361984892929, 0, 1274350361984892928, '024001', NULL, NULL, 0.520, 0.620, 0.000, 0.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361989087233, 0, 1274350361989087232, '02A242', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361993281536, 0, 1274350361989087235, '02A243', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361993281539, 0, 1274350361993281538, '02A246', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350361997475842, 0, 1274350361997475841, '02A249', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362001670144, 0, 1274350361997475844, '02A250', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362001670147, 0, 1274350362001670146, '02B241', NULL, NULL, 53.480, 62.380, 0.000, 46.780, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362026835970, 0, 1274350362026835969, '066001', NULL, NULL, 0.520, 0.620, 0.000, 0.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362031030273, 0, 1274350362031030272, '101570', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362031030276, 0, 1274350362031030275, '110141', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362035224578, 0, 1274350362035224577, '110250', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362035224581, 0, 1274350362035224580, '110270', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362039418882, 0, 1274350362039418881, '110272', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362043613185, 0, 1274350362043613184, '110273', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362043613188, 0, 1274350362043613187, '110401', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362047807489, 0, 1274350362047807488, '110402', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362047807492, 0, 1274350362047807491, '110405', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362052001794, 0, 1274350362052001793, '110510', NULL, NULL, 0.150, 0.180, 0.000, 0.140, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362106527744, 0, 1274350362052001796, '110550', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362110722049, 0, 1274350362110722048, '110902', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362110722052, 0, 1274350362110722051, '111205', NULL, NULL, 285.710, 333.340, 0.000, 250.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362114916354, 0, 1274350362114916353, '111221', NULL, NULL, 151.430, 176.660, 0.000, 132.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362114916357, 0, 1274350362114916356, '111222', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362119110657, 0, 1274350362119110656, '111233', NULL, NULL, 32.970, 38.460, 0.000, 28.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362119110660, 0, 1274350362119110659, '111234', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362123304960, 0, 1274350362119110662, '111235', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362123304963, 0, 1274350362123304962, '111238', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362123304966, 0, 1274350362123304965, '111239', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362127499266, 0, 1274350362127499265, '111302', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362127499269, 0, 1274350362127499268, '111303', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362131693569, 0, 1274350362131693568, '111802', NULL, NULL, 20.880, 24.350, 0.000, 18.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362131693572, 0, 1274350362131693571, '111815', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362135887873, 0, 1274350362135887872, '11A992', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362152665088, 0, 1274350362135887875, '11A993', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362152665091, 0, 1274350362152665090, '150106', NULL, NULL, 2.420, 2.820, 0.000, 2.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362156859394, 0, 1274350362156859393, '150116', NULL, NULL, 4.060, 4.740, 0.000, 3.550, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362156859397, 0, 1274350362156859396, '150118', NULL, NULL, 5.060, 5.890, 0.000, 4.430, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362161053698, 0, 1274350362161053697, '150123', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362161053701, 0, 1274350362161053700, '150126', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362194608128, 0, 1274350362161053703, '150146', NULL, NULL, 2.420, 2.820, 0.000, 2.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362194608131, 0, 1274350362194608130, '150156', NULL, NULL, 4.060, 4.740, 0.000, 3.550, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362198802434, 0, 1274350362198802433, '150161', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362198802437, 0, 1274350362198802436, '150201', NULL, NULL, 39.550, 46.150, 0.000, 34.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362202996736, 0, 1274350362198802439, '150202', NULL, NULL, 54.940, 64.110, 0.000, 48.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362202996739, 0, 1274350362202996738, '150250', NULL, NULL, 5.710, 6.660, 0.000, 5.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362202996742, 0, 1274350362202996741, '150251', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362207191041, 0, 1274350362207191040, '150281', NULL, NULL, 1.850, 2.150, 0.000, 1.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362207191044, 0, 1274350362207191043, '150286', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362211385344, 0, 1274350362207191046, '150287', NULL, NULL, 1.430, 1.660, 0.000, 1.250, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362211385347, 0, 1274350362211385346, '150288', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362219773953, 0, 1274350362219773952, '150346', NULL, NULL, 15.380, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362219773956, 0, 1274350362219773955, '150347', NULL, NULL, 15.380, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362223968256, 0, 1274350362219773958, '150351', NULL, NULL, 17.690, 18.050, 0.000, 13.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362223968259, 0, 1274350362223968258, '150352', NULL, NULL, 17.690, 18.050, 0.000, 13.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362223968262, 0, 1274350362223968261, '150381', NULL, NULL, 9.680, 11.280, 0.000, 8.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362228162561, 0, 1274350362228162560, '150401', NULL, NULL, 3.080, 3.580, 0.000, 2.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362228162564, 0, 1274350362228162563, '150402', NULL, NULL, 3.080, 3.580, 0.000, 2.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362232356864, 0, 1274350362228162566, '150403', NULL, NULL, 3.080, 3.580, 0.000, 2.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362232356867, 0, 1274350362232356866, '150411', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362232356870, 0, 1274350362232356869, '150412', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362236551169, 0, 1274350362236551168, '150413', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362236551172, 0, 1274350362236551171, '150426', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362240745472, 0, 1274350362236551174, '150427', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362240745475, 0, 1274350362240745474, '150428', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362240745478, 0, 1274350362240745477, '150443', NULL, NULL, 8.350, 9.740, 0.000, 7.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362244939776, 0, 1274350362240745480, '150444', NULL, NULL, 16.480, 19.230, 0.000, 14.430, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362244939779, 0, 1274350362244939778, '150451', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362244939782, 0, 1274350362244939781, '150452', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362249134081, 0, 1274350362249134080, '150453', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362249134084, 0, 1274350362249134083, '150454', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362253328384, 0, 1274350362249134086, '150460', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362253328387, 0, 1274350362253328386, '150461', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362257522688, 0, 1274350362253328389, '150462', NULL, NULL, 1.320, 1.540, 0.000, 1.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362257522691, 0, 1274350362257522690, '150463', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362261716993, 0, 1274350362261716992, '150464', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362261716996, 0, 1274350362261716995, '150465', NULL, NULL, 3.740, 4.350, 0.000, 3.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362265911296, 0, 1274350362261716998, '150471', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362265911299, 0, 1274350362265911298, '150511', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362270105600, 0, 1274350362265911301, '150512', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362270105603, 0, 1274350362270105602, '150522', NULL, NULL, 13.180, 15.380, 0.000, 11.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362270105606, 0, 1274350362270105605, '150526', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362274299906, 0, 1274350362274299905, '150527', NULL, NULL, 0.320, 0.380, 0.000, 0.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362274299909, 0, 1274350362274299908, '150531', NULL, NULL, 7.030, 8.200, 0.000, 6.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362278494210, 0, 1274350362278494209, '150601', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362278494213, 0, 1274350362278494212, '150602', NULL, NULL, 3.520, 4.110, 0.000, 3.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362282688513, 0, 1274350362282688512, '150606', NULL, NULL, 0.480, 0.570, 0.000, 0.430, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362282688516, 0, 1274350362282688515, '150607', NULL, NULL, 1.430, 1.660, 0.000, 1.250, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362282688519, 0, 1274350362282688518, '150611', NULL, NULL, 0.170, 0.200, 0.000, 0.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362286882818, 0, 1274350362286882817, '150617', NULL, NULL, 1.430, 1.660, 0.000, 1.250, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362286882821, 0, 1274350362286882820, '150618', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362291077120, 0, 1274350362286882823, '150621', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362291077123, 0, 1274350362291077122, '150626', NULL, NULL, 1.860, 2.180, 0.000, 1.630, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362291077126, 0, 1274350362291077125, '150627', NULL, NULL, 11.860, 13.850, 0.000, 10.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362295271425, 0, 1274350362295271424, '150628', NULL, NULL, 7.250, 8.460, 0.000, 6.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362295271428, 0, 1274350362295271427, '150651', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362295271431, 0, 1274350362295271430, '150652', NULL, NULL, 2.860, 3.340, 0.000, 2.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362299465730, 0, 1274350362299465729, '150665', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362299465733, 0, 1274350362299465732, '150666', NULL, NULL, 1.750, 2.050, 0.000, 1.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362299465736, 0, 1274350362299465735, '150667', NULL, NULL, 2.110, 2.460, 0.000, 1.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362303660034, 0, 1274350362303660033, '150672', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362303660037, 0, 1274350362303660036, '150679', NULL, NULL, 2.980, 3.490, 0.000, 2.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362303660040, 0, 1274350362303660039, '150680', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362307854338, 0, 1274350362307854337, '150691', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362307854341, 0, 1274350362307854340, '150711', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362312048640, 0, 1274350362307854343, '150731', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362312048643, 0, 1274350362312048642, '150804', NULL, NULL, 1.060, 1.230, 0.000, 0.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362312048646, 0, 1274350362312048645, '170101', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362316242944, 0, 1274350362312048648, '170102', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362316242947, 0, 1274350362316242946, '170103', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362316242950, 0, 1274350362316242949, '170107', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362320437248, 0, 1274350362316242952, '170113', NULL, NULL, 0.980, 1.150, 0.000, 0.860, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362320437251, 0, 1274350362320437250, '170117', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362324631552, 0, 1274350362320437253, '170118', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362324631555, 0, 1274350362324631554, '170119', NULL, NULL, 1.290, 1.510, 0.000, 1.140, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362324631558, 0, 1274350362324631557, '170122', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362328825858, 0, 1274350362328825857, '170201', NULL, NULL, 5.380, 6.280, 0.000, 4.710, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362328825861, 0, 1274350362328825860, '170202', NULL, NULL, 5.280, 6.150, 0.000, 4.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362328825864, 0, 1274350362328825863, '170203', NULL, NULL, 2.750, 3.200, 0.000, 2.400, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362333020162, 0, 1274350362333020161, '170205', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362333020165, 0, 1274350362333020164, '170206', NULL, NULL, 2.150, 2.510, 0.000, 1.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362337214464, 0, 1274350362333020167, '170217', NULL, NULL, 2.750, 3.200, 0.000, 2.400, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362337214467, 0, 1274350362337214466, '170218', NULL, NULL, 2.750, 3.200, 0.000, 2.400, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362337214470, 0, 1274350362337214469, '170219', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362341408768, 0, 1274350362337214472, '170220', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362341408771, 0, 1274350362341408770, '170230', NULL, NULL, 1.750, 2.050, 0.000, 1.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362341408774, 0, 1274350362341408773, '170234', NULL, NULL, 1.370, 1.580, 0.000, 1.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362345603072, 0, 1274350362341408776, '170251', NULL, NULL, 0.020, 0.030, 0.000, 0.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362345603075, 0, 1274350362345603074, '170252', NULL, NULL, 0.020, 0.030, 0.000, 0.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362345603078, 0, 1274350362345603077, '170253', NULL, NULL, 0.020, 0.030, 0.000, 0.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362349797377, 0, 1274350362349797376, '170301', NULL, NULL, 0.620, 0.720, 0.000, 0.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362349797380, 0, 1274350362349797379, '170302', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362349797383, 0, 1274350362349797382, '170303', NULL, NULL, 1.220, 1.420, 0.000, 1.060, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362353991681, 0, 1274350362353991680, '170304', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362353991684, 0, 1274350362353991683, '170305', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362353991687, 0, 1274350362353991686, '170306', NULL, NULL, 6.350, 7.420, 0.000, 5.550, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362358185986, 0, 1274350362358185985, '170309', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362358185989, 0, 1274350362358185988, '170310', NULL, NULL, 0.710, 0.820, 0.000, 0.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362358185992, 0, 1274350362358185991, '170311', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362362380290, 0, 1274350362362380289, '170312', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362362380293, 0, 1274350362362380292, '170313', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362366574592, 0, 1274350362362380295, '170314', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362366574595, 0, 1274350362366574594, '170315', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362366574598, 0, 1274350362366574597, '170321', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362366574601, 0, 1274350362366574600, '170326', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362370768898, 0, 1274350362370768897, '170327', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362370768901, 0, 1274350362370768900, '170328', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362370768904, 0, 1274350362370768903, '170329', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362374963201, 0, 1274350362374963200, '170330', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362374963204, 0, 1274350362374963203, '170331', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362374963207, 0, 1274350362374963206, '170332', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362374963210, 0, 1274350362374963209, '170335', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362379157506, 0, 1274350362379157505, '170336', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362379157509, 0, 1274350362379157508, '170337', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362379157512, 0, 1274350362379157511, '170338', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362383351808, 0, 1274350362379157514, '170401', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362383351811, 0, 1274350362383351810, '170402', NULL, NULL, 1.320, 1.540, 0.000, 1.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362383351814, 0, 1274350362383351813, '170404', NULL, NULL, 1.320, 1.540, 0.000, 1.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362383351817, 0, 1274350362383351816, '170407', NULL, NULL, 2.420, 2.820, 0.000, 2.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362387546114, 0, 1274350362387546113, '170415', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362387546117, 0, 1274350362387546116, '170416', NULL, NULL, 0.980, 1.150, 0.000, 0.860, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362387546120, 0, 1274350362387546119, '170431', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362391740418, 0, 1274350362391740417, '170432', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362391740421, 0, 1274350362391740420, '170433', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362391740424, 0, 1274350362391740423, '170437', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362395934722, 0, 1274350362395934721, '170452', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362395934725, 0, 1274350362395934724, '170467', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362400129024, 0, 1274350362395934727, '170472', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362400129027, 0, 1274350362400129026, '170486', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362400129030, 0, 1274350362400129029, '170487', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362400129033, 0, 1274350362400129032, '170490', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362404323330, 0, 1274350362404323329, '170605', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362404323333, 0, 1274350362404323332, '170609', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362408517632, 0, 1274350362404323335, '170643', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362408517635, 0, 1274350362408517634, '170644', NULL, NULL, 0.400, 0.460, 0.000, 0.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362408517638, 0, 1274350362408517637, '170646', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362412711937, 0, 1274350362412711936, '170666', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362412711940, 0, 1274350362412711939, '170667', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362412711943, 0, 1274350362412711942, '170682', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362416906242, 0, 1274350362416906241, '170702', NULL, NULL, 1.750, 2.050, 0.000, 1.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362416906245, 0, 1274350362416906244, '170711', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362416906248, 0, 1274350362416906247, '170713', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362421100544, 0, 1274350362416906250, '170734', NULL, NULL, 2.860, 3.340, 0.000, 2.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362421100547, 0, 1274350362421100546, '170741', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362421100550, 0, 1274350362421100549, '170749', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362421100553, 0, 1274350362421100552, '170750', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362425294850, 0, 1274350362425294849, '170756', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362425294853, 0, 1274350362425294852, '170758', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362425294856, 0, 1274350362425294855, '170759', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362429489153, 0, 1274350362429489152, '170765', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362429489156, 0, 1274350362429489155, '170782', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362429489159, 0, 1274350362429489158, '170792', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362433683458, 0, 1274350362433683457, '170793', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362433683461, 0, 1274350362433683460, '170794', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362433683464, 0, 1274350362433683463, '170801', NULL, NULL, 2.710, 3.150, 0.000, 2.370, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362437877762, 0, 1274350362437877761, '170802', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362437877765, 0, 1274350362437877764, '170803', NULL, NULL, 4.830, 5.650, 0.000, 4.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362437877768, 0, 1274350362437877767, '170823', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362442072066, 0, 1274350362442072065, '170832', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362442072069, 0, 1274350362442072068, '170836', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362442072072, 0, 1274350362442072071, '170837', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362446266370, 0, 1274350362446266369, '170841', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362446266373, 0, 1274350362446266372, '170843', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362450460672, 0, 1274350362446266375, '170847', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362450460675, 0, 1274350362450460674, '170848', NULL, NULL, 1.320, 1.540, 0.000, 1.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362450460678, 0, 1274350362450460677, '170931', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362454654976, 0, 1274350362450460680, '170932', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362454654979, 0, 1274350362454654978, '170946', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362454654982, 0, 1274350362454654981, '170947', NULL, NULL, 8.780, 10.260, 0.000, 7.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362454654985, 0, 1274350362454654984, '171001', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362458849282, 0, 1274350362458849281, '171002', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362458849285, 0, 1274350362458849284, '171012', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362458849288, 0, 1274350362458849287, '171016', NULL, NULL, 5.060, 5.890, 0.000, 4.430, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362463043585, 0, 1274350362463043584, '171018', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362463043588, 0, 1274350362463043587, '171026', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362463043591, 0, 1274350362463043590, '171046', NULL, NULL, 1.430, 1.660, 0.000, 1.250, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362463043594, 0, 1274350362463043593, '171047', NULL, NULL, 1.490, 1.740, 0.000, 1.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362467237890, 0, 1274350362467237889, '171056', NULL, NULL, 4.170, 4.880, 0.000, 3.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362467237893, 0, 1274350362467237892, '171061', NULL, NULL, 1.950, 2.280, 0.000, 1.710, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362467237896, 0, 1274350362467237895, '171064', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362471432193, 0, 1274350362471432192, '171066', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362471432196, 0, 1274350362471432195, '171090', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362471432199, 0, 1274350362471432198, '171091', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362475626496, 0, 1274350362471432201, '171095', NULL, NULL, 0.320, 0.380, 0.000, 0.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362475626499, 0, 1274350362475626498, '171096', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362475626502, 0, 1274350362475626501, '171101', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362479820801, 0, 1274350362479820800, '171106', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362479820804, 0, 1274350362479820803, '171107', NULL, NULL, 1.430, 1.660, 0.000, 1.250, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362479820807, 0, 1274350362479820806, '171124', NULL, NULL, 8.780, 10.260, 0.000, 7.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362484015104, 0, 1274350362479820809, '171134', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362484015107, 0, 1274350362484015106, '171143', NULL, NULL, 12.750, 14.880, 0.000, 11.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362484015110, 0, 1274350362484015109, '171144', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362488209410, 0, 1274350362488209409, '171151', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362488209413, 0, 1274350362488209412, '171153', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362492403714, 0, 1274350362492403713, '171176', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362492403717, 0, 1274350362492403716, '171201', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362492403720, 0, 1274350362492403719, '171207', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362496598018, 0, 1274350362496598017, '171209', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362496598021, 0, 1274350362496598020, '171216', NULL, NULL, 18.680, 21.800, 0.000, 16.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362496598024, 0, 1274350362496598023, '171218', NULL, NULL, 13.180, 15.380, 0.000, 11.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362500792321, 0, 1274350362500792320, '171230', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362500792324, 0, 1274350362500792323, '171232', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362500792327, 0, 1274350362500792326, '171233', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362500792330, 0, 1274350362500792329, '171234', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362504986626, 0, 1274350362504986625, '171235', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362504986629, 0, 1274350362504986628, '171236', NULL, NULL, 215.380, 251.280, 0.000, 188.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362504986632, 0, 1274350362504986631, '171321', NULL, NULL, 4.170, 4.880, 0.000, 3.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362509180929, 0, 1274350362509180928, '171322', NULL, NULL, 4.970, 5.800, 0.000, 4.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362509180932, 0, 1274350362509180931, '171336', NULL, NULL, 3.520, 4.110, 0.000, 3.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362509180935, 0, 1274350362509180934, '171337', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362513375232, 0, 1274350362509180937, '171356', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362513375235, 0, 1274350362513375234, '171361', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362513375238, 0, 1274350362513375237, '171376', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362517569536, 0, 1274350362513375240, '171378', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362517569539, 0, 1274350362517569538, '171401', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362517569542, 0, 1274350362517569541, '171402', NULL, NULL, 2.860, 3.340, 0.000, 2.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362517569545, 0, 1274350362517569544, '171404', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362521763842, 0, 1274350362521763841, '171408', NULL, NULL, 7.030, 8.200, 0.000, 6.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362521763845, 0, 1274350362521763844, '171413', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362521763848, 0, 1274350362521763847, '171422', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362525958146, 0, 1274350362525958145, '171426', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362525958149, 0, 1274350362525958148, '171427', NULL, NULL, 32.970, 38.460, 0.000, 28.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362525958152, 0, 1274350362525958151, '171431', NULL, NULL, 59.340, 69.230, 0.000, 51.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362530152450, 0, 1274350362530152449, '171433', NULL, NULL, 37.370, 43.580, 0.000, 32.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362530152453, 0, 1274350362530152452, '171442', NULL, NULL, 112.970, 131.800, 0.000, 98.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362534346753, 0, 1274350362534346752, '171453', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362534346756, 0, 1274350362534346755, '171462', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362534346759, 0, 1274350362534346758, '171466', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362538541056, 0, 1274350362534346761, '171476', NULL, NULL, 13.180, 15.380, 0.000, 11.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362538541059, 0, 1274350362538541058, '171477', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362538541062, 0, 1274350362538541061, '171707', NULL, NULL, 11.650, 13.580, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362538541065, 0, 1274350362538541064, '171715', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362542735362, 0, 1274350362542735361, '171716', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362542735365, 0, 1274350362542735364, '171720', NULL, NULL, 25.940, 30.260, 0.000, 22.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362542735368, 0, 1274350362542735367, '171725', NULL, NULL, 9.680, 11.280, 0.000, 8.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362546929665, 0, 1274350362546929664, '171726', NULL, NULL, 12.750, 14.880, 0.000, 11.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362546929668, 0, 1274350362546929667, '171727', NULL, NULL, 30.770, 35.890, 0.000, 26.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362546929671, 0, 1274350362546929670, '171732', NULL, NULL, 8.780, 10.260, 0.000, 7.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362551123969, 0, 1274350362551123968, '171733', NULL, NULL, 9.780, 11.420, 0.000, 8.550, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362551123972, 0, 1274350362551123971, '171734', NULL, NULL, 5.710, 6.660, 0.000, 5.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362551123975, 0, 1274350362551123974, '171736', NULL, NULL, 13.540, 15.800, 0.000, 11.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362555318272, 0, 1274350362551123977, '171737', NULL, NULL, 15.830, 18.460, 0.000, 13.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362555318275, 0, 1274350362555318274, '171751', NULL, NULL, 57.140, 66.660, 0.000, 50.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362555318278, 0, 1274350362555318277, '171805', NULL, NULL, 26.370, 30.770, 0.000, 23.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362559512577, 0, 1274350362559512576, '171806', NULL, NULL, 29.890, 34.880, 0.000, 26.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362559512580, 0, 1274350362559512579, '171811', NULL, NULL, 26.370, 30.770, 0.000, 23.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362559512583, 0, 1274350362559512582, '171813', NULL, NULL, 10.770, 12.570, 0.000, 9.430, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362559512586, 0, 1274350362559512585, '171815', NULL, NULL, 30.770, 35.890, 0.000, 26.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362563706882, 0, 1274350362563706881, '171817', NULL, NULL, 34.510, 40.260, 0.000, 30.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362563706885, 0, 1274350362563706884, '171822', NULL, NULL, 10.770, 12.570, 0.000, 9.430, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362563706888, 0, 1274350362563706887, '171824', NULL, NULL, 13.600, 15.880, 0.000, 11.910, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362567901185, 0, 1274350362567901184, '171831', NULL, NULL, 7.940, 9.260, 0.000, 6.940, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362567901188, 0, 1274350362567901187, '171832', NULL, NULL, 9.890, 11.540, 0.000, 8.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362567901191, 0, 1274350362567901190, '171833', NULL, NULL, 32.970, 38.460, 0.000, 28.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362567901194, 0, 1274350362567901193, '171834', NULL, NULL, 32.970, 38.460, 0.000, 28.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362572095490, 0, 1274350362572095489, '171835', NULL, NULL, 40.000, 46.660, 0.000, 35.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362572095493, 0, 1274350362572095492, '171836', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362572095496, 0, 1274350362572095495, '171841', NULL, NULL, 52.520, 61.280, 0.000, 45.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362576289793, 0, 1274350362576289792, '171847', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362576289796, 0, 1274350362576289795, '171848', NULL, NULL, 82.860, 96.660, 0.000, 72.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362576289799, 0, 1274350362576289798, '171852', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362580484096, 0, 1274350362576289801, '171856', NULL, NULL, 14.060, 16.420, 0.000, 12.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362580484099, 0, 1274350362580484098, '171858', NULL, NULL, 30.770, 35.890, 0.000, 26.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362580484102, 0, 1274350362580484101, '171860', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362580484105, 0, 1274350362580484104, '171865', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362584678402, 0, 1274350362584678401, '171871', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362584678405, 0, 1274350362584678404, '171872', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362584678408, 0, 1274350362584678407, '171874', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362588872704, 0, 1274350362584678410, '171877', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362588872707, 0, 1274350362588872706, '171888', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362588872710, 0, 1274350362588872709, '171895', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362588872713, 0, 1274350362588872712, '171901', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362593067009, 0, 1274350362593067008, '171902', NULL, NULL, 20.050, 23.380, 0.000, 17.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362593067012, 0, 1274350362593067011, '171905', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362593067015, 0, 1274350362593067014, '171906', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362597261312, 0, 1274350362593067017, '171942', NULL, NULL, 21.090, 24.620, 0.000, 18.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362597261315, 0, 1274350362597261314, '171945', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362597261318, 0, 1274350362597261317, '171946', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362601455616, 0, 1274350362597261320, '171947', NULL, NULL, 35.170, 41.030, 0.000, 30.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362601455619, 0, 1274350362601455618, '171976', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362601455622, 0, 1274350362601455621, '171981', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362601455625, 0, 1274350362601455624, '172001', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362605649922, 0, 1274350362605649921, '172004', NULL, NULL, 9.680, 11.280, 0.000, 8.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362605649925, 0, 1274350362605649924, '172014', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362605649928, 0, 1274350362605649927, '172015', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362609844225, 0, 1274350362609844224, '172016', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362609844228, 0, 1274350362609844227, '172022', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362609844231, 0, 1274350362609844230, '172024', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362614038529, 0, 1274350362614038528, '172026', NULL, NULL, 9.230, 10.770, 0.000, 8.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362614038532, 0, 1274350362614038531, '172101', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362614038535, 0, 1274350362614038534, '172103', NULL, NULL, 4.830, 5.650, 0.000, 4.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362618232833, 0, 1274350362618232832, '172108', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362618232836, 0, 1274350362618232835, '172109', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362618232839, 0, 1274350362618232838, '172118', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362622427136, 0, 1274350362618232841, '172122', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362622427139, 0, 1274350362622427138, '172123', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362622427142, 0, 1274350362622427141, '172124', NULL, NULL, 3.740, 4.350, 0.000, 3.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362622427145, 0, 1274350362622427144, '172125', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362626621442, 0, 1274350362626621441, '172126', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362626621445, 0, 1274350362626621444, '172135', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362626621448, 0, 1274350362626621447, '172142', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362630815744, 0, 1274350362626621450, '172147', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362630815747, 0, 1274350362630815746, '172156', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362630815750, 0, 1274350362630815749, '172157', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362630815753, 0, 1274350362630815752, '172158', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362635010049, 0, 1274350362635010048, '172159', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362635010052, 0, 1274350362635010051, '172160', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362635010055, 0, 1274350362635010054, '172161', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362639204352, 0, 1274350362635010057, '172162', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362639204355, 0, 1274350362639204354, '172163', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362639204358, 0, 1274350362639204357, '172164', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362639204361, 0, 1274350362639204360, '172166', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362643398657, 0, 1274350362643398656, '172167', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362643398660, 0, 1274350362643398659, '172169', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362643398663, 0, 1274350362643398662, '172195', NULL, NULL, 20.050, 23.380, 0.000, 17.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362643398666, 0, 1274350362643398665, '172197', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362647592961, 0, 1274350362647592960, '172204', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362647592964, 0, 1274350362647592963, '172206', NULL, NULL, 26.600, 31.030, 0.000, 23.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362647592967, 0, 1274350362647592966, '172211', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362647592970, 0, 1274350362647592969, '172212', NULL, NULL, 1.430, 1.660, 0.000, 1.250, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362651787266, 0, 1274350362651787265, '172213', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362651787269, 0, 1274350362651787268, '172216', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362651787272, 0, 1274350362651787271, '172218', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362655981568, 0, 1274350362651787274, '172226', NULL, NULL, 2.830, 3.310, 0.000, 2.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362655981571, 0, 1274350362655981570, '172246', NULL, NULL, 13.180, 15.380, 0.000, 11.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362655981574, 0, 1274350362655981573, '172251', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362660175872, 0, 1274350362655981576, '172252', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362660175875, 0, 1274350362660175874, '172253', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362660175878, 0, 1274350362660175877, '172254', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362664370177, 0, 1274350362664370176, '172255', NULL, NULL, 4.770, 5.570, 0.000, 4.170, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362664370180, 0, 1274350362664370179, '172261', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362664370183, 0, 1274350362664370182, '172262', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362668564481, 0, 1274350362668564480, '172263', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362668564484, 0, 1274350362668564483, '172271', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362668564487, 0, 1274350362668564486, '172292', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362672758785, 0, 1274350362672758784, '172294', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362672758788, 0, 1274350362672758787, '172303', NULL, NULL, 3.080, 3.580, 0.000, 2.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362672758791, 0, 1274350362672758790, '172312', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362676953089, 0, 1274350362676953088, '172314', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362676953092, 0, 1274350362676953091, '172316', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362676953095, 0, 1274350362676953094, '172318', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362681147393, 0, 1274350362681147392, '172319', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362681147396, 0, 1274350362681147395, '172321', NULL, NULL, 1.750, 2.050, 0.000, 1.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362681147399, 0, 1274350362681147398, '172323', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362681147402, 0, 1274350362681147401, '172324', NULL, NULL, 2.860, 3.340, 0.000, 2.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362685341698, 0, 1274350362685341697, '172326', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362685341701, 0, 1274350362685341700, '172328', NULL, NULL, 2.420, 2.820, 0.000, 2.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362685341704, 0, 1274350362685341703, '172331', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362689536001, 0, 1274350362689536000, '172334', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362689536004, 0, 1274350362689536003, '172335', NULL, NULL, 2.420, 2.820, 0.000, 2.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362689536007, 0, 1274350362689536006, '172338', NULL, NULL, 2.420, 2.820, 0.000, 2.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362693730306, 0, 1274350362693730305, '172342', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362693730309, 0, 1274350362693730308, '172347', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362693730312, 0, 1274350362693730311, '172352', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362697924610, 0, 1274350362697924609, '172358', NULL, NULL, 1.370, 1.580, 0.000, 1.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362697924613, 0, 1274350362697924612, '172360', NULL, NULL, 1.890, 2.200, 0.000, 1.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362702118913, 0, 1274350362702118912, '172362', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362702118916, 0, 1274350362702118915, '172365', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362702118919, 0, 1274350362702118918, '172366', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362731479042, 0, 1274350362731479041, '172370', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362731479045, 0, 1274350362731479044, '172372', NULL, NULL, 0.400, 0.460, 0.000, 0.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362735673344, 0, 1274350362731479047, '172376', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362735673347, 0, 1274350362735673346, '172383', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362735673350, 0, 1274350362735673349, '172401', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362739867648, 0, 1274350362735673352, '172405', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362739867651, 0, 1274350362739867650, '172406', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362739867654, 0, 1274350362739867653, '172408', NULL, NULL, 0.520, 0.620, 0.000, 0.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362744061952, 0, 1274350362739867656, '172421', NULL, NULL, 2.420, 2.820, 0.000, 2.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362744061955, 0, 1274350362744061954, '172431', NULL, NULL, 11.290, 13.180, 0.000, 9.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362744061958, 0, 1274350362744061957, '172432', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362748256257, 0, 1274350362748256256, '172435', NULL, NULL, 18.780, 21.920, 0.000, 16.450, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362748256260, 0, 1274350362748256259, '172436', NULL, NULL, 23.080, 26.920, 0.000, 20.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362748256263, 0, 1274350362748256262, '172503', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362752450560, 0, 1274350362748256265, '172504', NULL, NULL, 2.170, 2.540, 0.000, 1.910, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362752450563, 0, 1274350362752450562, '172506', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362752450566, 0, 1274350362752450565, '172511', NULL, NULL, 0.110, 0.120, 0.000, 0.090, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362756644864, 0, 1274350362752450568, '172521', NULL, NULL, 0.350, 0.420, 0.000, 0.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362756644867, 0, 1274350362756644866, '172531', NULL, NULL, 2.510, 2.920, 0.000, 2.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362756644870, 0, 1274350362756644869, '172535', NULL, NULL, 3.520, 4.110, 0.000, 3.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362760839168, 0, 1274350362756644872, '172541', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362760839171, 0, 1274350362760839170, '172542', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362760839174, 0, 1274350362760839173, '172546', NULL, NULL, 1.580, 1.850, 0.000, 1.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362765033472, 0, 1274350362760839176, '172547', NULL, NULL, 3.520, 4.110, 0.000, 3.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362765033475, 0, 1274350362765033474, '172554', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362765033478, 0, 1274350362765033477, '172558', NULL, NULL, 4.830, 5.650, 0.000, 4.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362765033481, 0, 1274350362765033480, '172561', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362769227778, 0, 1274350362769227777, '172562', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362769227781, 0, 1274350362769227780, '172563', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362769227784, 0, 1274350362769227783, '172564', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362773422080, 0, 1274350362769227786, '172566', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362773422083, 0, 1274350362773422082, '172567', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362773422086, 0, 1274350362773422085, '172571', NULL, NULL, 2.310, 2.690, 0.000, 2.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362773422089, 0, 1274350362773422088, '172572', NULL, NULL, 2.750, 3.200, 0.000, 2.400, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362777616386, 0, 1274350362777616385, '172575', NULL, NULL, 1.750, 2.050, 0.000, 1.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362777616389, 0, 1274350362777616388, '172576', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362777616392, 0, 1274350362777616391, '172580', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362781810689, 0, 1274350362781810688, '172600', NULL, NULL, 0.150, 0.180, 0.000, 0.140, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362781810692, 0, 1274350362781810691, '172601', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362781810695, 0, 1274350362781810694, '172611', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362786004994, 0, 1274350362786004993, '172612', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362786004997, 0, 1274350362786004996, '172613', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362786005000, 0, 1274350362786004999, '172615', NULL, NULL, 0.320, 0.380, 0.000, 0.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362790199298, 0, 1274350362790199297, '172617', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362790199301, 0, 1274350362790199300, '172618', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362794393600, 0, 1274350362790199303, '172619', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362794393603, 0, 1274350362794393602, '172621', NULL, NULL, 28.570, 33.340, 0.000, 25.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362794393606, 0, 1274350362794393605, '172622', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362798587904, 0, 1274350362794393608, '172623', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362798587907, 0, 1274350362798587906, '172701', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362798587910, 0, 1274350362798587909, '172702', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362798587913, 0, 1274350362798587912, '172706', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362802782210, 0, 1274350362802782209, '172708', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362802782213, 0, 1274350362802782212, '172716', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362802782216, 0, 1274350362802782215, '172717', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362806976514, 0, 1274350362806976513, '172722', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362806976517, 0, 1274350362806976516, '172737', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362806976520, 0, 1274350362806976519, '172738', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362811170817, 0, 1274350362811170816, '172746', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362811170820, 0, 1274350362811170819, '172748', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362811170823, 0, 1274350362811170822, '172754', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362815365120, 0, 1274350362811170825, '172758', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362815365123, 0, 1274350362815365122, '172762', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362815365126, 0, 1274350362815365125, '172767', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362815365129, 0, 1274350362815365128, '172771', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362819559426, 0, 1274350362819559425, '172773', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362819559429, 0, 1274350362819559428, '172774', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362819559432, 0, 1274350362819559431, '172804', NULL, NULL, 6.350, 7.420, 0.000, 5.550, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362823753728, 0, 1274350362819559434, '172806', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362823753731, 0, 1274350362823753730, '172811', NULL, NULL, 6.770, 7.890, 0.000, 5.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362823753734, 0, 1274350362823753733, '172822', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362827948032, 0, 1274350362823753736, '172830', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362827948035, 0, 1274350362827948034, '172832', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362827948038, 0, 1274350362827948037, '172837', NULL, NULL, 6.600, 7.690, 0.000, 5.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362832142336, 0, 1274350362827948040, '172842', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362832142339, 0, 1274350362832142338, '172844', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362832142342, 0, 1274350362832142341, '172849', NULL, NULL, 6.370, 7.430, 0.000, 5.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362836336640, 0, 1274350362832142344, '172850', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362836336643, 0, 1274350362836336642, '172857', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362836336646, 0, 1274350362836336645, '172858', NULL, NULL, 3.080, 3.580, 0.000, 2.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362840530944, 0, 1274350362836336648, '172871', NULL, NULL, 2.860, 3.340, 0.000, 2.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362840530947, 0, 1274350362840530946, '172872', NULL, NULL, 5.320, 6.200, 0.000, 4.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362840530950, 0, 1274350362840530949, '172873', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362844725248, 0, 1274350362840530952, '172881', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362844725251, 0, 1274350362844725250, '172882', NULL, NULL, 2.860, 3.340, 0.000, 2.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362844725254, 0, 1274350362844725253, '172936', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362844725257, 0, 1274350362844725256, '172937', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362848919554, 0, 1274350362848919553, '172939', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362848919557, 0, 1274350362848919556, '172940', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362848919560, 0, 1274350362848919559, '172941', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362853113857, 0, 1274350362853113856, '172944', NULL, NULL, 0.050, 0.050, 0.000, 0.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362853113860, 0, 1274350362853113859, '172945', NULL, NULL, 0.060, 0.060, 0.000, 0.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362853113863, 0, 1274350362853113862, '172946', NULL, NULL, 9.890, 11.540, 0.000, 8.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362857308160, 0, 1274350362853113865, '172952', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362857308163, 0, 1274350362857308162, '172971', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362857308166, 0, 1274350362857308165, '172974', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362857308169, 0, 1274350362857308168, '172979', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362861502466, 0, 1274350362861502465, '173104', NULL, NULL, 0.320, 0.380, 0.000, 0.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362861502469, 0, 1274350362861502468, '173129', NULL, NULL, 1.320, 1.540, 0.000, 1.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362861502472, 0, 1274350362861502471, '173131', NULL, NULL, 0.820, 0.950, 0.000, 0.710, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362865696770, 0, 1274350362865696769, '173140', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362865696773, 0, 1274350362865696772, '173142', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362869891072, 0, 1274350362865696775, '173171', NULL, NULL, 8.780, 10.260, 0.000, 7.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362869891075, 0, 1274350362869891074, '173175', NULL, NULL, 9.890, 11.540, 0.000, 8.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362869891078, 0, 1274350362869891077, '173177', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362874085376, 0, 1274350362869891080, '173202', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362874085379, 0, 1274350362874085378, '173218', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362874085382, 0, 1274350362874085381, '173232', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362874085385, 0, 1274350362874085384, '173236', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362878279682, 0, 1274350362878279681, '173238', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362878279685, 0, 1274350362878279684, '173239', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362878279688, 0, 1274350362878279687, '173244', NULL, NULL, 1.320, 1.540, 0.000, 1.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362882473986, 0, 1274350362882473985, '173246', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362882473989, 0, 1274350362882473988, '173259', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362882473992, 0, 1274350362882473991, '173262', NULL, NULL, 0.980, 1.150, 0.000, 0.860, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362886668290, 0, 1274350362886668289, '173263', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362886668293, 0, 1274350362886668292, '173266', NULL, NULL, 0.880, 1.030, 0.000, 0.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362886668296, 0, 1274350362886668295, '173269', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362890862594, 0, 1274350362890862593, '173271', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362890862597, 0, 1274350362890862596, '173272', NULL, NULL, 3.080, 3.580, 0.000, 2.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362890862600, 0, 1274350362890862599, '173280', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362895056897, 0, 1274350362895056896, '173305', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362895056900, 0, 1274350362895056899, '173329', NULL, NULL, 0.350, 0.420, 0.000, 0.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362895056903, 0, 1274350362895056902, '173331', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362899251201, 0, 1274350362899251200, '173353', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362899251204, 0, 1274350362899251203, '173355', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362899251207, 0, 1274350362899251206, '173356', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362903445504, 0, 1274350362899251209, '173361', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362903445507, 0, 1274350362903445506, '173362', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362903445510, 0, 1274350362903445509, '173363', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362907639810, 0, 1274350362907639809, '173364', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362907639813, 0, 1274350362907639812, '173365', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362911834112, 0, 1274350362907639815, '173366', NULL, NULL, 0.320, 0.380, 0.000, 0.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362911834115, 0, 1274350362911834114, '173367', NULL, NULL, 3.950, 4.620, 0.000, 3.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362911834118, 0, 1274350362911834117, '173381', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362916028417, 0, 1274350362916028416, '173383', NULL, NULL, 9.230, 10.770, 0.000, 8.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362916028420, 0, 1274350362916028419, '173386', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362916028423, 0, 1274350362916028422, '173394', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362920222722, 0, 1274350362920222721, '173396', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362920222725, 0, 1274350362920222724, '173398', NULL, NULL, 1.320, 1.540, 0.000, 1.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362924417024, 0, 1274350362920222727, '173401', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362924417027, 0, 1274350362924417026, '173402', NULL, NULL, 0.020, 0.030, 0.000, 0.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362928611328, 0, 1274350362924417029, '173403', NULL, NULL, 0.060, 0.080, 0.000, 0.060, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362928611331, 0, 1274350362928611330, '173409', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362928611334, 0, 1274350362928611333, '173411', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362932805633, 0, 1274350362932805632, '173412', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362932805636, 0, 1274350362932805635, '173451', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362932805639, 0, 1274350362932805638, '173459', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362936999938, 0, 1274350362936999937, '173461', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362936999941, 0, 1274350362936999940, '173471', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362941194240, 0, 1274350362936999943, '173472', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362941194243, 0, 1274350362941194242, '173473', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362941194246, 0, 1274350362941194245, '173474', NULL, NULL, 3.080, 3.580, 0.000, 2.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362945388545, 0, 1274350362945388544, '173601', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362945388548, 0, 1274350362945388547, '173602', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362945388551, 0, 1274350362945388550, '173603', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362949582849, 0, 1274350362949582848, '173604', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362949582852, 0, 1274350362949582851, '173605', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362953777152, 0, 1274350362949582854, '173606', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362953777155, 0, 1274350362953777154, '173612', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362953777158, 0, 1274350362953777157, '173613', NULL, NULL, 0.980, 1.150, 0.000, 0.860, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362957971456, 0, 1274350362953777160, '173616', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362957971459, 0, 1274350362957971458, '173626', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362957971462, 0, 1274350362957971461, '173627', NULL, NULL, 0.020, 0.030, 0.000, 0.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362962165762, 0, 1274350362962165761, '173628', NULL, NULL, 0.020, 0.020, 0.000, 0.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362962165765, 0, 1274350362962165764, '173632', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362966360064, 0, 1274350362962165767, '173633', NULL, NULL, 3.740, 4.350, 0.000, 3.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362966360067, 0, 1274350362966360066, '173637', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362966360070, 0, 1274350362966360069, '173638', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362970554368, 0, 1274350362966360072, '173641', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362970554371, 0, 1274350362970554370, '173651', NULL, NULL, 1.750, 2.050, 0.000, 1.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362970554374, 0, 1274350362970554373, '173652', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362974748672, 0, 1274350362970554376, '173653', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362974748675, 0, 1274350362974748674, '173654', NULL, NULL, 1.980, 2.310, 0.000, 1.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362978942976, 0, 1274350362974748677, '173656', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362978942979, 0, 1274350362978942978, '173657', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362978942982, 0, 1274350362978942981, '173659', NULL, NULL, 1.750, 2.050, 0.000, 1.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362983137280, 0, 1274350362978942984, '173662', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362983137283, 0, 1274350362983137282, '173666', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362983137286, 0, 1274350362983137285, '173667', NULL, NULL, 8.780, 10.260, 0.000, 7.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362987331585, 0, 1274350362987331584, '173668', NULL, NULL, 19.780, 23.080, 0.000, 17.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362987331588, 0, 1274350362987331587, '173674', NULL, NULL, 5.490, 6.420, 0.000, 4.820, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362987331591, 0, 1274350362987331590, '173675', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362991525889, 0, 1274350362991525888, '173684', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362991525892, 0, 1274350362991525891, '173685', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362991525895, 0, 1274350362991525894, '173692', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362995720193, 0, 1274350362995720192, '173697', NULL, NULL, 6.150, 7.180, 0.000, 5.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362995720196, 0, 1274350362995720195, '174008', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362995720199, 0, 1274350362995720198, '174012', NULL, NULL, 36.920, 43.080, 0.000, 32.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362999914497, 0, 1274350362999914496, '174028', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362999914500, 0, 1274350362999914499, '174029', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350362999914503, 0, 1274350362999914502, '174040', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363004108802, 0, 1274350363004108801, '174045', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363004108805, 0, 1274350363004108804, '174048', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363004108808, 0, 1274350363004108807, '174053', NULL, NULL, 0.050, 0.050, 0.000, 0.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363008303106, 0, 1274350363008303105, '174058', NULL, NULL, 0.220, 0.260, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363008303109, 0, 1274350363008303108, '174061', NULL, NULL, 2.630, 3.080, 0.000, 2.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363008303112, 0, 1274350363008303111, '174063', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363012497410, 0, 1274350363012497409, '174064', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363016691713, 0, 1274350363016691712, '174071', NULL, NULL, 0.060, 0.080, 0.000, 0.060, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363016691716, 0, 1274350363016691715, '174072', NULL, NULL, 0.320, 0.380, 0.000, 0.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363020886016, 0, 1274350363016691718, '174073', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363142520836, 0, 1274350363142520835, '174311', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363142520839, 0, 1274350363142520838, '174312', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363146715137, 0, 1274350363146715136, '174313', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363146715140, 0, 1274350363146715139, '174316', NULL, NULL, 1.090, 1.280, 0.000, 0.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363146715143, 0, 1274350363146715142, '174319', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363150909440, 0, 1274350363146715145, '174351', NULL, NULL, 0.770, 0.890, 0.000, 0.680, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363150909443, 0, 1274350363150909442, '174356', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363150909446, 0, 1274350363150909445, '174502', NULL, NULL, 19.780, 23.080, 0.000, 17.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363155103744, 0, 1274350363150909448, '174503', NULL, NULL, 19.780, 23.080, 0.000, 17.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363155103747, 0, 1274350363155103746, '174510', NULL, NULL, 7.910, 9.230, 0.000, 6.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363155103750, 0, 1274350363155103749, '174511', NULL, NULL, 8.780, 10.260, 0.000, 7.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363159298048, 0, 1274350363155103752, '174512', NULL, NULL, 8.780, 10.260, 0.000, 7.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363159298051, 0, 1274350363159298050, '174514', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363159298054, 0, 1274350363159298053, '174515', NULL, NULL, 9.890, 11.540, 0.000, 8.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363159298057, 0, 1274350363159298056, '174516', NULL, NULL, 7.910, 9.230, 0.000, 6.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363163492354, 0, 1274350363163492353, '174521', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363163492357, 0, 1274350363163492356, '174522', NULL, NULL, 21.540, 25.120, 0.000, 18.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363163492360, 0, 1274350363163492359, '174525', NULL, NULL, 30.770, 35.890, 0.000, 26.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363167686658, 0, 1274350363167686657, '174526', NULL, NULL, 20.260, 23.650, 0.000, 17.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363167686661, 0, 1274350363167686660, '174533', NULL, NULL, 11.430, 13.340, 0.000, 10.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363167686664, 0, 1274350363167686663, '174536', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363171880962, 0, 1274350363171880961, '174548', NULL, NULL, 7.690, 8.970, 0.000, 6.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363171880965, 0, 1274350363171880964, '174551', NULL, NULL, 6.050, 7.050, 0.000, 5.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363171880968, 0, 1274350363171880967, '174552', NULL, NULL, 8.460, 9.880, 0.000, 7.400, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363176075265, 0, 1274350363176075264, '174553', NULL, NULL, 6.050, 7.050, 0.000, 5.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363176075268, 0, 1274350363176075267, '174554', NULL, NULL, 8.460, 9.880, 0.000, 7.400, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363176075271, 0, 1274350363176075270, '174555', NULL, NULL, 105.490, 123.080, 0.000, 92.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363180269568, 0, 1274350363176075273, '174562', NULL, NULL, 23.080, 26.920, 0.000, 20.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363180269571, 0, 1274350363180269570, '174563', NULL, NULL, 30.770, 35.890, 0.000, 26.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363180269574, 0, 1274350363180269573, '174564', NULL, NULL, 32.970, 38.460, 0.000, 28.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363184463872, 0, 1274350363180269576, '174570', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363184463875, 0, 1274350363184463874, '174576', NULL, NULL, 417.580, 487.180, 0.000, 365.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363184463878, 0, 1274350363184463877, '174577', NULL, NULL, 373.630, 435.890, 0.000, 326.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363188658178, 0, 1274350363188658177, '174580', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363188658181, 0, 1274350363188658180, '174592', NULL, NULL, 36.260, 42.310, 0.000, 31.740, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363188658184, 0, 1274350363188658183, '174606', NULL, NULL, 37.370, 43.580, 0.000, 32.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363192852482, 0, 1274350363192852481, '174614', NULL, NULL, 20.880, 24.350, 0.000, 18.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363192852485, 0, 1274350363192852484, '174616', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363192852488, 0, 1274350363192852487, '174617', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363197046785, 0, 1274350363197046784, '174636', NULL, NULL, 296.710, 346.150, 0.000, 259.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363197046788, 0, 1274350363197046787, '174641', NULL, NULL, 175.600, 204.880, 0.000, 153.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363197046791, 0, 1274350363197046790, '174642', NULL, NULL, 219.550, 256.150, 0.000, 192.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363201241088, 0, 1274350363197046793, '174671', NULL, NULL, 65.940, 76.920, 0.000, 57.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363201241091, 0, 1274350363201241090, '174672', NULL, NULL, 69.890, 81.540, 0.000, 61.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363201241094, 0, 1274350363201241093, '174673', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363205435393, 0, 1274350363205435392, '174677', NULL, NULL, 549.450, 641.030, 0.000, 480.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363205435396, 0, 1274350363205435395, '174682', NULL, NULL, 439.550, 512.820, 0.000, 384.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363205435399, 0, 1274350363205435398, '174691', NULL, NULL, 17.580, 20.510, 0.000, 15.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363209629697, 0, 1274350363209629696, '174692', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363209629700, 0, 1274350363209629699, '174701', NULL, NULL, 84.830, 98.970, 0.000, 74.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363209629703, 0, 1274350363209629702, '174702', NULL, NULL, 84.830, 98.970, 0.000, 74.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363213824001, 0, 1274350363213824000, '174706', NULL, NULL, 180.220, 210.260, 0.000, 157.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363213824004, 0, 1274350363213824003, '174707', NULL, NULL, 180.220, 210.260, 0.000, 157.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363218018304, 0, 1274350363213824006, '174708', NULL, NULL, 549.450, 641.030, 0.000, 480.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363218018307, 0, 1274350363218018306, '174712', NULL, NULL, 2087.910, 2435.890, 0.000, 1826.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363218018310, 0, 1274350363218018309, '174722', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363222212608, 0, 1274350363218018312, '174724', NULL, NULL, 21.090, 24.620, 0.000, 18.460, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363222212611, 0, 1274350363222212610, '174728', NULL, NULL, 9.890, 11.540, 0.000, 8.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363222212614, 0, 1274350363222212613, '174732', NULL, NULL, 142.860, 166.660, 0.000, 125.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363222212617, 0, 1274350363222212616, '174761', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363226406914, 0, 1274350363226406913, '174762', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363226406917, 0, 1274350363226406916, '174763', NULL, NULL, 9.230, 10.770, 0.000, 8.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363226406920, 0, 1274350363226406919, '174764', NULL, NULL, 10.980, 12.820, 0.000, 9.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363230601218, 0, 1274350363230601217, '174771', NULL, NULL, 37.250, 43.460, 0.000, 32.600, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363230601221, 0, 1274350363230601220, '175003', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363230601224, 0, 1274350363230601223, '175004', NULL, NULL, 83.520, 97.430, 0.000, 73.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363234795521, 0, 1274350363234795520, '175024', NULL, NULL, 142.860, 166.660, 0.000, 125.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363234795524, 0, 1274350363234795523, '175025', NULL, NULL, 142.860, 166.660, 0.000, 125.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363234795527, 0, 1274350363234795526, '175026', NULL, NULL, 208.780, 243.580, 0.000, 182.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363238989825, 0, 1274350363238989824, '175091', NULL, NULL, 109.890, 128.200, 0.000, 96.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363238989828, 0, 1274350363238989827, '175101', NULL, NULL, 408.780, 476.920, 0.000, 357.690, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363238989831, 0, 1274350363238989830, '175102', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363243184128, 0, 1274350363238989833, '175522', NULL, NULL, 2087.910, 2435.890, 0.000, 1826.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363243184131, 0, 1274350363243184130, '1901', NULL, NULL, 11.650, 13.580, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363243184134, 0, 1274350363243184133, '190101', NULL, NULL, 0.150, 0.170, 0.000, 0.120, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363247378433, 0, 1274350363247378432, '190102', NULL, NULL, 0.320, 0.380, 0.000, 0.290, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363247378436, 0, 1274350363247378435, '190103', NULL, NULL, 0.250, 0.280, 0.000, 0.220, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363247378439, 0, 1274350363247378438, '190104', NULL, NULL, 0.230, 0.280, 0.000, 0.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363251572738, 0, 1274350363251572737, '190106', NULL, NULL, 2.200, 2.570, 0.000, 1.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363251572741, 0, 1274350363251572740, '190107', NULL, NULL, 1.650, 1.920, 0.000, 1.450, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363255767040, 0, 1274350363251572743, '190108', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363255767043, 0, 1274350363255767042, '190109', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363255767046, 0, 1274350363255767045, '190110', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363259961344, 0, 1274350363255767048, '190111', NULL, NULL, 0.710, 0.820, 0.000, 0.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363259961347, 0, 1274350363259961346, '190112', NULL, NULL, 0.980, 1.150, 0.000, 0.860, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363259961350, 0, 1274350363259961349, '190113', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363259961353, 0, 1274350363259961352, '190115', NULL, NULL, 0.350, 0.420, 0.000, 0.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363264155650, 0, 1274350363264155649, '190121', NULL, NULL, 0.720, 0.850, 0.000, 0.630, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363264155653, 0, 1274350363264155652, '190122', NULL, NULL, 1.170, 1.350, 0.000, 1.020, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363264155656, 0, 1274350363264155655, '190131', NULL, NULL, 0.720, 0.850, 0.000, 0.630, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363268349954, 0, 1274350363268349953, '190132', NULL, NULL, 2.090, 2.430, 0.000, 1.830, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363268349957, 0, 1274350363268349956, '190133', NULL, NULL, 3.520, 4.110, 0.000, 3.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363268349960, 0, 1274350363268349959, '190134', NULL, NULL, 4.400, 5.120, 0.000, 3.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363272544258, 0, 1274350363272544257, '190135', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363272544261, 0, 1274350363272544260, '190136', NULL, NULL, 3.740, 4.350, 0.000, 3.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363272544264, 0, 1274350363272544263, '190201', NULL, NULL, 7.030, 8.200, 0.000, 6.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363276738561, 0, 1274350363276738560, '190202', NULL, NULL, 7.030, 8.200, 0.000, 6.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363276738564, 0, 1274350363276738563, '190203', NULL, NULL, 7.030, 8.200, 0.000, 6.150, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363276738567, 0, 1274350363276738566, '190204', NULL, NULL, 7.910, 9.230, 0.000, 6.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363280932864, 0, 1274350363276738569, '190205', NULL, NULL, 7.910, 9.230, 0.000, 6.920, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363280932867, 0, 1274350363280932866, '190206', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363280932870, 0, 1274350363280932869, '190207', NULL, NULL, 4.290, 5.000, 0.000, 3.750, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363280932873, 0, 1274350363280932872, '190208', NULL, NULL, 4.290, 5.000, 0.000, 3.750, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363285127170, 0, 1274350363285127169, '190209', NULL, NULL, 4.290, 5.000, 0.000, 3.750, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363285127173, 0, 1274350363285127172, '190210', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363285127176, 0, 1274350363285127175, '190211', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363289321473, 0, 1274350363289321472, '190212', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363289321476, 0, 1274350363289321475, '190213', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363289321479, 0, 1274350363289321478, '190214', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363293515777, 0, 1274350363293515776, '190215', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363293515780, 0, 1274350363293515779, '190216', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363293515783, 0, 1274350363293515782, '190217', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363297710080, 0, 1274350363293515785, '190218', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363297710083, 0, 1274350363297710082, '190219', NULL, NULL, 4.620, 5.380, 0.000, 4.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363297710086, 0, 1274350363297710085, '190221', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363301904384, 0, 1274350363297710088, '190222', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363301904387, 0, 1274350363301904386, '190223', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363301904390, 0, 1274350363301904389, '190224', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363301904393, 0, 1274350363301904392, '190225', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363306098689, 0, 1274350363306098688, '190231', NULL, NULL, 11.860, 13.850, 0.000, 10.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363306098692, 0, 1274350363306098691, '190232', NULL, NULL, 11.860, 13.850, 0.000, 10.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363306098695, 0, 1274350363306098694, '190233', NULL, NULL, 11.860, 13.850, 0.000, 10.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363310292992, 0, 1274350363306098697, '190234', NULL, NULL, 11.860, 13.850, 0.000, 10.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363310292995, 0, 1274350363310292994, '190235', NULL, NULL, 11.860, 13.850, 0.000, 10.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363310292998, 0, 1274350363310292997, '190261', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363314487296, 0, 1274350363310293000, '190262', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363314487299, 0, 1274350363314487298, '190263', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363314487302, 0, 1274350363314487301, '190264', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363314487305, 0, 1274350363314487304, '190265', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363318681602, 0, 1274350363318681601, '190266', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363318681605, 0, 1274350363318681604, '190267', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363318681608, 0, 1274350363318681607, '190268', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363322875906, 0, 1274350363322875905, '190270', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363322875909, 0, 1274350363322875908, '190271', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363322875912, 0, 1274350363322875911, '190272', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363327070210, 0, 1274350363327070209, '190273', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363327070213, 0, 1274350363327070212, '190274', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363327070216, 0, 1274350363327070215, '190275', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363331264514, 0, 1274350363331264513, '190276', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363331264517, 0, 1274350363331264516, '190277', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363331264520, 0, 1274350363331264519, '190278', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363335458818, 0, 1274350363335458817, '190279', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363335458821, 0, 1274350363335458820, '190280', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363339653120, 0, 1274350363335458823, '190283', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363339653123, 0, 1274350363339653122, '190284', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363339653126, 0, 1274350363339653125, '190285', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363343847424, 0, 1274350363339653128, '190286', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363343847427, 0, 1274350363343847426, '190287', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363343847430, 0, 1274350363343847429, '190287C', NULL, NULL, 4.830, 5.650, 0.000, 4.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363343847433, 0, 1274350363343847432, '190288', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363348041730, 0, 1274350363348041729, '190289', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363348041733, 0, 1274350363348041732, '190289C', NULL, NULL, 4.830, 5.650, 0.000, 4.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363348041736, 0, 1274350363348041735, '190290', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363352236034, 0, 1274350363352236033, '190290C', NULL, NULL, 4.830, 5.650, 0.000, 4.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363352236037, 0, 1274350363352236036, '190291', NULL, NULL, 18.020, 21.030, 0.000, 15.770, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363352236040, 0, 1274350363352236039, '190291C', NULL, NULL, 4.830, 5.650, 0.000, 4.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363356430337, 0, 1274350363356430336, '190292', NULL, NULL, 16.710, 19.490, 0.000, 14.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363356430340, 0, 1274350363356430339, '190293', NULL, NULL, 16.710, 19.490, 0.000, 14.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363356430343, 0, 1274350363356430342, '190294', NULL, NULL, 16.710, 19.490, 0.000, 14.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363360624641, 0, 1274350363360624640, '190295', NULL, NULL, 16.710, 19.490, 0.000, 14.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363360624644, 0, 1274350363360624643, '190297', NULL, NULL, 16.710, 19.490, 0.000, 14.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363360624647, 0, 1274350363360624646, '190298', NULL, NULL, 16.710, 19.490, 0.000, 14.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363364818945, 0, 1274350363364818944, '190299', NULL, NULL, 16.710, 19.490, 0.000, 14.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363364818948, 0, 1274350363364818947, '1903', NULL, NULL, 11.650, 13.580, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363364818951, 0, 1274350363364818950, '190301', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363369013248, 0, 1274350363364818953, '190302', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363369013251, 0, 1274350363369013250, '190303', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363369013254, 0, 1274350363369013253, '190304', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363373207552, 0, 1274350363369013256, '190305', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363373207555, 0, 1274350363373207554, '190306', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363373207558, 0, 1274350363373207557, '190307', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363377401857, 0, 1274350363377401856, '190308', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363377401860, 0, 1274350363377401859, '190309', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363377401863, 0, 1274350363377401862, '190311', NULL, NULL, 10.550, 12.310, 0.000, 9.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363381596162, 0, 1274350363381596161, '190313', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363381596165, 0, 1274350363381596164, '190314', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363381596168, 0, 1274350363381596167, '190315', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363385790466, 0, 1274350363385790465, '190316', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363385790469, 0, 1274350363385790468, '190317', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363389984768, 0, 1274350363385790471, '190318', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363389984771, 0, 1274350363389984770, '190319', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363389984774, 0, 1274350363389984773, '190320', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363394179072, 0, 1274350363389984776, '190321', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363394179075, 0, 1274350363394179074, '190322', NULL, NULL, 12.520, 14.620, 0.000, 10.970, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363394179078, 0, 1274350363394179077, '190331', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363398373377, 0, 1274350363398373376, '190332', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363398373380, 0, 1274350363398373379, '190333', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363398373383, 0, 1274350363398373382, '190334', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363402567680, 0, 1274350363398373385, '190335', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363402567683, 0, 1274350363402567682, '190336', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363402567686, 0, 1274350363402567685, '190337', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363402567689, 0, 1274350363402567688, '190338', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363406761986, 0, 1274350363406761985, '190339', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363406761989, 0, 1274350363406761988, '190341', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363410956288, 0, 1274350363406761991, '190342', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363410956291, 0, 1274350363410956290, '190343', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363410956294, 0, 1274350363410956293, '190344', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363415150594, 0, 1274350363415150593, '190345', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363415150597, 0, 1274350363415150596, '190346', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363419344896, 0, 1274350363415150599, '190347', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363419344899, 0, 1274350363419344898, '190348', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363419344902, 0, 1274350363419344901, '190349', NULL, NULL, 12.090, 14.110, 0.000, 10.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363423539201, 0, 1274350363423539200, '190381', NULL, NULL, 0.350, 0.420, 0.000, 0.310, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363423539204, 0, 1274350363423539203, '190382', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363423539207, 0, 1274350363423539206, '1904', NULL, NULL, 11.650, 13.580, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363427733506, 0, 1274350363427733505, '190401', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363427733509, 0, 1274350363427733508, '190402', NULL, NULL, 0.450, 0.510, 0.000, 0.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363427733512, 0, 1274350363427733511, '190406', NULL, NULL, 5.280, 6.150, 0.000, 4.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363431927810, 0, 1274350363431927809, '190407', NULL, NULL, 5.280, 6.150, 0.000, 4.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363431927813, 0, 1274350363431927812, '190408', NULL, NULL, 5.280, 6.150, 0.000, 4.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363431927816, 0, 1274350363431927815, '190409', NULL, NULL, 13.180, 15.380, 0.000, 11.540, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363436122112, 0, 1274350363431927818, '190411', NULL, NULL, 5.280, 6.150, 0.000, 4.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363436122115, 0, 1274350363436122114, '190414', NULL, NULL, 9.890, 11.540, 0.000, 8.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363436122118, 0, 1274350363436122117, '190415', NULL, NULL, 5.280, 6.150, 0.000, 4.620, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363436122121, 0, 1274350363436122120, '190431', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363440316418, 0, 1274350363440316417, '190432', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363440316421, 0, 1274350363440316420, '190433', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363440316424, 0, 1274350363440316423, '190434', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363444510721, 0, 1274350363444510720, '1905', NULL, NULL, 11.650, 13.580, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363444510724, 0, 1274350363444510723, '190501', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363444510727, 0, 1274350363444510726, '190502', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363448705026, 0, 1274350363448705025, '190503', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363448705029, 0, 1274350363448705028, '190504', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363452899328, 0, 1274350363448705031, '190505', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363452899331, 0, 1274350363452899330, '190506', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363452899334, 0, 1274350363452899333, '190507', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363452899337, 0, 1274350363452899336, '190508', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363457093634, 0, 1274350363457093633, '190509', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363457093637, 0, 1274350363457093636, '190510', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363461287936, 0, 1274350363457093639, '190511', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363461287939, 0, 1274350363461287938, '190512', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363461287942, 0, 1274350363461287941, '190513', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363465482240, 0, 1274350363461287944, '190514', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363465482243, 0, 1274350363465482242, '190515', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363465482246, 0, 1274350363465482245, '190516', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363469676544, 0, 1274350363465482248, '190517', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363469676547, 0, 1274350363469676546, '190518', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363469676550, 0, 1274350363469676549, '190519', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363473870848, 0, 1274350363469676552, '190520', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363473870851, 0, 1274350363473870850, '190521', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363473870854, 0, 1274350363473870853, '190522', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363478065152, 0, 1274350363473870856, '190523', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363478065155, 0, 1274350363478065154, '190524', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363478065158, 0, 1274350363478065157, '190525', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363482259457, 0, 1274350363482259456, '190541', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363482259460, 0, 1274350363482259459, '190542', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363482259463, 0, 1274350363482259462, '190543', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363486453762, 0, 1274350363486453761, '190544', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363486453765, 0, 1274350363486453764, '190545', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363486453768, 0, 1274350363486453767, '190546', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363490648066, 0, 1274350363490648065, '190547', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363490648069, 0, 1274350363490648068, '190548', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363494842368, 0, 1274350363490648071, '190549', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363494842371, 0, 1274350363494842370, '190550', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363494842374, 0, 1274350363494842373, '190551', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363499036672, 0, 1274350363494842376, '190552', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363499036675, 0, 1274350363499036674, '190553', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363499036678, 0, 1274350363499036677, '190556', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363503230976, 0, 1274350363499036680, '190557', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363503230979, 0, 1274350363503230978, '190558', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363503230982, 0, 1274350363503230981, '190559', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363507425282, 0, 1274350363507425281, '190560', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363507425285, 0, 1274350363507425284, '190561', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363511619584, 0, 1274350363507425287, '190562', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363511619587, 0, 1274350363511619586, '190563', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363511619590, 0, 1274350363511619589, '190564', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363515813888, 0, 1274350363511619592, '190569', NULL, NULL, 1.540, 1.800, 0.000, 1.350, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363515813891, 0, 1274350363515813890, '190571', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363515813894, 0, 1274350363515813893, '190572', NULL, NULL, 9.450, 11.030, 0.000, 8.280, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363520008192, 0, 1274350363515813896, '1906', NULL, NULL, 11.650, 13.580, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363520008195, 0, 1274350363520008194, '190601', NULL, NULL, 14.940, 17.430, 0.000, 13.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363520008198, 0, 1274350363520008197, '190602', NULL, NULL, 14.290, 16.660, 0.000, 12.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363524202496, 0, 1274350363520008200, '190603', NULL, NULL, 14.940, 17.430, 0.000, 13.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363524202499, 0, 1274350363524202498, '190604', NULL, NULL, 14.940, 17.430, 0.000, 13.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363524202502, 0, 1274350363524202501, '190606', NULL, NULL, 14.940, 17.430, 0.000, 13.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363524202505, 0, 1274350363524202504, '190607', NULL, NULL, 14.940, 17.430, 0.000, 13.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363528396802, 0, 1274350363528396801, '190608', NULL, NULL, 14.940, 17.430, 0.000, 13.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363528396805, 0, 1274350363528396804, '190609', NULL, NULL, 14.940, 17.430, 0.000, 13.080, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363528396808, 0, 1274350363528396807, '190611', NULL, NULL, 14.290, 16.660, 0.000, 12.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363532591106, 0, 1274350363532591105, '190612', NULL, NULL, 14.290, 16.660, 0.000, 12.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363532591109, 0, 1274350363532591108, '190613', NULL, NULL, 14.290, 16.660, 0.000, 12.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363532591112, 0, 1274350363532591111, '190614', NULL, NULL, 14.290, 16.660, 0.000, 12.510, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363536785410, 0, 1274350363536785409, '190616', NULL, NULL, 10.110, 11.800, 0.000, 8.850, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363536785413, 0, 1274350363536785412, '190621', NULL, NULL, 27.480, 32.050, 0.000, 24.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363536785416, 0, 1274350363536785415, '190622', NULL, NULL, 27.480, 32.050, 0.000, 24.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363540979713, 0, 1274350363540979712, '190623', NULL, NULL, 27.480, 32.050, 0.000, 24.050, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363540979716, 0, 1274350363540979715, '190624', NULL, NULL, 17.580, 20.510, 0.000, 15.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363540979719, 0, 1274350363540979718, '190625', NULL, NULL, 17.580, 20.510, 0.000, 15.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363545174018, 0, 1274350363545174017, '190626', NULL, NULL, 17.580, 20.510, 0.000, 15.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363545174021, 0, 1274350363545174020, '190627', NULL, NULL, 17.580, 20.510, 0.000, 15.380, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363545174024, 0, 1274350363545174023, '190629', NULL, NULL, 3.290, 3.850, 0.000, 2.890, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363549368322, 0, 1274350363549368321, '190630', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363549368325, 0, 1274350363549368324, '190631', NULL, NULL, 0.550, 0.650, 0.000, 0.480, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363549368328, 0, 1274350363549368327, '190632', NULL, NULL, 0.660, 0.770, 0.000, 0.580, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363553562626, 0, 1274350363553562625, '190634', NULL, NULL, 0.000, 0.000, 0.000, 0.000, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363553562629, 0, 1274350363553562628, '190644', NULL, NULL, 21.980, 25.650, 0.000, 19.230, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363557756928, 0, 1274350363553562631, '190661', NULL, NULL, 9.890, 11.540, 0.000, 8.660, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363557756931, 0, 1274350363557756930, '1907', NULL, NULL, 11.650, 13.580, 0.000, 8.800, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363557756934, 0, 1274350363557756933, '1908', NULL, NULL, 7.700, 13.580, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363561951233, 0, 1274350363561951232, '1909', NULL, NULL, 11.650, 6.600, 0.000, 10.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_sku` VALUES (1274350363561951236, 0, 1274350363561951235, '1910', NULL, NULL, 1.100, 0.000, 0.000, 1.200, 1, '2024-08-17 12:53:23', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for product_stock
-- ----------------------------
DROP TABLE IF EXISTS `product_stock`;
CREATE TABLE `product_stock`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_sku_id` bigint NULL DEFAULT NULL COMMENT '产品扩展id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库id',
  `init_stock_quantity` decimal(12, 2) NULL DEFAULT NULL COMMENT '初始库存数量',
  `low_stock_quantity` decimal(12, 2) NULL DEFAULT NULL COMMENT '最低库存数量',
  `high_stock_quantity` decimal(12, 2) NULL DEFAULT NULL COMMENT '最高库存数量',
  `current_stock_quantity` decimal(12, 2) NULL DEFAULT NULL COMMENT '当前库存数量',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品初始库存' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product_stock
-- ----------------------------
INSERT INTO `product_stock` VALUES (1274350361926172672, 0, 1274350361921978369, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361930366977, 0, 1274350361930366976, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361934561281, 0, 1274350361934561280, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361938755584, 0, 1274350361934561283, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361942949888, 0, 1274350361938755586, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361947144192, 0, 1274350361942949890, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361951338496, 0, 1274350361947144194, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361951338499, 0, 1274350361951338498, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361955532802, 0, 1274350361955532801, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361984892930, 0, 1274350361984892929, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361989087234, 0, 1274350361989087233, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361993281537, 0, 1274350361993281536, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361997475840, 0, 1274350361993281539, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350361997475843, 0, 1274350361997475842, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362001670145, 0, 1274350362001670144, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362026835968, 0, 1274350362001670147, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362026835971, 0, 1274350362026835970, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362031030274, 0, 1274350362031030273, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362035224576, 0, 1274350362031030276, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362035224579, 0, 1274350362035224578, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362039418880, 0, 1274350362035224581, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362039418883, 0, 1274350362039418882, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362043613186, 0, 1274350362043613185, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362043613189, 0, 1274350362043613188, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362047807490, 0, 1274350362047807489, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362052001792, 0, 1274350362047807492, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362052001795, 0, 1274350362052001794, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362106527745, 0, 1274350362106527744, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362110722050, 0, 1274350362110722049, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362114916352, 0, 1274350362110722052, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362114916355, 0, 1274350362114916354, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362114916358, 0, 1274350362114916357, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362119110658, 0, 1274350362119110657, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362119110661, 0, 1274350362119110660, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362123304961, 0, 1274350362123304960, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362123304964, 0, 1274350362123304963, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362127499264, 0, 1274350362123304966, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362127499267, 0, 1274350362127499266, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362127499270, 0, 1274350362127499269, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362131693570, 0, 1274350362131693569, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362131693573, 0, 1274350362131693572, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362135887874, 0, 1274350362135887873, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362152665089, 0, 1274350362152665088, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362156859392, 0, 1274350362152665091, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362156859395, 0, 1274350362156859394, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362161053696, 0, 1274350362156859397, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362161053699, 0, 1274350362161053698, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362161053702, 0, 1274350362161053701, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362194608129, 0, 1274350362194608128, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362198802432, 0, 1274350362194608131, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362198802435, 0, 1274350362198802434, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362198802438, 0, 1274350362198802437, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362202996737, 0, 1274350362202996736, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362202996740, 0, 1274350362202996739, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362202996743, 0, 1274350362202996742, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362207191042, 0, 1274350362207191041, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362207191045, 0, 1274350362207191044, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362211385345, 0, 1274350362211385344, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362215579648, 0, 1274350362211385347, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362219773954, 0, 1274350362219773953, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362219773957, 0, 1274350362219773956, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362223968257, 0, 1274350362223968256, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362223968260, 0, 1274350362223968259, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362223968263, 0, 1274350362223968262, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362228162562, 0, 1274350362228162561, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362228162565, 0, 1274350362228162564, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362232356865, 0, 1274350362232356864, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362232356868, 0, 1274350362232356867, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362232356871, 0, 1274350362232356870, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362236551170, 0, 1274350362236551169, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362236551173, 0, 1274350362236551172, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362240745473, 0, 1274350362240745472, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362240745476, 0, 1274350362240745475, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362240745479, 0, 1274350362240745478, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362244939777, 0, 1274350362244939776, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362244939780, 0, 1274350362244939779, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362244939783, 0, 1274350362244939782, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362249134082, 0, 1274350362249134081, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362249134085, 0, 1274350362249134084, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362253328385, 0, 1274350362253328384, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362253328388, 0, 1274350362253328387, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362257522689, 0, 1274350362257522688, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362257522692, 0, 1274350362257522691, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362261716994, 0, 1274350362261716993, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362261716997, 0, 1274350362261716996, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362265911297, 0, 1274350362265911296, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362265911300, 0, 1274350362265911299, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362270105601, 0, 1274350362270105600, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362270105604, 0, 1274350362270105603, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362274299904, 0, 1274350362270105606, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362274299907, 0, 1274350362274299906, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362278494208, 0, 1274350362274299909, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362278494211, 0, 1274350362278494210, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362278494214, 0, 1274350362278494213, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362282688514, 0, 1274350362282688513, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362282688517, 0, 1274350362282688516, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362286882816, 0, 1274350362282688519, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362286882819, 0, 1274350362286882818, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362286882822, 0, 1274350362286882821, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362291077121, 0, 1274350362291077120, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362291077124, 0, 1274350362291077123, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362291077127, 0, 1274350362291077126, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362295271426, 0, 1274350362295271425, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362295271429, 0, 1274350362295271428, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362299465728, 0, 1274350362295271431, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362299465731, 0, 1274350362299465730, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362299465734, 0, 1274350362299465733, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362303660032, 0, 1274350362299465736, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362303660035, 0, 1274350362303660034, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362303660038, 0, 1274350362303660037, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362307854336, 0, 1274350362303660040, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362307854339, 0, 1274350362307854338, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362307854342, 0, 1274350362307854341, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362312048641, 0, 1274350362312048640, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362312048644, 0, 1274350362312048643, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362312048647, 0, 1274350362312048646, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362316242945, 0, 1274350362316242944, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362316242948, 0, 1274350362316242947, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362316242951, 0, 1274350362316242950, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362320437249, 0, 1274350362320437248, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362320437252, 0, 1274350362320437251, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362324631553, 0, 1274350362324631552, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362324631556, 0, 1274350362324631555, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362328825856, 0, 1274350362324631558, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362328825859, 0, 1274350362328825858, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362328825862, 0, 1274350362328825861, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362333020160, 0, 1274350362328825864, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362333020163, 0, 1274350362333020162, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362333020166, 0, 1274350362333020165, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362337214465, 0, 1274350362337214464, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362337214468, 0, 1274350362337214467, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362337214471, 0, 1274350362337214470, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362341408769, 0, 1274350362341408768, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362341408772, 0, 1274350362341408771, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362341408775, 0, 1274350362341408774, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362345603073, 0, 1274350362345603072, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362345603076, 0, 1274350362345603075, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362345603079, 0, 1274350362345603078, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362349797378, 0, 1274350362349797377, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362349797381, 0, 1274350362349797380, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362349797384, 0, 1274350362349797383, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362353991682, 0, 1274350362353991681, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362353991685, 0, 1274350362353991684, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362358185984, 0, 1274350362353991687, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362358185987, 0, 1274350362358185986, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362358185990, 0, 1274350362358185989, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362362380288, 0, 1274350362358185992, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362362380291, 0, 1274350362362380290, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362362380294, 0, 1274350362362380293, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362366574593, 0, 1274350362366574592, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362366574596, 0, 1274350362366574595, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362366574599, 0, 1274350362366574598, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362370768896, 0, 1274350362366574601, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362370768899, 0, 1274350362370768898, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362370768902, 0, 1274350362370768901, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362370768905, 0, 1274350362370768904, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362374963202, 0, 1274350362374963201, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362374963205, 0, 1274350362374963204, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362374963208, 0, 1274350362374963207, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362379157504, 0, 1274350362374963210, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362379157507, 0, 1274350362379157506, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362379157510, 0, 1274350362379157509, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362379157513, 0, 1274350362379157512, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362383351809, 0, 1274350362383351808, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362383351812, 0, 1274350362383351811, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362383351815, 0, 1274350362383351814, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362387546112, 0, 1274350362383351817, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362387546115, 0, 1274350362387546114, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362387546118, 0, 1274350362387546117, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362391740416, 0, 1274350362387546120, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362391740419, 0, 1274350362391740418, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362391740422, 0, 1274350362391740421, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362395934720, 0, 1274350362391740424, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362395934723, 0, 1274350362395934722, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362395934726, 0, 1274350362395934725, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362400129025, 0, 1274350362400129024, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362400129028, 0, 1274350362400129027, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362400129031, 0, 1274350362400129030, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362404323328, 0, 1274350362400129033, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362404323331, 0, 1274350362404323330, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362404323334, 0, 1274350362404323333, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362408517633, 0, 1274350362408517632, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362408517636, 0, 1274350362408517635, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362408517639, 0, 1274350362408517638, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362412711938, 0, 1274350362412711937, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362412711941, 0, 1274350362412711940, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362416906240, 0, 1274350362412711943, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362416906243, 0, 1274350362416906242, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362416906246, 0, 1274350362416906245, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362416906249, 0, 1274350362416906248, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362421100545, 0, 1274350362421100544, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362421100548, 0, 1274350362421100547, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362421100551, 0, 1274350362421100550, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362425294848, 0, 1274350362421100553, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362425294851, 0, 1274350362425294850, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362425294854, 0, 1274350362425294853, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362425294857, 0, 1274350362425294856, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362429489154, 0, 1274350362429489153, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362429489157, 0, 1274350362429489156, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362433683456, 0, 1274350362429489159, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362433683459, 0, 1274350362433683458, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362433683462, 0, 1274350362433683461, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362437877760, 0, 1274350362433683464, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362437877763, 0, 1274350362437877762, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362437877766, 0, 1274350362437877765, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362442072064, 0, 1274350362437877768, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362442072067, 0, 1274350362442072066, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362442072070, 0, 1274350362442072069, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362446266368, 0, 1274350362442072072, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362446266371, 0, 1274350362446266370, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362446266374, 0, 1274350362446266373, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362450460673, 0, 1274350362450460672, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362450460676, 0, 1274350362450460675, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362450460679, 0, 1274350362450460678, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362454654977, 0, 1274350362454654976, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362454654980, 0, 1274350362454654979, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362454654983, 0, 1274350362454654982, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362458849280, 0, 1274350362454654985, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362458849283, 0, 1274350362458849282, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362458849286, 0, 1274350362458849285, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362458849289, 0, 1274350362458849288, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362463043586, 0, 1274350362463043585, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362463043589, 0, 1274350362463043588, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362463043592, 0, 1274350362463043591, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362467237888, 0, 1274350362463043594, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362467237891, 0, 1274350362467237890, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362467237894, 0, 1274350362467237893, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362467237897, 0, 1274350362467237896, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362471432194, 0, 1274350362471432193, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362471432197, 0, 1274350362471432196, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362471432200, 0, 1274350362471432199, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362475626497, 0, 1274350362475626496, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362475626500, 0, 1274350362475626499, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362475626503, 0, 1274350362475626502, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362479820802, 0, 1274350362479820801, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362479820805, 0, 1274350362479820804, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362479820808, 0, 1274350362479820807, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362484015105, 0, 1274350362484015104, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362484015108, 0, 1274350362484015107, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362488209408, 0, 1274350362484015110, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362488209411, 0, 1274350362488209410, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362492403712, 0, 1274350362488209413, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362492403715, 0, 1274350362492403714, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362492403718, 0, 1274350362492403717, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362496598016, 0, 1274350362492403720, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362496598019, 0, 1274350362496598018, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362496598022, 0, 1274350362496598021, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362496598025, 0, 1274350362496598024, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362500792322, 0, 1274350362500792321, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362500792325, 0, 1274350362500792324, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362500792328, 0, 1274350362500792327, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362504986624, 0, 1274350362500792330, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362504986627, 0, 1274350362504986626, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362504986630, 0, 1274350362504986629, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362504986633, 0, 1274350362504986632, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362509180930, 0, 1274350362509180929, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362509180933, 0, 1274350362509180932, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362509180936, 0, 1274350362509180935, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362513375233, 0, 1274350362513375232, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362513375236, 0, 1274350362513375235, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362513375239, 0, 1274350362513375238, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362517569537, 0, 1274350362517569536, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362517569540, 0, 1274350362517569539, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362517569543, 0, 1274350362517569542, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362521763840, 0, 1274350362517569545, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362521763843, 0, 1274350362521763842, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362521763846, 0, 1274350362521763845, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362525958144, 0, 1274350362521763848, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362525958147, 0, 1274350362525958146, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362525958150, 0, 1274350362525958149, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362530152448, 0, 1274350362525958152, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362530152451, 0, 1274350362530152450, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362530152454, 0, 1274350362530152453, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362534346754, 0, 1274350362534346753, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362534346757, 0, 1274350362534346756, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362534346760, 0, 1274350362534346759, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362538541057, 0, 1274350362538541056, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362538541060, 0, 1274350362538541059, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362538541063, 0, 1274350362538541062, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362542735360, 0, 1274350362538541065, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362542735363, 0, 1274350362542735362, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362542735366, 0, 1274350362542735365, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362542735369, 0, 1274350362542735368, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362546929666, 0, 1274350362546929665, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362546929669, 0, 1274350362546929668, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362546929672, 0, 1274350362546929671, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362551123970, 0, 1274350362551123969, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362551123973, 0, 1274350362551123972, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362551123976, 0, 1274350362551123975, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362555318273, 0, 1274350362555318272, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362555318276, 0, 1274350362555318275, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362555318279, 0, 1274350362555318278, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362559512578, 0, 1274350362559512577, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362559512581, 0, 1274350362559512580, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362559512584, 0, 1274350362559512583, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362563706880, 0, 1274350362559512586, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362563706883, 0, 1274350362563706882, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362563706886, 0, 1274350362563706885, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362563706889, 0, 1274350362563706888, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362567901186, 0, 1274350362567901185, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362567901189, 0, 1274350362567901188, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362567901192, 0, 1274350362567901191, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362572095488, 0, 1274350362567901194, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362572095491, 0, 1274350362572095490, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362572095494, 0, 1274350362572095493, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362572095497, 0, 1274350362572095496, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362576289794, 0, 1274350362576289793, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362576289797, 0, 1274350362576289796, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362576289800, 0, 1274350362576289799, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362580484097, 0, 1274350362580484096, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362580484100, 0, 1274350362580484099, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362580484103, 0, 1274350362580484102, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362584678400, 0, 1274350362580484105, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362584678403, 0, 1274350362584678402, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362584678406, 0, 1274350362584678405, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362584678409, 0, 1274350362584678408, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362588872705, 0, 1274350362588872704, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362588872708, 0, 1274350362588872707, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362588872711, 0, 1274350362588872710, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362588872714, 0, 1274350362588872713, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362593067010, 0, 1274350362593067009, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362593067013, 0, 1274350362593067012, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362593067016, 0, 1274350362593067015, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362597261313, 0, 1274350362597261312, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362597261316, 0, 1274350362597261315, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362597261319, 0, 1274350362597261318, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362601455617, 0, 1274350362601455616, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362601455620, 0, 1274350362601455619, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362601455623, 0, 1274350362601455622, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362605649920, 0, 1274350362601455625, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362605649923, 0, 1274350362605649922, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362605649926, 0, 1274350362605649925, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362605649929, 0, 1274350362605649928, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362609844226, 0, 1274350362609844225, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362609844229, 0, 1274350362609844228, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362609844232, 0, 1274350362609844231, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362614038530, 0, 1274350362614038529, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362614038533, 0, 1274350362614038532, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362614038536, 0, 1274350362614038535, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362618232834, 0, 1274350362618232833, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362618232837, 0, 1274350362618232836, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362618232840, 0, 1274350362618232839, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362622427137, 0, 1274350362622427136, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362622427140, 0, 1274350362622427139, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362622427143, 0, 1274350362622427142, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362626621440, 0, 1274350362622427145, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362626621443, 0, 1274350362626621442, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362626621446, 0, 1274350362626621445, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362626621449, 0, 1274350362626621448, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362630815745, 0, 1274350362630815744, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362630815748, 0, 1274350362630815747, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362630815751, 0, 1274350362630815750, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362630815754, 0, 1274350362630815753, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362635010050, 0, 1274350362635010049, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362635010053, 0, 1274350362635010052, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362635010056, 0, 1274350362635010055, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362639204353, 0, 1274350362639204352, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362639204356, 0, 1274350362639204355, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362639204359, 0, 1274350362639204358, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362639204362, 0, 1274350362639204361, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362643398658, 0, 1274350362643398657, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362643398661, 0, 1274350362643398660, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362643398664, 0, 1274350362643398663, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362643398667, 0, 1274350362643398666, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362647592962, 0, 1274350362647592961, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362647592965, 0, 1274350362647592964, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362647592968, 0, 1274350362647592967, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362651787264, 0, 1274350362647592970, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362651787267, 0, 1274350362651787266, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362651787270, 0, 1274350362651787269, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362651787273, 0, 1274350362651787272, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362655981569, 0, 1274350362655981568, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362655981572, 0, 1274350362655981571, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362655981575, 0, 1274350362655981574, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362660175873, 0, 1274350362660175872, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362660175876, 0, 1274350362660175875, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362660175879, 0, 1274350362660175878, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362664370178, 0, 1274350362664370177, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362664370181, 0, 1274350362664370180, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362664370184, 0, 1274350362664370183, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362668564482, 0, 1274350362668564481, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362668564485, 0, 1274350362668564484, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362668564488, 0, 1274350362668564487, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362672758786, 0, 1274350362672758785, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362672758789, 0, 1274350362672758788, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362672758792, 0, 1274350362672758791, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362676953090, 0, 1274350362676953089, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362676953093, 0, 1274350362676953092, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362676953096, 0, 1274350362676953095, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362681147394, 0, 1274350362681147393, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362681147397, 0, 1274350362681147396, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362681147400, 0, 1274350362681147399, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362685341696, 0, 1274350362681147402, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362685341699, 0, 1274350362685341698, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362685341702, 0, 1274350362685341701, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362685341705, 0, 1274350362685341704, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362689536002, 0, 1274350362689536001, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362689536005, 0, 1274350362689536004, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362693730304, 0, 1274350362689536007, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362693730307, 0, 1274350362693730306, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362693730310, 0, 1274350362693730309, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362697924608, 0, 1274350362693730312, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362697924611, 0, 1274350362697924610, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362697924614, 0, 1274350362697924613, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362702118914, 0, 1274350362702118913, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362702118917, 0, 1274350362702118916, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362731479040, 0, 1274350362702118919, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362731479043, 0, 1274350362731479042, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362731479046, 0, 1274350362731479045, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362735673345, 0, 1274350362735673344, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362735673348, 0, 1274350362735673347, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362735673351, 0, 1274350362735673350, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362739867649, 0, 1274350362739867648, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362739867652, 0, 1274350362739867651, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362739867655, 0, 1274350362739867654, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362744061953, 0, 1274350362744061952, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362744061956, 0, 1274350362744061955, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362744061959, 0, 1274350362744061958, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362748256258, 0, 1274350362748256257, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362748256261, 0, 1274350362748256260, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362748256264, 0, 1274350362748256263, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362752450561, 0, 1274350362752450560, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362752450564, 0, 1274350362752450563, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362752450567, 0, 1274350362752450566, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362756644865, 0, 1274350362756644864, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362756644868, 0, 1274350362756644867, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362756644871, 0, 1274350362756644870, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362760839169, 0, 1274350362760839168, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362760839172, 0, 1274350362760839171, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362760839175, 0, 1274350362760839174, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362765033473, 0, 1274350362765033472, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362765033476, 0, 1274350362765033475, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362765033479, 0, 1274350362765033478, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362769227776, 0, 1274350362765033481, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362769227779, 0, 1274350362769227778, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362769227782, 0, 1274350362769227781, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362769227785, 0, 1274350362769227784, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362773422081, 0, 1274350362773422080, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362773422084, 0, 1274350362773422083, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362773422087, 0, 1274350362773422086, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362777616384, 0, 1274350362773422089, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362777616387, 0, 1274350362777616386, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362777616390, 0, 1274350362777616389, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362777616393, 0, 1274350362777616392, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362781810690, 0, 1274350362781810689, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362781810693, 0, 1274350362781810692, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362786004992, 0, 1274350362781810695, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362786004995, 0, 1274350362786004994, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362786004998, 0, 1274350362786004997, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362790199296, 0, 1274350362786005000, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362790199299, 0, 1274350362790199298, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362790199302, 0, 1274350362790199301, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362794393601, 0, 1274350362794393600, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362794393604, 0, 1274350362794393603, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362794393607, 0, 1274350362794393606, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362798587905, 0, 1274350362798587904, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362798587908, 0, 1274350362798587907, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362798587911, 0, 1274350362798587910, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362802782208, 0, 1274350362798587913, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362802782211, 0, 1274350362802782210, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362802782214, 0, 1274350362802782213, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362806976512, 0, 1274350362802782216, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362806976515, 0, 1274350362806976514, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362806976518, 0, 1274350362806976517, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362806976521, 0, 1274350362806976520, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362811170818, 0, 1274350362811170817, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362811170821, 0, 1274350362811170820, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362811170824, 0, 1274350362811170823, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362815365121, 0, 1274350362815365120, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362815365124, 0, 1274350362815365123, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362815365127, 0, 1274350362815365126, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362819559424, 0, 1274350362815365129, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362819559427, 0, 1274350362819559426, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362819559430, 0, 1274350362819559429, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362819559433, 0, 1274350362819559432, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362823753729, 0, 1274350362823753728, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362823753732, 0, 1274350362823753731, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362823753735, 0, 1274350362823753734, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362827948033, 0, 1274350362827948032, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362827948036, 0, 1274350362827948035, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362827948039, 0, 1274350362827948038, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362832142337, 0, 1274350362832142336, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362832142340, 0, 1274350362832142339, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362832142343, 0, 1274350362832142342, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362836336641, 0, 1274350362836336640, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362836336644, 0, 1274350362836336643, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362836336647, 0, 1274350362836336646, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362840530945, 0, 1274350362840530944, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362840530948, 0, 1274350362840530947, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362840530951, 0, 1274350362840530950, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362844725249, 0, 1274350362844725248, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362844725252, 0, 1274350362844725251, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362844725255, 0, 1274350362844725254, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362848919552, 0, 1274350362844725257, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362848919555, 0, 1274350362848919554, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362848919558, 0, 1274350362848919557, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362848919561, 0, 1274350362848919560, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362853113858, 0, 1274350362853113857, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362853113861, 0, 1274350362853113860, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362853113864, 0, 1274350362853113863, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362857308161, 0, 1274350362857308160, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362857308164, 0, 1274350362857308163, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362857308167, 0, 1274350362857308166, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362861502464, 0, 1274350362857308169, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362861502467, 0, 1274350362861502466, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362861502470, 0, 1274350362861502469, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362865696768, 0, 1274350362861502472, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362865696771, 0, 1274350362865696770, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362865696774, 0, 1274350362865696773, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362869891073, 0, 1274350362869891072, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362869891076, 0, 1274350362869891075, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362869891079, 0, 1274350362869891078, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362874085377, 0, 1274350362874085376, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362874085380, 0, 1274350362874085379, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362874085383, 0, 1274350362874085382, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362878279680, 0, 1274350362874085385, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362878279683, 0, 1274350362878279682, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362878279686, 0, 1274350362878279685, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362882473984, 0, 1274350362878279688, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362882473987, 0, 1274350362882473986, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362882473990, 0, 1274350362882473989, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362886668288, 0, 1274350362882473992, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362886668291, 0, 1274350362886668290, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362886668294, 0, 1274350362886668293, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362890862592, 0, 1274350362886668296, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362890862595, 0, 1274350362890862594, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362890862598, 0, 1274350362890862597, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362890862601, 0, 1274350362890862600, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362895056898, 0, 1274350362895056897, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362895056901, 0, 1274350362895056900, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362895056904, 0, 1274350362895056903, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362899251202, 0, 1274350362899251201, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362899251205, 0, 1274350362899251204, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362899251208, 0, 1274350362899251207, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362903445505, 0, 1274350362903445504, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362903445508, 0, 1274350362903445507, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362907639808, 0, 1274350362903445510, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362907639811, 0, 1274350362907639810, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362907639814, 0, 1274350362907639813, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362911834113, 0, 1274350362911834112, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362911834116, 0, 1274350362911834115, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362911834119, 0, 1274350362911834118, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362916028418, 0, 1274350362916028417, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362916028421, 0, 1274350362916028420, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362920222720, 0, 1274350362916028423, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362920222723, 0, 1274350362920222722, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362920222726, 0, 1274350362920222725, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362924417025, 0, 1274350362924417024, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362924417028, 0, 1274350362924417027, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362928611329, 0, 1274350362928611328, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362928611332, 0, 1274350362928611331, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362928611335, 0, 1274350362928611334, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362932805634, 0, 1274350362932805633, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362932805637, 0, 1274350362932805636, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362936999936, 0, 1274350362932805639, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362936999939, 0, 1274350362936999938, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362936999942, 0, 1274350362936999941, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362941194241, 0, 1274350362941194240, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362941194244, 0, 1274350362941194243, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362941194247, 0, 1274350362941194246, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362945388546, 0, 1274350362945388545, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362945388549, 0, 1274350362945388548, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362945388552, 0, 1274350362945388551, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362949582850, 0, 1274350362949582849, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362949582853, 0, 1274350362949582852, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362953777153, 0, 1274350362953777152, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362953777156, 0, 1274350362953777155, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362953777159, 0, 1274350362953777158, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362957971457, 0, 1274350362957971456, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362957971460, 0, 1274350362957971459, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362962165760, 0, 1274350362957971462, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362962165763, 0, 1274350362962165762, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362962165766, 0, 1274350362962165765, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362966360065, 0, 1274350362966360064, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362966360068, 0, 1274350362966360067, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362966360071, 0, 1274350362966360070, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362970554369, 0, 1274350362970554368, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362970554372, 0, 1274350362970554371, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362970554375, 0, 1274350362970554374, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362974748673, 0, 1274350362974748672, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362974748676, 0, 1274350362974748675, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362978942977, 0, 1274350362978942976, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362978942980, 0, 1274350362978942979, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362978942983, 0, 1274350362978942982, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362983137281, 0, 1274350362983137280, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362983137284, 0, 1274350362983137283, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362983137287, 0, 1274350362983137286, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362987331586, 0, 1274350362987331585, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362987331589, 0, 1274350362987331588, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362987331592, 0, 1274350362987331591, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362991525890, 0, 1274350362991525889, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362991525893, 0, 1274350362991525892, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362991525896, 0, 1274350362991525895, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362995720194, 0, 1274350362995720193, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362995720197, 0, 1274350362995720196, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362995720200, 0, 1274350362995720199, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362999914498, 0, 1274350362999914497, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350362999914501, 0, 1274350362999914500, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363004108800, 0, 1274350362999914503, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363004108803, 0, 1274350363004108802, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363004108806, 0, 1274350363004108805, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363008303104, 0, 1274350363004108808, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363008303107, 0, 1274350363008303106, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363008303110, 0, 1274350363008303109, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363012497408, 0, 1274350363008303112, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363012497411, 0, 1274350363012497410, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363016691714, 0, 1274350363016691713, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363016691717, 0, 1274350363016691716, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363020886017, 0, 1274350363020886016, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363142520837, 0, 1274350363142520836, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363142520840, 0, 1274350363142520839, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363146715138, 0, 1274350363146715137, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363146715141, 0, 1274350363146715140, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363146715144, 0, 1274350363146715143, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363150909441, 0, 1274350363150909440, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363150909444, 0, 1274350363150909443, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363150909447, 0, 1274350363150909446, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363155103745, 0, 1274350363155103744, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363155103748, 0, 1274350363155103747, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363155103751, 0, 1274350363155103750, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363159298049, 0, 1274350363159298048, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363159298052, 0, 1274350363159298051, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363159298055, 0, 1274350363159298054, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363163492352, 0, 1274350363159298057, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363163492355, 0, 1274350363163492354, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363163492358, 0, 1274350363163492357, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363167686656, 0, 1274350363163492360, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363167686659, 0, 1274350363167686658, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363167686662, 0, 1274350363167686661, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363171880960, 0, 1274350363167686664, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363171880963, 0, 1274350363171880962, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363171880966, 0, 1274350363171880965, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363171880969, 0, 1274350363171880968, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363176075266, 0, 1274350363176075265, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363176075269, 0, 1274350363176075268, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363176075272, 0, 1274350363176075271, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363180269569, 0, 1274350363180269568, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363180269572, 0, 1274350363180269571, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363180269575, 0, 1274350363180269574, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363184463873, 0, 1274350363184463872, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363184463876, 0, 1274350363184463875, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363188658176, 0, 1274350363184463878, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363188658179, 0, 1274350363188658178, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363188658182, 0, 1274350363188658181, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363192852480, 0, 1274350363188658184, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363192852483, 0, 1274350363192852482, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363192852486, 0, 1274350363192852485, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363192852489, 0, 1274350363192852488, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363197046786, 0, 1274350363197046785, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363197046789, 0, 1274350363197046788, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363197046792, 0, 1274350363197046791, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363201241089, 0, 1274350363201241088, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363201241092, 0, 1274350363201241091, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363201241095, 0, 1274350363201241094, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363205435394, 0, 1274350363205435393, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363205435397, 0, 1274350363205435396, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363205435400, 0, 1274350363205435399, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363209629698, 0, 1274350363209629697, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363209629701, 0, 1274350363209629700, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363209629704, 0, 1274350363209629703, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363213824002, 0, 1274350363213824001, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363213824005, 0, 1274350363213824004, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363218018305, 0, 1274350363218018304, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363218018308, 0, 1274350363218018307, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363218018311, 0, 1274350363218018310, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363222212609, 0, 1274350363222212608, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363222212612, 0, 1274350363222212611, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363222212615, 0, 1274350363222212614, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363226406912, 0, 1274350363222212617, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363226406915, 0, 1274350363226406914, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363226406918, 0, 1274350363226406917, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363230601216, 0, 1274350363226406920, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363230601219, 0, 1274350363230601218, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363230601222, 0, 1274350363230601221, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363230601225, 0, 1274350363230601224, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363234795522, 0, 1274350363234795521, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363234795525, 0, 1274350363234795524, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363234795528, 0, 1274350363234795527, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363238989826, 0, 1274350363238989825, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363238989829, 0, 1274350363238989828, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363238989832, 0, 1274350363238989831, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363243184129, 0, 1274350363243184128, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363243184132, 0, 1274350363243184131, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363243184135, 0, 1274350363243184134, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363247378434, 0, 1274350363247378433, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363247378437, 0, 1274350363247378436, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363251572736, 0, 1274350363247378439, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363251572739, 0, 1274350363251572738, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363251572742, 0, 1274350363251572741, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363255767041, 0, 1274350363255767040, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363255767044, 0, 1274350363255767043, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363255767047, 0, 1274350363255767046, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363259961345, 0, 1274350363259961344, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363259961348, 0, 1274350363259961347, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363259961351, 0, 1274350363259961350, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363264155648, 0, 1274350363259961353, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363264155651, 0, 1274350363264155650, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363264155654, 0, 1274350363264155653, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363268349952, 0, 1274350363264155656, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363268349955, 0, 1274350363268349954, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363268349958, 0, 1274350363268349957, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363272544256, 0, 1274350363268349960, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363272544259, 0, 1274350363272544258, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363272544262, 0, 1274350363272544261, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363272544265, 0, 1274350363272544264, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363276738562, 0, 1274350363276738561, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363276738565, 0, 1274350363276738564, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363276738568, 0, 1274350363276738567, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363280932865, 0, 1274350363280932864, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363280932868, 0, 1274350363280932867, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363280932871, 0, 1274350363280932870, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363285127168, 0, 1274350363280932873, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363285127171, 0, 1274350363285127170, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363285127174, 0, 1274350363285127173, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363285127177, 0, 1274350363285127176, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363289321474, 0, 1274350363289321473, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363289321477, 0, 1274350363289321476, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363289321480, 0, 1274350363289321479, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363293515778, 0, 1274350363293515777, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363293515781, 0, 1274350363293515780, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363293515784, 0, 1274350363293515783, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363297710081, 0, 1274350363297710080, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363297710084, 0, 1274350363297710083, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363297710087, 0, 1274350363297710086, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363301904385, 0, 1274350363301904384, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363301904388, 0, 1274350363301904387, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363301904391, 0, 1274350363301904390, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363301904394, 0, 1274350363301904393, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363306098690, 0, 1274350363306098689, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363306098693, 0, 1274350363306098692, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363306098696, 0, 1274350363306098695, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363310292993, 0, 1274350363310292992, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363310292996, 0, 1274350363310292995, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363310292999, 0, 1274350363310292998, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363314487297, 0, 1274350363314487296, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363314487300, 0, 1274350363314487299, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363314487303, 0, 1274350363314487302, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363318681600, 0, 1274350363314487305, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363318681603, 0, 1274350363318681602, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363318681606, 0, 1274350363318681605, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363322875904, 0, 1274350363318681608, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363322875907, 0, 1274350363322875906, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363322875910, 0, 1274350363322875909, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363327070208, 0, 1274350363322875912, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363327070211, 0, 1274350363327070210, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363327070214, 0, 1274350363327070213, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363331264512, 0, 1274350363327070216, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363331264515, 0, 1274350363331264514, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363331264518, 0, 1274350363331264517, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363335458816, 0, 1274350363331264520, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363335458819, 0, 1274350363335458818, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363335458822, 0, 1274350363335458821, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363339653121, 0, 1274350363339653120, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363339653124, 0, 1274350363339653123, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363339653127, 0, 1274350363339653126, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363343847425, 0, 1274350363343847424, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363343847428, 0, 1274350363343847427, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363343847431, 0, 1274350363343847430, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363348041728, 0, 1274350363343847433, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363348041731, 0, 1274350363348041730, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363348041734, 0, 1274350363348041733, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363352236032, 0, 1274350363348041736, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363352236035, 0, 1274350363352236034, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363352236038, 0, 1274350363352236037, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363352236041, 0, 1274350363352236040, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363356430338, 0, 1274350363356430337, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363356430341, 0, 1274350363356430340, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363356430344, 0, 1274350363356430343, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363360624642, 0, 1274350363360624641, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363360624645, 0, 1274350363360624644, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363360624648, 0, 1274350363360624647, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363364818946, 0, 1274350363364818945, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363364818949, 0, 1274350363364818948, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363364818952, 0, 1274350363364818951, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363369013249, 0, 1274350363369013248, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363369013252, 0, 1274350363369013251, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363369013255, 0, 1274350363369013254, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363373207553, 0, 1274350363373207552, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363373207556, 0, 1274350363373207555, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363373207559, 0, 1274350363373207558, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363377401858, 0, 1274350363377401857, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363377401861, 0, 1274350363377401860, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363381596160, 0, 1274350363377401863, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363381596163, 0, 1274350363381596162, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363381596166, 0, 1274350363381596165, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363385790464, 0, 1274350363381596168, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363385790467, 0, 1274350363385790466, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363385790470, 0, 1274350363385790469, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363389984769, 0, 1274350363389984768, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363389984772, 0, 1274350363389984771, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363389984775, 0, 1274350363389984774, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363394179073, 0, 1274350363394179072, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363394179076, 0, 1274350363394179075, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363394179079, 0, 1274350363394179078, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363398373378, 0, 1274350363398373377, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363398373381, 0, 1274350363398373380, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363398373384, 0, 1274350363398373383, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363402567681, 0, 1274350363402567680, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363402567684, 0, 1274350363402567683, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363402567687, 0, 1274350363402567686, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363406761984, 0, 1274350363402567689, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363406761987, 0, 1274350363406761986, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363406761990, 0, 1274350363406761989, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363410956289, 0, 1274350363410956288, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363410956292, 0, 1274350363410956291, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363415150592, 0, 1274350363410956294, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363415150595, 0, 1274350363415150594, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363415150598, 0, 1274350363415150597, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363419344897, 0, 1274350363419344896, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363419344900, 0, 1274350363419344899, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363419344903, 0, 1274350363419344902, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363423539202, 0, 1274350363423539201, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363423539205, 0, 1274350363423539204, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363427733504, 0, 1274350363423539207, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363427733507, 0, 1274350363427733506, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363427733510, 0, 1274350363427733509, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363431927808, 0, 1274350363427733512, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363431927811, 0, 1274350363431927810, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363431927814, 0, 1274350363431927813, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363431927817, 0, 1274350363431927816, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363436122113, 0, 1274350363436122112, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363436122116, 0, 1274350363436122115, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363436122119, 0, 1274350363436122118, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363440316416, 0, 1274350363436122121, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363440316419, 0, 1274350363440316418, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363440316422, 0, 1274350363440316421, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363440316425, 0, 1274350363440316424, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363444510722, 0, 1274350363444510721, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363444510725, 0, 1274350363444510724, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363448705024, 0, 1274350363444510727, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363448705027, 0, 1274350363448705026, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363448705030, 0, 1274350363448705029, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363452899329, 0, 1274350363452899328, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363452899332, 0, 1274350363452899331, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363452899335, 0, 1274350363452899334, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363457093632, 0, 1274350363452899337, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363457093635, 0, 1274350363457093634, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363457093638, 0, 1274350363457093637, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363461287937, 0, 1274350363461287936, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363461287940, 0, 1274350363461287939, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363461287943, 0, 1274350363461287942, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363465482241, 0, 1274350363465482240, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363465482244, 0, 1274350363465482243, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363465482247, 0, 1274350363465482246, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363469676545, 0, 1274350363469676544, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363469676548, 0, 1274350363469676547, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363469676551, 0, 1274350363469676550, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363473870849, 0, 1274350363473870848, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363473870852, 0, 1274350363473870851, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363473870855, 0, 1274350363473870854, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363478065153, 0, 1274350363478065152, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363478065156, 0, 1274350363478065155, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363478065159, 0, 1274350363478065158, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363482259458, 0, 1274350363482259457, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363482259461, 0, 1274350363482259460, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363486453760, 0, 1274350363482259463, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363486453763, 0, 1274350363486453762, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363486453766, 0, 1274350363486453765, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363490648064, 0, 1274350363486453768, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363490648067, 0, 1274350363490648066, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363490648070, 0, 1274350363490648069, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363494842369, 0, 1274350363494842368, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363494842372, 0, 1274350363494842371, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363494842375, 0, 1274350363494842374, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363499036673, 0, 1274350363499036672, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363499036676, 0, 1274350363499036675, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363499036679, 0, 1274350363499036678, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363503230977, 0, 1274350363503230976, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363503230980, 0, 1274350363503230979, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363507425280, 0, 1274350363503230982, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363507425283, 0, 1274350363507425282, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363507425286, 0, 1274350363507425285, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363511619585, 0, 1274350363511619584, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363511619588, 0, 1274350363511619587, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363511619591, 0, 1274350363511619590, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363515813889, 0, 1274350363515813888, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363515813892, 0, 1274350363515813891, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363515813895, 0, 1274350363515813894, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363520008193, 0, 1274350363520008192, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363520008196, 0, 1274350363520008195, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363520008199, 0, 1274350363520008198, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363524202497, 0, 1274350363524202496, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363524202500, 0, 1274350363524202499, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363524202503, 0, 1274350363524202502, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363528396800, 0, 1274350363524202505, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363528396803, 0, 1274350363528396802, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363528396806, 0, 1274350363528396805, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363532591104, 0, 1274350363528396808, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363532591107, 0, 1274350363532591106, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363532591110, 0, 1274350363532591109, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363536785408, 0, 1274350363532591112, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363536785411, 0, 1274350363536785410, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363536785414, 0, 1274350363536785413, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363536785417, 0, 1274350363536785416, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363540979714, 0, 1274350363540979713, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363540979717, 0, 1274350363540979716, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363545174016, 0, 1274350363540979719, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363545174019, 0, 1274350363545174018, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363545174022, 0, 1274350363545174021, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363549368320, 0, 1274350363545174024, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363549368323, 0, 1274350363549368322, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363549368326, 0, 1274350363549368325, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363553562624, 0, 1274350363549368328, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363553562627, 0, 1274350363553562626, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363553562630, 0, 1274350363553562629, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363557756929, 0, 1274350363557756928, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363557756932, 0, 1274350363557756931, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363557756935, 0, 1274350363557756934, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363561951234, 0, 1274350363561951233, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);
INSERT INTO `product_stock` VALUES (1274350363561951237, 0, 1274350363561951236, 1260020894927945728, 0.00, NULL, NULL, 0.00, '2024-08-17 12:53:23', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for product_unit
-- ----------------------------
DROP TABLE IF EXISTS `product_unit`;
CREATE TABLE `product_unit`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `compute_unit` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '计量单位，计算得出',
  `basic_unit` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '基础单位',
  `other_unit` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '副单位',
  `other_unit_two` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '副单位2',
  `other_unit_three` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '副单位3',
  `ratio` decimal(24, 3) NULL DEFAULT NULL COMMENT '比例',
  `ratio_two` decimal(24, 3) NULL DEFAULT NULL COMMENT '比例2',
  `ratio_three` decimal(24, 3) NULL DEFAULT NULL COMMENT '比例3',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '启用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '多单位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_unit
-- ----------------------------

-- ----------------------------
-- Table structure for receipt_main
-- ----------------------------
DROP TABLE IF EXISTS `receipt_main`;
CREATE TABLE `receipt_main`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '主类型 (出库/入库)',
  `sub_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '子类型（采购订单/采购退货/销售订单/组装单/拆卸单）',
  `init_receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '初始单据编号',
  `receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `member_id` bigint NULL DEFAULT NULL COMMENT '会员id',
  `account_id` bigint NULL DEFAULT NULL COMMENT '账户id',
  `change_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '变动金额(收款/付款)',
  `back_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '找零金额',
  `total_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '合计金额',
  `payment_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '付款类型(现金、记账等)',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `file_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '附件id（可以多个 逗号隔开）',
  `operator_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '业务员（可以多个 逗号隔开）',
  `multiple_account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户（可以多个 逗号隔开）',
  `multiple_account_amount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户金额 （可以多个 逗号隔开）',
  `discount_rate` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠率',
  `discount_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠金额',
  `discount_last_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠后金额',
  `other_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '销售或采购费用合计（其他金额）',
  `deposit` decimal(12, 2) NULL DEFAULT NULL COMMENT '订金',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态，0未审核、1已审核、2完成采购|销售、3部分采购|销售、9审核中',
  `purchase_status` tinyint(1) NULL DEFAULT NULL COMMENT '采购状态，0未采购、2完成采购、3部分采购',
  `source` tinyint(1) NULL DEFAULT 0 COMMENT '单据来源，0-pc，1-手机',
  `other_receipt` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联单据',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2A80F214B610FC06`(`member_id` ASC) USING BTREE,
  INDEX `FK2A80F214AAE50527`(`account_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '单据主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_main
-- ----------------------------

-- ----------------------------
-- Table structure for receipt_purchase_main
-- ----------------------------
DROP TABLE IF EXISTS `receipt_purchase_main`;
CREATE TABLE `receipt_purchase_main`  (
  `id` bigint NOT NULL COMMENT '采购单据主表id（主键）',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '主类型 (订单/出库/入库)',
  `sub_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '子类型（采购订单/采购入库/采购退货）',
  `init_receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '初始单据编号',
  `receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `receipt_date` datetime NULL DEFAULT NULL COMMENT '单据日期',
  `supplier_id` bigint NULL DEFAULT NULL COMMENT '供应商id',
  `account_id` bigint NULL DEFAULT NULL COMMENT '账户id',
  `operator_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '采购人员（可以多个 逗号隔开）',
  `change_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '变动金额(退款/付款)',
  `total_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '总计金额\r\n',
  `discount_rate` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠率',
  `discount_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠金额',
  `discount_last_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠后金额',
  `arrears_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '欠款金额',
  `other_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '采购费用合计（其他金额）',
  `deposit` decimal(12, 2) NULL DEFAULT NULL COMMENT '定金',
  `file_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '附件id（可以多个 逗号隔开）',
  `multiple_account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户（可以多个 逗号隔开）',
  `multiple_account_amount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户金额 （可以多个 逗号隔开）',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态，0未审核、1已审核、2审核中、3部分采购、4完成采购',
  `other_receipt` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联单据',
  `receipt_source` tinyint(1) NULL DEFAULT 0 COMMENT '单据来源，0-pc，1-手机',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_purchase_main
-- ----------------------------
INSERT INTO `receipt_purchase_main` VALUES (1270270011314798592, 0, '入库', '采购入库', 'CGRK1270269501388095488', 'CGRK1270269501388095488', '2024-08-06 06:37:29', 1820588791984803841, 1810341847370792962, '0', 0.00, NULL, 0.00, 0.00, 660.00, 0.00, 0.00, NULL, '', '', '', '', 0, '', 0, '2024-08-06 06:39:31', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for receipt_purchase_sub
-- ----------------------------
DROP TABLE IF EXISTS `receipt_purchase_sub`;
CREATE TABLE `receipt_purchase_sub`  (
  `id` bigint NOT NULL COMMENT '采购单据子表id（主键）',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `receipt_purchase_main_id` bigint NOT NULL COMMENT '采购单据主表id',
  `product_id` bigint NOT NULL COMMENT '商品Id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `product_barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  `product_number` int NULL DEFAULT NULL COMMENT '商品数量',
  `unit_price` decimal(13, 2) NULL DEFAULT NULL COMMENT '单价（这里不等于商品表的字段）因为单据会变动',
  `total_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '总金额（这里不等于商品表的字段）因为单据会变动',
  `tax_rate` decimal(13, 2) NULL DEFAULT NULL COMMENT '税率',
  `tax_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '税额',
  `tax_included_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '价税合计（含税金额）',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_purchase_sub
-- ----------------------------
INSERT INTO `receipt_purchase_sub` VALUES (1820590484814286850, 0, 1270270011314798592, 1270266121567600641, 1260020894927945728, '110141', 100, 6.60, 660.00, 0.00, 0.00, 660.00, NULL, '2024-08-06 06:39:31', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for receipt_retail_main
-- ----------------------------
DROP TABLE IF EXISTS `receipt_retail_main`;
CREATE TABLE `receipt_retail_main`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '主类型 (出库/入库)',
  `sub_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '子类型（采购订单/采购退货/销售订单/组装单/拆卸单）',
  `init_receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '初始单据编号',
  `receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `receipt_date` datetime NULL DEFAULT NULL COMMENT '单据日期',
  `member_id` bigint NULL DEFAULT NULL COMMENT '会员id',
  `account_id` bigint NULL DEFAULT NULL COMMENT '账户id',
  `change_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '变动金额(收款/付款)',
  `back_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '找零金额',
  `total_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '合计金额',
  `total_product_number` int NULL DEFAULT NULL COMMENT '商品总数量',
  `payment_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '付款类型(现金、记账等)',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `file_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '附件id（可以多个 逗号隔开）',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态，0未审核、1已审核、2完成采购|销售、3部分采购|销售、9审核中',
  `source` tinyint(1) NULL DEFAULT 0 COMMENT '单据来源，0-pc，1-手机',
  `other_receipt` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联单据',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2A80F214B610FC06`(`member_id` ASC) USING BTREE,
  INDEX `FK2A80F214AAE50527`(`account_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '单据主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_retail_main
-- ----------------------------

-- ----------------------------
-- Table structure for receipt_retail_sub
-- ----------------------------
DROP TABLE IF EXISTS `receipt_retail_sub`;
CREATE TABLE `receipt_retail_sub`  (
  `id` bigint NOT NULL COMMENT '主键',
  `receipt_main_id` bigint NOT NULL COMMENT '仓库主表id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NOT NULL COMMENT '商品Id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `product_barcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  `product_number` int NULL DEFAULT NULL COMMENT '商品数量',
  `unit_price` decimal(13, 2) NULL DEFAULT NULL COMMENT '单价（这里不等于商品表的字段）因为单据会变动',
  `total_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '总金额（这里不等于商品表的字段）因为单据会变动',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品备注',
  `correlation_id` bigint NULL DEFAULT NULL COMMENT '关联明细id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2A819F475D61CCF7`(`product_id` ASC) USING BTREE,
  INDEX `FK2A819F474BB6190E`(`receipt_main_id` ASC) USING BTREE,
  INDEX `FK2A819F479485B3F5`(`warehouse_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '单据子表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_retail_sub
-- ----------------------------

-- ----------------------------
-- Table structure for receipt_sale_main
-- ----------------------------
DROP TABLE IF EXISTS `receipt_sale_main`;
CREATE TABLE `receipt_sale_main`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '主类型 (出库/入库)',
  `sub_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '子类型（销售订单/销售出库/销售退货）',
  `init_receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '初始单据编号',
  `receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `receipt_date` datetime NULL DEFAULT NULL COMMENT '单据日期',
  `customer_id` bigint NULL DEFAULT NULL COMMENT '客户id',
  `account_id` bigint NULL DEFAULT NULL COMMENT '账户id',
  `change_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '变动金额(收款/付款)',
  `total_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '合计金额',
  `file_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '附件id（可以多个 逗号隔开）',
  `operator_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '业务员（可以多个 逗号隔开）',
  `multiple_account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户（可以多个 逗号隔开）',
  `multiple_account_amount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户金额 （可以多个 逗号隔开）',
  `discount_rate` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠率',
  `discount_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠金额',
  `discount_last_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠后金额',
  `other_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '销售其他金额',
  `arrears_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '欠款金额',
  `deposit` decimal(12, 2) NULL DEFAULT NULL COMMENT '定金',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态，0未审核、1已审核、2审核中、3部分销售、4完成销售',
  `receipt_source` tinyint(1) NULL DEFAULT 0 COMMENT '单据来源，0-pc，1-手机',
  `other_receipt` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联单据',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_sale_main
-- ----------------------------
INSERT INTO `receipt_sale_main` VALUES (1270249179838414848, 0, '出库', '销售出库', 'XSCK1270249121478868992', 'XSCK1270249121478868992', '2024-08-06 05:16:30', 1270179404324012032, 1810341847370792962, 1.20, NULL, '', '0', '', '', 0.00, 0.00, 1.20, 0.00, 0.00, NULL, '', 0, 0, '', '2024-08-06 05:16:45', NULL, 0, NULL, 1);
INSERT INTO `receipt_sale_main` VALUES (1270249400672714752, 0, '出库', '销售出库', 'XSCK1270249184800276480', 'XSCK1270249184800276480', '2024-08-06 05:16:45', 1270179404324012032, 1810341847370792962, 2.20, NULL, '', '0', '', '', 0.00, 0.00, 2.20, 0.00, 0.00, NULL, '', 0, 0, '', '2024-08-06 05:17:37', NULL, 0, NULL, 1);
INSERT INTO `receipt_sale_main` VALUES (1270259931706032128, 0, '订单', '销售订单', 'XSD1270259895731486720', 'XSD1270259895731486720', '2024-08-06 05:59:19', 1270179404324012032, NULL, NULL, NULL, '', '0', '', '', 0.00, 0.00, 0.00, NULL, NULL, 0.00, '', 0, 0, NULL, '2024-08-06 05:59:28', NULL, 0, NULL, 1);
INSERT INTO `receipt_sale_main` VALUES (1270280820929593344, 0, '出库', '销售出库', 'XSCK1270279751562428416', 'XSCK1270279751562428416', '2024-08-06 07:18:13', 1270179404324012032, 1810341847370792962, 52.80, NULL, '', '0', '', '', 0.00, 0.00, 52.80, 0.00, 0.00, NULL, '', 0, 0, '', '2024-08-06 07:22:28', NULL, 0, NULL, 0);
INSERT INTO `receipt_sale_main` VALUES (1270281191919976448, 0, '出库', '销售出库', 'XSCK1270280843239096320', 'XSCK1270280843239096320', '2024-08-06 07:22:33', 1270272515280732160, 1810341847370792962, 66.00, NULL, '', '0', '', '', 0.00, 0.00, 66.00, 0.00, 0.00, NULL, '', 0, 0, '', '2024-08-06 07:23:57', NULL, 0, NULL, 0);
INSERT INTO `receipt_sale_main` VALUES (1274386413537722368, 0, '出库', '销售出库', 'XSCK1274386309682561024', 'XSCK1274386309682561024', '2024-08-17 15:16:13', 1259902942081712128, 1810341847370792962, 11.00, NULL, '', '0', '', '', 0.00, 0.00, 11.00, 0.00, 0.00, NULL, '', 0, 0, '', '2024-08-17 15:16:38', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for receipt_sale_sub
-- ----------------------------
DROP TABLE IF EXISTS `receipt_sale_sub`;
CREATE TABLE `receipt_sale_sub`  (
  `id` bigint NOT NULL COMMENT '销售单据子表id（主键）',
  `receipt_sale_main_id` bigint NOT NULL COMMENT '销售单据主表id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NOT NULL COMMENT '商品Id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `product_barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  `product_number` int NULL DEFAULT NULL COMMENT '商品数量',
  `unit_price` decimal(13, 2) NULL DEFAULT NULL COMMENT '单价（这里不等于商品表的字段）因为单据会变动',
  `total_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '金额（这里不等于商品表的字段）因为单据会变动',
  `tax_rate` decimal(13, 2) NULL DEFAULT NULL COMMENT '税率',
  `tax_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '税额',
  `tax_included_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '价税合计（含税金额）',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_sale_sub
-- ----------------------------
INSERT INTO `receipt_sale_sub` VALUES (1820569653438566402, 1270249179838414848, 0, 1270241961302818817, 1270020530304450560, '110141', 1, 1.20, 1.20, 0.00, NULL, 1.20, NULL, '2024-08-06 05:16:45', NULL, 0, NULL, 1);
INSERT INTO `receipt_sale_sub` VALUES (1820569874155425793, 1270249400672714752, 0, 1270241961231515649, 1270020530304450560, '024001', 2, 1.10, 2.20, 0.00, 0.00, 2.20, NULL, '2024-08-06 05:17:37', NULL, 0, NULL, 1);
INSERT INTO `receipt_sale_sub` VALUES (1820580405289406465, 1270259931706032128, 0, 1270241961147629571, 1260020894927945728, '00A399', 1, 0.00, 0.00, 0.00, NULL, 0.00, NULL, '2024-08-06 05:59:28', NULL, 0, NULL, 1);
INSERT INTO `receipt_sale_sub` VALUES (1820601294412304385, 1270280820929593344, 0, 1270266121567600641, 1270273290694295552, '110141', 6, 8.80, 52.80, 0.00, 0.00, 52.80, NULL, '2024-08-06 07:22:28', NULL, 0, NULL, 0);
INSERT INTO `receipt_sale_sub` VALUES (1820601665402687490, 1270281191919976448, 0, 1270266121567600641, 1270273213959503872, '110141', 10, 6.60, 66.00, 0.00, 0.00, 66.00, NULL, '2024-08-06 07:23:57', NULL, 0, NULL, 0);
INSERT INTO `receipt_sale_sub` VALUES (1824706887149449217, 1274386413537722368, 0, 1274386204590080000, 1260020894927945728, '10001', 1, 11.00, 11.00, 0.00, 0.00, 11.00, NULL, '2024-08-17 15:16:38', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for receipt_sub
-- ----------------------------
DROP TABLE IF EXISTS `receipt_sub`;
CREATE TABLE `receipt_sub`  (
  `id` bigint NOT NULL COMMENT '主键',
  `receipt_main_id` bigint NOT NULL COMMENT '仓库主表id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NOT NULL COMMENT '商品Id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `product_barcode` bigint NULL DEFAULT NULL COMMENT '商品条码',
  `product_number` int NULL DEFAULT NULL COMMENT '商品数量',
  `product_price` decimal(13, 2) NULL DEFAULT NULL COMMENT '商品单价（这里不等于商品表的字段）因为单据会变动',
  `product_total_price` decimal(13, 2) NULL DEFAULT NULL COMMENT '商品金额（这里不等于商品表的字段）因为单据会变动',
  `product_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品备注',
  `product_extend_id` bigint NULL DEFAULT NULL COMMENT '商品扩展id',
  `another_warehouse_id` bigint NULL DEFAULT NULL COMMENT '调拨时，对方仓库Id',
  `correlation_id` bigint NULL DEFAULT NULL COMMENT '关联明细id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2A819F475D61CCF7`(`product_id` ASC) USING BTREE,
  INDEX `FK2A819F474BB6190E`(`receipt_main_id` ASC) USING BTREE,
  INDEX `FK2A819F479485B3F5`(`warehouse_id` ASC) USING BTREE,
  INDEX `FK2A819F47729F5392`(`another_warehouse_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '单据子表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_sub
-- ----------------------------

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `supplier_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '供应商名称',
  `contact` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_system` tinyint NULL DEFAULT NULL COMMENT '是否系统自带 0==系统 1==非系统',
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态（0-启用，1-停用）默认启用',
  `first_quarter_account_payment` decimal(12, 3) NULL DEFAULT NULL COMMENT '一季度应付账款',
  `second_quarter_account_payment` decimal(12, 3) NULL DEFAULT NULL COMMENT '二季度应付账款',
  `third_quarter_account_payment` decimal(12, 3) NULL DEFAULT NULL COMMENT '三季度应付账款',
  `fourth_quarter_account_payment` decimal(12, 3) NULL DEFAULT NULL COMMENT '四季度应付账款',
  `total_account_payment` decimal(24, 3) NULL DEFAULT NULL COMMENT '累计应付账款',
  `fax` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '传真',
  `phone_number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tax_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '纳税人识别号',
  `bank_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开户行',
  `account_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `tax_rate` decimal(24, 3) NULL DEFAULT NULL COMMENT '税率',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1806027639959318529, 1255645635676209152, '天津永胜食品有限公司', '李晨君', '16621211609', 'shanxiaozhang@163.com', NULL, NULL, NULL, 0, 0.000, 0.000, 0.000, 0.000, 0.000, NULL, '021-61615936', NULL, '91610131MAC9KMEA59', '中国银行', '6715615615613', 0.000, NULL, '2024-06-27 02:11:58', '2024-08-02 04:10:18', 1255645635676209152, 1255645635676209152, 0);
INSERT INTO `supplier` VALUES (1814959474613960705, 1255645635676209152, 'Shang Hai Phone Supplier', '16621211506', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0.000, NULL, '16621211506', '上海市', 'DHC15610555FXITAL1', '建设银行', NULL, NULL, NULL, '2024-07-21 17:43:54', '2024-08-02 03:16:27', 1255645635676209152, 1255645635676209152, 0);
INSERT INTO `supplier` VALUES (1818922382082949122, 0, 'Shang Hai Phone Supplier', '小陈', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0.000, NULL, '021-61615936', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-01 16:11:04', '2024-08-06 00:28:36', 0, 0, 0);
INSERT INTO `supplier` VALUES (1820371280571863041, 0, 'Supplier A', 'A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0.000, NULL, '021-61615936', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-05 16:08:29', NULL, 0, NULL, 0);
INSERT INTO `supplier` VALUES (1820588791984803841, 0, 'Alibaba Corporation', 'Mr. Zhao', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0.000, NULL, '091-7715156', 'Hang Zhou Alibaba Center', 'DHC15610555FXITAL1', 'China Bank', NULL, NULL, NULL, '2024-08-06 06:32:48', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `company_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `company_contact` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司联系人',
  `company_address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `company_phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司电话',
  `company_fax` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司传真',
  `company_post_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司邮编',
  `sale_agreement` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '销售协议',
  `warehouse_status` tinyint(1) NULL DEFAULT 0 COMMENT '仓库启用标记，0未启用，1启用',
  `customer_status` tinyint(1) NULL DEFAULT 0 COMMENT '客户启用标记，0未启用，1启用',
  `minus_stock_status` tinyint(1) NULL DEFAULT 0 COMMENT '负库存启用标记，0未启用，1启用',
  `purchase_by_sale_status` tinyint(1) NULL DEFAULT 0 COMMENT '以销定购启用标记，0未启用，1启用',
  `multi_level_approval_status` tinyint(1) NULL DEFAULT 0 COMMENT '多级审核启用标记，0未启用，1启用',
  `process_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '流程类型，可多选',
  `force_approval_status` tinyint(1) NULL DEFAULT 0 COMMENT '强审核启用标记，0未启用，1启用',
  `update_unit_price_status` tinyint(1) NULL DEFAULT 1 COMMENT '更新单价启用标记，0未启用，1启用',
  `over_link_bill_status` tinyint(1) NULL DEFAULT 0 COMMENT '超出关联单据启用标记，0未启用，1启用',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统参数' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1805963988061581314, 1255642163568443392, 'EAIRP', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0);
INSERT INTO `sys_config` VALUES (1819089792635207682, 1255645635676209152, 'EAIRP', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0);
INSERT INTO `sys_config` VALUES (1820496661257871362, 0, 'HO-STAR MARINE ERP', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0);

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父级部门id',
  `number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门简称',
  `leader` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门负责任人',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态 0启用，1停用 默认启用',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门显示顺序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '机构表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES (1253081454150156289, 0, NULL, 'DT0000', '默认部门', '1253081454145961984', 0, '租户注册后的默认部门 该部门为父级部门', NULL, '2024-06-19 12:18:20', NULL, 1253081454145961984, NULL, 0);
INSERT INTO `sys_department` VALUES (1255642163677495296, 1255642163568443392, NULL, 'DT0001', '默认部门', NULL, 0, 'Default Department', '0', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_department` VALUES (1255645289423831040, 1255645289390276608, NULL, 'DT0001', '默认部门', NULL, 0, 'Default Department', '0', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_department` VALUES (1255645635843981312, 1255645635676209152, NULL, 'DT0001', '默认部门', NULL, 0, 'Default Department', '0', NULL, '2024-08-02 03:16:10', NULL, NULL, 0);
INSERT INTO `sys_department` VALUES (1255654126298071040, 1255654126172241920, NULL, 'DT0001', '默认部门', NULL, 0, 'Default Department', '0', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_department` VALUES (1255654855582679040, 1255654855423295488, NULL, 'DT0001', '默认部门', NULL, 0, 'Default Department', '0', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件UID',
  `file_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文件名称',
  `file_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文件url（预览地址）',
  `file_download_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文件下载url',
  `file_size` bigint NULL DEFAULT NULL COMMENT '文件大小（KB）',
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `operate_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作模块名称',
  `client_ip` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户端IP',
  `status` tinyint NULL DEFAULT NULL COMMENT '操作状态 0==成功，1==失败',
  `content` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详情',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKF2696AA13E226853`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题（菜单显示）',
  `title_english` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '英文标题（菜单显示）',
  `parent_id` int NULL DEFAULT NULL COMMENT '父级菜单id',
  `menu_type` int NULL DEFAULT NULL COMMENT '类型',
  `path` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '链接',
  `component` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '组件',
  `redirect` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '重定向地址',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态（0-启用，1-停用）',
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图标',
  `hide_menu` tinyint(1) NULL DEFAULT 0 COMMENT '隐藏路由不在菜单显示',
  `blank` tinyint(1) NULL DEFAULT NULL COMMENT '是否外链(target = _blank)',
  `hide_breadcrumb` tinyint(1) NULL DEFAULT 0 COMMENT '隐藏该路由在面包屑上面的显示',
  `ignore_keep_alive` tinyint(1) NULL DEFAULT 0 COMMENT '是否忽略KeepAlive缓存',
  `hide_tab` tinyint(1) NULL DEFAULT 0 COMMENT '隐藏路由不在标签页显示',
  `carry_param` tinyint(1) NULL DEFAULT 0 COMMENT '如果该路由会携带参数，且需要在tab页上面显示。则需要设置为true',
  `hide_children_in_menu` tinyint(1) NULL DEFAULT 0 COMMENT '隐藏所有子菜单',
  `affix` tinyint(1) NULL DEFAULT 0 COMMENT '是否固定标签',
  `frameSrc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '内嵌iframe的地址',
  `realPath` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '动态路由的实际Path, 即去除路由的动态部分;',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `url`(`path` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 328 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '功能模块表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 'Dashboard', '首页', 'Home Page', 0, 1, '/dashboard', '/dashboard/analysis/index', NULL, 1, 0, 'ant-design:dashboard-outlined', 0, NULL, 0, 0, 0, 0, 0, 1, NULL, NULL, '2023-06-23 14:36:55', '2023-09-30 18:46:44', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2, 'workbench', '工作台', 'Dashboard', 0, 1, '/dashboard/workbench', '/dashboard/workbench/index', NULL, 2, 0, 'ant-design:home-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-02 16:01:53', '2023-10-15 01:14:24', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (3, 'RetailManagement', '零售管理', 'Retail', 0, 0, '/retail', 'LAYOUT', NULL, 3, 0, 'ant-design:folder-open-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-08-07 14:36:50', '2024-03-22 11:25:54', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (4, 'SystemManagement', '系统管理', 'System', 0, 0, '/sys', 'LAYOUT', NULL, 10, 0, 'ant-design:setting-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-09-30 14:36:33', '2024-03-23 00:26:19', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (5, 'PurchaseManagement', '采购管理', 'Purchase', 0, 0, '/purchase', 'LAYOUT', NULL, 5, 0, 'ant-design:retweet-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-10-02 14:39:13', '2024-03-22 11:26:26', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (6, 'SaleManagement', '销售管理', 'Sales', 0, 1, '/sales', 'LAYOUT', NULL, 4, 0, 'ant-design:shop-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-09-30 14:39:29', '2024-03-22 11:26:21', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (7, 'WarehouseManagement', '仓库管理', 'Warehouse', 0, 0, '/warehouse', 'LAYOUT', NULL, 8, 0, 'ant-design:bank-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-10-02 14:39:15', '2024-03-23 00:24:32', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (8, 'FinancialManagement', '财务管理', 'Financial', 0, 0, '/financial', 'LAYOUT', NULL, 9, 0, 'ant-design:transaction-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-10-02 14:39:18', '2024-03-23 00:24:42', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, 'Reports', '报表查询', 'Reports', 0, 0, '/reports', 'LAYOUT', NULL, 12, 0, 'ant-design:pie-chart-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-09-30 14:39:25', '2024-03-23 00:26:34', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, 'ProductManagement', '商品管理', 'Product', 0, 0, '/product', 'LAYOUT', NULL, 6, 0, 'ant-design:shopping-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-10-04 14:39:20', '2024-03-22 11:27:44', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, 'BasicInformation', '基本资料', 'Basic Info', 0, 0, '/basic', 'LAYOUT', NULL, 11, 0, 'ant-design:appstore-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-10-01 14:39:22', '2024-03-23 00:26:26', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, 'RoleManagement', '角色管理', 'Role', 4, 1, '/role', '/sys/role/index', NULL, 3, 0, 'ant-design:solution-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-09-20 14:36:37', '2024-06-25 02:18:59', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, 'UserManagement', '用户管理', 'User', 4, 1, '/user', '/sys/user/index', NULL, 2, 0, 'ant-design:user-outlined', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-08-25 14:36:39', '2023-10-04 21:33:04', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (14, 'DepartmentManagement', '部门管理', 'Department', 4, 1, '/department', '/sys/department/index', NULL, 4, 0, 'ic:outline-people-alt', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-10-04 14:36:43', '2024-06-25 02:18:41', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (15, 'MenuManagement', '菜单管理', 'Menu', 4, 1, '/menu', '/sys/menu/index', NULL, 5, 0, 'ant-design:menu-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-09-13 14:36:47', '2024-06-25 02:18:33', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 'ProductCategory', '商品类别', 'Product Category', 10, 1, '/product/category', '/product/category/index', NULL, 1, 0, 'ant-design:share-alt-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-02 15:06:55', '2023-10-04 17:31:45', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 'ProductInfo', '商品信息', 'Product Info', 10, 1, '/product/info', '/product/info/index', NULL, 1, 0, 'ant-design:rocket-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-16 22:49:18', '2023-10-16 22:49:20', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, 'ProductAttribute', '商品属性', 'Product Attribute', 10, 1, '/product/attributes', '/product/attributes/index', NULL, 2, 0, 'ant-design:tags-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-08 14:05:43', '2023-10-08 14:07:38', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 'ProductUnit', '计量单位', 'Product Unit', 10, 1, '/product/units', '/product/units/index', NULL, 3, 0, 'ant-design:percentage-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-08 22:38:05', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, 'SupplierInformation', '供应商信息', 'Supplier', 11, 1, '/basic/supplier', '/basic/supplier/index', NULL, 1, 0, 'ant-design:taobao-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-09 15:26:40', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, 'CustomerInformation', '客户信息', 'Customer', 11, 1, '/basic/customer', '/basic/customer/index', NULL, 2, 0, 'ant-design:team-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-09 15:27:59', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, 'MemberInformation', '会员信息', 'Member', 11, 1, '/basic/member', '/basic/member/index', NULL, 3, 0, 'ant-design:user-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-09 15:29:36', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 'WarehouseInformation', '仓库信息', 'Warehouse', 11, 1, '/basic/warehouse', '/basic/warehouse/index', NULL, 4, 0, 'ant-design:home-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-09 15:31:20', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 'SettlementAccount', '结算账户', 'Settlement Account', 11, 1, '/basic/settlement-account', '/basic/settlement-account/index', NULL, 5, 0, 'ant-design:pay-circle-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-09 15:32:56', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, 'WallahManagement', '经手人管理', 'Wallah Management', 11, 1, '/basic/operator', '/basic/operator/index', NULL, 6, 0, 'ant-design:pushpin-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-09 15:34:09', '2023-10-16 21:47:58', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, '/gpt', 'GPT AI微调模型', 'GPT', 0, 0, '/gpt', 'LAYOUT', NULL, 13, 0, 'ant-design:rocket-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-09 15:35:34', '2024-03-23 00:26:50', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (287, 'RetailShipments', '零售出库', 'Retail Shipments', 3, 1, '/retail/shipments', '/retail/shipments/index', NULL, 1, 0, 'ant-design:gift-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-25 20:28:51', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (288, 'advanceCharge', '收预付款', 'Advance Charge', 8, 1, '/financial/advance-charge', '/financial/advance-charge/index', NULL, 7, 0, 'ant-design:pay-circle-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-10-28 19:15:46', '2024-03-27 18:27:40', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (289, 'RetailRefund', '零售退货', 'Retail Refund', 3, 1, '/retail/refund', '/retail/refund/index', NULL, 2, 0, 'ant-design:history-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-04 20:54:58', '2023-11-29 12:32:20', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (290, 'SalesOrder', '销售订单', 'Sales Order', 6, 1, '/sales/order', '/sales/order/index', NULL, 1, 0, 'ant-design:pay-circle-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-04 20:57:23', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (291, 'SalesShipments', '销售出库', 'Sales Shipments', 6, 1, '/sales/shipments', '/sales/shipments/index', NULL, 2, 0, 'ant-design:shopping-cart-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-04 20:58:43', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (292, 'SalesRefund', '销售退货', 'Sales Refund', 6, 1, '/sales/refund', '/sales/refund/index', NULL, 3, 0, 'ant-design:sync-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-04 20:59:44', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (293, 'PurchaseOrder', '采购订单', 'Purchase Order', 5, 1, '/purchase/order', '/purchase/order/index', NULL, 1, 0, 'ant-design:star-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-04 21:01:10', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (294, 'PurchaseStorage', '采购入库', 'Purchase Storage', 5, 1, '/purchase/storage', '/purchase/storage/index', NULL, 2, 0, 'ant-design:home-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-04 21:02:22', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (295, 'PurchaseRefund', '采购退货', 'Purchase Refund', 5, 1, '/purchase/refund', '/purchase/refund/index', NULL, 3, 0, 'ant-design:send-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-04 21:03:14', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (296, 'ProductStock', '商品库存', 'Product Stock', 9, 1, '/report/productStock', '/report/productStock', NULL, 1, 0, 'ant-design:pie-chart-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-15 12:49:20', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (297, 'AccountStatistics', '账户统计', 'Account Statistics', 9, 1, '/report/accountStatistics', '/report/accountStatistics', NULL, 2, 0, 'ant-design:skype-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-17 21:13:28', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (298, 'RetailStatistics', '零售统计', 'Retail Statistics', 9, 1, '/report/retailStatistics', '/report/retailStatistics', NULL, 3, 0, 'ant-design:pie-chart-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-19 20:24:51', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (299, 'PurchaseStatistics', '采购统计', 'Purchase Statistics', 9, 1, '/report/purchaseStatistics', '/report/purchaseStatistics', NULL, 3, 0, 'ant-design:signal-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-20 13:34:31', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (300, 'SaleStatistics', '销售统计', 'Sales Statistics', 9, 1, '/report/saleStatistics', '/report/saleStatistics', NULL, 5, 0, 'ant-design:schedule-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-20 13:35:34', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (301, 'ShipmentsDetailStatistics', '出库明细', 'Shipments Detail Statistics', 9, 1, '/report/shipmentsDetail', '/report/shipmentsDetail', NULL, 6, 0, 'ant-design:line-chart-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-20 17:27:39', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (302, 'StorageDetailStatistics', '入库明细', 'Storage Detail Statistics', 9, 1, '/report/storageDetail', '/report/storageDetail', NULL, 7, 0, 'ant-design:money-collect-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-20 17:28:53', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (303, 'ShipmentsSummary', '出库汇总', 'Shipments Summary', 9, 1, '/report/shipmentsSummary', '/report/shipmentsSummary', NULL, 8, 0, 'ant-design:area-chart-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-20 21:20:09', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (304, 'StorageSummary', '入库汇总', 'Storage Summary', 9, 1, '/report/storageSummary', '/report/storageSummary', NULL, 9, 0, 'ant-design:bar-chart-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-20 21:20:58', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (305, 'IncomeExpense', '收支项目', 'Income Expense', 11, 1, '/basic/income-expense', '/basic/income-expense/index', NULL, 7, 0, 'ant-design:bank-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-21 10:34:47', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (306, 'IncomeReceipt', '收入单', 'Income', 8, 1, '/financial/income', '/financial/income/index', NULL, 2, 0, 'ant-design:pay-circle-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-21 16:59:36', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (307, 'ExpenseReceipt', '支出单', 'Expense', 8, 1, '/financial/expense', '/financial/expense/index', NULL, 3, 0, 'ant-design:money-collect-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-22 14:34:18', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (308, 'TransferReceipt', '转账单', 'Transfer', 8, 1, '/financial/transfer', '/financial/transfer/index', NULL, 4, 0, 'ant-design:pound-circle-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-22 17:36:48', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (309, 'CollectionReceipt', '收款单', 'Collection', 8, 1, '/financial/collection', '/financial/collection/index', NULL, 5, 0, 'ant-design:instagram-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-22 22:44:51', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (310, 'PaymentReceipt', '付款单', 'Payment', 8, 1, '/financial/payment', '/financial/payment/index', NULL, 6, 0, 'ant-design:account-book-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-23 20:17:06', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (311, 'OtherStorage', '其他入库', 'Other Storage', 7, 1, '/warehouse/storage', '/warehouse/storage/index', NULL, 1, 0, 'ant-design:appstore-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-24 21:01:38', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (312, 'OtherShipments', '其他出库', 'Other Shipments', 7, 1, '/warehouse/shipments', '/warehouse/shipments/index', NULL, 2, 0, 'ant-design:shop-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-25 15:25:32', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (313, 'AllotShipments', '调拨出库', 'Allot Shipments', 7, 1, '/warehouse/allot', '/warehouse/allot/index', NULL, 3, 0, 'ant-design:tags-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-25 18:17:47', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (314, 'AssembleReceipt', '组装单', 'Assemble Receipt', 7, 1, '/warehouse/assemble', '/warehouse/assemble/index', NULL, 4, 0, 'ant-design:bar-chart-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-27 14:37:56', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (315, 'DisAssembleReceipt', '拆卸单', 'DisAssemble Receipt', 7, 1, '/warehouse/disassemble', '/warehouse/disassemble/index', NULL, 5, 0, 'ant-design:bars-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-27 14:38:40', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (316, 'CustomerBillStatistics', '客户对账', 'Customer Bill Statistics', 9, 1, '/report/customerBill', '/report/customerBill', NULL, 10, 0, 'ant-design:pay-circle-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-27 19:52:49', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (317, 'SupplierBillStatistics', '供应商对账', 'Supplier Bill Statistics', 9, 1, '/report/supplierBill', '/report/supplierBill', NULL, 11, 0, 'ant-design:like-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-27 22:26:03', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (318, 'Test', '测试', 'Test', NULL, 1, '32131', '', NULL, 3123, 0, '123', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-11-29 12:32:32', NULL, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (319, 'SystemConfig', '系统配置', 'System Config', 4, 1, '/sys/config', '/sys/config/index', NULL, 6, 0, 'ant-design:tool-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-12-04 18:43:34', '2024-06-25 02:18:25', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (320, 'AccountSetting', '个人资料', 'Account Setting', 11, 1, '/basic/account', '/basic/account/index', NULL, 1, 0, 'ant-design:skin-twotone', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2023-12-10 15:29:19', '2023-12-10 15:31:23', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (321, 'ProductionManagement', '生产管理', 'Production', 0, 0, '/production', 'LAYOUT', NULL, 7, 0, 'ant-design:rocket-filled', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2024-03-23 00:23:35', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (322, 'ProductionTask', '生产任务', 'Production Task', 321, 1, '/production/tasks', '/production/tasks/index', NULL, 1, 0, 'ant-design:history-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2024-03-23 00:27:55', NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (327, 'Tenant Management', '租户管理', 'Tenant Management', 4, 1, '/tenant', '/sys/tenant/index', NULL, 1, 0, 'ant-design:comment-outlined', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2024-06-25 02:17:47', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_msg
-- ----------------------------
DROP TABLE IF EXISTS `sys_msg`;
CREATE TABLE `sys_msg`  (
  `id` bigint NOT NULL COMMENT '主键',
  `msg_title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `msg_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '消息内容',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '消息类型',
  `user_id` bigint NULL DEFAULT NULL COMMENT '接收人id',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态，0未读 1已读',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `delete_Flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '消息表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_msg
-- ----------------------------
INSERT INTO `sys_msg` VALUES (1263546387283312640, 'Sales Order Approved', 'Dear User, Greetings! Your sales order has been approved, with order number:{XSD1263546230529589248}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Order Document Number:XSD1263546230529589248', '2024-07-18 17:22:14', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1263546387287506944, 'Sales Order Approved', 'Dear User, Greetings! Your sales order has been approved, with order number:{XSD1263546230529589248}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Order Document Number:XSD1263546230529589248', '2024-07-18 17:22:14', 'notice', 1255645635676209152, 1, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1263550229739732992, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1263549570885877760}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1263549570885877760', '2024-07-18 17:37:30', 'notice', 1255645635676209152, 1, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1264639686047956992, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1264639266848243712}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1264639266848243712', '2024-07-21 17:46:37', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265058789376131072, 'New Retail Outbound Document Created', 'Dear User, Greetings! You have successfully created a new retail outbound document with document number:{LSCK1265058756685725696}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Retail Outbound Document Number:LSCK1265058756685725696', '2024-07-22 21:31:59', 'todo', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265060017996824576, 'New Retail Outbound Document Created', 'Dear User, Greetings! You have successfully created a new retail outbound document with document number:{LSCK1265059991547543552}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Retail Outbound Document Number:LSCK1265059991547543552', '2024-07-22 21:36:52', 'todo', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265060079950888960, '新的零售出库单据已创建', '尊敬的用户，您好！ 您已成功创建了一张新的零售出库单据，单据编号为：{LSCK1265060056852856832}。当前订单状态为“未审核”。请及时处理相关事宜。感谢您使用ERP系统！', '零售出库单据编号：LSCK1265060056852856832', '2024-07-22 21:37:07', 'todo', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265646448070885376, 'Retail Outbound Document Approved', 'Dear User, Greetings! Your retail outbound document has been approved, with document number:{LSCK1265643631952265216}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Retail Outbound Document Number:LSCK1265643631952265216', '2024-07-24 12:27:08', 'notice', 0, 1, 0, 0);
INSERT INTO `sys_msg` VALUES (1265660387953475584, 'New Retail Outbound Document Created', 'Dear User, Greetings! You have successfully created a new retail outbound document with document number:{LSCK1265660353988001792}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Retail Outbound Document Number:LSCK1265660353988001792', '2024-07-24 13:22:31', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1265663125357592576, 'New Retail Return Document Created', 'Dear User, Greetings! You have successfully created a new retail return document with return document number:{LSTH1265663088565157888}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Retail Return Document Number:LSTH1265663088565157888', '2024-07-24 13:33:24', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1265663238876430336, 'Retail Return Document Approved', 'Dear User, Greetings! Your retail return document has been approved, with return document number:{LSTH1265660734998577152}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Retail Return Document Number:LSTH1265660734998577152', '2024-07-24 13:33:51', 'notice', 0, 1, 0, 0);
INSERT INTO `sys_msg` VALUES (1265783708678356992, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1260292002625355776}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1260292002625355776', '2024-07-24 21:32:33', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708707717120, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1260292002625355776}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1260292002625355776', '2024-07-24 21:32:33', 'notice', 1260268142840512512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708707717121, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1260391692498894848}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1260391692498894848', '2024-07-24 21:32:33', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708711911424, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1260391692498894848}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1260391692498894848', '2024-07-24 21:32:33', 'notice', 1260268142840512512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708711911425, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1262553258451271680}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1262553258451271680', '2024-07-24 21:32:33', 'notice', 1260268142840512512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708711911426, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1262553258451271680}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1262553258451271680', '2024-07-24 21:32:33', 'notice', 1260402149578244096, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708716105728, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1262553258451271680}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1262553258451271680', '2024-07-24 21:32:33', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708716105729, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1262553258451271680}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1262553258451271680', '2024-07-24 21:32:33', 'notice', 1260402061866958848, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708716105730, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1262553258451271680}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1262553258451271680', '2024-07-24 21:32:33', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708716105731, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1263160552100724736}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1263160552100724736', '2024-07-24 21:32:33', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708720300032, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1263549570885877760}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1263549570885877760', '2024-07-24 21:32:33', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708720300033, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1263549570885877760}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1263549570885877760', '2024-07-24 21:32:33', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708720300034, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1264640294394003456}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1264640294394003456', '2024-07-24 21:32:33', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708720300035, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1264640753309581312}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1264640753309581312', '2024-07-24 21:32:33', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708724494336, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1264640753309581312}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1264640753309581312', '2024-07-24 21:32:33', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708724494337, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1264641035275862016}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1264641035275862016', '2024-07-24 21:32:33', 'notice', 1260402149578244096, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1265783708724494338, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1264641035275862016}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1264641035275862016', '2024-07-24 21:32:33', 'notice', 1260402061866958848, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1266521495878762496, 'New Sales Outbound Document Created', 'Dear User, Greetings! You have successfully created a new sales outbound document with document number:{XSCK1266521355768037376}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1266521355768037376', '2024-07-26 22:24:15', 'todo', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268006805464678400, 'Sales Returns Document Approved', 'Dear User, Greetings! Your sales return document has been approved, with return document number:{XSTH1268006231360929792}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Return Document Number:XSTH1268006231360929792', '2024-07-31 00:46:21', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268006805468872704, 'Sales Returns Document Approved', 'Dear User, Greetings! Your sales return document has been approved, with return document number:{XSTH1268006231360929792}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Return Document Number:XSTH1268006231360929792', '2024-07-31 00:46:21', 'notice', 1260268142840512512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268012108931399680, 'Sales Returns Document Approved', 'Dear User, Greetings! Your sales return document has been approved, with return document number:{XSTH1260394326375006208}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Return Document Number:XSTH1260394326375006208', '2024-07-31 01:07:25', 'notice', 1260268142840512512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268026043730493440, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1262553983499632640}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1262553983499632640', '2024-07-31 02:02:48', 'notice', 1260402061866958848, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268026043835351040, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1262949884202319872}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1262949884202319872', '2024-07-31 02:02:48', 'notice', 1260268142840512512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268026043839545344, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1262949884202319872}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1262949884202319872', '2024-07-31 02:02:48', 'notice', 1260402061866958848, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268031933527359488, 'Retail Return Document Approved', 'Dear User, Greetings! Your retail return document has been approved, with return document number:{LSTH1267950348564168704}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Retail Return Document Number:LSTH1267950348564168704', '2024-07-31 02:26:12', 'notice', 0, 1, 0, 0);
INSERT INTO `sys_msg` VALUES (1268033424975724544, 'Retail Outbound Document Approved', 'Dear User, Greetings! Your retail outbound document has been approved, with document number:{LSCK1267894583367303168}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Retail Outbound Document Number:LSCK1267894583367303168', '2024-07-31 02:32:07', 'notice', 0, 1, 0, 0);
INSERT INTO `sys_msg` VALUES (1268033461927542784, 'New Retail Outbound Document Created', 'Dear User, Greetings! You have successfully created a new retail outbound document with document number:{LSCK1268033429132279808}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Retail Outbound Document Number:LSCK1268033429132279808', '2024-07-31 02:32:16', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1268393848686510080, 'Sales Outbound Document Approved', 'Dear User, Greetings! Your sales outbound document has been approved, with document number:{XSCK1266071534271725568}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1266071534271725568', '2024-08-01 02:24:19', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268393871507718144, 'Retail Return Document Approved', 'Dear User, Greetings! Your retail return document has been approved, with return document number:{LSTH1262724012799164416}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Retail Return Document Number:LSTH1262724012799164416', '2024-08-01 02:24:25', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268393952088686592, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1263547940077568000}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1263547940077568000', '2024-08-01 02:24:44', 'notice', 1260402061866958848, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268393952092880896, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1263547940077568000}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1263547940077568000', '2024-08-01 02:24:44', 'notice', 1255649402538688512, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268394272189579264, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1262950595967320064}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1262950595967320064', '2024-08-01 02:26:00', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1268977311105941504, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1268976738856075264}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1268976738856075264', '2024-08-02 17:02:47', 'notice', 1255645635676209152, 0, 1255645635676209152, 0);
INSERT INTO `sys_msg` VALUES (1270177120168968192, 'Purchase Inbound Document Approved', 'Dear User, Greetings! Your purchase inbound document has been approved, with document number:{CGRK1270176873271263232}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1270176873271263232', '2024-08-06 00:30:24', 'notice', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270207111933984768, 'New Sales Outbound Document Created', 'Dear User, Greetings! You have successfully created a new sales outbound document with document number:{XSCK1270206773445263360}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1270206773445263360', '2024-08-06 02:29:35', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270212882767806464, 'New Sales Outbound Document Created', 'Dear User, Greetings! You have successfully created a new sales outbound document with document number:{XSCK1270212808109195264}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1270212808109195264', '2024-08-06 02:52:31', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270228571415117824, 'New Purchase Inbound Document Created', 'Dear User, Greetings! You have successfully created a new purchase inbound document with document number:{CGRK1270228515718955008}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1270228515718955008', '2024-08-06 03:54:51', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270234402139406336, 'New Purchase Inbound Document Created', 'Dear User, Greetings! You have successfully created a new purchase inbound document with document number:{CGRK1270234348863356928}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1270234348863356928', '2024-08-06 04:18:01', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270234784651542528, 'New Purchase Inbound Document Created', 'Dear User, Greetings! You have successfully created a new purchase inbound document with document number:{CGRK1270234731094474752}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1270234731094474752', '2024-08-06 04:19:32', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270249180199124992, 'New Sales Outbound Document Created', 'Dear User, Greetings! You have successfully created a new sales outbound document with document number:{XSCK1270249121478868992}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1270249121478868992', '2024-08-06 05:16:45', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270249400966316032, 'New Sales Outbound Document Created', 'Dear User, Greetings! You have successfully created a new sales outbound document with document number:{XSCK1270249184800276480}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1270249184800276480', '2024-08-06 05:17:37', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270259957287092224, 'Sales Order Approved', 'Dear User, Greetings! Your sales order has been approved, with order number:{XSD1270259895731486720}. Please continue to follow up on subsequent matters. Thank you for using the ERP system!', 'Sales Order Document Number:XSD1270259895731486720', '2024-08-06 05:59:34', 'notice', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270270011390296064, 'New Purchase Inbound Document Created', 'Dear User, Greetings! You have successfully created a new purchase inbound document with document number:{CGRK1270269501388095488}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Purchase Inbound Document Number:CGRK1270269501388095488', '2024-08-06 06:39:31', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270280820988313600, 'New Sales Outbound Document Created', 'Dear User, Greetings! You have successfully created a new sales outbound document with document number:{XSCK1270279751562428416}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1270279751562428416', '2024-08-06 07:22:28', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1270281191966113792, 'New Sales Outbound Document Created', 'Dear User, Greetings! You have successfully created a new sales outbound document with document number:{XSCK1270280843239096320}. The current order status is Unreviewed. Please handle related matters promptly. Thank you for using the ERP system!', 'Sales Outbound Document Number:XSCK1270280843239096320', '2024-08-06 07:23:57', 'todo', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1276305233894440960, '销售订单已审核', '尊敬的用户，您好！ 您的销售订单已审核通过，订单编号为：{XSD1270259895731486720}。请继续跟进后续事宜。感谢您使用ERP系统！', '销售订单单据编号：XSD1270259895731486720', '2024-08-22 22:21:20', 'notice', 0, 0, 0, 0);
INSERT INTO `sys_msg` VALUES (1276328039575191552, '销售出库单据已审核', '尊敬的用户，您好！ 您的销售出库单据已审核通过，单据编号为：{XSCK1274386309682561024}。请继续跟进后续事宜。感谢您使用ERP系统！', '销售出库单据编号：XSCK1274386309682561024', '2024-08-22 23:51:58', 'notice', 0, 0, 0, 0);

-- ----------------------------
-- Table structure for sys_platform_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_platform_config`;
CREATE TABLE `sys_platform_config`  (
  `id` bigint NOT NULL,
  `platform_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关键词',
  `platform_key_info` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关键词名称',
  `platform_value` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '值',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '平台参数' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_platform_config
-- ----------------------------
INSERT INTO `sys_platform_config` VALUES (1, 'platform_name', '平台名称', 'eairp', NULL, NULL, NULL, NULL);
INSERT INTO `sys_platform_config` VALUES (3, 'platform_url', '官方网站', 'http://eairp.cn/', NULL, NULL, NULL, NULL);
INSERT INTO `sys_platform_config` VALUES (4, 'bill_print_flag', '三联打印启用标记', '0', NULL, NULL, NULL, NULL);
INSERT INTO `sys_platform_config` VALUES (7, 'register_flag', '注册启用标记', '1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `role_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `price_limit` tinyint(1) NULL DEFAULT NULL COMMENT '价格屏蔽 1-屏蔽采购价 2-屏蔽零售价 3-屏蔽销售价',
  `description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态（0-启用，1-停用）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (0, 0, '平台管理员', '全部数据', NULL, '全平台管理员，可管理租户下的所有权限和数据', 0, '2024-06-19 12:18:20', NULL, 0, NULL, 0);
INSERT INTO `sys_role` VALUES (1, 0, '租户管理员', '全部数据', NULL, '普通租户', 0, '2024-06-26 20:57:38', NULL, 0, NULL, 0);
INSERT INTO `sys_role` VALUES (1255642163648135168, 1255642163568443392, '管理员', NULL, NULL, '普通租户1255642163568443392', 0, '2024-06-26 21:53:41', NULL, 0, NULL, 0);
INSERT INTO `sys_role` VALUES (1255645289411248128, 1255645289390276608, '管理员', NULL, NULL, '普通租户1255645289390276608', 0, '2024-06-26 22:06:06', NULL, 0, NULL, 0);
INSERT INTO `sys_role` VALUES (1255645635781066752, 1255645635676209152, '管理员', NULL, NULL, '普通租户1255645635676209152', 0, '2024-06-26 22:07:28', NULL, 0, NULL, 0);
INSERT INTO `sys_role` VALUES (1255654126260322304, 1255654126172241920, '管理员', '全部数据', NULL, '普通租户1255654126172241920', 0, '2024-06-26 22:41:13', NULL, 0, NULL, 0);
INSERT INTO `sys_role` VALUES (1255654855519764480, 1255654855423295488, '管理员', '全部数据', NULL, '普通租户1255654855423295488', 0, '2024-06-26 22:44:06', NULL, 0, NULL, 0);
INSERT INTO `sys_role` VALUES (1259902322260049920, 0, '采购业务员', '全部数据', NULL, NULL, 0, '2024-07-08 16:02:01', '2024-07-08 16:03:49', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (1259902383282978816, 0, '销售业务员', '全部数据', NULL, NULL, 0, '2024-07-08 16:02:16', '2024-07-08 16:03:57', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (1260023997328785408, 1255645635676209152, '销售人员', '全部数据', NULL, NULL, 0, '2024-07-09 00:05:31', NULL, NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (1260401860854939648, 1255645635676209152, '采购人员', '全部数据', NULL, NULL, 0, '2024-07-10 01:07:01', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_role_menu_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu_rel`;
CREATE TABLE `sys_role_menu_rel`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '菜单资源id []分割',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu_rel
-- ----------------------------
INSERT INTO `sys_role_menu_rel` VALUES (0, 0, 0, '[1][2][3][4][5][6][7][8][9][10][11][12][13][14][15][16][17][18][19][20][21][22][23][24][25][26][287][288][289][290][291][292][293][294][295][296][297][298][299][300][301][302][303][304][305][306][307][308][309][310][311][312][313][314][315][316][317][318][319][320][321][322][327]', '2024-06-19 12:18:20', NULL, 1253081454145961984, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1255645289419636736, 1255645289390276608, 1255645289411248128, '[1][3][287][289][6][290][291][292][5][293][294][295][10][16][17][18][19][7][311][312][313][314][315][8][306][307][308][309][310][288][11][20][320][21][22][23][24][25][305][9][296][297][298][299][300][301][302][303][304][316][317][12][13][14][319][15]', '2024-06-26 22:06:06', NULL, 1255645289390276608, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1255654126289682432, 1255654126172241920, 1255654126260322304, '[1][3][4][5][6][7][8][9][10][11][12][13][14][16][17][18][19][20][21][22][23][24][25][287][288][289][290][291][292][293][294][295][296][297][298][299][300][301][302][303][304][305][306][307][308][309][310][311][312][313][314][315][316][317][319][320][321][322]', '2024-06-26 22:41:13', NULL, 1255654126172241920, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1255654855570096128, 1255654855423295488, 1255654855519764480, '[1][3][4][5][6][7][8][9][10][11][12][13][14][16][17][18][19][20][21][22][23][24][25][287][288][289][290][291][292][293][294][295][296][297][298][299][300][301][302][303][304][305][306][307][308][309][310][311][312][313][314][315][316][317][319][320][321][322]', '2024-06-26 22:44:07', NULL, 1255654855423295488, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1805963490696818689, NULL, 1, '[1][3][4][5][6][7][8][9][10][11][12][13][14][16][17][18][19][20][21][22][23][24][25][287][288][289][290][291][292][293][294][295][296][297][298][299][300][301][302][303][304][305][306][307][308][309][310][311][312][313][314][315][316][317][319][320][321][322]', NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1805964172170555393, NULL, 1255642163648135168, '[1][3][4][5][6][7][8][9][10][11][12][13][14][16][17][18][19][20][21][22][23][24][25][287][288][289][290][291][292][293][294][295][296][297][298][299][300][301][302][303][304][305][306][307][308][309][310][311][312][313][314][315][316][317][319][320][321][322]', NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1810223083262300162, NULL, 1259902383282978816, '[1][6][290][291][292][300][301][303][316]', NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1810223172483534850, NULL, 1259902322260049920, '[5][293][294][295][1][299][302][304][317]', NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1810344565447557122, NULL, 1260023997328785408, '[1][6][290][291][292][300][301][316]', NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1810722407737958401, NULL, 1260401860854939648, '[1][5][293][294][295][299][302][317][304]', NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu_rel` VALUES (1819088721841905665, NULL, 1255645635781066752, '[1][3][4][5][6][7][8][9][10][11][12][13][14][16][17][18][19][20][21][22][23][24][25][287][288][289][290][291][292][293][294][295][296][297][298][299][300][301][302][303][304][305][306][307][308][309][310][311][312][313][314][315][316][317][319][320][321][322]', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_serial_number
-- ----------------------------
DROP TABLE IF EXISTS `sys_serial_number`;
CREATE TABLE `sys_serial_number`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `product_id` bigint NULL DEFAULT NULL COMMENT '产品表id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库id',
  `serial_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '序列号',
  `sell_status` tinyint(1) NULL DEFAULT 0 COMMENT '是否卖出，0未卖出，1卖出',
  `inbound_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '入库单号',
  `outbound_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出库单号',
  `remark` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '序列号表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_serial_number
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '租户名称',
  `user_num_limit` int NULL DEFAULT NULL COMMENT '用户数量限制',
  `type` tinyint(1) NULL DEFAULT 0 COMMENT '租户类型，0免费租户，1付费租户',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '启用 0-禁用  1-启用',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `expire_time` datetime NULL DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '租户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO `sys_tenant` VALUES (0, 0, 1255642163568443392, '测试租户1', 8, 0, 1, '测试', '2024-06-26 21:53:41', '2024-08-21 12:01:18', '2024-08-30 23:09:32');
INSERT INTO `sys_tenant` VALUES (1255645289390276608, 1255645289390276608, 1255645289390276608, '测试租户2', 12, 1, 0, '测试', '2024-06-26 22:06:06', '2024-08-02 00:51:19', '2024-07-18 23:16:16');
INSERT INTO `sys_tenant` VALUES (1255645635676209152, 1255645635676209152, 1255645635676209152, '测试租户3', 6, 1, 0, 'cc', '2024-06-26 22:07:28', '2024-08-02 02:48:20', '2024-08-15 00:04:46');
INSERT INTO `sys_tenant` VALUES (1255654126172241920, 1255654126172241920, 1255654126172241920, '测试租户4', 2, 0, 0, '111', '2024-06-26 22:41:13', '2024-08-02 02:47:12', '2024-06-26 23:10:18');

-- ----------------------------
-- Table structure for sys_tenant_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_user`;
CREATE TABLE `sys_tenant_user`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态（0-启用，1-停用）',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户姓名--例如张三',
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录用户名',
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '登陆密码',
  `leader_flag` tinyint(1) NULL DEFAULT 0 COMMENT '是否经理，0否，1是',
  `position` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职位',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `phone_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `system_language` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'zh_CN' COMMENT '系统语言 默认中文zh_CN，英文对en_US，香港zh_HK，菲律宾tl_PH',
  `is_manager` tinyint NOT NULL DEFAULT 1 COMMENT '是否为管理者 0==管理者 1==员工',
  `is_system` tinyint NOT NULL DEFAULT 0 COMMENT '是否系统自带数据 ',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态，0：正常，1：删除，2封禁',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户描述信息',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `wechat_open_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '微信绑定',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (0, 0, '平台管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, NULL, 'https://wansen-1317413588.cos.ap-shanghai.myqcloud.com/temp_1260020034500034560_', 'zh_CN', 1, 0, 0, NULL, NULL, NULL, '2024-06-19 12:18:20', NULL, NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (1255642163568443392, 1255642163568443392, '测试租户1', 'test1', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, NULL, NULL, 'en_US', 1, 0, 0, NULL, '测试', NULL, '2024-06-26 21:53:40', NULL, 1255642163568443392, NULL, 0);
INSERT INTO `sys_user` VALUES (1255645289390276608, 1255645289390276608, '测试租户2', 'test2', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'jameszow@163.com', '021-61615936', NULL, 'zh_CN', 1, 0, 0, '测试', '测试', NULL, '2024-06-26 22:06:06', NULL, 1255645289390276608, NULL, 0);
INSERT INTO `sys_user` VALUES (1255645635676209152, 1255645635676209152, '测试租户3', 'test3', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, NULL, 'https://wansen-1317413588.cos.ap-shanghai.myqcloud.com/temp_1262343171568828416_me.jpg', 'en_US', 1, 0, 0, NULL, 'cc', NULL, '2024-06-26 22:07:28', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `sys_user` VALUES (1255649402538688512, 1255645635676209152, '销售小王', 'hostar', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, NULL, NULL, 'en_US', 1, 0, 0, NULL, NULL, NULL, '2024-06-26 22:22:26', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `sys_user` VALUES (1255654126172241920, 1255654126172241920, '测试租户4', 'test4', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'shanxi44zhang@163.com', '16621511561', NULL, 'en_US', 1, 0, 0, '111', NULL, NULL, '2024-06-26 22:41:13', NULL, 1255654126172241920, NULL, 0);
INSERT INTO `sys_user` VALUES (1255654855423295488, 1255654855423295488, '测试租户5', 'test5', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'shanxi55zhang@163.com', '13713735216', NULL, 'en_US', 1, 0, 0, NULL, NULL, NULL, '2024-06-26 22:44:06', NULL, 1255654855423295488, NULL, 1);
INSERT INTO `sys_user` VALUES (1260268142840512512, 1255645635676209152, '赵伟', 'zhaowei', '7bc7b277e3436b88e2494da6194ce807', 0, NULL, NULL, NULL, NULL, 'en_US', 1, 0, 0, NULL, NULL, NULL, '2024-07-09 16:15:40', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `sys_user` VALUES (1260402061866958848, 1255645635676209152, '小王', 'xiaowang', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, '16621211602', NULL, 'en_US', 1, 0, 0, NULL, NULL, NULL, '2024-07-10 01:07:49', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `sys_user` VALUES (1260402149578244096, 1255645635676209152, '小李', 'xiaoli', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, NULL, NULL, 'en_US', 1, 0, 0, NULL, NULL, NULL, '2024-07-10 01:08:10', NULL, 1255645635676209152, NULL, 0);

-- ----------------------------
-- Table structure for sys_user_business
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_business`;
CREATE TABLE `sys_user_business`  (
  `id` bigint NOT NULL COMMENT '主键',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类别',
  `key_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '主id',
  `value` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '值',
  `btn_str` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '按钮权限',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户/角色/模块关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_business
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_dept_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept_rel`;
CREATE TABLE `sys_user_dept_rel`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `dept_id` bigint NOT NULL COMMENT '部门id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `sort` int NULL DEFAULT NULL COMMENT '用户在所属部门中显示顺序',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '机构用户关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_dept_rel
-- ----------------------------
INSERT INTO `sys_user_dept_rel` VALUES (1253081454150156291, 0, 1253081454150156289, 0, 0, 0, '2024-06-19 12:18:20', NULL, 1253081454145961984, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1255642163690078208, 1255642163568443392, 1255642163677495296, 1255642163568443392, NULL, 0, '2024-06-26 21:53:41', NULL, 1255642163568443392, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1255645289428025344, 1255645289390276608, 1255645289423831040, 1255645289390276608, NULL, 0, '2024-06-26 22:06:06', NULL, 1255645289390276608, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1255654126314848256, 1255654126172241920, 1255654126298071040, 1255654126172241920, NULL, 0, '2024-06-26 22:41:13', NULL, 1255654126172241920, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1255654855607844864, 1255654855423295488, 1255654855582679040, 1255654855423295488, NULL, 0, '2024-06-26 22:44:07', NULL, 1255654855423295488, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1260024295732543488, 1255645635676209152, 1255645635843981312, 1255649402538688512, NULL, 0, '2024-07-09 00:06:42', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1260402149595021312, 1255645635676209152, 1255645635843981312, 1260402149578244096, NULL, 0, '2024-07-10 01:08:10', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1263159453981605888, 1255645635676209152, 1255645635843981312, 1260268142840512512, NULL, 0, '2024-07-17 15:44:42', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1268762494382374912, 1255645635676209152, 1255645635843981312, 1255645635676209152, NULL, 0, '2024-08-02 02:49:11', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_dept_rel` VALUES (1268766405277253632, 1255645635676209152, 1255645635843981312, 1260402061866958848, NULL, 0, '2024-08-02 03:04:44', NULL, 1255645635676209152, NULL);

-- ----------------------------
-- Table structure for sys_user_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role_rel`;
CREATE TABLE `sys_user_role_rel`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role_rel
-- ----------------------------
INSERT INTO `sys_user_role_rel` VALUES (1253081454150156290, 0, 0, 0, '2024-06-19 12:18:20', NULL, 1253081454145961984, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1255642163664912384, 1255642163568443392, 1255642163568443392, 1255642163648135168, '2024-06-26 21:53:41', NULL, 1255642163568443392, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1255645289415442432, 1255645289390276608, 1255645289390276608, 1255645289411248128, '2024-06-26 22:06:06', NULL, 1255645289390276608, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1255654126285488128, 1255654126172241920, 1255654126172241920, 1255654126260322304, '2024-06-26 22:41:13', NULL, 1255654126172241920, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1255654855553318912, 1255654855423295488, 1255654855423295488, 1255654855519764480, '2024-06-26 22:44:07', NULL, 1255654855423295488, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1260024295724154880, 1255645635676209152, 1255649402538688512, 1260023997328785408, '2024-07-09 00:06:42', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1260402149590827008, 1255645635676209152, 1260402149578244096, 1260401860854939648, '2024-07-10 01:08:10', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1263159453964828672, 1255645635676209152, 1260268142840512512, 1260023997328785408, '2024-07-17 15:44:42', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1263159453969022976, 1255645635676209152, 1260268142840512512, 1260401860854939648, '2024-07-17 15:44:42', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1268762494357209088, 1255645635676209152, 1255645635676209152, 1255645635781066752, '2024-08-02 02:49:11', NULL, 1255645635676209152, NULL);
INSERT INTO `sys_user_role_rel` VALUES (1268766405222727680, 1255645635676209152, 1260402061866958848, 1260401860854939648, '2024-08-02 03:04:44', NULL, 1255645635676209152, NULL);

-- ----------------------------
-- Table structure for sys_user_warehouse_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_warehouse_rel`;
CREATE TABLE `sys_user_warehouse_rel`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `warehouse_id` bigint NOT NULL COMMENT '仓库id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_warehouse_rel
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `warehouse_manager` bigint NULL DEFAULT NULL COMMENT '负责人',
  `warehouse_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓库地址',
  `price` decimal(24, 6) NULL DEFAULT NULL COMMENT '仓储费',
  `truckage` decimal(24, 6) NULL DEFAULT NULL COMMENT '搬运费',
  `type` int NULL DEFAULT 0 COMMENT '类型',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态（0-启用，1-停用）',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '排序',
  `is_default` tinyint(1) NULL DEFAULT 0 COMMENT '是否默认仓库（0-启用，1-停用）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_Flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '仓库表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES (1253081454267596801, 1253081454145961984, 1253081454145961984, '默认仓库', NULL, 0.000000, 0.000000, 0, 0, '默认仓库', NULL, 1, '2024-06-19 12:18:20', '2024-06-20 23:38:33', 1253081454145961984, 1253081454145961984, 0);
INSERT INTO `warehouse` VALUES (1255706903732813824, 1255645635676209152, 1255649402538688512, '深圳仓库', '深圳市宝安区', 500.000000, 326.000000, 0, 0, NULL, NULL, 1, '2024-06-27 02:10:56', NULL, 1255645635676209152, NULL, 0);
INSERT INTO `warehouse` VALUES (1260020894927945728, 0, NULL, 'Default Warehouse', 'Xi\'An', 0.000000, 0.000000, 0, 0, NULL, NULL, 1, '2024-07-08 23:53:11', '2024-08-15 10:33:13', 0, 0, 0);
INSERT INTO `warehouse` VALUES (1270273213959503872, 0, NULL, 'Mediterranean Warehouse', 'MARINE', 0.000000, 0.000000, 0, 0, NULL, NULL, 0, '2024-08-06 06:52:15', NULL, 0, NULL, 0);
INSERT INTO `warehouse` VALUES (1270273290694295552, 0, NULL, 'MAERSK Logistics', 'Signapore', 0.000000, 0.000000, 0, 0, NULL, NULL, 0, '2024-08-06 06:52:33', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for warehouse_head
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_head`;
CREATE TABLE `warehouse_head`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '主类型 (出库/入库)',
  `sub_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '子类型（采购订单/采购退货/销售订单/组装单/拆卸单）',
  `init_bill_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '初始票据号',
  `bill_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '票据号',
  `supplier_id` bigint NULL DEFAULT NULL COMMENT '供应商id',
  `account_id` bigint NULL DEFAULT NULL COMMENT '账户id',
  `change_amount` decimal(24, 6) NULL DEFAULT NULL COMMENT '变动金额(收款/付款)',
  `back_amount` decimal(24, 6) NULL DEFAULT NULL COMMENT '找零金额',
  `total_price` decimal(24, 6) NULL DEFAULT NULL COMMENT '合计金额',
  `pay_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '付款类型(现金、记账等)',
  `bill_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据类型',
  `remark` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `file_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '附件名称',
  `sales_man` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '业务员（可以多个）',
  `account_id_list` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户ID列表',
  `account_money_list` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多账户金额列表',
  `discount` decimal(24, 6) NULL DEFAULT NULL COMMENT '优惠率',
  `discount_money` decimal(24, 6) NULL DEFAULT NULL COMMENT '优惠金额',
  `discount_last_money` decimal(24, 6) NULL DEFAULT NULL COMMENT '优惠后金额',
  `other_money` decimal(24, 6) NULL DEFAULT NULL COMMENT '销售或采购费用合计',
  `deposit` decimal(24, 6) NULL DEFAULT NULL COMMENT '订金',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态，0未审核、1已审核、2完成采购|销售、3部分采购|销售、9审核中',
  `purchase_status` tinyint(1) NULL DEFAULT NULL COMMENT '采购状态，0未采购、2完成采购、3部分采购',
  `source` tinyint(1) NULL DEFAULT 0 COMMENT '单据来源，0-pc，1-手机',
  `correlation_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联订单号',
  `operate_time` datetime NULL DEFAULT NULL COMMENT '操作时间（出/入库时间）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2A80F214B610FC06`(`supplier_id` ASC) USING BTREE,
  INDEX `FK2A80F214AAE50527`(`account_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '单据主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_head
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_item
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_item`;
CREATE TABLE `warehouse_item`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `header_id` bigint NOT NULL COMMENT '表头Id',
  `product_id` bigint NOT NULL COMMENT '商品Id',
  `product_extend_id` bigint NULL DEFAULT NULL COMMENT '商品扩展id',
  `product_unit` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品计量单位',
  `multi_attribute` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '多属性',
  `oper_number` decimal(24, 6) NULL DEFAULT NULL COMMENT '数量',
  `basic_number` decimal(24, 6) NULL DEFAULT NULL COMMENT '基础数量，如kg、瓶',
  `unit_price` decimal(24, 6) NULL DEFAULT NULL COMMENT '单价',
  `purchase_unit_price` decimal(24, 6) NULL DEFAULT NULL COMMENT '采购单价',
  `tax_unit_price` decimal(24, 6) NULL DEFAULT NULL COMMENT '含税单价',
  `total_price` decimal(24, 6) NULL DEFAULT NULL COMMENT '金额',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `another_warehouse_id` bigint NULL DEFAULT NULL COMMENT '调拨时，对方仓库Id',
  `tax_rate` decimal(24, 6) NULL DEFAULT NULL COMMENT '税率',
  `tax_money` decimal(24, 6) NULL DEFAULT NULL COMMENT '税额',
  `tax_last_money` decimal(24, 6) NULL DEFAULT NULL COMMENT '价税合计',
  `product_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `serial_numbers_list` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '序列号列表',
  `batch_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '批次号',
  `effective_date` datetime NULL DEFAULT NULL COMMENT '有效日期',
  `correlation_id` bigint NULL DEFAULT NULL COMMENT '关联明细id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2A819F475D61CCF7`(`product_id` ASC) USING BTREE,
  INDEX `FK2A819F474BB6190E`(`header_id` ASC) USING BTREE,
  INDEX `FK2A819F479485B3F5`(`warehouse_id` ASC) USING BTREE,
  INDEX `FK2A819F47729F5392`(`another_warehouse_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '单据子表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_item
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_receipt_main
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_receipt_main`;
CREATE TABLE `warehouse_receipt_main`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `related_person_id` bigint NULL DEFAULT NULL COMMENT '关联人id(客户/供应商)',
  `product_id` bigint NULL DEFAULT NULL COMMENT '商品id',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型(入库/出库/调拨/组装/拆卸)',
  `type_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型英文表示(入库/出库/调拨/组装/拆卸)',
  `init_receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '初始单据编号',
  `receipt_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `receipt_date` datetime NULL DEFAULT NULL COMMENT '单据日期',
  `total_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '合计金额',
  `total_product_number` int NULL DEFAULT NULL COMMENT '商品总数量',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `file_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '附件id（可以多个 逗号隔开）',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态，0未审核、1已审核',
  `source` tinyint(1) NULL DEFAULT 0 COMMENT '单据来源，0-pc，1-手机',
  `other_receipt` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联单据',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_receipt_main
-- ----------------------------
INSERT INTO `warehouse_receipt_main` VALUES (1270275685717377024, 0, NULL, NULL, '调拨出库', NULL, 'DBCK1270275369848537088', 'DBCK1270275369848537088', '2024-08-06 07:00:48', NULL, 30, 'Mediterranean Warehouse salae price 6.6 peso', '', 0, 0, NULL, '2024-08-06 07:02:04', NULL, 0, NULL, 0);
INSERT INTO `warehouse_receipt_main` VALUES (1270275885953449984, 0, NULL, NULL, '调拨出库', NULL, 'DBCK1270275753136619520', 'DBCK1270275753136619520', '2024-08-06 07:02:20', NULL, 20, '', '', 0, 0, NULL, '2024-08-06 07:02:52', NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for warehouse_receipt_sub
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_receipt_sub`;
CREATE TABLE `warehouse_receipt_sub`  (
  `id` bigint NOT NULL COMMENT '主键',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  `warehouse_receipt_main_id` bigint NULL DEFAULT NULL COMMENT '仓库主表id',
  `product_id` bigint NOT NULL COMMENT '商品Id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `other_warehouse_id` bigint NULL DEFAULT NULL COMMENT '调拨对方仓库ID',
  `product_barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  `product_number` int NULL DEFAULT NULL COMMENT '商品数量',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型（组合件/普通子件）',
  `unit_price` decimal(13, 2) NULL DEFAULT NULL COMMENT '单价（这里不等于商品表的字段）因为单据会变动',
  `total_amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '总金额（这里不等于商品表的字段）因为单据会变动',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_receipt_sub
-- ----------------------------
INSERT INTO `warehouse_receipt_sub` VALUES (1270275685725765632, 0, 1270275685717377024, 1270266121567600641, 1260020894927945728, 1270273213959503872, '110141', 30, NULL, 6.60, NULL, NULL, '2024-08-06 07:02:04', NULL, 0, NULL, 0);
INSERT INTO `warehouse_receipt_sub` VALUES (1270275885961838592, 0, 1270275885953449984, 1270266121567600641, 1260020894927945728, 1270273290694295552, '110141', 20, NULL, 8.80, NULL, NULL, '2024-08-06 07:02:52', NULL, 0, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
