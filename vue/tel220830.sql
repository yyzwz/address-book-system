/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `tel`;
CREATE DATABASE IF NOT EXISTS `tel` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tel`;

DROP TABLE IF EXISTS `a_call_record`;
CREATE TABLE IF NOT EXISTS `a_call_record` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `tel_duration` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_call_record`;
INSERT INTO `a_call_record` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `date`, `mobile`, `tel_duration`, `type`, `user_id`, `user_name`) VALUES
	('1564541034451570688', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570689', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570690', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570691', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570692', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570693', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570694', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570695', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570696', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570697', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570698', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570699', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570700', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570701', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570702', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570703', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570704', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570705', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570706', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570707', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570708', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570709', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三'),
	('1564541034451570710', 'admin', '2022-08-30 17:10:25.042000', 0, 'admin', '2022-08-30 17:10:40.000000', '2022-08-16', '17857050001', '20', '主动', '1564539657608368128', '张三');

DROP TABLE IF EXISTS `a_department`;
CREATE TABLE IF NOT EXISTS `a_department` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department`;
INSERT INTO `a_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `parent_id`, `sort_order`, `status`, `title`, `is_parent`) VALUES
	(1464487288363945985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 1.00, 0, '人力资源部', b'1'),
	(1464487332064399361, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 2.00, 0, '行政综合部', b'1'),
	(1464487379074158593, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 3.00, 0, '设计研发部', b'1'),
	(1464487406328745985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 4.00, 0, '财务部', b'0'),
	(1464487432169852929, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 5.00, 0, '综合发展部', b'0'),
	(1464487524662644737, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 1.00, 0, 'HRBP部', b'0'),
	(1464487559647334401, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 2.00, 0, '招聘部', b'0'),
	(1464487623933431809, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 1.00, 0, '安保部', b'0'),
	(1464487656678363137, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 2.00, 0, '保洁部', b'0'),
	(1464487691780493313, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 3.00, 0, '设备维修部', b'0'),
	(1464487733895499777, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 1.00, 0, '视频剪辑部', b'0'),
	(1464487807572643841, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 2.00, 0, '产品应用部', b'0'),
	(1527834362656198656, 'admin', '2022-05-21 10:11:13', 0, NULL, NULL, 0, 6.00, 0, '客服部', b'0');

DROP TABLE IF EXISTS `a_department_header`;
CREATE TABLE IF NOT EXISTS `a_department_header` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department_header`;

DROP TABLE IF EXISTS `a_dict`;
CREATE TABLE IF NOT EXISTS `a_dict` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict`;
INSERT INTO `a_dict` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `title`, `type`, `sort_order`) VALUES
	(75135930788220928, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '性别', 'sex', 0.00),
	(75388696739713024, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '分权限', 'permission_type', 2.00),
	(1536612750841745408, 'admin', '2022-06-14 15:33:23', 0, NULL, NULL, '', '学历', 'education', 3.00),
	(1536613395229446144, 'admin', '2022-06-14 15:35:57', 0, NULL, NULL, '', '在职状态', 'occupationStatus', 4.00);

DROP TABLE IF EXISTS `a_dict_data`;
CREATE TABLE IF NOT EXISTS `a_dict_data` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict_data`;
INSERT INTO `a_dict_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `dict_id`, `sort_order`, `status`, `title`, `value`) VALUES
	(75158227712479232, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 0.00, 0, '男', '男'),
	(75159254272577536, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 1.00, 0, '女', '女'),
	(75159898425397248, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 2.00, -1, '保密', '保密'),
	(75390787835138048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 0.00, 0, '查看操作(view)', 'view'),
	(75390886501945344, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 1.00, 0, '添加操作(add)', 'add'),
	(75390993939042304, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 2.00, 0, '编辑操作(edit)', 'edit'),
	(75391067532300288, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 3.00, 0, '删除操作(delete)', 'delete'),
	(75391126902673408, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 4.00, 0, '清空操作(clear)', 'clear'),
	(75391192883269632, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 5.00, 0, '启用操作(enable)', 'enable'),
	(75391251024711680, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 6.00, 0, '禁用操作(disable)', 'disable'),
	(75391297124306944, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 7.00, 0, '搜索操作(search)', 'search'),
	(75391343379091456, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 8.00, 0, '上传文件(upload)', 'upload'),
	(75391407526776832, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 9.00, 0, '导出操作(output)', 'output'),
	(75391475042488320, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 10.00, 0, '导入操作(input)', 'input'),
	(75391522182270976, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 11.00, 0, '分配权限(editPerm)', 'editPerm'),
	(75391576364290048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 12.00, 0, '设为默认(setDefault)', 'setDefault'),
	(75391798033256448, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 13.00, 0, '其他操作(other)', 'other'),
	(1536612796106674176, 'admin', '2022-06-14 15:33:34', 0, NULL, NULL, '', 1536612750841745408, 1.00, 0, '博士', '博士'),
	(1536612834962706432, 'admin', '2022-06-14 15:33:43', 0, NULL, NULL, '', 1536612750841745408, 2.00, 0, '硕士', '硕士'),
	(1536612883465637888, 'admin', '2022-06-14 15:33:55', 0, 'admin', '2022-06-14 15:34:13', '', 1536612750841745408, 3.00, 0, '本科', '本科'),
	(1536612930576060416, 'admin', '2022-06-14 15:34:06', 0, 'admin', '2022-06-14 15:34:11', '', 1536612750841745408, 4.00, 0, '专科', '专科'),
	(1536612993519980544, 'admin', '2022-06-14 15:34:21', 0, '', NULL, '', 1536612750841745408, 5.00, 0, '高中及以下', '高中及以下'),
	(1536613425902391296, 'admin', '2022-06-14 15:36:04', 0, NULL, NULL, '', 1536613395229446144, 1.00, 0, '在职', '在职'),
	(1536613447544999936, 'admin', '2022-06-14 15:36:09', 0, NULL, NULL, '', 1536613395229446144, 2.00, 0, '离职', '离职');

