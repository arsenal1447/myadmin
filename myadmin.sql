/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : myadmin

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-06-07 11:43:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('管理员大人', '1', '1465269332');
INSERT INTO `auth_assignment` VALUES ('终极boss', '1', '1465269929');
INSERT INTO `auth_assignment` VALUES ('观察员', '1', '1465268559');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1465269717', '1465269717');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1465269717', '1465269717');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1465269717', '1465269717');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1465269718', '1465269718');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1465269719', '1465269719');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1465269720', '1465269720');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1465269721', '1465269721');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1465267981', '1465267981');
INSERT INTO `auth_item` VALUES ('/user/create', '2', null, null, null, '1465267981', '1465267981');
INSERT INTO `auth_item` VALUES ('/user/delete', '2', null, null, null, '1465267981', '1465267981');
INSERT INTO `auth_item` VALUES ('/user/index', '2', null, null, null, '1465267981', '1465267981');
INSERT INTO `auth_item` VALUES ('/user/update', '2', null, null, null, '1465267981', '1465267981');
INSERT INTO `auth_item` VALUES ('/user/view', '2', null, null, null, '1465267981', '1465267981');
INSERT INTO `auth_item` VALUES ('boss权限', '2', '啥都行', null, null, '1465269871', '1465269871');
INSERT INTO `auth_item` VALUES ('查看权限', '2', '拥有查看的权限', null, null, '1465265412', '1465265412');
INSERT INTO `auth_item` VALUES ('管理员大人', '1', '大boss', null, null, '1465269140', '1465269140');
INSERT INTO `auth_item` VALUES ('管理员权限', '2', '所有的权限都有', null, null, '1465269050', '1465269050');
INSERT INTO `auth_item` VALUES ('终极boss', '1', '控制一切', null, null, '1465269908', '1465269908');
INSERT INTO `auth_item` VALUES ('观察员', '1', '我有查看的权限', null, null, '1465268498', '1465268498');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('boss权限', '/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/site/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/site/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/site/error');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/site/error');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/site/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/site/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/site/login');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/site/login');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/user/*');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/user/*');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/user/*');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/user/create');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/user/create');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/user/create');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/user/index');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/user/index');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/user/index');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/user/update');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/user/update');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/user/update');
INSERT INTO `auth_item_child` VALUES ('boss权限', '/user/view');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/user/view');
INSERT INTO `auth_item_child` VALUES ('管理员权限', '/user/view');
INSERT INTO `auth_item_child` VALUES ('终极boss', 'boss权限');
INSERT INTO `auth_item_child` VALUES ('观察员', '查看权限');
INSERT INTO `auth_item_child` VALUES ('管理员大人', '管理员权限');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '用户管理', null, '/user/index', '1', 0x7B2269636F6E223A202266612066612D75736572222C202276697369626C65223A2066616C73657D);
INSERT INTO `menu` VALUES ('2', '系统设置', null, '/user/index', '1', null);
INSERT INTO `menu` VALUES ('3', '菜单设置', '2', '/admin/menu/index', '2', null);
INSERT INTO `menu` VALUES ('4', '权限控制', null, '/user/index', '1', null);
INSERT INTO `menu` VALUES ('5', '分配', '4', '/admin/assignment/index', '2', null);
INSERT INTO `menu` VALUES ('6', '路由', '4', '/admin/route/index', '2', null);
INSERT INTO `menu` VALUES ('7', '权限', '4', '/admin/permission/index', '2', null);
INSERT INTO `menu` VALUES ('8', '角色', '4', '/admin/role/index', '2', null);

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1465205718');
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', '1465205722');
INSERT INTO `migration` VALUES ('m160312_050000_create_user', '1465205722');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(11) NOT NULL DEFAULT '0',
  `recommended_by` int(11) NOT NULL DEFAULT '0',
  `recommended_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supported_by` int(11) NOT NULL DEFAULT '1',
  `auth_role` int(11) DEFAULT NULL,
  `role` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `role` (`role`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zxx123', '30GXviCW6LZTNwljyOZWbyLJPeCSvOVu', null, null, '$2y$13$vzAucdLOcXPHsAvED2r1Ze0J07EF.hQi5BO7OoE3MwTMnTVuQ/yYm', null, 'zxx123@qq.com', '0.00', '0', '0', null, '1', null, 'user', '10', '1465205277', '1465205277');
