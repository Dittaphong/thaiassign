/*
Navicat MySQL Data Transfer

Source Server         : NB002
Source Server Version : 50713
Source Host           : 127.0.0.1:3306
Source Database       : thaiassign

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-07-25 18:31:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mmember
-- ----------------------------
DROP TABLE IF EXISTS `mmember`;
CREATE TABLE `mmember` (
  `id_mmember` int(10) NOT NULL AUTO_INCREMENT,
  `id_mposition` int(10) DEFAULT NULL COMMENT 'ID ตำแหน่งงาน',
  `mposition_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ ตำแหน่งงาน',
  `mmember_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสพนักงาน',
  `mmember_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อพนักงาน',
  `register_date` datetime DEFAULT NULL COMMENT 'วันที่ ลงทะเบียน หรือ เริ่มทำงาน',
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อผู้ใช้ / ชื่อเข้าใช้ระบบ',
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสผ่าน ',
  `tel` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทร / เบอร์สำนักงาน',
  `mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์มือถือ',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อีเมลล์',
  `status` tinyint(2) DEFAULT NULL COMMENT 'สถานะ 1 = ใช้งาน, 2 = ใช้งานแต่ไม่ให้เข้าใช้ระบบ, 3=ยกเลิก/ไม่เป็นพนักงานแล้ว',
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mmember`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mmember
-- ----------------------------
INSERT INTO `mmember` VALUES ('1', '1', 'System Admin', 'AD001', 'ADMIN THAINOLOGY', '2016-07-25 10:02:08', 'AD001', '81dc9bdb52d04dc20036dbd8313ed055', '02 7458585', '082 1445846', 'name@domain.com', '1', '1', '2016-07-25 10:03:44', '1', '2016-07-25 10:03:53');

-- ----------------------------
-- Table structure for mmenu
-- ----------------------------
DROP TABLE IF EXISTS `mmenu`;
CREATE TABLE `mmenu` (
  `id_mmenu` int(10) NOT NULL AUTO_INCREMENT,
  `mmenu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_parent` int(10) DEFAULT NULL,
  `level` tinyint(2) DEFAULT NULL,
  `is_add` tinyint(2) NOT NULL DEFAULT '1',
  `is_list` tinyint(2) NOT NULL DEFAULT '1',
  `is_edit` tinyint(2) NOT NULL DEFAULT '1',
  `is_print` tinyint(2) NOT NULL DEFAULT '1',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_mmenu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mmenu
-- ----------------------------

-- ----------------------------
-- Table structure for mposition
-- ----------------------------
DROP TABLE IF EXISTS `mposition`;
CREATE TABLE `mposition` (
  `id_mposition` int(10) NOT NULL AUTO_INCREMENT,
  `mposition_name` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id_mposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mposition
-- ----------------------------

-- ----------------------------
-- Table structure for mtask_cat
-- ----------------------------
DROP TABLE IF EXISTS `mtask_cat`;
CREATE TABLE `mtask_cat` (
  `id_mtask_cat` int(10) NOT NULL AUTO_INCREMENT,
  `mtask_cat_name` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id_mtask_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mtask_cat
-- ----------------------------

-- ----------------------------
-- Table structure for texpense
-- ----------------------------
DROP TABLE IF EXISTS `texpense`;
CREATE TABLE `texpense` (
  `id_texpense` int(10) NOT NULL AUTO_INCREMENT,
  `texpense_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `texpense_date` datetime DEFAULT NULL,
  `mmember_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mmember_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_approve` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=รออนุมัติ, 2=อนุมัติแล้ว, 3=ไม่อนุมัติ',
  `approve_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approve_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `approve_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sum_cost` decimal(10,2) NOT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=รออนุมัติ, 2=อนุมัติแล้ว, 3=ไม่อนุมัติ, 0=ยกเลิกรายการ',
  `create_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id_texpense`,`texpense_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of texpense
-- ----------------------------

-- ----------------------------
-- Table structure for texpense_sub
-- ----------------------------
DROP TABLE IF EXISTS `texpense_sub`;
CREATE TABLE `texpense_sub` (
  `id_texpense_sub` int(10) NOT NULL AUTO_INCREMENT,
  `texpense_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task_name` datetime DEFAULT NULL,
  `task_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_per_unit` decimal(10,2) DEFAULT NULL,
  `cost_per_unit` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `sum_cost` decimal(10,2) NOT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=รออนุมัติ, 2=อนุมัติแล้ว, 3=ไม่อนุมัติ, 0=ยกเลิกรายการ',
  `create_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id_texpense_sub`,`texpense_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of texpense_sub
-- ----------------------------

-- ----------------------------
-- Table structure for tleive
-- ----------------------------
DROP TABLE IF EXISTS `tleive`;
CREATE TABLE `tleive` (
  `id_tleive` int(10) NOT NULL AUTO_INCREMENT,
  `tleive_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tleive_date` datetime DEFAULT NULL,
  `task_name` varchar(0) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_desc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tleive_contract` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tleive_cat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tleive_last_date` datetime DEFAULT NULL,
  `tleive_start_date` datetime DEFAULT NULL,
  `tleive_end_date` datetime DEFAULT NULL,
  `mmember_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mmember_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_approve` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=รออนุมัติ, 2=อนุมัติแล้ว, 3=ไม่อนุมัติ',
  `approve_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approve_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `approve_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=รออนุมัติ, 2=อนุมัติแล้ว, 3=ไม่อนุมัติ, 0=ยกเลิกรายการ',
  `create_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id_tleive`,`tleive_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tleive
-- ----------------------------

-- ----------------------------
-- Table structure for tproject_dtl
-- ----------------------------
DROP TABLE IF EXISTS `tproject_dtl`;
CREATE TABLE `tproject_dtl` (
  `id_tproject_dtl` bigint(10) NOT NULL AUTO_INCREMENT,
  `tproject_sub_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tproject_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เลขที่โครงการ',
  `task_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อโครงการ',
  `task_desc` datetime DEFAULT NULL COMMENT 'วันที่โครงการ',
  `tproject_start_date` datetime DEFAULT NULL COMMENT 'วันที่กำหนด เริ่มดำเนินการ',
  `tproject_end_date` datetime DEFAULT NULL COMMENT 'วันที่กำหนด สิ้นสุดการดำเนินการ',
  `progress` int(10) DEFAULT NULL COMMENT 'สถานะ % การดำเนินการ ',
  `is_rank` tinyint(5) DEFAULT NULL COMMENT 'ลำดับ',
  `is_level` tinyint(2) DEFAULT NULL COMMENT 'เลเวล',
  `is_gen_todo` tinyint(2) DEFAULT NULL COMMENT 'สร้าง todo หรือไม่  1=สร้าง, 2=ไม่สร้าง',
  `is_owner` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ผู้รับผิดชอบ',
  `comment` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=กำลังดำเนินการ ,2=เสร็จสิ้น , 0=ยกเลิก',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_tproject_dtl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tproject_dtl
-- ----------------------------

-- ----------------------------
-- Table structure for tproject_hdr
-- ----------------------------
DROP TABLE IF EXISTS `tproject_hdr`;
CREATE TABLE `tproject_hdr` (
  `id_tproject_hdr` bigint(10) NOT NULL AUTO_INCREMENT,
  `tproject_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เลขที่โครงการ',
  `tproject_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อโครงการ',
  `tproject_date` datetime DEFAULT NULL COMMENT 'วันที่โครงการ',
  `tproject_start_date` datetime DEFAULT NULL COMMENT 'วันที่กำหนด เริ่มดำเนินโครงการ',
  `tproject_end_date` datetime DEFAULT NULL COMMENT 'วันที่กำหนด สิ้นสุดการดำเนินโครงการ',
  `mcustomer_code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mcustomer_name` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `progress` int(10) DEFAULT NULL,
  `comment` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_tproject_hdr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tproject_hdr
-- ----------------------------

-- ----------------------------
-- Table structure for ttimesheet
-- ----------------------------
DROP TABLE IF EXISTS `ttimesheet`;
CREATE TABLE `ttimesheet` (
  `id_ttimesheet` bigint(10) NOT NULL AUTO_INCREMENT,
  `ttodo_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ttimesheet_date` datetime DEFAULT NULL,
  `task_desc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำอธิบาย',
  `task_hours` int(10) DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=ใช้งาน ,2 = ยกเลิก',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_ttimesheet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ttimesheet
-- ----------------------------

-- ----------------------------
-- Table structure for ttodo
-- ----------------------------
DROP TABLE IF EXISTS `ttodo`;
CREATE TABLE `ttodo` (
  `id_ttodo` bigint(10) NOT NULL AUTO_INCREMENT,
  `ttodo_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ttodo_date` datetime DEFAULT NULL,
  `is_reference` tinyint(2) DEFAULT NULL COMMENT '1=ttodo, 2=tproject_hdr, 3=tproject_dtl, 4=tissue, 5 = Transfer from todo, 0=cancle',
  `reference_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่องาน',
  `task_desc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำอธิบาย',
  `task_cat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ประเภทงาน',
  `mmember_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ผู้รับผิดชอบดำเนินงาน',
  `todo_start_date` datetime DEFAULT NULL COMMENT 'วันที่กำหนด เริ่มดำเนินการ',
  `todo_end_date` datetime DEFAULT NULL COMMENT 'วันที่กำหนดเสร็จ',
  `todo_hours` int(10) DEFAULT NULL COMMENT 'จำนวนชั่วโมง ',
  `doing_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doing_start_date` datetime DEFAULT NULL COMMENT 'วันที่เริ่มทำ',
  `doing_end_date` datetime DEFAULT NULL COMMENT 'วันที่ทำเสร็จ',
  `doing_hours` int(10) DEFAULT NULL,
  `testing_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testing_start_date` datetime DEFAULT NULL,
  `testing_end_date` datetime DEFAULT NULL,
  `testing_hours` int(10) DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `is_transfer` tinyint(2) DEFAULT '1' COMMENT '1=งานปกติ, 2= รับโอนมา , 3=โอนไป ',
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 = รอดำเนินการ, 2 = กำลังดำเนินการ, 3=รอตรวจสอบ , 4=เสร็จสิ้น , 0=ยกเลิก  ',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_ttodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ttodo
-- ----------------------------