DROP TABLE IF EXISTS `a_file`;
CREATE TABLE IF NOT EXISTS `a_file` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_file`;
INSERT INTO `a_file` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `size`, `type`, `url`, `f_key`, `location`) VALUES
	(1527897791781801984, 'admin', '2022-05-21 14:23:15', 0, NULL, NULL, 'gh_57ba35562a20_258.jpg', 43531, 'image/jpeg', 'C:\\oa-file/20220521/1e07b00ffc20427fbdf2c434231c1e1e.jpg', '1e07b00ffc20427fbdf2c434231c1e1e.jpg', 0),
	(1527897840372813824, 'admin', '2022-05-21 14:23:27', 0, NULL, NULL, '美术版权.xlsx', 3605123, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'C:\\oa-file/20220521/4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', '4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', 0),
	(1527897921570344960, 'admin', '2022-05-21 14:23:46', 0, NULL, NULL, '公司大门通行设备使用说明-V1.pdf', 914877, 'application/pdf', 'C:\\oa-file/20220521/74e865aed9594ea9a9a0536161e40066.pdf', '74e865aed9594ea9a9a0536161e40066.pdf', 0),
	(1527898199690448896, 'admin', '2022-05-21 14:24:52', 0, NULL, NULL, '111.mp4', 180593, 'video/mp4', 'C:\\oa-file/20220521/113344a2389349ed8d02fb7dacfa058f.mp4', '113344a2389349ed8d02fb7dacfa058f.mp4', 0),
	(1527899386892390400, 'admin', '2022-05-21 14:29:36', 0, NULL, NULL, '【模版】需求文档.md.zip', 3104, 'application/x-zip-compressed', 'C:\\oa-file/20220521/dacc0bc61cf34bc18d1259b4ce60d52c.zip', 'dacc0bc61cf34bc18d1259b4ce60d52c.zip', 0),
	(1536614206311370752, 'admin', '2022-06-14 15:39:10', 0, NULL, NULL, '张三签名.png', 1686, 'image/png', 'C:\\\\oa-file/20220614/62a6f2fde5994e5fac6a78aa5ad070ad.png', '62a6f2fde5994e5fac6a78aa5ad070ad.png', 0),
	(1536614698903015424, 'admin', '2022-06-14 15:41:08', 0, NULL, NULL, '张三简历.pdf', 28091, 'application/pdf', 'C:\\\\oa-file/20220614/2a643018f08a4a4bbfacbb19218ab1e2.pdf', '2a643018f08a4a4bbfacbb19218ab1e2.pdf', 0);

DROP TABLE IF EXISTS `a_friend_type`;
CREATE TABLE IF NOT EXISTS `a_friend_type` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `sort_order` decimal(19,2) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_friend_type`;
INSERT INTO `a_friend_type` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `level`, `remark`, `sort_order`, `title`) VALUES
	('1564539243584425984', 'admin', '2022-08-30 17:03:18.063000', 0, NULL, NULL, '一般', '测试', 1.00, '小学同学'),
	('1564539285254836224', 'admin', '2022-08-30 17:03:27.998000', 0, NULL, NULL, '一般', '测试', 2.00, '初中同学'),
	('1564539317240598528', 'admin', '2022-08-30 17:03:35.624000', 0, NULL, NULL, '一般', '测试', 3.00, '高中同学'),
	('1564539359141695488', 'admin', '2022-08-30 17:03:45.614000', 0, NULL, NULL, '重要', '测试', 4.00, '大学同学'),
	('1564539390578003968', 'admin', '2022-08-30 17:03:53.109000', 0, NULL, NULL, '非常重要', '测试', 5.00, '亲人'),
	('1564539420101709824', 'admin', '2022-08-30 17:04:00.148000', 0, NULL, NULL, '重要', '测试', 6.00, '朋友'),
	('1564539465739931648', 'admin', '2022-08-30 17:04:11.028000', 0, NULL, NULL, '非常重要', '滴滴', 7.00, '商业合作');

DROP TABLE IF EXISTS `a_log`;
CREATE TABLE IF NOT EXISTS `a_log` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_log`;
INSERT INTO `a_log` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `cost_time`, `ip`, `ip_info`, `name`, `request_param`, `request_type`, `request_url`, `username`, `log_type`, `code`, `device`) VALUES
	(1536883393592168448, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 287, '127.0.0.1', '本地测试', '登录系统', '{"password":"密码隐藏","code":"8817","saveLogin":"true","captchaId":"ef9e5437ff544c8b91d9810febcb58e7","username":"admin"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883393592168449, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 263, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883394787545090, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883395219558400, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 69, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883401452294144, NULL, '2022-06-15 09:28:52', 0, NULL, '2022-06-15 09:28:52', 76, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883413934542848, NULL, '2022-06-15 09:28:54', 0, NULL, '2022-06-15 09:28:54', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415226388480, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 39, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415259942913, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415280914432, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 94, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","nickname":"","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415444492288, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420095975424, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420171472896, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 58, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883421131968513, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 38, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883423262674944, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 50, '127.0.0.1', '本地测试', '查询系统文件', '{"pageNumber":"1","endDate":"","fkey":"","name":"","pageSize":"15","sort":"createTime","type":"","startDate":"","order":"desc"}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771840, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 41, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771841, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 34, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771842, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 44, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883426920108032, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 55, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883430367825920, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 45, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883433186398208, NULL, '2022-06-15 09:28:59', 0, NULL, '2022-06-15 09:28:59', 43, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444859146240, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 50, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444947226624, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 59, '127.0.0.1', '本地测试', '查询数据字典值', '{"pageNumber":"1","name":"","pageSize":"10","sort":"sortOrder","status":"","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883446968881152, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 43, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451238682624, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451347734528, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 65, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883452538916864, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 43, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/education', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883453881094144, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 48, '127.0.0.1', '本地测试', '查询教师', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/teacher/getByPage', 'admin', 3, 'TEACHER-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883466526920704, NULL, '2022-06-15 09:29:07', 0, NULL, '2022-06-15 09:29:07', 42, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883470083690496, NULL, '2022-06-15 09:29:08', 0, NULL, '2022-06-15 09:29:08', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883482377195520, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 41, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883484109443072, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 50, '127.0.0.1', '本地测试', '查询日志', '{"logType":"2","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883506003709952, NULL, '2022-06-15 09:29:16', 0, NULL, '2022-06-15 09:29:16', 86, '127.0.0.1', '本地测试', '查询日志', '{"logType":"3","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883509954744320, NULL, '2022-06-15 09:29:17', 0, NULL, '2022-06-15 09:29:17', 38, '127.0.0.1', '本地测试', '查询日志', '{"logType":"4","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883517961670656, NULL, '2022-06-15 09:29:19', 0, NULL, '2022-06-15 09:29:19', 39, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564535438331482112, NULL, '2022-08-30 16:48:11', 0, NULL, '2022-08-30 16:48:11', 119, '127.0.0.1', '本地测试', '登录系统', '{"password":"密码隐藏","code":"2845","saveLogin":"true","captchaId":"2e5302422fc9417dbe1bc03e052d957c","username":"admin"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564535439849820160, NULL, '2022-08-30 16:48:11', 0, NULL, '2022-08-30 16:48:11', 84, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564535441221357568, NULL, '2022-08-30 16:48:12', 0, NULL, '2022-08-30 16:48:12', 147, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564535441510764544, NULL, '2022-08-30 16:48:12', 0, NULL, '2022-08-30 16:48:12', 84, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564537810000678912, NULL, '2022-08-30 16:57:36', 0, NULL, '2022-08-30 16:57:36', 78, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564537810113925120, NULL, '2022-08-30 16:57:36', 0, NULL, '2022-08-30 16:57:36', 106, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564537832905773056, NULL, '2022-08-30 16:57:42', 0, NULL, '2022-08-30 16:57:42', 58, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564537959649251328, NULL, '2022-08-30 16:58:12', 0, NULL, '2022-08-30 16:58:12', 78, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536600125332393984"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564537976321609728, NULL, '2022-08-30 16:58:16', 0, NULL, '2022-08-30 16:58:16', 33, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564537979337314305, NULL, '2022-08-30 16:58:17', 0, NULL, '2022-08-30 16:58:17', 36, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536600125332393984"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564537991836340224, NULL, '2022-08-30 16:58:20', 0, NULL, '2022-08-30 16:58:20', 34, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538035964612608, NULL, '2022-08-30 16:58:30', 0, NULL, '2022-08-30 16:58:30', 91, '127.0.0.1', '本地测试', '添加菜单', '{"path":"/telMenu","component":"Main","buttonType":"","level":"1","sortOrder":"0","icon":"ios-apps","name":"telMenu","type":"0","title":"通讯录","parentId":"1536599942410407936","status":"0"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538037029965824, NULL, '2022-08-30 16:58:30', 0, NULL, '2022-08-30 16:58:30', 39, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538037990461440, NULL, '2022-08-30 16:58:31', 0, NULL, '2022-08-30 16:58:31', 46, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538038187593728, NULL, '2022-08-30 16:58:31', 0, NULL, '2022-08-30 16:58:31', 92, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538044885897216, NULL, '2022-08-30 16:58:32', 0, NULL, '2022-08-30 16:58:32', 108, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1564538035868143616"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538111650828288, NULL, '2022-08-30 16:58:48', 0, NULL, '2022-08-30 16:58:48', 80, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536600125332393984"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538131745738752, NULL, '2022-08-30 16:58:53', 0, NULL, '2022-08-30 16:58:53', 43, '127.0.0.1', '本地测试', '编辑菜单', '{"level":"1","icon":"ios-apps","description":"","delFlag":"0","title":"二次开发","type":"0","parentId":"1536599942410407936","permTypes":"","path":"/tableDemo","createBy":"admin","component":"Main","expand":"true","buttonType":"","updateBy":"admin","createTime":"2022-06-14 14:43:13","sortOrder":"1","name":"tableDemo","checked":"false","nodeKey":"18","id":"1536600125332393984","selected":"true","status":"0"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538133293436937, NULL, '2022-08-30 16:58:53', 0, NULL, '2022-08-30 16:58:53', 34, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538133402488832, NULL, '2022-08-30 16:58:53', 0, NULL, '2022-08-30 16:58:53', 98, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538133410877440, NULL, '2022-08-30 16:58:53', 0, NULL, '2022-08-30 16:58:53', 96, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538137710039040, NULL, '2022-08-30 16:58:54', 0, NULL, '2022-08-30 16:58:54', 33, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1564538035868143616"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538236309737472, NULL, '2022-08-30 16:59:18', 0, NULL, '2022-08-30 16:59:18', 83, '127.0.0.1', '本地测试', '添加菜单', '{"path":"friendType","component":"tel/friendType/index","buttonType":"","level":"2","sortOrder":"1","icon":"md-barcode","name":"friendType","type":"0","title":"朋友类型","parentId":"1564538035868143616","status":"0"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538237412839424, NULL, '2022-08-30 16:59:18', 0, NULL, '2022-08-30 16:59:18', 40, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538238071345153, NULL, '2022-08-30 16:59:18', 0, NULL, '2022-08-30 16:59:18', 50, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538238205562880, NULL, '2022-08-30 16:59:18', 0, NULL, '2022-08-30 16:59:18', 124, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538321328279552, NULL, '2022-08-30 16:59:38', 0, NULL, '2022-08-30 16:59:38', 137, '127.0.0.1', '本地测试', '添加菜单', '{"path":"telData","component":"tel/telData/index","buttonType":"","level":"2","sortOrder":"2","icon":"md-build","name":"telData","type":"0","title":"通讯录明细","parentId":"1564538035868143616","status":"0"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538323375099904, NULL, '2022-08-30 16:59:39', 0, NULL, '2022-08-30 16:59:39', 47, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538323396071424, NULL, '2022-08-30 16:59:39', 0, NULL, '2022-08-30 16:59:39', 105, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538323605786624, NULL, '2022-08-30 16:59:39', 0, NULL, '2022-08-30 16:59:39', 95, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538421454704640, NULL, '2022-08-30 17:00:02', 0, NULL, '2022-08-30 17:00:02', 89, '127.0.0.1', '本地测试', '添加菜单', '{"path":"callRecord","component":"tel/callRecord/index","buttonType":"","level":"2","sortOrder":"3","icon":"md-checkmark-circle-outline","name":"callRecord","type":"0","title":"通讯记录","parentId":"1564538035868143616","status":"0"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538423191146496, NULL, '2022-08-30 17:00:02', 0, NULL, '2022-08-30 17:00:02', 30, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538423195340808, NULL, '2022-08-30 17:00:03', 0, NULL, '2022-08-30 17:00:03', 59, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538423304392704, NULL, '2022-08-30 17:00:03', 0, NULL, '2022-08-30 17:00:03', 93, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538427788103680, NULL, '2022-08-30 17:00:04', 0, NULL, '2022-08-30 17:00:04', 81, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538457093705728, NULL, '2022-08-30 17:00:11', 0, NULL, '2022-08-30 17:00:11', 112, '127.0.0.1', '本地测试', '修改菜单权限', '{"permIds":"125909152017944576,1464484663442673664,5129710648430593,1464485105081913345,40238597734928384,1464485485316542465,56309618086776832,5129710648430592,5129710648430594,5129710648430595,1530689520276738048,1530689602321518592,39915540965232640,41363147411427328,1535166254703316992,1535166438371889152,1536599942410407936,1564538035868143616,1564538236292960256,1564538321294725120,1564538421429538816,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560","roleId":"496138616573952"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538458234556416, NULL, '2022-08-30 17:00:11', 0, NULL, '2022-08-30 17:00:11', 80, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538458955976704, NULL, '2022-08-30 17:00:11', 0, NULL, '2022-08-30 17:00:11', 53, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538529948766208, NULL, '2022-08-30 17:00:28', 0, NULL, '2022-08-30 17:00:28', 66, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538836766298126, NULL, '2022-08-30 17:01:41', 0, NULL, '2022-08-30 17:01:41', 74, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564538857641349120, NULL, '2022-08-30 17:01:46', 0, NULL, '2022-08-30 17:01:46', 36, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564539146402402304, NULL, '2022-08-30 17:02:55', 0, NULL, '2022-08-30 17:02:55', 85, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564539170221854720, NULL, '2022-08-30 17:03:01', 0, NULL, '2022-08-30 17:03:01', 97, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564539177209565184, NULL, '2022-08-30 17:03:02', 0, NULL, '2022-08-30 17:03:02', 78, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564539179570958336, NULL, '2022-08-30 17:03:03', 0, NULL, '2022-08-30 17:03:03', 41, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564539180716003328, NULL, '2022-08-30 17:03:03', 0, NULL, '2022-08-30 17:03:03', 49, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564541285619077120, NULL, '2022-08-30 17:11:25', 0, NULL, '2022-08-30 17:11:25', 92, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564541302647951360, NULL, '2022-08-30 17:11:29', 0, NULL, '2022-08-30 17:11:29', 56, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564541316363325440, NULL, '2022-08-30 17:11:33', 0, NULL, '2022-08-30 17:11:33', 435, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564541378636156928, NULL, '2022-08-30 17:11:47', 0, NULL, '2022-08-30 17:11:47', 67, '127.0.0.1', '本地测试', '修改个人门户菜单', '{"str":"friendTypeZWZ666telDataZWZ666callRecordZWZ666user-adminZWZ666file-adminZWZ666role-manage"}', 'POST', '/zwz/myDoor/setMyDoorList', 'admin', 2, 'MY-DOOR-03', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564541385825193984, NULL, '2022-08-30 17:11:49', 0, NULL, '2022-08-30 17:11:49', 76, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1564541396789104640, NULL, '2022-08-30 17:11:51', 0, NULL, '2022-08-30 17:11:51', 27, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 104.0.0.0 | Windows Windows 10 or Windows Server 2016');

DROP TABLE IF EXISTS `a_permission`;
CREATE TABLE IF NOT EXISTS `a_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_permission`;
INSERT INTO `a_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `name`, `parent_id`, `type`, `sort_order`, `component`, `path`, `title`, `icon`, `level`, `button_type`, `status`, `show_always`) VALUES
	(5129710648430592, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 13:05:28', '', 'roleMenu', 125909152017944576, 0, 4.00, 'Main', '/roleMenu', '权限管理', 'md-desktop', 1, '', 0, b'1'),
	(5129710648430593, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'user-admin', 1464484663442673664, 0, 1.10, 'roster/user/user', 'user', '用户管理', 'md-person', 2, '', 0, b'1'),
	(5129710648430594, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:18', '', 'role-manage', 5129710648430592, 0, 1.00, 'role/role/index', 'role', '角色支持', 'md-contacts', 2, '', 0, b'1'),
	(5129710648430595, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:13', '', 'menu-manage', 5129710648430592, 0, 2.00, 'menu/menu/index', 'menu', '菜单支持', 'md-menu', 2, '', 0, b'1'),
	(39915540965232640, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-10 15:45:37', '', 'monitor', 125909152017944576, 0, 6.00, 'Main', '/monitor', '日志管理', 'ios-analytics', 1, '', 0, b'1'),
	(40238597734928384, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'department-admin', 1464485105081913345, 0, 1.20, 'roster/department/department', 'department-admin', '部门管理', 'md-git-branch', 2, '', 0, b'1'),
	(41363147411427328, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:15:44', '', 'log-manage', 39915540965232640, 0, 2.20, 'log/log/index', 'log', '日志管理', 'md-list-box', 2, '', 0, b'1'),
	(56309618086776832, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 07:18:02', '', 'file-admin', 1464485485316542465, 0, 1.00, 'file/file/index', 'file', '云盘', 'ios-folder', 2, '', 0, b'1'),
	(125909152017944576, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'zwz', 0, -1, 1.00, '', '', '数据中心', 'md-home', 0, '', 0, b'1'),
	(1464484663442673664, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'userTwoMenu', 125909152017944576, 0, 1.00, 'Main', '/userTwoMenu', '用户管理', 'md-analytics', 1, '', 0, b'1'),
	(1464485105081913345, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', NULL, 'depTwoMenu', 125909152017944576, 0, 2.00, 'Main', '/depTwoMenu', '部门管理', 'ios-apps', 1, '', 0, b'1'),
	(1464485485316542465, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:13:42', '', 'fileAdmin', 125909152017944576, 0, 3.00, 'Main', '/fileAdmin', '文件管理', 'md-basketball', 1, '', 0, b'1'),
	(1530689520276738048, 'admin', '2022-05-29 07:16:35', 0, NULL, NULL, NULL, 'dictMenu', 125909152017944576, 0, 5.00, 'Main', '/dictMenu', '数据字典', 'ios-apps', 1, '', 0, b'1'),
	(1530689602321518592, 'admin', '2022-05-29 07:16:55', 0, NULL, NULL, NULL, 'dict', 1530689520276738048, 0, 1.00, 'dict/dict/index', 'dict', '数据字典', 'ios-apps', 2, '', 0, b'1'),
	(1535166254703316992, 'admin', '2022-06-10 15:45:32', 0, NULL, NULL, NULL, 'codeCreate', 125909152017944576, 0, 7.00, 'Main', '/codeCreate', '代码生成', 'ios-brush', 1, '', 0, b'1'),
	(1535166438371889152, 'admin', '2022-06-10 15:46:16', 0, NULL, NULL, NULL, 'vue', 1535166254703316992, 0, 1.00, 'code/vue/index', 'vue', '前端表格', 'md-bug', 2, '', 0, b'1'),
	(1536599942410407936, 'admin', '2022-06-14 14:42:30', 0, NULL, NULL, NULL, 'demo', 0, -1, 2.00, NULL, NULL, '通讯录', 'md-bulb', 0, NULL, 0, NULL),
	(1536600125332393984, 'admin', '2022-06-14 14:43:13', 0, 'admin', '2022-08-30 16:58:53', '', 'tableDemo', 1536599942410407936, 0, 1.00, 'Main', '/tableDemo', '二次开发', 'ios-apps', 1, '', 0, NULL),
	(1536600268379131904, 'admin', '2022-06-14 14:43:47', 0, NULL, NULL, NULL, 'demo1', 1536600125332393984, 0, 1.00, 'demo/demo1/index', 'demo1', '代码生成样例', 'md-finger-print', 2, '', 0, NULL),
	(1536604417711804416, 'admin', '2022-06-14 15:00:17', 0, 'admin', '2022-06-14 15:31:57', '', 'demo2', 1536600125332393984, 0, 2.00, 'demo/demo2/index', 'demo2', '复杂表格样例', 'md-archive', 2, '', 0, NULL),
	(1536606273959759872, 'admin', '2022-06-14 15:07:39', 0, 'admin', '2022-06-14 15:10:23', '', 'antv', 1536599942410407936, 0, 2.00, 'Main', '/antv', '图表展示', 'ios-pulse', 1, '', 0, NULL),
	(1536606372668510208, 'admin', '2022-06-14 15:08:03', 0, NULL, NULL, NULL, 'antv1', 1536606273959759872, 0, 1.00, 'demo/antv1/index', 'antv1', '条形图', 'md-pricetags', 2, '', 0, NULL),
	(1536606464712511488, 'admin', '2022-06-14 15:08:25', 0, NULL, NULL, NULL, 'antv2', 1536606273959759872, 0, 2.00, 'demo/antv2/index', 'antv2', '饼图', 'md-radio-button-off', 2, '', 0, NULL),
	(1536606550951596032, 'admin', '2022-06-14 15:08:45', 0, NULL, NULL, NULL, 'antv3', 1536606273959759872, 0, 3.00, 'demo/antv3/index', 'antv3', '折线图', 'ios-nutrition', 2, '', 0, NULL),
	(1536606637815631872, 'admin', '2022-06-14 15:09:06', 0, NULL, NULL, NULL, 'antv4', 1536606273959759872, 0, 4.00, 'demo/antv4/index', 'antv4', '柱状图', 'ios-phone-portrait', 2, '', 0, NULL),
	(1536875505901506560, 'admin', '2022-06-15 08:57:29', 0, 'admin', '2022-06-15 09:01:01', '', 'antvActive', 1536606273959759872, 0, 5.00, 'demo/antvActive/index', 'antvActive', '动态图表样例', 'ios-apps', 2, '', 0, NULL),
	(1564538035868143616, 'admin', '2022-08-30 16:58:30', 0, NULL, NULL, NULL, 'telMenu', 1536599942410407936, 0, 0.00, 'Main', '/telMenu', '通讯录', 'ios-apps', 1, '', 0, NULL),
	(1564538236292960256, 'admin', '2022-08-30 16:59:18', 0, NULL, NULL, NULL, 'friendType', 1564538035868143616, 0, 1.00, 'tel/friendType/index', 'friendType', '朋友类型', 'md-barcode', 2, '', 0, NULL),
	(1564538321294725120, 'admin', '2022-08-30 16:59:38', 0, NULL, NULL, NULL, 'telData', 1564538035868143616, 0, 2.00, 'tel/telData/index', 'telData', '通讯录明细', 'md-build', 2, '', 0, NULL),
	(1564538421429538816, 'admin', '2022-08-30 17:00:02', 0, NULL, NULL, NULL, 'callRecord', 1564538035868143616, 0, 3.00, 'tel/callRecord/index', 'callRecord', '通讯记录', 'md-checkmark-circle-outline', 2, '', 0, NULL);

DROP TABLE IF EXISTS `a_role`;
CREATE TABLE IF NOT EXISTS `a_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role`;
INSERT INTO `a_role` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `del_flag`, `default_role`, `description`, `data_type`) VALUES
	(496138616573952, '', '2022-03-20 09:46:20', 'admin', '2022-03-20 09:46:20', 'ROLE_ADMIN', 0, NULL, '超级管理员', 0),
	(496138616573953, '', '2022-03-20 09:46:20', 'admin', '2022-03-20 09:46:20', 'ROLE_USER', 0, b'1', '普通用户', 0);

DROP TABLE IF EXISTS `a_role_permission`;
CREATE TABLE IF NOT EXISTS `a_role_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role_permission`;
INSERT INTO `a_role_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `permission_id`, `role_id`) VALUES
	(1464514325862551552, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 125909152017944576, 496138616573952),
	(1464514325862551553, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464484663442673664, 496138616573952),
	(1464514325862551554, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430593, 496138616573952),
	(1464514325862551563, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485105081913345, 496138616573952),
	(1464514325862551564, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 40238597734928384, 496138616573952),
	(1464514325862551568, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485485316542465, 496138616573952),
	(1464514325862551569, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 56309618086776832, 496138616573952),
	(1464514325862551583, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430592, 496138616573952),
	(1464514325862551584, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430594, 496138616573952),
	(1464514325862551590, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430595, 496138616573952),
	(1464514325862551594, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 39915540965232640, 496138616573952),
	(1464514325862551595, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 41363147411427328, 496138616573952),
	(1530689746903371801, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689520276738048, 496138616573952),
	(1530689747004035072, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689602321518592, 496138616573952),
	(1535166468671541252, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166254703316992, 496138616573952),
	(1535166468684124160, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166438371889152, 496138616573952),
	(1536600292156641281, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536599942410407936, 496138616573952),
	(1536600292173418496, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600125332393984, 496138616573952),
	(1536600292186001408, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600268379131904, 496138616573952),
	(1536604439178252292, 'admin', '2022-06-14 15:00:22', 0, NULL, NULL, 1536604417711804416, 496138616573952),
	(1536606659718287364, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606273959759872, 496138616573952),
	(1536606659730870272, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606372668510208, 496138616573952),
	(1536606659735064576, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606464712511488, 496138616573952),
	(1536606659743453184, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606550951596032, 496138616573952),
	(1536606659751841792, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606637815631872, 496138616573952),
	(1536875525769924610, 'admin', '2022-06-15 08:57:34', 0, NULL, NULL, 1536875505901506560, 496138616573952),
	(1564538456925933568, 'admin', '2022-08-30 17:00:11', 0, NULL, NULL, 1564538035868143616, 496138616573952),
	(1564538456972070912, 'admin', '2022-08-30 17:00:11', 0, NULL, NULL, 1564538236292960256, 496138616573952),
	(1564538457001431040, 'admin', '2022-08-30 17:00:11', 0, NULL, NULL, 1564538321294725120, 496138616573952),
	(1564538457030791168, 'admin', '2022-08-30 17:00:11', 0, NULL, NULL, 1564538421429538816, 496138616573952);

DROP TABLE IF EXISTS `a_setting`;
CREATE TABLE IF NOT EXISTS `a_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_setting`;
INSERT INTO `a_setting` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `value`) VALUES
	('FILE_HTTP', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', 'http://'),
	('FILE_PATH', NULL, NULL, 0, 'admin', '2022-05-28 15:57:19', 'C:\\\\oa-file'),
	('FILE_VIEW', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', '127.0.0.1:8080/zwz/file/view'),
	('LOCAL_OSS', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '{"serviceName":"LOCAL_OSS","endpoint":"127.0.0.1:8080/zwz/file/view","http":"http://","filePath":"C:\\\\oa-file"}'),
	('OSS_USED', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 'LOCAL_OSS');

DROP TABLE IF EXISTS `a_student`;
CREATE TABLE IF NOT EXISTS `a_student` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_student`;
INSERT INTO `a_student` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `number`, `school`, `sex`, `age`) VALUES
	('1536601255475023872', 'admin', '2022-06-14 14:47:42.637000', 0, NULL, NULL, '张三', '001', '北京大学', '男', 18.00),
	('1536601308352614400', 'admin', '2022-06-14 14:47:55.244000', 0, NULL, NULL, '李四', '002', '清华大学', '女', 19.00),
	('1536601388044390400', 'admin', '2022-06-14 14:48:14.243000', 0, NULL, NULL, '王五', '003', '浙江大学', '男', 20.00),
	('1536601469879455744', 'admin', '2022-06-14 14:48:33.753000', 0, NULL, NULL, '赵六', '004', '宁波大学', '保密', 21.00);

DROP TABLE IF EXISTS `a_teacher`;
CREATE TABLE IF NOT EXISTS `a_teacher` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  `autograph` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `graduated` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `wages` decimal(19,2) DEFAULT NULL,
  `resume` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_teacher`;
INSERT INTO `a_teacher` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `age`, `autograph`, `education`, `graduated`, `name`, `remark`, `status`, `wages`, `resume`) VALUES
	('1536614275123122176', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '博士', '同济大学', '张三', '测试', '在职', 9960.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122177', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '本科', '同济大学', '李四', '测试', '在职', 7778.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122178', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '王五', '测试', '在职', 8889.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122179', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '赵六', '测试', '在职', 4445.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122180', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '郑七', '测试', '在职', 1118.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122181', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '龚八', '测试', '在职', 3337.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424');

DROP TABLE IF EXISTS `a_tel_data`;
CREATE TABLE IF NOT EXISTS `a_tel_data` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `friend_type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `qq` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `user_sex` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `wechat` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_tel_data`;
INSERT INTO `a_tel_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `address`, `friend_type`, `id_card`, `mobile`, `qq`, `user_name`, `user_sex`, `wechat`) VALUES
	('1564539657608368128', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '小学同学', '330681200001010001', '17857050001', '916077001', '张三', '男', '916077001'),
	('1564539657608368129', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '小学同学', '330681200001010002', '17857050002', '916077001', '张四', '女', '916077002'),
	('1564539657608368130', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '小学同学', '330681200001010003', '17857050003', '916077001', '张五', '男', '916077003'),
	('1564539657608368131', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '小学同学', '330681200001010004', '17857050004', '916077001', '张六', '女', '916077004'),
	('1564539657608368132', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '初中同学', '330681200001010005', '17857050005', '916077001', '张七', '男', '916077005'),
	('1564539657608368133', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '初中同学', '330681200001010006', '17857050006', '916077001', '张八', '女', '916077006'),
	('1564539657608368134', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '初中同学', '330681200001010007', '17857050007', '916077001', '张九', '男', '916077007'),
	('1564539657608368135', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '初中同学', '330681200001010008', '17857050008', '916077001', '张十', '女', '916077008'),
	('1564539657608368136', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '初中同学', '330681200001010009', '17857050009', '916077001', '张十一', '男', '916077009'),
	('1564539657608368137', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '高中同学', '330681200001010010', '17857050010', '916077001', '张十二', '女', '916077010'),
	('1564539657608368138', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '高中同学', '330681200001010011', '17857050011', '916077001', '张十三', '男', '916077011'),
	('1564539657608368139', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '高中同学', '330681200001010012', '17857050012', '916077001', '张十四', '女', '916077012'),
	('1564539657608368140', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '大学同学', '330681200001010013', '17857050013', '916077001', '张十五', '男', '916077013'),
	('1564539657608368141', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '大学同学', '330681200001010014', '17857050014', '916077001', '张十六', '女', '916077014'),
	('1564539657608368142', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '大学同学', '330681200001010015', '17857050015', '916077001', '张十七', '男', '916077015'),
	('1564539657608368143', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '大学同学', '330681200001010016', '17857050016', '916077001', '张十八', '女', '916077016'),
	('1564539657608368144', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '大学同学', '330681200001010017', '17857050017', '916077001', '张十九', '男', '916077017'),
	('1564539657608368145', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '亲人', '330681200001010018', '17857050018', '916077001', '张二十', '女', '916077018'),
	('1564539657608368146', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '亲人', '330681200001010019', '17857050019', '916077001', '张二一', '男', '916077019'),
	('1564539657608368147', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '亲人', '330681200001010020', '17857050020', '916077001', '张二二', '女', '916077020'),
	('1564539657608368148', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '朋友', '330681200001010021', '17857050021', '916077001', '张二三', '男', '916077021'),
	('1564539657608368149', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '商业合作', '330681200001010022', '17857050022', '916077001', '张二四', '女', '916077022'),
	('1564539657608368150', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '商业合作', '330681200001010023', '17857050023', '916077001', '张二五', '男', '916077023'),
	('1564539657608368151', 'admin', '2022-08-30 17:04:56.000000', 0, 'admin', '2022-08-30 17:05:09.600000', '测试', '商业合作', '330681200001010024', '17857050024', '916077001', '张二六', '女', '916077024');

DROP TABLE IF EXISTS `a_user`;
CREATE TABLE IF NOT EXISTS `a_user` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `my_door` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user`;
INSERT INTO `a_user` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`, `avatar`, `description`, `email`, `mobile`, `nickname`, `password`, `sex`, `status`, `type`, `username`, `del_flag`, `department_id`, `street`, `pass_strength`, `department_title`, `birth`, `my_door`) VALUES
	(682265633886208, '', '2022-03-20 09:46:20', 'admin', '2022-08-30 17:11:47', '["330000","330600","330602"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '北大', '916077357@qq.com', '17857054388', '管理员', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', 0, 1, 'admin', 0, 1464487379074158593, '东西街道2', '弱', '设计研发部', '2000-01-08 00:00:00.000000', 'friendTypeZWZ666telDataZWZ666callRecordZWZ666user-adminZWZ666file-adminZWZ666role-manage'),
	(1464764315201572865, '', '2022-03-20 09:46:20', 'admin', '2022-05-21 09:11:48', '', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654125@qq.com', '17859654125', '测试', '$2a$10$E59nactOiILAzQvfcs0JFOYuZp06d4bLhugEadyQuygpmiLc0W.ha', '', -1, 0, '17859654125', 0, 1464487332064399361, '', '', '行政综合部', NULL, NULL),
	(1464772465946398721, '', '2022-03-20 09:46:20', 'admin', '2022-05-21 09:53:33', '["110000","110100","110105"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654121@qq.com', '17859654121', '测试2', '$2a$10$vJyLo1RhFORH/SAu3sc9aeb37I5JRy5UugaN7fIt/e2vvsz6JWJCm', '', 0, 0, '17859654121', 0, 1464487432169852929, '', '', '综合发展部', NULL, ''),
	(1527830053524738048, 'admin', '2022-05-21 09:54:05', NULL, NULL, '["110000","110100","110106"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', NULL, 'user4@qq.com', '17896525487', 'user4', '$2a$10$oeP4aplYnswfQ44pK6lAO.Np9BuPYJGRwo17THO7CUNlIQoVGsPmy', '男', 0, 0, 'user4', 0, 1464487332064399361, NULL, '弱', '行政综合部', NULL, NULL);

DROP TABLE IF EXISTS `a_user_role`;
CREATE TABLE IF NOT EXISTS `a_user_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user_role`;
INSERT INTO `a_user_role` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `role_id`, `user_id`) VALUES
	(1464487931975700480, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573952, 682265633886208),
	(1486220872917323776, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573953, 1464764315201572865),
	(1526802492967489537, NULL, '2022-05-18 13:50:56', 0, NULL, NULL, 496138616573953, 1526802492443201536),
	(1526819095553642497, NULL, '2022-05-18 14:56:54', 0, NULL, NULL, 496138616573953, 1526819095159377920),
	(1527829917801254912, 'admin', '2022-05-21 09:53:33', 0, NULL, NULL, 496138616573953, 1464772465946398721),
	(1527830053889642496, 'admin', '2022-05-21 09:54:05', 0, NULL, NULL, 496138616573952, 1527830053524738048);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
